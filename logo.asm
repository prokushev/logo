;
; This is stub for Windows 1.01 logo
; Supported up to Win 3.xx (May be Win9x too? need to check) 
;

.8086
			include	video.inc
code			segment
			org	0h

			db	'LOGO'
			jmp	near ptr Init
			jmp	near ptr Done
CurrentVideoMode	db	?
Done:			SetMode	[CurrentVideoMode]
			ret
;--------------------------------------------------------
DeadSpace:		
Init:			GetMode
		        mov     [CurrentVideoMode],al
			lea	dx, Hello
			mov	ah,09H
			int	21H
			lea	ax, DeadSpace
			ret
Hello			db	10,13,"Windows loading...$"
code			ends
			end
