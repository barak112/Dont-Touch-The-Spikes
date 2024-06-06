; Input: coordinates [rectangleX] [rectangleY] , color [color]
; Output: pixel on screen
proc drawPixel
	push ax bx cx dx
	xor bh, bh
	mov cx, [rectangleX]
	mov dx, [rectangleY]
	mov ah, 0ch
	int 10h ; draw pixel
	pop dx cx bx ax
	ret
endp drawPixel

; Input: leftmost coordinates of line, length, color
; Output: line on screen
proc drawLine
	push cx
	mov cx, [rWidth]
	
pixelLoop: ; draw every pixel of the line
    call drawPixel
	inc [rectangleX]
	loop pixelLoop
	
	pop cx
	ret
endp drawLine

; Input: top left point of rectangle, length, height, color
; Output: rectangle on screen	
proc drawRect
	push ax cx [rectangleX] [rectangleY]
	mov al, [color]
	mov cx, [rHeight]
	
lineLoop: ;draw every line of the rect
	push [rectangleX]
    call drawLine
	inc [rectangleY]
	pop [rectangleX]
	loop lineLoop
	
	pop [rectangleY] [rectangleX] cx ax
	ret
endp drawRect

; Input: number in ax
; Output: print the number on screen
proc printNumber
	push ax bx dx
	
    ; print 100s digit
	mov bl, 100
	div bl
	cmp al, 0
		je dontPrint
    add al, '0'
	printChar

dontPrint:
    ;print 10s digit
    mov al, ah
    xor ah, ah
	mov bl, 10
    div bl
    add al, '0'
	printChar
	
	; print 1s digit
    add ah, '0'
	mov al, ah
	printChar

	pop dx bx ax
	ret
endp printNumber

; input: sprPos, sprHeight, sprWidth, sprOffset, dead, currentCandyLevel, oldCandyX, oldCandyY
; output: screen AND mask, checks collisions, handles candy collision
proc anding
	push ax es di si cx bx 
	mov ax, 0A000h
	mov es, ax ; set es to video memory
	
	mov di, [sprPos]
	mov si, [sprOffset]
	add si, PIXELS/2 ; to mask
	mov bx, offset keepSquare
	mov cx, [sprHeight]
	
andloop:
	push cx
	mov cx, [sprWidth]

andCol:
	cmp [dead], 1
		je noCollisionCheck
		
	;check candy collision
	checkCandy es:di	
	cmp [byte si], wh ; if not part of the sprite, dont check spikes
		je noCollisionCheck
		
	;check spike collision
	checkSpikes es:di

noCollisionCheck:
	;keepSquare
	mov al, [es:di] ; store current byte in al
	mov [bx], al ; store the byte to the keepSquare var
	inc bx ; store next time to the next byte of [keepSquare]
	
	;anding
	lodsb ; mov [ds:si] to al and inc si
	and [es:di], al ; AND spr with screen
	inc di ; inc di to or next byte of the screen next
	loop andCol ; do it for all the pixels in the line
	
	add di, 320 ; line down
	sub di, [sprWidth] ; go back the width of the sprite
	pop cx
	loop andloop ; do [sprHeight] lines
	
	pop bx cx si di es ax
	ret
endp anding


; input: sprPos, sprHeight, sprWidth, sprOffset
; output: screen OR spr
proc oring
	push ax es di si cx
	mov ax, 0A000h
	mov es, ax ; set es to video memory
	
	mov di, [sprPos]
	mov si, [sprOffset]
	mov cx, [sprHeight]
orloop:
	push cx
	mov cx, [sprWidth]
orCol:
	lodsb ; mov [ds:si] to al and inc si
	or [es:di], al ; OR spr with screen
	inc di ; inc di to or next byte of the screen next
	loop orCol ; do it for all the pixels in the line
	
	add di, 320 ; line down
	sub di, [sprWidth] ; go back the width of the sprite
	pop cx
	loop orloop ; do [sprHeight] lines
	
	pop cx si di es ax
	ret
