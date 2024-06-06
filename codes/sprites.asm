	
	;mask
	wh equ 0ffh	;31,31,31
	
	;outline and text background
	outline equ 0 
	
	;bird
	r1 equ 1 	;31,10,11
	r2 equ 2	;28,8,8
	
	y1 equ 3	;28,28,0
	y2 equ 4	;28,24,0
	pl equ 5	;24,0,8
	
	;dead bird
	dg equ 6 	;2,2,2
	g1 equ 7 	;11,11,11
	g2 equ 8 	;10,10,10
	
	;candy
	c1 equ 9
	c2 equ 10
	c3 equ 11
	c4 equ 12
	
	;spike, same color as outline
	sk equ 13
	
	;circle, numbers' background	
	ci equ 14 ;31,31,31
	
	;background, text foreground and numbers foreground
	bg equ 15
	
	
	;bird, Right, 17X11
	birdRightDown 	db 00,00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00,00
					db 00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00
					db 00,00,00,r1,r1,r1,r1,r1,r1,r1,wh,wh,r1,r1,y1,00,00
					db r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,wh,wh,r1,r1,y1,y1,00
					db 00,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,y1,y1,y1
					db 00,00,r1,r1,r1,pl,pl,pl,pl,pl,r2,r2,r2,r2,y2,y2,y2
					db 00,00,00,r1,r1,pl,pl,pl,pl,r2,r2,r2,r2,r2,y2,y2,00
					db 00,00,00,r2,r1,pl,pl,pl,r2,r2,r2,r2,r2,r2,y2,00,00
					db 00,00,00,r2,r1,pl,pl,r2,r2,r2,r2,r2,r2,r2,00,00,00
					db 00,00,00,r2,r2,pl,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00
					db 00,00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00,00
					
	
birdRightDownMask 	db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
		
		
	;bird, Left, Up, 17X11
	
	birdRightUp 	db 00,00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00,00
					db 00,00,00,r1,r1,pl,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00
					db 00,00,00,r1,r1,pl,pl,r1,r1,r1,wh,wh,r1,r1,y1,y1,y1
					db r1,r1,r1,r1,r1,pl,pl,pl,r1,r1,wh,wh,r1,r1,y1,y1,00
					db 00,r1,r1,r1,r1,pl,pl,pl,pl,r1,r1,r1,r1,r1,y1,00,00
					db 00,00,r1,r1,r1,pl,pl,pl,pl,pl,r2,r2,r2,r2,y2,00,00
					db 00,00,00,r1,r1,r2,r2,r2,r2,r2,r2,r2,r2,r2,y2,y2,00
					db 00,00,00,r2,r1,r2,r2,r2,r2,r2,r2,r2,r2,r2,y2,y2,y2
					db 00,00,00,r2,r1,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00
					db 00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00
					db 00,00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00,00
	
	birdRightUpMask db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh				
	
	
	;bird, Left, Down, 17X11
	
	birdLeftDown	db 00,00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00,00
					db 00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00
					db 00,00,y1,r1,r1,wh,wh,r1,r1,r1,r1,r1,r1,r1,00,00,00
					db 00,y1,y1,r1,r1,wh,wh,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1
					db y1,y1,y1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,r1,00
					db y2,y2,y2,r2,r2,r2,r2,pl,pl,pl,pl,pl,r1,r1,r1,00,00
					db 00,y2,y2,r2,r2,r2,r2,r2,pl,pl,pl,pl,r1,r1,00,00,00
					db 00,00,y2,r2,r2,r2,r2,r2,r2,pl,pl,pl,r1,r2,00,00,00
					db 00,00,00,r2,r2,r2,r2,r2,r2,r2,pl,pl,r1,r2,00,00,00
					db 00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,pl,r2,r2,00,00,00
					db 00,00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00,00
	
	birdLeftMask 	db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
	
	
	;bird, Left, Up, 17X11
	
	birdLeftUp		db 00,00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,r1,00,00,00,00
					db 00,00,00,r1,r1,r1,r1,r1,r1,r1,r1,pl,r1,r1,00,00,00
					db y1,y1,y1,r1,r1,wh,wh,r1,r1,r1,pl,pl,r1,r1,00,00,00
					db 00,y1,y1,r1,r1,wh,wh,r1,r1,pl,pl,pl,r1,r1,r1,r1,r1
					db 00,00,y1,r1,r1,r1,r1,r1,pl,pl,pl,pl,r1,r1,r1,r1,00
					db 00,00,y2,r2,r2,r2,r2,pl,pl,pl,pl,pl,r1,r1,r1,00,00
					db 00,y2,y2,r2,r2,r2,r2,r2,r2,r2,r2,r2,r1,r1,00,00,00
					db y2,y2,y2,r2,r2,r2,r2,r2,r2,r2,r2,r2,r1,r2,00,00,00
					db 00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,r1,r2,00,00,00
					db 00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00
					db 00,00,00,00,r2,r2,r2,r2,r2,r2,r2,r2,r2,00,00,00,00
	
	birdLeftUpMask 	db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
	
	
	;Bird, dead, Right, up, 17X11
	
	birdDeadRight 	db 00,00,00,00,g1,g1,g1,g1,g1,g1,g1,g1,g1,00,00,00,00
					db 00,00,00,g1,g1,dg,g1,g1,g1,wh,g1,wh,g1,g1,00,00,00
					db 00,00,00,g1,g1,dg,dg,g1,g1,g1,wh,g1,g1,g1,y1,y1,y1
					db g1,g1,g1,g1,g1,dg,dg,dg,g1,wh,g1,wh,g1,g1,y1,y1,00
					db 00,g1,g1,g1,g1,dg,dg,dg,dg,g1,g1,g1,g1,g1,y1,00,00
					db 00,00,g1,g1,g1,dg,dg,dg,dg,dg,g2,g2,g2,g2,y2,00,00
					db 00,00,00,g1,g1,g2,g2,g2,g2,g2,g2,g2,g2,g2,y2,y2,00
					db 00,00,00,g2,g1,g2,g2,g2,g2,g2,g2,g2,g2,g2,y2,y2,y2
					db 00,00,00,g2,g1,g2,g2,g2,g2,g2,g2,g2,g2,g2,00,00,00
					db 00,00,00,g2,g2,g2,g2,g2,g2,g2,g2,g2,g2,g2,00,00,00
					db 00,00,00,00,g2,g2,g2,g2,g2,g2,g2,g2,g2,00,00,00,00
					
