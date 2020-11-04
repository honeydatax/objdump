#gcc -c -O debug.c -o debug.o
#as array.S -o array.o
#gcc array.o debug.o -array
#./graphics.o
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	_start, %function
	
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov     r7,#0
	mov     r6,#0
for1:
	bl	function1
for11:
	add     r6,#4
	add     r7,#1
	cmp	r7,#16
	ble	for1

exit:
	mov	r7, #1
	swi	#0
	bx	lr

function1:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr 	r8,.L7	
	ldr 	r0,[r8,r6]
	and 	r0,255
	bl	putst
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	bx	lr

.L7: 	.word	.L6
.L6:    .word 1,3,5,7,9,11,13,15,17,19,21,23,25,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.L4:
	.align	2
.L3:
	.word	.L5
.L5:
	.asciz "\033[0;30;44mhello world\n\000"
	.word	0
	.section	.note.GNU-stack,"",%progbits
