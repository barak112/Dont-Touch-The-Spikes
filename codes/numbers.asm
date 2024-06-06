;numbers used for displaying the score at the middle of the screen

;30X38
	zero			db ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci
					db ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci
					db ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci


					
					

;30X39
	one				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci

					
					
	;30X38		
	two 			db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci

					
	;30X38
	three			db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
 					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
 					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
 					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					
	 
	 
	 
	four			db ci,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
		 			db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
		 			db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,ci

					

	five			db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
	 
	 
	 
	 
	 
	 
	six 			db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
	 
	 
	 
	 
	seven	 		db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,ci


					
	 
	eight			db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci
					db ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
	 
	 
	 
	nine			db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,ci,bg,bg,bg,bg,bg,bg,bg,bg,bg
	 				db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci
					db ci,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,bg,ci,ci,ci

	