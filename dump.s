#include <stdio.h>

void main(){
printf("hello world");
}


#ARM out***************************************************************************
#  objdump -S out > hello.s


out:     file format elf32-littlearm


Disassembly of section .init:

000102c8 <_init>:
   102c8:	e92d4008 	push	{r3, lr}
   102cc:	eb000020 	bl	10354 <call_weak_fn>
   102d0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000102d4 <.plt>:
   102d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   102d8:	e59fe004 	ldr	lr, [pc, #4]	; 102e4 <.plt+0x10>
   102dc:	e08fe00e 	add	lr, pc, lr
   102e0:	e5bef008 	ldr	pc, [lr, #8]!
   102e4:	00010d1c 	.word	0x00010d1c

000102e8 <printf@plt>:
   102e8:	e28fc600 	add	ip, pc, #0, 12
   102ec:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102f0:	e5bcfd1c 	ldr	pc, [ip, #3356]!	; 0xd1c

000102f4 <__libc_start_main@plt>:
   102f4:	e28fc600 	add	ip, pc, #0, 12
   102f8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102fc:	e5bcfd14 	ldr	pc, [ip, #3348]!	; 0xd14

00010300 <__gmon_start__@plt>:
   10300:	e28fc600 	add	ip, pc, #0, 12
   10304:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10308:	e5bcfd0c 	ldr	pc, [ip, #3340]!	; 0xd0c

0001030c <abort@plt>:
   1030c:	e28fc600 	add	ip, pc, #0, 12
   10310:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10314:	e5bcfd04 	ldr	pc, [ip, #3332]!	; 0xd04

Disassembly of section .text:

00010318 <_start>:
   10318:	e3a0b000 	mov	fp, #0
   1031c:	e3a0e000 	mov	lr, #0
   10320:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10324:	e1a0200d 	mov	r2, sp
   10328:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1032c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10330:	e59fc010 	ldr	ip, [pc, #16]	; 10348 <_start+0x30>
   10334:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10338:	e59f000c 	ldr	r0, [pc, #12]	; 1034c <_start+0x34>
   1033c:	e59f300c 	ldr	r3, [pc, #12]	; 10350 <_start+0x38>
   10340:	ebffffeb 	bl	102f4 <__libc_start_main@plt>
   10344:	ebfffff0 	bl	1030c <abort@plt>
   10348:	000104bc 	.word	0x000104bc
   1034c:	00010440 	.word	0x00010440
   10350:	0001045c 	.word	0x0001045c

00010354 <call_weak_fn>:
   10354:	e59f3014 	ldr	r3, [pc, #20]	; 10370 <call_weak_fn+0x1c>
   10358:	e59f2014 	ldr	r2, [pc, #20]	; 10374 <call_weak_fn+0x20>
   1035c:	e08f3003 	add	r3, pc, r3
   10360:	e7932002 	ldr	r2, [r3, r2]
   10364:	e3520000 	cmp	r2, #0
   10368:	012fff1e 	bxeq	lr
   1036c:	eaffffe3 	b	10300 <__gmon_start__@plt>
   10370:	00010c9c 	.word	0x00010c9c
   10374:	0000001c 	.word	0x0000001c

00010378 <deregister_tm_clones>:
   10378:	e59f301c 	ldr	r3, [pc, #28]	; 1039c <deregister_tm_clones+0x24>
   1037c:	e59f001c 	ldr	r0, [pc, #28]	; 103a0 <deregister_tm_clones+0x28>
   10380:	e0433000 	sub	r3, r3, r0
   10384:	e3530006 	cmp	r3, #6
   10388:	912fff1e 	bxls	lr
   1038c:	e59f3010 	ldr	r3, [pc, #16]	; 103a4 <deregister_tm_clones+0x2c>
   10390:	e3530000 	cmp	r3, #0
   10394:	012fff1e 	bxeq	lr
   10398:	e12fff13 	bx	r3
   1039c:	0002102b 	.word	0x0002102b
   103a0:	00021028 	.word	0x00021028
   103a4:	00000000 	.word	0x00000000

000103a8 <register_tm_clones>:
   103a8:	e59f1024 	ldr	r1, [pc, #36]	; 103d4 <register_tm_clones+0x2c>
   103ac:	e59f0024 	ldr	r0, [pc, #36]	; 103d8 <register_tm_clones+0x30>
   103b0:	e0411000 	sub	r1, r1, r0
   103b4:	e1a01141 	asr	r1, r1, #2
   103b8:	e0811fa1 	add	r1, r1, r1, lsr #31
   103bc:	e1b010c1 	asrs	r1, r1, #1
   103c0:	012fff1e 	bxeq	lr
   103c4:	e59f3010 	ldr	r3, [pc, #16]	; 103dc <register_tm_clones+0x34>
   103c8:	e3530000 	cmp	r3, #0
   103cc:	012fff1e 	bxeq	lr
   103d0:	e12fff13 	bx	r3
   103d4:	00021028 	.word	0x00021028
   103d8:	00021028 	.word	0x00021028
   103dc:	00000000 	.word	0x00000000

000103e0 <__do_global_dtors_aux>:
   103e0:	e92d4010 	push	{r4, lr}
   103e4:	e59f4018 	ldr	r4, [pc, #24]	; 10404 <__do_global_dtors_aux+0x24>
   103e8:	e5d43000 	ldrb	r3, [r4]
   103ec:	e3530000 	cmp	r3, #0
   103f0:	18bd8010 	popne	{r4, pc}
   103f4:	ebffffdf 	bl	10378 <deregister_tm_clones>
   103f8:	e3a03001 	mov	r3, #1
   103fc:	e5c43000 	strb	r3, [r4]
   10400:	e8bd8010 	pop	{r4, pc}
   10404:	00021028 	.word	0x00021028

00010408 <frame_dummy>:
   10408:	e59f0028 	ldr	r0, [pc, #40]	; 10438 <frame_dummy+0x30>
   1040c:	e5903000 	ldr	r3, [r0]
   10410:	e3530000 	cmp	r3, #0
   10414:	1a000000 	bne	1041c <frame_dummy+0x14>
   10418:	eaffffe2 	b	103a8 <register_tm_clones>
   1041c:	e59f3018 	ldr	r3, [pc, #24]	; 1043c <frame_dummy+0x34>
   10420:	e3530000 	cmp	r3, #0
   10424:	0afffffb 	beq	10418 <frame_dummy+0x10>
   10428:	e92d4010 	push	{r4, lr}
   1042c:	e12fff33 	blx	r3
   10430:	e8bd4010 	pop	{r4, lr}
   10434:	eaffffdb 	b	103a8 <register_tm_clones>
   10438:	00020f14 	.word	0x00020f14
   1043c:	00000000 	.word	0x00000000

00010440 <main>:
   10440:	e92d4800 	push	{fp, lr}
   10444:	e28db004 	add	fp, sp, #4
   10448:	e59f0008 	ldr	r0, [pc, #8]	; 10458 <main+0x18>
   1044c:	ebffffa5 	bl	102e8 <printf@plt>
   10450:	e1a00000 	nop			; (mov r0, r0)
   10454:	e8bd8800 	pop	{fp, pc}
   10458:	000104cc 	.word	0x000104cc

0001045c <__libc_csu_init>:
   1045c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10460:	e1a07000 	mov	r7, r0
   10464:	e59f6048 	ldr	r6, [pc, #72]	; 104b4 <__libc_csu_init+0x58>
   10468:	e59f5048 	ldr	r5, [pc, #72]	; 104b8 <__libc_csu_init+0x5c>
   1046c:	e08f6006 	add	r6, pc, r6
   10470:	e08f5005 	add	r5, pc, r5
   10474:	e0466005 	sub	r6, r6, r5
   10478:	e1a08001 	mov	r8, r1
   1047c:	e1a09002 	mov	r9, r2
   10480:	ebffff90 	bl	102c8 <_init>
   10484:	e1b06146 	asrs	r6, r6, #2
   10488:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   1048c:	e3a04000 	mov	r4, #0
   10490:	e2844001 	add	r4, r4, #1
   10494:	e4953004 	ldr	r3, [r5], #4
   10498:	e1a02009 	mov	r2, r9
   1049c:	e1a01008 	mov	r1, r8
   104a0:	e1a00007 	mov	r0, r7
   104a4:	e12fff33 	blx	r3
   104a8:	e1560004 	cmp	r6, r4
   104ac:	1afffff7 	bne	10490 <__libc_csu_init+0x34>
   104b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   104b4:	00010a9c 	.word	0x00010a9c
   104b8:	00010a94 	.word	0x00010a94

000104bc <__libc_csu_fini>:
   104bc:	e12fff1e 	bx	lr

Disassembly of section .fini:

000104c0 <_fini>:
   104c0:	e92d4008 	push	{r3, lr}
   104c4:	e8bd8008 	pop	{r3, pc}