birdDeadRightMask   db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh	

					
	;Bird, dead, Left, up, 17X11

	birdDeadLeft	db 00,00,00,00,g1,g1,g1,g1,g1,g1,g1,g1,g1,00,00,00,00
					db 00,00,00,g1,wh,g1,wh,g1,g1,g1,g1,dg,g1,g1,00,00,00
					db y1,y1,y1,g1,g1,wh,g1,g1,g1,g1,dg,dg,g1,g1,00,00,00
					db 00,y1,y1,g1,wh,g1,wh,g1,g1,dg,dg,dg,g1,g1,g1,g1,g1
					db 00,00,y1,g1,g1,g1,g1,g1,dg,dg,dg,dg,g1,g1,g1,g1,00
					db 00,00,y2,g2,g2,g2,g2,dg,dg,dg,dg,dg,g1,g1,g1,00,00
					db 00,y2,y2,g2,g2,g2,g2,g2,g2,g2,g2,g2,g1,g1,00,00,00
					db y2,y2,y2,g2,g2,g2,g2,g2,g2,g2,g2,g2,g1,g2,00,00,00
					db 00,00,00,g2,g2,g2,g2,g2,g2,g2,g2,g2,g1,g2,00,00,00
					db 00,00,00,g2,g2,g2,g2,g2,g2,g2,g2,g2,g2,g2,00,00,00
					db 00,00,00,00,g2,g2,g2,g2,g2,g2,g2,g2,g2,00,00,00,00			