endp oring


; input: sprPos, sprHeight, sprWidth, sprOffset
; output: draw the spr on screen (includes background color)
proc drawSpr
	push ax es di si cx
	mov ax, 0A000h
	mov es, ax ; set es to video memory
	
	mov di, [sprPos]
	mov si, [sprOffset]
	mov cx, [sprheight]
orloop2:
	push cx
	mov cx, [sprWidth]
orCol2:
	movsb ; move from the spr to the screen and inc si & di
	loop orCol2 ; do it for all the pixels in the line
	
	add di, 320 ; line down
	sub di, [sprWidth] ; go back the width of the sprite
	pop cx
	loop orloop2 ; do [sprHeight] lines
	
	pop cx si di es ax
	ret


endp drawSpr


;input: imgPos, sprHeight, sprWidth, keepSquare, sprPos
;output: copy keepSquare to screen
proc returnSqr
	push es ax si di cx
	mov ax, 0A000h
	mov es, ax ; set es to video memory
	
	mov di, [sprPos]
	mov si, offset keepSquare
	mov cx, [sprHeight]
retloop:
	push cx
	mov cx, [sprWidth]
	rep movsb ; copies one line from keepSquare to screen
	
	add di, 320 ; line down
	sub di, [sprWidth] ; go back the width of the sprite
	pop cx
	loop retloop ; do [sprHeight] lines
	
	pop cx di si ax es
	ret
endp returnSqr


;input: sprX, sprY
;output: checks for wall collision and handles it
proc checkWall
	mov cx, [sprX]
	mov dx, [sprY]
	
; ;check Top-Left corner
	getPixelColor
	cmp al, outline ; check wall
		je wall
	
;check Top-Right corner
	add cx, 16
	getPixelColor  ; al = color	
	cmp al, outline ; check wall
		je wall
	
	jmp endCheckWall
	
wall:
	call wallCollision


endCheckWall:
	ret
endp checkWall

;input: velocityX, sprOffset, candyPlaced, spikesAmount
;output: handles the player rotation and candy placement, sets [rotated] for post rotation handling
proc wallCollision
	cmp [velocityX], 0
	jg rotateLeft
	sub [sprOffset], PIXELS*2 ;rotate sprite right
	mov [sprX], 10 ; makes sure the bird isn't inside the wall
	mov [candyX], 272
	
	jmp checkCandyPlaced
	
rotateLeft:
	add [sprOffset], PIXELS*2 ; rotate spike left
	mov [sprX], 320-10-17 ; makes sure the bird isn't inside the wall
	mov [candyX], 34
	
checkCandyPlaced:
	cmp [candyPlaced],0
	jnz dontPlace
	call placeCandy
	
dontPlace:
	neg [velocityX] ; change moving direction
	; movWVars spikesCount, spikesAmount  	
	mov [rotated],1 ; handle other rotation stuff out of proc
	call placeSpikes
	ret
endp wallCollision


;input: candyX, candyLevel
;output: places the new candy on the screen, sets candyPlaced and currentCandyLevel
proc placeCandy
	push [sprPos] [sprOffset] [sprX] [sprY]
	mov [sprOffset], offset candy

	movWVars sprX candyX 
	movWVars oldCandyX candyX ; keep the current candy X cords for returnCandy

	;calculate for candy Ycord placement
	;200-20-10-16-16-16 = 122
	getRandomNum 127
	xor ah,ah
	
	add ax, 20+16 ;top margin & spike margin + safe space
	mov [sprY], ax
	mov [oldCandyY], ax ; for returnCandy
	
	setCandyColors ; sets candyColors and updates [currentCandyLevel]
	calculatePos
	call drawSpr ; draw candy

	mov [candyPlaced], 1 ; sets candyPlaced
	pop [sprY] [sprX] [sprOffset] [sprPos]

