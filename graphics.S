#as graphics.S -o graphics
#ld graphics -o graphics.o
#./graphics.o
	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.align	2
	.global	_start
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
	
_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov 	r0, #1
	ldr 	r1, .L3
	mov 	r2, #24
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
	.asciz "\033[0;30;44m                                    \n\r\000"
	.word	0
	.size	_start, .-_start
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
