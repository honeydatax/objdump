#as array.S -o array.o
#ld array.o -o array
#./array
	.data
counter:    .word   0
.L6:    .word   13,11,9,7,5,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.L4:
	.align	2
.L5:
	.asciz "\033[0;30;40m \033[0;30;46m             \n                                    \000"
	.word	0
	.section	.note.GNU-stack,"",%progbits

	.text
	.align	2
	.global	_start
	.syntax unified
	.arm
	.fpu vfp
	.type	_start, %function
	

_start:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
for1:
	bl	function1
for11:
	ldr 	r1,.L8
	ldr	r0,[r1]
	add     r0,#1
	str	r0,[r1]
	cmp	r0,#16
	ble	for1


exit:
	sub	sp, fp, #4
	mov	r7, #1
	swi	#0
	bx	lr

function1:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	bl	printss
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
printss:
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	add	sp, #16
	mov 	r0, #1
	ldr 	r1, .L3
	mov 	r2, #40
	mov 	r7, #4
	swi	#0
	sub	sp, #16
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr



.L8:    .word   counter
.L7: 	.word	.L6
.L3:	.word	.L5