ret
endp placeCandy


;input: velocityX, spikesAmount
;output: places spikes on the wall
proc placeSpikes
	push [sprPos] [sprOffset] [sprWidth] [sprHeight] [sprY] [sprX]
		
	mov [sprOffset], offset spikeRight
	mov [sprX], 320-10-6
	cmp [velocityX], 0 ; calculate which side to put the spikes on
		jg rightSpikes
	mov [sprX], 10
	mov [sprOffset], offset spikeLeft
	
rightSpikes:
	mov [sprWidth], 6
	mov [sprHeight], 11
	
	mov cx, [spikesAmount] ; amount of spikes to place
placeSpikesLoop:
	calculateSpikeY 
		
	calculatePos
	call drawSpr
	
	loop placeSpikesLoop
	
	pop [sprX] [sprY] [sprHeight] [sprWidth] [sprOffset] [sprPos]
ret
endp placeSpikes


;input: velocityX, velocityY, rotated, sprY, sprX, oldCandyX, oldCandyY, won
;output: handles the death screen - death animation and info and data
proc deathScreen	
	call setData ; save the account's stats
	cmp [candyPlaced], 0 ; check if there currently is a candy
		je noCandy
		
	returnCandy ; delete candy if there is one placed
	
noCandy:	
	neg [velocityX]
	eraseSpikes ; erases this sides spikes and returns to previous direction
	neg [velocityX]

	cmp [sprY], 200-10-6-13 ; if its above Y=171, its a top spike, and so doesn't need to be rotated
		jae notSideSpike
	cmp [sprY], 20+6
		jbe notSideSpike ; if its under Y=26, its a buttom spike, and so doesn't need to be rotated
	
	cmp [rotated], 1
		je notSideSpike ; if rotated then the wall was detected before dying, and so the bird is already rotated
	neg [velocityX] ; if not rotated, then the wall was not detected before dying and the bird was not rotated and so needs to be rotated

notSideSpike:
	neg [velocityY] ; opposite Y velocity
	
	mov [sprOffset], offset birdDeadRight
	cmp [velocityX], 0 ;calculate dead bird sprite direction
		jg deadBirdRight
	mov [sprOffset], offset birdDeadLeft
	
deadBirdRight:
	movWVars saveClock Clock
	
	call returnSqr
	eraseSpikes ; erase spike pixels that are stored in save square
	drawBird ; save square without spike pixels
	
deathLoop: 
	mov ax, [saveClock]
	cmp ax, [Clock]
		je checkDeathInput
	movWVars saveClock, Clock
	
	jmp deathProccess

checkDeathInput: ;check for input during the animation

	checkKey ; check if there is a pressed key
		jz deathLoop ; if not, go back to deathLoop
		
	waitForKey ; if there is, input it to al
	
	cmp al, ESCAPE ;if its esc, exit program
		je exit
	
	cmp al, SPACE ; if its space, end death animation
		je endAnimation
		
		
	jmp deathLoop
	
deathProccess: ; dead bird "animation"
	call returnSqr
	
	;animation movement
	inc [velocityY]
	addWVars sprX, velocityX
	addWVars sprY velocityY
	
	
	cmp [sprY], 200-10 ; check if out of Y bound
		jae endAnimation
	
	cmp [sprX], 320-17 ; check if out of X bound
		jae endAnimation

	drawBird
	
	jmp checkDeathInput
	
