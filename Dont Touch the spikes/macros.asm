	; Modes Section


;changes to graphicMode
graphicMode macro
	mov ax,13h
	int 10h
endm

;changes to textMode
textMode macro
	mov ax, 3h
	int 10h
endm
	
	
	; Input Section
	

;checks if there is a key press
; return 1 in zero flag if there is a key press
checkKey macro
	mov ah, 1
	int 16h
endm

;waits for key press and return key ascii in keypress
waitForKey macro
	xor ah, ah
	int 16h
endm


	; Print Section
	
	
; input: char in al
printChar macro
	push dx ax
	mov ah, 2
	mov dl, al
	int 21h
	pop ax dx
endm
	
;prints the variable on the screen
print macro variable
	printOffset variable 0
endm

;prints the variable+offset on the screen
printOffset macro variable, printOffset
	push ax dx
	mov ah, 9
	mov dx, offset variable
	add dx, printOffset
	int 21h
	pop dx ax
endm
	
;moves the cursor to (x,y)
movCursor macro x, y 
	push ax bx dx
	mov ah, 2h
	mov bh, 0
	mov dl, x
	mov dh, y
	int 10h
	pop dx bx ax
endm
	
;prints the leaderBoard on screen 
printLeaderBoard macro
local printPlayer, notZeroScore
	mov di, offset leaderBoardBuffer+1 ; skip bestScore
	
	mov bl, 15 ;starting cursor Y value 
	mov cx, PLAYERS ; 5 players, for loop
	xor ah, ah
	
printPlayer:
	push cx
	movCursor 14, bl
	printOffset 0 di ; print the players name
	
	movCursor 14+NAME_LENGTH+1, bl
	mov al, [di-1]
	cmp al, 0 ; dont print a player if it doesnt have a score
		jz notZeroScore
		
	call printNumber

notZeroScore:
	add di, NAME_LENGTH+1 ; 8 letters+$, +bestScore, get to next bestScore
	sub bl, 2 ; go 2 lines down
	
	pop cx
	loop printPlayer
endm


	; Calculations Section
	

;mul variable by 320
mulByScreen macro variable
	push ax bx
    mov ax, [variable]
    shl ax, 6 ; 64
    mov bx, ax
    shl bx, 2 ;4
    add ax, bx
    mov [variable], ax
	pop bx ax
endm

;adds the second variable to the first - word
addWVars macro var1, var2
	push ax
	mov ax, [var2]
	add [var1], ax
	pop ax
endm

;move the second variable to the first variable - word
movWVars macro var1, var2
	push ax
	mov ax, [var2]
	mov [var1], ax
	pop ax
endm

;move the second variable to the first variable - byte
movBVars macro var1, var2
	push ax
	mov al, [var2]
	mov [var1], al
	pop ax
endm

;calculates the sprPos using sprY and sprX
calculatePos macro 
	movWVars sprPos sprY
	mulByScreen sprPos
	addWVars sprPos sprX
endm

;calculate A Spike'S Y cordinate and put it in sprY
calculateSpikeY macro
	;bx randomize step 1
	mov bx, [sprY] 
	xor bx, [sprX]
	
	add bx, cx ; randomize bx part 2
	
	getRandomNum 7
	
	mov bl, al ; bl = 0-7
	add bh, cl ; randomize bx part 3
	
	getRandomNum 3
	
	add bl, al ;bl = 0-10
		
	mov al, bl ;al = 0-10
	mov dl, bl ;cl = 0-10
	shl dl, 1 ;*2
	shl al, 2 ;*4
	shl bl, 3 ;*8
	
	add al, bl 
	add al, dl ;*14
	
	add al, 20+10+2
	xor ah, ah
	mov [sprY], ax
endm

;generates a number between 0 and the inputted number
;returns random number in al
getRandomNum macro range
	mov ax, [Clock] 		; read timer counter
	mov ah, [byte cs:bx] 	; read one byte from memory
	xor al, ah 			; xor memory and counter
	and al, range 		; leave result between 0-range
endm


	; Check Section
	

