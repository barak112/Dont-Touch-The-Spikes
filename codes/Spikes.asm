;import macro file
include macros.asm
jumps
IDEAL
MODEL small
STACK 100h
DATASEG
		; import data files
	include "sprites.asm"
	include "numbers.asm"
		
		
		; Image Section
		
	mainScreen db 'assets/bmp/screens/Outline.bmp',0	;the main screen bmp, used in displayImage 
    fileHandle dw ? ;the opended file "id", used after open file when interacting with the file
    Header      db 54 dup (0) 
    Palette      db 256*4 dup (0) ; stores the palette
    ScrLine      db 320 dup (0) ; stores 1 line, used in copyBitmap
	picWidth dw 320 ; image width
	picHeight dw 200 ; image height
	leftGap dw 0 ; X image placement
	topGap dw 0  ; Y image placement
	
	
		; Accounts and Data Section
		
	NAME_LENGTH equ 9 ;8 letters and 1 $
	currentAccount db NAME_LENGTH dup(?)  ;9 bytes: 8 letters and 1 $, used in addAccount
	clear db 0 ; boolean, set if needs to clear accounts
	ACCOUNTS_LENGTH equ 255 ; maximum 1 byte can store
	PLAYERS equ 5 ;amount of players to include in the leaderBoard
	tooManyAccountsVar db 0 ;boolean, set if adding a player would overflow 1 byte
	
	accountsBuffer db ACCOUNTS_LENGTH dup (?) ; data buffer that stores all of the accounts info
	accountsBufferFileName db 'assets/accounts.txt',0 ; accounts file location
	
	deleteFromLeaderBoard db 10 dup (?) ; this is where a player who's removed from the leaderBoard will be stored
	leaderBoardBuffer db 50 dup (0) ; data buffer that stores all of the leaderBoard info
	leaderBoardBufferFileName db 'assets/LdrBrd.txt',0 ; leaderBoard file location
	
	pressEscToCancel db "press escape to cancel$" ; when adding/switching an account, press esc to cancel action
	pressCToClearMsg db "Press C to clear all accounts$" ; when in leaderBoard, you can press C to clear all data buffers
	pressLForMenuMsg db "Press L to go back to menu$" ; when in leaderBoard, press L to go back to menu
	pressNForAccountMsg db "Press N to add/switch account$" ; when in leaderBoard, press N to add/switch account
	typeAccountMsg db "Type your account's name$" ; instuction what to do when adding/switching an account in leaderBoard
	accountLimitsMsg db "Max 8 letters, starts with a letter$" ; name limitations when adding/switching an account in leaderBoard
	startWithALetterMsg db "Name must start with a letter!$" ; if a non letter is inputted when entering name
	
	tooManyAccountsMsg db "too many accounts to add new ones$" ; if you cannot add a new account, replaces pressNForAccountMsg
	
	
		; Score Section
		
	numbers dw offset zero, offset one, offset two, offset three, offset four, offset five, offset six, offset seven, offset eight, offset nine ; array of  every letter sprite offset
	score dw 0	; stores current score while playing
	bestScore dw 0 ; stores account's bestScore, loaded from file and is changed in updateScore
	NewBestScore dw 0 ; boolean, set in updateScore when setting a new bestScore
	gamesPlayed dw 0 ; stores account's gamesPlayed, loaded from file and is increased at the start of every game
	level dw 0 ; game's current level, controlls game's difficulty and screen colors, increased every 5 points
	MAX_LEVEL equ 8 ; last change at score = 40 (stop changing at 50)
	
	
		; Info Msg Section
		
	scoreMsg db "Score:$" ; prefix's the score in start screen and end screen
	bestScoreMsg db "Best Score:$" ; prefix's the bestScore in start screen and end screen
	gamesPlayedMsg db "Games Played:$" ; prefix's the gamesPlayed in start screen and end screen
	pressSpace1 db "Press  Space$" ;instuction in startScreen
	toJump db "To  Jump$" ;instuction in startScreen
	pressSpace2 db "Press Space$" ; instuction in end screen
	toContinue db "To Continue$" ; instuction in end screen
	wonMsg db  "You Won!$" ; shown in end screen if won (at score = 255)
	newBestScoreMsg db "New Best Score!$" ; shown in end screen if achieved a new best score
	
	pressL db "Press  L$" ; instuction in menu to go to leaderBoard
	forLeaderB db "For LeaderBoard$"
	
	
		; Spike Section
		
	spikesAmount dw 0 ; how many spikes to place, changed every 2 levels in updateScore until reached MAX_LEVEL
	SPIKES_START_AMOUNT equ 4 ; with how many spikes to start (score=0)


		; Colors Section
		
	;screen colors, changes every 5 points until level 100
						;0   ;5   ;10  ;15  ;20  ;25  ;30  ;35  ;40  ;45  ;50  ;55  ;60  ;65  ;70  ;75  ;80  ;85  ;90  ;95  ;100
	outlineRed 		db 104, 099, 129, 115, 108, 255, 000, 126, 000, 184, 255, 255, 254, 254, 254, 001, 001, 001, 001, 001, 255		
	outlineGreen 	db 104, 117, 106, 128, 099, 255, 190, 235, 104, 000, 255, 255, 254, 254, 254, 000, 000, 000, 000, 000, 000
	outlineBlue 	db 104, 129, 100, 100, 128, 255, 236, 001, 235, 069, 255, 255, 254, 254, 254, 001, 001, 001, 001, 001, 003
	
	
	backgroundRed 	db 224, 223, 245, 232, 230, 114, 000, 040, 001, 110, 255, 013, 176, 123, 000, 238, 148, 185, 165, 149, 001
	backgroundGreen db 224, 234, 232, 241, 225, 114, 106, 131, 037, 000, 172, 173, 043, 221, 000, 145, 186, 233, 147, 231, 000
	backgroundBlue 	db 224, 240, 224, 222, 245, 114, 132, 002, 133, 044, 052, 249, 255, 011, 000, 202, 233, 150, 239, 218, 001
	
	;candy colors, changed every 10 points 3 times
				   ;orange 		;blue		;purple
	candyColor1 db 225,108,000, 024,128,246, 227,046,142
	candyColor2 db 255,135,008, 046,169,253, 234,068,179
	candyColor3 db 249,162,047, 093,207,252, 244,124,224
	candyColor4 db 247,187,049, 107,225,254, 247,146,225
	
	
		; Rectangle Section
	
	rectangleX dw 0 ; rectangle X cordinate
	rectangleY dw 0 ; rectangle Y cordinate
	rWidth dw 0 ; rectangle width
	rHeight dw 0 ; rectangle height
	color db 0 ; rectangle color
	
	
		; Sprite Section
	
	sprY dw 0 ; sprite Y cordinate
	sprX dw 0 ; sprite X cordinate
	sprPos dw 0 ; sprite absolute position (sprY*320+sprX)
	sprWidth dw 0 ;sprite width
	sprHeight dw 0 ;sprite height
	sprOffset dw 0 ;spr's offset in the data memory
	keepSquare db 256 dup (?) ; keep square to not delete anything on the screen when moving the sprite
	PIXELS equ 374 ;width*height*2 (spr+spr's offset)
	
	
		; Player Section
	
	velocityY dw JUMP_FORCE ; used to dynamicly simulate the sprite's Y axis movement
	velocityX dw SPEED ; X axis movement speed, positive = moving right, negative = moving left, absolute velocityX increases every 2 levels until MAX_LEVEL
	dead dw 0 ; for dying handling
	rotated db 0 ; boolean - used for handling post rotation
	won db 0 ; boolean - set when winning (score = 255), used for winning handling in updateScore and endScreen
	SPEED equ 6 ; starting speed
	JUMP_FORCE equ -7 ; jumping force, moves to velocityY when jumping
	
	
		; Candy Section
	
	candyX dw 0 ;next candy X cord
	oldCandyX dw 0 ; previous candy X cord, for returnCandy
	oldCandyY dw 0 ; previous candy Y cord, for returnCandy
	candyScore dw 0 ; amount of candies adchieved
	candyPlaced db 0 ; Bool - if there currently is a candy placed
	candyLevel dw 0 ;0-orange, 3-blue, 6-purple , increases by 3 every 10 points 3 times
	currentCandyLevel dw 0 ;updated candyLevel, for candyScore handling in checkCandy, updated in setCandyColors
	
	
		; input Section
	
	ESCAPE equ 1bh ; ascii for escape
	SPACE equ 20h ; ascii for space
	ENTERKEY equ 0Dh ; ascii for enter
	BACKSPACE equ 8h ; ascii for backspace
	
	
		; Clock Section
		
	Clock equ es:6Ch
	saveClock dw 0
	
	
CODESEG

;import proc files
include "procs.asm"
include "imagePrc.asm"

start:
	; set data and extra segments
	mov ax, @data
	mov ds, ax
	mov es, ax
	call loadData ; get stats and buffers

	mov ax, 40h 
	mov es, ax
	
; --------------------------
; 	main code starts here
; --------------------------

	; handle start
	graphicMode
	startVariables ;restart the program's variables - constructor
	startScreen
	
	; handle start input
waitForSpace:
	waitForKey
	
	cmp al, ESCAPE
		je exit
	
	cmp al, 'l'
		je leaderBoard
	
	cmp al, SPACE ; when space's pressed, start game
		jne waitForSpace
	
	; handle start game
	call displayImage ; to delete start infos
	setCandyColors
	startSpikes
	drawBird ; to set keepSquare
	
	mov [sprOffset], offset birdRightUp	;because velocityY starts negative (up), bird starts up
	call returnSqr ; delete sprite
	call updateScore ; display 00 score
	drawBird ; draw back the bird
	
	cmp [gamesPlayed], 255 ; limit gamesPlayed data to 1 byte so it wouldnt overflow
		je playedTooMuchGames ; byte limitation
	inc [gamesPlayed]
	
playedTooMuchGames:
	movWVars saveClock Clock ; save clock
		
mainLoop:
	mov ax, [saveClock]
    cmp ax, [Clock]         ; check for change
		je checkInput
    movWVars saveClock Clock	     ; keep the new clock
	
	;jmp to process every 1 tick
	jmp process

checkInput:
	
	checkKey ; check if there is a pressed key
		jz mainLoop ; if not, go back to mainLoop
		
	waitForKey ; if there is, input it to al
	
	cmp al, ESCAPE ;if its esc, exit program
		je exit
	
	cmp al, SPACE ; if its space, jump
		je jump
	
	jmp mainLoop ; if its neither, go back to mainLoop


process: ; process, controlls movement, score, death, and ect
	call returnSqr ; delete previous sprite
	
	inc [velocityY] ; gravity
		jnz dontMakeDown ; if velocityY's negative so bird is up, so if it goes back to being positive, then transform bird to down
	
	sub [sprOffset], PIXELS ; from sprite up to sprite down
	
dontMakeDown:
	cmp [rotated], 0 ; handle post rotation
		je notRotated
		
	mov [rotated], 0
	inc [score]
	call updateScore ; handle score change
	eraseSpikes ; delete spikes frame after rotation, for spike detection in anding
	
notRotated:

	addWVars sprX, velocityX ; move bird horizontaly
	addWVars sprY velocityY ; mov the bird vertically
	call checkWall ; check if encountered a wall, if so, handle bird rotation and set [rotated]
	drawBird ; draw bird on screen and set [dead] if encountered a spike while drawing bird
	checkDead ; handle death if [dead] is set
	
	jmp checkInput

jump: 	
	cmp [velocityY], 0 
		jl alreadyUp ; if velocityY's negative then sprite is already up so skip next line
		
	add [sprOffset], PIXELS ;from sprite down to sprite up
	
alreadyUp:
	mov [velocityY], JUMP_FORCE ; change velocityY to jumping state
	
	jmp checkInput

leaderBoard: ;handles leaderBoard and accounts
	mov ax, @Data
	mov es, ax ; set es to @Data
	
	call displayImage 
	;draw leaderBoard rectangle 70X120
	leaderBoardRectangle

	printLeaderBoard ; display the players in the leaderBoard + their bestScore
	
	movCursor 6, 21
	mov al, [accountsBuffer] ; check if a new account would overflow a byte
	add al, NAME_LENGTH+5 ; name+$ + 3 data + 2 error margin
		jc tooManyAccounts
	;if it wouldnt overflow:
	;print instuction for adding/switching account
	movCursor 6, 21
	print pressNForAccountMsg
	mov [tooManyAccountsVar], 0
	
	jmp notTooManyAccounts

tooManyAccounts: ; if it would overflow
	;if there isnt enough space for a new account, dont allow making new ones
	movCursor 4, 21
	print tooManyAccountsMsg ; indicate to the player that he cannot make new accounts until cleared
	mov [tooManyAccountsVar], 1 ; handle too many accounts in addAccount
	
notTooManyAccounts:
	;print instuction for clearing accounts
	movCursor 6, 22
	print pressCToClearMsg

	;print instuction for going back to menu
	movCursor 7, 4
	print pressLForMenuMsg
	
	;print current account 
	movCursor 14, 19
	mov bl, [accountsBuffer+1]
	xor bh,bh
	printOffset accountsBuffer, bx
	
	;print bestScore
	movCursor 24, 19
	mov ax, [bestScore] 
	call printNumber

waitForAccountAdd: ; handle input
	waitForKey
	
	cmp al, SPACE
		je start
		
	cmp al, ESCAPE
		je exit
		
	cmp al, 'l'
		je start
		
	cmp al, 'c'
		je clearAccounts
	
	cmp al, 'n'
		jne waitForAccountAdd
	;add/change account
	
	jmp addAccountLabel
	
	; set [clear] for clearing all accounts handling
clearAccounts: ; if C's pressed, set [clear], handle clearing in addAccount
	mov [clear], 1
	leaderBoardRectangle ; delete leaderBoard display
	
addAccountLabel:
	eraseFooterInstuction ; erase instuction
	movCursor 8, 21
	print typeAccountMsg ; print new instuction
	
	movCursor 3 ,22
	print accountLimitsMsg ; print name limitations
	
	call addAccount ; input & add/locate account
	
	jmp leaderBoard
	
exit:
	textMode
	mov ax, 4c00h
	int 21h
END start