endAnimation:
	call returnSqr ; erase bird sprite
	eraseScore ; erase score at the middle of the screen
	
	;draw Score rectangle 62X35
	mov [color], outline
	mov [rectangleX], 320/2-70/2+3
	mov [rectangleY], 60
	mov [rWidth], 62
	mov [rHeight], 31
	call drawRect
	
	;score info
	movCursor 17, 8
	print scoreMsg  ;score prefix
	movCursor 19, 10
	mov ax, [Score] ;score number
	call printNumber

	;continue rect
	mov [rectangleX], 320/2-49
	mov [rectangleY], 70+24
	mov [rWidth], 100
	mov [rHeight], 30
	call drawRect
	
	;print instuction
	movCursor 15, 12
	print pressSpace2
	movCursor 15, 14
	print toContinue
	
	;games played
	playedInfo

	;best score
	bestScoreInfo

	;candies
	candyInfo
	
	cmp [newBestScore], 1
		je newBestScore2
	movCursor 16, 4
	print pressL
	
	movCursor 13, 5
	print forLeaderB
	
	jmp notNewBestScore2
	
newBestScore2:
	newBestScoreInfo ;if newBestScore is set, indicate to player
	call updateLeaderBoard ; and update the leaderBoard

notNewBestScore2: 
	cmp [won], 0
		je notWon
		
	wonMsgInfo ; if won, print win message
	
notWon:
	accountInfo ; display account info
	
ret
endp deathScreen


;input: [score], [level], [numbers], [bestScore], [numbers], [bestScore]
;output: updates the score, highscore, level, candyLevel, velocityX, spikesAmount and screen colors
proc updateScore
	push [sprWidth] [sprHeight] [sprPos] [sprOffset]
	mov [sprHeight], 38
	mov [sprWidth], 30
	
	mov ax, [score]
	cmp [bestScore], ax
		jae notNewBestScore
	
	movWVars BestScore score
	mov [newBestScore], 1
	
notNewBestScore:
	mov bx, 10
	
	div bl	;al = tens, ah = ones
	mov cx, ax ;keeps the ones in cx for later use
	
	cmp ah, 0 ;if ones are 0, its a second new level
		jz secondNewLevel
		
	cmp ah, 5 ;if the ones are neither 0 nor 5 then its not a new level 
		jnz notNewLevel
		
	jmp newLevel
		
secondNewLevel: ;inc speed and spike amount
	
		
	cmp [level], MAX_LEVEL ;if reached the max level, don't inc speed and spikes amount
		ja newLevel
	
	cmp [level], 0 ; so it won't inc speed and spikes amount at the start
		je notNewLevel
	
	;change candy color state
	cmp [level], 4
		ja dontChangeCandy
	add [candyLevel], 3
dontChangeCandy:

	inc [velocityX] ; inc speed
	inc [spikesAmount] ; inc spikes amount

newLevel:
	inc [level] ; inc the level
	mov si, [level] ; moves si the level for the color setting
	cmp si, 255/5 ; win at score = 255 (byte limitation)
		je winGame
	

	cmp si, 100/5 ; after score = 100, dont change numbers on screen
		ja dontDraw
	
	setColors ; sets the new colors, every 5 levels, unless score above 100

	cmp si, 100/5 ; after score = 100, freeze numbers on screen at 99
		je finalColor
		
	jmp notNewLevel
	
	
winGame:
	mov [dead], 1 ; end game
	mov [won], 1 ; for the win message display
	
	jmp dontDraw

finalColor:
	; above 100 score the score at the middle will stay at 99
	mov al, 9
	mov ch, 9
notNewLevel:

	xor bh, bh
	mov bl, al ;bl has tens
	shl bl, 1 ;bx has the index of the tens offset in the array ;shl = byte>word
	mov ax, [numbers+bx] ; loads the number sprOffset from [numbers] to ax
	mov [sprOffset], ax
	
	mov [sprPos], 320*(100-16)+320/2-35
	
	call drawSpr
	
	add [sprPos], 40
	
	mov bl, ch  ;puts the ones from ch to bl 
	shl bx, 1 ; doubles bx (byte>word)
		
	mov ax, [numbers+bx] ;bx holds the index of the ones number offset in the array
	mov [sprOffset], ax
	
	call drawSpr

dontDraw:
	pop [sprOffset] [sprPos] [sprHeight] [sprWidth]

