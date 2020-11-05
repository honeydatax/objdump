#as array.S -o array.o
#ld array.o -o array
#./array
	.data
.c2:	.word   .cc
counter:    .word   0
.L6:    .word   13,11,9,7,5,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.L4:
	.align	2
.L5:
	.asciz "\033[0;30;40m        \033[0;30;46m \033[0;34;40m           *\n                                    \000"
	.word	0
.color1:
	.asciz "\033[0;30;40m        \033[0;30;41m \033[0;34;40m           *\n                                    \000"
	.word	0
.color2:
	.asciz "\033[0;30;40m       \033[0;30;42m   \033[0;34;40m          *\n                                    \000"
	.word	0
.color3:
	.asciz "\033[0;30;40m      \033[0;30;43m     \033[0;34;40m         *\n                                    \000"
	.word	0
.color4:
	.asciz "\033[0;30;40m     \033[0;30;44m       \033[0;34;40m        *\n                                    \000"
	.word	0
.color5:
	.asciz "\033[0;30;40m    \033[0;30;45m         \033[0;34;40m       *\n                                    \000"
	.word	0
.color6:
	.asciz "\033[0;30;40m   \033[0;30;46m           \033[0;34;40m      *\n                                    \000"
	.word	0
.color7:
	.asciz "\033[0;30;40m  \033[0;30;47m             \033[0;34;40m     *\n                                    \000"
	.word	0


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
	cmp	r0,#6
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
	ldr	r0,.c3
	ldr	r2,[r0]
	add	r2,#4
	str	r2,[r0]
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
printss:
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	add	sp, #16
	ldr 	r0,.c3
	ldr 	r1,[r0]
	ldr 	r0,[r1]
	mov 	r1,r0
	mov 	r0, #1
	mov 	r2, #52
	mov 	r7, #4
	swi	#0
	sub	sp, #16
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr



.c11:   .word   .color1
.c12:   .word   .color2
.c13:   .word   .color3
.c14:   .word   .color4
.c15:   .word   .color5
.c16:   .word   .color6
.c17:   .word   .color7
.cc:	.word   .color1,.color2,.color3,.color4,.color5,.color6,.color7,0,0,0,0,0,0,0
.c3:	.word   .c2
.L8:    .word   counter
.L7: 	.word	.L6
.L3:	.word	.L5