;checks if the current pixel is part of a spike
checkSpikes macro color
local noCollision, deathWall
	cmp [byte color], sk ; check spike
		jne noCollision
		
	mov [dead], 1 ;for death handling outside of anding
	
noCollision:
endm

;checks if the current pixel is part of a candy
checkCandy macro color
local noCollision
	push ax bx
	;check collision with any of the candy parts
	cmp [byte color], c1 
		je candyLabel
		
	cmp [byte color], c2
		je candyLabel
		
	cmp [byte color], c3
		je candyLabel
		
	cmp [byte color], c4
		je candyLabel
	
	jmp noCollision
	
candyLabel: ; if collided with a candy, add to [candyScore], the right amount of candies according to currentCandyLevel and erase the candy
	mov ax, [currentCandyLevel]
	add ax, 3
	mov bl, 3
	div bl 
	xor ah, ah 
	add [candyScore], ax
		jnc notTooMuchCandies
		
	mov [candyScore], 255 ; max amount of candies	
	
notTooMuchCandies:
	mov [candyPlaced], 0
	returnCandy
	
noCollision:	
	pop bx ax
endm

; calls death if dead
checkDead macro
	cmp [dead], 0
		je notDead
		
yesDead:
	call deathScreen ; handle death screen and animation

getInput: ;wait for input at the end of the death screen
	waitForKey
	cmp al, ESCAPE
		je exit

	cmp al, 'l'
		je leaderBoard
	
	cmp al, space
		je start
		
	jmp getInput
	
notDead:
endm


	; Erase Section
	

;erases the side spikes
eraseSpikes macro
local eraseRight
	mov [rectangleY], 20+6
	mov [color], bg
	mov [rWidth], 6
	mov [rHeight], 127+30
	
	mov [rectangleX], 320-10-6
	cmp [velocityX], 0 ;check which side needs to be erased
		jl eraseRight	
		
	mov [rectangleX], 10
	
eraseRight:
	call drawRect ;erase the spikes
endm

;erases the score numbers
eraseScore macro
	mov [color], ci
	mov [rectangleX], 320/2-40
	mov [rectangleY], 200/2-30
	mov [rWidth], 80
	mov [rHeight], 60
	call drawRect
endm

;erases the candy
returnCandy macro
	movWVars rectangleX, oldCandyX
	movWVars rectangleY, oldCandyY
	mov [color], bg
	mov [rHeight], 11
	mov [rWidth], 17
	call drawRect
endm

;erases the current account field in leaderBoard
eraseCurrentAccount macro
	mov [color], outline
	mov [rectangleX], 320/2-120/2
	mov [rectangleY], 150
	mov [rWidth], 120
	mov [rHeight], 10
	call drawRect
endm

;erases the header instuction in leaderBoard
eraseHeaderInstuction macro
	mov [color], bg
	mov [rWidth], 320-20
	mov [rHeight], 20
	mov [rectangleX], 10
	mov [rectangleY], 20
	call drawRect
endm

;erases the footer instuction in leaderBoard
eraseFooterInstuction macro
	mov [color], bg
	mov [rWidth], 320-20
	mov [rHeight], 20
	mov [rectangleX], 10
	mov [rectangleY], 200-13-20
	call drawRect
endm

;erases all of the data in accountsBuffer and leaderBoardBuffer
clearData macro
	push bx
	mov al, [accountsBuffer] ; save amount of bytes in accountsBuffer
	
	mov al, 0 ; to insert 0 in the buffers
	
	mov cx, ACCOUNTS_LENGTH-1 ; empty accountsBuffer, except first byte
	mov di, offset accountsBuffer+1
	rep stosb
	call saveData ; save empty accountsBuffer
	
	mov al, 0
	
	mov cx, 50 ; empty leaderBoardBuffer
	mov di, offset leaderBoardBuffer
	rep stosb
	
	;insert dollar signs every 9 bytes in the leaderBoard
	mov cx, 5
	mov bx, 9
insertDollar:
	mov [leaderBoardBuffer+bx], '$'
	add bx, 10
	loop insertDollar
	
	;put 3 in both bytes inputted and current
	mov [accountsBuffer], 3
	mov [accountsBuffer+1], 3
	mov [accountsBuffer+2], '$'
	pop bx