ret
endp updateScore

;input: leaderBoardBufferFileName , accountsBufferFileName
;output: loads leaderBoardBuffer and accountsBuffer from files
proc loadData 
	;load data to leaderBoardBuffer
	openFile leaderBoardBufferFileName  0
	readFromFile 50 leaderBoardBuffer
	closeFile
	
	;load data to accountsBuffer
	openFile accountsBufferFileName 0
	readFromFile ACCOUNTS_LENGTH accountsBuffer
	closeFile
	
	call getData
	
ret
endp loadData

;input: leaderBoardBuffer, accountsBuffer, bestScore
;output: updates leaderBoardBuffer and saves it to file
proc updateLeaderBoard
	push es
	mov ax, @data
	mov es, ax ; set es to @data
	
	xor bh, bh 
	mov bl, [accountsBuffer+1] ; bl = current account offset

	mov di, offset leaderBoardBuffer+1 ;skip bestScore
	mov cx, PLAYERS
	movCursor 3,6
	
findPlayer:
	mov dx, cx ;keep cx
	
	mov si, offset accountsBuffer
	add si, bx ; get to current account
	mov cx, NAME_LENGTH-1 ;name without $
	repe cmpsb ; as long as they are compatible, continue checking for compatibility
	
	cmp cx, 0 ;if cx = 0, player Found, if not, continue to next
		je playerFound ;di = end of the name
		
	; if its both of the names' end, then the player is found
	cmp [byte ptr di-1], 0
		jne playerNotFound
	
	cmp [byte ptr si-1], '$'
		je playerFound
		
playerNotFound:
		
	add di, cx ; get to end of the name
	add di, 2 ; skip data & '$'
	mov cx, dx ; restore cx from dx for loop
	
	loop findPlayer
	
	jmp findPlace ;if the player is not on the leaderBoard, find its place and add it
	
playerFound:
	add di, cx ; get to end of the name
	
	mov cx, dx ; restore cx from dx, amount of players left
		
	mov si, di ; the si starts at the start of the found player's name & bestScore
	sub si, NAME_LENGTH ; go to the found player's bestScore
	
	inc di ; skip $, di = bestScore after found player
	
	push di si ; keep player after found player and player found, switch them later
	
	findPlayerPlace di, cx
	
	pop di si ; si = player after found player bestScore, di = player found bestScore

	;update the player's bestScore in the leaderBoard
	mov ax, [bestScore]
	mov [di], al
	
	cmp cx, 0
		jz finishOrder ; if cx = 0, the player didn't advance in the leader board
	
	jmp movPlayer
	

findPlace:
	mov ax, offset leaderBoardBuffer
	findPlayerPlace ax, PLAYERS ;at the end, 5-cx = current player's place
	
	cmp cx, 0
		jz finishOrder ; if cx = 0, the player didn't make it to the leader board


moveLeaderBoard: ; moves only between the $: *-----*$*-----*$
	mov si, offset leaderBoardBuffer
	mov di, offset leaderBoardBuffer-10 ; starts at deleteFromLeaderBoard

	
movPlayer: ;moves the players in the leaderBoard
	push cx
	mov cx, NAME_LENGTH ; move name+bestScore
	rep movsb 
	inc di
	inc si
	pop cx
	loop movPlayer
	
	xor bh, bh
	mov bl, [accountsBuffer+1]
	mov si, offset accountsBuffer
	add si, bx ; si = current account name
	dec si ; get to bestScore, si = current account bestScore
	
	mov cx, NAME_LENGTH ; name+BestScore
	mov al, 0 ;to insert 0 in the leftovers of the name

insertCurrentAccount: ;moves current account to the right spot in the leader board
	movsb ; move letter, until accountsBuffer encounter a $ (end of name)
	cmp [byte ptr si], '$'
		je endName
		
	loop insertCurrentAccount
	
	jmp finishOrder ; if cx = 0, no need to fill the rest with 0
	
