;input: image location in fileName, width in picWidth, Height in picHeight, leftGap, topGap
;output: display the image at the location
proc displayImage
	push es
	openFile mainScreen 0 ; open screen BMP in read mode
	readFromFile 54 Header ; Read BMP file header, 54 bytes
	readFromFile 400H, palette ; Read BMP file color palette, 256 ; colors * 4 bytes (400h)
	call CopyPal ; Copies the colors palette from the BMP to the memory 
	call CopyBitmap ; copies the BMP bitmap to the video memory segment
	closeFile fileHandle
	pop es
	ret	
endp displayImage

proc CopyPal
; Copy the colors palette to the video memory registers 
; The number of the first color should be sent to port 3C8h
; The palette is sent to port 3C9h
	mov si,offset Palette 
	mov cx,256 
	mov dx,3C8h
	mov al,0 
	; Copy starting color to port 3C8h
	out dx,al
	; Copy palette itself to port 3C9h
	inc dx 

PalLoop:
; Note: Colors in a BMP file are saved as BGR values rather than RGB.
	mov al,[si+2] 	; Get red value.
	shr al,2 		; Max. is 255, but video palette maximal
 ; value is 63. Therefore dividing by 4.
	out dx,al		 ; Send it.
	mov al,[si+1] 	; Get green value.
	shr al,2
	out dx,al 		; Send it.
	mov al,[si] 	; Get blue value.
	shr al,2
	out dx,al 		; Send it.
	add si,4		 ; Point to next color.
 ; (There is a null chr. after every color.)
	loop PalLoop
	ret
endp CopyPal

proc CopyBitmap
	; BMP graphics are saved upside-down.
	; Read the graphic line by line (200 lines in VGA format),
	; displaying the lines from bottom to top.
	
	mov ax, 0A000h
	mov es, ax
	mov bx, [fileHandle]
	mov cx, [picHeight] 
	PrintBMPLoop:
	push cx
	; di = cx*320, point to the correct screen line
	mov di,cx 
	shl cx,6 
	shl di,8 
	add di,cx
	; ----------------------------------------------------------
	 add di, [leftGap]
	 add di, [topGap]
	; ----------------------------------------------------------

	; Read one line
	mov ah,3fh
	mov cx, [picWidth]
	mov dx,offset ScrLine
	int 21h 
	; Copy one line into video memory
	cld 		; Clear direction flag, for movsb
	mov cx,320
	mov si,offset ScrLine
	rep movsb 	; Copy line to the screen
	pop cx
	loop PrintBMPLoop
	ret
endp CopyBitmap


	

	
	