endm


	; Player Section
	
	
;calculates the pos and calls anding and oring
drawBird macro
	calculatePos
	call anding
	call oring
endm

; input: searchOffset - from where start searching the leaderBoard, searchesLeft - how much of the leaderBoard have i got left to search
; output: at the end, 5-cx = current player's place
; output: cx = player's relative to searchOffset
findPlayerPlace	macro searchOffset, searchesLeft
local findPlace, placeFound
	mov bx, [bestScore]
	mov di, searchOffset
	mov cx, searchesLeft
	push cx
	
	
findPlace:
	
	cmp [di], bl ; check if the current bestScore is bigger than the other player's best score
		jae placeFound
		
	add di, NAME_LENGTH+1 ; 8 letters+$, +bestScore, get to next bestScore
	loop findPlace
	
placeFound:
	;calculate player's location relative to searchOffset
	;"flip" cx relativly to searchesLeft
	pop dx ; dx = searchesLeft
	sub dx, cx 
	mov cx, dx ; return the calculation to cx
endm


	;Start Section


; like a constuctor, sets variables start values at the start of each game
startVariables macro
	mov [velocityY], JUMP_FORCE
	mov [velocityX], SPEED
	mov [score], 0
	mov [dead], 0
	mov [rotated], 0
	mov [won], 0
	mov [sprOffset], offset birdRightDown
	mov [sprX], 320/2-17/2
	mov [sprY], 200/2
	mov [sprWidth], 17
	mov [sprHeight], 11
	mov [level], 0
	mov [candyPlaced], 0
	mov [spikesAmount], SPIKES_START_AMOUNT  
	mov [newBestScore], 0
	mov [candyLevel], 0
endm

;display the top and buttom spikes
startSpikes macro
local sides, putSpikes
	push [sprOffset] [sprHeight] [sprWidth]
	mov [sprOffset], offset spikeUp
	mov [sprHeight], 6
	mov [sprWidth], 11
	
	mov cx, 2
	mov [sprPos], 320*21+12 ;loads the absolute position to the first up spike
	
sides: ; 2 sides, first up and then down
	push cx
	mov cx, 20
	
	putSpikes:
		call drawSpr
		add [sprPos], 15 ; 11 spike width + 3 margin between spikes
		loop putSpikes
	
	mov [sprPos], 320*(200-10-5)+14 ;loads the absolute position to the first down spike
	mov [sprOffset], offset spikeDown
	pop cx
	loop sides
	
	pop [sprWidth] [sprHeight] [sprOffset]
endm

;display the start screen
startScreen macro 
	call displayImage
	playedInfo
	bestScoreInfo
	candyInfo
	startSpikes
	drawBird
	
	;press L for leaderBoard message
	movCursor 16, 4
	print pressL
	movCursor 13, 5
	print forLeaderB
	
	;press space for jump message
	movCursor 14, 10
	print pressSpace1
	movCursor 16, 11
	print toJump
	
	accountInfo
endm


	; Info and Msg Section
	

;display played info box
playedInfo macro
	movCursor 13, 20
	print gamesPlayedMsg
	mov ax, [gamesPlayed]
	call printNumber	
endm

;display bestScore info box
bestScoreInfo macro
	movCursor 14, 22
	print bestScoreMsg
	mov ax, [bestScore]
	call printNumber
endm

;display candy info box
candyInfo macro
	push [sprOffset]
	mov [sprPos], 320*143+320/2-17-4
	mov [sprOffset], offset infoCandy
	call drawSpr
	
	mov ax, [candyScore]
	movCursor 20, 18
	call printNumber
	pop [sprOffset]
endm

;display win message box
wonMsgInfo macro
	movCursor 16, 4
	print wonMsg
endm