endName: ; fill the name leftovers with 0
	dec cx ;because didnt reach loop, cx = name leftover length
	rep stosb ; insert the rest with 0
	
finishOrder:	
	call saveData ; save leaderBoard
	pop es
ret
endp updateLeaderBoard

;input: clear, tooManyAccountsVar, leaderBoardBufferFileName, accountsBufferFileName
;output: input account name, then find/create account
proc addAccount	
	eraseCurrentAccount ; erase current account on screen
	eraseHeaderInstuction ; erase instuction
	
	movCursor 9, 4
	print pressEscToCancel ; print instuction to cancel operation
	
	mov di, offset currentAccount ; store inputted name to currentAccount
	mov cx, NAME_LENGTH-1 ; input NAME_LENGTH-1 max characters
	
	xor bl, bl ; amount of letters entered
	mov dl, 14 ; input character x print cordinate
	
	jmp getKeys
	
startWithLetter:
	movCursor 5, 4
	print startWithALetterMsg ; instuction if entered a non letter character as first letter

getKeys:
	waitForKey
	eraseHeaderInstuction ; erase instuction
	movCursor 9, 4
	print pressEscToCancel ; print instuction
	movCursor dl, 19 ; return to input character X print cordinate

	;check input
	cmp al, ESCAPE
		je endAddAccount
	
	cmp al, BACKSPACE
		je backSpaceLabel
		
	cmp al, ENTERKEY
		je inputted
	
	cmp bl, NAME_LENGTH-1
		jae getKeys
	
	cmp bl, 0
		ja notFirst ; if first, needs to be a letter

	;checks if starts with a capital letter
	cmp al, 'A'
		jb startWithLetter
	
	cmp al, 'Z'
		jb notFirst
	
	;checks if starts with a nonCapital letter
	cmp al, 'a'
		jb startWithLetter
	cmp al, 'z'
		ja startWithLetter
	
notFirst:
	cmp al, '$'
		je getKeys ; $ is not allowed to be inputted, because it is used for seperating names

	stosb ; stores letter to currentAccount
	inc dl ; increases input character x print cordinate
	inc bl ; increases amount of characters inputted
	printChar ; prints character
	
	jmp getKeys
	
backSpaceLabel:
	cmp bl, 0
		je getKeys ; if first letter, go back to getKeys
		
	dec di ; go back one byte in currentAccount
	mov [byte ptr di], 0 ; reset current char
	dec dl ; decreases input character x print cordinate
	dec bl ; decreases amount of characters inputted
	movCursor dl, 19 ; mov cursor back 
	mov al, ' ' 
	printChar ; delete current char
	movCursor dl, 19 ; mov cursor back again
	
	jmp getKeys

inputted:			
	cmp [clear], 0
		je dontClear
	clearData ; if [clear] is set, clear all data	
	mov [tooManyAccountsVar], 0 ; if data is cleared there are not too many accounts

dontClear:
	eraseFooterInstuction ; erase instuction
	
	; put $ at the end of the name in currentAccount
	xor bh, bh
	mov [byte ptr offset currentAccount + bx], '$'
	inc bl ; because of $
	call findAccount
	
	call saveData
		
endAddAccount:
	mov [clear], 0 ; no need to clear anymore
	eraseCurrentAccount ; erase current account on screen
	eraseFooterInstuction ; erase instuction
ret
endp addAccount

;input: accountsBufferFileName, leaderBoardBufferFileName, accountsBuffer
;output: loads buffers to files
proc saveData
	; save data from accountsBuffer to file
	openFile accountsBufferFileName 1
	writeToFile [accountsBuffer] accountsBuffer
	closeFile
	
	; save data from leaderBoardBuffer to file
	openFile leaderBoardBufferFileName 1
	writeToFile 50 leaderBoardBuffer
	closeFile
ret
endp saveData

