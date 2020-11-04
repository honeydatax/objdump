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
	mov     r3,#0
for1:
	mov 	r0, #1
	ldr 	r1, .L3
	mov 	r2, #24
	mov 	r7, #4
	swi	#0
for11:
	add     r3,#1
	cmp	r3,#16
	ble	for1

exit:
	mov	r7, #1
	swi	#0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.L5
.L5:
	.asciz "\033[0;30;44mhello world\n\000"
	.word	0
	.size	_start, .-_start
	.section	.note.GNU-stack,"",%progbits