birdDeadLeftMask 	db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh
					db wh,wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh
					db wh,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,00,00,00,00,00,00,00,00,00,00,00,wh,wh,wh
					db wh,wh,wh,wh,00,00,00,00,00,00,00,00,00,wh,wh,wh,wh
					
					
		; candy 17x11
		
		candy 		db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db c3,bg,bg,bg,bg,bg,c2,c2,c2,c2,c2,bg,bg,bg,bg,bg,c3
					db c4,c3,bg,bg,bg,c2,c2,wh,c2,c2,c2,c2,bg,bg,bg,c3,c4
					db c4,c4,c3,bg,c2,c2,wh,c2,c2,c2,c2,c1,c1,bg,c3,c4,c4
					db c4,c4,c4,c3,c2,c2,c2,c2,c2,c2,c1,c1,c1,c3,c4,c4,c4
					db c4,c4,c4,c4,c2,c2,c2,c2,c1,c1,c1,c1,c1,c4,c4,c4,c4
					db c4,c4,c4,c3,c1,c1,c1,c1,c1,c1,c1,c1,c1,c3,c4,c4,c4
					db c4,c4,c3,bg,c1,c1,c1,c1,c1,c1,c1,c1,c1,bg,c3,c4,c4
					db c4,c3,bg,bg,bg,c1,c1,c1,c1,c1,c1,c1,bg,bg,bg,c3,c4
					db c3,bg,bg,bg,bg,bg,c1,c1,c1,c1,c1,bg,bg,bg,bg,bg,c3
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg


		infoCandy 	db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db c3,ci,ci,ci,ci,ci,c2,c2,c2,c2,c2,ci,ci,ci,ci,ci,c3
					db c4,c3,ci,ci,ci,c2,c2,wh,c2,c2,c2,c2,ci,ci,ci,c3,c4
					db c4,c4,c3,ci,c2,c2,wh,c2,c2,c2,c2,c1,c1,ci,c3,c4,c4
					db c4,c4,c4,c3,c2,c2,c2,c2,c2,c2,c1,c1,c1,c3,c4,c4,c4
					db c4,c4,c4,c4,c2,c2,c2,c2,c1,c1,c1,c1,c1,c4,c4,c4,c4
					db c4,c4,c4,c3,c1,c1,c1,c1,c1,c1,c1,c1,c1,c3,c4,c4,c4
					db c4,c4,c3,ci,c1,c1,c1,c1,c1,c1,c1,c1,c1,ci,c3,c4,c4
					db c4,c3,ci,ci,ci,c1,c1,c1,c1,c1,c1,c1,ci,ci,ci,c3,c4
					db c3,ci,ci,ci,ci,ci,c1,c1,c1,c1,c1,ci,ci,ci,ci,ci,c3
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					
		
	;11X6
	
	spikeUp			db sk,sk,sk,sk,sk,sk,sk,sk,sk,sk,sk
					db bg,sk,sk,sk,sk,sk,sk,sk,sk,sk,bg
					db bg,bg,sk,sk,sk,sk,sk,sk,sk,bg,bg
					db bg,bg,bg,sk,sk,sk,sk,sk,bg,bg,bg
					db bg,bg,bg,bg,sk,sk,sk,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,sk,bg,bg,bg,bg,bg


	;11X6		

	spikeDown 		db bg,bg,bg,bg,bg,sk,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,sk,sk,sk,bg,bg,bg,bg
					db bg,bg,bg,sk,sk,sk,sk,sk,bg,bg,bg
					db bg,bg,sk,sk,sk,sk,sk,sk,sk,bg,bg
					db bg,sk,sk,sk,sk,sk,sk,sk,sk,sk,bg
					db sk,sk,sk,sk,sk,sk,sk,sk,sk,sk,sk

					
	;6X11			

	spikeLeft		db sk,bg,bg,bg,bg,bg
					db sk,sk,bg,bg,bg,bg
					db sk,sk,sk,bg,bg,bg
					db sk,sk,sk,sk,bg,bg
					db sk,sk,sk,sk,sk,bg
					db sk,sk,sk,sk,sk,sk
					db sk,sk,sk,sk,sk,bg
					db sk,sk,sk,sk,bg,bg
					db sk,sk,sk,bg,bg,bg
					db sk,sk,bg,bg,bg,bg
					db sk,bg,bg,bg,bg,bg
					

	;6X11				

	spikeRight 		db bg,bg,bg,bg,bg,sk
					db bg,bg,bg,bg,sk,sk
					db bg,bg,bg,sk,sk,sk
					db bg,bg,sk,sk,sk,sk
					db bg,sk,sk,sk,sk,sk
					db sk,sk,sk,sk,sk,sk
					db bg,sk,sk,sk,sk,sk
					db bg,bg,sk,sk,sk,sk
					db bg,bg,bg,sk,sk,sk
					db bg,bg,bg,bg,sk,sk
					db bg,bg,bg,bg,bg,sk
					
					