;input: account name inputted length in bl, currentAccount, accountsBuffer, tooManyAccountsVar
;output: searches account and if found, sets it to the current account, if not, create a new one and set it to current account
proc findAccount 
	xor bh, bh ; bx = name length
	
	mov di, offset accountsBuffer
	xor ch, ch
	mov cl, [accountsBuffer]
	mov al, '$'
	mov dx, cx ; keep cx ([accountsBuffer])
	
waitForAccount:
	mov si, offset currentAccount
	
	mov cx, dx ; moves dx (whats left of [accountsBuffer]) to cx
	repne scasb 
	
	cmp cx, 0
		ja checkCompatiblity ; if cx == 0, then it went through the whole of the accounts buffer
	
	cmp [tooManyAccountsVar], 1 ; if there are too many accounts, dont create a new one
		je createdAccount
		
	call createAccount
	
	jmp createdAccount
	
checkCompatiblity:
	; push cx
	mov dx, cx ; keeps cx again
	
	mov cx, bx ;amount of bytes inputted+$
	add di, 3 ;skip data
	repe cmpsb ; as long as they are compatible, continue checking for compatibility
	
	cmp cx, 0 ; check that repe didnt stop in the middle
		jne waitForAccount
		
	cmp [di-1], al ;check if its also the end of the string in di
		jne waitForAccount
	
compatible:
	sub di, offset accountsBuffer ; di = bytes to end of account
	sub di, bx ; di= bytes to start of account's NAME (not data)
	
	mov bx, di ; word -> byte
	mov [accountsBuffer+1], bl ; set current
	call getData
	
createdAccount:
ret
endp findAccount

;input: accountsBuffer, account name inputted length in bl, currentAccount
;output: creates new account using the name in [currentAccount] and stores it in accountsBuffer with all of its data set to 0
proc createAccount
	mov al, [accountsBuffer]
	add al, 3 ; skip data
	mov [accountsBuffer+1], al
	
	mov cx, bx
	mov si, offset currentAccount
	mov di, offset accountsBuffer
	mov al, [accountsBuffer]
	xor ah, ah
	add di, ax
	mov [byte ptr di], 0 ; gamesPlayed = 0
	mov [byte ptr di+1], 0 ; candyScore = 0
	mov [byte ptr di+2], 0 ; bestScore = 0
	add di,3 ; skip data
	rep movsb	
	
	add bl,3 ; skip data
	add [accountsBuffer], bl ;add the amount of bytes inputted+$ to the current
	
	;reset stats
	mov [bestScore], 0
	mov [candyScore], 0
	mov [gamesPlayed], 0
	
ret
endp createAccount


;input: leaderBoardBufferFileName, accountsBufferFileName, accountsBuffer, leaderBoardBuffer, bestScore, candyScore, gamesPlayed
;output: update current account's data in accountsBuffer from [bestScore], [candyScore] and [gamesPlayed]
proc setData 
	;pattern: P-C-S-accountName
	
	xor bh, bh
	mov bl, [accountsBuffer+1]

	mov ax, [bestScore]
	mov [accountsBuffer+bx-1], al ; set bestScore
	
	mov ax, [candyScore]
	mov [accountsBuffer+bx-2], al ; set candyScore
	
	mov ax, [gamesPlayed]
	mov [accountsBuffer+bx-3], al ; set gamesPlayed
	
	call saveData
	
ret
endp setData

;input: accountsBuffer
;output: loads bestScore, candyScore and gamesPlayed from accountsBuffer
proc getData
	xor bh, bh
	xor ah, ah
	mov bl, [accountsBuffer+1]
	
	mov al, [accountsBuffer+bx-1]
	mov [bestScore], ax ; get bestScore
	
	mov al, [accountsBuffer+bx-2]
	mov [candyScore], ax ; get candyScore
	
	mov al, [accountsBuffer+bx-3]
	mov [gamesPlayed], ax ; get gamesPlayed

ret
endp getData