;display account's name centered at the start and end screen
accountInfo macro
	push es
	mov ax, @data
	mov es, ax
	
	;center account name
	
	mov bx, offset accountsBuffer
	add bl, [accountsBuffer+1]
	mov di, bx
	
	mov al, '$'
	mov cx, NAME_LENGTH-1 ;doesnt need to check $
	repne scasb 
	
	inc cx ; to not include $ (searches an extra time for $)
	
	shr cx, 1 ; devide by 2 to center
	
	mov dx, 16 ; start X cursor position
	
	add dx, cx ; dx = 16+ (NAME_LENGTH-1-lettersInputted)/2 - every 2 letters dx decreases and so cursor goes back 1
	;8
	movCursor dl, 16
	
	mov bl, [accountsBuffer+1]
	xor bh,bh
	printOffset accountsBuffer, bx
	pop es
endm

;leaderBoard Rectangle in leaderBoard 120X120
leaderBoardRectangle macro
	mov [color], outline
	mov [rectangleX], 320/2-120/2
	mov [rectangleY], 200/2-100/2-5
	mov [rWidth], 120
	mov [rHeight], 120
	call drawRect

endm

;indicates to the player at end screen when they achieved a new bestScore
newBestScoreInfo macro
	movCursor 12, 5
	print newBestScoreMsg
endm


	; color Section


;input X in cx, Y in dx
;return color in al 
getPixelColor macro
	mov bh,0h
	mov ah,0Dh
	int 10h ; return al the pixel value read
endm
	
;input: colorIndex - color index in the pallete, rgb values (255,255,255 format)
;output: changes the color in the colorIndex to the new rgb values
changeColor macro colorIndex, red, green, blue
	mov ax, 1010h
	mov bx, colorIndex

	mov dh, red
	mov ch, green
	mov cl, blue
	
	shr dh, 2
	shr ch, 2
	shr cl, 2
	
	int 10h
endm

;input: si - level
;output: sets the screens new colors
setColors macro	
	push ax bx cx dx
	;outline and text background
	changeColor outline [outlineRed+si] [outlineGreen+si] [outlineBlue+si]
	;spikes
	changeColor sk [outlineRed+si] [outlineGreen+si] [outlineBlue+si]	
	;background, text foreground and numbers foreground
	changeColor bg [BackgroundRed+si] [BackgroundGreen+si] [BackgroundBlue+si]
	pop dx cx bx ax
endm

;input: candyLevel
;output: sets the candy's new colors before placing one
setCandyColors macro
	push ax bx cx dx
	mov si, [candyLevel]
	changeColor c1 [candyColor1+si], [candyColor1+si+1], [candyColor1+si+2] 
	changeColor c2 [candyColor2+si], [candyColor2+si+1], [candyColor2+si+2] 
	changeColor c3 [candyColor3+si], [candyColor3+si+1], [candyColor3+si+2] 
	changeColor c4 [candyColor4+si], [candyColor4+si+1], [candyColor4+si+2] 
	movWVars currentCandyLevel candyLevel ; update currentCandyLevel
	pop dx cx bx ax
endm


	;File Section
	
	
; 00  read only
; 01  write only
; 02  read/write
; Input: file handle, file name, open mode
; opens a file in chosen mode, sets handle
openFile macro fileName, openMode
	mov ah, 3Dh
	mov al, openMode
	mov dx, offset fileName
	int 21h
	mov [filehandle], ax
endm

; Input: file handle
; Output: close a file
closeFile macro
	mov ah,3Eh
	mov bx, [fileHandle]
	int 21h
endm

; Input: file handle, number of bytes to read, and read buffer
; Output: reads a certain amout of bytes from a file and writes them at chosen location
readFromFile macro bytesToRead, readBuffer
    mov ah, 3fh
    mov bx, [fileHandle]
    mov cx, bytesToRead
    mov dx, offset readBuffer
    int 21h 
endm
	
; Input: file handle, number of bytes to write, and write buffer
; Output: writes a certain amout of bytes from a file and writes them at chosen location
writeToFile macro bytesToWrite, writeBuffer
	push ax bx cx dx
	mov ah, 40h
	mov bx, [filehandle]
	xor ch, ch
	mov cl, bytesToWrite
	mov dx, offset writeBuffer
	int 21h
	pop dx cx bx ax
endm

