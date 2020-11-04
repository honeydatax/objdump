#as graphics.S -o graphics
#ld graphics -o graphics.o
#./graphics.o
	.text
	.align	2
	.global	_start
	.syntax unified
	.arm
	.fpu vfp
	.type	_start, %function
	
_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov 	r0, #1
	ldr 	r1, .L3
	mov 	r2, #255
	mov 	r7, #4
	swi	#0
exit:
	mov	r7, #1
	swi	#0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.L5
.L5:
	.asciz "\n\n\n\033[0;31;40m          \033[0;30;44m \033[0;30;40m\n         \033[0;30;41m   \033[0;30;40m\n        \033[0;30;42m     \033[0;30;40m\n       \033[0;30;43m       \033[0;30;40m\n     \033[0;30;45m          \033[0;30;40m\n    \033[0;30;46m            \033[0;30;40m\n\000"
	.word	0
	.size	_start, .-_start
	.section	.note.GNU-stack,"",%progbits
