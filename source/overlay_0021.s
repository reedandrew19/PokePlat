

.section .iwram21, "ax"


@ continue at Function_21d57b4


.thumb
Startpoint_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r1, #0x0
	mov     r5, r0
	mov     r0, #0x36
	mov     r2, r1
	bl      Function_2004550
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0x25
	lsl     r2, r2, #18
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x25
	bl      Function_200681c
	mov     r4, r0
	bne     branch_21d0dae
	bl      Function_2022974
branch_21d0dae: @ 21d0dae :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, #0x8
	mov     r1, #0x25
	bl      Function_201dbec
	mov     r0, r5
	bl      Function_2006840
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x68] @ 0x21d0e34, (=#0x1e7)
	mov     r2, #0x0
	bl      Function_202756c
	bl      Function_2098988
	ldr     r0, [pc, #0x60] @ 0x21d0e38, (=#Function_21d0f04+1)
	mov     r1, r4
	bl      Function_2017798
	bl      Function_20177a4
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	cmp     r0, #0x1
	beq     branch_21d0df4
	bl      Function_2022974
branch_21d0df4: @ 21d0df4 :thumb
	mov     r0, #0x25
	bl      Function_21d12b0
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x14]
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x1c]
	str     r0, [sp, #0x1c]
	mov     r0, #0x25
	bl      Function_21d0f60
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x2a
	bl      Function_200544c
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21d0e32

.align 2
.word 0x1e7 @ 0x21d0e34
.word Function_21d0f04+1 @ 0x21d0e38


.incbin "./baserom/overlay/overlay_0021.bin", 0xbc, 0x21d0f04 - 0x21d0e3c


.thumb
Function_21d0f04: @ 21d0f04 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0f10
	bl      Function_21d12d8
branch_21d0f10: @ 21d0f10 :thumb
	bl      Function_201dcac
	pop     {r3,pc}
@ 0x21d0f16


.incbin "./baserom/overlay/overlay_0021.bin", 0x196, 0x21d0f60 - 0x21d0f16


.thumb
Function_21d0f60: @ 21d0f60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r1
	ldr     r1, [pc, #0x11c] @ 0x21d1084, (=#0x1d10)
	mov     r7, r0
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d0f76
	bl      Function_2022974
branch_21d0f76: @ 21d0f76 :thumb
	ldr     r2, [pc, #0x10c] @ 0x21d1084, (=#0x1d10)
	mov     r0, r4
	mov     r1, #0x0
	blx     Function_20d5124
	str     r7, [r4, #0x4]
	ldr     r0, [r5, #0x1c]
	str     r0, [r4, #0x8]
	mov     r0, r7
	bl      Function_21d423c
	ldr     r1, [pc, #0xf8] @ 0x21d1088, (=#0x1a0c)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d423c
	ldr     r1, [pc, #0xf4] @ 0x21d108c, (=#0x1a10)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d423c
	ldr     r1, [pc, #0xec] @ 0x21d1090, (=#0x1a14)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d423c
	ldr     r1, [pc, #0xe8] @ 0x21d1094, (=#0x1a18)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d3fe0
	mov     r1, #0x1d
	lsl     r1, r1, #8
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d3fe0
	ldr     r1, [pc, #0xd4] @ 0x21d1098, (=#0x1d04)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d3fe0
	ldr     r1, [pc, #0xd0] @ 0x21d109c, (=#0x1d08)
	str     r0, [r4, r1]
	mov     r0, r7
	bl      Function_21d3fe0
	ldr     r1, [pc, #0xc8] @ 0x21d10a0, (=#0x1d0c)
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x8]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0xc]
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x14]
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x18]
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x1c]
	bl      Function_209ace4
	str     r0, [sp, #0x24]
	ldr     r0, [r5, #0x1c]
	bl      Function_209acec
	str     r0, [sp, #0x28]
	mov     r0, r4
	add     r0, #0xc
	add     r1, sp, #0x8
	mov     r2, r7
	bl      Function_21d3208
	ldr     r0, [pc, #0x90] @ 0x21d10a4, (=#0x177c)
	mov     r1, r7
	add     r0, r4, r0
	bl      Function_21d1fa4
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x21d10a8, (=#0x1a30)
	ldr     r5, [pc, #0x88] @ 0x21d10ac, (=Jumptable_21e9b74)
	add     r6, r4, r0
branch_21d1024: @ 21d1024 :thumb
	ldr     r3, [r5, #0x0]
	cmp     r3, #0x0
	beq     branch_21d1032
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	blx     r3
branch_21d1032: @ 21d1032 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x28
	str     r0, [sp, #0x4]
	cmp     r0, #0xa
	blt     branch_21d1024
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6f
	lsl     r0, r0, #6
	ldr     r5, [pc, #0x64] @ 0x21d10b0, (=Jumptable_21e9b34)
	add     r6, r4, r0
branch_21d104c: @ 21d104c :thumb
	ldr     r3, [r5, #0x0]
	cmp     r3, #0x0
	beq     branch_21d105a
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	blx     r3
branch_21d105a: @ 21d105a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x28
	str     r0, [sp, #0x0]
	cmp     r0, #0x8
	blt     branch_21d104c
	ldr     r1, [pc, #0x48] @ 0x21d10b4, (=#0x1a1c)
	mov     r0, r7
	add     r1, r4, r1
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_21d47f0
	mov     r0, r4
	bl      Function_21d1eec
	mov     r0, r4
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d1082

.align 2
.word 0x1d10 @ 0x21d1084
.word 0x1a0c @ 0x21d1088
.word 0x1a10 @ 0x21d108c
.word 0x1a14 @ 0x21d1090
.word 0x1a18 @ 0x21d1094
.word 0x1d04 @ 0x21d1098
.word 0x1d08 @ 0x21d109c
.word 0x1d0c @ 0x21d10a0
.word 0x177c @ 0x21d10a4
.word 0x1a30 @ 0x21d10a8
.word Jumptable_21e9b74 @ 0x21d10ac
.word Jumptable_21e9b34 @ 0x21d10b0
.word 0x1a1c @ 0x21d10b4


.incbin "./baserom/overlay/overlay_0021.bin", 0x338, 0x21d12b0 - 0x21d10b8


.thumb
Function_21d12b0: @ 21d12b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1e74
	mov     r0, r4
	bl      Function_21d1e94
	bl      Function_21d1f10
	pop     {r4,pc}
@ 0x21d12c4


.incbin "./baserom/overlay/overlay_0021.bin", 0x544, 0x21d12d8 - 0x21d12c4


.thumb
Function_21d12d8: @ 21d12d8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x21d12e8, (=#0x177c)
	add     r0, r0, r1
	bl      Function_21d214c
	bl      Function_200a858
	pop     {r3,pc}
@ 0x21d12e8

.word 0x177c @ 0x21d12e8



.thumb
Function_21d12ec: @ 21d12ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d12f6
	bl      Function_2022974
branch_21d12f6: @ 21d12f6 :thumb
	mov     r0, #0x1d
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d12fe


.align 2, 0
.thumb
Function_21d1300: @ 21d1300 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d130a
	bl      Function_2022974
branch_21d130a: @ 21d130a :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1310, (=#0x1d04)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1310

.word 0x1d04 @ 0x21d1310



.thumb
Function_21d1314: @ 21d1314 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d131e
	bl      Function_2022974
branch_21d131e: @ 21d131e :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1324, (=#0x1d08)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1324

.word 0x1d08 @ 0x21d1324



.thumb
Function_21d1328: @ 21d1328 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d1332
	bl      Function_2022974
branch_21d1332: @ 21d1332 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1338, (=#0x1d0c)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1338

.word 0x1d0c @ 0x21d1338



.thumb
Function_21d133c: @ 21d133c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d1346
	bl      Function_2022974
branch_21d1346: @ 21d1346 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d134c, (=#0x1a0c)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d134c

.word 0x1a0c @ 0x21d134c



.thumb
Function_21d1350: @ 21d1350 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d135a
	bl      Function_2022974
branch_21d135a: @ 21d135a :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1360, (=#0x1a10)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1360

.word 0x1a10 @ 0x21d1360



.thumb
Function_21d1364: @ 21d1364 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d136e
	bl      Function_2022974
branch_21d136e: @ 21d136e :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1374, (=#0x1a14)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1374

.word 0x1a14 @ 0x21d1374



.thumb
Function_21d1378: @ 21d1378 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d1382
	bl      Function_2022974
branch_21d1382: @ 21d1382 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1388, (=#0x1a18)
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1388

.word 0x1a18 @ 0x21d1388



.thumb
Function_21d138c: @ 21d138c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d1396
	bl      Function_2022974
branch_21d1396: @ 21d1396 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d139c, (=#0x19fc)
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x21d139c

.word 0x19fc @ 0x21d139c



.thumb
Function_21d13a0: @ 21d13a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d13aa
	bl      Function_2022974
branch_21d13aa: @ 21d13aa :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #8
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x21d13b2


.align 2, 0
.thumb
Function_21d13b4: @ 21d13b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d13be
	bl      Function_2022974
branch_21d13be: @ 21d13be :thumb
	ldr     r0, [pc, #0x4] @ 0x21d13c4, (=#0x1a04)
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x21d13c4

.word 0x1a04 @ 0x21d13c4



.thumb
Function_21d13c8: @ 21d13c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d13d2
	bl      Function_2022974
branch_21d13d2: @ 21d13d2 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d13d8, (=#0x1a08)
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x21d13d8

.word 0x1a08 @ 0x21d13d8



.thumb
Function_21d13dc: @ 21d13dc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d13e6
	bl      Function_2022974
branch_21d13e6: @ 21d13e6 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d13ea


.align 2, 0
.thumb
Function_21d13ec: @ 21d13ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d13f6
	bl      Function_2022974
branch_21d13f6: @ 21d13f6 :thumb
	add     r4, #0xc
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d13fc

.thumb
Function_21d13fc: @ 21d13fc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d1406
	bl      Function_2022974
branch_21d1406: @ 21d1406 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d140c, (=#0x177c)
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x21d140c

.word 0x177c @ 0x21d140c



.thumb
Function_21d1410: @ 21d1410 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0xa
	blt     branch_21d141e
	bl      Function_2022974
branch_21d141e: @ 21d141e :thumb
	ldr     r0, [pc, #0xc] @ 0x21d142c, (=#0x1a30)
	add     r1, r5, r0
	mov     r0, #0x28
	mul     r0, r4
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x21d142a

.align 2
.word 0x1a30 @ 0x21d142c



.thumb
Function_21d1430: @ 21d1430 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x8
	blt     branch_21d143e
	bl      Function_2022974
branch_21d143e: @ 21d143e :thumb
	mov     r0, #0x6f
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x28
	mul     r0, r4
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x21d144c


.thumb
Function_21d144c: @ 21d144c :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x4
	bhi     branch_21d1492
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r3, #0
	lsl     r0, r2, #0
	lsl     r0, r4, #0
	lsl     r0, r4, #0
	mov     r1, #0x1
	bl      Function_2021e50
	pop     {r4,pc}
@ 0x21d1472


.incbin "./baserom/overlay/overlay_0021.bin", 0x6f2, 0x21d1492 - 0x21d1472


.thumb
branch_21d1492: @ 21d1492 :thumb
	pop     {r4,pc}
@ 0x21d1494


.incbin "./baserom/overlay/overlay_0021.bin", 0x714, 0x21d1498 - 0x21d1494


.thumb
Function_21d1498: @ 21d1498 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r2
	bl      Function_2021e74
	cmp     r0, #0x3
	bhi     branch_21d1520
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r2, r7, #0
	lsl     r4, r2, #1
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_20129a4
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	bl      Function_20128c4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d14d6


.incbin "./baserom/overlay/overlay_0021.bin", 0x756, 0x21d1520 - 0x21d14d6


.thumb
branch_21d1520: @ 21d1520 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1524


.thumb
Function_21d1524: @ 21d1524 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	bl      Function_21d1498
	mov     r0, r5
	bl      Function_2021e74
	cmp     r0, #0x2
	ldr     r0, [r4, #0x0]
	bge     branch_21d1544
	mov     r1, r6
	bl      Function_2012ac0
	pop     {r4-r6,pc}

branch_21d1544: @ 21d1544 :thumb
	ldr     r1, [sp, #0x10]
	bl      Function_2012ac0
	pop     {r4-r6,pc}
@ 0x21d154c


.thumb
Function_21d154c: @ 21d154c :thumb
	strb    r1, [r0, #0x0]
	strb    r2, [r0, #0x1]
	ldr     r1, [sp, #0x0]
	strb    r3, [r0, #0x2]
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x21d1558


.thumb
Function_21d1558: @ 21d1558 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x8]
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	str     r3, [r0, #0x4]
	str     r2, [r0, #0xc]
	sub     r1, r1, r2
	str     r1, [r0, #0x14]
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	str     r2, [r0, #0x10]
	sub     r1, r1, r2
	str     r1, [r0, #0x18]
	ldr     r1, [sp, #0x10]
	str     r1, [r0, #0x20]
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x21d157c


.thumb
Function_21d157c: @ 21d157c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x1c]
	ldr     r0, [r5, #0x20]
	cmp     r1, r0
	bgt     branch_21d1648
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019cb8
	ldr     r1, [r5, #0x14]
	ldr     r6, [r5, #0x1c]
	mov     r0, r1
	ldr     r4, [r5, #0x20]
	mul     r0, r6
	mov     r1, r4
	blx     Division
	ldr     r1, [r5, #0x18]
	mov     r7, r0
	mov     r0, r1
	mul     r0, r6
	mov     r1, r4
	blx     Division
	ldr     r1, [r5, #0xc]
	ldr     r2, [r5, #0x10]
	add     r1, r7, r1
	add     r4, r0, r2
	cmp     r1, #0x0
	ble     branch_21d1600
	mov     r0, #0x20
	lsl     r2, r1, #24
	str     r0, [sp, #0x0]
	lsr     r2, r2, #24
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x4]
	sub     r1, r0, r1
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	lsl     r1, r1, #24
	str     r2, [sp, #0xc]
	lsr     r1, r1, #24
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_20198e8
branch_21d1600: @ 21d1600 :thumb
	mov     r0, #0x20
	sub     r3, r0, r4
	cmp     r3, #0x0
	ble     branch_21d1630
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]
	lsr     r1, r1, #24
	str     r1, [sp, #0x4]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r1, [r5, #0x8]
	lsl     r3, r3, #24
	lsl     r1, r1, #24
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
branch_21d1630: @ 21d1630 :thumb
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c3c0
	ldr     r0, [r5, #0x1c]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x1c]
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_21d1648: @ 21d1648 :thumb
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d164e


.align 2, 0
.thumb
Function_21d1650: @ 21d1650 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0
	mov     r4, r3
	str     r2, [sp, #0x10]
	cmp     r5, #0x0
	ble     branch_21d167a
	mov     r0, #0x4
	mov     r1, r4
	bl      Function_2023790
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x2
	mov     r7, r0
	bl      Function_20238a0
	b       branch_21d1684

branch_21d167a: @ 21d167a :thumb
	mov     r0, #0x64
	mov     r1, r4
	bl      Function_21d1ce0
	mov     r7, r0
branch_21d1684: @ 21d1684 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_21d561c
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x21d16d4, (=#0x30201)
	mov     r2, r7
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	mov     r3, #0x16
	bl      Function_201d78c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x21d16d4, (=#0x30201)
	mov     r2, r4
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	mov     r3, #0x31
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_21d5600
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d16d4

.word 0x30201 @ 0x21d16d4



.thumb
Function_21d16d8: @ 21d16d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_21d36d8
	cmp     r0, #0x0
	bne     branch_21d16fa
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d172c
	pop     {r4-r6,pc}

branch_21d16fa: @ 21d16fa :thumb
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d170c
	pop     {r4-r6,pc}
@ 0x21d170a


.align 2, 0
.thumb
Function_21d170c: @ 21d170c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r2
	mov     r1, #0xf
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r1, r6
	mov     r2, r6
	mov     r3, r5
	mov     r4, r0
	bl      Function_21d1650
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d172a


.align 2, 0
.thumb
Function_21d172c: @ 21d172c :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r0
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	mov     r7, r1
	bl      Function_20775a4
	ldr     r1, [pc, #0x34] @ 0x21d1774, (=#0x179)
	mov     r4, r0
	cmp     r5, r1
	beq     branch_21d1758
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_21d1758
	add     r0, r1, #0x2
	cmp     r5, r0
	beq     branch_21d1758
	cmp     r4, #0x0
	bgt     branch_21d1758
	bl      Function_2022974
branch_21d1758: @ 21d1758 :thumb
	mov     r0, r6
	mov     r1, #0xf
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r1, r4
	mov     r2, r5
	mov     r3, r7
	mov     r6, r0
	bl      Function_21d1650
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x21d1772

.align 2
.word 0x179 @ 0x21d1774



.thumb
Function_21d1778: @ 21d1778 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r7, r1
	mov     r5, r0
	mov     r4, r3
	mov     r0, r7
	str     r2, [sp, #0x4]
	bl      Function_21d36d8
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	bl      Function_21d37dc
	mov     r4, r0
	mov     r0, r5
	bl      Function_21d22a8
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d22c4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x58]
	add     r1, sp, #0x10
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x5c]
	str     r0, [sp, #0x14]
	mov     r0, r6
	bl      Function_2021c50
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_21d17e4
	mov     r0, #0x36
	ldr     r1, [sp, #0x58]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x5c]
	add     r1, sp, #0x10
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	bl      Function_2021c50
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_21d17ec

branch_21d17e4: @ 21d17e4 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	bl      Function_2021cac
branch_21d17ec: @ 21d17ec :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d2344
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x1c]
	mov     r1, #0x0
	bl      Function_200a72c
	str     r0, [sp, #0x24]
	mov     r0, #0x3f
	mvn     r0, r0
	str     r0, [sp, #0x2c]
	add     r0, #0x38
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	mov     r0, #0x1
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	str     r6, [sp, #0x28]
	str     r0, [sp, #0x40]
	ldr     r2, [sp, #0x4]
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_21d16d8
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	str     r6, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	mov     r2, #0x0
	bl      Function_21d22e0
	mov     r0, r6
	bl      Function_21d4da0
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21d1848


.thumb
Function_21d1848: @ 21d1848 :thumb
	mov     r3, #0x6d
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x21d1854, (=Function_21d1858+1)
	bx      r3
@ 0x21d1852

.align 2
.word Function_21d1858+1 @ 0x21d1854



.thumb
Function_21d1858: @ 21d1858 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	lsl     r0, r1, #12
	str     r0, [sp, #0x0]
	lsl     r0, r2, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, #0x36
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d188c
	bl      Function_2012938
branch_21d188c: @ 21d188c :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d1890


.thumb
Function_21d1890: @ 21d1890 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r2
	ldr     r2, [pc, #0x13c] @ 0x21d19d4, (=#0x1a6)
	mov     r7, r3
	ldr     r4, [sp, #0x28]
	ldr     r3, [sp, #0x2c]
	cmp     r5, r2
	bgt     branch_21d18d8
	bge     branch_21d1944
	mov     r6, r2
	sub     r6, #0x24
	cmp     r5, r6
	bgt     branch_21d18b8
	sub     r2, #0x24
	cmp     r5, r2
	bge     branch_21d196c
	cmp     r5, #0xc9
	beq     branch_21d1908
	b       branch_21d19bc

branch_21d18b8: @ 21d18b8 :thumb
	mov     r6, r2
	sub     r6, #0x9
	cmp     r5, r6
	bgt     branch_21d19bc
	mov     r6, r2
	sub     r6, #0xa
	cmp     r5, r6
	blt     branch_21d19bc
	mov     r6, r2
	sub     r6, #0xa
	cmp     r5, r6
	beq     branch_21d191c
	sub     r2, #0x9
	cmp     r5, r2
	beq     branch_21d1930
	b       branch_21d19bc

branch_21d18d8: @ 21d18d8 :thumb
	mov     r6, r2
	add     r6, #0x39
	cmp     r5, r6
	bgt     branch_21d18f0
	mov     r6, r2
	add     r6, #0x39
	cmp     r5, r6
	bge     branch_21d19a8
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r5, r2
	beq     branch_21d1958
	b       branch_21d19bc

branch_21d18f0: @ 21d18f0 :thumb
	mov     r6, r2
	add     r6, #0x41
	cmp     r5, r6
	bgt     branch_21d1900
	add     r2, #0x41
	cmp     r5, r2
	beq     branch_21d1994
	b       branch_21d19bc

branch_21d1900: @ 21d1900 :thumb
	add     r2, #0x46
	cmp     r5, r2
	beq     branch_21d1980
	b       branch_21d19bc

branch_21d1908: @ 21d1908 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1a34
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d191c: @ 21d191c :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1b08
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d1930: @ 21d1930 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1b4c
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d1944: @ 21d1944 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1a78
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d1958: @ 21d1958 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1ac0
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d196c: @ 21d196c :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1b94
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d1980: @ 21d1980 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1bd8
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d1994: @ 21d1994 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1c30
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d19a8: @ 21d19a8 :thumb
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d1c88
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_21d19bc: @ 21d19bc :thumb
	str     r4, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r2, r5
	mov     r3, r7
	bl      Function_21d19d8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d19d2

.align 2
.word 0x1a6 @ 0x21d19d4



.thumb
Function_21d19d8: @ 21d19d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	ldr     r0, [pc, #0x50] @ 0x21d1a30, (=#0x147)
	mov     r5, r2
	mov     r6, r1
	mov     r4, #0x0
	str     r3, [sp, #0x18]
	cmp     r5, r0
	bne     branch_21d19f4
	mov     r0, r6
	bl      Function_21d33f8
	mov     r4, r0
branch_21d19f4: @ 21d19f4 :thumb
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d334c
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_21d1a28
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x3c]
	mov     r1, r5
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	bl      Function_21d2188
branch_21d1a28: @ 21d1a28 :thumb
	mov     r0, r6
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d1a2e

.align 2
.word 0x147 @ 0x21d1a30



.thumb
Function_21d1a34: @ 21d1a34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d335c
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1a72
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	mov     r1, #0xc9
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_21d2188
branch_21d1a72: @ 21d1a72 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1a78


.thumb
Function_21d1a78: @ 21d1a78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d3374
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1ab4
	mov     r2, #0x0
	lsl     r0, r4, #24
	str     r2, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x10] @ 0x21d1abc, (=#0x1a6)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r3, r7
	bl      Function_21d2188
branch_21d1ab4: @ 21d1ab4 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1aba

.align 2
.word 0x1a6 @ 0x21d1abc



.thumb
Function_21d1ac0: @ 21d1ac0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d338c
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1afc
	mov     r2, #0x0
	lsl     r0, r4, #24
	str     r2, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x10] @ 0x21d1b04, (=#0x1a7)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r3, r7
	bl      Function_21d2188
branch_21d1afc: @ 21d1afc :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1b02

.align 2
.word 0x1a7 @ 0x21d1b04



.thumb
Function_21d1b08: @ 21d1b08 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d33a4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1b46
	mov     r2, #0x0
	lsl     r0, r4, #24
	str     r2, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r1, #0x67
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	lsl     r1, r1, #2
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r3, r7
	bl      Function_21d2188
branch_21d1b46: @ 21d1b46 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1b4c


.thumb
Function_21d1b4c: @ 21d1b4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d33bc
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1b8a
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x10] @ 0x21d1b90, (=#0x19d)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_21d2188
branch_21d1b8a: @ 21d1b8a :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1b90

.word 0x19d @ 0x21d1b90



.thumb
Function_21d1b94: @ 21d1b94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, r1
	ldr     r1, [sp, #0x34]
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d3404
	mov     r4, r0
	cmp     r4, #0xf
	beq     branch_21d1bce
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x10] @ 0x21d1bd4, (=#0x182)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_21d2188
branch_21d1bce: @ 21d1bce :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1bd4

.word 0x182 @ 0x21d1bd4



.thumb
Function_21d1bd8: @ 21d1bd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r1, #0x7b
	mov     r6, r0
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d341c
	ldr     r2, [sp, #0x34]
	cmp     r0, r2
	ble     branch_21d1c26
	mov     r1, #0x7b
	mov     r0, r4
	lsl     r1, r1, #2
	bl      Function_21d3410
	mov     r4, r0
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x7b
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	lsl     r1, r1, #2
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_21d2188
	b       branch_21d1c2a

branch_21d1c26: @ 21d1c26 :thumb
	mov     r4, #0x0
	mvn     r4, r4
branch_21d1c2a: @ 21d1c2a :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1c30


.thumb
Function_21d1c30: @ 21d1c30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r6, r0
	ldr     r1, [pc, #0x48] @ 0x21d1c84, (=#0x1e7)
	mov     r0, r4
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d341c
	ldr     r2, [sp, #0x34]
	cmp     r0, r2
	ble     branch_21d1c78
	ldr     r1, [pc, #0x38] @ 0x21d1c84, (=#0x1e7)
	mov     r0, r4
	bl      Function_21d3410
	mov     r4, r0
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x18] @ 0x21d1c84, (=#0x1e7)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_21d2188
	b       branch_21d1c7c

branch_21d1c78: @ 21d1c78 :thumb
	mov     r4, #0x0
	mvn     r4, r4
branch_21d1c7c: @ 21d1c7c :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1c82

.align 2
.word 0x1e7 @ 0x21d1c84



.thumb
Function_21d1c88: @ 21d1c88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r6, r0
	ldr     r1, [pc, #0x48] @ 0x21d1cdc, (=#0x1df)
	mov     r0, r4
	mov     r7, r2
	mov     r5, r3
	bl      Function_21d341c
	ldr     r2, [sp, #0x34]
	cmp     r0, r2
	ble     branch_21d1cd0
	ldr     r1, [pc, #0x38] @ 0x21d1cdc, (=#0x1df)
	mov     r0, r4
	bl      Function_21d3410
	mov     r4, r0
	mov     r1, #0x0
	lsl     r0, r4, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [pc, #0x18] @ 0x21d1cdc, (=#0x1df)
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_21d2188
	b       branch_21d1cd4

branch_21d1cd0: @ 21d1cd0 :thumb
	mov     r4, #0x0
	mvn     r4, r4
branch_21d1cd4: @ 21d1cd4 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1cda

.align 2
.word 0x1df @ 0x21d1cdc



.thumb
Function_21d1ce0: @ 21d1ce0 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x20] @ 0x21d1d04, (=#0x2b9)
	mov     r4, r0
	mov     r3, r1
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r5, r0
	mov     r1, r4
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d04

.word 0x2b9 @ 0x21d1d04


.incbin "./baserom/overlay/overlay_0021.bin", 0xf88, 0x21d1e74 - 0x21d1d08


.thumb
Function_21d1e74: @ 21d1e74 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1e90, (=#Unknown_21e9bc4)
	add     r3, sp, #0x0
	mov     r2, #0x5
branch_21d1e7e: @ 21d1e7e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1e7e
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1e90

.word Unknown_21e9bc4 @ 0x21d1e90



.thumb
Function_21d1e94: @ 21d1e94 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r0
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r4, [sp, #0x10]
	bl      Function_200a784
	ldr     r5, [pc, #0x2c] @ 0x21d1ee4, (=#Unknown_21e9b24)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	ldr     r1, [pc, #0x20] @ 0x21d1ee8, (=#0x200010)
	mov     r2, #0x10
	str     r4, [sp, #0x20]
	bl      Function_201e88c
	mov     r0, #0x20
	mov     r1, r4
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d1ee2

.align 2
.word Unknown_21e9b24 @ 0x21d1ee4
.word 0x200010 @ 0x21d1ee8



.thumb
Function_21d1eec: @ 21d1eec :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x18] @ 0x21d1f08, (=#0x1a0c)
	mov     r4, r0
	ldr     r0, [r4, r1]
	add     r1, #0x10
	add     r1, r4, r1
	mov     r2, #0x1
	bl      Function_21d426c
	ldr     r0, [pc, #0xc] @ 0x21d1f0c, (=#0x19fc)
	mov     r1, #0x1
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d1f06

.align 2
.word 0x1a0c @ 0x21d1f08
.word 0x19fc @ 0x21d1f0c



.thumb
Function_21d1f10: @ 21d1f10 :thumb
	push    {r3,lr}
	blx     Function_20b28cc
	blx     Function_20bfb4c
	ldr     r0, [pc, #0x54] @ 0x21d1f70, (=#0x4000060)
	ldr     r2, [pc, #0x54] @ 0x21d1f74, (=#0xffffcffd)
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x44] @ 0x21d1f78, (=#0xcffb)
	and     r1, r3
	strh    r1, [r0, #0x0]
	add     r1, r2, #0x2
	ldrh    r3, [r0, #0x0]
	lsr     r2, r2, #17
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     Function_20bfd58
	ldr     r1, [pc, #0x28] @ 0x21d1f7c, (=#0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d1f80, (=#0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     Function_20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     Function_20a5d88
	pop     {r3,pc}
@ 0x21d1f70

.word 0x4000060 @ 0x21d1f70
.word 0xffffcffd @ 0x21d1f74
.word 0xcffb @ 0x21d1f78
.word 0x4000540 @ 0x21d1f7c
.word 0xbfff0000 @ 0x21d1f80


.incbin "./baserom/overlay/overlay_0021.bin", 0x1204, 0x21d1fa4 - 0x21d1f84


.thumb
Function_21d1fa4: @ 21d1fa4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0x45
	mov     r4, r1
	bl      Function_2006c24
	mov     r1, #0x9f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Function_2018340
	str     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x1c]
	add     r0, sp, #0x10
	bl      Function_2018368
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_21d2830
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d29d0
	mov     r1, r5
	mov     r0, #0x80
	add     r1, #0x14
	mov     r2, r4
	bl      Function_20095c4
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x20
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2009714
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x20
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_2009714
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x20
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_2009714
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x20
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_2009714
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	add     r0, sp, #0x0
	str     r4, [sp, #0xc]
	bl      Function_21d4c0c
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, r4
	bl      Function_2002bb8
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2a0c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2ae8
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2c8c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2e70
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2f5c
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21d2096


.incbin "./baserom/overlay/overlay_0021.bin", 0x1316, 0x21d214c - 0x21d2096


.thumb
Function_21d214c: @ 21d214c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_201c2b8
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2008a94
	pop     {r4,pc}
@ 0x21d2162


.align 2, 0
.thumb
Function_21d2164: @ 21d2164 :thumb
	push    {r3,lr}
	mov     r3, #0x0
	bl      Function_21d222c
	pop     {r3,pc}
@ 0x21d216e


.align 2, 0
.thumb
Function_21d2170: @ 21d2170 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2178, (=#0x21d2275)
	mov     r1, #0x0
	bx      r3
@ 0x21d2176

.align 2
.word Function_21d2274+1 @ =0x21d2275, 0x21d2178



.thumb
Function_21d217c: @ 21d217c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2184, (=Function_21d2280+1)
	mov     r2, #0x0
	bx      r3
@ 0x21d2182

.align 2
.word Function_21d2280+1 @ 0x21d2184



.thumb
Function_21d2188: @ 21d2188 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [sp, #0x10]
	add     r7, r0, r1
	ldr     r0, [sp, #0x54]
	mov     r4, r2
	lsl     r0, r0, #2
	str     r0, [sp, #0x14]
	ldr     r0, [r7, r0]
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_21d21aa
	bl      Function_2007dc8
branch_21d21aa: @ 21d21aa :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21d21be
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	bl      Function_2075dac
	mov     r4, r0
branch_21d21be: @ 21d21be :thumb
	ldr     r0, [sp, #0x40]
	lsl     r1, r5, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x14]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x48]
	lsr     r1, r1, #16
	str     r0, [sp, #0x8]
	add     r0, sp, #0x18
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2075fb4
	cmp     r6, #0x0
	bne     branch_21d2202
	ldr     r0, [sp, #0x48]
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]
	add     r3, sp, #0x30
	lsl     r0, r5, #16
	lsl     r2, r6, #24
	ldrb    r3, [r3, #0x14]
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_2076648
	mov     r3, r0
	b       branch_21d2204

branch_21d2202: @ 21d2202 :thumb
	mov     r3, #0x0
branch_21d2204: @ 21d2204 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r1, #0x55
	ldr     r4, [sp, #0x50]
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r2, [sp, #0x4c]
	add     r1, sp, #0x18
	add     r3, r4, r3
	bl      Function_2007c34
	ldr     r1, [sp, #0x14]
	str     r0, [r7, r1]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d222a


.align 2, 0
.thumb
Function_21d222c: @ 21d222c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x56
	lsl     r1, r1, #2
	add     r5, r0, r1
	lsl     r4, r3, #2
	mov     r7, r2
	ldr     r0, [r5, r4]
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_2007dec
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2007dec
	pop     {r3-r7,pc}
@ 0x21d2250


.thumb
Function_21d2250: @ 21d2250 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x56
	lsl     r1, r1, #2
	add     r5, r0, r1
	lsl     r4, r3, #2
	ldr     r0, [r5, r4]
	mov     r1, #0x0
	mov     r7, r2
	bl      Function_20080c0
	str     r0, [r6, #0x0]
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x21d2274


.thumb
Function_21d2274: @ 21d2274 :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bx      lr
@ 0x21d2280


.thumb
Function_21d2280: @ 21d2280 :thumb
	push    {r3,lr}
	lsl     r2, r2, #2
	add     r2, r0, r2
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_21d22a6
	cmp     r1, #0x1
	bne     branch_21d229e
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	pop     {r3,pc}

branch_21d229e: @ 21d229e :thumb
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
branch_21d22a6: @ 21d22a6 :thumb
	pop     {r3,pc}
@ 0x21d22a8


.thumb
Function_21d22a8: @ 21d22a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d22ba
	bl      Function_2022974
branch_21d22ba: @ 21d22ba :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d22c2


.align 2, 0
.thumb
Function_21d22c4: @ 21d22c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d22d6
	bl      Function_2022974
branch_21d22d6: @ 21d22d6 :thumb
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d22de


.align 2, 0
.thumb
Function_21d22e0: @ 21d22e0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x6d
	lsl     r4, r4, #2
	add     r0, r0, r4
	bl      Function_21d22f8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d22f6


.align 2, 0
.thumb
Function_21d22f8: @ 21d22f8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	mov     r6, r1
	mov     r4, r2
	cmp     r3, r0
	bne     branch_21d231a
	ldr     r1, [sp, #0x10]
	ldr     r0, [r5, #0x2c]
	cmp     r1, r0
	bne     branch_21d231a
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r4-r6,pc}

branch_21d231a: @ 21d231a :thumb
	ldr     r0, [sp, #0x10]
	str     r3, [r5, #0x28]
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d232a
	bl      Function_21d4d1c
branch_21d232a: @ 21d232a :thumb
	cmp     r4, #0x0
	beq     branch_21d233a
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d4cb8
	str     r0, [r5, #0x8]
	pop     {r4-r6,pc}

branch_21d233a: @ 21d233a :thumb
	mov     r0, r6
	bl      Function_21d4ca0
	str     r0, [r5, #0x8]
	pop     {r4-r6,pc}
@ 0x21d2344


.thumb
Function_21d2344: @ 21d2344 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x3
	ble     branch_21d2352
	bl      Function_2022974
branch_21d2352: @ 21d2352 :thumb
	lsl     r0, r5, #2
	add     r1, r4, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x21d235e


.align 2, 0
.thumb
Function_21d2360: @ 21d2360 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Function_2021fe0
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2021fe0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	pop     {r3-r5,pc}
@ 0x21d238c


.thumb
Function_21d238c: @ 21d238c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6d
	mov     r4, r1
	lsl     r0, r0, #2
	lsl     r1, r4, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	bl      Function_2021e80
	mov     r0, #0x6e
	lsl     r0, r0, #2
	lsl     r1, r4, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	bl      Function_2021e80
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      Function_2012a00
	pop     {r3-r5,pc}
@ 0x21d23c0


.incbin "./baserom/overlay/overlay_0021.bin", 0x1640, 0x21d23f8 - 0x21d23c0


.thumb
Function_21d23f8: @ 21d23f8 :thumb
	push    {r4,r5}
	ldr     r4, [sp, #0x18]
	ldr     r5, [sp, #0x14]
	str     r4, [r0, #0x0]
	ldr     r4, [sp, #0x10]
	str     r4, [r0, #0x4]
	mov     r4, #0x20
	orr     r4, r5
	str     r4, [r0, #0x8]
	str     r2, [r0, #0xc]
	sub     r2, r3, r2
	str     r2, [r0, #0x10]
	ldr     r3, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	str     r3, [r0, #0x14]
	sub     r2, r2, r3
	str     r2, [r0, #0x18]
	str     r1, [r0, #0x1c]
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	pop     {r4,r5}
	bx      lr
@ 0x21d2424


.incbin "./baserom/overlay/overlay_0021.bin", 0x16a4, 0x21d24b8 - 0x21d2424


.thumb
Function_21d24b8: @ 21d24b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x20]
	lsl     r0, r0, #12
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r4, #0x1c]
	lsl     r1, r1, #12
	blx     Function_20bcfd0
	asr     r1, r0, #12
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	pop     {r4,pc}
@ 0x21d24ec


.incbin "./baserom/overlay/overlay_0021.bin", 0x176c, 0x21d24fc - 0x21d24ec


.thumb
Function_21d24fc: @ 21d24fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_21d24b8
	neg     r4, r0
	mov     r0, r5
	bl      Function_21d2170
	mov     r3, #0x0
	mov     r1, r4
	mov     r2, r4
	str     r3, [sp, #0x0]
	bl      Function_20086fc
	pop     {r3-r5,pc}
@ 0x21d251c


.thumb
Function_21d251c: @ 21d251c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	bl      Function_21d24b8
	neg     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2274
	mov     r3, #0x0
	mov     r1, r6
	mov     r2, r6
	str     r3, [sp, #0x0]
	bl      Function_20086fc
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d2544


.thumb
Function_21d2544: @ 21d2544 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      Function_21d4f94
	mov     r0, r5
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_21d4fbc
	ldr     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_21d2574
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d2572


.align 2, 0
.thumb
Function_21d2574: @ 21d2574 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_21d3124
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d2584


.thumb
Function_21d2584: @ 21d2584 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
branch_21d258c: @ 21d258c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d258c
	pop     {r4-r6,pc}
@ 0x21d259e


.align 2, 0
.thumb
Function_21d25a0: @ 21d25a0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d25a8, (=Function_2021d34+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d25a6

.align 2
.word Function_2021d34+1 @ 0x21d25a8



.thumb
Function_21d25ac: @ 21d25ac :thumb
	str     r1, [r0, #0x30]
	cmp     r1, #0x0
	bne     branch_21d25b6
	mov     r1, #0x0
	str     r1, [r0, #0x34]
branch_21d25b6: @ 21d25b6 :thumb
	bx      lr
@ 0x21d25b8


.thumb
Function_21d25b8: @ 21d25b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      Function_21d4f94
	mov     r0, r5
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_21d4fbc
	ldr     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_21d25e8
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d25e6


.align 2, 0
.thumb
Function_21d25e8: @ 21d25e8 :thumb
	push    {r3-r7,lr}
	mov     r7, r3
	mov     r3, #0x81
	mov     r4, r1
	mov     r5, r0
	lsl     r3, r3, #2
	mov     r6, r2
	str     r4, [r5, r3]
	add     r0, r3, #0x4
	str     r6, [r5, r0]
	mov     r0, r3
	add     r0, #0x8
	str     r7, [r5, r0]
	mov     r0, r3
	ldr     r1, [sp, #0x18]
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r3
	add     r0, #0xc
	ldr     r0, [r5, r0]
	add     r2, r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r3
	ldr     r1, [r5, r3]
	add     r3, #0x8
	sub     r0, #0x20
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_21d30d8
	mov     r0, #0x26
	lsl     r0, r0, #4
	str     r4, [r5, r0]
	add     r1, r0, #0x4
	str     r6, [r5, r1]
	mov     r1, r0
	add     r1, #0x8
	str     r7, [r5, r1]
	mov     r1, r0
	ldr     r2, [sp, #0x18]
	add     r1, #0xc
	str     r2, [r5, r1]
	mov     r1, #0x0
	add     r0, #0x10
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d2646


.align 2, 0
.thumb
Function_21d2648: @ 21d2648 :thumb
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r3, [r0, #0xc]
	sub     r1, r2, r1
	str     r1, [r0, #0x10]
	ldr     r1, [sp, #0x0]
	sub     r1, r1, r3
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x4]
	str     r1, [r0, #0x1c]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	bx      lr
@ 0x21d2664


.thumb
Function_21d2664: @ 21d2664 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	lsl     r0, r0, #12
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r5, #0x1c]
	lsl     r1, r1, #12
	blx     Function_20bcfd0
	mov     r4, r0
	ldr     r0, [r5, #0x14]
	ldr     r2, [r5, #0x18]
	lsl     r0, r0, #12
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r5, #0x1c]
	lsl     r1, r1, #12
	blx     Function_20bcfd0
	ldr     r1, [r5, #0x8]
	asr     r2, r4, #12
	add     r1, r2, r1
	str     r1, [r5, #0x0]
	asr     r1, r0, #12
	ldr     r0, [r5, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_21d26da
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21d26da: @ 21d26da :thumb
	str     r1, [r5, #0x18]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d26e0


.thumb
Function_21d26e0: @ 21d26e0 :thumb
	mov     r1, #0x9f
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d26e8


.thumb
Function_21d26e8: @ 21d26e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r2, #0x9f
	lsl     r2, r2, #2
	mov     r6, r3
	ldr     r0, [r0, r2]
	mov     r2, r6
	bl      Function_2006cb8
	mov     r4, r0
	beq     branch_21d2720
	cmp     r5, #0x0
	beq     branch_21d2720
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	lsr     r1, r1, #8
	bl      Function_2018144
	mov     r5, r0
	beq     branch_21d271e
	mov     r0, r4
	mov     r1, r5
	blx     Function_20c4f48
	mov     r0, r4
	bl      Function_20181c4
branch_21d271e: @ 21d271e :thumb
	mov     r4, r5
branch_21d2720: @ 21d2720 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d2724


.incbin "./baserom/overlay/overlay_0021.bin", 0x19a4, 0x21d27b8 - 0x21d2724


.thumb
Function_21d27b8: @ 21d27b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r3
	ldr     r3, [sp, #0x10]
	bl      Function_21d26e8
	mov     r4, r0
	beq     branch_21d27da
	mov     r1, r5
	blx     Function_20a7248
	cmp     r0, #0x0
	bne     branch_21d27da
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21d27da: @ 21d27da :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d27de


.align 2, 0
.thumb
Function_21d27e0: @ 21d27e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, #0x0
	bl      Function_21d26e8
	mov     r4, r0
	beq     branch_21d2802
	mov     r1, r5
	blx     Function_20a71b0
	cmp     r0, #0x0
	bne     branch_21d2802
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21d2802: @ 21d2802 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2806


.align 2, 0
.thumb
Function_21d2808: @ 21d2808 :thumb
	push    {r3-r5,lr}
	mov     r5, r3
	ldr     r3, [sp, #0x10]
	bl      Function_21d26e8
	mov     r4, r0
	beq     branch_21d282a
	mov     r1, r5
	blx     Function_20a7164
	cmp     r0, #0x0
	bne     branch_21d282a
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21d282a: @ 21d282a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d282e


.align 2, 0
.thumb
Function_21d2830: @ 21d2830 :thumb
	push    {r4-r6,lr}
	add     sp, #-0xa8
	ldr     r6, [pc, #0x14c] @ 0x21d2984, (=#0x21e9c6c)
	add     r3, sp, #0x8c
	mov     r5, r0
	mov     r4, r1
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r6, [pc, #0x118] @ 0x21d2988, (=#0x21e9c50)
	add     r3, sp, #0x70
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r6, [pc, #0xd8] @ 0x21d298c, (=#0x21e9c34)
	add     r3, sp, #0x54
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r6, [pc, #0xa8] @ 0x21d2990, (=#0x21e9c18)
	add     r3, sp, #0x38
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r6, [pc, #0x78] @ 0x21d2994, (=#0x21e9bfc)
	add     r3, sp, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2019ebc
	ldr     r6, [pc, #0x48] @ 0x21d2998, (=#0x21e9c88)
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x1
	bl      Function_20183c4
	mov     r0, #0x7
	mov     r1, #0x40
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2019ebc
	add     sp, #0xa8
	pop     {r4-r6,pc}
@ 0x21d2984

.word 0x21e9c6c @ 0x21d2984
.word 0x21e9c50 @ 0x21d2988
.word 0x21e9c34 @ 0x21d298c
.word 0x21e9c18 @ 0x21d2990
.word 0x21e9bfc @ 0x21d2994
.word 0x21e9c88 @ 0x21d2998


.incbin "./baserom/overlay/overlay_0021.bin", 0x1c1c, 0x21d29d0 - 0x21d299c


.thumb
Function_21d29d0: @ 21d29d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x0
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, r4, #0x4
	mov     r2, #0x1
	bl      Function_201a7e8
	add     r0, r4, #0x4
	mov     r1, #0x0
	bl      Function_201ada4
	add     r0, r4, #0x4
	bl      Function_201a954
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d2a00


.incbin "./baserom/overlay/overlay_0021.bin", 0x1c80, 0x21d2a0c - 0x21d2a00


.thumb
Function_21d2a0c: @ 21d2a0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      Function_200762c
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r3, [pc, #0x7c] @ 0x21d2aa0, (=#0x2100dec)
	mov     r0, #0x2
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x74] @ 0x21d2aa4, (=#0x2100df4)
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	ldr     r2, [pc, #0x68] @ 0x21d2aa8, (=#0x7fff0000)
	mov     r6, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	and     r2, r4
	lsl     r1, r4, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #13
	lsl     r2, r2, #4
	bl      Function_2008a78
	ldr     r2, [pc, #0x54] @ 0x21d2aac, (=#0xffff0000)
	mov     r0, #0x55
	lsl     r0, r0, #2
	and     r2, r6
	lsl     r1, r6, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #13
	lsl     r2, r2, #3
	bl      Function_2008a84
	mov     r2, #0x0
	mov     r0, #0x56
	mov     r3, r5
	mov     r1, r2
	lsl     r0, r0, #2
branch_21d2a74: @ 21d2a74 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r3, r0]
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x4
	blt     branch_21d2a74
	ldr     r4, [pc, #0x30] @ 0x21d2ab0, (=#0x21e9bec)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	str     r7, [sp, #0xc]
	bl      Function_2015064
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2a9e

.align 2
.word 0x2100dec @ 0x21d2aa0
.word 0x2100df4 @ 0x21d2aa4
.word 0x7fff0000 @ 0x21d2aa8
.word 0xffff0000 @ 0x21d2aac
.word 0x21e9bec @ 0x21d2ab0


.incbin "./baserom/overlay/overlay_0021.bin", 0x1d34, 0x21d2ae8 - 0x21d2ab4


.thumb
Function_21d2ae8: @ 21d2ae8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x6d
	mov     r5, r0
	lsl     r1, r1, #2
	add     r4, r5, r1
	bl      Function_21d26e0
	mov     r7, r0
	ldr     r0, [pc, #0x84] @ 0x21d2b84, (=#0xbb8)
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, #0x5
	str     r6, [sp, #0x8]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r2, #0x4e
	bl      Function_2009a4c
	str     r0, [r4, #0xc]
	bl      Function_200a3dc
	ldr     r0, [r4, #0xc]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x60] @ 0x21d2b84, (=#0xbb8)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r6, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r4, #0x10]
	bl      Function_200a640
	ldr     r0, [r4, #0x10]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x38] @ 0x21d2b84, (=#0xbb8)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x52
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x4c
	mov     r3, #0x1
	bl      Function_2009bc4
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x1c] @ 0x21d2b84, (=#0xbb8)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x53
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x4d
	mov     r3, #0x1
	bl      Function_2009bc4
	str     r0, [r4, #0x18]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2b84

.word 0xbb8 @ 0x21d2b84


.incbin "./baserom/overlay/overlay_0021.bin", 0x1e08, 0x21d2c8c - 0x21d2b88


.thumb
Function_21d2c8c: @ 21d2c8c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	mov     r4, r1
	ldr     r1, [pc, #0xb4] @ 0x21d2d48, (=#0xbb8)
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r3, #0x5
	str     r0, [sp, #0x10]
	lsl     r3, r3, #6
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r5, r2]
	add     r3, #0xc
	str     r2, [sp, #0x1c]
	ldr     r2, [r5, r3]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r2, r1
	bl      Function_20093b4
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	add     r0, sp, #0x2c
	str     r1, [sp, #0x40]
	str     r4, [sp, #0x48]
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	bl      Function_2021b90
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x6d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021f58
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r1, #0x6f
	lsl     r1, r1, #2
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r5, r1]
	add     r0, #0x20
	str     r2, [r5, r0]
	add     r1, #0x24
	str     r2, [r5, r1]
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x21d2d46

.align 2
.word 0xbb8 @ 0x21d2d48


.incbin "./baserom/overlay/overlay_0021.bin", 0x1fcc, 0x21d2e70 - 0x21d2d4c


.thumb
Function_21d2e70: @ 21d2e70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x79
	mov     r5, r0
	lsl     r1, r1, #2
	add     r4, r5, r1
	bl      Function_21d26e0
	mov     r7, r0
	ldr     r0, [pc, #0x88] @ 0x21d2f10, (=#0x2ee0)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r6, [sp, #0x8]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r2, #0x77
	mov     r3, #0x1
	bl      Function_2009a4c
	str     r0, [r4, #0x10]
	bl      Function_200a3dc
	ldr     r0, [r4, #0x10]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x64] @ 0x21d2f10, (=#0x2ee0)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r6, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x15
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r4, #0x14]
	bl      Function_200a640
	ldr     r0, [r4, #0x14]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x38] @ 0x21d2f10, (=#0x2ee0)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x52
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x78
	mov     r3, #0x1
	bl      Function_2009bc4
	str     r0, [r4, #0x18]
	ldr     r0, [pc, #0x1c] @ 0x21d2f10, (=#0x2ee0)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x53
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x76
	mov     r3, #0x1
	bl      Function_2009bc4
	str     r0, [r4, #0x1c]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2f10

.word 0x2ee0 @ 0x21d2f10


.incbin "./baserom/overlay/overlay_0021.bin", 0x2194, 0x21d2f5c - 0x21d2f14


.thumb
Function_21d2f5c: @ 21d2f5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r5, r1
	ldr     r1, [pc, #0xa4] @ 0x21d3008, (=#0x2ee0)
	mov     r6, r0
	mov     r0, #0x0
	mov     r2, #0x79
	lsl     r2, r2, #2
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	sub     r2, #0xa4
	ldr     r2, [r6, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, #0x79
	lsl     r2, r2, #2
	sub     r2, #0xa0
	ldr     r2, [r6, r2]
	str     r2, [sp, #0x18]
	mov     r2, #0x79
	lsl     r2, r2, #2
	sub     r2, #0x9c
	ldr     r2, [r6, r2]
	str     r2, [sp, #0x1c]
	mov     r2, #0x79
	lsl     r2, r2, #2
	sub     r2, #0x98
	ldr     r2, [r6, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r2, r1
	bl      Function_20093b4
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r4, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x2
	str     r0, [sp, #0x44]
	mov     r0, #0x49
	lsl     r0, r0, #14
	str     r0, [sp, #0x38]
	mov     r0, #0x19
	lsl     r0, r0, #14
	str     r0, [sp, #0x34]
	mov     r0, #0x79
	lsl     r0, r0, #2
	str     r5, [sp, #0x48]
	str     r4, [sp, #0x40]
	add     r5, r6, r0
	add     r7, sp, #0x2c
branch_21d2fd6: @ 21d2fd6 :thumb
	mov     r0, r7
	bl      Function_2021b90
	mov     r1, r4
	stmia   r5!, {r0}
	bl      Function_2021d6c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21d2fd6
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r6, r0
	mov     r1, #0x0
	bl      Function_21d2584
	mov     r0, r6
	bl      Function_21d3034
	mov     r0, r6
	bl      Function_21d31d0
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d3006

.align 2
.word 0x2ee0 @ 0x21d3008


.incbin "./baserom/overlay/overlay_0021.bin", 0x228c, 0x21d3034 - 0x21d300c


.thumb
Function_21d3034: @ 21d3034 :thumb
	push    {r4,lr}
	mov     r1, #0x79
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x10] @ 0x21d3050, (=Function_21d3064+1)
	add     r1, r4, r1
	mov     r2, #0x1
	bl      Function_200d9e8
	mov     r1, #0x9d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d304e

.align 2
.word Function_21d3064+1 @ 0x21d3050


.incbin "./baserom/overlay/overlay_0021.bin", 0x22d4, 0x21d3064 - 0x21d3054



.thumb
Function_21d3064: @ 21d3064 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d3080
	ldr     r0, [r4, #0x2c]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	ldr     r3, [r4, #0x28]
	mov     r0, r4
	bl      Function_21d30d8
	pop     {r3-r5,pc}

branch_21d3080: @ 21d3080 :thumb
	ldr     r0, [r4, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #26
	sub     r1, r1, r2
	mov     r0, #0x1a
	ror     r1, r0
	add     r0, r2, r1
	str     r0, [r4, #0x34]
	cmp     r0, #0x20
	blt     branch_21d309c
	add     r1, r0, #0x1
	mov     r0, #0x40
	sub     r0, r0, r1
branch_21d309c: @ 21d309c :thumb
	lsl     r2, r0, #12
	asr     r1, r2, #31
	lsr     r0, r2, #18
	lsl     r3, r1, #14
	mov     r1, #0x2
	orr     r3, r0
	lsl     r2, r2, #14
	mov     r0, #0x0
	lsl     r1, r1, #10
	add     r5, r2, r1
	adc     r3, r0
	lsl     r2, r3, #20
	lsr     r0, r5, #12
	orr     r0, r2
	lsl     r1, r1, #6
	blx     Function_20bcfd0
	asr     r3, r0, #12
	ldr     r0, [r4, #0x2c]
	add     r0, r0, r3
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	ldr     r4, [r4, #0x28]
	add     r3, r4, r3
	bl      Function_21d30d8
	pop     {r3-r5,pc}
@ 0x21d30d6


.align 2, 0
.thumb
Function_21d30d8: @ 21d30d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r6, [sp, #0x40]
	mov     r5, r0
	str     r1, [sp, #0xc]
	mov     r7, r2
	str     r3, [sp, #0x10]
	mov     r4, #0x0
branch_21d30e8: @ 21d30e8 :thumb
	ldr     r0, [sp, #0x10]
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	str     r6, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_21d4ffc
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #12
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #12
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x1c
	bl      Function_2021c50
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d30e8
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d3122


.align 2, 0
.thumb
Function_21d3124: @ 21d3124 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r1, #0x87
	lsl     r1, r1, #2
	add     r4, r0, r1
	ldr     r1, [r4, #0x44]
	mov     r5, r2
	mov     r7, r3
	cmp     r1, r6
	bne     branch_21d314e
	ldr     r1, [r4, #0x48]
	cmp     r1, r5
	bne     branch_21d314e
	ldr     r1, [r4, #0x4c]
	cmp     r1, r7
	bne     branch_21d314e
	ldr     r2, [r4, #0x50]
	ldr     r1, [sp, #0x20]
	cmp     r2, r1
	beq     branch_21d318e
branch_21d314e: @ 21d314e :thumb
	mov     r1, #0x79
	lsl     r1, r1, #2
	add     r3, r0, r1
	str     r3, [r4, #0x0]
	str     r5, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r1, [r3, #0x20]
	ldr     r3, [r3, #0x24]
	add     r0, r4, #0x4
	mov     r2, r6
	bl      Function_21d2648
	ldr     r3, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r4
	ldr     r1, [r3, #0x28]
	ldr     r3, [r3, #0x2c]
	add     r0, #0x24
	bl      Function_21d2648
	str     r6, [r4, #0x44]
	str     r5, [r4, #0x48]
	ldr     r0, [sp, #0x20]
	str     r7, [r4, #0x4c]
	str     r0, [r4, #0x50]
	mov     r0, #0x1
	str     r0, [r4, #0x54]
branch_21d318e: @ 21d318e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3192


.align 2, 0
.thumb
Function_21d3194: @ 21d3194 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	beq     branch_21d31ce
	add     r0, r5, #0x4
	bl      Function_21d2664
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x24
	bl      Function_21d2664
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	cmp     r4, #0x1
	str     r1, [r0, #0x20]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	str     r1, [r0, #0x24]
	ldr     r1, [r5, #0x24]
	ldr     r0, [r5, #0x0]
	str     r1, [r0, #0x28]
	ldr     r1, [r5, #0x28]
	ldr     r0, [r5, #0x0]
	str     r1, [r0, #0x2c]
	bne     branch_21d31ce
	mov     r0, #0x0
	str     r0, [r5, #0x54]
branch_21d31ce: @ 21d31ce :thumb
	pop     {r3-r5,pc}
@ 0x21d31d0


.thumb
Function_21d31d0: @ 21d31d0 :thumb
	push    {r4,lr}
	mov     r1, #0x87
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x10] @ 0x21d31ec, (=Function_21d3194+1)
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_200d9e8
	mov     r1, #0x9e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d31ea

.align 2
.word Function_21d3194+1 @ 0x21d31ec


.incbin "./baserom/overlay/overlay_0021.bin", 0x2470, 0x21d3208 - 0x21d31f0


.thumb
Function_21d3208: @ 21d3208 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0xe8] @ 0x21d32fc, (=#0x1770)
	mov     r1, #0x0
	mov     r5, r0
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xdc] @ 0x21d3300, (=#0x1744)
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x0]
	bl      Function_2027474
	cmp     r0, #0x0
	beq     branch_21d3232
	mov     r1, #0x1
	b       branch_21d3234

branch_21d3232: @ 21d3232 :thumb
	mov     r1, #0x0
branch_21d3234: @ 21d3234 :thumb
	ldr     r0, [pc, #0xcc] @ 0x21d3304, (=#0x1734)
	str     r1, [r5, r0]
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x2
	bne     branch_21d324c
	ldr     r0, [pc, #0xc4] @ 0x21d3304, (=#0x1734)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d324a
	mov     r0, #0x1
	b       branch_21d324c

branch_21d324a: @ 21d324a :thumb
	mov     r0, #0x0
branch_21d324c: @ 21d324c :thumb
	cmp     r0, #0x1
	ldr     r0, [pc, #0xb8] @ 0x21d3308, (=#0x1730)
	bne     branch_21d325a
	mov     r1, #0x1
	str     r1, [r5, r0]
	mov     r1, #0x0
	b       branch_21d325e

branch_21d325a: @ 21d325a :thumb
	mov     r1, #0x0
	str     r1, [r5, r0]
branch_21d325e: @ 21d325e :thumb
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x21d3308, (=#0x1730)
	str     r1, [sp, #0x4]
	ldr     r0, [r5, r0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r6, [sp, #0xc]
	bl      Function_21d3684
	cmp     r0, #0x0
	bne     branch_21d327c
	bl      Function_2022974
branch_21d327c: @ 21d327c :thumb
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	bl      Function_21d3794
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	bl      Function_21d3434
	ldr     r1, [r4, #0x20]
	mov     r0, r5
	bl      Function_21d344c
	ldr     r0, [r4, #0x4]
	bl      Function_2025fcc
	ldr     r1, [pc, #0x70] @ 0x21d330c, (=#0x174c)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	bl      Function_2025f30
	ldr     r1, [pc, #0x68] @ 0x21d3310, (=#0x1750)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_2025f04
	ldr     r1, [pc, #0x60] @ 0x21d3314, (=#0x1754)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_2098700
	ldr     r1, [pc, #0x5c] @ 0x21d3318, (=#0x1748)
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	ldr     r0, [r5, r1]
	bne     branch_21d32d4
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_209872c
	b       branch_21d32dc

branch_21d32d4: @ 21d32d4 :thumb
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_209872c
branch_21d32dc: @ 21d32dc :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x3c] @ 0x21d331c, (=#0x1760)
	str     r0, [r5, r1]
	ldr     r2, [r4, #0x10]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	ldr     r2, [r4, #0x14]
	add     r0, #0x8
	str     r2, [r5, r0]
	ldr     r0, [r4, #0x18]
	add     r1, #0xc
	str     r0, [r5, r1]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d32fa

.align 2
.word 0x1770 @ 0x21d32fc
.word 0x1744 @ 0x21d3300
.word 0x1734 @ 0x21d3304
.word 0x1730 @ 0x21d3308
.word 0x174c @ 0x21d330c
.word 0x1750 @ 0x21d3310
.word 0x1754 @ 0x21d3314
.word 0x1748 @ 0x21d3318
.word 0x1760 @ 0x21d331c


.incbin "./baserom/overlay/overlay_0021.bin", 0x25a0, 0x21d334c - 0x21d3320


.thumb
Function_21d334c: @ 21d334c :thumb
	ldr     r3, [pc, #0x8] @ 0x21d3358, (=Function_2027058+1)
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bx      r3
@ 0x21d3356

.align 2
.word Function_2027058+1 @ 0x21d3358



.thumb
Function_21d335c: @ 21d335c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x1c
	blt     branch_21d336a
	bl      Function_2022974
branch_21d336a: @ 21d336a :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_20270ac
	pop     {r3-r5,pc}
@ 0x21d3374


.thumb
Function_21d3374: @ 21d3374 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x2
	blt     branch_21d3382
	bl      Function_2022974
branch_21d3382: @ 21d3382 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_20270f8
	pop     {r3-r5,pc}
@ 0x21d338c


.thumb
Function_21d338c: @ 21d338c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x2
	blt     branch_21d339a
	bl      Function_2022974
branch_21d339a: @ 21d339a :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_2027154
	pop     {r3-r5,pc}
@ 0x21d33a4


.thumb
Function_21d33a4: @ 21d33a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	blt     branch_21d33b2
	bl      Function_2022974
branch_21d33b2: @ 21d33b2 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_20271b0
	pop     {r3-r5,pc}
@ 0x21d33bc


.thumb
Function_21d33bc: @ 21d33bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	blt     branch_21d33ca
	bl      Function_2022974
branch_21d33ca: @ 21d33ca :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_2027208
	pop     {r3-r5,pc}
@ 0x21d33d4


.incbin "./baserom/overlay/overlay_0021.bin", 0x2654, 0x21d33e0 - 0x21d33d4


.thumb
Function_21d33e0: @ 21d33e0 :thumb
	push    {r3,lr}
	mov     r2, #0x1
	bl      Function_21d334c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_21d33f4
	mov     r0, #0x1
	pop     {r3,pc}

branch_21d33f4: @ 21d33f4 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d33f8


.thumb
Function_21d33f8: @ 21d33f8 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3400, (=Function_202702c+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bx      r3
@ 0x21d3400

.word Function_202702c+1 @ 0x21d3400



.thumb
Function_21d3404: @ 21d3404 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d340c, (=Function_2027264+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d340a

.align 2
.word Function_2027264+1 @ 0x21d340c



.thumb
Function_21d3410: @ 21d3410 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3418, (=Function_202756c+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d3416

.align 2
.word Function_202756c+1 @ 0x21d3418



.thumb
Function_21d341c: @ 21d341c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3424, (=Function_20276c8+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d3422

.align 2
.word Function_20276c8+1 @ 0x21d3424



.thumb
Function_21d3428: @ 21d3428 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3430, (=Function_2027474+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d342e

.align 2
.word Function_2027474+1 @ 0x21d3430



.thumb
Function_21d3434: @ 21d3434 :thumb
	ldr     r2, [pc, #0x4] @ 0x21d343c, (=#0x175c)
	strh    r1, [r0, r2]
	bx      lr
@ 0x21d343a

.align 2
.word 0x175c @ 0x21d343c


.incbin "./baserom/overlay/overlay_0021.bin", 0x26c0, 0x21d344c - 0x21d3440


.thumb
Function_21d344c: @ 21d344c :thumb
	ldr     r2, [pc, #0x4] @ 0x21d3454, (=#0x175e)
	strh    r1, [r0, r2]
	bx      lr
@ 0x21d3452

.align 2
.word 0x175e @ 0x21d3454


.incbin "./baserom/overlay/overlay_0021.bin", 0x26d8, 0x21d3464 - 0x21d3458


.thumb
Function_21d3464: @ 21d3464 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r7, [sp, #0x4c]
	str     r1, [sp, #0xc]
	mov     r5, r0
	ldr     r1, [pc, #0x20c] @ 0x21d367c, (=#0x3da)
	mov     r0, r7
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      Function_2018184
	mov     r6, r0
	bne     branch_21d3482
	bl      Function_2022974
branch_21d3482: @ 21d3482 :thumb
	ldr     r2, [pc, #0x1f8] @ 0x21d367c, (=#0x3da)
	mov     r0, r6
	mov     r1, #0x0
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r1, [pc, #0x1e8] @ 0x21d367c, (=#0x3da)
	mov     r0, r7
	bl      Function_2018184
	mov     r4, r0
	bne     branch_21d34a0
	bl      Function_2022974
branch_21d34a0: @ 21d34a0 :thumb
	ldr     r2, [pc, #0x1d8] @ 0x21d367c, (=#0x3da)
	mov     r0, r4
	mov     r1, #0x0
	blx     Function_20d5124
	mov     r1, #0x0
	ldr     r0, [sp, #0x48]
	str     r1, [sp, #0x20]
	cmp     r0, #0x0
	add     r2, sp, #0x1c
	bne     branch_21d34d2
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_21d3b64
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	add     r1, sp, #0x24
	bl      Function_21d39a4
	b       branch_21d34ea

branch_21d34d2: @ 21d34d2 :thumb
	mov     r0, r7
	bl      Function_21d3b64
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	add     r1, sp, #0x24
	bl      Function_21d39a4
branch_21d34ea: @ 21d34ea :thumb
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r3, r6
	bl      Function_21d3b98
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	str     r2, [sp, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	mov     r3, r6
	bl      Function_21d3c48
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x0
	bne     branch_21d353e
	mov     r7, #0x0
	b       branch_21d3656

branch_21d353e: @ 21d353e :thumb
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	str     r2, [sp, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	mov     r3, r6
	bl      Function_21d3d2c
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x0
	bne     branch_21d357a
	mov     r7, #0x0
	b       branch_21d3656

branch_21d357a: @ 21d357a :thumb
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	str     r2, [sp, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x40]
	mov     r3, r6
	bl      Function_21d3d2c
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x0
	bne     branch_21d35b6
	mov     r7, #0x0
	b       branch_21d3656

branch_21d35b6: @ 21d35b6 :thumb
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	str     r2, [sp, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x44]
	mov     r3, r6
	bl      Function_21d3e80
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x0
	bne     branch_21d35f2
	mov     r7, #0x0
	b       branch_21d3656

branch_21d35f2: @ 21d35f2 :thumb
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	str     r2, [sp, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r1, [r5, #0x0]
	ldr     r3, [sp, #0x24]
	add     r0, r5, #0x4
	mov     r2, r6
	bl      Function_21d3a60
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_21d3638
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_21d3638
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_21d3638
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	bne     branch_21d3638
	ldr     r0, [sp, #0x44]
	cmp     r0, #0x0
	beq     branch_21d363c
branch_21d3638: @ 21d3638 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x50]
branch_21d363c: @ 21d363c :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x0
	bne     branch_21d364e
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	add     r0, r5, #0x4
	bl      Function_21d3ab8
	b       branch_21d3654

branch_21d364e: @ 21d364e :thumb
	add     r0, r5, #0x4
	bl      Function_21d3b28
branch_21d3654: @ 21d3654 :thumb
	mov     r7, #0x1
branch_21d3656: @ 21d3656 :thumb
	ldr     r2, [pc, #0x28] @ 0x21d3680, (=#0x1738)
	add     r0, r5, #0x4
	add     r1, r5, r2
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r2, r5, r2
	bl      Function_21d3fa8
	mov     r0, r6
	bl      Function_20181c4
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [sp, #0x18]
	bl      Function_20181c4
	mov     r0, r7
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d367c

.word 0x3da @ 0x21d367c
.word 0x1738 @ 0x21d3680



.thumb
Function_21d3684: @ 21d3684 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x24]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x8]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0xc]
	mov     r4, #0x0
	str     r4, [sp, #0x10]
	bl      Function_21d3464
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d36a4


.thumb
Function_21d36a4: @ 21d36a4 :thumb
	cmp     r1, #0x0
	bne     branch_21d36ac
	mov     r0, #0x1
	bx      lr

branch_21d36ac: @ 21d36ac :thumb
	ldr     r1, [pc, #0xc] @ 0x21d36bc, (=#0x1734)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_21d36b8
	mov     r0, #0x1
	bx      lr

branch_21d36b8: @ 21d36b8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d36bc

.word 0x1734 @ 0x21d36bc



.thumb
Function_21d36c0: @ 21d36c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d36a4
	cmp     r0, #0x0
	beq     branch_21d36d2
	ldr     r1, [pc, #0x4] @ 0x21d36d4, (=#0x1730)
	str     r4, [r5, r1]
branch_21d36d2: @ 21d36d2 :thumb
	pop     {r3-r5,pc}
@ 0x21d36d4

.word 0x1730 @ 0x21d36d4



.thumb
Function_21d36d8: @ 21d36d8 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d36e0, (=#0x1730)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d36de

.align 2
.word 0x1730 @ 0x21d36e0



.thumb
Function_21d36e4: @ 21d36e4 :thumb
	cmp     r1, #0x0
	blt     branch_21d36f6
	mov     r2, #0xf7
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	cmp     r1, r0
	bge     branch_21d36f6
	mov     r0, #0x1
	bx      lr

branch_21d36f6: @ 21d36f6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d36fa


.align 2, 0
.thumb
Function_21d36fc: @ 21d36fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d36e4
	cmp     r0, #0x0
	beq     branch_21d3712
	ldr     r0, [pc, #0xc] @ 0x21d3718, (=#0xf6c)
	str     r4, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21d3712: @ 21d3712 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3716

.align 2
.word 0xf6c @ 0x21d3718



.thumb
Function_21d371c: @ 21d371c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x34] @ 0x21d3758, (=#0xf6c)
	mov     r5, r0
	ldr     r1, [r5, r1]
	add     r1, r1, r4
	bl      Function_21d36e4
	cmp     r0, #0x0
	beq     branch_21d373c
	ldr     r0, [pc, #0x24] @ 0x21d3758, (=#0xf6c)
	ldr     r1, [r5, r0]
	add     r1, r1, r4
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21d373c: @ 21d373c :thumb
	cmp     r4, #0x0
	blt     branch_21d374c
	mov     r0, #0xf7
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	.hword  0x1e49 @ sub r1, r1, #0x1
	b       branch_21d3750

branch_21d374c: @ 21d374c :thumb
	ldr     r0, [pc, #0x8] @ 0x21d3758, (=#0xf6c)
	mov     r1, #0x0
branch_21d3750: @ 21d3750 :thumb
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3756

.align 2
.word 0xf6c @ 0x21d3758



.thumb
Function_21d375c: @ 21d375c :thumb
	ldr     r1, [pc, #0x4] @ 0x21d3764, (=#0xf6c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d3762

.align 2
.word 0xf6c @ 0x21d3764



.thumb
Function_21d3768: @ 21d3768 :thumb
	mov     r1, #0xf7
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d3770


.thumb
Function_21d3770: @ 21d3770 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d3768
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_21d378e
branch_21d3780: @ 21d3780 :thumb
	ldr     r1, [r5, #0x4]
	cmp     r1, r4
	beq     branch_21d378e
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r5, #0x8
	cmp     r2, r0
	blt     branch_21d3780
branch_21d378e: @ 21d378e :thumb
	mov     r0, r2
	pop     {r3-r5,pc}
@ 0x21d3792


.align 2, 0
.thumb
Function_21d3794: @ 21d3794 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21d3768
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d3770
	mov     r1, r0
	cmp     r4, r1
	bls     branch_21d37b6
	mov     r0, r5
	bl      Function_21d36fc
	pop     {r4-r6,pc}

branch_21d37b6: @ 21d37b6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d37ba


.align 2, 0
.thumb
Function_21d37bc: @ 21d37bc :thumb
	ldr     r1, [pc, #0x8] @ 0x21d37c8, (=#0xf6c)
	ldr     r1, [r0, r1]
	lsl     r1, r1, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21d37c8

.word 0xf6c @ 0x21d37c8


.incbin "./baserom/overlay/overlay_0021.bin", 0x2a4c, 0x21d37dc - 0x21d37cc


.thumb
Function_21d37dc: @ 21d37dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d36e4
	cmp     r0, #0x0
	beq     branch_21d37f2
	add     r1, r5, #0x4
	lsl     r0, r4, #3
	add     r0, r1, r0
	pop     {r3-r5,pc}

branch_21d37f2: @ 21d37f2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d37f6


.align 2, 0
.thumb
Function_21d37f8: @ 21d37f8 :thumb
	ldr     r2, [pc, #0x10] @ 0x21d380c, (=#0x172c)
	ldr     r0, [r0, r2]
	cmp     r0, r1
	ble     branch_21d3808
	cmp     r1, #0x0
	blt     branch_21d3808
	mov     r0, #0x1
	bx      lr

branch_21d3808: @ 21d3808 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d380c

.word 0x172c @ 0x21d380c



.thumb
Function_21d3810: @ 21d3810 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d37f8
	cmp     r0, #0x0
	beq     branch_21d3836
	ldr     r1, [pc, #0x1c] @ 0x21d383c, (=#0x1728)
	mov     r0, r5
	str     r4, [r5, r1]
	ldr     r1, [r5, r1]
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x14] @ 0x21d3840, (=#0xf74)
	ldr     r1, [r2, r1]
	bl      Function_21d36fc
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21d3836: @ 21d3836 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d383a

.align 2
.word 0x1728 @ 0x21d383c
.word 0xf74 @ 0x21d3840



.thumb
Function_21d3844: @ 21d3844 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d387c
	cmp     r0, #0x0
	beq     branch_21d386e
	ldr     r1, [pc, #0x20] @ 0x21d3874, (=#0x1728)
	ldr     r0, [r5, r1]
	add     r0, r0, r4
	str     r0, [r5, r1]
	ldr     r1, [r5, r1]
	mov     r0, r5
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x14] @ 0x21d3878, (=#0xf74)
	ldr     r1, [r2, r1]
	bl      Function_21d36fc
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21d386e: @ 21d386e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3872

.align 2
.word 0x1728 @ 0x21d3874
.word 0xf74 @ 0x21d3878



.thumb
Function_21d387c: @ 21d387c :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x14] @ 0x21d3894, (=#0x1728)
	ldr     r2, [r0, r2]
	add     r1, r2, r1
	bl      Function_21d37f8
	cmp     r0, #0x0
	beq     branch_21d3890
	mov     r0, #0x1
	pop     {r3,pc}

branch_21d3890: @ 21d3890 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d3894

.word 0x1728 @ 0x21d3894



.thumb
Function_21d3898: @ 21d3898 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d38a0, (=#0x1728)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d389e

.align 2
.word 0x1728 @ 0x21d38a0



.thumb
Function_21d38a4: @ 21d38a4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d38ac, (=#0x172c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d38aa

.align 2
.word 0x172c @ 0x21d38ac



.thumb
Function_21d38b0: @ 21d38b0 :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0x4] @ 0x21d38bc, (=#0xf74)
	ldr     r0, [r1, r0]
	bx      lr
@ 0x21d38ba

.align 2
.word 0xf74 @ 0x21d38bc



.thumb
Function_21d38c0: @ 21d38c0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x21d38f8, (=#0x172c)
	mov     r6, #0x0
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_21d38f6
	ldr     r7, [pc, #0x28] @ 0x21d38f8, (=#0x172c)
branch_21d38d0: @ 21d38d0 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d38b0
	mov     r4, r0
	mov     r0, r5
	bl      Function_21d375c
	cmp     r4, r0
	bne     branch_21d38ee
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d3810
	pop     {r3-r7,pc}

branch_21d38ee: @ 21d38ee :thumb
	ldr     r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_21d38d0
branch_21d38f6: @ 21d38f6 :thumb
	pop     {r3-r7,pc}
@ 0x21d38f8

.word 0x172c @ 0x21d38f8


.incbin "./baserom/overlay/overlay_0021.bin", 0x2b7c, 0x21d3920 - 0x21d38fc


.thumb
Function_21d3920: @ 21d3920 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d3928, (=#0x1750)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d3926

.align 2
.word 0x1750 @ 0x21d3928



.thumb
Function_21d392c: @ 21d392c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21d37bc
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2027514
	cmp     r0, #0x0
	bne     branch_21d3946
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_21d3946: @ 21d3946 :thumb
	lsl     r1, r4, #16
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #16
	mov     r2, r6
	bl      Function_20274d0
	pop     {r4-r6,pc}
@ 0x21d3954


.thumb
Function_21d3954: @ 21d3954 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d395c, (=Function_2027494+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d395a

.align 2
.word Function_2027494+1 @ 0x21d395c


.incbin "./baserom/overlay/overlay_0021.bin", 0x2be0, 0x21d3998 - 0x21d3960


.thumb
Function_21d3998: @ 21d3998 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d39a0, (=#0x1758)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d399e

.align 2
.word 0x1758 @ 0x21d39a0



.thumb
Function_21d39a4: @ 21d39a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r7, [sp, #0x20]
	mov     r5, r1
	mov     r6, #0x0
	mov     r4, r3
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r6, [r5, #0x0]
	cmp     r7, #0x0
	ble     branch_21d39de
branch_21d39ba: @ 21d39ba :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_2026fe8
	cmp     r0, #0x0
	beq     branch_21d39d6
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x0]
	strh    r0, [r1, r2]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
branch_21d39d6: @ 21d39d6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, r7
	blt     branch_21d39ba
branch_21d39de: @ 21d39de :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d39e2


.align 2, 0
.thumb
Function_21d39e4: @ 21d39e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x0
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	mov     r6, r2
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r1, [r0, #0x0]
	mov     r0, r3
	ldr     r7, [sp, #0x2c]
	str     r1, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_21d3a5c
branch_21d3a0c: @ 21d3a0c :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_21d3a34
	ldr     r5, [sp, #0x28]
branch_21d3a14: @ 21d3a14 :thumb
	ldrh    r1, [r6, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r1, r0
	bne     branch_21d3a2c
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	beq     branch_21d3a34
	ldr     r0, [sp, #0x34]
	bl      Function_2026f9c
	cmp     r0, #0x0
	bne     branch_21d3a34
branch_21d3a2c: @ 21d3a2c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r7
	blt     branch_21d3a14
branch_21d3a34: @ 21d3a34 :thumb
	cmp     r4, r7
	bge     branch_21d3a4e
	ldr     r0, [sp, #0x4]
	ldrh    r2, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	strh    r2, [r0, r1]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
branch_21d3a4e: @ 21d3a4e :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1cb6 @ add r6, r6, #0x2
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_21d3a0c
branch_21d3a5c: @ 21d3a5c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d3a60


.thumb
Function_21d3a60: @ 21d3a60 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d3ab4, (=#0xf6c)
	mov     r6, #0x0
	mov     r7, r3
	mov     r4, r2
	str     r1, [sp, #0x0]
	str     r6, [r5, r0]
	cmp     r7, #0x0
	ble     branch_21d3ab2
branch_21d3a74: @ 21d3a74 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_2026f9c
	cmp     r0, #0x0
	ldr     r0, [pc, #0x34] @ 0x21d3ab4, (=#0xf6c)
	beq     branch_21d3a8c
	ldr     r0, [r5, r0]
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x2
	b       branch_21d3a94

branch_21d3a8c: @ 21d3a8c :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x1
branch_21d3a94: @ 21d3a94 :thumb
	str     r0, [r1, #0x4]
	ldr     r1, [pc, #0x1c] @ 0x21d3ab4, (=#0xf6c)
	ldrh    r0, [r4, #0x0]
	ldr     r1, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r1, r1, #3
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x10] @ 0x21d3ab4, (=#0xf6c)
	.hword  0x1ca4 @ add r4, r4, #0x2
	ldr     r0, [r5, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x8] @ 0x21d3ab4, (=#0xf6c)
	str     r1, [r5, r0]
	cmp     r6, r7
	blt     branch_21d3a74
branch_21d3ab2: @ 21d3ab2 :thumb
	pop     {r3-r7,pc}
@ 0x21d3ab4

.word 0xf6c @ 0x21d3ab4



.thumb
Function_21d3ab8: @ 21d3ab8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, #0x0
	ldr     r1, [pc, #0x5c] @ 0x21d3b1c, (=#0x1728)
	mov     r12, r2
	str     r4, [r0, r1]
	mov     r1, r2
	mov     lr, r4
	cmp     r1, #0x0
	ble     branch_21d3b1a
	ldr     r7, [pc, #0x4c] @ 0x21d3b1c, (=#0x1728)
	mov     r5, r0
branch_21d3ad0: @ 21d3ad0 :thumb
	ldr     r1, [pc, #0x4c] @ 0x21d3b20, (=#0xf6c)
	ldr     r1, [r0, r1]
	cmp     r4, r1
	bge     branch_21d3b0c
	ldrh    r1, [r6, #0x0]
	ldr     r2, [r5, #0x0]
	cmp     r2, r1
	ldr     r1, [pc, #0x3c] @ 0x21d3b1c, (=#0x1728)
	bne     branch_21d3afa
	ldr     r1, [r0, r1]
	add     r5, #0x8
	lsl     r1, r1, #2
	add     r2, r0, r1
	mov     r1, #0xf7
	lsl     r1, r1, #4
	str     r4, [r2, r1]
	ldr     r1, [r0, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, r7]
	b       branch_21d3b0c

branch_21d3afa: @ 21d3afa :thumb
	ldr     r1, [r0, r1]
	ldr     r2, [pc, #0x24] @ 0x21d3b24, (=#0x1ee)
	lsl     r1, r1, #2
	add     r3, r0, r1
	lsl     r1, r2, #3
	str     r2, [r3, r1]
	ldr     r1, [r0, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, r7]
branch_21d3b0c: @ 21d3b0c :thumb
	mov     r1, lr
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r2, r12
	.hword  0x1cb6 @ add r6, r6, #0x2
	mov     lr, r1
	cmp     r1, r2
	blt     branch_21d3ad0
branch_21d3b1a: @ 21d3b1a :thumb
	pop     {r3-r7,pc}
@ 0x21d3b1c

.word 0x1728 @ 0x21d3b1c
.word 0xf6c @ 0x21d3b20
.word 0x1ee @ 0x21d3b24



.thumb
Function_21d3b28: @ 21d3b28 :thumb
	push    {r3-r6}
	ldr     r2, [pc, #0x30] @ 0x21d3b5c, (=#0x1728)
	mov     r1, #0x0
	str     r1, [r0, r2]
	ldr     r2, [pc, #0x2c] @ 0x21d3b60, (=#0xf6c)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	ble     branch_21d3b58
	ldr     r5, [pc, #0x20] @ 0x21d3b5c, (=#0x1728)
	mov     r3, #0xf7
	lsl     r3, r3, #4
	mov     r2, r5
	sub     r4, r3, #0x4
branch_21d3b42: @ 21d3b42 :thumb
	ldr     r6, [r0, r2]
	lsl     r6, r6, #2
	add     r6, r0, r6
	str     r1, [r6, r3]
	ldr     r6, [r0, r5]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r6, [r0, r5]
	ldr     r6, [r0, r4]
	cmp     r1, r6
	blt     branch_21d3b42
branch_21d3b58: @ 21d3b58 :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d3b5c

.word 0x1728 @ 0x21d3b5c
.word 0xf6c @ 0x21d3b60



.thumb
Function_21d3b64: @ 21d3b64 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	cmp     r5, #0x2f
	blt     branch_21d3b76
	bl      Function_2022974
branch_21d3b76: @ 21d3b76 :thumb
	bl      Function_20989b8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	add     r1, sp, #0x8
	add     r5, #0xb
	str     r1, [sp, #0x4]
	mov     r1, r5
	mov     r3, r6
	bl      Function_2007068
	ldr     r1, [sp, #0x8]
	lsr     r1, r1, #1
	str     r1, [r4, #0x0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d3b96


.align 2, 0
.thumb
Function_21d3b98: @ 21d3b98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x10]
	mov     r7, r2
	mov     r4, #0x0
	str     r3, [sp, #0x14]
	ldr     r0, [sp, #0x34]
	cmp     r5, #0x5
	bhi     branch_21d3c06
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r4, r3, #0
	lsl     r0, r5, #0
	lsl     r4, r6, #0
	lsl     r0, r0, #1
	mov     r6, r4
	b       branch_21d3c0a
@ 0x21d3bc8


.incbin "./baserom/overlay/overlay_0021.bin", 0x2e48, 0x21d3c06 - 0x21d3bc8


.thumb
branch_21d3c06: @ 21d3c06 :thumb
	bl      Function_2022974
branch_21d3c0a: @ 21d3c0a :thumb
	cmp     r6, #0x0
	beq     branch_21d3c32
	ldr     r0, [sp, #0x14]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r3, [sp, #0x18]
	bl      Function_21d39e4
	mov     r0, r6
	bl      Function_20181c4
	add     sp, #0x1c
	pop     {r4-r7,pc}

branch_21d3c32: @ 21d3c32 :thumb
	ldr     r2, [sp, #0x30]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r0, [sp, #0x30]
	str     r0, [r7, #0x0]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d3c46


.align 2, 0
.thumb
Function_21d3c48: @ 21d3c48 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	str     r3, [sp, #0x10]
	ldr     r0, [sp, #0x34]
	cmp     r5, #0x9
	bhi     branch_21d3cea
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r4, #0
	lsl     r6, r5, #0
	lsl     r2, r7, #0
	lsl     r6, r0, #1
	lsl     r2, r2, #1
	lsl     r6, r3, #1
	lsl     r2, r5, #1
	lsl     r6, r6, #1
	mov     r4, #0x0
	b       branch_21d3cee
@ 0x21d3c7e


.incbin "./baserom/overlay/overlay_0021.bin", 0x2efe, 0x21d3cea - 0x21d3c7e


.thumb
branch_21d3cea: @ 21d3cea :thumb
	bl      Function_2022974
branch_21d3cee: @ 21d3cee :thumb
	cmp     r4, #0x0
	beq     branch_21d3d16
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21d39e4
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d3d16: @ 21d3d16 :thumb
	ldr     r2, [sp, #0x30]
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r0, [sp, #0x30]
	str     r0, [r6, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3d2a


.align 2, 0
.thumb
Function_21d3d2c: @ 21d3d2c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	str     r3, [sp, #0x10]
	ldr     r0, [sp, #0x34]
	cmp     r5, #0x11
	bhi     branch_21d3e3e
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r6, #0
	lsl     r6, r7, #0
	lsl     r2, r1, #1
	lsl     r6, r2, #1
	lsl     r2, r4, #1
	lsl     r6, r5, #1
	lsl     r2, r7, #1
	lsl     r6, r0, #2
	lsl     r2, r2, #2
	lsl     r6, r3, #2
	lsl     r2, r5, #2
	lsl     r6, r6, #2
	lsl     r2, r0, #3
	lsl     r6, r1, #3
	lsl     r2, r3, #3
	lsl     r6, r4, #3
	mov     r4, #0x0
	b       branch_21d3e42
@ 0x21d3d72


.incbin "./baserom/overlay/overlay_0021.bin", 0x2ff2, 0x21d3e3e - 0x21d3d72


.thumb
branch_21d3e3e: @ 21d3e3e :thumb
	bl      Function_2022974
branch_21d3e42: @ 21d3e42 :thumb
	cmp     r4, #0x0
	beq     branch_21d3e6a
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21d39e4
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d3e6a: @ 21d3e6a :thumb
	ldr     r2, [sp, #0x30]
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r0, [sp, #0x30]
	str     r0, [r6, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3e7e


.align 2, 0
.thumb
Function_21d3e80: @ 21d3e80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	str     r3, [sp, #0x10]
	ldr     r0, [sp, #0x34]
	cmp     r5, #0xe
	bhi     branch_21d3f68
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r5, #0
	lsl     r0, r7, #0
	lsl     r4, r0, #1
	lsl     r0, r2, #1
	lsl     r4, r3, #1
	lsl     r0, r5, #1
	lsl     r4, r6, #1
	lsl     r0, r0, #2
	lsl     r4, r1, #2
	lsl     r0, r3, #2
	lsl     r4, r4, #2
	lsl     r0, r6, #2
	lsl     r4, r7, #2
	mov     r4, #0x0
	b       branch_21d3f6c
@ 0x21d3ec0


.incbin "./baserom/overlay/overlay_0021.bin", 0x3140, 0x21d3f68 - 0x21d3ec0


.thumb
branch_21d3f68: @ 21d3f68 :thumb
	bl      Function_2022974
branch_21d3f6c: @ 21d3f6c :thumb
	cmp     r4, #0x0
	beq     branch_21d3f94
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21d39e4
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d3f94: @ 21d3f94 :thumb
	ldr     r2, [sp, #0x30]
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldr     r0, [sp, #0x30]
	str     r0, [r6, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3fa8


.thumb
Function_21d3fa8: @ 21d3fa8 :thumb
	push    {r3-r6}
	mov     r3, #0x0
	str     r3, [r1, #0x0]
	ldr     r4, [pc, #0x2c] @ 0x21d3fdc, (=#0xf6c)
	str     r3, [r2, #0x0]
	ldr     r4, [r0, r4]
	cmp     r4, #0x0
	ble     branch_21d3fd8
	ldr     r5, [pc, #0x20] @ 0x21d3fdc, (=#0xf6c)
	mov     r4, r0
branch_21d3fbc: @ 21d3fbc :thumb
	ldr     r6, [r4, #0x4]
	cmp     r6, #0x2
	bne     branch_21d3fc8
	ldr     r6, [r2, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r6, [r2, #0x0]
branch_21d3fc8: @ 21d3fc8 :thumb
	ldr     r6, [r1, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r6, [r1, #0x0]
	ldr     r6, [r0, r5]
	add     r4, #0x8
	cmp     r3, r6
	blt     branch_21d3fbc
branch_21d3fd8: @ 21d3fd8 :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d3fdc

.word 0xf6c @ 0x21d3fdc



.thumb
Function_21d3fe0: @ 21d3fe0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x48
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d3ff2
	bl      Function_2022974
branch_21d3ff2: @ 21d3ff2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x48
	blx     Function_20d5124
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x44]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4006


.incbin "./baserom/overlay/overlay_0021.bin", 0x3286, 0x21d4198 - 0x21d4006


.thumb
Function_21d4198: @ 21d4198 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d41a2
	bl      Function_2022974
branch_21d41a2: @ 21d41a2 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21d41a8


.thumb
Function_21d41a8: @ 21d41a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d41b2
	bl      Function_2022974
branch_21d41b2: @ 21d41b2 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x5
	bne     branch_21d41bc
	mov     r0, #0x1
	pop     {r4,pc}

branch_21d41bc: @ 21d41bc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d41c0


.incbin "./baserom/overlay/overlay_0021.bin", 0x3440, 0x21d423c - 0x21d41c0


.thumb
Function_21d423c: @ 21d423c :thumb
	push    {r4,lr}
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d424c
	bl      Function_2022974
branch_21d424c: @ 21d424c :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d426a


.align 2, 0
.thumb
Function_21d426c: @ 21d426c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x0
	bne     branch_21d427c
	bl      Function_2022974
branch_21d427c: @ 21d427c :thumb
	str     r4, [r5, #0x0]
	str     r6, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x21d4282


.incbin "./baserom/overlay/overlay_0021.bin", 0x3502, 0x21d4340 - 0x21d4282


.thumb
Function_21d4340: @ 21d4340 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21d43a0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r2, #0
	lsl     r6, r4, #0
	lsl     r0, r7, #0
	ldr     r0, [r2, #0x4]
	bl      Function_21d4198
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d43a4
@ 0x21d436e


.incbin "./baserom/overlay/overlay_0021.bin", 0x35ee, 0x21d43a0 - 0x21d436e


.thumb
branch_21d43a0: @ 21d43a0 :thumb
	bl      Function_2022974
branch_21d43a4: @ 21d43a4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d43a8


.thumb
Function_21d43a8: @ 21d43a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r4, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d43c0
	cmp     r0, #0x1
	beq     branch_21d43e0
	cmp     r0, #0x2
	beq     branch_21d441e
	b       branch_21d4428

branch_21d43c0: @ 21d43c0 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_21d4198
	ldr     r0, [r4, #0x4]
	bl      Function_21d4198
	ldr     r0, [r4, #0x8]
	bl      Function_21d4198
	ldr     r0, [r4, #0xc]
	bl      Function_21d4198
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d442c

branch_21d43e0: @ 21d43e0 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_21d41a8
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_21d41a8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_21d41a8
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	bl      Function_21d41a8
	str     r0, [sp, #0xc]
	mov     r1, #0x0
	add     r2, sp, #0x0
branch_21d4404: @ 21d4404 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x0
	beq     branch_21d4412
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x4
	blt     branch_21d4404
branch_21d4412: @ 21d4412 :thumb
	cmp     r1, #0x4
	blt     branch_21d442c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d442c

branch_21d441e: @ 21d441e :thumb
	ldr     r1, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_21d4428: @ 21d4428 :thumb
	bl      Function_2022974
branch_21d442c: @ 21d442c :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d4432


.align 2, 0
.thumb
Function_21d4434: @ 21d4434 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r4, [r5, #0x8]
	cmp     r0, #0x3
	bls     branch_21d4444
	b       branch_21d454c

branch_21d4444: @ 21d4444 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r4, #0
	lsl     r4, r4, #1
	lsl     r4, r2, #2
	ldr     r0, [r4, #0x0]
	bl      Function_21d4198
	ldr     r0, [r4, #0x4]
	bl      Function_21d4198
	ldr     r0, [r4, #0x8]
	bl      Function_21d4198
	ldr     r0, [r4, #0xc]
	bl      Function_21d4198
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d4550
@ 0x21d4478


.incbin "./baserom/overlay/overlay_0021.bin", 0x36f8, 0x21d454c - 0x21d4478


.thumb
branch_21d454c: @ 21d454c :thumb
	bl      Function_2022974
branch_21d4550: @ 21d4550 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d4556


.align 2, 0
.thumb
Function_21d4558: @ 21d4558 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r4, [r5, #0x8]
	cmp     r0, #0x3
	bhi     branch_21d461c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r3, #0
	lsl     r0, r1, #1
	lsl     r4, r4, #1
	ldr     r0, [r4, #0x0]
	bl      Function_21d4198
	ldr     r0, [r4, #0x4]
	bl      Function_21d4198
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d4620
@ 0x21d458e


.incbin "./baserom/overlay/overlay_0021.bin", 0x380e, 0x21d461c - 0x21d458e


.thumb
branch_21d461c: @ 21d461c :thumb
	bl      Function_2022974
branch_21d4620: @ 21d4620 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d4626


.incbin "./baserom/overlay/overlay_0021.bin", 0x38a6, 0x21d4660 - 0x21d4626


.thumb
Function_21d4660: @ 21d4660 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_21d466e
	bl      Function_2022974
branch_21d466e: @ 21d466e :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x21d467a


.align 2, 0
.thumb
Function_21d467c: @ 21d467c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x7c] @ 0x21d4700, (=Function_21d4434+1)
	str     r3, [r6, #0x0]
	str     r1, [r6, #0x4]
	mov     r1, #0x30
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4696
	bl      Function_2022974
branch_21d4696: @ 21d4696 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d1314
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d1328
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_21d133c
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d1350
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_21d1364
	str     r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_21d1378
	str     r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d1410
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d1430
	str     r0, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x2c]
	str     r4, [r6, #0x10]
	pop     {r4-r6,pc}
@ 0x21d46fe

.align 2
.word Function_21d4434+1 @ 0x21d4700



.thumb
Function_21d4704: @ 21d4704 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x4c] @ 0x21d4758, (=Function_21d43a8+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x14
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d471e
	bl      Function_2022974
branch_21d471e: @ 21d471e :thumb
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
branch_21d4724: @ 21d4724 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d4724
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d1314
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1328
	str     r0, [r4, #0xc]
	mov     r0, r6
	bl      Function_21d13dc
	str     r0, [r4, #0x10]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4758

.word Function_21d43a8+1 @ 0x21d4758



.thumb
Function_21d475c: @ 21d475c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x88] @ 0x21d47ec, (=Function_21d4434+1)
	str     r3, [r6, #0x0]
	str     r1, [r6, #0x4]
	mov     r1, #0x30
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4776
	bl      Function_2022974
branch_21d4776: @ 21d4776 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d1314
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d1328
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_21d133c
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d1350
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_21d1364
	str     r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_21d1378
	str     r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d1410
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d1430
	str     r0, [r4, #0x24]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0x2c]
	str     r4, [r6, #0x10]
	pop     {r4-r6,pc}
@ 0x21d47ec

.word Function_21d4434+1 @ 0x21d47ec



.thumb
Function_21d47f0: @ 21d47f0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x7c] @ 0x21d4874, (=#Function_21d4434+1)
	str     r3, [r6, #0x0]
	str     r1, [r6, #0x4]
	mov     r1, #0x30
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d480a
	bl      Function_2022974
branch_21d480a: @ 21d480a :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d1314
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d1328
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_21d133c
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d1350
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_21d1364
	str     r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_21d1378
	str     r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d1410
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d1430
	str     r0, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x2c]
	str     r4, [r6, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4872

.align 2
.word Function_21d4434+1 @ 0x21d4874



.thumb
Function_21d4878: @ 21d4878 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x21d48b4, (=Function_21d4340+1)
	str     r3, [r5, #0x0]
	mov     r6, r1
	str     r0, [r5, #0x4]
	mov     r0, r2
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4894
	bl      Function_2022974
branch_21d4894: @ 21d4894 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d48b2

.align 2
.word Function_21d4340+1 @ 0x21d48b4



.thumb
Function_21d48b8: @ 21d48b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x58] @ 0x21d4918, (=Function_21d4558+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x18
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d48d2
	bl      Function_2022974
branch_21d48d2: @ 21d48d2 :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d48d8: @ 21d48d8 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d48d8
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1350
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4918

.word Function_21d4558+1 @ 0x21d4918



.thumb
Function_21d491c: @ 21d491c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x58] @ 0x21d497c, (=Function_21d4558+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x18
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4936
	bl      Function_2022974
branch_21d4936: @ 21d4936 :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d493c: @ 21d493c :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d493c
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1350
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d497c

.word Function_21d4558+1 @ 0x21d497c



.thumb
Function_21d4980: @ 21d4980 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x58] @ 0x21d49e0, (=#Function_21d4558+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x18
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d499a
	bl      Function_2022974
branch_21d499a: @ 21d499a :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d49a0: @ 21d49a0 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d49a0
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1350
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d49e0

.word Function_21d4558+1 @ 0x21d49e0



.thumb
Function_21d49e4: @ 21d49e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x4c] @ 0x21d4a38, (=Function_21d4340+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0xc
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d49fe
	bl      Function_2022974
branch_21d49fe: @ 21d49fe :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4a36

.align 2
.word Function_21d4340+1 @ 0x21d4a38



.thumb
Function_21d4a3c: @ 21d4a3c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x4c] @ 0x21d4a90, (=#0x21d4341)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0xc
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4a56
	bl      Function_2022974
branch_21d4a56: @ 21d4a56 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	mov     r1, #0x9
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4a8e

.align 2
.word Function_21d4340+1 @ 0x21d4a90



.thumb
Function_21d4a94: @ 21d4a94 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x58] @ 0x21d4af4, (=Function_21d4558+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x18
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4aae
	bl      Function_2022974
branch_21d4aae: @ 21d4aae :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d4ab4: @ 21d4ab4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d4ab4
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1350
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4af4

.word Function_21d4558+1 @ 0x21d4af4



.thumb
Function_21d4af8: @ 21d4af8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x4c] @ 0x21d4b4c, (=Function_21d4340+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0xc
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4b12
	bl      Function_2022974
branch_21d4b12: @ 21d4b12 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4b4a

.align 2
.word Function_21d4340+1 @ 0x21d4b4c



.thumb
Function_21d4b50: @ 21d4b50 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x58] @ 0x21d4bb0, (=Function_21d4558+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0x18
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4b6a
	bl      Function_2022974
branch_21d4b6a: @ 21d4b6a :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d4b70: @ 21d4b70 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d4b70
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_21d1300
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_21d1350
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4bb0

.word Function_21d4558+1 @ 0x21d4bb0



.thumb
Function_21d4bb4: @ 21d4bb4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x4c] @ 0x21d4c08, (=Function_21d4340+1)
	str     r3, [r5, #0x0]
	str     r1, [r5, #0x4]
	mov     r1, #0xc
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4bce
	bl      Function_2022974
branch_21d4bce: @ 21d4bce :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r6
	bl      Function_21d12ec
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d133c
	str     r0, [r4, #0x8]
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	str     r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x21d4c06

.align 2
.word Function_21d4340+1 @ 0x21d4c08



.thumb
Function_21d4c0c: @ 21d4c0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d4c20
	bl      Function_2022974
branch_21d4c20: @ 21d4c20 :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21d4c26: @ 21d4c26 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d4c26
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0xc]
	bl      Function_2012744
	str     r0, [r4, #0x0]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #4
	bl      Function_2018144
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_21d4c4c
	bl      Function_2022974
branch_21d4c4c: @ 21d4c4c :thumb
	ldr     r2, [r5, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0x14]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4c6c


.incbin "./baserom/overlay/overlay_0021.bin", 0x3eec, 0x21d4ca0 - 0x21d4c6c


.thumb
Function_21d4ca0: @ 21d4ca0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	bl      Function_2012898
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d4cb8
	pop     {r4,pc}
@ 0x21d4cb8


.thumb
Function_21d4cb8: @ 21d4cb8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	bl      Function_21d4eb4
	mov     r4, r0
	bne     branch_21d4cce
	bl      Function_2022974
branch_21d4cce: @ 21d4cce :thumb
	ldr     r2, [r5, #0x20]
	mov     r0, r6
	mov     r1, #0x1
	add     r3, r4, #0x4
	bl      Function_201ed94
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x14]
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x18]
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x1c]
	str     r0, [sp, #0x24]
	ldr     r0, [r5, #0x20]
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x24]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x0
	bl      Function_20127e8
	str     r0, [r4, #0x0]
	mov     r0, r4
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x21d4d1c


.thumb
Function_21d4d1c: @ 21d4d1c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2012870
	add     r0, r4, #0x4
	bl      Function_201ee28
	mov     r1, #0x10
	mov     r0, #0x0
branch_21d4d30: @ 21d4d30 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d4d30
	pop     {r4,pc}
@ 0x21d4d3a


.incbin "./baserom/overlay/overlay_0021.bin", 0x3fba, 0x21d4d6c - 0x21d4d3a


.thumb
Function_21d4d6c: @ 21d4d6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r4, r1
	mov     r1, #0x1
	mov     r6, r2
	bl      Function_201a778
	mov     r7, r0
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_201a870
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4da0


.thumb
Function_21d4da0: @ 21d4da0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4da8, (=Function_201a928+1)
	mov     r1, #0x1
	bx      r3
@ 0x21d4da6

.align 2
.word Function_201a928+1 @ 0x21d4da8



.thumb
Function_21d4dac: @ 21d4dac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r3
	mov     r6, r1
	ldr     r3, [r5, #0x14]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r5, r0
	bne     branch_21d4dc8
	bl      Function_2022974
branch_21d4dc8: @ 21d4dc8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_200b1ec
	mov     r4, r0
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x21d4e0c, (=#0x30201)
	mov     r1, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, #0x2
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r6, r0
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r6
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d4e0c

.word 0x30201 @ 0x21d4e0c



.thumb
Function_21d4e10: @ 21d4e10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r6, r3
	mov     r5, r1
	ldr     r3, [r4, #0x14]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r4, r0
	bne     branch_21d4e2c
	bl      Function_2022974
branch_21d4e2c: @ 21d4e2c :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_200b1ec
	mov     r7, r0
	mov     r0, #0x2
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r6, r0
	mov     r0, r5
	bl      Function_201c294
	lsl     r0, r0, #3
	mov     r1, #0x0
	sub     r3, r0, r6
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d4e7c, (=#0x30201)
	mov     r2, r7
	str     r0, [sp, #0x8]
	mov     r0, r5
	lsr     r5, r3, #31
	add     r5, r3, r5
	str     r1, [sp, #0xc]
	mov     r1, #0x2
	asr     r3, r5, #1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_200b190
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d4e7a

.align 2
.word 0x30201 @ 0x21d4e7c


.incbin "./baserom/overlay/overlay_0021.bin", 0x4100, 0x21d4ea4 - 0x21d4e80


.thumb
Function_21d4ea4: @ 21d4ea4 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d4eae
	mov     r0, #0x1
	bx      lr

branch_21d4eae: @ 21d4eae :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d4eb2


.align 2, 0
.thumb
Function_21d4eb4: @ 21d4eb4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d4ee0
	mov     r4, r6
branch_21d4ec2: @ 21d4ec2 :thumb
	ldr     r0, [r5, #0xc]
	add     r0, r0, r4
	bl      Function_21d4ea4
	cmp     r0, #0x0
	bne     branch_21d4ed6
	ldr     r1, [r5, #0xc]
	lsl     r0, r6, #4
	add     r0, r1, r0
	pop     {r4-r6,pc}

branch_21d4ed6: @ 21d4ed6 :thumb
	ldr     r0, [r5, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	blt     branch_21d4ec2
branch_21d4ee0: @ 21d4ee0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d4ee4


.thumb
Function_21d4ee4: @ 21d4ee4 :thumb
	push    {r3,lr}
	mov     r1, #0x14
	bl      Function_2018144
	mov     r3, r0
	mov     r2, #0x14
	mov     r1, #0x0
branch_21d4ef2: @ 21d4ef2 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d4ef2
	pop     {r3,pc}
@ 0x21d4efc


.thumb
Function_21d4efc: @ 21d4efc :thumb
	ldr     r3, [pc, #0x0] @ 0x21d4f00, (=Function_20181c4+1)
	bx      r3
@ 0x21d4f00

.word Function_20181c4+1 @ 0x21d4f00



.thumb
Function_21d4f04: @ 21d4f04 :thumb
	push    {r3-r6}
	mov     r6, r0
	mov     r5, #0x14
	mov     r4, #0x0
branch_21d4f0c: @ 21d4f0c :thumb
	strb    r4, [r6, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_21d4f0c
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	str     r3, [r0, #0x8]
	pop     {r3-r6}
	bx      lr
@ 0x21d4f1e


.align 2, 0
.thumb
Function_21d4f20: @ 21d4f20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x4
	bhi     branch_21d4f7a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r2, #0
	lsl     r0, r3, #0
	lsl     r2, r5, #0
	lsl     r4, r7, #0
	mov     r1, r4
	bl      Function_21d50e0
	pop     {r3-r5,pc}
@ 0x21d4f48


.incbin "./baserom/overlay/overlay_0021.bin", 0x41c8, 0x21d4f7a - 0x21d4f48


.thumb
branch_21d4f7a: @ 21d4f7a :thumb
	pop     {r3-r5,pc}
@ 0x21d4f7c


.thumb
Function_21d4f7c: @ 21d4f7c :thumb
	ldr     r2, [r0, #0x10]
	ldr     r1, [r0, #0x4]
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [r0, #0xc]
	add     r2, r3, r1
	ldr     r1, [r0, #0x0]
	mov     r0, #0x1c
	mul     r0, r2
	add     r0, r1, r0
	ldr     r0, [r0, #0x18]
	bx      lr
@ 0x21d4f94


.thumb
Function_21d4f94: @ 21d4f94 :thumb
	push    {r4,r5}
	ldr     r4, [r0, #0x10]
	ldr     r3, [r0, #0x4]
	mov     r5, r4
	mul     r5, r3
	ldr     r3, [r0, #0xc]
	add     r5, r5, r3
	mov     r3, #0x1c
	mov     r4, r5
	mul     r4, r3
	ldr     r3, [r0, #0x0]
	ldr     r3, [r3, r4]
	str     r3, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	ldr     r0, [r0, #0x4]
	str     r0, [r2, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x21d4fba


.align 2, 0
.thumb
Function_21d4fbc: @ 21d4fbc :thumb
	push    {r4,r5}
	ldr     r4, [r0, #0x10]
	ldr     r3, [r0, #0x4]
	mov     r5, r4
	mul     r5, r3
	ldr     r3, [r0, #0xc]
	add     r5, r5, r3
	mov     r3, #0x1c
	mov     r4, r5
	mul     r4, r3
	ldr     r3, [r0, #0x0]
	add     r3, r3, r4
	ldr     r3, [r3, #0x8]
	str     r3, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	ldr     r0, [r0, #0xc]
	str     r0, [r2, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x21d4fe4


.thumb
Function_21d4fe4: @ 21d4fe4 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	ldr     r1, [sp, #0x0]
	str     r3, [r0, #0x8]
	str     r1, [r0, #0xc]
	ldr     r1, [sp, #0x4]
	str     r1, [r0, #0x10]
	ldr     r1, [sp, #0x8]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0xc]
	str     r1, [r0, #0x18]
	bx      lr
@ 0x21d4ffc


.thumb
Function_21d4ffc: @ 21d4ffc :thumb
	push    {r3-r6}
	ldr     r4, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21d5008
	cmp     r0, #0x2
	bne     branch_21d5014
branch_21d5008: @ 21d5008 :thumb
	ldr     r6, [sp, #0x14]
	lsr     r5, r6, #31
	add     r5, r6, r5
	asr     r5, r5, #1
	sub     r3, r3, r5
	b       branch_21d501e

branch_21d5014: @ 21d5014 :thumb
	ldr     r6, [sp, #0x14]
	lsr     r5, r6, #31
	add     r5, r6, r5
	asr     r5, r5, #1
	add     r3, r3, r5
branch_21d501e: @ 21d501e :thumb
	cmp     r0, #0x1
	bhi     branch_21d502e
	ldr     r5, [sp, #0x18]
	lsr     r0, r5, #31
	add     r0, r5, r0
	asr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_21d5038

branch_21d502e: @ 21d502e :thumb
	ldr     r5, [sp, #0x18]
	lsr     r0, r5, #31
	add     r0, r5, r0
	asr     r0, r0, #1
	add     r4, r4, r0
branch_21d5038: @ 21d5038 :thumb
	str     r3, [r1, #0x0]
	str     r4, [r2, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x21d5040


.thumb
Function_21d5040: @ 21d5040 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d5056
	cmp     r4, #0x1
	beq     branch_21d5056
	bl      Function_2022974
branch_21d5056: @ 21d5056 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1c
branch_21d505a: @ 21d505a :thumb
	add     r0, r0, r4
	bmi     branch_21d507a
	ldr     r2, [r5, #0x4]
	cmp     r0, r2
	bge     branch_21d507a
	ldr     r3, [r5, #0x10]
	ldr     r2, [r5, #0x4]
	mul     r2, r3
	add     r6, r2, r0
	mov     r2, r6
	ldr     r3, [r5, #0x0]
	mul     r2, r1
	add     r6, r3, r2
	ldr     r2, [r6, #0x10]
	cmp     r2, #0x2
	beq     branch_21d505a
branch_21d507a: @ 21d507a :thumb
	cmp     r0, #0x0
	blt     branch_21d508c
	ldr     r1, [r5, #0x4]
	cmp     r0, r1
	bge     branch_21d508c
	ldr     r1, [r6, #0x10]
	cmp     r1, #0x0
	bne     branch_21d508c
	str     r0, [r5, #0xc]
branch_21d508c: @ 21d508c :thumb
	pop     {r4-r6,pc}
@ 0x21d508e


.incbin "./baserom/overlay/overlay_0021.bin", 0x430e, 0x21d50e0 - 0x21d508e


.thumb
Function_21d50e0: @ 21d50e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	cmp     r1, #0x0
	bge     branch_21d50ec
	neg     r5, r1
	b       branch_21d50ee

branch_21d50ec: @ 21d50ec :thumb
	mov     r5, r1
branch_21d50ee: @ 21d50ee :thumb
	mov     r0, r1
	mov     r1, r5
	blx     Division
	mov     r7, r0
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_21d510c
branch_21d50fe: @ 21d50fe :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d5040
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_21d50fe
branch_21d510c: @ 21d510c :thumb
	pop     {r3-r7,pc}
@ 0x21d510e


.incbin "./baserom/overlay/overlay_0021.bin", 0x438e, 0x21d517c - 0x21d510e


.thumb
Function_21d517c: @ 21d517c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x5c]
	str     r2, [sp, #0x18]
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x5c]
	mov     r0, #0x0
	str     r3, [sp, #0x1c]
	add     r1, sp, #0x48
	str     r0, [sp, #0x38]
	ldrb    r0, [r1, #0x1c]
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	ble     branch_21d5210
	ldr     r0, [sp, #0x38]
	ldrb    r6, [r1, #0x10]
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x30]
	ldrh    r0, [r1, #0x24]
	str     r0, [sp, #0x2c]
	ldrh    r0, [r1, #0x20]
	str     r0, [sp, #0x28]
	ldrb    r0, [r1, #0x18]
	str     r0, [sp, #0x24]
branch_21d51ae: @ 21d51ae :thumb
	ldr     r0, [sp, #0x24]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_21d51f6
	ldr     r1, [sp, #0x5c]
	ldr     r0, [sp, #0x30]
	mov     r4, r7
	add     r5, r1, r0
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x34]
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x3c]
branch_21d51ca: @ 21d51ca :thumb
	str     r6, [sp, #0x0]
	ldrb    r0, [r5, #0x0]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	add     r0, r0, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	bl      Function_21d5248
	ldr     r0, [sp, #0x24]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r7, r0
	blt     branch_21d51ca
branch_21d51f6: @ 21d51f6 :thumb
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x30]
	add     r0, r0, r6
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x38]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x20]
	str     r1, [sp, #0x38]
	cmp     r1, r0
	blt     branch_21d51ae
branch_21d5210: @ 21d5210 :thumb
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x21d5214


.thumb
Function_21d5214: @ 21d5214 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_21d5244
branch_21d5224: @ 21d5224 :thumb
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_21d523e
branch_21d522a: @ 21d522a :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r6
	mov     r3, r5
	str     r7, [sp, #0x0]
	bl      Function_21d52a0
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_21d522a
branch_21d523e: @ 21d523e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r7
	blt     branch_21d5224
branch_21d5244: @ 21d5244 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d5248


.thumb
Function_21d5248: @ 21d5248 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r1, [sp, #0x1c]
	ldr     r1, [sp, #0x3c]
	str     r0, [sp, #0x18]
	mov     r5, r2
	mov     r6, r3
	cmp     r1, #0x0
	beq     branch_21d529c
	ldr     r0, [sp, #0x38]
	mov     r4, r1
	mul     r4, r0
	mov     r0, r4
	mov     r1, r5
	blx     Division
	mov     r7, r0
	mov     r0, r4
	mov     r1, r5
	blx     Division
	str     r5, [sp, #0x0]
	mov     r4, r1
	str     r6, [sp, #0x4]
	add     r0, sp, #0x28
	ldrb    r1, [r0, #0x18]
	lsl     r2, r4, #16
	lsl     r3, r7, #16
	str     r1, [sp, #0x8]
	ldrb    r0, [r0, #0x1c]
	ldr     r1, [sp, #0x1c]
	lsr     r2, r2, #16
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x38]
	lsr     r3, r3, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	bl      Function_201addc
branch_21d529c: @ 21d529c :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d52a0

.thumb
Function_21d52a0: @ 21d52a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r2
	mov     r6, r1
	mov     r1, r7
	mul     r1, r3
	mov     r4, r0
	add     r5, r6, r1
	ldrb    r1, [r4, r5]
	cmp     r1, #0x0
	bne     branch_21d52ce
	ldr     r1, [sp, #0x20]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r1, sp, #0x8
	mov     r2, r6
	mov     r3, r7
	bl      Function_21d5304
	ldr     r0, [sp, #0x8]
	bl      Function_21d5424
	strb    r0, [r4, r5]
branch_21d52ce: @ 21d52ce :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d52d2


.align 2, 0
.thumb
Function_21d52d4: @ 21d52d4 :thumb
	push    {r3,r4}
	cmp     r1, #0x0
	blt     branch_21d52de
	cmp     r1, r3
	blt     branch_21d52e6
branch_21d52de: @ 21d52de :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3,r4}
	bx      lr

branch_21d52e6: @ 21d52e6 :thumb
	cmp     r2, #0x0
	blt     branch_21d52f0
	ldr     r4, [sp, #0x8]
	cmp     r2, r4
	blt     branch_21d52f8
branch_21d52f0: @ 21d52f0 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3,r4}
	bx      lr

branch_21d52f8: @ 21d52f8 :thumb
	mul     r3, r2
	add     r1, r1, r3
	ldrb    r0, [r0, r1]
	pop     {r3,r4}
	bx      lr
@ 0x21d5302


.align 2, 0
.thumb
Function_21d5304: @ 21d5304 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [sp, #0x20]
	mov     r6, r2
	str     r1, [sp, #0x20]
	mov     r7, r3
	mov     r1, #0x0
	str     r1, [r5, #0x0]
	ldr     r4, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	mov     r1, r6
	sub     r2, r7, #0x1
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d5332
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d5332: @ 21d5332 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r6
	add     r2, r7, #0x1
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d534c
	ldr     r1, [r5, #0x0]
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d534c: @ 21d534c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	sub     r1, r6, #0x1
	mov     r2, r7
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d5366
	ldr     r1, [r5, #0x0]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d5366: @ 21d5366 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	add     r1, r6, #0x1
	mov     r2, r7
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d5380
	ldr     r1, [r5, #0x0]
	mov     r0, #0x8
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d5380: @ 21d5380 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	tst     r1, r0
	bne     branch_21d53a8
	mov     r1, #0x4
	tst     r0, r1
	bne     branch_21d53a8
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	sub     r1, r6, #0x1
	sub     r2, r7, #0x1
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d53a8
	ldr     r1, [r5, #0x0]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d53a8: @ 21d53a8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	tst     r1, r0
	bne     branch_21d53d0
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_21d53d0
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	add     r1, r6, #0x1
	sub     r2, r7, #0x1
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d53d0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d53d0: @ 21d53d0 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	tst     r1, r0
	bne     branch_21d53f8
	mov     r1, #0x4
	tst     r0, r1
	bne     branch_21d53f8
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	sub     r1, r6, #0x1
	add     r2, r7, #0x1
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d53f8
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d53f8: @ 21d53f8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	tst     r1, r0
	bne     branch_21d5420
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_21d5420
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	add     r1, r6, #0x1
	add     r2, r7, #0x1
	str     r4, [sp, #0x0]
	bl      Function_21d52d4
	cmp     r0, #0x1
	bne     branch_21d5420
	ldr     r1, [r5, #0x0]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_21d5420: @ 21d5420 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d5424


.thumb
Function_21d5424: @ 21d5424 :thumb
	push    {r4,lr}
	cmp     r0, #0x84
	bgt     branch_21d54fa
	blt     branch_21d542e
	b       branch_21d55ec

branch_21d542e: @ 21d542e :thumb
	cmp     r0, #0x58
	bgt     branch_21d54e0
	blt     branch_21d5436
	b       branch_21d55c4

branch_21d5436: @ 21d5436 :thumb
	cmp     r0, #0x48
	bgt     branch_21d54d2
	blt     branch_21d543e
	b       branch_21d55f4

branch_21d543e: @ 21d543e :thumb
	cmp     r0, #0x41
	bhi     branch_21d54d8
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r5, #3
	lsl     r0, r6, #3
	lsl     r4, r6, #3
	lsl     r0, r0, #4
	lsl     r0, r7, #3
	lsl     r4, r0, #4
	lsl     r4, r1, #4
	lsl     r0, r3, #4
	lsl     r4, r7, #3
	lsl     r0, r1, #4
	lsl     r0, r2, #4
	lsl     r4, r3, #4
	lsl     r4, r2, #4
	lsl     r0, r4, #4
	lsl     r4, r4, #4
	lsl     r0, r5, #4
	lsl     r4, r5, #4
	lsl     r0, r5, #6
	lsl     r0, r2, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r4, #6
	lsl     r0, r5, #6
	lsl     r4, r0, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r6, #4
	lsl     r0, r5, #6
	lsl     r4, r2, #6
	lsl     r0, r5, #6
	lsl     r0, r3, #6
	lsl     r0, r5, #6
	lsl     r0, r0, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r4, r7, #4
	lsl     r0, r5, #6
	lsl     r4, r5, #5
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r0, r5, #6
	lsl     r4, r6, #4
	lsl     r0, r1, #6
branch_21d54d2: @ 21d54d2 :thumb
	cmp     r0, #0x49
	bgt     branch_21d54da
	beq     branch_21d55cc
branch_21d54d8: @ 21d54d8 :thumb
	b       branch_21d55f8

branch_21d54da: @ 21d54da :thumb
	cmp     r0, #0x50
	beq     branch_21d5590
	b       branch_21d55f8

branch_21d54e0: @ 21d54e0 :thumb
	cmp     r0, #0x70
	bgt     branch_21d54ec
	bge     branch_21d55a4
	cmp     r0, #0x60
	beq     branch_21d5598
	b       branch_21d55f8

branch_21d54ec: @ 21d54ec :thumb
	cmp     r0, #0x80
	bgt     branch_21d54f4
	beq     branch_21d5588
	b       branch_21d55f8

branch_21d54f4: @ 21d54f4 :thumb
	cmp     r0, #0x81
	beq     branch_21d55dc
	b       branch_21d55f8

branch_21d54fa: @ 21d54fa :thumb
	cmp     r0, #0xb0
	bgt     branch_21d551a
	bge     branch_21d55a8
	cmp     r0, #0x90
	bgt     branch_21d550c
	bge     branch_21d5594
	cmp     r0, #0x85
	beq     branch_21d55c8
	b       branch_21d55f8

branch_21d550c: @ 21d550c :thumb
	cmp     r0, #0xa0
	bgt     branch_21d5514
	beq     branch_21d559c
	b       branch_21d55f8

branch_21d5514: @ 21d5514 :thumb
	cmp     r0, #0xa4
	beq     branch_21d55c0
	b       branch_21d55f8

branch_21d551a: @ 21d551a :thumb
	cmp     r0, #0xd0
	bgt     branch_21d552e
	bge     branch_21d55ac
	cmp     r0, #0xc0
	bgt     branch_21d5528
	beq     branch_21d55a0
	b       branch_21d55f8

branch_21d5528: @ 21d5528 :thumb
	cmp     r0, #0xc1
	beq     branch_21d55b8
	b       branch_21d55f8

branch_21d552e: @ 21d552e :thumb
	cmp     r0, #0xe0
	bgt     branch_21d5536
	beq     branch_21d55b0
	b       branch_21d55f8

branch_21d5536: @ 21d5536 :thumb
	cmp     r0, #0xf0
	beq     branch_21d55b4
	b       branch_21d55f8
@ 0x21d553c


.incbin "./baserom/overlay/overlay_0021.bin", 0x47bc, 0x21d5588 - 0x21d553c


.thumb
branch_21d5588: @ 21d5588 :thumb
	mov     r4, #0x14
	b       branch_21d55fc
@ 0x21d558c


.incbin "./baserom/overlay/overlay_0021.bin", 0x480c, 0x21d5590 - 0x21d558c


.thumb
branch_21d5590: @ 21d5590 :thumb
	mov     r4, #0x16
	b       branch_21d55fc

branch_21d5594: @ 21d5594 :thumb
	mov     r4, #0x17
	b       branch_21d55fc

branch_21d5598: @ 21d5598 :thumb
	mov     r4, #0x18
	b       branch_21d55fc

branch_21d559c: @ 21d559c :thumb
	mov     r4, #0x19
	b       branch_21d55fc

branch_21d55a0: @ 21d55a0 :thumb
	mov     r4, #0x1a
	b       branch_21d55fc

branch_21d55a4: @ 21d55a4 :thumb
	mov     r4, #0x1b
	b       branch_21d55fc

branch_21d55a8: @ 21d55a8 :thumb
	mov     r4, #0x1c
	b       branch_21d55fc

branch_21d55ac: @ 21d55ac :thumb
	mov     r4, #0x1d
	b       branch_21d55fc

branch_21d55b0: @ 21d55b0 :thumb
	mov     r4, #0x1e
	b       branch_21d55fc

branch_21d55b4: @ 21d55b4 :thumb
	mov     r4, #0x1f
	b       branch_21d55fc

branch_21d55b8: @ 21d55b8 :thumb
	mov     r4, #0x20
	b       branch_21d55fc
@ 0x21d55bc


.incbin "./baserom/overlay/overlay_0021.bin", 0x483c, 0x21d55c0 - 0x21d55bc


.thumb
branch_21d55c0: @ 21d55c0 :thumb
	mov     r4, #0x22
	b       branch_21d55fc

branch_21d55c4: @ 21d55c4 :thumb
	mov     r4, #0x23
	b       branch_21d55fc

branch_21d55c8: @ 21d55c8 :thumb
	mov     r4, #0x24
	b       branch_21d55fc

branch_21d55cc: @ 21d55cc :thumb
	mov     r4, #0x25
	b       branch_21d55fc
@ 0x21d55d0


.incbin "./baserom/overlay/overlay_0021.bin", 0x4850, 0x21d55dc - 0x21d55d0


.thumb
branch_21d55dc: @ 21d55dc :thumb
	mov     r4, #0x29
	b       branch_21d55fc
@ 0x21d55e0


.incbin "./baserom/overlay/overlay_0021.bin", 0x4860, 0x21d55ec - 0x21d55e0


.thumb
branch_21d55ec: @ 21d55ec :thumb
	mov     r4, #0x2d
	b       branch_21d55fc
@ 0x21d55f0


.incbin "./baserom/overlay/overlay_0021.bin", 0x4870, 0x21d55f4 - 0x21d55f0


.thumb
branch_21d55f4: @ 21d55f4 :thumb
	mov     r4, #0x2f
	b       branch_21d55fc

branch_21d55f8: @ 21d55f8 :thumb
	bl      Function_2022974
branch_21d55fc: @ 21d55fc :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d5600


.thumb
Function_21d5600: @ 21d5600 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d5604, (=#Function_20237bc+1)
	bx      r3
@ 0x21d5604

.word Function_20237bc+1 @ 0x21d5604



.thumb
Function_21d5608: @ 21d5608 :thumb
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x8] @ 0x21d5614, (=#0x21e9cc4)
	ldr     r3, [pc, #0x8] @ 0x21d5618, (=Function_20986e8+1)
	ldrb    r0, [r0, r1]
	bx      r3
@ 0x21d5612

.align 2
.word 0x21e9cc4 @ 0x21d5614
.word Function_20986e8+1 @ 0x21d5618



.thumb
Function_21d561c: @ 21d561c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r4, r2
	add     r2, sp, #0x4
	str     r2, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	mov     r5, r0
	bl      Function_21d5764
	ldr     r2, [sp, #0x4]
	cmp     r2, #0x6
	bne     branch_21d5642
	mov     r0, r5
	mov     r1, r4
	bl      Function_200b32c
	add     sp, #0x28
	pop     {r4-r6,pc}

branch_21d5642: @ 21d5642 :thumb
	ldr     r6, [pc, #0x24] @ 0x21d5668, (=#0x21e9ccc)
	add     r5, sp, #0x10
	mov     r3, r5
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	lsl     r0, r2, #2
	ldr     r1, [sp, #0xc]
	ldr     r0, [r3, r0]
	mov     r2, r4
	str     r1, [sp, #0x4]
	bl      Function_21d5724
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x21d5666

.align 2
.word 0x21e9ccc @ 0x21d5668


.incbin "./baserom/overlay/overlay_0021.bin", 0x48ec, 0x21d5724 - 0x21d566c


.thumb
Function_21d5724: @ 21d5724 :thumb
	push    {r4-r6,lr}
	mov     r3, r0
	mov     r5, r2
	mov     r6, r1
	mov     r2, r3
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r5
	bl      Function_200b144
	mov     r4, r0
	beq     branch_21d575e
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r5
	bl      Function_2023790
	mov     r5, r0
	beq     branch_21d5754
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_200b1b8
branch_21d5754: @ 21d5754 :thumb
	mov     r0, r4
	bl      Function_200b190
	mov     r0, r5
	pop     {r4-r6,pc}

branch_21d575e: @ 21d575e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d5762


.align 2, 0
.thumb
Function_21d5764: @ 21d5764 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, r1
	mov     r4, r2
	mov     r5, r3
	ldr     r6, [sp, #0x18]
	bl      Function_20986cc
	str     r0, [r5, #0x0]
	cmp     r0, #0x6
	blt     branch_21d577e
	bl      Function_2022974
branch_21d577e: @ 21d577e :thumb
	str     r7, [r4, #0x0]
	ldr     r5, [r5, #0x0]
	cmp     r5, #0x6
	blt     branch_21d578a
	bl      Function_2022974
branch_21d578a: @ 21d578a :thumb
	cmp     r5, #0x1
	bne     branch_21d5790
	mov     r5, #0x6
branch_21d5790: @ 21d5790 :thumb
	str     r5, [r6, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d57b0, (=#0x1ed)
	cmp     r1, r0
	ble     branch_21d57a2
	cmp     r5, #0x6
	beq     branch_21d57a2
	mov     r0, #0x0
	b       branch_21d57a4

branch_21d57a2: @ 21d57a2 :thumb
	mov     r0, #0x1
branch_21d57a4: @ 21d57a4 :thumb
	cmp     r0, #0x0
	bne     branch_21d57ac
	bl      Function_2022974
branch_21d57ac: @ 21d57ac :thumb
	pop     {r3-r7,pc}
@ 0x21d57ae

.align 2
.word 0x1ed @ 0x21d57b0



.thumb
Function_21d57b4: @ 21d57b4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	cmp     r2, #0x9
	bhi     branch_21d5806
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	lsl     r0, r6, #0
	lsl     r4, r6, #0
	lsl     r0, r7, #0
	mov     r5, #0x4
	b       branch_21d5806
@ 0x21d57e2


.incbin "./baserom/overlay/overlay_0021.bin", 0x4a62, 0x21d5806 - 0x21d57e2


.thumb
branch_21d5806: @ 21d5806 :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0xbc
	add     r1, r5, r1
	bl      Function_2007068
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	lsr     r0, r0, #2
	str     r0, [r4, #0x4]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d5822


.incbin "./baserom/overlay/overlay_0021.bin", 0x4aa2, 0x21d5844 - 0x21d5822


.thumb
Function_21d5844: @ 21d5844 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d584e
	bl      Function_2022974
branch_21d584e: @ 21d584e :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d5858
	bl      Function_2022974
branch_21d5858: @ 21d5858 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d5866


.align 2, 0
.thumb
Function_21d5868: @ 21d5868 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0xbc
	mov     r2, r1
	bl      Function_2007068
	cmp     r4, #0x0
	beq     branch_21d588a
	ldr     r1, [sp, #0x8]
	lsr     r1, r1, #2
	str     r1, [r4, #0x0]
branch_21d588a: @ 21d588a :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d588e


.align 2, 0
.thumb
Function_21d5890: @ 21d5890 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r2, #0x0
	mov     r3, r0
	mov     r4, r1
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0xbc
	mov     r1, #0x2
	bl      Function_2007068
	mov     r5, r0
	cmp     r4, #0x0
	beq     branch_21d58b8
	ldr     r0, [sp, #0x8]
	mov     r1, #0x24
	blx     Function_20e2178
	str     r0, [r4, #0x0]
branch_21d58b8: @ 21d58b8 :thumb
	mov     r0, r5
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d58be


.align 2, 0
.thumb
Function_21d58c0: @ 21d58c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r1, [sp, #0x4]
	mov     r4, r3
	str     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x1]
	ldrb    r0, [r4, #0x3]
	add     r0, r1, r0
	cmp     r0, r2
	blt     branch_21d58d8
	bl      Function_2022974
branch_21d58d8: @ 21d58d8 :thumb
	ldrb    r1, [r4, #0x0]
	ldrb    r0, [r4, #0x2]
	add     r1, r1, r0
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	blt     branch_21d58e8
	bl      Function_2022974
branch_21d58e8: @ 21d58e8 :thumb
	ldrb    r7, [r4, #0x1]
	ldrb    r0, [r4, #0x3]
	add     r0, r7, r0
	cmp     r7, r0
	bge     branch_21d5942
	ldr     r0, [sp, #0x4]
	mul     r0, r7
	mov     r12, r0
branch_21d58f8: @ 21d58f8 :thumb
	ldrb    r5, [r4, #0x0]
	ldrb    r3, [r4, #0x2]
	mov     r1, r5
	add     r0, r5, r3
	cmp     r5, r0
	bge     branch_21d592e
	ldr     r2, [sp, #0x0]
	mov     r0, r12
	add     r0, r2, r0
	add     r2, r0, r5
branch_21d590c: @ 21d590c :thumb
	sub     r6, r1, r5
	ldrb    r5, [r4, #0x1]
	ldrb    r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r5, r7, r5
	mul     r5, r3
	add     r3, r4, r6
	add     r3, r5, r3
	ldrb    r3, [r3, #0x4]
	orr     r0, r3
	strb    r0, [r2, #0x0]
	ldrb    r3, [r4, #0x2]
	ldrb    r5, [r4, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, r5, r3
	cmp     r1, r0
	blt     branch_21d590c
branch_21d592e: @ 21d592e :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r12
	add     r0, r1, r0
	mov     r12, r0
	ldrb    r1, [r4, #0x1]
	ldrb    r0, [r4, #0x3]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, r1, r0
	cmp     r7, r0
	blt     branch_21d58f8
branch_21d5942: @ 21d5942 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d5946


.align 2, 0
.thumb
Function_21d5948: @ 21d5948 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	ldr     r5, [sp, #0x34]
	ldr     r0, [r0, #0x4]
	ldr     r4, [sp, #0x38]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_21d59d2
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	ldr     r7, [sp, #0x8]
	str     r0, [sp, #0x14]
branch_21d5976: @ 21d5976 :thumb
	ldr     r0, [sp, #0x30]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, r7]
	cmp     r0, #0x0
	bne     branch_21d5984
	bl      Function_2022974
branch_21d5984: @ 21d5984 :thumb
	mov     r1, #0x0
	cmp     r4, #0x0
	bls     branch_21d599c
	ldr     r0, [sp, #0x30]
	ldr     r0, [r0, #0x0]
	ldr     r2, [r0, r7]
branch_21d5990: @ 21d5990 :thumb
	ldrb    r0, [r5, r1]
	cmp     r2, r0
	beq     branch_21d599c
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r4
	bcc     branch_21d5990
branch_21d599c: @ 21d599c :thumb
	cmp     r1, r4
	bcc     branch_21d59be
	ldr     r3, [sp, #0x30]
	mov     r6, #0x24
	ldr     r3, [r3, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r3, [r3, r7]
	ldr     r1, [sp, #0x10]
	mul     r6, r3
	ldr     r3, [sp, #0x4]
	ldr     r2, [sp, #0x14]
	add     r3, r3, r6
	bl      Function_21d58c0
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
branch_21d59be: @ 21d59be :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	ldr     r0, [r0, #0x4]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	blt     branch_21d5976
branch_21d59d2: @ 21d59d2 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d59d8


.thumb
Function_21d59d8: @ 21d59d8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r4, [sp, #0x24]
	mov     r5, r0
	ldrb    r6, [r4, #0x0]
	mul     r3, r6
	add     r1, r1, r3
	str     r1, [sp, #0x0]
	ldrb    r6, [r4, #0x1]
	ldr     r3, [sp, #0x20]
	lsl     r1, r1, #12
	mul     r3, r6
	add     r2, r2, r3
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	lsl     r1, r2, #12
	str     r1, [sp, #0x4]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_21d5a12
	ldr     r1, [sp, #0x2c]
	mov     r0, r5
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}

branch_21d5a12: @ 21d5a12 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r5
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d5a1e


.align 2, 0
.thumb
Function_21d5a20: @ 21d5a20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r12, r0
	ldr     r0, [sp, #0x40]
	ldr     r7, [sp, #0x50]
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x44]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x48]
	str     r2, [sp, #0x14]
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x4c]
	str     r3, [sp, #0x18]
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x54]
	ldr     r5, [sp, #0x5c]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x58]
	ldr     r4, [sp, #0x60]
	str     r0, [sp, #0x58]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	ldr     r0, [r7, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_21d5ae0
	mov     r0, r1
	lsl     r1, r0, #2
	mov     r0, r12
	add     r0, r0, r1
	ldr     r6, [sp, #0x20]
	str     r0, [sp, #0x1c]
branch_21d5a64: @ 21d5a64 :thumb
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	bne     branch_21d5a70
	bl      Function_2022974
branch_21d5a70: @ 21d5a70 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	blt     branch_21d5a7c
	bl      Function_2022974
branch_21d5a7c: @ 21d5a7c :thumb
	mov     r1, #0x0
	cmp     r4, #0x0
	bls     branch_21d5a92
	ldr     r0, [r7, #0x0]
	ldr     r2, [r0, r6]
branch_21d5a86: @ 21d5a86 :thumb
	ldrb    r0, [r5, r1]
	cmp     r2, r0
	beq     branch_21d5a92
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r4
	bcc     branch_21d5a86
branch_21d5a92: @ 21d5a92 :thumb
	cmp     r1, r4
	bcc     branch_21d5ace
	ldr     r0, [sp, #0x48]
	ldr     r2, [sp, #0x40]
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	ldr     r3, [sp, #0x44]
	ldr     r0, [r0, r6]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x4c]
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x54]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x58]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_21d59d8
	ldr     r0, [sp, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
branch_21d5ace: @ 21d5ace :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [r7, #0x4]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x24]
	cmp     r0, r1
	blt     branch_21d5a64
branch_21d5ae0: @ 21d5ae0 :thumb
	ldr     r1, [sp, #0x64]
	ldr     r0, [sp, #0x20]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x10]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d5aec


.thumb
Function_21d5aec: @ 21d5aec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21d5b90
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d5be0
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_21d5c1c
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21d5cb4
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21d5b38, (=#0x21d5cb9)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21d5b3c, (=#0x21d5d05)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d5b40, (=#0x21d5d35)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21d5b44, (=#0x21d5d49)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21d5b48, (=#0x21d5e2d)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21d5b4c, (=#0x21d5ea9)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21d5b36

.align 2
.word Function_21d5cb8+1 @ =0x21d5cb9, 0x21d5b38
.word Function_21d5d04+1 @ =0x21d5d05, 0x21d5b3c
.word Function_21d5d34+1 @ =0x21d5d35, 0x21d5b40
.word Function_21d5d48+1 @ =0x21d5d49, 0x21d5b44
.word Function_21d5e2c+1 @ =0x21d5e2d, 0x21d5b48
.word Function_21d5ea8+1 @ =0x21d5ea9, 0x21d5b4c



.thumb
Function_21d5b50: @ 21d5b50 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21d5bcc
	ldr     r0, [r4, #0x4]
	bl      Function_21d5c08
	ldr     r0, [r4, #0x20]
	bl      Function_21d5c7c
	pop     {r4,pc}
@ 0x21d5b68


.incbin "./baserom/overlay/overlay_0021.bin", 0x4de8, 0x21d5b90 - 0x21d5b68


.thumb
Function_21d5b90: @ 21d5b90 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x38
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d5ba2
	bl      Function_2022974
branch_21d5ba2: @ 21d5ba2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x38
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5bca


.align 2, 0
.thumb
Function_21d5bcc: @ 21d5bcc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d5bd6
	bl      Function_2022974
branch_21d5bd6: @ 21d5bd6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d5bde


.align 2, 0
.thumb
Function_21d5be0: @ 21d5be0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d5bf2
	bl      Function_2022974
branch_21d5bf2: @ 21d5bf2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5c08


.thumb
Function_21d5c08: @ 21d5c08 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d5c12
	bl      Function_2022974
branch_21d5c12: @ 21d5c12 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d5c1a


.align 2, 0
.thumb
Function_21d5c1c: @ 21d5c1c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_21d5cb4
	mov     r2, r0
	mov     r1, #0x14
	mov     r0, r5
	mul     r1, r2
	bl      Function_2018144
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_21d467c
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x14
	mov     r2, r4
	mov     r3, #0x2
	bl      Function_21d475c
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x28
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_21d4704
	mov     r0, r6
	add     r0, #0x3c
	mov     r1, r4
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_21d4878
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x50
	mov     r2, r4
	mov     r3, #0x10
	bl      Function_21d47f0
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d5c7c


.thumb
Function_21d5c7c: @ 21d5c7c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d5c86
	bl      Function_2022974
branch_21d5c86: @ 21d5c86 :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x28
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x50
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d5cb4


.thumb
Function_21d5cb4: @ 21d5cb4 :thumb
	mov     r0, #0x5
	bx      lr
@ 0x21d5cb8


.thumb
Function_21d5cb8: @ 21d5cb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x24
	bl      Function_2018144
	str     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_21d5cd0
	bl      Function_2022974
branch_21d5cd0: @ 21d5cd0 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	mov     r2, #0x24
	blx     Function_20d5124
	ldr     r1, [r5, #0x8]
	mov     r0, r4
	bl      Function_21d5f58
	ldr     r0, [r4, #0x4]
	bl      Function_21d38c0
	mov     r1, #0x1
	str     r1, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_21d5cf8
	str     r1, [r4, #0x10]
branch_21d5cf8: @ 21d5cf8 :thumb
	mov     r0, r4
	bl      Function_21d5fc4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d5d02


.align 2, 0
.thumb
Function_21d5d04: @ 21d5d04 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [r2, #0xc]
	ldr     r3, [r2, #0x8]
	cmp     r0, #0x1
	bne     branch_21d5d14
	mov     r0, #0x1
	pop     {r3,pc}

branch_21d5d14: @ 21d5d14 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_21d5d24
	mov     r0, #0x0
	str     r0, [r1, #0x18]
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	b       branch_21d5d2e

branch_21d5d24: @ 21d5d24 :thumb
	ldr     r2, [r2, #0x4]
	mov     r0, r1
	mov     r1, r3
	bl      Function_21d5f7c
branch_21d5d2e: @ 21d5d2e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d5d32


.align 2, 0
.thumb
Function_21d5d34: @ 21d5d34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5d46


.align 2, 0
.thumb
Function_21d5d48: @ 21d5d48 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	ldr     r7, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21d5e20
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r6, #0
	lsl     r6, r7, #1
	lsl     r6, r4, #2
	mov     r1, #0x52
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r7, r0
	bne     branch_21d5d7e
	bl      Function_2022974
branch_21d5d7e: @ 21d5d7e :thumb
	str     r7, [r4, #0x8]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21d6c24
	ldr     r1, [r5, #0x0]
	mov     r0, r7
	mov     r2, r6
	bl      Function_21d68c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d5e24
@ 0x21d5d9a


.incbin "./baserom/overlay/overlay_0021.bin", 0x501a, 0x21d5e20 - 0x21d5d9a


.thumb
branch_21d5e20: @ 21d5e20 :thumb
	bl      Function_2022974
branch_21d5e24: @ 21d5e24 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d5e28


.incbin "./baserom/overlay/overlay_0021.bin", 0x50a8, 0x21d5e2c - 0x21d5e28


.thumb
Function_21d5e2c: @ 21d5e2c :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r0
	mov     r7, r1
	ldr     r0, [r5, #0x1c]
	ldr     r4, [r7, #0x8]
	cmp     r0, #0x0
	bne     branch_21d5e40
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_21d5e40: @ 21d5e40 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_21d3898
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	cmp     r2, r0
	beq     branch_21d5e70
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d6a58
	ldr     r1, [r6, #0x0]
	ldr     r3, [r7, #0x4]
	mov     r0, r4
	mov     r2, r5
	bl      Function_21d6cc8
	ldr     r1, [r6, #0x0]
	mov     r0, r4
	mov     r2, r5
	bl      Function_21d68c8
branch_21d5e70: @ 21d5e70 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d69a0
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d6ae4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d6bb0
	ldr     r1, [r6, #0x0]
	ldr     r3, [r7, #0x4]
	mov     r0, r4
	mov     r2, r5
	bl      Function_21d6c44
	ldr     r1, [r6, #0x0]
	mov     r0, r4
	mov     r2, r5
	bl      Function_21d6f20
	mov     r0, r5
	bl      Function_21d6f74
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d5ea8


.thumb
Function_21d5ea8: @ 21d5ea8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21d5f4a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r0, #1
	lsl     r2, r5, #1
	lsl     r0, r0, #2
	ldr     r0, [pc, #0x84] @ 0x21d5f54, (=#0x4000050)
	mov     r3, #0x0
	strh    r3, [r0, #0x0]
	ldr     r0, [r7, #0x14]
	cmp     r0, #0x0
	beq     branch_21d5ef8
	ldr     r1, [r5, #0x0]
	ldr     r3, [r4, #0x4]
	mov     r0, r6
	bl      Function_21d7160
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_21d6f64
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21d7248
	b       branch_21d5f00

branch_21d5ef8: @ 21d5ef8 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d71a8
branch_21d5f00: @ 21d5f00 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d5f4e
@ 0x21d5f08


.incbin "./baserom/overlay/overlay_0021.bin", 0x5188, 0x21d5f4a - 0x21d5f08


.thumb
branch_21d5f4a: @ 21d5f4a :thumb
	bl      Function_2022974
branch_21d5f4e: @ 21d5f4e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d5f52

.align 2
.word 0x4000050 @ 0x21d5f54



.thumb
Function_21d5f58: @ 21d5f58 :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x8]
	str     r2, [r1, #0x0]
	mov     r0, #0x3c
	str     r0, [r1, #0x4]
	mov     r0, #0x4
	str     r0, [r1, #0x8]
	str     r0, [r1, #0xc]
	bx      lr
@ 0x21d5f6a


.align 2, 0
.thumb
Function_21d5f6c: @ 21d5f6c :thumb
	mov     r0, #0xa
	lsl     r0, r0, #6
	str     r0, [r1, #0x4]
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	str     r0, [r1, #0xc]
	bx      lr
@ 0x21d5f7a


.align 2, 0
.thumb
Function_21d5f7c: @ 21d5f7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d601c
	cmp     r0, #0x1
	beq     branch_21d5fc2
	mov     r0, r5
	bl      Function_21d5fc4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d5fae
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x1
	bne     branch_21d5fa6
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d7590
	b       branch_21d5fae

branch_21d5fa6: @ 21d5fa6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d75dc
branch_21d5fae: @ 21d5fae :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_21d5fbc
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d60a4
branch_21d5fbc: @ 21d5fbc :thumb
	mov     r0, r5
	bl      Function_21d5fd4
branch_21d5fc2: @ 21d5fc2 :thumb
	pop     {r3-r5,pc}
@ 0x21d5fc4


.thumb
Function_21d5fc4: @ 21d5fc4 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	str     r1, [r0, #0x28]
	str     r1, [r0, #0x2c]
	str     r1, [r0, #0x30]
	str     r1, [r0, #0x34]
	bx      lr
@ 0x21d5fd2


.align 2, 0
.thumb
Function_21d5fd4: @ 21d5fd4 :thumb
	ldr     r1, [pc, #0x40] @ 0x21d6018, (=#0x21bf67c)
	mov     r2, #0x2
	ldr     r1, [r1, #0x48]
	tst     r2, r1
	beq     branch_21d5ff6
	mov     r1, #0x5d
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #6
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_21d5ff0
	mov     r1, #0x1
	str     r1, [r0, #0x28]
	bx      lr

branch_21d5ff0: @ 21d5ff0 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x24]
	bx      lr

branch_21d5ff6: @ 21d5ff6 :thumb
	mov     r3, #0x1
	mov     r2, r1
	tst     r2, r3
	beq     branch_21d6002
	str     r3, [r0, #0x2c]
	bx      lr

branch_21d6002: @ 21d6002 :thumb
	lsl     r2, r3, #10
	tst     r2, r1
	beq     branch_21d600c
	str     r3, [r0, #0x34]
	bx      lr

branch_21d600c: @ 21d600c :thumb
	mov     r2, #0x4
	tst     r1, r2
	beq     branch_21d6014
	str     r3, [r0, #0x30]
branch_21d6014: @ 21d6014 :thumb
	bx      lr
@ 0x21d6016

.align 2
.word 0x21bf67c @ 0x21d6018



.thumb
Function_21d601c: @ 21d601c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	ldr     r1, [r5, #0x28]
	mov     r4, r2
	cmp     r1, #0x0
	beq     branch_21d6038
	bl      Function_21d744c
	ldr     r0, [pc, #0x6c] @ 0x21d609c, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_21d6038: @ 21d6038 :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_21d604e
	mov     r1, r4
	bl      Function_21d7538
	ldr     r0, [pc, #0x54] @ 0x21d609c, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_21d604e: @ 21d604e :thumb
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	beq     branch_21d607a
	ldr     r0, [r5, #0x4]
	bl      Function_21d3898
	mov     r1, r0
	ldr     r0, [r5, #0x4]
	bl      Function_21d38b0
	ldr     r1, [pc, #0x3c] @ 0x21d60a0, (=#0x1ee)
	cmp     r0, r1
	beq     branch_21d607a
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d7464
	ldr     r0, [pc, #0x28] @ 0x21d609c, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_21d607a: @ 21d607a :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21d6088
	mov     r0, r5
	bl      Function_21d747c
	pop     {r4-r6,pc}

branch_21d6088: @ 21d6088 :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21d6098
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d74b0
	pop     {r4-r6,pc}

branch_21d6098: @ 21d6098 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d609c

.word 0x5dd @ 0x21d609c
.word 0x1ee @ 0x21d60a0



.thumb
Function_21d60a4: @ 21d60a4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21d60f4
	ldr     r2, [r4, #0x4]
	ldr     r1, [r0, #0xc]
	sub     r1, r1, r2
	cmp     r1, #0x0
	ble     branch_21d60bc
	str     r1, [r0, #0xc]
	pop     {r4,pc}

branch_21d60bc: @ 21d60bc :thumb
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r1, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	ble     branch_21d60f4
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_21d60d4
	str     r0, [r4, #0x8]
	pop     {r4,pc}

branch_21d60d4: @ 21d60d4 :thumb
	ldr     r0, [r4, #0x4]
	blx     Function_20e17b4
	ldr     r1, [pc, #0x1c] @ 0x21d60f8, (=#0x3fcccccd)
	blx     Function_20e18b0
	blx     Function_20e1740
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	sub     r1, r0, #0x1
	mov     r0, #0x4
	sub     r0, r0, r1
	str     r1, [r4, #0xc]
	lsl     r0, r0, #2
	str     r0, [r4, #0x8]
branch_21d60f4: @ 21d60f4 :thumb
	pop     {r4,pc}
@ 0x21d60f6

.align 2
.word 0x3fcccccd @ 0x21d60f8



.thumb
Function_21d60fc: @ 21d60fc :thumb
	mov     r3, #0xa
	lsl     r3, r3, #6
	str     r3, [r0, #0xc]
	str     r2, [r1, #0x0]
	str     r2, [r0, #0x8]
	bx      lr
@ 0x21d6108


.thumb
Function_21d6108: @ 21d6108 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d6110, (=#Function_21d3844+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d610e

.align 2
.word Function_21d3844+1 @ 0x21d6110


.incbin "./baserom/overlay/overlay_0021.bin", 0x5394, 0x21d67ec - 0x21d6114


.thumb
Function_21d67ec: @ 21d67ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	str     r1, [sp, #0x8]
	str     r0, [sp, #0x4]
	mov     r1, #0x15
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x4]
	mov     r7, r2
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x34]
	mov     r0, #0x1
	str     r0, [sp, #0x3c]
	mov     r0, r3
	str     r1, [sp, #0x28]
	str     r1, [sp, #0x2c]
	str     r1, [sp, #0x30]
	str     r1, [sp, #0x38]
	str     r0, [sp, #0x40]
	ldr     r0, [r7, #0x4]
	bl      Function_21d3898
	sub     r4, r0, #0x4
	ldr     r0, [sp, #0x4]
	ldr     r6, [r0, #0x24]
	ldr     r0, [r7, #0x4]
	bl      Function_21d38a4
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
branch_21d6838: @ 21d6838 :thumb
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #2
	add     r5, r0, r1
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_21d684c
	bl      Function_21d4d1c
	mov     r0, #0x0
	str     r0, [r5, #0x28]
branch_21d684c: @ 21d684c :thumb
	cmp     r4, #0x0
	blt     branch_21d68a4
	ldr     r0, [sp, #0x10]
	cmp     r4, r0
	bge     branch_21d68a4
	ldr     r0, [r7, #0x4]
	mov     r1, r4
	bl      Function_21d38b0
	mov     r1, r0
	ldr     r0, [pc, #0x60] @ 0x21d68c4, (=#0x1ee)
	cmp     r1, r0
	beq     branch_21d6892
	ldr     r0, [r7, #0x4]
	bl      Function_21d37dc
	mov     r3, r0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r7, #0x4]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	bl      Function_21d16d8
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x18]
	ldr     r1, [r1, #0x4c]
	add     r0, sp, #0x1c
	bl      Function_21d4cb8
	str     r0, [r5, #0x28]
	ldr     r0, [sp, #0x18]
	bl      Function_21d4da0
	b       branch_21d68a8

branch_21d6892: @ 21d6892 :thumb
	add     r0, r4, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	mov     r3, r6
	bl      Function_21d6df4
	b       branch_21d68a8

branch_21d68a4: @ 21d68a4 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x28]
branch_21d68a8: @ 21d68a8 :thumb
	add     r0, r6, #0x1
	mov     r1, #0x9
	blx     Division
	ldr     r0, [sp, #0x14]
	mov     r6, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x9
	blt     branch_21d6838
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21d68c2

.align 2
.word 0x1ee @ 0x21d68c4



.thumb
Function_21d68c8: @ 21d68c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r6, r1
	bl      Function_21d3898
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_21d375c
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d37dc
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x8]
	bl      Function_21d38b0
	ldr     r1, [pc, #0x48] @ 0x21d693c, (=#0x1ee)
	cmp     r0, r1
	bne     branch_21d6910
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_21d217c
	ldr     r0, [r5, #0x7c]
	cmp     r0, #0x0
	beq     branch_21d6938
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_21d6910: @ 21d6910 :thumb
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r7, #0x0]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_21d1890
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_21d217c
	ldr     r0, [r5, #0x7c]
	cmp     r0, #0x0
	beq     branch_21d6938
	mov     r1, #0x0
	bl      Function_2021cac
branch_21d6938: @ 21d6938 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d693c

.word 0x1ee @ 0x21d693c


.incbin "./baserom/overlay/overlay_0021.bin", 0x5bc0, 0x21d69a0 - 0x21d6940


.thumb
Function_21d69a0: @ 21d69a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x24]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r4, #0x0
branch_21d69ae: @ 21d69ae :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x1
	bne     branch_21d69ba
	add     r0, r4, #0x2
	b       branch_21d69bc

branch_21d69ba: @ 21d69ba :thumb
	mov     r0, r4
branch_21d69bc: @ 21d69bc :thumb
	add     r1, r4, #0x1
	ldr     r3, [sp, #0x0]
	lsl     r7, r1, #2
	mov     r2, #0xa
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x88] @ 0x21d6a50, (=#0x21e9d14)
	str     r0, [sp, #0x8]
	ldr     r0, [r1, r0]
	lsl     r2, r2, #6
	ldr     r6, [r3, #0xc]
	mov     r3, r2
	ldr     r1, [r1, r7]
	sub     r3, r3, r6
	bl      Function_21d6bf8
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x0]
	mov     r2, #0xa
	ldr     r1, [pc, #0x70] @ 0x21d6a54, (=#0x21e9d40)
	ldr     r0, [sp, #0x8]
	lsl     r2, r2, #6
	ldr     r6, [r3, #0xc]
	ldr     r0, [r1, r0]
	mov     r3, r2
	ldr     r1, [r1, r7]
	sub     r3, r3, r6
	bl      Function_21d6bf8
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0xc
	lsl     r6, r0, #2
	ldr     r0, [r5, r6]
	bl      Function_2021c50
	mov     r0, #0x4
	sub     r7, r0, r4
	bpl     branch_21d6a0a
	neg     r7, r7
branch_21d6a0a: @ 21d6a0a :thumb
	lsl     r1, r7, #1
	bpl     branch_21d6a10
	neg     r1, r1
branch_21d6a10: @ 21d6a10 :thumb
	ldr     r0, [r5, r6]
	add     r1, #0x20
	bl      Function_2021f58
	cmp     r4, #0x4
	bne     branch_21d6a26
	ldr     r0, [r5, r6]
	mov     r1, #0x0
	bl      Function_2021f24
	b       branch_21d6a3a

branch_21d6a26: @ 21d6a26 :thumb
	add     r1, r7, #0x6
	cmp     r1, #0x9
	ldr     r0, [r5, r6]
	bge     branch_21d6a34
	bl      Function_2021f24
	b       branch_21d6a3a

branch_21d6a34: @ 21d6a34 :thumb
	mov     r1, #0x9
	bl      Function_2021f24
branch_21d6a3a: @ 21d6a3a :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x9
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     Division
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r1, [sp, #0x4]
	cmp     r4, #0x9
	blt     branch_21d69ae
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d6a50

.word 0x21e9d14 @ 0x21d6a50
.word 0x21e9d40 @ 0x21d6a54



.thumb
Function_21d6a58: @ 21d6a58 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d3898
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d38a4
	mov     r7, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_21d6aaa
	ldr     r0, [r5, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x9
	bge     branch_21d6a7e
	b       branch_21d6a80

branch_21d6a7e: @ 21d6a7e :thumb
	mov     r0, #0x0
branch_21d6a80: @ 21d6a80 :thumb
	str     r0, [r5, #0x24]
	ldr     r0, [r5, #0x24]
	mov     r1, #0x9
	add     r0, #0x8
	blx     Division
	add     r0, r6, #0x4
	cmp     r0, r7
	blt     branch_21d6a9e
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r7,pc}

branch_21d6a9e: @ 21d6a9e :thumb
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r3-r7,pc}

branch_21d6aaa: @ 21d6aaa :thumb
	cmp     r0, #0x2
	bne     branch_21d6ad8
	ldr     r0, [r5, #0x24]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_21d6ab6
	b       branch_21d6ab8

branch_21d6ab6: @ 21d6ab6 :thumb
	mov     r0, #0x8
branch_21d6ab8: @ 21d6ab8 :thumb
	str     r0, [r5, #0x24]
	ldr     r1, [r5, #0x24]
	sub     r0, r6, #0x4
	bpl     branch_21d6acc
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r7,pc}

branch_21d6acc: @ 21d6acc :thumb
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r3-r7,pc}

branch_21d6ad8: @ 21d6ad8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d6ed0
	pop     {r3-r7,pc}
@ 0x21d6ae2


.align 2, 0
.thumb
Function_21d6ae4: @ 21d6ae4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x4]
	bl      Function_21d3898
	mov     r5, r0
	ldr     r0, [r7, #0x4]
	bl      Function_21d38a4
	str     r0, [sp, #0x4]
	sub     r0, r5, #0x4
	mov     r4, #0x0
	str     r0, [sp, #0x8]
branch_21d6b02: @ 21d6b02 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x9
	ldr     r0, [r0, #0x24]
	add     r0, r0, r4
	blx     Division
	ldr     r0, [sp, #0x8]
	mov     r5, r1
	mov     r6, #0x0
	add     r1, r0, r4
	bmi     branch_21d6b3a
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bge     branch_21d6b3a
	ldr     r0, [r7, #0x4]
	bl      Function_21d38b0
	mov     r1, r0
	ldr     r0, [pc, #0x68] @ 0x21d6b90, (=#0x1ee)
	cmp     r1, r0
	beq     branch_21d6b3a
	ldr     r0, [r7, #0x4]
	bl      Function_21d37dc
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x2
	bne     branch_21d6b3a
	mov     r6, #0x1
branch_21d6b3a: @ 21d6b3a :thumb
	ldr     r0, [sp, #0x0]
	lsl     r1, r5, #2
	add     r5, r0, r1
	ldr     r0, [r5, #0x50]
	mov     r1, r6
	bl      Function_2021cac
	cmp     r6, #0x0
	beq     branch_21d6b86
	ldr     r0, [r5, #0x0]
	bl      Function_2021d28
	mov     r1, #0x36
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #12
	sub     r1, r2, r1
	str     r1, [sp, #0xc]
	ldr     r0, [r0, #0x4]
	add     r1, sp, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x50]
	bl      Function_2021c50
	ldr     r0, [r5, #0x0]
	bl      Function_2021f48
	mov     r1, r0
	ldr     r0, [r5, #0x50]
	bl      Function_2021ef0
	ldr     r0, [r5, #0x0]
	bl      Function_2021f74
	mov     r1, r0
	ldr     r0, [r5, #0x50]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2021f58
branch_21d6b86: @ 21d6b86 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x9
	blt     branch_21d6b02
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d6b90

.word 0x1ee @ 0x21d6b90


.incbin "./baserom/overlay/overlay_0021.bin", 0x5e14, 0x21d6bb0 - 0x21d6b94


.thumb
Function_21d6bb0: @ 21d6bb0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	bl      Function_21d3898
	mov     r2, r0
	ldr     r0, [r4, #0x78]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	mov     r0, #0x3a
	lsl     r0, r0, #12
	str     r1, [sp, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x74]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d6bf6


.align 2, 0
.thumb
Function_21d6bf8: @ 21d6bf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	sub     r0, r1, r5
	lsl     r2, r3, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r4, #12
	blx     Function_20bcfd0
	add     r0, r0, r5
	pop     {r3-r5,pc}
@ 0x21d6c24


.thumb
Function_21d6c24: @ 21d6c24 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x52
	mov     r5, r1
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [r5, #0x4]
	bl      Function_21d3898
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r3-r5,pc}
@ 0x21d6c42


.align 2, 0
.thumb
Function_21d6c44: @ 21d6c44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r5, [r7, #0x24]
	mov     r6, #0x0
branch_21d6c4e: @ 21d6c4e :thumb
	lsl     r0, r5, #2
	add     r4, r7, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_21d6c90
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_21d6ca4
	ldr     r0, [r4, #0x28]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x0]
	bl      Function_20128c4
	ldr     r0, [r4, #0x0]
	bl      Function_2021f74
	mov     r1, r0
	ldr     r0, [r4, #0x28]
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012a30
	ldr     r0, [r4, #0x0]
	bl      Function_2021f48
	mov     r1, r0
	ldr     r0, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	bl      Function_2012a90
branch_21d6c90: @ 21d6c90 :thumb
	add     r0, r5, #0x1
	mov     r1, #0x9
	blx     Division
	.hword  0x1c76 @ add r6, r6, #0x1
	mov     r5, r1
	cmp     r6, #0x9
	blt     branch_21d6c4e
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d6ca4


.thumb
Function_21d6ca4: @ 21d6ca4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_2021d28
	ldr     r1, [r0, #0x0]
	asr     r1, r1, #12
	str     r1, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	asr     r0, r0, #12
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	sub     r0, #0x40
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	sub     r0, #0x8
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d6cc8


.thumb
Function_21d6cc8: @ 21d6cc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r2
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	str     r1, [sp, #0x8]
	str     r3, [sp, #0xc]
	bl      Function_21d3898
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	bl      Function_21d38a4
	ldr     r1, [r4, #0x8]
	str     r0, [sp, #0x10]
	cmp     r1, #0x1
	beq     branch_21d6cf0
	cmp     r1, #0x2
	beq     branch_21d6cfa
	b       branch_21d6d00

branch_21d6cf0: @ 21d6cf0 :thumb
	ldr     r6, [r5, #0x24]
	ldr     r0, [sp, #0x14]
	add     r6, #0x8
	add     r7, r0, #0x4
	b       branch_21d6d00

branch_21d6cfa: @ 21d6cfa :thumb
	ldr     r0, [sp, #0x14]
	ldr     r6, [r5, #0x24]
	sub     r7, r0, #0x4
branch_21d6d00: @ 21d6d00 :thumb
	cmp     r1, #0x0
	bne     branch_21d6d14
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	bl      Function_21d67ec
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d6d14: @ 21d6d14 :thumb
	mov     r0, r6
	mov     r1, #0x9
	blx     Division
	ldr     r0, [sp, #0x10]
	mov     r6, r1
	cmp     r7, r0
	bge     branch_21d6d5e
	cmp     r7, #0x0
	blt     branch_21d6d5e
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	bl      Function_21d38b0
	ldr     r1, [pc, #0x40] @ 0x21d6d74, (=#0x1ee)
	cmp     r0, r1
	beq     branch_21d6d4a
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	bl      Function_21d6d78
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d6d4a: @ 21d6d4a :thumb
	add     r0, r7, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r3, r6
	bl      Function_21d6df4
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_21d6d5e: @ 21d6d5e :thumb
	lsl     r4, r6, #2
	add     r5, #0x28
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	beq     branch_21d6d70
	bl      Function_21d4d1c
	mov     r0, #0x0
	str     r0, [r5, r4]
branch_21d6d70: @ 21d6d70 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d6d74

.word 0x1ee @ 0x21d6d74



.thumb
Function_21d6d78: @ 21d6d78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x44]
	mov     r7, r3
	bl      Function_21d37dc
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_21d6d96
	bl      Function_2022974
branch_21d6d96: @ 21d6d96 :thumb
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r3, [sp, #0x0]
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x24]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x20]
	str     r7, [sp, #0x28]
	ldr     r1, [r4, #0x4]
	ldr     r3, [r3, #0x0]
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d16d8
	mov     r6, r0
	ldr     r0, [sp, #0x40]
	mov     r4, r5
	add     r4, #0x28
	lsl     r7, r0, #2
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_21d6ddc
	bl      Function_21d4d1c
branch_21d6ddc: @ 21d6ddc :thumb
	str     r6, [sp, #0x8]
	ldr     r1, [r5, #0x4c]
	add     r0, sp, #0x4
	bl      Function_21d4cb8
	str     r0, [r4, r7]
	mov     r0, r6
	bl      Function_21d4da0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d6df2


.align 2, 0
.thumb
Function_21d6df4: @ 21d6df4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r4, r2
	str     r0, [sp, #0x10]
	mov     r5, r1
	mov     r0, #0x20
	mov     r1, r4
	mov     r6, r3
	bl      Function_2023790
	mov     r7, r0
	ldr     r2, [pc, #0xbc] @ 0x21d6ec8, (=#0x2b9)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [sp, #0x14]
	ldr     r0, [r5, r1]
	mov     r2, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x34]
	mov     r0, #0x1
	str     r2, [sp, #0x30]
	str     r4, [sp, #0x3c]
	str     r0, [sp, #0x38]
	ldr     r0, [r5, r1]
	mov     r1, #0xf
	bl      Function_21d4d6c
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x58]
	mov     r0, r7
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_20238a0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x6c] @ 0x21d6ecc, (=#0x30201)
	mov     r2, r7
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, #0x16
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	mov     r1, #0x63
	mov     r2, r7
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x21d6ecc, (=#0x30201)
	mov     r2, r7
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, #0x31
	bl      Function_201d78c
	ldr     r4, [sp, #0x10]
	lsl     r6, r6, #2
	add     r4, #0x28
	ldr     r0, [r4, r6]
	cmp     r0, #0x0
	beq     branch_21d6ea4
	bl      Function_21d4d1c
branch_21d6ea4: @ 21d6ea4 :thumb
	ldr     r1, [sp, #0x10]
	str     r5, [sp, #0x1c]
	ldr     r1, [r1, #0x4c]
	add     r0, sp, #0x18
	bl      Function_21d4cb8
	str     r0, [r4, r6]
	mov     r0, r5
	bl      Function_21d4da0
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	bl      Function_200b190
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x21d6ec8

.word 0x2b9 @ 0x21d6ec8
.word 0x30201 @ 0x21d6ecc



.thumb
Function_21d6ed0: @ 21d6ed0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d3898
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d38a4
	sub     r4, r5, #0x4
	ldr     r5, [r6, #0x24]
	str     r0, [sp, #0x0]
	mov     r7, #0x0
branch_21d6eec: @ 21d6eec :thumb
	cmp     r4, #0x0
	blt     branch_21d6f02
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bge     branch_21d6f02
	lsl     r0, r5, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_21d6f0c

branch_21d6f02: @ 21d6f02 :thumb
	lsl     r0, r5, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      Function_2021cac
branch_21d6f0c: @ 21d6f0c :thumb
	add     r0, r5, #0x1
	mov     r1, #0x9
	blx     Division
	.hword  0x1c7f @ add r7, r7, #0x1
	mov     r5, r1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r7, #0x9
	blt     branch_21d6eec
	pop     {r3-r7,pc}
@ 0x21d6f20


.thumb
Function_21d6f20: @ 21d6f20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r2, #0xc]
	mov     r0, #0xa
	lsl     r0, r0, #6
	sub     r0, r0, r1
	lsl     r0, r0, #12
	mov     r2, #0x1f
	asr     r1, r0, #31
	lsl     r2, r2, #12
	mov     r3, #0x0
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0xa
	lsl     r1, r1, #18
	blx     Function_20bcfd0
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d2170
	mov     r1, #0x17
	asr     r2, r5, #12
	bl      Function_2007dec
	pop     {r3-r5,pc}
@ 0x21d6f64


.thumb
Function_21d6f64: @ 21d6f64 :thumb
	push    {r3,lr}
	bl      Function_21d2170
	mov     r1, #0x17
	mov     r2, #0x1f
	bl      Function_2007dec
	pop     {r3,pc}
@ 0x21d6f74


.thumb
Function_21d6f74: @ 21d6f74 :thumb
	push    {r4,lr}
	mov     r1, #0xa
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #6
	sub     r0, r1, r0
	lsl     r3, r0, #12
	asr     r2, r3, #31
	lsr     r0, r3, #16
	lsl     r4, r2, #16
	orr     r4, r0
	mov     r0, #0x2
	lsl     r3, r3, #16
	mov     r2, #0x0
	lsl     r0, r0, #10
	add     r0, r3, r0
	adc     r4, r2
	lsl     r2, r4, #20
	lsr     r0, r0, #12
	orr     r0, r2
	lsl     r1, r1, #12
	blx     Function_20bcfd0
	asr     r1, r0, #12
	mov     r0, #0x10
	sub     r0, r0, r1
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d6fb0, (=#0x4000052)
	strh    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x21d6fb0

.word 0x4000052 @ 0x21d6fb0



.thumb
Function_21d6fb4: @ 21d6fb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x84] @ 0x21d7040, (=#0x685)
	mov     r5, r2
	str     r1, [sp, #0x18]
	mov     r4, r3
	bl      Function_2005748
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_21d6ffa
	cmp     r4, #0x0
	beq     branch_21d6fec
	ldr     r0, [sp, #0x18]
	mov     r6, #0x3
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, r6
	mov     r3, #0xc0
	str     r4, [sp, #0x1c]
	mov     r7, #0xe
	mov     r5, #0x4
	bl      Function_2019184
	b       branch_21d7018

branch_21d6fec: @ 21d6fec :thumb
	mov     r0, #0x3
	mov     r6, #0x0
	str     r0, [sp, #0x1c]
	mov     r4, #0xe
	mov     r7, r6
	mov     r5, #0x4
	b       branch_21d7018

branch_21d6ffa: @ 21d6ffa :thumb
	cmp     r4, #0x0
	beq     branch_21d700c
	mov     r0, #0xc
	str     r0, [sp, #0x1c]
	mov     r4, #0x14
	mov     r6, #0x3
	mov     r7, #0xe
	mov     r5, #0x4
	b       branch_21d7018

branch_21d700c: @ 21d700c :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x1c]
	mov     r4, #0xe
	mov     r6, #0xc
	mov     r7, #0x14
	mov     r5, #0x4
branch_21d7018: @ 21d7018 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r7, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	str     r5, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r1, [r1, #0x0]
	add     r3, #0xdc
	str     r3, [sp, #0x14]
	ldr     r1, [r1, #0x0]
	ldr     r3, [r3, #0x0]
	add     r0, #0xe0
	mov     r2, #0x2
	bl      Function_21d1558
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d7040

.word 0x685 @ 0x21d7040


.incbin "./baserom/overlay/overlay_0021.bin", 0x62c4, 0x21d70e8 - 0x21d7044


.thumb
Function_21d70e8: @ 21d70e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	mov     r1, #0x1
	bl      Function_2021fe0
	mov     r6, #0x1
	mov     r4, #0x0
	mov     r7, r6
branch_21d70fa: @ 21d70fa :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2021fe0
	ldr     r0, [r5, #0x50]
	mov     r1, r7
	bl      Function_2021fe0
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_21d7118
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2012af0
branch_21d7118: @ 21d7118 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x9
	blt     branch_21d70fa
	pop     {r3-r7,pc}
@ 0x21d7122


.incbin "./baserom/overlay/overlay_0021.bin", 0x63a2, 0x21d7160 - 0x21d7122


.thumb
Function_21d7160: @ 21d7160 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	mov     r6, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, #0x9
	mov     r5, r2
	mov     r7, r3
	blx     Division
	lsl     r0, r1, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	bl      Function_21d375c
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	mov     r2, r7
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	str     r0, [sp, #0x4]
	ldr     r1, [r5, #0x4]
	mov     r0, r6
	bl      Function_21d1778
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_21d238c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d71a6


.align 2, 0
.thumb
Function_21d71a8: @ 21d71a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      Function_21d6fb4
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	beq     branch_21d71e2
	cmp     r4, #0x0
	beq     branch_21d71d0
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	sub     r2, #0x10
	mov     r3, #0x39
	bl      Function_200aae0
	pop     {r3-r5,pc}

branch_21d71d0: @ 21d71d0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, r0
	sub     r1, #0x14
	mov     r2, #0x0
	mov     r3, #0x39
	bl      Function_200aae0
branch_21d71e2: @ 21d71e2 :thumb
	pop     {r3-r5,pc}
@ 0x21d71e4


.incbin "./baserom/overlay/overlay_0021.bin", 0x6464, 0x21d7248 - 0x21d71e4


.thumb
Function_21d7248: @ 21d7248 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	mov     r4, r3
	bl      Function_21d70e8
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d6fb4
	cmp     r4, #0x0
	bne     branch_21d7278
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d7394
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d73f0
branch_21d7278: @ 21d7278 :thumb
	ldr     r0, [r7, #0x10]
	cmp     r0, #0x1
	beq     branch_21d72ce
	cmp     r4, #0x0
	beq     branch_21d72aa
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x28
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r2, r1
	sub     r2, #0x14
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21d72aa: @ 21d72aa :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x28
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r3, r1
	sub     r3, #0x14
	bl      Function_21d23f8
branch_21d72ce: @ 21d72ce :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d72d2


.incbin "./baserom/overlay/overlay_0021.bin", 0x6552, 0x21d7394 - 0x21d72d2


.thumb
Function_21d7394: @ 21d7394 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x48
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	add     r1, #0xbc
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	mov     r1, #0x38
	mov     r2, #0x30
	mov     r3, #0x50
	bl      Function_21d2648
	mov     r2, #0x41
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r0, [r4, #0x0]
	ldr     r2, [r5, r2]
	bl      Function_21d2164
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d73c6


.incbin "./baserom/overlay/overlay_0021.bin", 0x6646, 0x21d73f0 - 0x21d73c6


.thumb
Function_21d73f0: @ 21d73f0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x49
	lsl     r0, r0, #2
	mov     r4, r1
	add     r0, r5, r0
	mov     r1, #0xaa
	mov     r2, #0xac
	mov     r3, #0x52
	bl      Function_21d2648
	mov     r2, #0x49
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r0, [r4, #0x0]
	ldr     r2, [r5, r2]
	bl      Function_21d1848
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d7424


.incbin "./baserom/overlay/overlay_0021.bin", 0x66a4, 0x21d744c - 0x21d7424


.thumb
Function_21d744c: @ 21d744c :thumb
	ldr     r3, [r0, #0x0]
	mov     r1, #0x4
	ldr     r2, [r3, #0x0]
	orr     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x14]
	mov     r1, #0x2
	str     r1, [r0, #0x20]
	bx      lr
@ 0x21d7462


.align 2, 0
.thumb
Function_21d7464: @ 21d7464 :thumb
	ldr     r3, [r1, #0x0]
	mov     r0, #0x2
	ldr     r2, [r3, #0x0]
	orr     r2, r0
	str     r2, [r3, #0x0]
	mov     r3, #0x0
	str     r3, [r1, #0x10]
	mov     r2, #0x1
	str     r2, [r1, #0x14]
	str     r3, [r1, #0xc]
	str     r0, [r1, #0x20]
	bx      lr
@ 0x21d747c


.thumb
Function_21d747c: @ 21d747c :thumb
	push    {r3,lr}
	mov     r1, #0x5d
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #6
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_21d74a8
	ldr     r3, [r0, #0x0]
	mov     r1, #0x1
	ldr     r2, [r3, #0x0]
	orr     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x14]
	mov     r1, #0x2
	str     r1, [r0, #0x20]
	ldr     r0, [pc, #0xc] @ 0x21d74ac, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}

branch_21d74a8: @ 21d74a8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d74ac

.word 0x5dd @ 0x21d74ac



.thumb
Function_21d74b0: @ 21d74b0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r1, #0x5d
	ldr     r0, [r5, #0x4]
	lsl     r1, r1, #6
	ldr     r1, [r0, r1]
	cmp     r1, #0x1
	bne     branch_21d74ca
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_21d74ca: @ 21d74ca :thumb
	bl      Function_21d36d8
	cmp     r0, #0x0
	bne     branch_21d74d6
	mov     r4, #0x1
	b       branch_21d74d8

branch_21d74d6: @ 21d74d6 :thumb
	mov     r4, #0x0
branch_21d74d8: @ 21d74d8 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_21d36a4
	cmp     r0, #0x0
	beq     branch_21d752c
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_21d36c0
	ldr     r0, [pc, #0x44] @ 0x21d7534, (=#0x5dd)
	bl      Function_2005748
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d3684
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_21d36fc
	mov     r3, #0x0
	str     r3, [r5, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x10
	ldr     r1, [r2, #0x0]
	add     sp, #0x10
	orr     r0, r1
	str     r0, [r2, #0x0]
	str     r3, [r5, #0x10]
	str     r3, [r5, #0x14]
	mov     r0, #0x2
	str     r0, [r5, #0x20]
	str     r3, [r5, #0x1c]
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_21d752c: @ 21d752c :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d7532

.align 2
.word 0x5dd @ 0x21d7534



.thumb
Function_21d7538: @ 21d7538 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	bl      Function_21d37bc
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	bl      Function_21d36d8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d3684
	ldr     r2, [r5, #0x0]
	mov     r0, #0x10
	ldr     r1, [r2, #0x0]
	orr     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	bl      Function_21d3794
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	mov     r0, #0x5d
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #6
	str     r2, [r1, r0]
	str     r2, [r5, #0x10]
	str     r2, [r5, #0x14]
	str     r2, [r5, #0x8]
	mov     r0, #0x2
	str     r0, [r5, #0x20]
	str     r2, [r5, #0x1c]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d7590


.thumb
Function_21d7590: @ 21d7590 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r4, r1
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x18]
	bmi     branch_21d75c6
	ldr     r1, [r5, #0x1c]
	mov     r0, r4
	bl      Function_21d6108
	cmp     r0, #0x0
	beq     branch_21d75c0
	ldr     r2, [r5, #0x20]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d60fc
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x1c] @ 0x21d75d8, (=#0x68b)
	bl      Function_2005748
	pop     {r3-r5,pc}

branch_21d75c0: @ 21d75c0 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	pop     {r3-r5,pc}

branch_21d75c6: @ 21d75c6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f58
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	str     r0, [r4, #0x20]
	pop     {r3-r5,pc}
@ 0x21d75d6

.align 2
.word 0x68b @ 0x21d75d8



.thumb
Function_21d75dc: @ 21d75dc :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0xc8] @ 0x21d76a8, (=#0x21bf67c)
	mov     r4, r1
	ldr     r3, [r2, #0x44]
	mov     r5, r0
	mov     r1, #0x40
	mov     r0, r3
	tst     r0, r1
	beq     branch_21d761e
	mov     r0, r4
	sub     r1, #0x41
	bl      Function_21d6108
	cmp     r0, #0x0
	beq     branch_21d7610
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_21d60fc
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0xa0] @ 0x21d76ac, (=#0x68b)
	bl      Function_2005748
	pop     {r3-r5,pc}

branch_21d7610: @ 21d7610 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f58
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	pop     {r3-r5,pc}

branch_21d761e: @ 21d761e :thumb
	mov     r0, #0x80
	tst     r0, r3
	beq     branch_21d7654
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d6108
	cmp     r0, #0x0
	beq     branch_21d7646
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d60fc
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x6c] @ 0x21d76ac, (=#0x68b)
	bl      Function_2005748
	pop     {r3-r5,pc}

branch_21d7646: @ 21d7646 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f58
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	pop     {r3-r5,pc}

branch_21d7654: @ 21d7654 :thumb
	ldr     r1, [r2, #0x48]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_21d7676
	mov     r0, #0x1
	str     r0, [r5, #0x14]
	mov     r0, #0x5
	str     r0, [r5, #0x18]
	.hword  0x1f80 @ sub r0, r0, #0x6
	str     r0, [r5, #0x1c]
	mov     r0, #0x2
	str     r0, [r5, #0x20]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f6c
	pop     {r3-r5,pc}

branch_21d7676: @ 21d7676 :thumb
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21d7692
	mov     r1, #0x1
	str     r1, [r5, #0x14]
	mov     r0, #0x5
	str     r0, [r5, #0x18]
	str     r1, [r5, #0x1c]
	str     r1, [r5, #0x20]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f6c
	pop     {r3-r5,pc}

branch_21d7692: @ 21d7692 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_21d76a4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5f58
	mov     r0, #0x0
	str     r0, [r4, #0x20]
branch_21d76a4: @ 21d76a4 :thumb
	pop     {r3-r5,pc}
@ 0x21d76a6

.align 2
.word 0x21bf67c @ 0x21d76a8
.word 0x68b @ 0x21d76ac



.thumb
Function_21d76b0: @ 21d76b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21d7728
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d7770
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d7798
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21d7814
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21d76f8, (=#0x21d7819)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21d76fc, (=#0x21d7861)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d7700, (=#0x21d78ad)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21d7704, (=#0x21d78c1)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21d7708, (=#0x21d7951)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21d770c, (=#0x21d79e5)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21d76f8

.word Function_21d7818+1 @ =0x21d7819, 0x21d76f8
.word Function_21d7860+1 @ =0x21d7861, 0x21d76fc
.word Function_21d78ac+1 @ =0x21d78ad, 0x21d7700
.word Function_21d78c0+1 @ =0x21d78c1, 0x21d7704
.word Function_21d7950+1 @ =0x21d7951, 0x21d7708
.word Function_21d79e4+1 @ =0x21d79e5, 0x21d770c



.thumb
Function_21d7710: @ 21d7710 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21d77d4
	ldr     r0, [r4, #0x0]
	bl      Function_21d77e8
	ldr     r0, [r4, #0x20]
	bl      Function_21d77fc
	pop     {r4,pc}
@ 0x21d7728


.thumb
Function_21d7728: @ 21d7728 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x28
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d773c
	bl      Function_2022974
branch_21d773c: @ 21d773c :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x28
	blx     Function_20d5124
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r0, [r4, #0x1c]
	mov     r2, r4
	mov     r0, #0x4
branch_21d7758: @ 21d7758 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x7
	blt     branch_21d7758
	mov     r0, r6
	bl      Function_21d13a0
	str     r0, [r4, #0x20]
	str     r5, [r4, #0x24]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d776e


.align 2, 0
.thumb
Function_21d7770: @ 21d7770 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d7782
	bl      Function_2022974
branch_21d7782: @ 21d7782 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d7798


.thumb
Function_21d7798: @ 21d7798 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21d7814
	mov     r7, r0
	mov     r1, #0x14
	mul     r7, r1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d77b8
	bl      Function_2022974
branch_21d77b8: @ 21d77b8 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	blx     Function_20d5124
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_21d4878
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d77d2


.align 2, 0
.thumb
Function_21d77d4: @ 21d77d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d77de
	bl      Function_2022974
branch_21d77de: @ 21d77de :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d77e6


.align 2, 0
.thumb
Function_21d77e8: @ 21d77e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d77f2
	bl      Function_2022974
branch_21d77f2: @ 21d77f2 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d77fa


.align 2, 0
.thumb
Function_21d77fc: @ 21d77fc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d7806
	bl      Function_2022974
branch_21d7806: @ 21d7806 :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d7814


.thumb
Function_21d7814: @ 21d7814 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d7818


.thumb
Function_21d7818: @ 21d7818 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x24
	bl      Function_2018144
	str     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_21d7830
	bl      Function_2022974
branch_21d7830: @ 21d7830 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	mov     r2, #0x24
	blx     Function_20d5124
	ldr     r1, [pc, #0x20] @ 0x21d785c, (=#0x4cd)
	ldr     r0, [r5, #0x8]
	mov     r2, r4
	str     r1, [r0, #0x1c]
	mov     r1, #0x0
	mov     r0, #0x4
branch_21d7846: @ 21d7846 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x7
	blt     branch_21d7846
	ldr     r0, [r5, #0x8]
	ldr     r2, [r5, #0x4]
	mov     r1, r4
	bl      Function_21d7a64
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d785c

.word 0x4cd @ 0x21d785c



.thumb
Function_21d7860: @ 21d7860 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21d7870
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21d7870: @ 21d7870 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21d787a
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21d787a: @ 21d787a :thumb
	ldr     r2, [r5, #0x1c]
	mov     r0, r4
	ldr     r1, [r2, #0xc]
	ldr     r2, [r2, #0x8]
	bl      Function_21d8434
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d7b20
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_21d78a0
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d82a8
	b       branch_21d78a6

branch_21d78a0: @ 21d78a0 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
branch_21d78a6: @ 21d78a6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d78aa


.align 2, 0
.thumb
Function_21d78ac: @ 21d78ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_21d7b70
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d78c0


.thumb
Function_21d78c0: @ 21d78c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21d794c
	add     r5, r1, r1
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
	lsl     r0, r1, #0
	lsl     r4, r5, #0
	lsl     r4, r7, #0
	lsl     r6, r2, #1
	lsl     r0, r5, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3c
	bl      Function_2018144
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_21d78f6
	bl      Function_2022974
branch_21d78f6: @ 21d78f6 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x3c
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d794c
@ 0x21d7908


.incbin "./baserom/overlay/overlay_0021.bin", 0x6b88, 0x21d794c - 0x21d7908


.thumb
branch_21d794c: @ 21d794c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d7950


.thumb
Function_21d7950: @ 21d7950 :thumb
	push    {r3-r7,lr}
	ldr     r4, [r1, #0x8]
	mov     r5, r2
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r6, [r3, #0x8]
	bl      Function_21d144c
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x4]
	bl      Function_21d144c
	ldr     r0, [r4, #0x8]
	ldr     r1, [r5, #0x8]
	bl      Function_21d144c
	ldr     r0, [r4, #0x18]
	ldr     r1, [r5, #0xc]
	bl      Function_21d144c
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r5, #0x10]
	bl      Function_21d144c
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	sub     r2, #0x13
	mov     r3, #0x3
	bl      Function_21d84a8
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	sub     r2, #0x13
	mov     r3, #0x3
	bl      Function_21d84a8
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x14]
	sub     r2, #0x13
	mov     r3, #0x2
	bl      Function_21d84a8
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_21d79d2
	mov     r0, #0x83
	ldr     r1, [r6, #0xc]
	lsl     r0, r0, #2
	bl      Function_201d580
	mov     r2, r0
	ldr     r3, [r6, #0x1c]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d8354
	b       branch_21d79e0

branch_21d79d2: @ 21d79d2 :thumb
	cmp     r0, #0x1
	bne     branch_21d79e0
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_21d83c0
branch_21d79e0: @ 21d79e0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d79e4


.thumb
Function_21d79e4: @ 21d79e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21d7a5c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r6, #0
	lsl     r4, r0, #1
	lsl     r4, r2, #1
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, r0
	sub     r1, #0x14
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d7a5c
@ 0x21d7a24


.incbin "./baserom/overlay/overlay_0021.bin", 0x6ca4, 0x21d7a5c - 0x21d7a24


.thumb
branch_21d7a5c: @ 21d7a5c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d7a62


.align 2, 0
.thumb
Function_21d7a64: @ 21d7a64 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x1c
	bl      Function_2018144
	str     r0, [r5, #0x8]
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x10
	mov     r2, #0x40
	mov     r3, #0x0
	bl      Function_21d154c
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x40
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x70
	mov     r3, #0x0
	bl      Function_21d154c
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x70
	add     r0, #0x8
	mov     r2, #0xc0
	mov     r3, #0x0
	bl      Function_21d154c
	mov     r0, #0x84
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x38
	add     r0, #0xc
	mov     r2, #0x48
	mov     r3, #0x74
	bl      Function_21d154c
	mov     r0, #0x84
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x8a
	add     r0, #0x10
	mov     r2, #0x9a
	mov     r3, #0x74
	bl      Function_21d154c
	ldr     r0, [r5, #0x8]
	mov     r1, #0xfe
	strb    r1, [r0, #0x14]
	ldr     r0, [r5, #0x8]
	mov     r1, #0xf8
	strb    r1, [r0, #0x15]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x68
	strb    r1, [r0, #0x16]
	ldr     r0, [r5, #0x8]
	mov     r2, #0x10
	strb    r1, [r0, #0x17]
	mov     r0, #0xb4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	add     r0, #0x18
	mov     r3, #0x74
	bl      Function_21d154c
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2018144
	mov     r3, r0
	str     r5, [r3, #0x0]
	str     r4, [r3, #0x4]
	str     r3, [r5, #0x4]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r2, [pc, #0xc] @ 0x21d7b1c, (=#Function_21d7b8c+1)
	mov     r1, #0x7
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d7b1a

.align 2
.word Function_21d7b8c+1 @ 0x21d7b1c



.thumb
Function_21d7b20: @ 21d7b20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x4
branch_21d7b2c: @ 21d7b2c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x7
	blt     branch_21d7b2c
	mov     r0, r4
	bl      Function_21d84b8
	ldr     r0, [r5, #0x0]
	bl      Function_202404c
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	ldr     r1, [r1, #0x4]
	bl      Function_21d84e0
	cmp     r0, #0x0
	bne     branch_21d7b52
	mov     r0, #0x0
	str     r0, [r5, #0xc]
branch_21d7b52: @ 21d7b52 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x4
	ldr     r0, [r5, #0x1c]
	beq     branch_21d7b64
	ldr     r1, [r5, #0xc]
	bl      Function_21d8580
	str     r0, [r5, #0x1c]
	pop     {r3-r5,pc}

branch_21d7b64: @ 21d7b64 :thumb
	mov     r1, #0x0
	bl      Function_21d8580
	str     r0, [r5, #0x1c]
	pop     {r3-r5,pc}
@ 0x21d7b6e


.align 2, 0
.thumb
Function_21d7b70: @ 21d7b70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x21d7b8c


.thumb
Function_21d7b8c: @ 21d7b8c :thumb
	push    {r4-r6,lr}
	ldr     r5, [r2, #0x4]
	mov     r6, r0
	ldr     r0, [r5, #0x1c]
	ldr     r4, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	lsl     r2, r6, #2
	str     r1, [r5, r2]
	cmp     r1, #0x0
	beq     branch_21d7ba6
	cmp     r1, #0x2
	beq     branch_21d7bb2
	b       branch_21d7c5a

branch_21d7ba6: @ 21d7ba6 :thumb
	ldr     r0, [pc, #0xb8] @ 0x21d7c60, (=#0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x14]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0x18]
	pop     {r4-r6,pc}

branch_21d7bb2: @ 21d7bb2 :thumb
	cmp     r6, #0x6
	bhi     branch_21d7c26
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r4, r2, #0
	lsl     r4, r3, #0
	lsl     r4, r4, #0
	lsl     r4, r6, #0
	lsl     r2, r4, #1
	lsl     r2, r1, #1
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x1
	str     r1, [r0, #0x34]
	b       branch_21d7c26
@ 0x21d7bd8


.incbin "./baserom/overlay/overlay_0021.bin", 0x6e58, 0x21d7c26 - 0x21d7bd8


.thumb
branch_21d7c26: @ 21d7c26 :thumb
	cmp     r6, #0x5
	bne     branch_21d7c54
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_21d7c4a
	mov     r0, r4
	bl      Function_21d8324
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x10
	bgt     branch_21d7c4a
	mov     r0, #0xf
	mvn     r0, r0
	cmp     r1, r0
	blt     branch_21d7c4a
	mov     r0, #0x0
	str     r0, [r4, #0xc]
branch_21d7c4a: @ 21d7c4a :thumb
	ldr     r0, [pc, #0x14] @ 0x21d7c60, (=#0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x14]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0x18]
branch_21d7c54: @ 21d7c54 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	pop     {r4-r6,pc}

branch_21d7c5a: @ 21d7c5a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	pop     {r4-r6,pc}
@ 0x21d7c60

.word 0x21bf6bc @ 0x21d7c60


.incbin "./baserom/overlay/overlay_0021.bin", 0x6ee4, 0x21d82a8 - 0x21d7c64


.thumb
Function_21d82a8: @ 21d82a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x1c]
	mov     r5, r0
	ldr     r3, [r2, #0xc]
	ldr     r1, [r2, #0x4]
	cmp     r3, #0x0
	bgt     branch_21d82e4
	ldr     r3, [r5, #0x10]
	cmp     r3, #0x0
	beq     branch_21d82e0
	bl      Function_21d8508
	cmp     r0, #0x0
	bne     branch_21d82d0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d8530
	b       branch_21d82e4

branch_21d82d0: @ 21d82d0 :thumb
	mov     r1, #0xa
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #6
	str     r1, [r0, #0xc]
	ldr     r0, [pc, #0x44] @ 0x21d8320, (=#0x68b)
	bl      Function_2005748
	b       branch_21d82e4

branch_21d82e0: @ 21d82e0 :thumb
	mov     r0, #0x0
	str     r0, [r2, #0x8]
branch_21d82e4: @ 21d82e4 :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bge     branch_21d82f2
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	b       branch_21d82fa

branch_21d82f2: @ 21d82f2 :thumb
	ble     branch_21d82fa
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	str     r1, [r0, #0x8]
branch_21d82fa: @ 21d82fa :thumb
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r2, #0x8]
	cmp     r0, #0x0
	beq     branch_21d831c
	ldr     r1, [r5, #0x10]
	cmp     r1, #0x0
	bge     branch_21d830a
	neg     r1, r1
branch_21d830a: @ 21d830a :thumb
	ldr     r0, [r2, #0xc]
	sub     r0, r0, r1
	str     r0, [r2, #0xc]
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x0
	bge     branch_21d831c
	mov     r0, #0x0
	str     r0, [r1, #0xc]
branch_21d831c: @ 21d831c :thumb
	pop     {r3-r5,pc}
@ 0x21d831e

.align 2
.word 0x68b @ 0x21d8320



.thumb
Function_21d8324: @ 21d8324 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x1c] @ 0x21d8350, (=#0x21bf6bc)
	ldr     r0, [r4, #0x14]
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	ldr     r1, [r4, #0x18]
	sub     r0, #0xf8
	sub     r1, #0x68
	sub     r2, #0xf8
	sub     r3, #0x68
	bl      Function_201d4cc
	mov     r1, #0xa
	mul     r1, r0
	str     r1, [r4, #0xc]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d8350

.word 0x21bf6bc @ 0x21d8350



.thumb
Function_21d8354: @ 21d8354 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	lsl     r0, r2, #12
	mov     r4, r1
	asr     r6, r3, #31
	mov     r2, r3
	asr     r1, r0, #31
	mov     r3, r6
	blx     Function_20e1f1c
	mov     r3, #0x2
	mov     r6, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r6
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	asr     r0, r1, #12
	ldrh    r2, [r5, #0x28]
	mov     r1, #0xb6
	add     r0, r2, r0
	strh    r0, [r5, #0x28]
	ldrh    r0, [r5, #0x28]
	strh    r0, [r5, #0x28]
	blx     Division
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	lsl     r3, r3, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	mov     r2, r6
	lsr     r3, r3, #16
	bl      Function_201c660
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0x9
	mov     r3, #0x80
	bl      Function_201c718
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0xc
	mov     r3, #0x68
	bl      Function_201c718
	ldrh    r0, [r5, #0x28]
	strh    r0, [r5, #0x2a]
	pop     {r4-r6,pc}
@ 0x21d83be


.align 2, 0
.thumb
Function_21d83c0: @ 21d83c0 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	ldr     r6, [r7, #0x1c]
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0xa
	ldr     r0, [r6, #0xc]
	lsl     r1, r1, #6
	sub     r2, r1, r0
	ldr     r0, [pc, #0x5c] @ 0x21d8430, (=#0x11c7)
	mul     r0, r2
	blx     Division
	ldr     r1, [r6, #0x8]
	cmp     r1, #0x1
	bne     branch_21d83e2
	neg     r0, r0
branch_21d83e2: @ 21d83e2 :thumb
	ldrh    r1, [r5, #0x2a]
	add     r0, r1, r0
	strh    r0, [r5, #0x28]
	ldrh    r0, [r5, #0x28]
	mov     r1, #0xb6
	strh    r0, [r5, #0x28]
	blx     Division
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	lsl     r3, r3, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_201c660
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0x9
	mov     r3, #0x80
	bl      Function_201c718
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0xc
	mov     r3, #0x68
	bl      Function_201c718
	ldr     r0, [r7, #0x1c]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	bne     branch_21d842c
	ldrh    r0, [r5, #0x28]
	strh    r0, [r5, #0x2a]
branch_21d842c: @ 21d842c :thumb
	pop     {r3-r7,pc}
@ 0x21d842e

.align 2
.word 0x11c7 @ 0x21d8430



.thumb
Function_21d8434: @ 21d8434 :thumb
	push    {r3,r4}
	ldr     r3, [r0, #0xc]
	cmp     r3, #0x0
	ble     branch_21d844c
	.hword  0x1e9b @ sub r3, r3, #0x2
	cmp     r3, #0x4
	blt     branch_21d8446
	str     r3, [r0, #0xc]
	b       branch_21d845c

branch_21d8446: @ 21d8446 :thumb
	mov     r3, #0x4
	str     r3, [r0, #0xc]
	b       branch_21d845c

branch_21d844c: @ 21d844c :thumb
	add     r4, r3, #0x2
	mov     r3, #0x3
	mvn     r3, r3
	cmp     r4, r3
	bgt     branch_21d845a
	str     r4, [r0, #0xc]
	b       branch_21d845c

branch_21d845a: @ 21d845a :thumb
	str     r3, [r0, #0xc]
branch_21d845c: @ 21d845c :thumb
	ldr     r3, [r0, #0xc]
	str     r3, [r0, #0x10]
	ldr     r4, [r0, #0xc]
	cmp     r4, #0x21
	bgt     branch_21d849e
	mov     r3, #0x20
	mvn     r3, r3
	cmp     r4, r3
	blt     branch_21d849e
	cmp     r1, #0x0
	bne     branch_21d848c
	mov     r3, #0x0
	str     r3, [r0, #0x10]
	ldr     r2, [r0, #0xc]
	cmp     r2, #0x4
	bgt     branch_21d849e
	sub     r1, r3, #0x4
	cmp     r2, r1
	blt     branch_21d849e
	ldr     r1, [pc, #0x20] @ 0x21d84a4, (=#0x4cd)
	str     r3, [r0, #0xc]
	str     r1, [r0, #0x1c]
	pop     {r3,r4}
	bx      lr

branch_21d848c: @ 21d848c :thumb
	cmp     r2, #0x1
	bne     branch_21d8498
	str     r3, [r0, #0x10]
	str     r3, [r0, #0xc]
	pop     {r3,r4}
	bx      lr

branch_21d8498: @ 21d8498 :thumb
	mov     r1, #0x21
	str     r1, [r0, #0x10]
	str     r1, [r0, #0xc]
branch_21d849e: @ 21d849e :thumb
	pop     {r3,r4}
	bx      lr
@ 0x21d84a2

.align 2
.word 0x4cd @ 0x21d84a4



.thumb
Function_21d84a8: @ 21d84a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_21d1524
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d84b8


.thumb
Function_21d84b8: @ 21d84b8 :thumb
	ldr     r2, [r0, #0x1c]
	ldr     r1, [r2, #0x2c]
	cmp     r1, #0x0
	beq     branch_21d84c6
	mov     r1, #0x2
	str     r1, [r0, #0x8]
	bx      lr

branch_21d84c6: @ 21d84c6 :thumb
	ldr     r1, [r2, #0x34]
	cmp     r1, #0x0
	beq     branch_21d84d2
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	bx      lr

branch_21d84d2: @ 21d84d2 :thumb
	ldr     r1, [r2, #0x30]
	cmp     r1, #0x0
	beq     branch_21d84dc
	mov     r1, #0x2
	str     r1, [r0, #0x4]
.thumb
branch_21d84dc: @ 21d84dc :thumb
	bx      lr
@ 0x21d84de


.align 2, 0
.thumb
Function_21d84e0: @ 21d84e0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_21d8502
	bge     branch_21d84ee
	mov     r2, #0x1
	b       branch_21d84f2

branch_21d84ee: @ 21d84ee :thumb
	mov     r2, #0x0
	mvn     r2, r2
branch_21d84f2: @ 21d84f2 :thumb
	mov     r0, r1
	mov     r1, r2
	bl      Function_21d387c
	cmp     r0, #0x0
	bne     branch_21d8502
	mov     r0, #0x0
	pop     {r3,pc}

branch_21d8502: @ 21d8502 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d8506


.align 2, 0
.thumb
Function_21d8508: @ 21d8508 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	beq     branch_21d852a
	bge     branch_21d8516
	mov     r2, #0x1
	b       branch_21d851a

branch_21d8516: @ 21d8516 :thumb
	mov     r2, #0x0
	mvn     r2, r2
branch_21d851a: @ 21d851a :thumb
	mov     r0, r1
	mov     r1, r2
	bl      Function_21d3844
	cmp     r0, #0x0
	bne     branch_21d852a
	mov     r0, #0x0
	pop     {r3,pc}

branch_21d852a: @ 21d852a :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d852e


.align 2, 0
.thumb
Function_21d8530: @ 21d8530 :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x10]
	str     r2, [r0, #0xc]
	ldr     r0, [r1, #0x1c]
	str     r2, [r0, #0x8]
	bx      lr
@ 0x21d853c


.incbin "./baserom/overlay/overlay_0021.bin", 0x77bc, 0x21d8580 - 0x21d853c


.thumb
Function_21d8580: @ 21d8580 :thumb
	cmp     r1, #0x0
	bge     branch_21d8586
	neg     r1, r1
branch_21d8586: @ 21d8586 :thumb
	cmp     r1, #0x40
	bge     branch_21d8598
	mov     r2, r0
	ldr     r1, [pc, #0x18] @ 0x21d85a8, (=#0x4cd)
	sub     r2, #0x29
	cmp     r2, r1
	blt     branch_21d85a6
	sub     r0, #0x29
	bx      lr

branch_21d8598: @ 21d8598 :thumb
	ldr     r1, [pc, #0x10] @ 0x21d85ac, (=#0x333)
	add     r2, r0, r1
	mov     r1, #0x1
	lsl     r1, r1, #12
	cmp     r2, r1
	bgt     branch_21d85a6
	mov     r0, r2
branch_21d85a6: @ 21d85a6 :thumb
	bx      lr
@ 0x21d85a8

.word 0x4cd @ 0x21d85a8
.word 0x333 @ 0x21d85ac



.thumb
Function_21d85b0: @ 21d85b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21d86e8
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d8724
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d874c
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21d87c8
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21d85f8, (=#0x21d87cd)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21d85fc, (=#0x21d8805)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d8600, (=#0x21d8929)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21d8604, (=#0x21d893d)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21d8608, (=#0x21d89b9)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21d860c, (=#0x21d89f5)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21d85f8

.word Function_21d87cc+1 @ =0x21d87cd, 0x21d85f8
.word Function_21d8804+1 @ =0x21d8805, 0x21d85fc
.word Function_21d8928+1 @ =0x21d8929, 0x21d8600
.word Function_21d893c+1 @ =0x21d893d, 0x21d8604
.word Function_21d89b8+1 @ =0x21d89b9, 0x21d8608
.word Function_21d89f4+1 @ =0x21d89f5, 0x21d860c



.thumb
Function_21d8610: @ 21d8610 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21d8788
	ldr     r0, [r4, #0x4]
	bl      Function_21d879c
	ldr     r0, [r4, #0x20]
	bl      Function_21d87b0
	pop     {r4,pc}
@ 0x21d8628


.incbin "./baserom/overlay/overlay_0021.bin", 0x78a8, 0x21d863c - 0x21d8628


.thumb
Function_21d863c: @ 21d863c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x21d8642


.align 2, 0
.thumb
Function_21d8644: @ 21d8644 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x0]
	cmp     r5, #0x6
	blt     branch_21d8652
	bl      Function_2022974
branch_21d8652: @ 21d8652 :thumb
	str     r5, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x21d8656


.align 2, 0
.thumb
Function_21d8658: @ 21d8658 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x21d865e


.incbin "./baserom/overlay/overlay_0021.bin", 0x78de, 0x21d86c4 - 0x21d865e


.thumb
Function_21d86c4: @ 21d86c4 :thumb
	ldr     r2, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [r2, #0x24]
	str     r1, [r2, #0x28]
	bx      lr
@ 0x21d86ce


.align 2, 0
.thumb
Function_21d86d0: @ 21d86d0 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x28]
	bx      lr
@ 0x21d86d6


.align 2, 0
.thumb
Function_21d86d8: @ 21d86d8 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x30]
	bx      lr
@ 0x21d86de


.align 2, 0
.thumb
Function_21d86e0: @ 21d86e0 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x34]
	bx      lr
@ 0x21d86e6


.align 2, 0
.thumb
Function_21d86e8: @ 21d86e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x38
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d86fa
	bl      Function_2022974
branch_21d86fa: @ 21d86fa :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x38
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d8724


.thumb
Function_21d8724: @ 21d8724 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d8736
	bl      Function_2022974
branch_21d8736: @ 21d8736 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d874c


.thumb
Function_21d874c: @ 21d874c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21d87c8
	mov     r7, r0
	mov     r1, #0x14
	mul     r7, r1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d876c
	bl      Function_2022974
branch_21d876c: @ 21d876c :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	blx     Function_20d5124
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_21d47f0
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d8786


.align 2, 0
.thumb
Function_21d8788: @ 21d8788 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d8792
	bl      Function_2022974
branch_21d8792: @ 21d8792 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d879a


.align 2, 0
.thumb
Function_21d879c: @ 21d879c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d87a6
	bl      Function_2022974
branch_21d87a6: @ 21d87a6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d87ae


.align 2, 0
.thumb
Function_21d87b0: @ 21d87b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d87ba
	bl      Function_2022974
branch_21d87ba: @ 21d87ba :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d87c8


.thumb
Function_21d87c8: @ 21d87c8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d87cc


.thumb
Function_21d87cc: @ 21d87cc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r6, r0
	bne     branch_21d87e2
	bl      Function_2022974
branch_21d87e2: @ 21d87e2 :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0x0]
	strb    r0, [r6, #0x1]
	strb    r0, [r6, #0x2]
	strb    r0, [r6, #0x3]
	str     r6, [r5, #0x8]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x30]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d8804


.thumb
Function_21d8804: @ 21d8804 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	cmp     r0, #0x1
	bne     branch_21d8818
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4,r5,pc}

branch_21d8818: @ 21d8818 :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_21d8824
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4,r5,pc}

branch_21d8824: @ 21d8824 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d891a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #0
	lsl     r4, r3, #1
	lsl     r4, r5, #1
	lsl     r0, r2, #3
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21d884a
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
branch_21d884a: @ 21d884a :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x1
	bne     branch_21d891e
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_21d8866
	ldr     r2, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r2, #0x0]
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	str     r0, [r4, #0x30]
	b       branch_21d891e

branch_21d8866: @ 21d8866 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	mov     r0, #0x4
	str     r0, [r4, #0x34]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d891e
@ 0x21d8876


.incbin "./baserom/overlay/overlay_0021.bin", 0x7af6, 0x21d891a - 0x21d8876


.thumb
branch_21d891a: @ 21d891a :thumb
	bl      Function_2022974
branch_21d891e: @ 21d891e :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d8924


.incbin "./baserom/overlay/overlay_0021.bin", 0x7ba4, 0x21d8928 - 0x21d8924


.thumb
Function_21d8928: @ 21d8928 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d893a


.align 2, 0
.thumb
Function_21d893c: @ 21d893c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	ldr     r3, [r3, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_21d89b2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r2, r0, #1
	lsl     r4, r2, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x64
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x64
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d89b2
@ 0x21d897a


.incbin "./baserom/overlay/overlay_0021.bin", 0x7bfa, 0x21d89b2 - 0x21d897a


.thumb
branch_21d89b2: @ 21d89b2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d89b6


.align 2, 0
.thumb
Function_21d89b8: @ 21d89b8 :thumb
	push    {r4,lr}
	mov     r3, r1
	ldr     r1, [r2, #0x30]
	mov     r4, r0
	ldr     r0, [r3, #0x8]
	cmp     r1, #0x0
	bne     branch_21d89d0
	ldr     r3, [r3, #0x4]
	mov     r1, r4
	bl      Function_21d8ed4
	b       branch_21d89ee

branch_21d89d0: @ 21d89d0 :thumb
	cmp     r1, #0x1
	beq     branch_21d89d8
	cmp     r1, #0x3
	bne     branch_21d89e2
branch_21d89d8: @ 21d89d8 :thumb
	ldr     r3, [r3, #0x4]
	mov     r1, r4
	bl      Function_21d9320
	b       branch_21d89ee

branch_21d89e2: @ 21d89e2 :thumb
	cmp     r1, #0x4
	beq     branch_21d89ee
	ldr     r3, [r3, #0x4]
	mov     r1, r4
	bl      Function_21d9390
branch_21d89ee: @ 21d89ee :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d89f2


.align 2, 0
.thumb
Function_21d89f4: @ 21d89f4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21d8a76
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r6, r5, #0
	lsl     r0, r0, #1
	lsl     r6, r1, #1
	lsl     r6, r3, #1
	ldr     r0, [r2, #0x28]
	cmp     r0, #0x0
	bne     branch_21d8a3a
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	mov     r1, r0
	sub     r1, #0x16
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d8a76

branch_21d8a3a: @ 21d8a3a :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d8a76
@ 0x21d8a40


.incbin "./baserom/overlay/overlay_0021.bin", 0x7cc0, 0x21d8a76 - 0x21d8a40


.thumb
branch_21d8a76: @ 21d8a76 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d8a7c


.incbin "./baserom/overlay/overlay_0021.bin", 0x7cfc, 0x21d8dd4 - 0x21d8a7c


.thumb
Function_21d8dd4: @ 21d8dd4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r5, [r0, #0x0]
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r6, r1
	mov     r7, r2
	str     r0, [sp, #0x4]
	add     r0, r5, #0x4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, #0x8
	bl      Function_201ae78
	cmp     r6, #0x3
	bhi     branch_21d8e18
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	mov     r4, #0x5a
	b       branch_21d8e18
@ 0x21d8e0e


.incbin "./baserom/overlay/overlay_0021.bin", 0x808e, 0x21d8e18 - 0x21d8e0e


.thumb
branch_21d8e18: @ 21d8e18 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d1ce0
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002eb4
	mov     r1, #0xd0
	sub     r0, r1, r0
	lsr     r4, r0, #1
	mov     r0, r6
	add     r4, #0x18
	bl      Function_2023c5c
	lsl     r1, r0, #4
	mov     r0, #0x20
	sub     r0, r0, r1
	lsr     r0, r0, #1
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x18] @ 0x21d8e64, (=#0x20100)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, #0x4
	mov     r2, r6
	mov     r3, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d8e64

.word 0x20100 @ 0x21d8e64



.thumb
Function_21d8e68: @ 21d8e68 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r4, [r0, #0x0]
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r5, r1
	str     r0, [sp, #0x4]
	add     r0, r4, #0x4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, #0x8
	bl      Function_201ae78
	mov     r0, #0x5d
	mov     r1, r5
	bl      Function_21d1ce0
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002eb4
	mov     r1, #0xd0
	sub     r0, r1, r0
	lsr     r5, r0, #1
	mov     r0, r6
	add     r5, #0x18
	bl      Function_2023c5c
	lsl     r1, r0, #4
	mov     r0, #0x20
	sub     r0, r0, r1
	lsr     r0, r0, #1
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x18] @ 0x21d8ed0, (=#0x20100)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r4, #0x4
	mov     r2, r6
	mov     r3, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d8ed0

.word 0x20100 @ 0x21d8ed0



.thumb
Function_21d8ed4: @ 21d8ed4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r1
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r5, #0x18]
	mov     r7, r3
	cmp     r1, r0
	beq     branch_21d8ef8
	str     r1, [r5, #0x18]
	cmp     r1, #0x1
	bne     branch_21d8ef8
	mov     r0, #0x40
	str     r0, [r5, #0x1c]
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d8e68
branch_21d8ef8: @ 21d8ef8 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	ble     branch_21d8f04
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x1c]
	b       branch_21d8f16

branch_21d8f04: @ 21d8f04 :thumb
	bne     branch_21d8f16
	ldr     r1, [r4, #0xc]
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d8dd4
	ldr     r0, [r5, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x1c]
branch_21d8f16: @ 21d8f16 :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r5, #0x0]
	cmp     r0, r1
	beq     branch_21d8f34
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d8f98
	ldr     r1, [r4, #0xc]
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d8dd4
	ldr     r0, [r4, #0xc]
	str     r0, [r5, #0x0]
branch_21d8f34: @ 21d8f34 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r0, [r5, #0x4]
	cmp     r0, r1
	beq     branch_21d8f48
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d9054
	ldr     r0, [r4, #0x10]
	str     r0, [r5, #0x4]
branch_21d8f48: @ 21d8f48 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r5, #0x8]
	cmp     r0, r1
	beq     branch_21d8f5c
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d90b4
	ldr     r0, [r4, #0x14]
	str     r0, [r5, #0x8]
branch_21d8f5c: @ 21d8f5c :thumb
	ldr     r1, [r4, #0x18]
	ldr     r0, [r5, #0xc]
	cmp     r0, r1
	beq     branch_21d8f70
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d9234
	ldr     r0, [r4, #0x18]
	str     r0, [r5, #0xc]
branch_21d8f70: @ 21d8f70 :thumb
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r5, #0x10]
	cmp     r0, r1
	beq     branch_21d8f84
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d9240
	ldr     r0, [r4, #0x1c]
	str     r0, [r5, #0x10]
branch_21d8f84: @ 21d8f84 :thumb
	ldr     r1, [r4, #0x20]
	ldr     r0, [r5, #0x14]
	cmp     r0, r1
	beq     branch_21d8f96
	mov     r0, r5
	bl      Function_21d924c
	ldr     r0, [r4, #0x20]
	str     r0, [r5, #0x14]
branch_21d8f96: @ 21d8f96 :thumb
	pop     {r3-r7,pc}
@ 0x21d8f98


.thumb
Function_21d8f98: @ 21d8f98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r7, r1
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2b
	mov     r2, #0x1
	add     r3, sp, #0x14
	bl      Function_21d27b8
	ldr     r2, [sp, #0x14]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x10]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x3
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_20198c0
	ldr     r0, [sp, #0x10]
	bl      Function_20181c4
	cmp     r7, #0x3
	bhi     branch_21d9008
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r0, r3, #0
	mov     r5, #0x6
	mov     r6, #0x2c
	b       branch_21d9008
@ 0x21d8ff8


.incbin "./baserom/overlay/overlay_0021.bin", 0x8278, 0x21d9008 - 0x21d8ff8


.thumb
branch_21d9008: @ 21d9008 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	add     r3, sp, #0x14
	bl      Function_21d27b8
	mov     r6, r0
	lsl     r0, r5, #24
	ldr     r2, [sp, #0x14]
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x3
	mov     r3, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_20198c0
	mov     r0, r6
	bl      Function_20181c4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	bl      Function_201c3c0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d9054


.thumb
Function_21d9054: @ 21d9054 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r4, [r0, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r5, r1
	mov     r6, r2
	str     r0, [sp, #0x4]
	add     r0, r4, #0x4
	mov     r1, #0x0
	mov     r2, #0x58
	mov     r3, #0x34
	bl      Function_201ae78
	add     r5, #0x51
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d1ce0
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	mov     r3, #0x50
	bl      Function_2002eec
	mov     r3, r0
	mov     r0, #0x34
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x21d90b0, (=#0x40300)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r3, #0x58
	add     r0, r4, #0x4
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d90ae

.align 2
.word 0x40300 @ 0x21d90b0



.thumb
Function_21d90b4: @ 21d90b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r5, [r0, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r6, r1
	mov     r7, r2
	str     r0, [sp, #0x4]
	add     r0, r5, #0x4
	mov     r1, #0x0
	mov     r2, #0x58
	mov     r3, #0x4d
	bl      Function_201ae78
	cmp     r6, #0x9
	bhi     branch_21d911c
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r6, r5, #0
	lsl     r2, r6, #0
	lsl     r6, r6, #0
	mov     r4, #0x7e
	b       branch_21d911c
@ 0x21d90fa


.incbin "./baserom/overlay/overlay_0021.bin", 0x837a, 0x21d911c - 0x21d90fa


.thumb
branch_21d911c: @ 21d911c :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d1ce0
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	mov     r3, #0x50
	bl      Function_2002eec
	mov     r3, r0
	mov     r0, #0x4d
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x21d9158, (=#0x40300)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r3, #0x58
	add     r0, r5, #0x4
	mov     r2, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d9156

.align 2
.word 0x40300 @ 0x21d9158



.thumb
Function_21d915c: @ 21d915c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r5, [r0, #0x0]
	mov     r7, r3
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r3, r7, #16
	mov     r6, r1
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x4]
	add     r0, r5, #0x4
	mov     r1, #0x0
	mov     r2, #0x58
	lsr     r3, r3, #16
	bl      Function_201ae78
	cmp     r6, #0x11
	bhi     branch_21d91f8
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r6, r5, #0
	lsl     r2, r6, #0
	lsl     r6, r6, #0
	lsl     r2, r7, #0
	lsl     r6, r7, #0
	lsl     r2, r0, #1
	lsl     r6, r0, #1
	lsl     r2, r1, #1
	lsl     r6, r1, #1
	lsl     r2, r2, #1
	lsl     r6, r2, #1
	lsl     r2, r3, #1
	lsl     r6, r3, #1
	lsl     r2, r4, #1
	lsl     r6, r4, #1
	mov     r4, #0x35
	b       branch_21d91f8
@ 0x21d91b6


.incbin "./baserom/overlay/overlay_0021.bin", 0x8436, 0x21d91f8 - 0x21d91b6


.thumb
branch_21d91f8: @ 21d91f8 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r4
	bl      Function_21d1ce0
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	mov     r3, #0x50
	bl      Function_2002eec
	mov     r3, r0
	str     r7, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x18] @ 0x21d9230, (=#0x40300)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r3, #0x58
	add     r0, r5, #0x4
	mov     r2, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d9230

.word 0x40300 @ 0x21d9230



.thumb
Function_21d9234: @ 21d9234 :thumb
	push    {r3,lr}
	mov     r3, #0x66
	bl      Function_21d915c
	pop     {r3,pc}
@ 0x21d923e


.align 2, 0


.thumb
Function_21d9240: @ 21d9240 :thumb
	push    {r3,lr}
	mov     r3, #0x78
	bl      Function_21d915c
	pop     {r3,pc}
@ 0x21d924a


.align 2, 0
.thumb
Function_21d924c: @ 21d924c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	ldr     r0, [r4, #0x20]
	bne     branch_21d925e
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r5,pc}

branch_21d925e: @ 21d925e :thumb
	mov     r1, #0x1
	bl      Function_2021cac
	cmp     r5, #0xe
	bhi     branch_21d931c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r4, #2
	lsl     r4, r3, #0
	lsl     r6, r4, #0
	lsl     r0, r6, #0
	lsl     r2, r7, #0
	lsl     r4, r0, #1
	lsl     r6, r1, #1
	lsl     r0, r3, #1
	lsl     r2, r4, #1
	lsl     r4, r5, #1
	lsl     r6, r6, #1
	lsl     r0, r0, #2
	lsl     r2, r1, #2
	lsl     r4, r2, #2
	lsl     r6, r3, #2
	ldr     r0, [r4, #0x20]
	mov     r1, #0x3
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x21d929c


.incbin "./baserom/overlay/overlay_0021.bin", 0x851c, 0x21d931c - 0x21d929c


.thumb
branch_21d931c: @ 21d931c :thumb
	pop     {r3-r5,pc}
@ 0x21d931e


.align 2, 0
.thumb
Function_21d9320: @ 21d9320 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r2, #0x34]
	mov     r4, r1
	cmp     r0, #0x4
	bne     branch_21d9384
	ldr     r0, [r2, #0x30]
	cmp     r0, #0x1
	bne     branch_21d9358
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	ldr     r3, [r5, #0x60]
	add     r0, #0x34
	mov     r2, #0x2
	bl      Function_21d1558
	b       branch_21d9384

branch_21d9358: @ 21d9358 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r3
	bl      Function_21d9454
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	ldr     r3, [r5, #0x60]
	add     r0, #0x34
	mov     r2, #0x2
	bl      Function_21d1558
branch_21d9384: @ 21d9384 :thumb
	add     r5, #0x34
	mov     r0, r5
	bl      Function_21d157c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d9390


.thumb
Function_21d9390: @ 21d9390 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	ldr     r0, [r6, #0x34]
	mov     r4, r1
	mov     r7, r3
	cmp     r0, #0x20
	bne     branch_21d93b2
	ldr     r0, [r5, #0x58]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d93f4
	b       branch_21d93d0

branch_21d93b2: @ 21d93b2 :thumb
	cmp     r0, #0x0
	bne     branch_21d93d0
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201ada4
	ldr     r0, [r4, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201a9a4
branch_21d93d0: @ 21d93d0 :thumb
	ldr     r2, [r6, #0x34]
	mov     r1, #0x4
	sub     r2, r1, r2
	ldr     r1, [pc, #0x18] @ 0x21d93f0, (=#0x7fff)
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #1
	lsr     r1, r1, #30
	add     r1, r3, r1
	lsl     r1, r1, #14
	ldr     r0, [r5, #0x58]
	lsr     r1, r1, #16
	bl      Function_2021c94
	pop     {r3-r7,pc}
@ 0x21d93ee

.align 2
.word 0x7fff @ 0x21d93f0



.thumb
Function_21d93f4: @ 21d93f4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r5, [r0, #0x0]
	mov     r4, r1
	add     r0, r5, #0x4
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x5e
	mov     r1, r4
	bl      Function_21d1ce0
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002eb4
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x28] @ 0x21d9450, (=#0x20100)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, #0x4
	mov     r2, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d9450

.word 0x20100 @ 0x21d9450



.thumb
Function_21d9454: @ 21d9454 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r1
	mov     r1, r0
	mov     r6, r2
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201ada4
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d8f98
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d8dd4
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d9054
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d90b4
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d9234
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d9240
	ldr     r1, [r4, #0x14]
	mov     r0, r4
	bl      Function_21d924c
	pop     {r4-r6,pc}
@ 0x21d94bc

.thumb
Function_21d94bc: @ 21d94bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21d9534
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d957c
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d95b4
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21d95e4
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21d9504, (=#0x21d95e9)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21d9508, (=#0x21d964d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d950c, (=#0x21d9781)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21d9510, (=#0x21d97a1)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21d9514, (=#0x21d9831)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21d9518, (=#0x21d9961)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21d9504

.word Function_21d95e8+1 @ =0x21d95e9, 0x21d9504
.word Function_21d964c+1 @ =0x21d964d, 0x21d9508
.word Function_21d9780+1 @ =0x21d9781, 0x21d950c
.word Function_21d97a0+1 @ =0x21d97a1, 0x21d9510
.word Function_21d9830+1 @ =0x21d9831, 0x21d9514
.word Function_21d9960+1 @ =0x21d9961, 0x21d9518



.thumb
Function_21d951c: @ 21d951c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21d95b8
	ldr     r0, [r4, #0x4]
	bl      Function_21d95cc
	ldr     r0, [r4, #0x20]
	bl      Function_21d95e0
	pop     {r4,pc}
@ 0x21d9534


.thumb
Function_21d9534: @ 21d9534 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d9546
	bl      Function_2022974
branch_21d9546: @ 21d9546 :thumb
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
branch_21d954c: @ 21d954c :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d954c
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d1410
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d1430
	str     r0, [r4, #0xc]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d957c


.thumb
Function_21d957c: @ 21d957c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d958e
	bl      Function_2022974
branch_21d958e: @ 21d958e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d95b4


.thumb
Function_21d95b4: @ 21d95b4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d95b8


.thumb
Function_21d95b8: @ 21d95b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d95c2
	bl      Function_2022974
branch_21d95c2: @ 21d95c2 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d95ca


.align 2, 0
.thumb
Function_21d95cc: @ 21d95cc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21d95d6
	bl      Function_2022974
branch_21d95d6: @ 21d95d6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21d95de


.align 2, 0
.thumb
Function_21d95e0: @ 21d95e0 :thumb
	bx      lr
@ 0x21d95e2


.align 2, 0
.thumb
Function_21d95e4: @ 21d95e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d95e8


.thumb
Function_21d95e8: @ 21d95e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	mov     r1, #0x9c
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21d95fe
	bl      Function_2022974
branch_21d95fe: @ 21d95fe :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x9c
	blx     Function_20d5124
	mov     r0, r4
	ldr     r1, [pc, #0x3c] @ 0x21d9648, (=#0xffff)
	str     r4, [r5, #0x8]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21dc35c
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d9adc
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_21db3e0
	mov     r0, r4
	mov     r1, r6
	bl      Function_21db428
	mov     r1, #0x0
	mov     r0, #0x4
branch_21d9638: @ 21d9638 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, #0x2c]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x6
	blt     branch_21d9638
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d9646

.align 2
.word 0xffff @ 0x21d9648



.thumb
Function_21d964c: @ 21d964c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0xc]
	ldr     r4, [r5, #0x8]
	ldr     r7, [r0, #0x4]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_21d9666
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_21d9666: @ 21d9666 :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_21d9672
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_21d9672: @ 21d9672 :thumb
	ldr     r0, [r6, #0x8]
	bl      Function_21d86d8
	cmp     r0, #0x0
	beq     branch_21d9682
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_21d9682: @ 21d9682 :thumb
	ldr     r0, [r6, #0x8]
	bl      Function_21d863c
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d9778
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r4, r4, #1
	lsl     r2, r6, #1
	lsl     r0, r1, #3
	lsl     r6, r2, #3
	ldr     r1, [r4, #0x24]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bne     branch_21d96b6
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	beq     branch_21d96de
branch_21d96b6: @ 21d96b6 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r7, #0x4]
	mov     r0, r4
	add     r0, #0x98
	str     r0, [r7, #0x8]
	mov     r0, r4
	bl      Function_21d9ca8
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9cb8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d9778

branch_21d96de: @ 21d96de :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d9b98
	ldr     r0, [r6, #0x4]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21d96f8
	mov     r0, r4
	mov     r1, r6
	bl      Function_21db2fc
branch_21d96f8: @ 21d96f8 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_21dc368
	b       branch_21d9778
@ 0x21d9702


.incbin "./baserom/overlay/overlay_0021.bin", 0x8982, 0x21d9778 - 0x21d9702


.thumb
branch_21d9778: @ 21d9778 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d977e


.align 2, 0
.thumb
Function_21d9780: @ 21d9780 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d9b24
	mov     r0, r5
	bl      Function_21db3c8
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d97a0

.thumb
Function_21d97a0: @ 21d97a0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r7, r2
	ldr     r5, [r3, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_21d982a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r4, r2, #1
	lsl     r6, r4, #1
	mov     r1, #0x4e
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r2, #0x4e
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d982a
@ 0x21d97e4


.incbin "./baserom/overlay/overlay_0021.bin", 0x8a64, 0x21d982a - 0x21d97e4


.thumb
branch_21d982a: @ 21d982a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d982e


.align 2, 0
.thumb
Function_21d9830: @ 21d9830 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r0, r2
	mov     r5, r1
	ldr     r0, [r0, #0x8]
	str     r2, [sp, #0x4]
	ldr     r6, [r3, #0x8]
	ldr     r4, [r5, #0x8]
	bl      Function_21d86d8
	cmp     r0, #0x0
	beq     branch_21d9856
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21dc96c
	b       branch_21d98e0

branch_21d9856: @ 21d9856 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_21dc7c0
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r2, [r6, #0x24]
	ldr     r3, [r4, r0]
	cmp     r3, r2
	bne     branch_21d9874
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r4, r0]
	ldr     r0, [r6, #0x28]
	cmp     r1, r0
	beq     branch_21d98d6
branch_21d9874: @ 21d9874 :thumb
	mov     r0, #0x41
	lsl     r0, r0, #2
	str     r2, [r4, r0]
	ldr     r1, [r6, #0x28]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	cmp     r3, #0x3
	bne     branch_21d9892
	mov     r0, r4
	mov     r1, r7
	bl      Function_21db6c8
	mov     r0, r4
	bl      Function_21dbda0
branch_21d9892: @ 21d9892 :thumb
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21db79c
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21dbe3c
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_21d98c4
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21db634
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_21dbbe4
branch_21d98c4: @ 21d98c4 :thumb
	mov     r3, #0x41
	lsl     r3, r3, #2
	ldr     r2, [r4, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r4, r3]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21dc8b4
branch_21d98d6: @ 21d98d6 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21db49c
branch_21d98e0: @ 21d98e0 :thumb
	mov     r7, #0x0
	str     r6, [sp, #0x8]
	mov     r5, r4
branch_21d98e6: @ 21d98e6 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r1, #0x2c]
	bl      Function_21d144c
	ldr     r1, [r5, #0x18]
	cmp     r1, #0x0
	beq     branch_21d990e
	cmp     r7, #0x5
	bne     branch_21d98fe
	mov     r3, #0x1
	b       branch_21d9900

branch_21d98fe: @ 21d98fe :thumb
	mov     r3, #0x3
branch_21d9900: @ 21d9900 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r2, #0x5
	ldr     r0, [r5, #0x0]
	mvn     r2, r2
	bl      Function_21d1524
branch_21d990e: @ 21d990e :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x8]
	cmp     r7, #0x6
	blt     branch_21d98e6
	mov     r5, #0x0
	mov     r7, #0x6
branch_21d9920: @ 21d9920 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d992c
	ldr     r1, [r6, #0x44]
	bl      Function_21d144c
branch_21d992c: @ 21d992c :thumb
	ldr     r1, [r4, #0x6c]
	cmp     r1, #0x0
	beq     branch_21d9940
	str     r7, [sp, #0x0]
	mov     r2, #0x5
	ldr     r0, [r4, #0x30]
	mvn     r2, r2
	mov     r3, #0xb
	bl      Function_21d1524
branch_21d9940: @ 21d9940 :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d9950
	ldr     r1, [r6, #0x44]
	bl      Function_21d144c
branch_21d9950: @ 21d9950 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0xf
	blt     branch_21d9920
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d9960


.thumb
Function_21d9960: @ 21d9960 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21d9a02
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r6, #0
	lsl     r4, r0, #1
	lsl     r4, r5, #1
	lsl     r6, r7, #1
	ldr     r0, [r2, #0x8]
	bl      Function_21d86d0
	cmp     r0, #0x1
	bne     branch_21d9996
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d9a02

branch_21d9996: @ 21d9996 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	mov     r1, r0
	sub     r1, #0x16
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d9a02
@ 0x21d99b0


.incbin "./baserom/overlay/overlay_0021.bin", 0x8c30, 0x21d9a02 - 0x21d99b0


.thumb
branch_21d9a02: @ 21d9a02 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d9a08


.incbin "./baserom/overlay/overlay_0021.bin", 0x8c88, 0x21d9adc - 0x21d9a08


.thumb
Function_21d9adc: @ 21d9adc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_21d9bec
	ldr     r0, [r5, #0x28]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r3, [r5, #0x24]
	mov     r0, r5
	mov     r2, r6
	bl      Function_21d9b58
	mov     r0, r5
	bl      Function_21d9b04
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d9b04


.thumb
Function_21d9b04: @ 21d9b04 :thumb
	mov     r2, #0x0
	mov     r3, r0
	mov     r1, #0x3
branch_21d9b0a: @ 21d9b0a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r3, #0x2c]
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x6
	blt     branch_21d9b0a
	mov     r2, #0x0
	mov     r1, #0x3
branch_21d9b18: @ 21d9b18 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0x44]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0xf
	blt     branch_21d9b18
	bx      lr
@ 0x21d9b24


.thumb
Function_21d9b24: @ 21d9b24 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d9d00
	mov     r0, r4
	bl      Function_21d9d50
	pop     {r4,pc}
@ 0x21d9b34


.incbin "./baserom/overlay/overlay_0021.bin", 0x8db4, 0x21d9b58 - 0x21d9b34


.thumb
Function_21d9b58: @ 21d9b58 :thumb
	push    {r3,lr}
	cmp     r3, #0x3
	bhi     branch_21d9b94
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r4, r4, #0
	bl      Function_21d9d78
	pop     {r3,pc}
@ 0x21d9b78


.incbin "./baserom/overlay/overlay_0021.bin", 0x8df8, 0x21d9b94 - 0x21d9b78


.thumb
branch_21d9b94: @ 21d9b94 :thumb
	pop     {r3,pc}
@ 0x21d9b96


.align 2, 0
.thumb
Function_21d9b98: @ 21d9b98 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d9c90
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d9bb0
	pop     {r3-r5,pc}
@ 0x21d9bb0

.thumb
Function_21d9bb0: @ 21d9bb0 :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bhi     branch_21d9bea
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	bl      Function_21d9e08
	pop     {r3,pc}
@ 0x21d9bd0


.incbin "./baserom/overlay/overlay_0021.bin", 0x8e50, 0x21d9bea - 0x21d9bd0


.thumb
branch_21d9bea: @ 21d9bea :thumb
	pop     {r3,pc}
@ 0x21d9bec


.thumb
Function_21d9bec: @ 21d9bec :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x20
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x40
	mov     r3, #0xc0
	bl      Function_21d154c
	mov     r0, #0xec
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r3, #0xbc
	bl      Function_21d154c
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x40
	add     r0, #0x8
	mov     r2, #0x60
	mov     r3, #0xc0
	bl      Function_21d154c
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x60
	add     r0, #0xc
	mov     r2, #0x80
	mov     r3, #0xc0
	bl      Function_21d154c
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x80
	add     r0, #0x10
	mov     r2, #0xa0
	mov     r3, #0xc0
	bl      Function_21d154c
	mov     r0, #0xfc
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x14
	mov     r2, #0xc0
	mov     r3, #0xac
	bl      Function_21d154c
	str     r4, [r5, #0x10]
	str     r5, [r5, #0x14]
	str     r6, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x21d9c8c, (=#Function_21d9d18+1)
	mov     r1, #0x6
	add     r3, #0x10
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d9c8c

.word Function_21d9d18+1 @ 0x21d9c8c



.thumb
Function_21d9c90: @ 21d9c90 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d9ca8
	ldr     r0, [r4, #0x0]
	bl      Function_202404c
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_21d9cb8
	pop     {r4,pc}

    
Function_21d9ca8: @ 21d9ca8 :thumb
	mov     r2, #0x0
	mov     r1, #0x3
branch_21d9cac: @ 21d9cac :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0x2c]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x6
	blt     branch_21d9cac
	bx      lr
@ 0x21d9cb8


.thumb
Function_21d9cb8: @ 21d9cb8 :thumb
	cmp     r1, #0x3
	bhi     branch_21d9cfe
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r2, r2, #0
	lsl     r6, r3, #0
	lsl     r2, r5, #0
	ldr     r1, [r0, #0x30]
	cmp     r1, #0x2
	beq     branch_21d9cfe
	mov     r1, #0x1
	str     r1, [r0, #0x30]
	bx      lr
@ 0x21d9cdc


.incbin "./baserom/overlay/overlay_0021.bin", 0x8f5c, 0x21d9cfe - 0x21d9cdc


.thumb
branch_21d9cfe: @ 21d9cfe :thumb
	bx      lr
@ 0x21d9d00


.thumb
Function_21d9d00: @ 21d9d00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d9d16


.align 2, 0
.thumb
Function_21d9d18: @ 21d9d18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r2, #0x4]
	lsl     r0, r5, #2
	add     r0, r4, r0
	str     r1, [r0, #0x2c]
	cmp     r1, #0x2
	bne     branch_21d9d46
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	mov     r2, r5
	bl      Function_21d4f20
	mov     r0, r4
	add     r0, #0x80
	str     r5, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_21d9d46: @ 21d9d46 :thumb
	mov     r0, #0x0
	add     r4, #0x94
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d9d4e


.align 2, 0
.thumb
Function_21d9d50: @ 21d9d50 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2024034
	ldr     r0, [r4, #0xc]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d9d66


.incbin "./baserom/overlay/overlay_0021.bin", 0x8fe6, 0x21d9d78 - 0x21d9d66


.thumb
Function_21d9d78: @ 21d9d78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r2
	mov     r1, #0x18
	str     r2, [sp, #0xc]
	bl      Function_2018144
	ldr     r1, [sp, #0x4]
	str     r0, [r1, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x30
	ldr     r6, [sp, #0x14]
	str     r0, [sp, #0x10]
branch_21d9d98: @ 21d9d98 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r7, [sp, #0x10]
	str     r0, [sp, #0x18]
	add     r0, #0x10
	mov     r4, #0x0
	mov     r5, #0x30
	sub     r7, #0x10
	str     r0, [sp, #0x18]
branch_21d9da8: @ 21d9da8 :thumb
	mov     r0, r5
	add     r0, #0x28
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r3, r5
	ldr     r1, [r0, #0xc]
	add     r0, r4, r6
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r2, [sp, #0x18]
	mov     r1, r7
	sub     r3, #0x28
	bl      Function_21d154c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x50
	cmp     r4, #0x2
	blt     branch_21d9da8
	ldr     r0, [sp, #0x10]
	.hword  0x1cb6 @ add r6, r6, #0x2
	add     r0, #0x20
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x3
	blt     branch_21d9d98
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x4]
	str     r1, [r0, #0x10]
	str     r0, [r0, #0x14]
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x18] @ 0x21d9e04, (=#Function_21d9e90+1)
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x6
	ldr     r0, [r0, #0xc]
	add     r3, #0x10
	bl      Function_2023fcc
	ldr     r1, [sp, #0x4]
	str     r0, [r1, #0x8]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d9e02

.align 2
.word Function_21d9e90+1 @ 0x21d9e04



.thumb
Function_21d9e08: @ 21d9e08 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x3
branch_21d9e14: @ 21d9e14 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x44]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x6
	blt     branch_21d9e14
	ldr     r0, [r4, #0x8]
	bl      Function_202404c
	ldr     r0, [r5, #0x8]
	bl      Function_21d8658
	cmp     r0, #0x5
	bhi     branch_21d9e8c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r2, #0
	lsl     r2, r4, #0
	lsl     r6, r5, #0
	lsl     r2, r7, #0
	lsl     r6, r0, #1
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x2
	beq     branch_21d9e8c
	mov     r0, #0x1
	str     r0, [r4, #0x44]
	pop     {r3-r5,pc}
@ 0x21d9e52


.incbin "./baserom/overlay/overlay_0021.bin", 0x90d2, 0x21d9e8c - 0x21d9e52


.thumb
branch_21d9e8c: @ 21d9e8c :thumb
	pop     {r3-r5,pc}
@ 0x21d9e8e


.align 2, 0
.thumb
Function_21d9e90: @ 21d9e90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r2, #0x4]
	lsl     r0, r5, #2
	add     r0, r4, r0
	str     r1, [r0, #0x44]
	cmp     r1, #0x2
	bne     branch_21d9eb0
	mov     r2, r5
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	add     r2, #0x8
	bl      Function_21d4f20
	add     r4, #0x84
	str     r5, [r4, #0x0]
branch_21d9eb0: @ 21d9eb0 :thumb
	pop     {r3-r5,pc}
@ 0x21d9eb2


.incbin "./baserom/overlay/overlay_0021.bin", 0x9132, 0x21da534 - 0x21d9eb2


.thumb
Function_21da534: @ 21da534 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r6, r0
	cmp     r4, #0x5
	bhi     branch_21da592
	add     r5, r4, r4
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r6, r3, #0
	lsl     r0, r5, #0
	lsl     r2, r6, #0
	lsl     r4, r7, #0
	mov     r2, #0x10
	mov     r1, #0xd4
	mov     r3, #0x1c
	mov     r0, r2
	b       branch_21da592
@ 0x21da562


.incbin "./baserom/overlay/overlay_0021.bin", 0x97e2, 0x21da592 - 0x21da562


.thumb
branch_21da592: @ 21da592 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	str     r4, [sp, #0xc]
	bl      Function_21d4fe4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21da5a6


.align 2, 0
.thumb
Function_21da5a8: @ 21da5a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xfc] @ 0x21da6ac, (=#0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21da67e
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21da68c
	ldr     r0, [r4, #0x18]
	bl      Function_21d4f7c
	cmp     r0, #0x5
	bhi     branch_21da66e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r0, #2
	lsl     r2, r1, #0
	lsl     r2, r4, #0
	lsl     r0, r7, #0
	lsl     r0, r2, #1
	lsl     r0, r5, #1
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r1, [r0, #0x2c]
	b       branch_21da66e
@ 0x21da5fa


.incbin "./baserom/overlay/overlay_0021.bin", 0x987a, 0x21da66e - 0x21da5fa


.thumb
branch_21da66e: @ 21da66e :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	b       branch_21da68c

branch_21da67e: @ 21da67e :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x8c
	str     r1, [r0, #0x0]
branch_21da68c: @ 21da68c :thumb
	ldr     r0, [pc, #0x1c] @ 0x21da6ac, (=#0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x48]
	tst     r0, r1
	beq     branch_21da6aa
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x80
	str     r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r1, [r0, #0x2c]
branch_21da6aa: @ 21da6aa :thumb
	pop     {r4,pc}
@ 0x21da6ac

.word 0x21bf67c @ 0x21da6ac



.thumb
Function_21da6b0: @ 21da6b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r1
	mov     r1, #0x7e
	lsl     r1, r1, #2
	bl      Function_2018144
	ldr     r1, [sp, #0x10]
	str     r0, [r1, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	mov     r0, #0x10
	str     r0, [sp, #0x1c]
	mov     r0, #0x6
	ldr     r7, [sp, #0x20]
	str     r0, [sp, #0x18]
branch_21da6d4: @ 21da6d4 :thumb
	mov     r4, #0x0
	mov     r6, #0x30
branch_21da6d8: @ 21da6d8 :thumb
	ldr     r0, [sp, #0x18]
	add     r1, r4, r0
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x5
	bhi     branch_21da740
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r2, #0
	lsl     r2, r4, #0
	lsl     r6, r5, #0
	lsl     r2, r7, #0
	lsl     r6, r0, #1
	cmp     r4, #0x2
	bne     branch_21da702
	mov     r1, #0x0
	b       branch_21da740

branch_21da702: @ 21da702 :thumb
	mov     r5, #0x1
	b       branch_21da740
@ 0x21da706


.incbin "./baserom/overlay/overlay_0021.bin", 0x9986, 0x21da740 - 0x21da706


.thumb
branch_21da740: @ 21da740 :thumb
	cmp     r4, #0x2
	bge     branch_21da766
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r5, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	add     r2, r4, r7
	mov     r1, #0x1c
	mul     r1, r2
	ldr     r0, [r0, #0x1c]
	ldr     r2, [sp, #0x1c]
	add     r0, r0, r1
	mov     r1, r6
	mov     r3, #0x3c
	bl      Function_21d4fe4
	b       branch_21da776

branch_21da766: @ 21da766 :thumb
	ldr     r0, [sp, #0x10]
	add     r2, r4, r7
	ldr     r3, [r0, #0x1c]
	mov     r0, #0x1c
	mul     r0, r2
	add     r0, r3, r0
	bl      Function_21da534
branch_21da776: @ 21da776 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x50
	cmp     r4, #0x3
	blt     branch_21da6d8
	ldr     r0, [sp, #0x1c]
	.hword  0x1cff @ add r7, r7, #0x3
	add     r0, #0x20
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x6
	blt     branch_21da6d4
	ldr     r0, [sp, #0x14]
	bl      Function_21d4ee4
	ldr     r1, [sp, #0x10]
	mov     r2, #0x3
	str     r0, [r1, #0x18]
	ldr     r1, [r1, #0x1c]
	mov     r3, #0x6
	bl      Function_21d4f04
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21da7ae


.align 2, 0
.thumb
Function_21da7b0: @ 21da7b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xcc] @ 0x21da884, (=#0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21da87a
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21da880
	ldr     r0, [r4, #0x18]
	bl      Function_21d4f7c
	sub     r0, #0x8
	cmp     r0, #0x5
	bhi     branch_21da880
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r2, r4, #0
	lsl     r2, r7, #0
	lsl     r0, r2, #1
	lsl     r0, r5, #1
	lsl     r0, r0, #2
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r1, [r0, #0x44]
	pop     {r4,pc}
@ 0x21da804


.incbin "./baserom/overlay/overlay_0021.bin", 0x9a84, 0x21da87a - 0x21da804


.thumb
branch_21da87a: @ 21da87a :thumb
	mov     r0, #0x0
	add     r4, #0x8c
	str     r0, [r4, #0x0]
branch_21da880: @ 21da880 :thumb
	pop     {r4,pc}
@ 0x21da882

.align 2
.word 0x21bf67c @ 0x21da884


.incbin "./baserom/overlay/overlay_0021.bin", 0x9b08, 0x21db2fc - 0x21da888


.thumb
Function_21db2fc: @ 21db2fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x84] @ 0x21db388, (=#0x21bf67c)
	mov     r4, r1
	ldr     r1, [r0, #0x48]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21db31e
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d4f20
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8c
	str     r1, [r0, #0x0]
branch_21db31e: @ 21db31e :thumb
	ldr     r0, [pc, #0x68] @ 0x21db388, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_21db33a
	mov     r1, #0x0
	ldr     r0, [r5, #0x18]
	.hword  0x1e4a @ sub r2, r1, #0x1
	bl      Function_21d4f20
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8c
	str     r1, [r0, #0x0]
branch_21db33a: @ 21db33a :thumb
	ldr     r0, [pc, #0x4c] @ 0x21db388, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_21db356
	mov     r1, #0x1
	ldr     r0, [r5, #0x18]
	sub     r2, r1, #0x2
	bl      Function_21d4f20
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8c
	str     r1, [r0, #0x0]
branch_21db356: @ 21db356 :thumb
	ldr     r0, [pc, #0x30] @ 0x21db388, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_21db372
	mov     r1, #0x1
	ldr     r0, [r5, #0x18]
	mov     r2, r1
	bl      Function_21d4f20
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8c
	str     r1, [r0, #0x0]
branch_21db372: @ 21db372 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21da5a8
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21db38c
	pop     {r3-r5,pc}
@ 0x21db388

.word 0x21bf67c @ 0x21db388



.thumb
Function_21db38c: @ 21db38c :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bhi     branch_21db3c6
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	bl      Function_21da7b0
	pop     {r3,pc}
@ 0x21db3ac


.incbin "./baserom/overlay/overlay_0021.bin", 0xa62c, 0x21db3c6 - 0x21db3ac


.thumb
branch_21db3c6: @ 21db3c6 :thumb
	pop     {r3,pc}
@ 0x21db3c8

.thumb
Function_21db3c8: @ 21db3c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_20181c4
	ldr     r0, [r4, #0x18]
	bl      Function_21d4efc
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x21db3e0


.thumb
Function_21db3e0: @ 21db3e0 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x24]
	ldr     r3, [r0, #0x28]
	bl      Function_21db3ec
	pop     {r3,pc}
@ 0x21db3ec


.thumb
Function_21db3ec: @ 21db3ec :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bhi     branch_21db426
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	bl      Function_21da6b0
	pop     {r3,pc}
@ 0x21db40c


.incbin "./baserom/overlay/overlay_0021.bin", 0xa68c, 0x21db426 - 0x21db40c


.thumb
branch_21db426: @ 21db426 :thumb
	pop     {r3,pc}
@ 0x21db428


.thumb
Function_21db428: @ 21db428 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x3
	bhi     branch_21db456
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	mov     r4, #0x1
	b       branch_21db45a
@ 0x21db44a


.incbin "./baserom/overlay/overlay_0021.bin", 0xa6ca, 0x21db456 - 0x21db44a


.thumb
branch_21db456: @ 21db456 :thumb
	bl      Function_2022974
branch_21db45a: @ 21db45a :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x4
	mov     r2, r4
	bl      Function_21d4f20
	pop     {r3-r5,pc}
@ 0x21db466


.incbin "./baserom/overlay/overlay_0021.bin", 0xa6e6, 0x21db49c - 0x21db466


.thumb
Function_21db49c: @ 21db49c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r2, #0x4]
	mov     r4, r1
	bl      Function_21d3998
	cmp     r0, #0x0
	beq     branch_21db4ca
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21db4e4
	cmp     r0, #0x0
	beq     branch_21db4c0
	ldr     r0, [r4, #0x18]
	ldr     r1, [r5, #0x0]
	bl      Function_21d25b8
branch_21db4c0: @ 21db4c0 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21db4d4
	pop     {r3-r5,pc}

branch_21db4ca: @ 21db4ca :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21db4e4
	pop     {r3-r5,pc}
@ 0x21db4d4


.thumb
Function_21db4d4: @ 21db4d4 :thumb
	ldr     r3, [pc, #0x8] @ 0x21db4e0, (=#Function_21d2544+1)
	mov     r2, r0
	ldr     r0, [r1, #0x18]
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x21db4de

.align 2
.word Function_21d2544+1 @ 0x21db4e0



.thumb
Function_21db4e4: @ 21db4e4 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r5, r1
	bl      Function_21d25a0
	cmp     r5, r0
	beq     branch_21db508
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_21d2584
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21db508: @ 21db508 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21db50c


.incbin "./baserom/overlay/overlay_0021.bin", 0xa78c, 0x21db634 - 0x21db50c


.thumb
Function_21db634: @ 21db634 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r6, [r1, #0x0]
	mov     r5, r0
	mov     r0, r6
	mov     r4, r2
	bl      Function_21d26e0
	mov     r7, r0
	mov     r0, #0x3f
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r4, [sp, #0x8]
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	mov     r1, r7
	mov     r2, #0x80
	mov     r3, #0x1
	bl      Function_2009a4c
	mov     r1, r5
	add     r1, #0xf4
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_200a3dc
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x40] @ 0x21db6c0, (=#0x3f01)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x52
	str     r4, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r2, #0x81
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, r5
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21db6c4, (=#0x3eff)
	mov     r1, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x53
	str     r4, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r2, #0x7f
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21db6c0

.word 0x3f01 @ 0x21db6c0
.word 0x3eff @ 0x21db6c4



.thumb
Function_21db6c8: @ 21db6c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	ldr     r4, [r1, #0x0]
	bl      Function_200a4e4
	mov     r0, #0x5
	mov     r1, r5
	lsl     r0, r0, #6
	add     r1, #0xf4
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r0, #0x52
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xfc
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	sub     r1, #0x4c
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	pop     {r3-r5,pc}
@ 0x21db706


.incbin "./baserom/overlay/overlay_0021.bin", 0xa986, 0x21db79c - 0x21db706


.thumb
Function_21db79c: @ 21db79c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	ldr     r4, [r1, #0x0]
	ldr     r3, [pc, #0x74] @ 0x21db818, (=#0x3efc)
	mov     r5, r0
	mov     r0, #0x0
	str     r3, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r0, #0x5
	str     r1, [sp, #0x10]
	lsl     r0, r0, #6
	mov     r6, r2
	ldr     r2, [r4, r0]
	str     r2, [sp, #0x14]
	add     r2, r0, #0x4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r0
	add     r2, #0x8
	ldr     r2, [r4, r2]
	add     r0, #0xc
	str     r2, [sp, #0x1c]
	ldr     r0, [r4, r0]
	mov     r2, r3
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x28]
	add     r1, r3, #0x1
	add     r0, sp, #0x4c
	sub     r2, #0x79
	.hword  0x1c9b @ add r3, r3, #0x2
	bl      Function_20093b4
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x20
	str     r0, [sp, #0x40]
	mov     r0, #0x2
	str     r0, [sp, #0x44]
	mov     r0, r5
	str     r6, [sp, #0x48]
	bl      Function_21db924
	mov     r3, #0x41
	lsl     r3, r3, #2
	ldr     r2, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r5, r3]
	mov     r0, r5
	add     r1, sp, #0x2c
	bl      Function_21db81c
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x21db818

.word 0x3efc @ 0x21db818



.thumb
Function_21db81c: @ 21db81c :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bhi     branch_21db856
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	bl      Function_21db944
	pop     {r3,pc}
@ 0x21db83c


.incbin "./baserom/overlay/overlay_0021.bin", 0xaabc, 0x21db856 - 0x21db83c


.thumb
branch_21db856: @ 21db856 :thumb
	pop     {r3,pc}
@ 0x21db858


.incbin "./baserom/overlay/overlay_0021.bin", 0xaad8, 0x21db924 - 0x21db858


.thumb
Function_21db924: @ 21db924 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
branch_21db92c: @ 21db92c :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21db938
	bl      Function_2021bd4
	str     r6, [r5, #0x30]
branch_21db938: @ 21db938 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_21db92c
	pop     {r4-r6,pc}
@ 0x21db942


.align 2, 0
.thumb
Function_21db944: @ 21db944 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x30
	mov     r6, r1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	mov     r7, r6
	str     r0, [sp, #0x4]
	add     r7, #0x8
branch_21db95c: @ 21db95c :thumb
	ldr     r0, [sp, #0x8]
	mov     r4, #0x30
	lsl     r1, r0, #12
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [r6, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r5, r0, r1
branch_21db976: @ 21db976 :thumb
	str     r4, [r6, #0x8]
	ldr     r0, [r7, #0x0]
	lsl     r0, r0, #12
	str     r0, [r7, #0x0]
	mov     r0, r6
	bl      Function_2021b90
	mov     r1, #0x0
	str     r0, [r5, #0x30]
	bl      Function_2021d6c
	ldr     r0, [sp, #0xc]
	add     r4, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, #0x2
	blt     branch_21db976
	ldr     r0, [sp, #0x8]
	add     r0, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x3
	blt     branch_21db95c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21db9b4


.incbin "./baserom/overlay/overlay_0021.bin", 0xac34, 0x21dbbe4 - 0x21db9b4


.thumb
Function_21dbbe4: @ 21dbbe4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	ldr     r4, [r1, #0x0]
	ldr     r3, [pc, #0x1b0] @ 0x21dbd9c, (=#0x3eff)
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	str     r3, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r0, #0x5
	str     r1, [sp, #0x10]
	lsl     r0, r0, #6
	mov     r5, r2
	ldr     r2, [r4, r0]
	str     r2, [sp, #0x14]
	add     r2, r0, #0x4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r0
	add     r2, #0x8
	ldr     r2, [r4, r2]
	add     r0, #0xc
	str     r2, [sp, #0x1c]
	ldr     r0, [r4, r0]
	mov     r2, r3
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x28]
	add     r1, r3, #0x1
	add     r0, sp, #0x58
	sub     r2, #0x7c
	.hword  0x1c9b @ add r3, r3, #0x2
	bl      Function_20093b4
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x38]
	add     r0, sp, #0x58
	str     r0, [sp, #0x3c]
	mov     r0, #0xf
	str     r0, [sp, #0x4c]
	mov     r0, #0x2
	str     r0, [sp, #0x50]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	mov     r0, #0x10
	ldr     r7, [sp, #0x34]
	str     r5, [sp, #0x54]
	str     r0, [sp, #0x30]
branch_21dbc4e: @ 21dbc4e :thumb
	ldr     r0, [sp, #0x30]
	mov     r6, #0x0
	str     r0, [sp, #0x44]
	lsl     r1, r0, #12
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x2c]
	lsl     r1, r7, #2
	mov     r5, #0x1c
	add     r4, r0, r1
branch_21dbc66: @ 21dbc66 :thumb
	str     r5, [sp, #0x40]
	lsl     r0, r5, #12
	str     r0, [sp, #0x40]
	add     r0, sp, #0x38
	bl      Function_2021b90
	mov     r1, r4
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	add     r0, r6, r7
	cmp     r0, #0xe
	bhi     branch_21dbd78
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r3, #0
	lsl     r2, r5, #0
	lsl     r0, r7, #0
	lsl     r6, r0, #1
	lsl     r4, r2, #1
	lsl     r2, r4, #1
	lsl     r0, r6, #1
	lsl     r6, r7, #1
	lsl     r4, r1, #2
	lsl     r2, r3, #2
	lsl     r0, r5, #2
	lsl     r6, r6, #2
	lsl     r4, r0, #3
	lsl     r2, r2, #3
	lsl     r0, r4, #3
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2021d6c
	b       branch_21dbd78
@ 0x21dbcb6


.incbin "./baserom/overlay/overlay_0021.bin", 0xaf36, 0x21dbd78 - 0x21dbcb6


.thumb
branch_21dbd78: @ 21dbd78 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	bge     branch_21dbd84
	b       branch_21dbc66

branch_21dbd84: @ 21dbd84 :thumb
	ldr     r0, [sp, #0x30]
	.hword  0x1cff @ add r7, r7, #0x3
	add     r0, #0x20
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x34]
	cmp     r0, #0x5
	bge     branch_21dbd98
	b       branch_21dbc4e

branch_21dbd98: @ 21dbd98 :thumb
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x21dbd9c

.word 0x3eff @ 0x21dbd9c



.thumb
Function_21dbda0: @ 21dbda0 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
branch_21dbda8: @ 21dbda8 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dbdbc
	bl      Function_2021bd4
	mov     r0, r5
	add     r0, #0xa8
	str     r6, [r0, #0x0]
branch_21dbdbc: @ 21dbdbc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_21dbda8
	pop     {r4-r6,pc}
@ 0x21dbdc6


.incbin "./baserom/overlay/overlay_0021.bin", 0xb046, 0x21dbe3c - 0x21dbdc6


.thumb
Function_21dbe3c: @ 21dbe3c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r4, [r1, #0x0]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x48] @ 0x21dbe94, (=#0x3e83)
	mov     r6, r2
	bl      Function_2009dc8
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	bl      Function_200a72c
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x20]
	mov     r0, #0x2
	str     r0, [sp, #0x24]
	mov     r0, r5
	str     r6, [sp, #0x28]
	bl      Function_21dc068
	mov     r3, #0x42
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	mov     r2, r3
	str     r0, [sp, #0x0]
	add     r2, #0x48
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r2, [r4, r2]
	ldr     r3, [r5, r3]
	mov     r0, r5
	add     r1, sp, #0x4
	bl      Function_21dbe98
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21dbe92

.align 2
.word 0x3e83 @ 0x21dbe94



.thumb
Function_21dbe98: @ 21dbe98 :thumb
	push    {r3,lr}
	cmp     r3, #0x0
	beq     branch_21dbea8
	cmp     r3, #0x1
	beq     branch_21dbeae
	cmp     r3, #0x2
	beq     branch_21dbeb4
	pop     {r3,pc}

branch_21dbea8: @ 21dbea8 :thumb
	bl      Function_21dc088
	pop     {r3,pc}

branch_21dbeae: @ 21dbeae :thumb
	bl      Function_21dc12c
	pop     {r3,pc}

branch_21dbeb4: @ 21dbeb4 :thumb
	ldr     r3, [sp, #0x8]
	cmp     r3, #0x0
	bne     branch_21dbec0
	bl      Function_21dc1e8
	pop     {r3,pc}

branch_21dbec0: @ 21dbec0 :thumb
	bl      Function_21dc2a4
	pop     {r3,pc}
@ 0x21dbec6


.incbin "./baserom/overlay/overlay_0021.bin", 0xb146, 0x21dc068 - 0x21dbec6


.thumb
Function_21dc068: @ 21dc068 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
branch_21dc070: @ 21dc070 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0x0
	beq     branch_21dc07c
	bl      Function_21d4d1c
	str     r6, [r5, #0x6c]
branch_21dc07c: @ 21dc07c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_21dc070
	pop     {r4-r6,pc}
@ 0x21dc086


.align 2, 0
.thumb
Function_21dc088: @ 21dc088 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	str     r2, [sp, #0xc]
	bl      Function_201fab4
	str     r0, [sp, #0x10]
	add     r0, #0xb
	mov     r5, #0x0
	str     r0, [sp, #0x10]
branch_21dc0a4: @ 21dc0a4 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r7, r0
	cmp     r5, #0x5
	bhi     branch_21dc0e2
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	mov     r4, #0x51
	b       branch_21dc0e2
@ 0x21dc0d0


.incbin "./baserom/overlay/overlay_0021.bin", 0xb350, 0x21dc0e2 - 0x21dc0d0


.thumb
branch_21dc0e2: @ 21dc0e2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x3c] @ 0x21dc128, (=#0x2b9)
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d4dac
	neg     r0, r0
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x10]
	str     r7, [r0, #0x4]
	ldr     r1, [r6, #0x30]
	str     r1, [r0, #0xc]
	mov     r1, #0x5
	mvn     r1, r1
	str     r1, [r0, #0x14]
	bl      Function_21d4ca0
	str     r0, [r6, #0x6c]
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_2012a60
	mov     r0, r7
	bl      Function_21d4da0
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0x6
	blt     branch_21dc0a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dc128

.word 0x2b9 @ 0x21dc128



.thumb
Function_21dc12c: @ 21dc12c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	str     r2, [sp, #0xc]
	bl      Function_201fab4
	str     r0, [sp, #0x10]
	add     r0, #0xb
	mov     r5, #0x0
	str     r0, [sp, #0x10]
branch_21dc148: @ 21dc148 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r7, r0
	cmp     r5, #0x9
	bhi     branch_21dc19e
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r6, r5, #0
	lsl     r2, r6, #0
	lsl     r6, r6, #0
	mov     r4, #0x36
	b       branch_21dc19e
@ 0x21dc17c


.incbin "./baserom/overlay/overlay_0021.bin", 0xb3fc, 0x21dc19e - 0x21dc17c


.thumb
branch_21dc19e: @ 21dc19e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x3c] @ 0x21dc1e4, (=#0x2b9)
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d4dac
	neg     r0, r0
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x10]
	str     r7, [r0, #0x4]
	ldr     r1, [r6, #0x30]
	str     r1, [r0, #0xc]
	mov     r1, #0x5
	mvn     r1, r1
	str     r1, [r0, #0x14]
	bl      Function_21d4ca0
	str     r0, [r6, #0x6c]
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_2012a60
	mov     r0, r7
	bl      Function_21d4da0
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0xa
	blt     branch_21dc148
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dc1e4

.word 0x2b9 @ 0x21dc1e4



.thumb
Function_21dc1e8: @ 21dc1e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	str     r2, [sp, #0xc]
	bl      Function_201fab4
	str     r0, [sp, #0x10]
	add     r0, #0xb
	mov     r5, #0x0
	str     r0, [sp, #0x10]
branch_21dc204: @ 21dc204 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r7, r0
	cmp     r5, #0x9
	bhi     branch_21dc25a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r6, r5, #0
	lsl     r2, r6, #0
	lsl     r6, r6, #0
	mov     r4, #0x40
	b       branch_21dc25a
@ 0x21dc238


.incbin "./baserom/overlay/overlay_0021.bin", 0xb4b8, 0x21dc25a - 0x21dc238


.thumb
branch_21dc25a: @ 21dc25a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x3c] @ 0x21dc2a0, (=#0x2b9)
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d4dac
	neg     r0, r0
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x10]
	str     r7, [r0, #0x4]
	ldr     r1, [r6, #0x30]
	str     r1, [r0, #0xc]
	mov     r1, #0x5
	mvn     r1, r1
	str     r1, [r0, #0x14]
	bl      Function_21d4ca0
	str     r0, [r6, #0x6c]
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_2012a60
	mov     r0, r7
	bl      Function_21d4da0
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0xa
	blt     branch_21dc204
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dc2a0

.word 0x2b9 @ 0x21dc2a0



.thumb
Function_21dc2a4: @ 21dc2a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	str     r2, [sp, #0xc]
	bl      Function_201fab4
	str     r0, [sp, #0x10]
	add     r0, #0xb
	mov     r5, #0x0
	str     r0, [sp, #0x10]
branch_21dc2c0: @ 21dc2c0 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r7, r0
	cmp     r5, #0x8
	bhi     branch_21dc310
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r3, #0
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r4, #0
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	lsl     r0, r6, #0
	mov     r4, #0x41
	b       branch_21dc310
@ 0x21dc2f2


.incbin "./baserom/overlay/overlay_0021.bin", 0xb572, 0x21dc310 - 0x21dc2f2


.thumb
branch_21dc310: @ 21dc310 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x3c] @ 0x21dc358, (=#0x2b9)
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d4dac
	neg     r0, r0
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x10]
	str     r7, [r0, #0x4]
	ldr     r1, [r6, #0x30]
	str     r1, [r0, #0xc]
	mov     r1, #0x5
	mvn     r1, r1
	str     r1, [r0, #0x14]
	bl      Function_21d4ca0
	str     r0, [r6, #0x6c]
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_2012a60
	mov     r0, r7
	bl      Function_21d4da0
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0x9
	blt     branch_21dc2c0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dc356


.incbin "./baserom/overlay/overlay_0021.bin", 0xb5d6, 0x21dc358 - 0x21dc356


.word 0x2b9 @ 0x21dc358



.thumb
Function_21dc35c: @ 21dc35c :thumb
	ldr     r1, [pc, #0x4] @ 0x21dc364, (=#0xffff)
	add     r0, #0x84
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21dc364

.word 0xffff @ 0x21dc364



.thumb
Function_21dc368: @ 21dc368 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21dc3bc
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dc380
	pop     {r3-r5,pc}
@ 0x21dc380


.thumb
Function_21dc380: @ 21dc380 :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bhi     branch_21dc3ba
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	bl      Function_21dc48c
	pop     {r3,pc}
@ 0x21dc3a0


.incbin "./baserom/overlay/overlay_0021.bin", 0xb620, 0x21dc3ba - 0x21dc3a0


.thumb
branch_21dc3ba: @ 21dc3ba :thumb
	pop     {r3,pc}
@ 0x21dc3bc


.thumb
Function_21dc3bc: @ 21dc3bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	cmp     r0, #0x5
	bhi     branch_21dc47a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r4, r6, #0
	lsl     r6, r1, #1
	lsl     r0, r6, #1
	lsl     r2, r1, #2
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_21d86c4
	ldr     r0, [pc, #0x98] @ 0x21dc484, (=#0x5dd)
	bl      Function_2005748
	b       branch_21dc47a
@ 0x21dc3f2


.incbin "./baserom/overlay/overlay_0021.bin", 0xb672, 0x21dc47a - 0x21dc3f2


.thumb
branch_21dc47a: @ 21dc47a :thumb
	ldr     r0, [pc, #0xc] @ 0x21dc488, (=#0xffff)
	add     r5, #0x80
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21dc482

.align 2
.word 0x5dd @ 0x21dc484
.word 0xffff @ 0x21dc488



.thumb
Function_21dc48c: @ 21dc48c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	mov     r4, #0x64
	cmp     r0, #0x5
	bhi     branch_21dc4ca
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	mov     r4, #0x0
	b       branch_21dc4ca
@ 0x21dc4b8


.incbin "./baserom/overlay/overlay_0021.bin", 0xb738, 0x21dc4ca - 0x21dc4b8


.thumb
branch_21dc4ca: @ 21dc4ca :thumb
	cmp     r4, #0x64
	beq     branch_21dc4e6
	ldr     r0, [r6, #0x8]
	bl      Function_21d8658
	cmp     r4, r0
	beq     branch_21dc4e6
	ldr     r0, [pc, #0x14] @ 0x21dc4f0, (=#0x5dd)
	bl      Function_2005748
	ldr     r0, [r6, #0x8]
	mov     r1, r4
	bl      Function_21d8644
branch_21dc4e6: @ 21dc4e6 :thumb
	ldr     r0, [pc, #0xc] @ 0x21dc4f4, (=#0xffff)
	add     r5, #0x84
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21dc4ee

.align 2
.word 0x5dd @ 0x21dc4f0
.word 0xffff @ 0x21dc4f4


.incbin "./baserom/overlay/overlay_0021.bin", 0xb778, 0x21dc7c0 - 0x21dc4f8


.thumb
Function_21dc7c0: @ 21dc7c0 :thumb
	push    {r3-r5,lr}
	mov     r3, #0x4b
	lsl     r3, r3, #2
	ldr     r2, [r0, r3]
	cmp     r2, #0x0
	bne     branch_21dc7ec
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	ble     branch_21dc7f0
	str     r2, [r0, r3]
	mov     r5, #0x0
	add     r2, r3, #0x4
	str     r5, [r0, r2]
	mov     r2, r3
	ldr     r4, [r1, #0x8]
	add     r2, #0x8
	add     r3, #0x8
	str     r4, [r0, r2]
	ldr     r0, [r0, r3]
	str     r5, [r0, #0x0]
	str     r5, [r1, #0x4]
	pop     {r3-r5,pc}

branch_21dc7ec: @ 21dc7ec :thumb
	bl      Function_21dc7f4
branch_21dc7f0: @ 21dc7f0 :thumb
	pop     {r3-r5,pc}
@ 0x21dc7f2


.align 2, 0
.thumb
Function_21dc7f4: @ 21dc7f4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r3, #0x4b
	mov     r4, r0
	lsl     r3, r3, #2
	ldr     r1, [r4, r3]
	cmp     r1, #0x0
	beq     branch_21dc8a6
	add     r0, r3, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21dc814
	cmp     r0, #0x1
	beq     branch_21dc866
	add     sp, #0x8
	pop     {r4,pc}

branch_21dc814: @ 21dc814 :thumb
	cmp     r1, #0x1
	bne     branch_21dc82e
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	sub     r3, #0x20
	str     r0, [sp, #0x4]
	add     r0, r4, r3
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_21d2648
	b       branch_21dc842

branch_21dc82e: @ 21dc82e :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	sub     r3, #0x20
	str     r0, [sp, #0x4]
	add     r0, r4, r3
	mov     r1, #0x10
	mov     r3, r2
	bl      Function_21d2648
branch_21dc842: @ 21dc842 :thumb
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r3, [r4, r0]
	mov     r0, #0x10
	sub     r0, r0, r3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x21dc8ac, (=#0x4001050)
	mov     r1, #0x0
	mov     r2, #0x4
	blx     Function_20bf55c
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4,pc}

branch_21dc866: @ 21dc866 :thumb
	sub     r3, #0x20
	add     r0, r4, r3
	bl      Function_21d2664
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r3, [r4, r1]
	mov     r2, #0x10
	sub     r2, r2, r3
	lsl     r2, r2, #8
	orr     r3, r2
	ldr     r2, [pc, #0x30] @ 0x21dc8b0, (=#0x4001052)
	cmp     r0, #0x1
	strh    r3, [r2, #0x0]
	bne     branch_21dc8a6
	add     r1, #0x20
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_21dc892
	mov     r1, #0x0
	sub     r0, r2, #0x2
	strh    r1, [r0, #0x0]
branch_21dc892: @ 21dc892 :thumb
	mov     r1, #0x4d
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	mov     r2, #0x1
	str     r2, [r0, #0x0]
	sub     r0, r1, #0x4
	mov     r2, #0x0
	str     r2, [r4, r0]
	sub     r1, #0x8
	str     r2, [r4, r1]
branch_21dc8a6: @ 21dc8a6 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21dc8aa

.align 2
.word 0x4001050 @ 0x21dc8ac
.word 0x4001052 @ 0x21dc8b0



.thumb
Function_21dc8b4: @ 21dc8b4 :thumb
	push    {r3,lr}
	cmp     r2, #0x2
	bne     branch_21dc8ca
	cmp     r3, #0x0
	bne     branch_21dc8c4
	bl      Function_21dc90c
	pop     {r3,pc}

branch_21dc8c4: @ 21dc8c4 :thumb
	bl      Function_21dc93c
	pop     {r3,pc}

branch_21dc8ca: @ 21dc8ca :thumb
	bl      Function_21dc8d0
	pop     {r3,pc}
@ 0x21dc8d0


.thumb
Function_21dc8d0: @ 21dc8d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, #0x0
branch_21dc8d8: @ 21dc8d8 :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21dc8e4
	mov     r1, r4
	bl      Function_2021fe0
branch_21dc8e4: @ 21dc8e4 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0x0
	beq     branch_21dc8f2
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_2012af0
branch_21dc8f2: @ 21dc8f2 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dc902
	mov     r1, r4
	bl      Function_2021fe0
branch_21dc902: @ 21dc902 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0xf
	blt     branch_21dc8d8
	pop     {r4-r6,pc}
@ 0x21dc90c


.thumb
Function_21dc90c: @ 21dc90c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
branch_21dc914: @ 21dc914 :thumb
	cmp     r4, #0xa
	beq     branch_21dc932
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21dc924
	mov     r1, r6
	bl      Function_2021fe0
branch_21dc924: @ 21dc924 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0x0
	beq     branch_21dc932
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      Function_2012af0
branch_21dc932: @ 21dc932 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_21dc914
	pop     {r4-r6,pc}
@ 0x21dc93c


.thumb
Function_21dc93c: @ 21dc93c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
branch_21dc944: @ 21dc944 :thumb
	cmp     r4, #0x9
	beq     branch_21dc962
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21dc954
	mov     r1, r6
	bl      Function_2021fe0
branch_21dc954: @ 21dc954 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0x0
	beq     branch_21dc962
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      Function_2012af0
branch_21dc962: @ 21dc962 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_21dc944
	pop     {r4-r6,pc}
@ 0x21dc96c


.thumb
Function_21dc96c: @ 21dc96c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r2
	ldr     r0, [r4, #0x8]
	bl      Function_21d86e0
	cmp     r0, #0x4
	bne     branch_21dc9b8
	ldr     r0, [r4, #0x8]
	bl      Function_21d86d8
	cmp     r0, #0x3
	bne     branch_21dc99c
	mov     r1, #0x0
	mov     r0, #0x2
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	sub     r2, #0x10
	mov     r3, #0x3f
	bl      Function_200aae0
	add     sp, #0x4
	pop     {r3,r4,pc}

branch_21dc99c: @ 21dc99c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_21d86d8
	cmp     r0, #0x1
	bne     branch_21dc9b8
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, r0
	sub     r1, #0x14
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
branch_21dc9b8: @ 21dc9b8 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21dc9bc


.thumb
Function_21dc9bc: @ 21dc9bc :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21dca5c
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21dcaa0
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21dcaf4
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21dc9fc, (=#0x21dcaf9)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21dca00, (=#0x21dcb6d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21dca04, (=#0x21dcba9)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21dca08, (=#0x21dcbd9)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21dca0c, (=#0x21dccd9)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21dca10, (=#0x21dcd05)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21dc9fc

.word Function_21dcaf8+1 @ =0x21dcaf9, 0x21dc9fc
.word Function_21dcb6c+1 @ =0x21dcb6d, 0x21dca00
.word Function_21dcba8+1 @ =0x21dcba9, 0x21dca04
.word Function_21dcbd8+1 @ =0x21dcbd9, 0x21dca08
.word Function_21dccd8+1 @ =0x21dccd9, 0x21dca0c
.word Function_21dcd04+1 @ =0x21dcd05, 0x21dca10



.thumb
Function_21dca14: @ 21dca14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21dcacc
	ldr     r0, [r4, #0x4]
	bl      Function_21dcae0
	pop     {r4,pc}
@ 0x21dca26


.align 2, 0
.thumb
Function_21dca28: @ 21dca28 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21dca2e


.align 2, 0
.thumb
Function_21dca30: @ 21dca30 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x0]
	cmp     r5, #0x3
	blt     branch_21dca3e
	bl      Function_2022974
branch_21dca3e: @ 21dca3e :thumb
	str     r5, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dca42


.incbin "./baserom/overlay/overlay_0021.bin", 0xbcc2, 0x21dca5c - 0x21dca42


.thumb
Function_21dca5c: @ 21dca5c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dca6e
	bl      Function_2022974
branch_21dca6e: @ 21dca6e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21dca9e


.align 2, 0
.thumb
Function_21dcaa0: @ 21dcaa0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x14
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dcab2
	bl      Function_2022974
branch_21dcab2: @ 21dcab2 :thumb
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
branch_21dcab8: @ 21dcab8 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21dcab8
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21dcacc


.thumb
Function_21dcacc: @ 21dcacc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21dcad6
	bl      Function_2022974
branch_21dcad6: @ 21dcad6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21dcade


.align 2, 0
.thumb
Function_21dcae0: @ 21dcae0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21dcaea
	bl      Function_2022974
branch_21dcaea: @ 21dcaea :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21dcaf2


.align 2, 0
.thumb
Function_21dcaf4: @ 21dcaf4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dcaf8


.thumb
Function_21dcaf8: @ 21dcaf8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r5, r1
	mov     r1, #0x34
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dcb0e
	bl      Function_2022974
branch_21dcb0e: @ 21dcb0e :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Function_20d5124
	str     r4, [r6, #0x8]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21dcb68, (=#0x1744)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_21dcb2a
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	b       branch_21dcb3a

branch_21dcb2a: @ 21dcb2a :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x1
	bhi     branch_21dcb36
	mov     r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_21dcb3a

branch_21dcb36: @ 21dcb36 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x4]
branch_21dcb3a: @ 21dcb3a :thumb
	mov     r2, r4
	ldr     r0, [r6, #0x4]
	mov     r1, r5
	add     r2, #0xc
	bl      Function_21dd900
	str     r0, [r4, #0x4]
	mov     r2, r4
	ldr     r0, [r6, #0x4]
	mov     r1, r5
	add     r2, #0x10
	bl      Function_21dd908
	str     r0, [r4, #0x8]
	ldr     r2, [r6, #0x4]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21ddabc
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21dcb68

.word 0x1744 @ 0x21dcb68



.thumb
Function_21dcb6c: @ 21dcb6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r6, r1
	ldr     r4, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_21dcb7e
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_21dcb7e: @ 21dcb7e :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_21dcb88
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_21dcb88: @ 21dcb88 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r6, #0x4]
	cmp     r1, r0
	beq     branch_21dcba4
	mov     r0, r4
	bl      Function_21ddb68
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21ddabc
	ldr     r0, [r6, #0x4]
	str     r0, [r4, #0x0]
branch_21dcba4: @ 21dcba4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21dcba8


.thumb
Function_21dcba8: @ 21dcba8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r5, [r4, #0x8]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_21dcbb8
	bl      Function_20181c4
branch_21dcbb8: @ 21dcbb8 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21dcbc2
	bl      Function_20181c4
branch_21dcbc2: @ 21dcbc2 :thumb
	mov     r0, r5
	bl      Function_21ddb68
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21dcbd6


.align 2, 0
.thumb
Function_21dcbd8: @ 21dcbd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r3, #0x8]
	mov     r4, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21dccc6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r7, #0
	lsl     r6, r2, #2
	lsl     r6, r7, #2
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0xc4] @ 0x21dcccc, (=#0x844)
	bl      Function_2018144
	ldr     r2, [pc, #0xc0] @ 0x21dcccc, (=#0x844)
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	blx     Function_20d5124
	ldr     r5, [r4, #0x8]
	ldr     r0, [r7, #0x4]
	mov     r1, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_21d5868
	ldr     r1, [pc, #0xac] @ 0x21dccd0, (=#0x804)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_21d5890
	ldr     r1, [pc, #0xa4] @ 0x21dccd4, (=#0x808)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21dccc6
@ 0x21dcc3a


.incbin "./baserom/overlay/overlay_0021.bin", 0xbeba, 0x21dccc6 - 0x21dcc3a


.thumb
branch_21dccc6: @ 21dccc6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dcccc

.word 0x844 @ 0x21dcccc
.word 0x804 @ 0x21dccd0
.word 0x808 @ 0x21dccd4



.thumb
Function_21dccd8: @ 21dccd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	mov     r7, r2
	ldr     r4, [r3, #0x8]
	str     r0, [sp, #0x4]
	bl      Function_21ddc14
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, r7
	mov     r3, r4
	bl      Function_21dda80
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dcd02


.align 2, 0
.thumb
Function_21dcd04: @ 21dcd04 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21dcdc4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r6, #0
	lsl     r6, r3, #1
	lsl     r4, r6, #1
	lsl     r6, r3, #2
	mov     r0, r5
	bl      Function_21ddb8c
	ldr     r0, [r6, #0xc]
	cmp     r0, #0x0
	bne     branch_21dcd44
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21dd490
	b       branch_21dcd50

branch_21dcd44: @ 21dcd44 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21dd554
branch_21dcd50: @ 21dcd50 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21dcdc4
@ 0x21dcd58


.incbin "./baserom/overlay/overlay_0021.bin", 0xbfd8, 0x21dcdc4 - 0x21dcd58


.thumb
branch_21dcdc4: @ 21dcdc4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21dcdc8


.incbin "./baserom/overlay/overlay_0021.bin", 0xc048, 0x21dd420 - 0x21dcdc8


.thumb
Function_21dd420: @ 21dd420 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2021fe0
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	mov     r4, #0x0
	mov     r6, #0x1
branch_21dd440: @ 21dd440 :thumb
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21dd440
	pop     {r4-r6,pc}
@ 0x21dd458


.incbin "./baserom/overlay/overlay_0021.bin", 0xc6d8, 0x21dd490 - 0x21dd458


.thumb
Function_21dd490: @ 21dd490 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21dd420
	ldr     r0, [r4, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21dd4f6
	cmp     r6, #0x0
	beq     branch_21dd4d2
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	b       branch_21dd4f6

branch_21dd4d2: @ 21dd4d2 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21dd4f6: @ 21dd4f6 :thumb
	mov     r1, #0x5b
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	bl      Function_21d24fc
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21dd506


.incbin "./baserom/overlay/overlay_0021.bin", 0xc786, 0x21dd554 - 0x21dd506


.thumb
Function_21dd554: @ 21dd554 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	mov     r4, r3
	bl      Function_21dd420
	cmp     r4, #0x0
	bne     branch_21dd57e
	ldr     r0, [r5, #0x8]
	mov     r1, #0x28
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r3, #0x78
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x21dd5e0, (=#0x814)
	ldr     r2, [r5, #0x4]
	add     r0, r6, r0
	bl      Function_21d2648
branch_21dd57e: @ 21dd57e :thumb
	ldr     r0, [r7, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21dd5dc
	cmp     r4, #0x0
	beq     branch_21dd5b6
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r2, #0x2f
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r5, #0x10]
	sub     r2, #0x3f
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21dd5b6: @ 21dd5b6 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r3, #0x2f
	str     r3, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r5, #0x10]
	sub     r3, #0x3f
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d23f8
branch_21dd5dc: @ 21dd5dc :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dd5e0

.word 0x814 @ 0x21dd5e0


.incbin "./baserom/overlay/overlay_0021.bin", 0xc864, 0x21dd710 - 0x21dd5e4


.thumb
Function_21dd710: @ 21dd710 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r2
	mov     r6, r0
	str     r1, [sp, #0x28]
	str     r3, [sp, #0x2c]
	bl      Function_21dd8b4
	mov     r0, r4
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1e
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	ldr     r3, [pc, #0x174] @ 0x21dd8a4, (=#0x808)
	str     r0, [sp, #0x8]
	mov     r0, r6
	ldr     r3, [r6, r3]
	add     r0, #0xec
	mov     r2, r1
	bl      Function_21d5948
	ldr     r1, [pc, #0x168] @ 0x21dd8a8, (=#0x838)
	str     r0, [r6, r1]
	ldr     r0, [r4, #0x20]
	sub     r1, r0, #0x1
	ldr     r0, [r4, #0xc]
	add     r7, r1, r0
	ldr     r0, [sp, #0x2c]
	mov     r1, r7
	bl      Function_2018184
	mov     r5, r0
	mov     r1, #0x0
	cmp     r7, #0x0
	ble     branch_21dd776
branch_21dd75a: @ 21dd75a :thumb
	ldr     r2, [r4, #0xc]
	cmp     r1, r2
	bcs     branch_21dd766
	ldr     r0, [r4, #0x4]
	ldrb    r0, [r0, r1]
	b       branch_21dd76e

branch_21dd766: @ 21dd766 :thumb
	sub     r2, r1, r2
	ldr     r0, [r4, #0x1c]
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
branch_21dd76e: @ 21dd76e :thumb
	strb    r0, [r5, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r7
	blt     branch_21dd75a
branch_21dd776: @ 21dd776 :thumb
	mov     r0, r4
	add     r0, #0x2c
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	mov     r0, #0x47
	lsl     r0, r0, #4
	mov     r1, #0x1e
	ldr     r3, [pc, #0x11c] @ 0x21dd8a4, (=#0x808)
	str     r7, [sp, #0x8]
	ldr     r3, [r6, r3]
	add     r0, r6, r0
	mov     r2, r1
	bl      Function_21d5948
	mov     r1, #0x21
	lsl     r1, r1, #6
	str     r0, [r6, r1]
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, r6
	mov     r1, #0x1e
	add     r0, #0xec
	mov     r2, r1
	bl      Function_21d5214
	mov     r0, #0x47
	lsl     r0, r0, #4
	mov     r1, #0x1e
	add     r0, r6, r0
	mov     r2, r1
	bl      Function_21d5214
	ldr     r0, [sp, #0x28]
	ldr     r0, [r0, #0x0]
	bl      Function_21d37bc
	ldr     r1, [pc, #0xe8] @ 0x21dd8ac, (=#0x15d)
	cmp     r0, r1
	bne     branch_21dd7d6
	mov     r1, #0x5
	str     r1, [sp, #0x38]
	mov     r1, #0x5c
	str     r1, [sp, #0x34]
	mov     r1, #0xe
	mov     r0, #0x4
	str     r1, [sp, #0x30]
	b       branch_21dd7e4

branch_21dd7d6: @ 21dd7d6 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x38]
	mov     r1, #0x5c
	str     r1, [sp, #0x34]
	mov     r1, #0x20
	mov     r0, #0x0
	str     r1, [sp, #0x30]
branch_21dd7e4: @ 21dd7e4 :thumb
	mov     r1, r6
	mov     r2, #0x0
	add     r1, #0xc4
	str     r2, [r1, #0x0]
	ldr     r1, [sp, #0x30]
	ldr     r3, [sp, #0x34]
	str     r1, [sp, #0x0]
	mov     r1, #0x5
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0xb4] @ 0x21dd8b0, (=#0x804)
	ldr     r2, [r6, r1]
	add     r1, #0x30
	str     r2, [sp, #0xc]
	mov     r2, r4
	add     r2, #0x14
	str     r2, [sp, #0x10]
	mov     r2, #0x2
	str     r2, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x2c
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x20]
	add     r0, r6, r1
	mov     r1, r6
	str     r0, [sp, #0x24]
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	add     r0, r6, #0x4
	bl      Function_21d5a20
	mov     r1, r6
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x18]
	sub     r1, r0, #0x1
	ldr     r0, [r4, #0x10]
	add     r7, r1, r0
	ldr     r0, [sp, #0x2c]
	mov     r1, r7
	bl      Function_2018184
	mov     r5, r0
	mov     r1, #0x0
	cmp     r7, #0x0
	ble     branch_21dd860
branch_21dd844: @ 21dd844 :thumb
	ldr     r2, [r4, #0x10]
	cmp     r1, r2
	bcs     branch_21dd850
	ldr     r0, [r4, #0x8]
	ldrb    r0, [r0, r1]
	b       branch_21dd858

branch_21dd850: @ 21dd850 :thumb
	sub     r2, r1, r2
	ldr     r0, [r4, #0x14]
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
branch_21dd858: @ 21dd858 :thumb
	strb    r0, [r5, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r7
	blt     branch_21dd844
branch_21dd860: @ 21dd860 :thumb
	ldr     r0, [sp, #0x30]
	ldr     r1, [pc, #0x4c] @ 0x21dd8b0, (=#0x804)
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	add     r4, #0x24
	str     r0, [sp, #0xc]
	str     r4, [sp, #0x10]
	mov     r0, #0x3
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x38]
	add     r1, #0x38
	str     r0, [sp, #0x18]
	str     r5, [sp, #0x1c]
	add     r0, r6, r1
	str     r7, [sp, #0x20]
	mov     r1, r6
	str     r0, [sp, #0x24]
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	ldr     r3, [sp, #0x34]
	add     r0, r6, #0x4
	mov     r2, #0x2c
	bl      Function_21d5a20
	add     r6, #0xc4
	str     r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x21dd8a4

.word 0x808 @ 0x21dd8a4
.word 0x838 @ 0x21dd8a8
.word 0x15d @ 0x21dd8ac
.word 0x804 @ 0x21dd8b0



.thumb
Function_21dd8b4: @ 21dd8b4 :thumb
	push    {r3-r7,lr}
	mov     r2, #0xe1
	mov     r6, r0
	add     r0, #0xec
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	mov     r2, #0x47
	lsl     r2, r2, #4
	add     r0, r6, r2
	mov     r1, #0x0
	sub     r2, #0xec
	blx     Function_20d5124
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21dd8f8
	mov     r5, r6
	mov     r7, r4
branch_21dd8e2: @ 21dd8e2 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	bl      Function_2021cac
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_21dd8e2
branch_21dd8f8: @ 21dd8f8 :thumb
	mov     r0, #0x0
	add     r6, #0xc4
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21dd900


.thumb
Function_21dd900: @ 21dd900 :thumb
	mov     r0, #0x0
	str     r0, [r2, #0x0]
	bx      lr
@ 0x21dd906


.align 2, 0
.thumb
Function_21dd908: @ 21dd908 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r2
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x44] @ 0x21dd958, (=#0x1768)
	mov     r4, #0x0
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_21dd928
	ldr     r3, [pc, #0x40] @ 0x21dd95c, (=#0x21e9d7a)
	ldr     r1, [pc, #0x40] @ 0x21dd960, (=#0xffff)
branch_21dd91e: @ 21dd91e :thumb
	.hword  0x1c9b @ add r3, r3, #0x2
	ldrh    r2, [r3, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r2, r1
	bne     branch_21dd91e
branch_21dd928: @ 21dd928 :thumb
	cmp     r4, #0x0
	beq     branch_21dd934
	mov     r1, r4
	bl      Function_2018144
	b       branch_21dd936

branch_21dd934: @ 21dd934 :thumb
	mov     r0, #0x0
branch_21dd936: @ 21dd936 :thumb
	str     r4, [r6, #0x0]
	ldr     r3, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x21dd958, (=#0x1768)
	mov     r1, #0x0
	ldr     r2, [r3, r2]
	cmp     r2, #0x0
	bne     branch_21dd956
	ldr     r4, [pc, #0x14] @ 0x21dd95c, (=#0x21e9d7a)
	ldr     r2, [pc, #0x18] @ 0x21dd960, (=#0xffff)
branch_21dd948: @ 21dd948 :thumb
	ldrh    r3, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strb    r3, [r0, r1]
	ldrh    r3, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r3, r2
	bne     branch_21dd948
branch_21dd956: @ 21dd956 :thumb
	pop     {r4-r6,pc}
@ 0x21dd958

.word 0x1768 @ 0x21dd958
.word 0x21e9d7a @ 0x21dd95c
.word 0xffff @ 0x21dd960



.thumb
Function_21dd964: @ 21dd964 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201ada4
	mov     r0, #0x2
	lsl     r0, r0, #10
	ldr     r3, [r5, r0]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x47
	lsl     r0, r0, #4
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	mov     r1, #0x1e
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x59
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldrh    r2, [r3, #0x2]
	ldr     r1, [r3, #0x14]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	lsl     r2, r2, #19
	lsl     r3, r3, #19
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_21d517c
	ldr     r0, [pc, #0x38] @ 0x21dd9e4, (=#0x7f8)
	mov     r1, #0x1e
	ldr     r3, [r5, r0]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	add     r5, #0xec
	str     r5, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x59
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldrh    r2, [r3, #0x2]
	ldr     r1, [r3, #0x14]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	lsl     r2, r2, #19
	lsl     r3, r3, #19
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_21d517c
	ldr     r0, [r4, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201a954
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21dd9e4

.word 0x7f8 @ 0x21dd9e4



.thumb
Function_21dd9e8: @ 21dd9e8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x58] @ 0x21dda44, (=#0x834)
	mov     r4, r0
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21dda28
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21dda28
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21dda28
	add     r1, #0xc
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21dda28
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	add     r4, #0xcc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r4,pc}

branch_21dda28: @ 21dda28 :thumb
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2021cac
	add     r4, #0xcc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r4,pc}
@ 0x21dda42

.align 2
.word 0x834 @ 0x21dda44



.thumb
Function_21dda48: @ 21dda48 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	mov     r7, #0x1
branch_21dda52: @ 21dda52 :thumb
	cmp     r4, r6
	bne     branch_21dda66
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	b       branch_21dda74

branch_21dda66: @ 21dda66 :thumb
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
branch_21dda74: @ 21dda74 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21dda52
	pop     {r3-r7,pc}
@ 0x21dda7e


.align 2, 0
.thumb
Function_21dda80: @ 21dda80 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r3
	mov     r7, r1
	ldr     r2, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	cmp     r2, r1
	beq     branch_21ddab8
	ldr     r3, [sp, #0x18]
	mov     r1, r6
	mov     r2, r4
	bl      Function_21dd710
	mov     r0, r5
	mov     r1, r7
	bl      Function_21dd964
	ldr     r1, [r6, #0x4]
	mov     r0, r5
	bl      Function_21dda48
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dd9e8
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
branch_21ddab8: @ 21ddab8 :thumb
	pop     {r3-r7,pc}
@ 0x21ddaba


.align 2, 0
.thumb
Function_21ddabc: @ 21ddabc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	bl      Function_21d37bc
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21ddade
	cmp     r0, #0x1
	beq     branch_21ddae8
	cmp     r0, #0x2
	beq     branch_21ddaf2
	b       branch_21ddafc

branch_21ddade: @ 21ddade :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	b       branch_21ddb00

branch_21ddae8: @ 21ddae8 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	b       branch_21ddb00

branch_21ddaf2: @ 21ddaf2 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	b       branch_21ddb00

branch_21ddafc: @ 21ddafc :thumb
	bl      Function_2022974
branch_21ddb00: @ 21ddb00 :thumb
	mov     r0, r5
	ldr     r2, [sp, #0x4]
	add     r0, #0x14
	mov     r1, r7
	mov     r3, r6
	bl      Function_21d57b4
	mov     r0, r5
	ldr     r2, [sp, #0x0]
	add     r0, #0x1c
	mov     r1, r7
	mov     r3, r6
	bl      Function_21d57b4
	ldr     r0, [r4, #0x0]
	bl      Function_21d3428
	cmp     r0, #0x0
	bne     branch_21ddb46
	mov     r0, r5
	add     r0, #0x24
	mov     r1, r7
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_21d57b4
	add     r5, #0x2c
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, r6
	bl      Function_21d57b4
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_21ddb46: @ 21ddb46 :thumb
	mov     r0, r5
	add     r0, #0x24
	mov     r1, r7
	mov     r2, #0x4
	mov     r3, r6
	bl      Function_21d57b4
	add     r5, #0x2c
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_21d57b4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21ddb66


.align 2, 0
.thumb
Function_21ddb68: @ 21ddb68 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x14
	bl      Function_21d5844
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_21d5844
	mov     r0, r4
	add     r0, #0x24
	bl      Function_21d5844
	add     r4, #0x2c
	mov     r0, r4
	bl      Function_21d5844
	pop     {r4,pc}
@ 0x21ddb8c


.thumb
Function_21ddb8c: @ 21ddb8c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x34] @ 0x21ddbc8, (=#0x80c)
	mov     r1, #0x0
	str     r1, [r6, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r6, r0]
	mov     r0, #0x2
	bl      Function_201ff0c
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21ddbc6
	mov     r5, r6
	mov     r7, r4
branch_21ddbb0: @ 21ddbb0 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	bl      Function_2021cac
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_21ddbb0
.thumb
branch_21ddbc6: @ 21ddbc6 :thumb
	pop     {r3-r7,pc}
@ 0x21ddbc8

.word 0x80c @ 0x21ddbc8

.incbin "./baserom/overlay/overlay_0021.bin", 0xce4c, 0x21ddc14 - 0x21ddbcc


.thumb
Function_21ddc14: @ 21ddc14 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xd0] @ 0x21ddcec, (=#0x80c)
	ldr     r1, [r5, r0]
	cmp     r1, #0x20
	blt     branch_21ddc6a
	mov     r4, #0x0
	str     r4, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21ddc5a
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21ddc50
	mov     r6, r5
	mov     r7, #0x1
branch_21ddc3a: @ 21ddc3a :thumb
	ldr     r0, [r6, #0x4]
	mov     r1, r7
	bl      Function_2021cac
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_21ddc3a
branch_21ddc50: @ 21ddc50 :thumb
	mov     r0, #0x81
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_21ddc6a

branch_21ddc5a: @ 21ddc5a :thumb
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x81
	mov     r1, r4
	lsl     r0, r0, #4
	str     r1, [r5, r0]
branch_21ddc6a: @ 21ddc6a :thumb
	ldr     r0, [pc, #0x80] @ 0x21ddcec, (=#0x80c)
	ldr     r1, [r5, r0]
	cmp     r1, #0x10
	blt     branch_21ddc76
	mov     r0, #0x20
	sub     r1, r0, r1
branch_21ddc76: @ 21ddc76 :thumb
	lsl     r2, r1, #12
	asr     r1, r2, #31
	lsr     r0, r2, #16
	lsl     r3, r1, #16
	mov     r1, #0x2
	orr     r3, r0
	lsl     r2, r2, #16
	mov     r0, #0x0
	lsl     r1, r1, #10
	add     r4, r2, r1
	adc     r3, r0
	lsl     r2, r3, #20
	lsr     r0, r4, #12
	orr     r0, r2
	lsl     r1, r1, #5
	blx     Function_20bcfd0
	asr     r1, r0, #12
	mov     r0, #0x1
	lsl     r0, r0, #12
	orr     r1, r0
	ldr     r0, [pc, #0x4c] @ 0x21ddcf0, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x44] @ 0x21ddcec, (=#0x80c)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	cmp     r1, #0x20
	blt     branch_21ddcea
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21ddcc4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r3-r7,pc}

branch_21ddcc4: @ 21ddcc4 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21ddcea
	mov     r6, r5
	mov     r7, r4
branch_21ddcd4: @ 21ddcd4 :thumb
	ldr     r0, [r6, #0x4]
	mov     r1, r7
	bl      Function_2021cac
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_21ddcd4
branch_21ddcea: @ 21ddcea :thumb
	pop     {r3-r7,pc}
@ 0x21ddcec

.word 0x80c @ 0x21ddcec
.word 0x4000052 @ 0x21ddcf0


.incbin "./baserom/overlay/overlay_0021.bin", 0xcf74, 0x21ddd2c - 0x21ddcf4


.thumb
Function_21ddd2c: @ 21ddd2c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21ddda4
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21dddf0
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21dde18
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21dde48
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21ddd74, (=#0x21dde4d)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21ddd78, (=#0x21dde85)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21ddd7c, (=#0x21ddeb5)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21ddd80, (=#0x21ddec9)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21ddd84, (=#0x21ddf81)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21ddd88, (=#0x21ddfb5)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21ddd74

.word Function_21dde4c+1 @ =0x21dde4d, 0x21ddd74
.word Function_21dde84+1 @ =0x21dde85, 0x21ddd78
.word Function_21ddeb4+1 @ =0x21ddeb5, 0x21ddd7c
.word Function_21ddec8+1 @ =0x21ddec9, 0x21ddd80
.word Function_21ddf80+1 @ =0x21ddf81, 0x21ddd84
.word Function_21ddfb4+1 @ =0x21ddfb5, 0x21ddd88



.thumb
Function_21ddd8c: @ 21ddd8c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21dde1c
	ldr     r0, [r4, #0x4]
	bl      Function_21dde30
	ldr     r0, [r4, #0x20]
	bl      Function_21dde44
	pop     {r4,pc}
@ 0x21ddda4


.thumb
Function_21ddda4: @ 21ddda4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dddb6
	bl      Function_2022974
branch_21dddb6: @ 21dddb6 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_21d1410
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21dddf0


.thumb
Function_21dddf0: @ 21dddf0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dde02
	bl      Function_2022974
branch_21dde02: @ 21dde02 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21dde18


.thumb
Function_21dde18: @ 21dde18 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dde1c


.thumb
Function_21dde1c: @ 21dde1c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21dde26
	bl      Function_2022974
branch_21dde26: @ 21dde26 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21dde2e


.align 2, 0
.thumb
Function_21dde30: @ 21dde30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21dde3a
	bl      Function_2022974
branch_21dde3a: @ 21dde3a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21dde42


.align 2, 0
.thumb
Function_21dde44: @ 21dde44 :thumb
	bx      lr
@ 0x21dde46


.align 2, 0
.thumb
Function_21dde48: @ 21dde48 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dde4c


.thumb
Function_21dde4c: @ 21dde4c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	mov     r1, #0x28
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dde62
	bl      Function_2022974
branch_21dde62: @ 21dde62 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x28
	blx     Function_20d5124
	str     r4, [r5, #0x8]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21de5a4
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21de2ec
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21dde84


.thumb
Function_21dde84: @ 21dde84 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21dde94
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21dde94: @ 21dde94 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21dde9e
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21dde9e: @ 21dde9e :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21ddeb0
	mov     r0, r4
	mov     r1, r5
	bl      Function_21de334
branch_21ddeb0: @ 21ddeb0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21ddeb4


.thumb
Function_21ddeb4: @ 21ddeb4 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      Function_21de484
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21ddec8


.thumb
Function_21ddec8: @ 21ddec8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r3, #0x8]
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21ddf7c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r4, r2, #1
	lsl     r6, r6, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2c
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x2c
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21ddf7c
@ 0x21ddf0a


.incbin "./baserom/overlay/overlay_0021.bin", 0xd18a, 0x21ddf7c - 0x21ddf0a


.thumb
branch_21ddf7c: @ 21ddf7c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21ddf80


.thumb
Function_21ddf80: @ 21ddf80 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r3, #0x8]
	mov     r5, r1
	mov     r4, r2
	str     r0, [sp, #0x0]
	ldr     r7, [r5, #0x8]
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_21de49c
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, r4
	bl      Function_21de630
	ldr     r3, [r5, #0x4]
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	bl      Function_21de4d4
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21ddfb2


.align 2, 0
.thumb
Function_21ddfb4: @ 21ddfb4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21de03c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r5, #0
	lsl     r0, r0, #1
	lsl     r2, r2, #1
	lsl     r6, r4, #1
	mov     r0, #0x79
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_21d25ac
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21de058
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21de03c
@ 0x21ddffc


.incbin "./baserom/overlay/overlay_0021.bin", 0xd27c, 0x21de03c - 0x21ddffc


.thumb
branch_21de03c: @ 21de03c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21de040


.thumb
Function_21de040: @ 21de040 :thumb
	ldr     r3, [pc, #0x4] @ 0x21de048, (=#Function_2021fe0+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bx      r3
@ 0x21de048

.word Function_2021fe0+1 @ 0x21de048


.incbin "./baserom/overlay/overlay_0021.bin", 0xd2cc, 0x21de058 - 0x21de04c


.thumb
Function_21de058: @ 21de058 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21de040
	ldr     r0, [r4, #0x8]
	bl      Function_21e33a4
	cmp     r0, #0x0
	beq     branch_21de0c0
	cmp     r6, #0x0
	beq     branch_21de09c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r2, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21de09c: @ 21de09c :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r3, r0
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21de0c0: @ 21de0c0 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21de0c4


.incbin "./baserom/overlay/overlay_0021.bin", 0xd344, 0x21de2ec - 0x21de0c4


.thumb
Function_21de2ec: @ 21de2ec :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2018144
	str     r0, [r5, #0x14]
	mov     r1, #0xfe
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r3, r5
	strb    r1, [r0, #0x1]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x14]
	ldr     r2, [pc, #0x1c] @ 0x21de330, (=#Function_21de44c+1)
	strb    r1, [r0, #0x2]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x20
	strb    r1, [r0, #0x3]
	str     r4, [r5, #0x18]
	str     r5, [r5, #0x1c]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	add     r3, #0x18
	bl      Function_2023fcc
	str     r0, [r5, #0x10]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21de330

.word Function_21de44c+1 @ 0x21de330



.thumb
Function_21de334: @ 21de334 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r5, r1
	bl      Function_202404c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21de3d0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x14]
	strb    r1, [r0, #0x1]
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x14]
	strb    r1, [r0, #0x2]
	pop     {r3-r5,pc}
@ 0x21de356


.align 2, 0
.thumb
Function_21de358: @ 21de358 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x68] @ 0x21de3c8, (=#0x21bf6bc)
	mov     r4, r1
	ldrh    r0, [r0, #0x22]
	cmp     r0, #0x0
	bne     branch_21de3c4
	ldr     r0, [r4, #0x8]
	bl      Function_21e33bc
	cmp     r0, #0x1
	bne     branch_21de3c4
	ldr     r0, [r4, #0x4]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21de3c4
	ldr     r0, [r4, #0x0]
	bl      Function_21dca28
	ldr     r1, [pc, #0x48] @ 0x21de3cc, (=#0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_21de3a4
	sub     r1, r0, #0x1
	bpl     branch_21de390
	mov     r1, #0x0
branch_21de390: @ 21de390 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_21dca30
	mov     r0, r5
	mov     r1, r4
	bl      Function_21de5a4
	mov     r0, #0x1
	str     r0, [r5, #0x24]
	pop     {r3-r5,pc}

branch_21de3a4: @ 21de3a4 :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_21de3c4
	add     r1, r0, #0x1
	cmp     r1, #0x3
	blt     branch_21de3b2
	mov     r1, #0x2
branch_21de3b2: @ 21de3b2 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_21dca30
	mov     r0, r5
	mov     r1, r4
	bl      Function_21de5a4
	mov     r0, #0x1
	str     r0, [r5, #0x24]
branch_21de3c4: @ 21de3c4 :thumb
	pop     {r3-r5,pc}
@ 0x21de3c6

.align 2
.word 0x21bf6bc @ 0x21de3c8
.word 0x21bf67c @ 0x21de3cc



.thumb
Function_21de3d0: @ 21de3d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, #0x0
	str     r2, [r5, #0x24]
	ldr     r3, [r5, #0x20]
	mov     r4, r1
	cmp     r3, #0x0
	beq     branch_21de442
	ldr     r0, [pc, #0x64] @ 0x21de448, (=#0x21bf6bc)
	ldrh    r1, [r0, #0x22]
	cmp     r1, #0x0
	beq     branch_21de43e
	ldrh    r2, [r0, #0x1c]
	ldr     r1, [r5, #0x8]
	sub     r1, r2, r1
	str     r1, [r5, #0x0]
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [r5, #0xc]
	sub     r0, r1, r0
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x18
	bge     branch_21de402
	mov     r0, #0x18
	str     r0, [r5, #0x0]
branch_21de402: @ 21de402 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0xf6
	ble     branch_21de40c
	mov     r0, #0xf6
	str     r0, [r5, #0x0]
branch_21de40c: @ 21de40c :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x40
	bge     branch_21de416
	mov     r0, #0x40
	str     r0, [r5, #0x4]
branch_21de416: @ 21de416 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_21de5dc
	ldr     r1, [r5, #0x4]
	add     r0, #0x84
	cmp     r1, r0
	ble     branch_21de426
	str     r0, [r5, #0x4]
branch_21de426: @ 21de426 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x55
	blx     Division
	mov     r1, r0
	cmp     r1, #0x2
	ble     branch_21de436
	mov     r1, #0x2
branch_21de436: @ 21de436 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_21dca30
	pop     {r3-r5,pc}

branch_21de43e: @ 21de43e :thumb
	str     r2, [r5, #0x20]
	pop     {r3-r5,pc}

branch_21de442: @ 21de442 :thumb
	bl      Function_21de358
	pop     {r3-r5,pc}
@ 0x21de448

.word 0x21bf6bc @ 0x21de448



.thumb
Function_21de44c: @ 21de44c :thumb
	push    {r4,lr}
	ldr     r0, [r2, #0x0]
	ldr     r4, [r2, #0x4]
	cmp     r1, #0x0
	bne     branch_21de47a
	ldr     r0, [r0, #0x8]
	mov     r1, #0x1
	bl      Function_21e33b4
	ldr     r0, [pc, #0x1c] @ 0x21de47c, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x14] @ 0x21de480, (=#0x21bf6bc)
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r0, #0x1c]
	sub     r1, r2, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [r4, #0xc]
branch_21de47a: @ 21de47a :thumb
	pop     {r4,pc}
@ 0x21de47c

.word 0x5dd @ 0x21de47c
.word 0x21bf6bc @ 0x21de480



.thumb
Function_21de484: @ 21de484 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2024034
	ldr     r0, [r4, #0x14]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x21de49a


.align 2, 0
.thumb
Function_21de49c: @ 21de49c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r2, #0x0]
	mov     r4, r1
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	ldr     r0, [r2, #0x4]
	lsl     r1, r0, #12
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r1, [sp, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0x0]
	bl      Function_21dca28
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21de4d2


.align 2, 0
.thumb
Function_21de4d4: @ 21de4d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r2, #0x0]
	mov     r7, r1
	str     r3, [sp, #0x0]
	mov     r4, #0x0
	bl      Function_21dca28
	ldr     r1, [r5, #0x18]
	mov     r6, r0
	cmp     r1, r6
	bne     branch_21de4f8
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21de4f8
	ldr     r0, [r5, #0x1c]
	cmp     r0, r1
	beq     branch_21de5a2
branch_21de4f8: @ 21de4f8 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, r6
	beq     branch_21de504
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	str     r0, [r5, #0x24]
branch_21de504: @ 21de504 :thumb
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	beq     branch_21de514
	cmp     r0, #0x1
	beq     branch_21de54a
	cmp     r0, #0x2
	beq     branch_21de580
	b       branch_21de588

branch_21de514: @ 21de514 :thumb
	str     r6, [r5, #0x1c]
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21de520
	bl      Function_20181c4
branch_21de520: @ 21de520 :thumb
	ldr     r1, [r5, #0x18]
	mov     r2, r5
	ldr     r0, [r7, #0x0]
	ldr     r3, [sp, #0x0]
	add     r1, #0xf
	add     r2, #0x20
	bl      Function_21d27e0
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x18]
	cmp     r0, r6
	ble     branch_21de540
	mov     r4, #0x1
	b       branch_21de542

branch_21de540: @ 21de540 :thumb
	mov     r4, #0x2
branch_21de542: @ 21de542 :thumb
	ldr     r0, [r5, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x24]
	b       branch_21de588

branch_21de54a: @ 21de54a :thumb
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21de554
	bl      Function_20181c4
branch_21de554: @ 21de554 :thumb
	ldr     r1, [r5, #0x1c]
	mov     r2, r5
	ldr     r0, [r7, #0x0]
	ldr     r3, [sp, #0x0]
	add     r1, #0xf
	add     r2, #0x20
	bl      Function_21d27e0
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	ldr     r1, [r5, #0x18]
	ldr     r0, [r5, #0x1c]
	cmp     r1, r0
	bge     branch_21de576
	mov     r4, #0x1
	b       branch_21de578

branch_21de576: @ 21de576 :thumb
	mov     r4, #0x2
branch_21de578: @ 21de578 :thumb
	ldr     r0, [r5, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x24]
	b       branch_21de588

branch_21de580: @ 21de580 :thumb
	mov     r4, #0x0
	str     r4, [r5, #0x24]
	ldr     r0, [r5, #0x1c]
	str     r0, [r5, #0x18]
branch_21de588: @ 21de588 :thumb
	ldr     r2, [r5, #0x20]
	mov     r0, #0x1f
	ldr     r3, [r2, #0xc]
	lsl     r2, r4, #5
	add     r2, r3, r2
	mov     r1, #0x40
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_21de5a2
	bl      Function_2022974
branch_21de5a2: @ 21de5a2 :thumb
	pop     {r3-r7,pc}
@ 0x21de5a4


.thumb
Function_21de5a4: @ 21de5a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	bl      Function_21dca28
	cmp     r0, #0x0
	beq     branch_21de5bc
	cmp     r0, #0x1
	beq     branch_21de5c6
	cmp     r0, #0x2
	beq     branch_21de5d0
	pop     {r4,pc}

branch_21de5bc: @ 21de5bc :thumb
	mov     r0, #0x20
	str     r0, [r4, #0x0]
	mov     r0, #0x80
	str     r0, [r4, #0x4]
	pop     {r4,pc}

branch_21de5c6: @ 21de5c6 :thumb
	mov     r0, #0x80
	str     r0, [r4, #0x0]
	mov     r0, #0x60
	str     r0, [r4, #0x4]
	pop     {r4,pc}

branch_21de5d0: @ 21de5d0 :thumb
	mov     r0, #0xe0
	str     r0, [r4, #0x0]
	mov     r0, #0x80
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21de5da


.align 2, 0
.thumb
Function_21de5dc: @ 21de5dc :thumb
	push    {r3,lr}
	cmp     r0, #0x28
	blt     branch_21de5e6
	cmp     r0, #0xd8
	ble     branch_21de5ea
branch_21de5e6: @ 21de5e6 :thumb
	mov     r0, #0x30
	pop     {r3,pc}

branch_21de5ea: @ 21de5ea :thumb
	ldr     r1, [pc, #0x3c] @ 0x21de628, (=#0x7fff)
	sub     r0, #0x28
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0xb0
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x28] @ 0x21de62c, (=#0x20f983c)
	mov     r2, #0x3
	ldsh    r0, [r0, r1]
	lsl     r2, r2, #16
	mov     r3, #0x0
	asr     r1, r0, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	asr     r1, r1, #12
	mov     r0, #0x30
	sub     r0, r0, r1
	pop     {r3,pc}
@ 0x21de628

.word 0x7fff @ 0x21de628
.word 0x20f983c @ 0x21de62c




.thumb
Function_21de630: @ 21de630 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	ldr     r0, [r2, #0x8]
	mov     r5, r1
	bl      Function_21e33bc
	cmp     r0, #0x1
	bne     branch_21de664
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	bne     branch_21de656
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	bl      Function_21d2574
	pop     {r3-r5,pc}

branch_21de656: @ 21de656 :thumb
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	bl      Function_21d25e8
branch_21de664: @ 21de664 :thumb
	pop     {r3-r5,pc}
@ 0x21de666


.align 2, 0
.thumb
Function_21de668: @ 21de668 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21de6e8
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21de724
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21de774
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21de6a8, (=#0x21de779)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21de6ac, (=#0x21de79d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21de6b0, (=#0x21de7f9)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21de6b4, (=#0x21de805)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21de6b8, (=#0x21de8e5)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21de6bc, (=#0x21de8e9)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21de6a8

.word Function_21de778+1 @ =0x21de779, 0x21de6a8
.word Function_21de79c+1 @ =0x21de79d, 0x21de6ac
.word Function_21de7f8+1 @ =0x21de7f9, 0x21de6b0
.word Function_21de804+1 @ =0x21de805, 0x21de6b4
.word Function_21de8e4+1 @ =0x21de8e5, 0x21de6b8
.word Function_21de8e8+1 @ =0x21de8e9, 0x21de6bc



.thumb
Function_21de6c0: @ 21de6c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21de74c
	ldr     r0, [r4, #0x4]
	bl      Function_21de760
	pop     {r4,pc}
@ 0x21de6d2


.incbin "./baserom/overlay/overlay_0021.bin", 0xd952, 0x21de6e8 - 0x21de6d2


.thumb
Function_21de6e8: @ 21de6e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x20
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21de6fa
	bl      Function_2022974
branch_21de6fa: @ 21de6fa :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21de722


.align 2, 0
.thumb
Function_21de724: @ 21de724 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21de736
	bl      Function_2022974
branch_21de736: @ 21de736 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21de74c


.thumb
Function_21de74c: @ 21de74c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21de756
	bl      Function_2022974
branch_21de756: @ 21de756 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21de75e


.align 2, 0
.thumb
Function_21de760: @ 21de760 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21de76a
	bl      Function_2022974
branch_21de76a: @ 21de76a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21de772


.align 2, 0
.thumb
Function_21de774: @ 21de774 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21de778


.thumb
Function_21de778: @ 21de778 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	bl      Function_21d37bc
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d3434
	ldr     r0, [r4, #0x4]
	bl      Function_21d36d8
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d344c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21de79c


.thumb
Function_21de79c: @ 21de79c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	cmp     r0, #0x1
	bne     branch_21de7b0
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21de7b0: @ 21de7b0 :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_21de7bc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21de7bc: @ 21de7bc :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_21de7ee
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x1
	bne     branch_21de7e8
	ldr     r0, [r4, #0x4]
	bl      Function_21d37bc
	ldr     r2, [pc, #0x24] @ 0x21de7f4, (=#0x1ff)
	mov     r1, r0
	lsl     r1, r1, #16
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	lsr     r1, r1, #16
	mov     r3, r2
	bl      Function_20059d0
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
branch_21de7e8: @ 21de7e8 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
branch_21de7ee: @ 21de7ee :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21de7f4

.word 0x1ff @ 0x21de7f4



.thumb
Function_21de7f8: @ 21de7f8 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	bl      Function_200592c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21de804


.thumb
Function_21de804: @ 21de804 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21de8da
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r2, r5, #1
	lsl     r6, r5, #2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x74
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x74
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21de8da
@ 0x21de842


.incbin "./baserom/overlay/overlay_0021.bin", 0xdac2, 0x21de8da - 0x21de842


.thumb
branch_21de8da: @ 21de8da :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21de8de


.incbin "./baserom/overlay/overlay_0021.bin", 0xdb5e, 0x21de8e4 - 0x21de8de


.thumb
Function_21de8e4: @ 21de8e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21de8e8


.thumb
Function_21de8e8: @ 21de8e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r5, [r4, #0x0]
	mov     r3, r0
	mov     r1, r2
	ldr     r0, [r4, #0x8]
	cmp     r5, #0x4
	bhi     branch_21de99e
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
	lsl     r0, r1, #0
	lsl     r4, r7, #0
	lsl     r2, r7, #1
	lsl     r0, r1, #2
	lsl     r4, r2, #2
	ldr     r1, [r1, #0x14]
	cmp     r1, #0x0
	beq     branch_21de91e
	cmp     r1, #0x1
	beq     branch_21de928
	cmp     r1, #0x2
	beq     branch_21de932
	b       branch_21de93a

branch_21de91e: @ 21de91e :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21df44c
	b       branch_21de93a

branch_21de928: @ 21de928 :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21df374
	b       branch_21de93a

branch_21de932: @ 21de932 :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21df548
branch_21de93a: @ 21de93a :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21de99e
@ 0x21de942


.incbin "./baserom/overlay/overlay_0021.bin", 0xdbc2, 0x21de99e - 0x21de942


.thumb
branch_21de99e: @ 21de99e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21de9a2


.incbin "./baserom/overlay/overlay_0021.bin", 0xdc22, 0x21df374 - 0x21de9a2


.thumb
Function_21df374: @ 21df374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r4, r2
	mov     r6, r3
	bl      Function_21d2360
	mov     r0, r7
	bl      Function_21df64c
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21df3e6
	cmp     r6, #0x0
	beq     branch_21df3c2
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	b       branch_21df3e6

branch_21df3c2: @ 21df3c2 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21df3e6: @ 21df3e6 :thumb
	mov     r0, r5
	bl      Function_21df6b4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df3f0


.incbin "./baserom/overlay/overlay_0021.bin", 0xe670, 0x21df44c - 0x21df3f0


.thumb
Function_21df44c: @ 21df44c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_21df64c
	cmp     r6, #0x0
	bne     branch_21df472
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r7
	mov     r3, #0x4
	bl      Function_21df6c4
	mov     r0, r7
	bl      Function_21df6fc
branch_21df472: @ 21df472 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21df4cc
	cmp     r6, #0x0
	beq     branch_21df4a8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r2, r1
	sub     r2, #0x14
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21df4a8: @ 21df4a8 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r3, r1
	sub     r3, #0x14
	bl      Function_21d23f8
branch_21df4cc: @ 21df4cc :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df4d0


.incbin "./baserom/overlay/overlay_0021.bin", 0xe750, 0x21df548 - 0x21df4d0


.thumb
Function_21df548: @ 21df548 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_21df64c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_21d2360
	cmp     r6, #0x0
	bne     branch_21df570
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r7
	mov     r3, #0x1
	bl      Function_21df6c4
branch_21df570: @ 21df570 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21df5ca
	cmp     r6, #0x0
	beq     branch_21df5a6
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21df5a6: @ 21df5a6 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21df5ca: @ 21df5ca :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df5ce


.incbin "./baserom/overlay/overlay_0021.bin", 0xe84e, 0x21df64c - 0x21df5ce


.thumb
Function_21df64c: @ 21df64c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	mov     r5, r7
	mov     r6, #0x1
branch_21df656: @ 21df656 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21df662
	mov     r1, r6
	bl      Function_2021fe0
branch_21df662: @ 21df662 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21df656
	ldr     r0, [r7, #0xc]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r7, #0x10]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	pop     {r3-r7,pc}
@ 0x21df67e


.incbin "./baserom/overlay/overlay_0021.bin", 0xe8fe, 0x21df6b4 - 0x21df67e


.thumb
Function_21df6b4: @ 21df6b4 :thumb
	mov     r1, #0x5b
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21df6c0, (=#0x21d24fd)
	add     r1, r0, r1
	bx      r3
@ 0x21df6c0

.word Function_21d24fc+1 @ =0x21d24fd, 0x21df6c0



.thumb
Function_21df6c4: @ 21df6c4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	add     r0, #0x34
	mov     r1, #0x30
	mov     r2, r4
	mov     r3, #0x48
	bl      Function_21d2648
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21df6de


.incbin "./baserom/overlay/overlay_0021.bin", 0xe95e, 0x21df6fc - 0x21df6de


.thumb
Function_21df6fc: @ 21df6fc :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x52
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	add     r0, #0x54
	mov     r1, #0xac
	mov     r2, #0xaa
	mov     r3, #0x20
	bl      Function_21d2648
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21df718


.incbin "./baserom/overlay/overlay_0021.bin", 0xe998, 0x21df734 - 0x21df718


.thumb
Function_21df734: @ 21df734 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21df7cc
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21df80c
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21df86c
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21df774, (=#0x21df889)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21df778, (=#0x21df8b1)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21df77c, (=#0x21df8c1)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21df780, (=#0x21df8c5)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21df784, (=#0x21df959)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21df788, (=#0x21dfa19)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21df774

.word Function_21df888+1 @ =0x21df889, 0x21df774
.word Function_21df8b0+1 @ =0x21df8b1, 0x21df778
.word Function_21df8c0+1 @ =0x21df8c1, 0x21df77c
.word Function_21df8c4+1 @ =0x21df8c5, 0x21df780
.word Function_21df958+1 @ =0x21df959, 0x21df784
.word Function_21dfa18+1 @ =0x21dfa19, 0x21df788



.thumb
Function_21df78c: @ 21df78c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21df844
	ldr     r0, [r4, #0x4]
	bl      Function_21df858
	pop     {r4,pc}
@ 0x21df79e


.align 2, 0
.thumb
Function_21df7a0: @ 21df7a0 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_21df7b2
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21df7b2: @ 21df7b2 :thumb
	ldr     r5, [r4, #0x14]
	ldr     r0, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	mov     r1, r5
	bl      Function_21df870
	str     r0, [r4, #0x14]
	cmp     r5, r0
	beq     branch_21df7c8
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21df7c8: @ 21df7c8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21df7cc


.thumb
Function_21df7cc: @ 21df7cc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21df7de
	bl      Function_2022974
branch_21df7de: @ 21df7de :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21df7e4: @ 21df7e4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21df7e4
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21df80a


.align 2, 0
.thumb
Function_21df80c: @ 21df80c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21df81e
	bl      Function_2022974
branch_21df81e: @ 21df81e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21df844

.thumb
Function_21df844: @ 21df844 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21df84e
	bl      Function_2022974
branch_21df84e: @ 21df84e :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21df856


.align 2, 0
.thumb
Function_21df858: @ 21df858 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21df862
	bl      Function_2022974
branch_21df862: @ 21df862 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21df86a


.align 2, 0
.thumb
Function_21df86c: @ 21df86c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21df870


.thumb
Function_21df870: @ 21df870 :thumb
	cmp     r2, #0x0
	ble     branch_21df87e
	add     r2, r1, r2
	cmp     r2, r3
	blt     branch_21df884
	mov     r2, #0x0
	b       branch_21df884

branch_21df87e: @ 21df87e :thumb
	add     r0, r1, r2
	bpl     branch_21df884
	sub     r2, r3, #0x1
branch_21df884: @ 21df884 :thumb
	mov     r0, r2
	bx      lr
@ 0x21df888


.thumb
Function_21df888: @ 21df888 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	bl      Function_21d37bc
	mov     r5, r0
	mov     r1, r4
	bl      Function_21e01cc
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e0268
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21df8ae


.align 2, 0
.thumb
Function_21df8b0: @ 21df8b0 :thumb
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x1
	bne     branch_21df8ba
	mov     r0, #0x1
	bx      lr

branch_21df8ba: @ 21df8ba :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21df8be


.align 2, 0
.thumb
Function_21df8c0: @ 21df8c0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21df8c4


.thumb
Function_21df8c4: @ 21df8c4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21df94e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r5, #0
	lsl     r4, r1, #1
	lsl     r2, r4, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd0
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xd0
	blx     Function_20d5124
	ldr     r0, [r4, #0x8]
	ldr     r1, [r7, #0xc]
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21df94e
@ 0x21df910


.incbin "./baserom/overlay/overlay_0021.bin", 0xeb90, 0x21df94e - 0x21df910


.thumb
branch_21df94e: @ 21df94e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21df952


.incbin "./baserom/overlay/overlay_0021.bin", 0xebd2, 0x21df958 - 0x21df952


.thumb
Function_21df958: @ 21df958 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21df974
	cmp     r0, #0x1
	beq     branch_21df9c0
	cmp     r0, #0x2
	beq     branch_21df9d8
	b       branch_21dfa04

branch_21df974: @ 21df974 :thumb
	mov     r0, r6
	add     r0, #0xcc
	ldr     r1, [r7, #0x14]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_21dfa08
	mov     r0, r6
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	mov     r0, r6
	add     r1, r2, r1
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	mov     r0, r6
	mov     r1, r5
	bl      Function_21e0094
	mov     r0, r6
	bl      Function_21e0c10
	mov     r0, #0x1
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x60] @ 0x21dfa14, (=#0x68b)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21dfa08

branch_21df9c0: @ 21df9c0 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_21e00b8
	cmp     r0, #0x1
	bne     branch_21dfa08
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21dfa08

branch_21df9d8: @ 21df9d8 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_21dfa08
	ldr     r0, [r7, #0xc]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x14]
	str     r0, [sp, #0x4]
	ldr     r3, [r4, #0x4]
	mov     r0, r6
	bl      Function_21e0944
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_21dfbb4
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	str     r0, [r5, #0x4]
	str     r0, [r4, #0x0]
	b       branch_21dfa08

branch_21dfa04: @ 21dfa04 :thumb
	bl      Function_2022974
branch_21dfa08: @ 21dfa08 :thumb
	mov     r0, r6
	bl      Function_21e0c30
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dfa14

.word 0x68b @ 0x21dfa14



.thumb
Function_21dfa18: @ 21dfa18 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21dfa7e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r3, #0
	lsl     r4, r5, #0
	lsl     r2, r7, #0
	lsl     r6, r0, #1
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21dff38
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21dfa7e
@ 0x21dfa4c


.incbin "./baserom/overlay/overlay_0021.bin", 0xeccc, 0x21dfa7e - 0x21dfa4c


.thumb
branch_21dfa7e: @ 21dfa7e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21dfa82


.incbin "./baserom/overlay/overlay_0021.bin", 0xed02, 0x21dfbb4 - 0x21dfa82


.thumb
Function_21dfbb4: @ 21dfbb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r6, r1
	bl      Function_21d37bc
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x14]
	ldr     r3, [r4, #0x10]
	mov     r2, #0x1
	bl      Function_21df870
	ldr     r1, [r4, #0xc]
	mov     r2, r4
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	bl      Function_21dfbec
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21dfbec


.thumb
Function_21dfbec: @ 21dfbec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r5, [sp, #0x30]
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r4, [sp, #0x2c]
	cmp     r5, #0x2
	ble     branch_21dfc04
	bl      Function_2022974
branch_21dfc04: @ 21dfc04 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0xc
	bhi     branch_21dfcf8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r4, r2, #1
	lsl     r0, r5, #1
	lsl     r4, r5, #0
	lsl     r0, r0, #1
	lsl     r4, r7, #1
	lsl     r0, r2, #2
	lsl     r4, r4, #2
	lsl     r0, r7, #2
	lsl     r4, r1, #3
	ldr     r2, [sp, #0x8]
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0xc]
	mov     r0, r6
	mov     r1, r7
	str     r5, [sp, #0x4]
	bl      Function_21e0354
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21dfc44


.incbin "./baserom/overlay/overlay_0021.bin", 0xeec4, 0x21dfcf8 - 0x21dfc44


.thumb
branch_21dfcf8: @ 21dfcf8 :thumb
	bl      Function_2022974
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21dfd00


.incbin "./baserom/overlay/overlay_0021.bin", 0xef80, 0x21dff38 - 0x21dfd00


.thumb
Function_21dff38: @ 21dff38 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21dfff8
	ldr     r0, [r4, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21dff9e
	cmp     r6, #0x0
	beq     branch_21dff7a
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	b       branch_21dff9e

branch_21dff7a: @ 21dff7a :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21dff9e: @ 21dff9e :thumb
	mov     r0, r5
	bl      Function_21e0078
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21dffa8


.incbin "./baserom/overlay/overlay_0021.bin", 0xf228, 0x21dfff8 - 0x21dffa8


.thumb
Function_21dfff8: @ 21dfff8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, #0x1
branch_21e0002: @ 21e0002 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_2021fe0
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_21e0002
	mov     r0, r5
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2021fe0
	mov     r4, #0x0
	mov     r6, #0x1
branch_21e0022: @ 21e0022 :thumb
	ldr     r0, [r5, #0x20]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21e0022
	pop     {r3-r7,pc}
@ 0x21e0036


.incbin "./baserom/overlay/overlay_0021.bin", 0xf2b6, 0x21e0078 - 0x21e0036


.thumb
Function_21e0078: @ 21e0078 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x5b
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
branch_21e0082: @ 21e0082 :thumb
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	add     r1, r0, r6
	bl      Function_21d251c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21e0082
	pop     {r4-r6,pc}
@ 0x21e0094

.thumb
Function_21e0094: @ 21e0094 :thumb
	push    {r3-r7,lr}
	mov     r7, #0xff
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	mvn     r7, r7
branch_21e00a0: @ 21e00a0 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	str     r4, [sp, #0x0]
	bl      Function_21e00f4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21e00a0
	pop     {r3-r7,pc}
@ 0x21e00b6


.align 2, 0
.thumb
Function_21e00b8: @ 21e00b8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bne     branch_21e00c8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_21e00c8: @ 21e00c8 :thumb
	mov     r4, #0x0
branch_21e00ca: @ 21e00ca :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21e015c
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r7, r0
	cmp     r4, #0x4
	blt     branch_21e00ca
	mov     r4, #0x0
branch_21e00de: @ 21e00de :thumb
	ldr     r0, [r5, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_2012938
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21e00de
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x21e00f2


.align 2, 0
.thumb
Function_21e00f4: @ 21e00f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r7, r1
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r5, [sp, #0x38]
	cmp     r0, #0x0
	bne     branch_21e010e
	mov     r4, r5
	b       branch_21e0114

branch_21e010e: @ 21e010e :thumb
	sub     r4, r5, #0x2
	bpl     branch_21e0114
	.hword  0x1d24 @ add r4, r4, #0x4
branch_21e0114: @ 21e0114 :thumb
	mov     r0, r5
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	bl      Function_21e0b24
	ldr     r0, [r7, #0x0]
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	mov     r3, r4
	bl      Function_21d2250
	mov     r1, r6
	ldr     r3, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r0, #0x10
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r4, [sp, #0xc]
	add     r1, #0x28
	lsl     r0, r5, #5
	add     r0, r1, r0
	ldr     r1, [sp, #0x8]
	add     r3, r3, r4
	add     r1, r2, r1
	bl      Function_21d2648
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	sub     r1, r1, r0
	lsl     r0, r5, #2
	add     r0, r6, r0
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21e015a


.align 2, 0
.thumb
Function_21e015c: @ 21e015c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21e0176
	.hword  0x1ea4 @ sub r4, r4, #0x2
	bpl     branch_21e0176
	.hword  0x1d24 @ add r4, r4, #0x4
branch_21e0176: @ 21e0176 :thumb
	ldr     r0, [sp, #0x4]
	mov     r7, r5
	lsl     r6, r0, #5
	add     r7, #0x28
	add     r0, r7, r6
	bl      Function_21d2664
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r0, [sp, #0xc]
	add     r0, #0x2c
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r3, [r2, r6]
	ldr     r2, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #2
	add     r2, r5, r2
	add     r2, #0xa8
	ldr     r2, [r2, #0x0]
	ldr     r1, [r7, r6]
	add     r2, r3, r2
	mov     r3, r4
	bl      Function_21d222c
	ldr     r0, [r7, r6]
	add     r1, sp, #0x10
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, r6]
	add     r0, #0x8
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	lsl     r0, r4, #2
	ldr     r0, [r5, r0]
	bl      Function_2021c50
	ldr     r0, [sp, #0x8]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21e01ca


.align 2, 0
.thumb
Function_21e01cc: @ 21e01cc :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x94] @ 0x21e0264, (=#0x1a6)
	cmp     r0, r2
	bgt     branch_21e020a
	bge     branch_21e023e
	mov     r3, r2
	sub     r3, #0x24
	cmp     r0, r3
	bgt     branch_21e01ea
	sub     r2, #0x24
	cmp     r0, r2
	bge     branch_21e024e
	cmp     r0, #0xc9
	beq     branch_21e023a
	b       branch_21e025e

branch_21e01ea: @ 21e01ea :thumb
	mov     r3, r2
	sub     r3, #0x9
	cmp     r0, r3
	bgt     branch_21e025e
	mov     r3, r2
	sub     r3, #0xa
	cmp     r0, r3
	blt     branch_21e025e
	mov     r3, r2
	sub     r3, #0xa
	cmp     r0, r3
	beq     branch_21e0246
	sub     r2, #0x9
	cmp     r0, r2
	beq     branch_21e024a
	b       branch_21e025e

branch_21e020a: @ 21e020a :thumb
	mov     r3, r2
	add     r3, #0x39
	cmp     r0, r3
	bgt     branch_21e0222
	mov     r3, r2
	add     r3, #0x39
	cmp     r0, r3
	bge     branch_21e025a
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, r2
	beq     branch_21e0242
	b       branch_21e025e

branch_21e0222: @ 21e0222 :thumb
	mov     r3, r2
	add     r3, #0x41
	cmp     r0, r3
	bgt     branch_21e0232
	add     r2, #0x41
	cmp     r0, r2
	beq     branch_21e0256
	b       branch_21e025e

branch_21e0232: @ 21e0232 :thumb
	add     r2, #0x46
	cmp     r0, r2
	beq     branch_21e0252
	b       branch_21e025e

branch_21e023a: @ 21e023a :thumb
	mov     r0, #0x8
	pop     {r3,pc}

branch_21e023e: @ 21e023e :thumb
	mov     r0, #0x4
	pop     {r3,pc}

branch_21e0242: @ 21e0242 :thumb
	mov     r0, #0x5
	pop     {r3,pc}

branch_21e0246: @ 21e0246 :thumb
	mov     r0, #0x6
	pop     {r3,pc}

branch_21e024a: @ 21e024a :thumb
	mov     r0, #0x7
	pop     {r3,pc}

branch_21e024e: @ 21e024e :thumb
	mov     r0, #0x9
	pop     {r3,pc}

branch_21e0252: @ 21e0252 :thumb
	mov     r0, #0xa
	pop     {r3,pc}

branch_21e0256: @ 21e0256 :thumb
	mov     r0, #0xb
	pop     {r3,pc}

branch_21e025a: @ 21e025a :thumb
	mov     r0, #0xc
	pop     {r3,pc}

branch_21e025e: @ 21e025e :thumb
	bl      Function_21e02f0
	pop     {r3,pc}
@ 0x21e0264

.word 0x1a6 @ 0x21e0264



.thumb
Function_21e0268: @ 21e0268 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [pc, #0x7c] @ 0x21e02ec, (=#0x1a6)
	cmp     r2, r0
	bgt     branch_21e02a8
	bge     branch_21e02d6
	mov     r3, r0
	sub     r3, #0x24
	cmp     r2, r3
	bgt     branch_21e0288
	sub     r0, #0x24
	cmp     r2, r0
	bge     branch_21e02d6
	cmp     r2, #0xc9
	beq     branch_21e02d6
	b       branch_21e02e0

branch_21e0288: @ 21e0288 :thumb
	mov     r3, r0
	sub     r3, #0x9
	cmp     r2, r3
	bgt     branch_21e02e0
	mov     r3, r0
	sub     r3, #0xa
	cmp     r2, r3
	blt     branch_21e02e0
	mov     r3, r0
	sub     r3, #0xa
	cmp     r2, r3
	beq     branch_21e02d6
	sub     r0, #0x9
	cmp     r2, r0
	beq     branch_21e02d6
	b       branch_21e02e0

branch_21e02a8: @ 21e02a8 :thumb
	mov     r3, r0
	add     r3, #0x39
	cmp     r2, r3
	bgt     branch_21e02c0
	mov     r3, r0
	add     r3, #0x39
	cmp     r2, r3
	bge     branch_21e02d6
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r0
	beq     branch_21e02d6
	b       branch_21e02e0

branch_21e02c0: @ 21e02c0 :thumb
	mov     r3, r0
	add     r3, #0x41
	cmp     r2, r3
	bgt     branch_21e02d0
	add     r0, #0x41
	cmp     r2, r0
	beq     branch_21e02d6
	b       branch_21e02e0

branch_21e02d0: @ 21e02d0 :thumb
	add     r0, #0x46
	cmp     r2, r0
	bne     branch_21e02e0
branch_21e02d6: @ 21e02d6 :thumb
	ldr     r0, [r1, #0x4]
	mov     r1, r2
	bl      Function_21d341c
	pop     {r3,pc}

branch_21e02e0: @ 21e02e0 :thumb
	ldr     r0, [r1, #0x4]
	mov     r1, r2
	bl      Function_21d33e0
	pop     {r3,pc}
@ 0x21e02ea

.align 2
.word 0x1a6 @ 0x21e02ec



.thumb
Function_21e02f0: @ 21e02f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x12
	mov     r5, r0
	bl      Function_20759f0
	cmp     r0, #0x0
	bne     branch_21e0304
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e0304: @ 21e0304 :thumb
	cmp     r0, #0xfe
	bne     branch_21e030c
	mov     r0, #0x2
	pop     {r3-r5,pc}

branch_21e030c: @ 21e030c :thumb
	cmp     r0, #0xff
	bne     branch_21e0314
	mov     r0, #0x3
	pop     {r3-r5,pc}

branch_21e0314: @ 21e0314 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_21d33e0
	cmp     r0, #0x1
	bne     branch_21e0350
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_21d334c
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21e0338
	bl      Function_2022974
branch_21e0338: @ 21e0338 :thumb
	cmp     r4, #0x0
	bne     branch_21e0340
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e0340: @ 21e0340 :thumb
	cmp     r4, #0xfe
	bne     branch_21e0348
	mov     r0, #0x2
	pop     {r3-r5,pc}

branch_21e0348: @ 21e0348 :thumb
	cmp     r4, #0xff
	bne     branch_21e0350
	mov     r0, #0x3
	pop     {r3-r5,pc}

branch_21e0350: @ 21e0350 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e0354


.thumb
Function_21e0354: @ 21e0354 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x34]
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r0, r4
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	str     r3, [sp, #0x10]
	bl      Function_21e0b24
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21e037a
	mov     r0, r4
	b       branch_21e0380

branch_21e037a: @ 21e037a :thumb
	sub     r0, r4, #0x2
	bpl     branch_21e0380
	.hword  0x1d00 @ add r0, r0, #0x4
branch_21e0380: @ 21e0380 :thumb
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x10]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x2
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x30]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	ldr     r1, [r7, #0x4]
	bl      Function_21d19d8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_21e03a6
	bl      Function_2022974
branch_21e03a6: @ 21e03a6 :thumb
	add     r0, r4, #0x1
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_21e0b24
	add     r5, #0xb8
	ldr     r1, [r5, #0x0]
	add     r0, r4, #0x1
	cmp     r1, #0x0
	beq     branch_21e03c0
	.hword  0x1e80 @ sub r0, r0, #0x2
	bpl     branch_21e03c0
	.hword  0x1d00 @ add r0, r0, #0x4
branch_21e03c0: @ 21e03c0 :thumb
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x10]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x0
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x30]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	ldr     r1, [r7, #0x4]
	bl      Function_21d19d8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_21e03e6
	bl      Function_2022974
branch_21e03e6: @ 21e03e6 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21e03ea


.incbin "./baserom/overlay/overlay_0021.bin", 0xf66a, 0x21e0944 - 0x21e03ea


.thumb
Function_21e0944: @ 21e0944 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r2
	mov     r5, r0
	str     r1, [sp, #0x10]
	str     r3, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x34]
	ldr     r3, [r6, #0x10]
	mov     r2, #0x1
	bl      Function_21df870
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x2
	cmp     r0, #0x0
	beq     branch_21e0970
	.hword  0x1ea4 @ sub r4, r4, #0x2
	bpl     branch_21e0970
	.hword  0x1d24 @ add r4, r4, #0x4
branch_21e0970: @ 21e0970 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r7, r2, r1
	lsl     r0, r7, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x20]
	bl      Function_21d4d1c
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	str     r7, [sp, #0xc]
	bl      Function_21e09a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21e09a4


.thumb
Function_21e09a4: @ 21e09a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [sp, #0x58]
	mov     r6, r1
	lsl     r7, r0, #2
	ldr     r0, [r5, r7]
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r4, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_21e09c0
	bl      Function_2022974
branch_21e09c0: @ 21e09c0 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x50]
	ldr     r3, [sp, #0x54]
	mov     r0, r6
	bl      Function_21e0b64
	str     r0, [sp, #0x8]
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x14]
	bl      Function_200a72c
	mov     r1, #0xb
	mvn     r1, r1
	str     r1, [sp, #0x20]
	mov     r1, #0x28
	str     r1, [sp, #0x24]
	mov     r1, #0x3
	str     r1, [sp, #0x28]
	mov     r1, #0x0
	ldr     r2, [sp, #0x4]
	str     r1, [sp, #0x2c]
	mov     r1, #0x1
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x30]
	str     r2, [sp, #0x34]
	bl      Function_201fab4
	str     r0, [sp, #0xc]
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x10
	mov     r2, #0x2
	bl      Function_21d4d6c
	mov     r6, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x30] @ 0x21e0a48, (=#0x2b9)
	ldr     r3, [sp, #0x8]
	mov     r1, r6
	bl      Function_21d4e10
	str     r6, [sp, #0x14]
	ldr     r0, [r5, r7]
	add     r5, #0x20
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x5c]
	lsl     r4, r0, #2
	add     r0, sp, #0x10
	bl      Function_21d4ca0
	str     r0, [r5, r4]
	ldr     r0, [r5, r4]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	bl      Function_2012a60
	mov     r0, r6
	bl      Function_21d4da0
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21e0a48

.word 0x2b9 @ 0x21e0a48



.thumb
Function_21e0a4c: @ 21e0a4c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x4]
	mov     r6, r2
	bl      Function_21d37bc
	mov     r1, r0
	ldr     r0, [r5, #0x4]
	mov     r2, r6
	bl      Function_21d334c
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_21e0a70
	bl      Function_2022974
branch_21e0a70: @ 21e0a70 :thumb
	cmp     r5, #0x0
	beq     branch_21e0a7a
	cmp     r5, #0x1
	beq     branch_21e0a7e
	b       branch_21e0a82

branch_21e0a7a: @ 21e0a7a :thumb
	mov     r4, #0xd
	b       branch_21e0a86

branch_21e0a7e: @ 21e0a7e :thumb
	mov     r4, #0xe
	b       branch_21e0a86

branch_21e0a82: @ 21e0a82 :thumb
	bl      Function_2022974
branch_21e0a86: @ 21e0a86 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21e0a8a


.incbin "./baserom/overlay/overlay_0021.bin", 0xfd0a, 0x21e0b24 - 0x21e0a8a


.thumb
Function_21e0b24: @ 21e0b24 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r6, r1
	mov     r7, r2
	mov     r5, r4
	cmp     r0, #0x3
	bhi     branch_21e0b5a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r0, #0
	lsl     r0, r2, #0
	lsl     r6, r1, #0
	mov     r4, #0x68
	add     r4, #0x4c
	mov     r5, #0x58
	b       branch_21e0b5e
@ 0x21e0b4e


.incbin "./baserom/overlay/overlay_0021.bin", 0xfdce, 0x21e0b5a - 0x21e0b4e


.thumb
branch_21e0b5a: @ 21e0b5a :thumb
	bl      Function_2022974
branch_21e0b5e: @ 21e0b5e :thumb
	str     r4, [r6, #0x0]
	str     r5, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x21e0b64


.thumb
Function_21e0b64: @ 21e0b64 :thumb
	push    {r3,lr}
	cmp     r2, #0xc
	bhi     branch_21e0bf6
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r0, r3, #0
	lsl     r0, r4, #0
	lsl     r0, r5, #0
	lsl     r0, r6, #0
	lsl     r0, r1, #1
	lsl     r0, r2, #1
	lsl     r0, r7, #0
	lsl     r0, r0, #1
	lsl     r0, r3, #1
	lsl     r0, r4, #1
	lsl     r0, r5, #1
	lsl     r0, r6, #1
	lsl     r0, r7, #1
	mov     r2, r3
	bl      Function_21e0a4c
	pop     {r3,pc}
@ 0x21e0b98


.incbin "./baserom/overlay/overlay_0021.bin", 0xfe18, 0x21e0bf6 - 0x21e0b98


.thumb
branch_21e0bf6: @ 21e0bf6 :thumb
	pop     {r3,pc}
@ 0x21e0bf8


.incbin "./baserom/overlay/overlay_0021.bin", 0xfe78, 0x21e0c10 - 0x21e0bf8


.thumb
Function_21e0c10: @ 21e0c10 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x18
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	add     r4, #0xc4
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21e0c2e


.align 2, 0
.thumb
Function_21e0c30: @ 21e0c30 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21e0c66
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	sub     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bgt     branch_21e0c66
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x0
	add     r4, #0xc4
	str     r0, [r4, #0x0]
branch_21e0c66: @ 21e0c66 :thumb
	pop     {r4,pc}
@ 0x21e0c68


.thumb
Function_21e0c68: @ 21e0c68 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21e0d04
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21e0d40
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21e0d90
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e0ca8, (=#0x21e0d95)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e0cac, (=#0x21e0d99)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e0cb0, (=#0x21e0da9)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e0cb4, (=#0x21e0dad)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e0cb8, (=#0x21e0e8d)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e0cbc, (=#0x21e0e91)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e0ca8

.word Function_21e0d94+1 @ =0x21e0d95, 0x21e0ca8
.word Function_21e0d98+1 @ =0x21e0d99, 0x21e0cac
.word Function_21e0da8+1 @ =0x21e0da9, 0x21e0cb0
.word Function_21e0dac+1 @ =0x21e0dad, 0x21e0cb4
.word Function_21e0e8c+1 @ =0x21e0e8d, 0x21e0cb8
.word Function_21e0e90+1 @ =0x21e0e91, 0x21e0cbc



.thumb
Function_21e0cc0: @ 21e0cc0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e0d68
	ldr     r0, [r4, #0x4]
	bl      Function_21e0d7c
	pop     {r4,pc}
@ 0x21e0cd2


.align 2, 0
.thumb
Function_21e0cd4: @ 21e0cd4 :thumb
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	bx      lr
@ 0x21e0cdc

.thumb
Function_21e0cdc: @ 21e0cdc :thumb
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x21e0ce2


.incbin "./baserom/overlay/overlay_0021.bin", 0xff62, 0x21e0d04 - 0x21e0ce2


.thumb
Function_21e0d04: @ 21e0d04 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x20
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e0d16
	bl      Function_2022974
branch_21e0d16: @ 21e0d16 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e0d3e


.align 2, 0
.thumb
Function_21e0d40: @ 21e0d40 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e0d52
	bl      Function_2022974
branch_21e0d52: @ 21e0d52 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e0d68

.thumb
Function_21e0d68: @ 21e0d68 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e0d72
	bl      Function_2022974
branch_21e0d72: @ 21e0d72 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e0d7a


.align 2, 0
.thumb
Function_21e0d7c: @ 21e0d7c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e0d86
	bl      Function_2022974
branch_21e0d86: @ 21e0d86 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e0d8e


.align 2, 0
.thumb
Function_21e0d90: @ 21e0d90 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e0d94


.thumb
Function_21e0d94: @ 21e0d94 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21e0d98


.thumb
Function_21e0d98: @ 21e0d98 :thumb
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x1
	bne     branch_21e0da2
	mov     r0, #0x1
	bx      lr

branch_21e0da2: @ 21e0da2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e0da6


.align 2, 0
.thumb
Function_21e0da8: @ 21e0da8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21e0dac


.thumb
Function_21e0dac: @ 21e0dac :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e0e82
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r2, r5, #1
	lsl     r6, r5, #2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x58
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x58
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e0e82
@ 0x21e0dea


.incbin "./baserom/overlay/overlay_0021.bin", 0x1006a, 0x21e0e82 - 0x21e0dea


.thumb
branch_21e0e82: @ 21e0e82 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e0e86


.incbin "./baserom/overlay/overlay_0021.bin", 0x10106, 0x21e0e8c - 0x21e0e86


.thumb
Function_21e0e8c: @ 21e0e8c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e0e90


.thumb
Function_21e0e90: @ 21e0e90 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r5, [r4, #0x0]
	mov     r3, r0
	mov     r1, r2
	ldr     r0, [r4, #0x8]
	cmp     r5, #0x4
	bhi     branch_21e0f46
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
	lsl     r0, r1, #0
	lsl     r4, r7, #0
	lsl     r2, r7, #1
	lsl     r0, r1, #2
	lsl     r4, r2, #2
	ldr     r1, [r1, #0x14]
	cmp     r1, #0x0
	beq     branch_21e0ec6
	cmp     r1, #0x1
	beq     branch_21e0ed0
	cmp     r1, #0x2
	beq     branch_21e0eda
	b       branch_21e0ee2

branch_21e0ec6: @ 21e0ec6 :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e15ac
	b       branch_21e0ee2

branch_21e0ed0: @ 21e0ed0 :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e14d4
	b       branch_21e0ee2

branch_21e0eda: @ 21e0eda :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e16a8
branch_21e0ee2: @ 21e0ee2 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e0f46
@ 0x21e0eea


.incbin "./baserom/overlay/overlay_0021.bin", 0x1016a, 0x21e0f46 - 0x21e0eea


.thumb
branch_21e0f46: @ 21e0f46 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e0f4a


.incbin "./baserom/overlay/overlay_0021.bin", 0x101ca, 0x21e14d4 - 0x21e0f4a


.thumb
Function_21e14d4: @ 21e14d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r4, r2
	mov     r6, r3
	bl      Function_21d2360
	mov     r0, r7
	bl      Function_21e17ac
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e1546
	cmp     r6, #0x0
	beq     branch_21e1522
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	b       branch_21e1546

branch_21e1522: @ 21e1522 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e1546: @ 21e1546 :thumb
	mov     r0, r5
	bl      Function_21e17dc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e1550


.incbin "./baserom/overlay/overlay_0021.bin", 0x107d0, 0x21e15ac - 0x21e1550


.thumb
Function_21e15ac: @ 21e15ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_21e17ac
	cmp     r6, #0x0
	bne     branch_21e15d2
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r7
	mov     r3, #0x4
	bl      Function_21e17ec
	mov     r0, r7
	bl      Function_21e1824
branch_21e15d2: @ 21e15d2 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e162c
	cmp     r6, #0x0
	beq     branch_21e1608
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21e1608: @ 21e1608 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e162c: @ 21e162c :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e1630


.incbin "./baserom/overlay/overlay_0021.bin", 0x108b0, 0x21e16a8 - 0x21e1630


.thumb
Function_21e16a8: @ 21e16a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_21e17ac
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_21d2360
	cmp     r6, #0x0
	bne     branch_21e16d0
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r7
	mov     r3, #0x1
	bl      Function_21e17ec
branch_21e16d0: @ 21e16d0 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e172a
	cmp     r6, #0x0
	beq     branch_21e1706
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21e1706: @ 21e1706 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e172a: @ 21e172a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e172e


.incbin "./baserom/overlay/overlay_0021.bin", 0x109ae, 0x21e17ac - 0x21e172e


.thumb
Function_21e17ac: @ 21e17ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	pop     {r4,pc}
@ 0x21e17c4


.incbin "./baserom/overlay/overlay_0021.bin", 0x10a44, 0x21e17dc - 0x21e17c4


.thumb
Function_21e17dc: @ 21e17dc :thumb
	mov     r1, #0x5b
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21e17e8, (=#0x21d24fd)
	add     r1, r0, r1
	bx      r3
@ 0x21e17e8

.word Function_21d24fc+1 @ =0x21d24fd, 0x21e17e8



.thumb
Function_21e17ec: @ 21e17ec :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	add     r0, #0x18
	mov     r1, #0x30
	mov     r2, r4
	mov     r3, #0x48
	bl      Function_21d2648
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21e1806


.incbin "./baserom/overlay/overlay_0021.bin", 0x10a86, 0x21e1824 - 0x21e1806


.thumb
Function_21e1824: @ 21e1824 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x52
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	add     r0, #0x38
	mov     r1, #0xac
	mov     r2, #0xaa
	mov     r3, #0x20
	bl      Function_21d2648
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21e1840


.incbin "./baserom/overlay/overlay_0021.bin", 0x10ac0, 0x21e1924 - 0x21e1840


.thumb
Function_21e1924: @ 21e1924 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e199c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e19fc
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e1a24
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e1acc
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e196c, (=#0x21e1ad1)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e1970, (=#0x21e1b15)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e1974, (=#0x21e1b55)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e1978, (=#0x21e1b69)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e197c, (=#0x21e1bfd)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e1980, (=#0x21e1cb9)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e196c

.word Function_21e1ad0+1 @ =0x21e1ad1, 0x21e196c
.word Function_21e1b14+1 @ =0x21e1b15, 0x21e1970
.word Function_21e1b54+1 @ =0x21e1b55, 0x21e1974
.word Function_21e1b68+1 @ =0x21e1b69, 0x21e1978
.word Function_21e1bfc+1 @ =0x21e1bfd, 0x21e197c
.word Function_21e1cb8+1 @ =0x21e1cb9, 0x21e1980



.thumb
Function_21e1984: @ 21e1984 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e1a7c
	ldr     r0, [r4, #0x0]
	bl      Function_21e1a90
	ldr     r0, [r4, #0x20]
	bl      Function_21e1aa4
	pop     {r4,pc}
@ 0x21e199c


.thumb
Function_21e199c: @ 21e199c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e19ae
	bl      Function_2022974
branch_21e19ae: @ 21e19ae :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21e19b4: @ 21e19b4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e19b4
	mov     r0, r5
	bl      Function_21d13a0
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d1410
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d1410
	str     r0, [r4, #0x10]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e19fa


.align 2, 0
.thumb
Function_21e19fc: @ 21e19fc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e1a0e
	bl      Function_2022974
branch_21e1a0e: @ 21e1a0e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e1a24


.thumb
Function_21e1a24: @ 21e1a24 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21e1acc
	mov     r7, r0
	mov     r1, #0x14
	mul     r7, r1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e1a44
	bl      Function_2022974
branch_21e1a44: @ 21e1a44 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	blx     Function_20d5124
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_21d4a94
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x14
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_21d4bb4
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x28
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_21d4af8
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21e1a7a


.align 2, 0
.thumb
Function_21e1a7c: @ 21e1a7c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e1a86
	bl      Function_2022974
branch_21e1a86: @ 21e1a86 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e1a8e


.align 2, 0
.thumb
Function_21e1a90: @ 21e1a90 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e1a9a
	bl      Function_2022974
branch_21e1a9a: @ 21e1a9a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e1aa2


.align 2, 0
.thumb
Function_21e1aa4: @ 21e1aa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e1aae
	bl      Function_2022974
branch_21e1aae: @ 21e1aae :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x28
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e1acc


.thumb
Function_21e1acc: @ 21e1acc :thumb
	mov     r0, #0x3
	bx      lr
@ 0x21e1ad0


.thumb
Function_21e1ad0: @ 21e1ad0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	mov     r1, #0x3c
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x4
branch_21e1aee: @ 21e1aee :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x14]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x8
	blt     branch_21e1aee
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e1d40
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e2968
	str     r4, [r5, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21e1b14


.thumb
Function_21e1b14: @ 21e1b14 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21e1b24
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e1b24: @ 21e1b24 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21e1b2e
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e1b2e: @ 21e1b2e :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e1b4e
	mov     r0, r4
	bl      Function_21e28a8
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e1e00
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e2864
branch_21e1b4e: @ 21e1b4e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e1b52


.align 2, 0
.thumb
Function_21e1b54: @ 21e1b54 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      Function_21e1e74
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e1b68


.thumb
Function_21e1b68: @ 21e1b68 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	str     r2, [sp, #0x0]
	ldr     r7, [r3, #0x8]
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e1bf6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r6, r0, #1
	lsl     r4, r3, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0xc4
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xc4
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e1bf6
@ 0x21e1ba8


.incbin "./baserom/overlay/overlay_0021.bin", 0x10e28, 0x21e1bf6 - 0x21e1ba8


.thumb
branch_21e1bf6: @ 21e1bf6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e1bfa


.align 2, 0
.thumb
Function_21e1bfc: @ 21e1bfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x1c]
	mov     r0, r1
	ldr     r0, [r0, #0x8]
	ldr     r6, [r3, #0x8]
	str     r0, [sp, #0x28]
	add     r0, #0xc0
	str     r1, [sp, #0x20]
	ldr     r1, [r0, #0x0]
	ldr     r0, [r6, #0x38]
	cmp     r1, r0
	beq     branch_21e1c26
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	bl      Function_21e28d0
	ldr     r0, [sp, #0x28]
	ldr     r1, [r6, #0x38]
	add     r0, #0xc0
	str     r1, [r0, #0x0]
branch_21e1c26: @ 21e1c26 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	ldr     r7, [sp, #0x28]
	str     r0, [sp, #0x24]
	add     r0, #0xa0
	ldr     r5, [sp, #0x28]
	str     r0, [sp, #0x24]
	add     r7, #0x80
	mov     r4, r6
branch_21e1c3a: @ 21e1c3a :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	bne     branch_21e1c44
	mov     r1, #0x4
	b       branch_21e1c46

branch_21e1c44: @ 21e1c44 :thumb
	mov     r1, #0x5
branch_21e1c46: @ 21e1c46 :thumb
	mov     r0, #0x5
	mvn     r0, r0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	str     r7, [sp, #0x8]
	ldr     r0, [r0, #0x4]
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x20]
	ldr     r3, [r4, #0x14]
	bl      Function_21e26a0
	ldr     r0, [r5, #0x50]
	ldr     r1, [r4, #0x14]
	bl      Function_21d144c
	ldr     r0, [sp, #0x24]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x2c]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x2c]
	cmp     r0, #0x1
	ble     branch_21e1c3a
	ldr     r0, [sp, #0x28]
	mov     r4, #0x2
	add     r0, #0x8
	add     r6, #0x8
	str     r0, [sp, #0x28]
branch_21e1c96: @ 21e1c96 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [r6, #0x14]
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	bl      Function_21e29a4
	ldr     r0, [sp, #0x28]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [sp, #0x28]
	cmp     r4, #0x8
	blt     branch_21e1c96
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21e1cb6


.align 2, 0
.thumb
Function_21e1cb8: @ 21e1cb8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e1d3a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r5, #0
	lsl     r0, r0, #1
	lsl     r2, r2, #1
	lsl     r0, r4, #1
	mov     r0, #0x79
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_21d25ac
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21e25f8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e1d3a
@ 0x21e1d00


.incbin "./baserom/overlay/overlay_0021.bin", 0x10f80, 0x21e1d3a - 0x21e1d00


.thumb
branch_21e1d3a: @ 21e1d3a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e1d3e


.align 2, 0
.thumb
Function_21e1d40: @ 21e1d40 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x70
	mov     r2, #0x98
	mov     r3, #0x30
	bl      Function_21d154c
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x38
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x60
	mov     r3, #0x30
	bl      Function_21d154c
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x8
	mov     r2, #0xc0
	mov     r3, #0x8
	bl      Function_21d154c
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0xc
	mov     r2, #0xc0
	mov     r3, #0x30
	bl      Function_21d154c
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x10
	mov     r2, #0xc0
	mov     r3, #0x58
	bl      Function_21d154c
	mov     r0, #0xa8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x14
	mov     r2, #0xc0
	mov     r3, #0x80
	bl      Function_21d154c
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x18
	mov     r2, #0xc0
	mov     r3, #0xa8
	bl      Function_21d154c
	mov     r0, #0xf8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa0
	add     r0, #0x1c
	mov     r2, #0xc0
	mov     r3, #0xd0
	bl      Function_21d154c
	str     r4, [r5, #0x8]
	str     r5, [r5, #0xc]
	str     r6, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x21e1dfc, (=#Function_21e1e8c+1)
	mov     r1, #0x8
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21e1dfc

.word Function_21e1e8c+1 @ 0x21e1dfc



.thumb
Function_21e1e00: @ 21e1e00 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x3
branch_21e1e0a: @ 21e1e0a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x14]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x8
	blt     branch_21e1e0a
	ldr     r0, [r4, #0x0]
	bl      Function_202404c
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x5
	bhi     branch_21e1e5a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r0, r2, #0
	lsl     r6, r2, #0
	lsl     r4, r3, #0
	lsl     r2, r4, #0
	lsl     r0, r5, #0
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	b       branch_21e1e5a
@ 0x21e1e3e


.incbin "./baserom/overlay/overlay_0021.bin", 0x110be, 0x21e1e5a - 0x21e1e3e


.thumb
branch_21e1e5a: @ 21e1e5a :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21e1e66
	cmp     r0, #0x1
	beq     branch_21e1e6c
	pop     {r4,pc}

branch_21e1e66: @ 21e1e66 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x14]
	pop     {r4,pc}

branch_21e1e6c: @ 21e1e6c :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21e1e72


.align 2, 0
.thumb
Function_21e1e74: @ 21e1e74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21e1e8a


.align 2, 0
.thumb
Function_21e1e8c: @ 21e1e8c :thumb
	push    {r3-r5,lr}
	ldr     r4, [r2, #0x4]
	ldr     r5, [r2, #0x0]
	lsl     r2, r0, #2
	add     r2, r4, r2
	str     r1, [r2, #0x14]
	cmp     r1, #0x2
	bne     branch_21e1f06
	cmp     r0, #0x7
	bhi     branch_21e1f06
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r3, #0
	lsl     r0, r2, #1
	lsl     r0, r1, #2
	lsl     r6, r7, #2
	lsl     r4, r6, #3
	lsl     r2, r5, #4
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	pop     {r3-r5,pc}
@ 0x21e1ec2


.incbin "./baserom/overlay/overlay_0021.bin", 0x11142, 0x21e1f06 - 0x21e1ec2


.thumb
branch_21e1f06: @ 21e1f06 :thumb
	b       branch_21e200c
@ 0x21e1f08


.incbin "./baserom/overlay/overlay_0021.bin", 0x11188, 0x21e200c - 0x21e1f08


.thumb
branch_21e200c: @ 21e200c :thumb
	pop     {r3-r5,pc}
@ 0x21e200e


.incbin "./baserom/overlay/overlay_0021.bin", 0x1128e, 0x21e2588 - 0x21e200e


.thumb
Function_21e2588: @ 21e2588 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x1
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, r7
branch_21e2592: @ 21e2592 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2021fe0
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_21e25a8
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	bl      Function_2012af0
branch_21e25a8: @ 21e25a8 :thumb
	ldr     r0, [r5, #0x50]
	cmp     r0, #0x0
	beq     branch_21e25b4
	mov     r1, #0x1
	bl      Function_2021fe0
branch_21e25b4: @ 21e25b4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_21e2592
	pop     {r3-r7,pc}
@ 0x21e25be


.incbin "./baserom/overlay/overlay_0021.bin", 0x1183e, 0x21e25f8 - 0x21e25be


.thumb
Function_21e25f8: @ 21e25f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e2588
	ldr     r0, [r4, #0x14]
	bl      Function_21e33a4
	cmp     r0, #0x0
	beq     branch_21e2660
	cmp     r6, #0x0
	beq     branch_21e263c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r2, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21e263c: @ 21e263c :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r3, r0
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e2660: @ 21e2660 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e2664


.incbin "./baserom/overlay/overlay_0021.bin", 0x118e4, 0x21e26a0 - 0x21e2664


.thumb
Function_21e26a0: @ 21e26a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r1
	mov     r1, r3
	str     r2, [sp, #0xc]
	ldr     r4, [sp, #0x30]
	ldr     r6, [sp, #0x40]
	mov     r5, #0x0
	bl      Function_21d144c
	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x38]
	bl      Function_21e274c
	ldr     r0, [sp, #0x8]
	bl      Function_2021e74
	cmp     r0, #0x3
	bhi     branch_21e2712
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r4, r4, #0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21e2712
	mov     r0, #0x0
	mov     r5, #0x1
	mov     r7, #0x9
	str     r0, [r4, #0x0]
	b       branch_21e2712
@ 0x21e26f6


.incbin "./baserom/overlay/overlay_0021.bin", 0x11976, 0x21e2712 - 0x21e26f6


.thumb
branch_21e2712: @ 21e2712 :thumb
	cmp     r5, #0x0
	beq     branch_21e2748
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21e2720
	bl      Function_20181c4
branch_21e2720: @ 21e2720 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x34]
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	add     r2, sp, #0x10
	bl      Function_21d27e0
	str     r0, [r6, #0x0]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x1f
	lsl     r1, r1, #5
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_21e2748
	bl      Function_2022974
branch_21e2748: @ 21e2748 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e274c


.thumb
Function_21e274c: @ 21e274c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_21d1524
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e275c


.thumb
Function_21e275c: @ 21e275c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x8]
	mov     r6, #0x1
	str     r6, [r1, #0x1c]
	ldr     r3, [r4, #0x0]
	mov     r5, r2
	ldr     r2, [r3, #0x0]
	mov     r1, #0x4
	orr     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	mov     r1, #0x2
	ldr     r0, [r4, #0x8]
	cmp     r5, #0x5
	str     r1, [r0, #0x14]
	bhi     branch_21e27bc
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r3, #0
	lsl     r4, r3, #0
	lsl     r4, r3, #0
	lsl     r4, r3, #0
	lsl     r4, r3, #0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x30
	str     r1, [r0, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x48
	str     r1, [r0, #0xc]
	ldr     r0, [r4, #0x8]
	str     r6, [r0, #0x14]
	pop     {r4-r6,pc}
@ 0x21e27aa


.incbin "./baserom/overlay/overlay_0021.bin", 0x11a2a, 0x21e27bc - 0x21e27aa


.thumb
branch_21e27bc: @ 21e27bc :thumb
	pop     {r4-r6,pc}
@ 0x21e27be


.incbin "./baserom/overlay/overlay_0021.bin", 0x11a3e, 0x21e2864 - 0x21e27be


.thumb
Function_21e2864: @ 21e2864 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	cmp     r0, #0x8
	beq     branch_21e28a2
	cmp     r0, #0x1
	ldr     r0, [r4, #0x4]
	bne     branch_21e2880
	mov     r1, #0x0
	mvn     r1, r1
	bl      Function_21d371c
	b       branch_21e2886

branch_21e2880: @ 21e2880 :thumb
	mov     r1, #0x1
	bl      Function_21d371c
branch_21e2886: @ 21e2886 :thumb
	cmp     r0, #0x1
	bne     branch_21e28a2
	ldr     r2, [r5, #0x10]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e275c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e2968
	ldr     r0, [pc, #0x4] @ 0x21e28a4, (=#0x68b)
	bl      Function_2005748
branch_21e28a2: @ 21e28a2 :thumb
	pop     {r3-r5,pc}
@ 0x21e28a4

.word 0x68b @ 0x21e28a4



.thumb
Function_21e28a8: @ 21e28a8 :thumb
	ldr     r1, [pc, #0x20] @ 0x21e28cc, (=#0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x40
	tst     r1, r2
	beq     branch_21e28b8
	mov     r1, #0x1
	str     r1, [r0, #0x34]
	bx      lr

branch_21e28b8: @ 21e28b8 :thumb
	mov     r1, #0x80
	tst     r1, r2
	beq     branch_21e28c4
	mov     r1, #0x0
	str     r1, [r0, #0x34]
	bx      lr

branch_21e28c4: @ 21e28c4 :thumb
	mov     r1, #0x8
	str     r1, [r0, #0x34]
	bx      lr
@ 0x21e28ca

.align 2
.word 0x21bf67c @ 0x21e28cc



.thumb
Function_21e28d0: @ 21e28d0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	tst     r0, r1
	ldr     r0, [r5, #0x8]
	bne     branch_21e28e8
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21e28ec

branch_21e28e8: @ 21e28e8 :thumb
	bl      Function_2021cac
branch_21e28ec: @ 21e28ec :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, #0x2
	tst     r0, r1
	ldr     r0, [r5, #0xc]
	bne     branch_21e28fe
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21e2904

branch_21e28fe: @ 21e28fe :thumb
	mov     r1, #0x1
	bl      Function_2021cac
branch_21e2904: @ 21e2904 :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, #0x4
	tst     r0, r1
	ldr     r0, [r5, #0x10]
	bne     branch_21e2916
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21e291c

branch_21e2916: @ 21e2916 :thumb
	mov     r1, #0x1
	bl      Function_2021cac
branch_21e291c: @ 21e291c :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, #0x8
	tst     r0, r1
	ldr     r0, [r5, #0x14]
	bne     branch_21e292e
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21e2934

branch_21e292e: @ 21e292e :thumb
	mov     r1, #0x1
	bl      Function_2021cac
branch_21e2934: @ 21e2934 :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, #0x10
	tst     r0, r1
	ldr     r0, [r5, #0x18]
	bne     branch_21e2946
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21e294c

branch_21e2946: @ 21e2946 :thumb
	mov     r1, #0x1
	bl      Function_2021cac
branch_21e294c: @ 21e294c :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, #0x20
	tst     r0, r1
	ldr     r0, [r5, #0x1c]
	bne     branch_21e295e
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r5,pc}

branch_21e295e: @ 21e295e :thumb
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x21e2966


.align 2, 0
.thumb
Function_21e2968: @ 21e2968 :thumb
	push    {r3-r7,lr}
	mov     r5, #0x0
	mov     r4, r0
	mov     r6, r1
	str     r5, [r0, #0x38]
	add     r4, #0x38
	mov     r7, #0x1
branch_21e2976: @ 21e2976 :thumb
	mov     r0, r5
	bl      Function_21d5608
	mov     r1, r0
	ldr     r0, [r6, #0x4]
	bl      Function_21d392c
	cmp     r0, #0x0
	beq     branch_21e299c
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1
	mov     r2, r1
	orr     r2, r0
	add     r0, r5, #0x1
	mov     r1, r7
	lsl     r1, r0
	mov     r0, r2
	orr     r0, r1
	str     r0, [r4, #0x0]
branch_21e299c: @ 21e299c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x5
	blt     branch_21e2976
	pop     {r3-r7,pc}
@ 0x21e29a4


.thumb
Function_21e29a4: @ 21e29a4 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x2
	blt     branch_21e29b4
	cmp     r4, #0x8
	blt     branch_21e29b8
branch_21e29b4: @ 21e29b4 :thumb
	bl      Function_2022974
branch_21e29b8: @ 21e29b8 :thumb
	sub     r0, r4, #0x2
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x18] @ 0x21e29d8, (=#0x21e9d98)
	cmp     r6, #0x1
	ldr     r1, [r0, r1]
	bne     branch_21e29ce
	mov     r0, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_2021d6c
	pop     {r4-r6,pc}

branch_21e29ce: @ 21e29ce :thumb
	mov     r0, r5
	bl      Function_2021d6c
	pop     {r4-r6,pc}
@ 0x21e29d6

.align 2
.word 0x21e9d98 @ 0x21e29d8



.thumb
Function_21e29dc: @ 21e29dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e2a5c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e2ae0
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e2b08
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e2c20
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e2a24, (=#0x21e2c25)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e2a28, (=#0x21e2c2d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e2a2c, (=#0x21e2c5d)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e2a30, (=#0x21e2c65)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e2a34, (=#0x21e2d11)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e2a38, (=#0x21e2d39)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e2a24

.word Function_21e2c24+1 @ =0x21e2c25, 0x21e2a24
.word Function_21e2c2c+1 @ =0x21e2c2d, 0x21e2a28
.word Function_21e2c5c+1 @ =0x21e2c5d, 0x21e2a2c
.word Function_21e2c64+1 @ =0x21e2c65, 0x21e2a30
.word Function_21e2d10+1 @ =0x21e2d11, 0x21e2a34
.word Function_21e2d38+1 @ =0x21e2d39, 0x21e2a38



.thumb
Function_21e2a3c: @ 21e2a3c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e2ba8
	ldr     r0, [r4, #0x4]
	bl      Function_21e2bbc
	ldr     r0, [r4, #0x20]
	bl      Function_21e2bd0
	pop     {r4,pc}
@ 0x21e2a54


.thumb
Function_21e2a54: @ 21e2a54 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x28]
	bx      lr
@ 0x21e2a5a


.align 2, 0
.thumb
Function_21e2a5c: @ 21e2a5c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x34
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e2a6e
	bl      Function_2022974
branch_21e2a6e: @ 21e2a6e :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d13b4
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d1410
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d1410
	str     r0, [r4, #0x18]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_21d1410
	str     r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_21d1410
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_21d1430
	str     r0, [r4, #0x24]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	str     r0, [r4, #0x30]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e2ae0


.thumb
Function_21e2ae0: @ 21e2ae0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e2af2
	bl      Function_2022974
branch_21e2af2: @ 21e2af2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e2b08


.thumb
Function_21e2b08: @ 21e2b08 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21e2c20
	mov     r7, r0
	mov     r1, #0x14
	mul     r7, r1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e2b28
	bl      Function_2022974
branch_21e2b28: @ 21e2b28 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	blx     Function_20d5124
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_21d47f0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x14
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_21d4a94
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x28
	mov     r2, r6
	mov     r3, #0x8
	bl      Function_21d48b8
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3c
	mov     r2, r6
	mov     r3, #0x10
	bl      Function_21d491c
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x50
	mov     r2, r6
	mov     r3, #0x20
	bl      Function_21d4980
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x64
	mov     r2, r6
	mov     r3, #0x40
	bl      Function_21d49e4
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x78
	mov     r2, r6
	mov     r3, #0x80
	bl      Function_21d4a3c
	mov     r1, r4
	mov     r3, #0x1
	mov     r0, r5
	add     r1, #0x8c
	mov     r2, r6
	lsl     r3, r3, #8
	bl      Function_21d4b50
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21e2ba6


.align 2, 0
.thumb
Function_21e2ba8: @ 21e2ba8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e2bb2
	bl      Function_2022974
branch_21e2bb2: @ 21e2bb2 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e2bba


.align 2, 0
.thumb
Function_21e2bbc: @ 21e2bbc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e2bc6
	bl      Function_2022974
branch_21e2bc6: @ 21e2bc6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e2bce


.align 2, 0
.thumb
Function_21e2bd0: @ 21e2bd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e2bda
	bl      Function_2022974
branch_21e2bda: @ 21e2bda :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x28
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x50
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x64
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x78
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x8c
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e2c20


.thumb
Function_21e2c20: @ 21e2c20 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x21e2c24


.thumb
Function_21e2c24: @ 21e2c24 :thumb
	ldr     r1, [r1, #0x10]
	mov     r0, #0x1
	str     r0, [r1, #0x1c]
	bx      lr
@ 0x21e2c2c


.thumb
Function_21e2c2c: @ 21e2c2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x1
	bne     branch_21e2c3a
	mov     r0, #0x1
	pop     {r4,pc}

branch_21e2c3a: @ 21e2c3a :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_21e2c44
	mov     r0, #0x0
	pop     {r4,pc}

branch_21e2c44: @ 21e2c44 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21e2c56
	mov     r0, r1
	bl      Function_21e3320
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
branch_21e2c56: @ 21e2c56 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21e2c5a


.align 2, 0
.thumb
Function_21e2c5c: @ 21e2c5c :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	mov     r0, #0x1
	bx      lr
@ 0x21e2c64


.thumb
Function_21e2c64: @ 21e2c64 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_21e2d06
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r6, r4, #0
	lsl     r6, r3, #1
	lsl     r6, r6, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x28
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x28
	blx     Function_20d5124
	ldr     r1, [r7, #0x8]
	ldr     r0, [r4, #0x8]
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e2d0a
@ 0x21e2caa


.incbin "./baserom/overlay/overlay_0021.bin", 0x11f2a, 0x21e2d06 - 0x21e2caa


.thumb
branch_21e2d06: @ 21e2d06 :thumb
	bl      Function_2022974
branch_21e2d0a: @ 21e2d0a :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e2d10


.thumb
Function_21e2d10: @ 21e2d10 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r1, #0x8]
	mov     r5, r2
	ldr     r1, [r5, #0x8]
	ldr     r0, [r4, #0x0]
	cmp     r0, r1
	beq     branch_21e2d32
	mov     r0, r4
	bl      Function_21e331c
	ldr     r1, [r5, #0x8]
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	bl      Function_21e3fc0
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x0]
branch_21e2d32: @ 21e2d32 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e2d36


.align 2, 0
.thumb
Function_21e2d38: @ 21e2d38 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	ldr     r3, [r4, #0x0]
	mov     r5, r0
	ldr     r1, [r4, #0x8]
	cmp     r3, #0x4
	bhi     branch_21e2df4
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r0, r1, #0
	lsl     r2, r4, #1
	lsl     r2, r7, #1
	lsl     r6, r0, #2
	lsl     r0, r3, #2
	ldr     r0, [r2, #0x2c]
	cmp     r0, #0x0
	beq     branch_21e2d8e
	mov     r0, r1
	bl      Function_21e3be0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2f
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r3, r1
	sub     r3, #0x14
	bl      Function_21d23f8
	b       branch_21e2db0

branch_21e2d8e: @ 21e2d8e :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x3f
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x4
	mov     r3, r1
	sub     r3, #0x14
	bl      Function_21d23f8
branch_21e2db0: @ 21e2db0 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e2df8
@ 0x21e2db8


.incbin "./baserom/overlay/overlay_0021.bin", 0x12038, 0x21e2df4 - 0x21e2db8


.thumb
branch_21e2df4: @ 21e2df4 :thumb
	bl      Function_2022974
branch_21e2df8: @ 21e2df8 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21e2dfe


.align 2, 0
.thumb
Function_21e2e00: @ 21e2e00 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21e2e10
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	pop     {r4,pc}
@ 0x21e2e0e


.align 2, 0
.thumb
Function_21e2e10: @ 21e2e10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r2, #0x0]
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r1, #0x0
	str     r1, [r4, #0x28]
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x14]
	ldr     r0, [r4, #0x18]
	bl      Function_21e0cdc
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e2ebe
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r4, #0
	lsl     r0, r1, #1
	lsl     r4, r5, #1
	lsl     r6, r6, #1
	ldr     r0, [r4, #0x10]
	mov     r1, #0x38
	str     r1, [r0, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, #0x50
	str     r2, [r0, #0xc]
	ldr     r0, [r4, #0x18]
	bl      Function_21e0cd4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	str     r1, [r0, #0x14]
	str     r1, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21e2e64


.incbin "./baserom/overlay/overlay_0021.bin", 0x120e4, 0x21e2ebe - 0x21e2e64


.thumb
branch_21e2ebe: @ 21e2ebe :thumb
	pop     {r4,pc}
@ 0x21e2ec0


.thumb
Function_21e2ec0: @ 21e2ec0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e2ec4


.thumb
Function_21e2ec4: @ 21e2ec4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x1
	mov     r7, r1
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	cmp     r7, #0x4
	bhi     branch_21e2fc2
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r0, r6, #0
	lsl     r6, r4, #1
	lsl     r4, r3, #2
	lsl     r4, r7, #2
	mov     r0, r2
	bl      Function_21e2ec0
	cmp     r0, #0x0
	beq     branch_21e2efa
	mov     r1, #0x2
	b       branch_21e2efc

branch_21e2efa: @ 21e2efa :thumb
	mov     r1, #0x1
branch_21e2efc: @ 21e2efc :thumb
	ldr     r0, [r4, #0x10]
	mov     r6, #0x30
	str     r1, [r0, #0x14]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x4
	ldr     r1, [r2, #0x0]
	mov     r5, #0x48
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	b       branch_21e2fc6
@ 0x21e2f14


.incbin "./baserom/overlay/overlay_0021.bin", 0x12194, 0x21e2fc2 - 0x21e2f14


.thumb
branch_21e2fc2: @ 21e2fc2 :thumb
	bl      Function_2022974
branch_21e2fc6: @ 21e2fc6 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x4
	bhi     branch_21e3076
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r0, r0, #1
	lsl     r6, r5, #1
	lsl     r0, r4, #2
	lsl     r0, r4, #2
	mov     r0, r7
	bl      Function_21e2ec0
	cmp     r0, #0x0
	beq     branch_21e2ffa
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	str     r1, [r0, #0x14]
	ldr     r0, [r4, #0x18]
	bl      Function_21e0cdc
	b       branch_21e3006

branch_21e2ffa: @ 21e2ffa :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	str     r1, [r0, #0x14]
	ldr     r0, [r4, #0x18]
	bl      Function_21e0cdc
branch_21e3006: @ 21e3006 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	str     r6, [r0, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, r5
	str     r5, [r0, #0xc]
	ldr     r0, [r4, #0x18]
	bl      Function_21e0cd4
	b       branch_21e307a
@ 0x21e301a


.incbin "./baserom/overlay/overlay_0021.bin", 0x1229a, 0x21e3076 - 0x21e301a


.thumb
branch_21e3076: @ 21e3076 :thumb
	bl      Function_2022974
branch_21e307a: @ 21e307a :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21e3080


.incbin "./baserom/overlay/overlay_0021.bin", 0x12300, 0x21e331c - 0x21e3080


.thumb
Function_21e331c: @ 21e331c :thumb
	bx      lr
@ 0x21e331e


.align 2, 0
.thumb
Function_21e3320: @ 21e3320 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x28]
	ldr     r0, [r0, #0x10]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x21e332a


.align 2, 0
.thumb
Function_21e332c: @ 21e332c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e33c4
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e3400
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e3428
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e3458
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e3374, (=#0x21e345d)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e3378, (=#0x21e34ad)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e337c, (=#0x21e3521)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e3380, (=#0x21e3541)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e3384, (=#0x21e35d1)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e3388, (=#0x21e3605)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e3374

.word Function_21e345c+1 @ =0x21e345d, 0x21e3374
.word Function_21e34ac+1 @ =0x21e34ad, 0x21e3378
.word Function_21e3520+1 @ =0x21e3521, 0x21e337c
.word Function_21e3540+1 @ =0x21e3541, 0x21e3380
.word Function_21e35d0+1 @ =0x21e35d1, 0x21e3384
.word Function_21e3604+1 @ =0x21e3605, 0x21e3388



.thumb
Function_21e338c: @ 21e338c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e342c
	ldr     r0, [r4, #0x4]
	bl      Function_21e3440
	ldr     r0, [r4, #0x20]
	bl      Function_21e3454
	pop     {r4,pc}
@ 0x21e33a4


.thumb
Function_21e33a4: @ 21e33a4 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x21e33aa


.align 2, 0
.thumb
Function_21e33ac: @ 21e33ac :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x28]
	bx      lr
@ 0x21e33b2


.align 2, 0
.thumb
Function_21e33b4: @ 21e33b4 :thumb
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x30]
	bx      lr
@ 0x21e33ba


.align 2, 0
.thumb
Function_21e33bc: @ 21e33bc :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x30]
	bx      lr
@ 0x21e33c2


.align 2, 0
.thumb
Function_21e33c4: @ 21e33c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x34
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e33d6
	bl      Function_2022974
branch_21e33d6: @ 21e33d6 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_21d13c8
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e3400


.thumb
Function_21e3400: @ 21e3400 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e3412
	bl      Function_2022974
branch_21e3412: @ 21e3412 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e3428


.thumb
Function_21e3428: @ 21e3428 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e342c


.thumb
Function_21e342c: @ 21e342c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e3436
	bl      Function_2022974
branch_21e3436: @ 21e3436 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e343e


.align 2, 0
.thumb
Function_21e3440: @ 21e3440 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e344a
	bl      Function_2022974
branch_21e344a: @ 21e344a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e3452


.align 2, 0
.thumb
Function_21e3454: @ 21e3454 :thumb
	bx      lr
@ 0x21e3456


.align 2, 0
.thumb
Function_21e3458: @ 21e3458 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e345c


.thumb
Function_21e345c: @ 21e345c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x1c
	bl      Function_2018144
	mov     r6, r0
	mov     r2, r6
	mov     r1, #0x1c
	mov     r0, #0x0
branch_21e3472: @ 21e3472 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e3472
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e3688
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e3c6c
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e3e8c
	mov     r1, #0x0
	mov     r0, #0x4
branch_21e349a: @ 21e349a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, #0xc]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x6
	blt     branch_21e349a
	str     r6, [r5, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21e34aa


.align 2, 0
.thumb
Function_21e34ac: @ 21e34ac :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21e34c0
	mov     r0, #0x0
	str     r0, [r5, #0x24]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e34c0: @ 21e34c0 :thumb
	ldr     r1, [r0, #0x10]
	cmp     r1, #0x1
	bne     branch_21e34ca
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e34ca: @ 21e34ca :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_21e34e4
	mov     r3, #0x1
	str     r3, [r5, #0x24]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x0
	str     r2, [r1, #0x30]
	str     r3, [r5, #0x28]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_21e351c

branch_21e34e4: @ 21e34e4 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x28]
	mov     r0, r5
	bl      Function_21e3c2c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e3eec
	mov     r0, r5
	bl      Function_21e3724
	ldr     r0, [r5, #0x8]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21e3514
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	bne     branch_21e3514
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e3d48
branch_21e3514: @ 21e3514 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e3734
branch_21e351c: @ 21e351c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e3520


.thumb
Function_21e3520: @ 21e3520 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_21e37b4
	mov     r0, r5
	bl      Function_21e3e74
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21e3540


.thumb
Function_21e3540: @ 21e3540 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	mov     r7, r2
	ldr     r6, [r3, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e35cc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r2, r4, #0
	lsl     r2, r6, #0
	lsl     r6, r2, #1
	lsl     r0, r5, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x28
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x28
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e35cc
@ 0x21e3582


.incbin "./baserom/overlay/overlay_0021.bin", 0x12802, 0x21e35cc - 0x21e3582


.thumb
branch_21e35cc: @ 21e35cc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e35d0


.thumb
Function_21e35d0: @ 21e35d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0x8]
	mov     r7, r2
	ldr     r5, [r1, #0x8]
	str     r0, [sp, #0x4]
	mov     r6, #0x0
	mov     r4, r7
branch_21e35e2: @ 21e35e2 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0xc]
	bl      Function_21d144c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_21e35e2
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	bl      Function_21e3f48
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21e3604


.thumb
Function_21e3604: @ 21e3604 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e3684
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r6, #0
	lsl     r0, r2, #1
	lsl     r0, r4, #1
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, r0
	sub     r1, #0x14
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e3684
@ 0x21e3642


.incbin "./baserom/overlay/overlay_0021.bin", 0x128c2, 0x21e3684 - 0x21e3642


.thumb
branch_21e3684: @ 21e3684 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e3688


.thumb
Function_21e3688: @ 21e3688 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r1, #0x8
	ldr     r0, [r5, #0x4]
	mov     r2, #0x28
	mov     r3, r1
	bl      Function_21d154c
	mov     r0, #0xf8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x8
	add     r0, #0x14
	mov     r2, #0x28
	mov     r3, #0xd0
	bl      Function_21d154c
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x8
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x28
	mov     r3, #0x30
	bl      Function_21d154c
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x8
	add     r0, #0x8
	mov     r2, #0x28
	mov     r3, #0x58
	bl      Function_21d154c
	mov     r0, #0xa8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x8
	add     r0, #0xc
	mov     r2, #0x28
	mov     r3, #0x80
	bl      Function_21d154c
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x8
	add     r0, #0x10
	mov     r2, #0x28
	mov     r3, #0xa8
	bl      Function_21d154c
	str     r4, [r5, #0x8]
	str     r5, [r5, #0xc]
	str     r6, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x21e3720, (=#Function_21e37cc+1)
	mov     r1, #0x6
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21e3720

.word Function_21e37cc+1 @ 0x21e3720



.thumb
Function_21e3724: @ 21e3724 :thumb
	mov     r2, #0x0
	mov     r1, #0x3
branch_21e3728: @ 21e3728 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x6
	blt     branch_21e3728
	bx      lr
@ 0x21e3734


.thumb
Function_21e3734: @ 21e3734 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x2c]
	cmp     r1, #0x0
	bne     branch_21e3744
	ldr     r0, [r0, #0x0]
	bl      Function_202404c
branch_21e3744: @ 21e3744 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21e3754
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x2
	beq     branch_21e3754
	mov     r0, #0x1
	str     r0, [r4, #0x20]
branch_21e3754: @ 21e3754 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e37ae
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r2, #0
	lsl     r0, r4, #0
	lsl     r4, r5, #0
	lsl     r0, r7, #0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x2
	beq     branch_21e37b2
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21e377e


.incbin "./baserom/overlay/overlay_0021.bin", 0x129fe, 0x21e37ae - 0x21e377e


.thumb
branch_21e37ae: @ 21e37ae :thumb
	bl      Function_2022974
branch_21e37b2: @ 21e37b2 :thumb
	pop     {r4,pc}
@ 0x21e37b4


.thumb
Function_21e37b4: @ 21e37b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21e37ca


.align 2, 0
.thumb
Function_21e37cc: @ 21e37cc :thumb
	push    {r3-r7,lr}
	ldr     r6, [r2, #0x0]
	mov     r7, r0
	lsl     r0, r7, #2
	add     r0, r6, r0
	ldr     r5, [r2, #0x4]
	ldr     r4, [r6, #0x4]
	cmp     r1, #0x0
	str     r1, [r0, #0xc]
	beq     branch_21e37e6
	cmp     r1, #0x2
	beq     branch_21e37ec
	pop     {r3-r7,pc}

branch_21e37e6: @ 21e37e6 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

branch_21e37ec: @ 21e37ec :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_21d4f20
	cmp     r7, #0x5
	bhi     branch_21e38f6
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #0
	lsl     r6, r6, #0
	lsl     r4, r2, #1
	lsl     r2, r6, #1
	lsl     r4, r5, #2
	lsl     r2, r1, #0
	mov     r0, r4
	bl      Function_21e2e00
	ldr     r0, [pc, #0xdc] @ 0x21e38f8, (=#0x5dd)
	bl      Function_2005748
	pop     {r3-r7,pc}
@ 0x21e3820


.incbin "./baserom/overlay/overlay_0021.bin", 0x12aa0, 0x21e38f6 - 0x21e3820


.thumb
branch_21e38f6: @ 21e38f6 :thumb
	pop     {r3-r7,pc}
@ 0x21e38f8

.word 0x5dd @ 0x21e38f8


.incbin "./baserom/overlay/overlay_0021.bin", 0x12b7c, 0x21e3be0 - 0x21e38fc


.thumb
Function_21e3be0: @ 21e3be0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0x1
branch_21e3be8: @ 21e3be8 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21e3be8
	pop     {r4-r6,pc}
@ 0x21e3bfc


.incbin "./baserom/overlay/overlay_0021.bin", 0x12e7c, 0x21e3c18 - 0x21e3bfc


.thumb
Function_21e3c18: @ 21e3c18 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21e2ec4
	cmp     r0, #0x1
	bne     branch_21e3c2a
	mov     r1, #0x0
	str     r1, [r4, #0x28]
branch_21e3c2a: @ 21e3c2a :thumb
	pop     {r4,pc}
@ 0x21e3c2c


.thumb
Function_21e3c2c: @ 21e3c2c :thumb
	ldr     r3, [pc, #0x0] @ 0x21e3c30, (=#Function_21e3c34+1)
	bx      r3
@ 0x21e3c30

.word Function_21e3c34+1 @ 0x21e3c30



.thumb
Function_21e3c34: @ 21e3c34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x4]
	bl      Function_21e3c64
	ldr     r0, [pc, #0x1c] @ 0x21e3c5c, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21e3c58
	mov     r0, r4
	bl      Function_21e2e00
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x21e3c60, (=#0x5dd)
	bl      Function_2005748
branch_21e3c58: @ 21e3c58 :thumb
	pop     {r3-r5,pc}
@ 0x21e3c5a

.align 2
.word 0x21bf67c @ 0x21e3c5c
.word 0x5dd @ 0x21e3c60



.thumb
Function_21e3c64: @ 21e3c64 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x2c]
	bx      lr
@ 0x21e3c6a


.align 2, 0
.thumb
Function_21e3c6c: @ 21e3c6c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0xa8
	bl      Function_2018144
	str     r0, [r5, #0x18]
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r2, #0x18
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1c
	mov     r3, r2
	bl      Function_21d4fe4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r2, #0x18
	add     r0, #0x1c
	mov     r1, #0x44
	mov     r3, r2
	bl      Function_21d4fe4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r2, #0x18
	add     r0, #0x38
	mov     r1, #0x6c
	mov     r3, r2
	bl      Function_21d4fe4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r2, #0x18
	add     r0, #0x54
	mov     r1, #0x94
	mov     r3, r2
	bl      Function_21d4fe4
	ldr     r0, [r4, #0x8]
	bl      Function_21d3954
	cmp     r0, #0x1
	bne     branch_21e3cfa
	mov     r1, #0x0
	b       branch_21e3cfc

branch_21e3cfa: @ 21e3cfa :thumb
	mov     r1, #0x2
branch_21e3cfc: @ 21e3cfc :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r2, #0x18
	add     r0, #0x70
	mov     r1, #0xbc
	mov     r3, r2
	bl      Function_21d4fe4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r2, #0x18
	add     r0, #0x8c
	mov     r1, #0xe4
	mov     r3, r2
	bl      Function_21d4fe4
	mov     r0, r6
	bl      Function_21d4ee4
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, #0x6
	mov     r3, #0x1
	bl      Function_21d4f04
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21e3d48


.thumb
Function_21e3d48: @ 21e3d48 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x2c]
	ldr     r5, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21e3d58
	b       branch_21e3e66

branch_21e3d58: @ 21e3d58 :thumb
	ldr     r0, [pc, #0x10c] @ 0x21e3e68, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21e3d6c
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d4f20
branch_21e3d6c: @ 21e3d6c :thumb
	ldr     r0, [pc, #0xf8] @ 0x21e3e68, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_21e3d80
	mov     r1, #0x0
	ldr     r0, [r6, #0x14]
	sub     r2, r1, #0x1
	bl      Function_21d4f20
branch_21e3d80: @ 21e3d80 :thumb
	ldr     r0, [pc, #0xe4] @ 0x21e3e68, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21e3e66
	ldr     r0, [r6, #0x14]
	bl      Function_21d4f7c
	cmp     r0, #0x5
	bhi     branch_21e3e66
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r4, #0
	lsl     r6, r7, #0
	lsl     r0, r3, #1
	lsl     r4, r0, #2
	lsl     r0, r6, #2
	ldr     r2, [r5, #0x8]
	cmp     r2, #0x0
	beq     branch_21e3e66
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21e3c18
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0xac] @ 0x21e3e6c, (=#0x68b)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x21e3dc6


.incbin "./baserom/overlay/overlay_0021.bin", 0x13046, 0x21e3e66 - 0x21e3dc6


.thumb
branch_21e3e66: @ 21e3e66 :thumb
	pop     {r4-r6,pc}
@ 0x21e3e68

.word 0x21bf67c @ 0x21e3e68
.word 0x68b @ 0x21e3e6c


.incbin "./baserom/overlay/overlay_0021.bin", 0x130f0, 0x21e3e74 - 0x21e3e70


.thumb
Function_21e3e74: @ 21e3e74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Function_20181c4
	ldr     r0, [r4, #0x14]
	bl      Function_21d4efc
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21e3e8c


.thumb
Function_21e3e8c: @ 21e3e8c :thumb
	push    {r3,lr}
	ldr     r3, [r1, #0x4]
	mov     r2, #0x0
	str     r2, [r1, #0x30]
	ldr     r1, [r3, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e3ee8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r2, r2, #0
	lsl     r6, r3, #0
	lsl     r2, r5, #0
	lsl     r6, r6, #0
	ldr     r0, [r0, #0x14]
	mov     r1, #0x4
	bl      Function_21d4f20
	pop     {r3,pc}
@ 0x21e3eba


.incbin "./baserom/overlay/overlay_0021.bin", 0x1313a, 0x21e3ee8 - 0x21e3eba


.thumb
branch_21e3ee8: @ 21e3ee8 :thumb
	pop     {r3,pc}
@ 0x21e3eea


.align 2, 0
.thumb
Function_21e3eec: @ 21e3eec :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_21e3f26
	ldr     r0, [r4, #0x8]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21e3f26
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	bne     branch_21e3f18
	ldr     r0, [pc, #0x1c] @ 0x21e3f28, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_21e3f26
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	pop     {r4,pc}

branch_21e3f18: @ 21e3f18 :thumb
	ldr     r0, [pc, #0xc] @ 0x21e3f28, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_21e3f26
	mov     r0, #0x0
	str     r0, [r4, #0x30]
branch_21e3f26: @ 21e3f26 :thumb
	pop     {r4,pc}
@ 0x21e3f28

.word 0x21bf67c @ 0x21e3f28


.incbin "./baserom/overlay/overlay_0021.bin", 0x131ac, 0x21e3f48 - 0x21e3f2c


.thumb
Function_21e3f48: @ 21e3f48 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	ldr     r0, [r6, #0x8]
	mov     r4, r1
	bl      Function_21d3998
	cmp     r0, #0x0
	beq     branch_21e3f7e
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21e3f98
	ldr     r1, [r6, #0x30]
	cmp     r1, #0x0
	bne     branch_21e3f86
	cmp     r0, #0x0
	beq     branch_21e3f74
	ldr     r0, [r4, #0x14]
	ldr     r1, [r5, #0x0]
	bl      Function_21d25b8
branch_21e3f74: @ 21e3f74 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e3f88
	pop     {r4-r6,pc}

branch_21e3f7e: @ 21e3f7e :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21e3f98
branch_21e3f86: @ 21e3f86 :thumb
	pop     {r4-r6,pc}
@ 0x21e3f88


.thumb
Function_21e3f88: @ 21e3f88 :thumb
	ldr     r3, [pc, #0x8] @ 0x21e3f94, (=#Function_21d2544+1)
	mov     r2, r0
	ldr     r0, [r1, #0x14]
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x21e3f92

.align 2
.word Function_21d2544+1 @ 0x21e3f94



.thumb
Function_21e3f98: @ 21e3f98 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r5, r1
	bl      Function_21d25a0
	cmp     r5, r0
	beq     branch_21e3fbc
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_21d2584
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e3fbc: @ 21e3fbc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e3fc0


.thumb
Function_21e3fc0: @ 21e3fc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r2, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_20129d0
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r3-r5,pc}
@ 0x21e3fe4


.incbin "./baserom/overlay/overlay_0021.bin", 0x13264, 0x21e3ffc - 0x21e3fe4


.thumb
Function_21e3ffc: @ 21e3ffc :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21e4080
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21e40c8
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21e411c
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e403c, (=#0x21e4121)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e4040, (=#0x21e4169)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e4044, (=#0x21e4195)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e4048, (=#0x21e41a9)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e404c, (=#0x21e4269)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e4050, (=#0x21e4289)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e403c

.word Function_21e4120+1 @ =0x21e4121, 0x21e403c
.word Function_21e4168+1 @ =0x21e4169, 0x21e4040
.word Function_21e4194+1 @ =0x21e4195, 0x21e4044
.word Function_21e41a8+1 @ =0x21e41a9, 0x21e4048
.word Function_21e4268+1 @ =0x21e4269, 0x21e404c
.word Function_21e4288+1 @ =0x21e4289, 0x21e4050



.thumb
Function_21e4054: @ 21e4054 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e40f4
	ldr     r0, [r4, #0x4]
	bl      Function_21e4108
	pop     {r4,pc}
@ 0x21e4066


.incbin "./baserom/overlay/overlay_0021.bin", 0x132e6, 0x21e4080 - 0x21e4066


.thumb
Function_21e4080: @ 21e4080 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e4092
	bl      Function_2022974
branch_21e4092: @ 21e4092 :thumb
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
branch_21e4098: @ 21e4098 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e4098
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1430
	str     r0, [r4, #0xc]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e40c8


.thumb
Function_21e40c8: @ 21e40c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x14
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e40da
	bl      Function_2022974
branch_21e40da: @ 21e40da :thumb
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
branch_21e40e0: @ 21e40e0 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e40e0
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e40f4


.thumb
Function_21e40f4: @ 21e40f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e40fe
	bl      Function_2022974
branch_21e40fe: @ 21e40fe :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e4106


.align 2, 0
.thumb
Function_21e4108: @ 21e4108 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e4112
	bl      Function_2022974
branch_21e4112: @ 21e4112 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e411a


.align 2, 0
.thumb
Function_21e411c: @ 21e411c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e4120


.thumb
Function_21e4120: @ 21e4120 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x4]
	bl      Function_21d37bc
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e413e
	bl      Function_2022974
branch_21e413e: @ 21e413e :thumb
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21e4144: @ 21e4144 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e4144
	str     r4, [r5, #0x8]
	mov     r0, r7
	bl      Function_20050f8
	str     r0, [r4, #0x0]
	bl      Function_20050ec
	str     r0, [r4, #0x8]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e4898
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21e4168


.thumb
Function_21e4168: @ 21e4168 :thumb
	push    {r3-r5,lr}
	ldr     r2, [r0, #0xc]
	mov     r5, r1
	ldr     r4, [r0, #0x8]
	cmp     r2, #0x1
	bne     branch_21e4178
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e4178: @ 21e4178 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21e4182
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e4182: @ 21e4182 :thumb
	mov     r0, r4
	bl      Function_21e4898
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e4c68
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e4194


.thumb
Function_21e4194: @ 21e4194 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e41a6


.align 2, 0
.thumb
Function_21e41a8: @ 21e41a8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r3, [r3, #0x8]
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e4264
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r0, r4, #1
	lsl     r0, r3, #2
	mov     r1, #0x33
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #4
	bl      Function_2018144
	mov     r2, #0x33
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e4264
@ 0x21e41ec


.incbin "./baserom/overlay/overlay_0021.bin", 0x1346c, 0x21e4264 - 0x21e41ec


.thumb
branch_21e4264: @ 21e4264 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e4268


.thumb
Function_21e4268: @ 21e4268 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r3, #0x8]
	ldr     r5, [r1, #0x8]
	mov     r2, r0
	mov     r1, r2
	mov     r0, r5
	mov     r2, r4
	bl      Function_21e4a28
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e4b10
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e4286


.align 2, 0
.thumb
Function_21e4288: @ 21e4288 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e4324
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r2, r7, #0
	lsl     r6, r3, #1
	lsl     r4, r5, #1
	lsl     r4, r7, #1
	ldr     r1, [r3, #0xc]
	cmp     r1, #0x0
	bne     branch_21e42bc
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e43c8
	b       branch_21e42c4

branch_21e42bc: @ 21e42bc :thumb
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e448c
branch_21e42c4: @ 21e42c4 :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20049f4
	mov     r0, #0x7f
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_200560c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e4324
@ 0x21e42de


.incbin "./baserom/overlay/overlay_0021.bin", 0x1355e, 0x21e4324 - 0x21e42de


.thumb
branch_21e4324: @ 21e4324 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21e4328


.incbin "./baserom/overlay/overlay_0021.bin", 0x135a8, 0x21e4360 - 0x21e4328


.thumb
Function_21e4360: @ 21e4360 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r6, #0x1
branch_21e436a: @ 21e436a :thumb
	mov     r4, #0x0
	mov     r5, r7
branch_21e436e: @ 21e436e :thumb
	ldr     r0, [r5, #0x20]
	mov     r1, r6
	bl      Function_2021fe0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x9
	blt     branch_21e436e
	ldr     r0, [r7, #0x68]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [sp, #0x0]
	add     r7, #0x54
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	cmp     r0, #0x9
	blt     branch_21e436a
	pop     {r3-r7,pc}
@ 0x21e4394


.incbin "./baserom/overlay/overlay_0021.bin", 0x13614, 0x21e43c8 - 0x21e4394


.thumb
Function_21e43c8: @ 21e43c8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e4360
	ldr     r0, [r4, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e442e
	cmp     r6, #0x0
	beq     branch_21e440a
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x3
	mov     r2, r1
	sub     r2, #0x13
	bl      Function_21d23f8
	b       branch_21e442e

branch_21e440a: @ 21e440a :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x3
	mov     r3, r1
	sub     r3, #0x13
	bl      Function_21d23f8
branch_21e442e: @ 21e442e :thumb
	mov     r1, #0x5b
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	bl      Function_21d24fc
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e443e


.incbin "./baserom/overlay/overlay_0021.bin", 0x136be, 0x21e448c - 0x21e443e


.thumb
Function_21e448c: @ 21e448c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	mov     r4, r3
	bl      Function_21e4360
	cmp     r4, #0x0
	bne     branch_21e44b4
	ldr     r0, [r5, #0x8]
	mov     r1, #0x30
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r3, #0x40
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x4]
	mov     r0, r7
	bl      Function_21d2648
branch_21e44b4: @ 21e44b4 :thumb
	ldr     r0, [r6, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e4512
	cmp     r4, #0x0
	beq     branch_21e44ec
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r2, #0x2f
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r5, #0x10]
	sub     r2, #0x3f
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21e44ec: @ 21e44ec :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r3, #0x2f
	str     r3, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r5, #0x10]
	sub     r3, #0x3f
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d23f8
branch_21e4512: @ 21e4512 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e4516


.incbin "./baserom/overlay/overlay_0021.bin", 0x13796, 0x21e4898 - 0x21e4516


.thumb
Function_21e4898: @ 21e4898 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0xc]
	bl      Function_21e4d1c
	mov     r2, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1
	bl      Function_2005188
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21e48b0


.thumb
Function_21e48b0: @ 21e48b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r0, [sp, #0x44]
	ldr     r7, [sp, #0x3c]
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x48]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0x48]
	mov     r0, r2
	str     r3, [sp, #0xc]
	ldr     r5, [sp, #0x40]
	bl      Function_20050e0
	str     r0, [sp, #0x1c]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r3, [sp, #0x44]
	ldr     r0, [r0, #0x0]
	sub     r3, #0x20
	lsl     r2, r5, #16
	lsl     r3, r3, #16
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae78
	ldr     r1, [sp, #0x38]
	ldr     r0, [sp, #0xc]
	mov     r6, #0x0
	sub     r0, r1, r0
	cmp     r7, #0x0
	ble     branch_21e4954
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	asr     r0, r0, #31
	str     r0, [sp, #0x18]
	lsl     r0, r7, #12
	mov     r4, r6
	str     r0, [sp, #0x10]
branch_21e4908: @ 21e4908 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	asr     r3, r4, #31
	mov     r2, r4
	blx     Function_20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r0, r0, r2
	ldr     r2, [pc, #0x3c] @ 0x21e4958, (=#0x0)
	adc     r1, r2
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [sp, #0x10]
	blx     Function_20bcfd0
	asr     r1, r0, #12
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x1c]
	add     r1, r1, r0
	ldr     r0, [sp, #0x48]
	ldr     r3, [sp, #0x44]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldrb    r1, [r2, r1]
	ldr     r0, [r0, #0x0]
	mov     r2, r5
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_21e495c
	mov     r0, #0x1
	lsl     r0, r0, #12
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, r4, r0
	cmp     r6, r7
	blt     branch_21e4908
branch_21e4954: @ 21e4954 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21e4958

.word 0x0 @ 0x21e4958



.thumb
Function_21e495c: @ 21e495c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r6, r2
	mov     r7, r3
	ldr     r4, [sp, #0x20]
	cmp     r5, #0x7f
	bls     branch_21e4970
	sub     r5, #0xff
branch_21e4970: @ 21e4970 :thumb
	cmp     r5, #0x0
	beq     branch_21e499a
	lsl     r2, r5, #12
	asr     r0, r2, #31
	lsr     r1, r2, #15
	lsl     r0, r0, #17
	orr     r0, r1
	mov     r1, #0x2
	lsl     r3, r2, #17
	mov     r2, #0x0
	lsl     r1, r1, #10
	add     r3, r3, r1
	adc     r0, r2
	lsl     r1, r0, #20
	lsr     r0, r3, #12
	orr     r0, r1
	mov     r1, #0x7f
	lsl     r1, r1, #12
	blx     Function_20bcfd0
	asr     r5, r0, #12
branch_21e499a: @ 21e499a :thumb
	ldr     r1, [r4, #0x0]
	add     r0, r7, r5
	add     r1, r7, r1
	cmp     r0, r1
	ble     branch_21e49aa
	mov     r3, r1
	sub     r1, r0, r1
	b       branch_21e49ae

branch_21e49aa: @ 21e49aa :thumb
	mov     r3, r0
	sub     r1, r1, r0
branch_21e49ae: @ 21e49ae :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r0, r1, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r2, r6, #16
	lsl     r3, r3, #16
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae78
	str     r5, [r4, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21e49d0


.thumb
Function_21e49d0: @ 21e49d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r0, [sp, #0x20]
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	mov     r6, r2
	mov     r4, r3
	str     r0, [sp, #0x24]
	sub     r0, r6, r5
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	sub     r3, #0x20
	lsl     r2, r4, #16
	lsl     r3, r3, #16
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae78
	cmp     r5, r6
	bge     branch_21e4a24
branch_21e4a0a: @ 21e4a0a :thumb
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, r4
	bl      Function_21e495c
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r5, r6
	blt     branch_21e4a0a
branch_21e4a24: @ 21e4a24 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21e4a28


.thumb
Function_21e4a28: @ 21e4a28 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0xc9
	mov     r5, r0
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	mov     r4, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, r3]
	ldr     r0, [r5, r3]
	mov     r6, r2
	lsr     r2, r0, #31
	lsl     r1, r0, #24
	sub     r1, r1, r2
	mov     r0, #0x18
	ror     r1, r0
	add     r1, r2, r1
	str     r1, [r5, r3]
	ldr     r3, [r5, r3]
	sub     r3, #0x8
	bpl     branch_21e4a56
	add     r0, #0xe8
	add     r3, r3, r0
branch_21e4a56: @ 21e4a56 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r1, [r6, #0x4]
	ldr     r7, [r5, r0]
	cmp     r7, r1
	beq     branch_21e4a82
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x97
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [sp, #0xc]
	add     r0, r5, r0
	str     r0, [sp, #0x10]
	ldr     r2, [r6, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	bl      Function_21e48b0
	b       branch_21e4a96

branch_21e4a82: @ 21e4a82 :thumb
	mov     r1, #0x97
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [sp, #0x0]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_21e49d0
branch_21e4a96: @ 21e4a96 :thumb
	ldr     r0, [r4, #0x0]
	mov     r3, #0xc9
	lsl     r3, r3, #2
	ldr     r0, [r0, #0x0]
	ldr     r3, [r5, r3]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201a9a4
	mov     r0, #0xcb
	ldr     r1, [r6, #0x4]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e4abc


.incbin "./baserom/overlay/overlay_0021.bin", 0x13d3c, 0x21e4b10 - 0x21e4abc


.thumb
Function_21e4b10: @ 21e4b10 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	add     r5, #0x20
branch_21e4b1a: @ 21e4b1a :thumb
	add     r1, r6, r4
	ldrb    r1, [r1, #0xc]
	mov     r0, r5
	bl      Function_21e4b94
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x54
	cmp     r4, #0x9
	blt     branch_21e4b1a
	pop     {r4-r6,pc}
@ 0x21e4b2e


.incbin "./baserom/overlay/overlay_0021.bin", 0x13dae, 0x21e4b94 - 0x21e4b2e


.thumb
Function_21e4b94: @ 21e4b94 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, r1
	mov     r6, r0
	str     r4, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_21e4bb8
	mov     r5, r6
branch_21e4ba4: @ 21e4ba4 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r0, r4, #1
	str     r0, [r5, #0x4]
	add     r5, #0x8
	cmp     r4, r7
	blt     branch_21e4ba4
branch_21e4bb8: @ 21e4bb8 :thumb
	mov     r5, #0x0
	mov     r4, r6
	mov     r7, r5
branch_21e4bbe: @ 21e4bbe :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2021d34
	cmp     r0, #0x0
	beq     branch_21e4be0
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_21e4bd8
	str     r0, [r4, #0x4]
	add     r0, r5, #0x1
	str     r0, [sp, #0x0]
	b       branch_21e4be0

branch_21e4bd8: @ 21e4bd8 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_2021cac
branch_21e4be0: @ 21e4be0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x8
	cmp     r5, #0x9
	blt     branch_21e4bbe
	ldr     r1, [r6, #0x4c]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bgt     branch_21e4c10
	ldr     r0, [r6, #0x48]
	ldr     r1, [sp, #0x0]
	bl      Function_21e4c38
	mov     r0, #0x10
	str     r0, [r6, #0x50]
	ldr     r1, [r6, #0x4c]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bge     branch_21e4c0c
	ldr     r0, [r6, #0x48]
	mov     r1, #0x1
	bl      Function_2021cac
branch_21e4c0c: @ 21e4c0c :thumb
	ldr     r0, [sp, #0x0]
	str     r0, [r6, #0x4c]
branch_21e4c10: @ 21e4c10 :thumb
	ldr     r1, [r6, #0x4c]
	cmp     r1, #0x0
	ble     branch_21e4c2e
	ldr     r0, [r6, #0x50]
	cmp     r0, #0x0
	bge     branch_21e4c28
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r6, #0x4c]
	ldr     r0, [r6, #0x48]
	bl      Function_21e4c38
	pop     {r3-r7,pc}

branch_21e4c28: @ 21e4c28 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r6, #0x50]
	pop     {r3-r7,pc}

branch_21e4c2e: @ 21e4c2e :thumb
	ldr     r0, [r6, #0x48]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x21e4c38


.thumb
Function_21e4c38: @ 21e4c38 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	lsl     r0, r4, #3
	neg     r0, r0
	add     r0, #0x60
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21e4c68


.thumb
Function_21e4c68: @ 21e4c68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r1, #0xc]
	bl      Function_21e4d1c
	mov     r4, r0
	mov     r1, r5
	mov     r0, #0x0
	add     r1, #0xc
	strb    r0, [r5, #0xc]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	strb    r0, [r1, #0x4]
	strb    r0, [r1, #0x5]
	strb    r0, [r1, #0x6]
	strb    r0, [r1, #0x7]
	strb    r0, [r1, #0x8]
	bl      Function_200598c
	cmp     r0, #0x0
	beq     branch_21e4ca2
	ldr     r0, [r5, #0x0]
	add     r5, #0xc
	mov     r1, r5
	mov     r2, #0x9
	mov     r3, r4
	bl      Function_20051d0
branch_21e4ca2: @ 21e4ca2 :thumb
	pop     {r3-r5,pc}
@ 0x21e4ca4


.thumb
Function_21e4ca4: @ 21e4ca4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e4d24
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e4d64
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e4d8c
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e4dbc
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e4cec, (=#0x21e4dc1)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e4cf0, (=#0x21e4e01)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e4cf4, (=#0x21e4e85)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e4cf8, (=#0x21e4e99)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e4cfc, (=#0x21e4f21)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e4d00, (=#0x21e4f79)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e4cec

.word Function_21e4dc0+1 @ =0x21e4dc1, 0x21e4cec
.word Function_21e4e00+1 @ =0x21e4e01, 0x21e4cf0
.word Function_21e4e84+1 @ =0x21e4e85, 0x21e4cf4
.word Function_21e4e98+1 @ =0x21e4e99, 0x21e4cf8
.word Function_21e4f20+1 @ =0x21e4f21, 0x21e4cfc
.word Function_21e4f78+1 @ =0x21e4f79, 0x21e4d00



.thumb
Function_21e4d04: @ 21e4d04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e4d90
	ldr     r0, [r4, #0x4]
	bl      Function_21e4da4
	ldr     r0, [r4, #0x20]
	bl      Function_21e4db8
	pop     {r4,pc}
@ 0x21e4d1c


.thumb
Function_21e4d1c: @ 21e4d1c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x21e4d22


.align 2, 0
.thumb
Function_21e4d24: @ 21e4d24 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e4d36
	bl      Function_2022974
branch_21e4d36: @ 21e4d36 :thumb
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
branch_21e4d3c: @ 21e4d3c :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e4d3c
	mov     r0, r5
	bl      Function_21d13a0
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e4d62


.align 2, 0
.thumb
Function_21e4d64: @ 21e4d64 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e4d76
	bl      Function_2022974
branch_21e4d76: @ 21e4d76 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e4d8c


.thumb
Function_21e4d8c: @ 21e4d8c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e4d90


.thumb
Function_21e4d90: @ 21e4d90 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e4d9a
	bl      Function_2022974
branch_21e4d9a: @ 21e4d9a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e4da2


.align 2, 0
.thumb
Function_21e4da4: @ 21e4da4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e4dae
	bl      Function_2022974
branch_21e4dae: @ 21e4dae :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e4db6


.align 2, 0
.thumb
Function_21e4db8: @ 21e4db8 :thumb
	bx      lr
@ 0x21e4dba


.align 2, 0
.thumb
Function_21e4dbc: @ 21e4dbc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e4dc0


.thumb
Function_21e4dc0: @ 21e4dc0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x4]
	bl      Function_21d37bc
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x70
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x70
	mov     r4, r0
	blx     Function_20d5124
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e5128
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e51dc
	mov     r0, r7
	bl      Function_20050f8
	str     r0, [r4, #0x6c]
	str     r4, [r5, #0x8]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21e4e00


.thumb
Function_21e4e00: @ 21e4e00 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21e4e1c
	mov     r0, r4
	bl      Function_21e5e18
	mov     r0, r4
	bl      Function_21e5e28
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e4e1c: @ 21e4e1c :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21e4e26
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e4e26: @ 21e4e26 :thumb
	ldr     r0, [r4, #0x3c]
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e4e80
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_21e4e48
	ldr     r0, [r4, #0x64]
	cmp     r0, #0x0
	bne     branch_21e4e48
	mov     r0, r4
	bl      Function_21e5e18
branch_21e4e48: @ 21e4e48 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e51dc
	ldr     r0, [r5, #0x8]
	bl      Function_21e33bc
	cmp     r0, #0x0
	beq     branch_21e4e6c
	ldr     r0, [r5, #0x4]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21e4e6c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e5f5c
branch_21e4e6c: @ 21e4e6c :thumb
	ldr     r0, [r4, #0x64]
	cmp     r0, #0x0
	beq     branch_21e4e80
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21e4e80
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e5e48
branch_21e4e80: @ 21e4e80 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e4e84


.thumb
Function_21e4e84: @ 21e4e84 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      Function_21e5200
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e4e98


.thumb
Function_21e4e98: @ 21e4e98 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e4f1c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r6, r7, #0
	lsl     r4, r2, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x74
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x74
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e4f1c
@ 0x21e4ed6


.incbin "./baserom/overlay/overlay_0021.bin", 0x14156, 0x21e4f1c - 0x21e4ed6


.thumb
branch_21e4f1c: @ 21e4f1c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e4f20


.thumb
Function_21e4f20: @ 21e4f20 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r7, r0
	ldr     r0, [r6, #0x8]
	ldr     r4, [r3, #0x8]
	ldr     r5, [r1, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e4f74
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e59b4
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e5a04
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e5a2c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e5b50
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_21e5b6c
	mov     r0, r5
	bl      Function_21e5c4c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e5f38
	mov     r0, r7
	mov     r1, r6
	bl      Function_21e5fd0
branch_21e4f74: @ 21e4f74 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e4f78


.thumb
Function_21e4f78: @ 21e4f78 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e5000
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r0, r6, #0
	lsl     r6, r0, #1
	lsl     r0, r3, #1
	lsl     r6, r4, #1
	mov     r0, #0x79
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_21d25ac
	mov     r0, r5
	bl      Function_21e5ec0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21e507c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e5000
@ 0x21e4fc6


.incbin "./baserom/overlay/overlay_0021.bin", 0x14246, 0x21e5000 - 0x21e4fc6


.thumb
branch_21e5000: @ 21e5000 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e5004


.thumb
Function_21e5004: @ 21e5004 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x50]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	pop     {r4,pc}
@ 0x21e503e


.incbin "./baserom/overlay/overlay_0021.bin", 0x142be, 0x21e507c - 0x21e503e


.thumb
Function_21e507c: @ 21e507c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e5004
	ldr     r0, [r4, #0x8]
	bl      Function_21e33a4
	cmp     r0, #0x0
	beq     branch_21e50e8
	cmp     r6, #0x0
	beq     branch_21e50c2
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x19
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x3
	mov     r2, r1
	sub     r2, #0x13
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21e50c2: @ 21e50c2 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x19
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x3
	mov     r3, r1
	sub     r3, #0x13
	bl      Function_21d23f8
branch_21e50e8: @ 21e50e8 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e50ec


.incbin "./baserom/overlay/overlay_0021.bin", 0x1436c, 0x21e5128 - 0x21e50ec


.thumb
Function_21e5128: @ 21e5128 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_2018144
	str     r0, [r5, #0x10]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x35
	mov     r2, #0x51
	mov     r3, #0x16
	bl      Function_21d154c
	ldr     r1, [r5, #0x4]
	mov     r0, #0xfe
	strb    r0, [r1, #0x4]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x33
	strb    r2, [r1, #0x5]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x9d
	strb    r2, [r1, #0x6]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x20
	strb    r2, [r1, #0x7]
	ldr     r1, [r5, #0x4]
	mov     r2, #0x9b
	strb    r0, [r1, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xb3
	strb    r1, [r0, #0x9]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x7b
	strb    r1, [r0, #0xa]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x48
	strb    r1, [r0, #0xb]
	mov     r0, #0xcc
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6b
	mov     r3, #0x9c
	bl      Function_21d154c
	mov     r0, #0xf6
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x96
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0xb6
	mov     r3, #0xd6
	bl      Function_21d154c
	str     r6, [r5, #0x8]
	str     r5, [r5, #0xc]
	str     r4, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x20] @ 0x21e51d4, (=#Function_21e5228+1)
	mov     r1, #0x3
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	str     r4, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0x14] @ 0x21e51d8, (=#Function_21e5268+1)
	mov     r1, #0x2
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x14]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21e51d2

.align 2
.word Function_21e5228+1 @ 0x21e51d4
.word Function_21e5268+1 @ 0x21e51d8



.thumb
Function_21e51dc: @ 21e51dc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x64
branch_21e51e6: @ 21e51e6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x18]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x2
	blt     branch_21e51e6
	ldr     r0, [r4, #0x0]
	bl      Function_202404c
	ldr     r0, [r4, #0x14]
	bl      Function_202404c
	pop     {r4,pc}
@ 0x21e51fe


.align 2, 0
.thumb
Function_21e5200: @ 21e5200 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x14]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x21e5226


.align 2, 0
.thumb
Function_21e5228: @ 21e5228 :thumb
	push    {r3,lr}
	ldr     r3, [r2, #0x0]
	ldr     r2, [r2, #0x4]
	cmp     r1, #0x3
	bhi     branch_21e5264
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r6, r1, #0
	lsl     r6, r3, #0
	mov     r1, r3
	bl      Function_21e530c
	pop     {r3,pc}
@ 0x21e524e


.incbin "./baserom/overlay/overlay_0021.bin", 0x144ce, 0x21e5264 - 0x21e524e


.thumb
branch_21e5264: @ 21e5264 :thumb
	pop     {r3,pc}
@ 0x21e5266


.align 2, 0
.thumb
Function_21e5268: @ 21e5268 :thumb
	push    {r3-r7,lr}
	ldr     r5, [r2, #0x0]
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	ldr     r4, [r2, #0x4]
	mov     r7, r1
	bl      Function_21d37bc
	str     r0, [sp, #0x0]
	lsl     r0, r6, #2
	add     r0, r4, r0
	str     r7, [r0, #0x18]
	cmp     r7, #0x3
	bhi     branch_21e5304
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r6, #1
	lsl     r4, r2, #0
	lsl     r2, r6, #1
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_21e33b4
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	pop     {r3-r7,pc}
@ 0x21e52a6


.incbin "./baserom/overlay/overlay_0021.bin", 0x14526, 0x21e5304 - 0x21e52a6


.thumb
branch_21e5304: @ 21e5304 :thumb
	pop     {r3-r7,pc}
@ 0x21e5306


.incbin "./baserom/overlay/overlay_0021.bin", 0x14586, 0x21e530c - 0x21e5306


.thumb
Function_21e530c: @ 21e530c :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_21e531e
	cmp     r0, #0x1
	beq     branch_21e5336
	cmp     r0, #0x2
	beq     branch_21e5352
	pop     {r4,pc}

branch_21e531e: @ 21e531e :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x1
	bne     branch_21e532a
	mov     r0, r4
	bl      Function_21e5e18
branch_21e532a: @ 21e532a :thumb
	ldr     r0, [pc, #0x4c] @ 0x21e5378, (=#0x21bf6bc)
	ldrh    r0, [r0, #0x1c]
	str     r0, [r4, #0x38]
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	pop     {r4,pc}

branch_21e5336: @ 21e5336 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x1
	bne     branch_21e5342
	mov     r0, r4
	bl      Function_21e5e18
branch_21e5342: @ 21e5342 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r0, [pc, #0x30] @ 0x21e5378, (=#0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x54]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0x58]
	pop     {r4,pc}

branch_21e5352: @ 21e5352 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21e5370
	ldr     r0, [r4, #0x10]
	bl      Function_2022734
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x10]
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2022734
	ldr     r1, [r4, #0x20]
	orr     r0, r1
	str     r0, [r4, #0x20]
	pop     {r4,pc}

branch_21e5370: @ 21e5370 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	pop     {r4,pc}
@ 0x21e5376

.align 2
.word 0x21bf6bc @ 0x21e5378


.incbin "./baserom/overlay/overlay_0021.bin", 0x145fc, 0x21e59b4 - 0x21e537c


.thumb
Function_21e59b4: @ 21e59b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x40]
	ldr     r0, [r4, #0x34]
	cmp     r1, r0
	beq     branch_21e5a00
	ldr     r0, [r5, #0x3c]
	bl      Function_2021e74
	mov     r6, r0
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x3c]
	bne     branch_21e59e8
	mov     r1, #0x4
	bl      Function_2021d6c
	mov     r1, #0x8
	sub     r1, r1, r6
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x3c]
	lsr     r1, r1, #16
	bl      Function_2021e50
	b       branch_21e59fc

branch_21e59e8: @ 21e59e8 :thumb
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r1, #0x8
	sub     r1, r1, r6
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x3c]
	lsr     r1, r1, #16
	bl      Function_2021e50
branch_21e59fc: @ 21e59fc :thumb
	ldr     r0, [r4, #0x34]
	str     r0, [r5, #0x40]
branch_21e5a00: @ 21e5a00 :thumb
	pop     {r4-r6,pc}
@ 0x21e5a02


.align 2, 0
.thumb
Function_21e5a04: @ 21e5a04 :thumb
	push    {r4,lr}
	mov     r2, r1
	mov     r4, r0
	ldr     r0, [r2, #0x64]
	ldr     r3, [r2, #0x18]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x4]
	bne     branch_21e5a20
	add     r4, #0x8
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21e5cf8
	pop     {r4,pc}

branch_21e5a20: @ 21e5a20 :thumb
	add     r4, #0x8
	ldr     r2, [r2, #0x2c]
	mov     r1, r4
	bl      Function_21e5c80
	pop     {r4,pc}
@ 0x21e5a2c


.thumb
Function_21e5a2c: @ 21e5a2c :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [r2, #0x20]
	mov     r3, r1
	add     r2, #0x24
	mov     r1, r2
	ldr     r2, [r3, #0x64]
	ldr     r3, [r3, #0x1c]
	bl      Function_21e5c80
	pop     {r3,pc}
@ 0x21e5a42


.incbin "./baserom/overlay/overlay_0021.bin", 0x14cc2, 0x21e5b50 - 0x21e5a42


.thumb
Function_21e5b50: @ 21e5b50 :thumb
	push    {r4,lr}
	ldr     r1, [r1, #0x5c]
	mov     r4, r0
	mov     r0, #0xe
	bl      Function_201d580
	mov     r1, r0
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #16
	bl      Function_2021c94
	pop     {r4,pc}
@ 0x21e5b6a


.align 2, 0
.thumb
Function_21e5b6c: @ 21e5b6c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [r2, #0x6c]
	mov     r5, r0
	ldr     r2, [r2, #0x3c]
	mov     r0, #0x1
	bl      Function_2005188
	mov     r6, r0
	bne     branch_21e5b84
	mov     r0, #0x0
	str     r0, [r5, #0x48]
branch_21e5b84: @ 21e5b84 :thumb
	mov     r0, r5
	ldr     r1, [r5, #0x48]
	add     r0, #0x4c
	sub     r1, r6, r1
	lsl     r1, r1, #4
	ldrh    r0, [r0, #0x0]
	neg     r1, r1
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x4c
	ldrh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	mov     r1, #0xb6
	blx     Division
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	lsl     r3, r3, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_201c660
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0x9
	mov     r3, #0x83
	bl      Function_201c718
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	ldr     r0, [r0, #0x0]
	mov     r2, #0xc
	mov     r3, #0x63
	bl      Function_201c718
	str     r6, [r5, #0x48]
	pop     {r4-r6,pc}
@ 0x21e5be4


.incbin "./baserom/overlay/overlay_0021.bin", 0x14e64, 0x21e5c4c - 0x21e5be4


.thumb
Function_21e5c4c: @ 21e5c4c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x50]
	bne     branch_21e5c6c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_20129d0
	ldr     r0, [r4, #0x54]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r4,pc}

branch_21e5c6c: @ 21e5c6c :thumb
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_20129d0
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_20129d0
	pop     {r4,pc}
@ 0x21e5c80


.thumb
Function_21e5c80: @ 21e5c80 :thumb
	push    {r3-r7,lr}
	mov     r4, r3
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	cmp     r4, #0x3
	bne     branch_21e5c90
	mov     r4, #0x1
branch_21e5c90: @ 21e5c90 :thumb
	mov     r0, r6
	bl      Function_2021e74
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	cmp     r0, r7
	beq     branch_21e5caa
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_21e5d90
	str     r7, [r5, #0xc]
branch_21e5caa: @ 21e5caa :thumb
	cmp     r4, #0x2
	bgt     branch_21e5cbe
	cmp     r4, #0x0
	blt     branch_21e5cf4
	beq     branch_21e5cf4
	cmp     r4, #0x1
	beq     branch_21e5ce0
	cmp     r4, #0x2
	beq     branch_21e5cc4
	pop     {r3-r7,pc}

branch_21e5cbe: @ 21e5cbe :thumb
	cmp     r4, #0x64
	beq     branch_21e5ce0
	pop     {r3-r7,pc}

branch_21e5cc4: @ 21e5cc4 :thumb
	ldr     r1, [r5, #0x14]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	ble     branch_21e5cf4
	lsl     r1, r1, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2021e50
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2021ce4
	pop     {r3-r7,pc}

branch_21e5ce0: @ 21e5ce0 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_21e5d90
	mov     r1, #0x2
	mov     r0, r6
	lsl     r1, r1, #12
	bl      Function_2021ce4
branch_21e5cf4: @ 21e5cf4 :thumb
	pop     {r3-r7,pc}
@ 0x21e5cf6


.align 2, 0
.thumb
Function_21e5cf8: @ 21e5cf8 :thumb
	push    {r3-r7,lr}
	mov     r4, r3
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	cmp     r4, #0x1
	bne     branch_21e5d08
	mov     r4, #0x3
branch_21e5d08: @ 21e5d08 :thumb
	mov     r0, r6
	bl      Function_2021e74
	ldr     r0, [r5, #0xc]
	cmp     r0, r7
	beq     branch_21e5d20
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_21e5d90
	str     r7, [r5, #0xc]
branch_21e5d20: @ 21e5d20 :thumb
	cmp     r4, #0x3
	bgt     branch_21e5d34
	cmp     r4, #0x0
	blt     branch_21e5d8e
	beq     branch_21e5d3a
	cmp     r4, #0x2
	beq     branch_21e5d64
	cmp     r4, #0x3
	beq     branch_21e5d7a
	pop     {r3-r7,pc}

branch_21e5d34: @ 21e5d34 :thumb
	cmp     r4, #0x64
	beq     branch_21e5d7a
	pop     {r3-r7,pc}

branch_21e5d3a: @ 21e5d3a :thumb
	cmp     r7, #0x1
	bne     branch_21e5d4a
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_21e5d90
	b       branch_21e5d54

branch_21e5d4a: @ 21e5d4a :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21e5d90
branch_21e5d54: @ 21e5d54 :thumb
	ldr     r1, [r5, #0x14]
	mov     r0, r6
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2021e50
	pop     {r3-r7,pc}

branch_21e5d64: @ 21e5d64 :thumb
	ldr     r1, [r5, #0x14]
	mov     r0, r6
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2021e50
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2021ce4
	pop     {r3-r7,pc}

branch_21e5d7a: @ 21e5d7a :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_21e5d90
	mov     r1, #0x2
	mov     r0, r6
	lsl     r1, r1, #12
	bl      Function_2021ce4
branch_21e5d8e: @ 21e5d8e :thumb
	pop     {r3-r7,pc}
@ 0x21e5d90


.thumb
Function_21e5d90: @ 21e5d90 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	bl      Function_2021e74
	mov     r6, r0
	cmp     r7, #0x1
	ldr     r1, [r4, #0x8]
	bne     branch_21e5dc6
	ldr     r0, [r4, #0x0]
	cmp     r1, r0
	bne     branch_21e5de6
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_2021d6c
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	sub     r1, r1, r6
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2021e50
	pop     {r3-r7,pc}

branch_21e5dc6: @ 21e5dc6 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	bne     branch_21e5de6
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_2021d6c
	ldr     r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	sub     r1, r1, r6
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2021e50
branch_21e5de6: @ 21e5de6 :thumb
	pop     {r3-r7,pc}
@ 0x21e5de8


.thumb
Function_21e5de8: @ 21e5de8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x20] @ 0x21e5e14, (=#0x1ff)
	lsl     r1, r2, #16
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r2, r3
	mov     r0, #0xd
	lsr     r1, r1, #16
	mov     r3, #0x7f
	bl      Function_20059d0
	mov     r0, r4
	bl      Function_21e5f00
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21e5e12

.align 2
.word 0x1ff @ 0x21e5e14



.thumb
Function_21e5e18: @ 21e5e18 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	bl      Function_200592c
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21e5e28


.thumb
Function_21e5e28: @ 21e5e28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x1
	bne     branch_21e5e38
	mov     r0, #0x0
	bl      Function_2004eec
branch_21e5e38: @ 21e5e38 :thumb
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x2
	bne     branch_21e5e42
	bl      Function_2004f44
branch_21e5e42: @ 21e5e42 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	pop     {r4,pc}
@ 0x21e5e48


.thumb
Function_21e5e48: @ 21e5e48 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d37bc
	mov     r6, r0
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_21e5e74
	ldr     r0, [r5, #0x68]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x68]
	bne     branch_21e5e74
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21e5de8
	mov     r0, #0xa
	str     r0, [r5, #0x68]
branch_21e5e74: @ 21e5e74 :thumb
	pop     {r4-r6,pc}
@ 0x21e5e76


.incbin "./baserom/overlay/overlay_0021.bin", 0x150f6, 0x21e5eac - 0x21e5e76


.thumb
Function_21e5eac: @ 21e5eac :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r2, [r2, #0x6c]
	mov     r0, #0x1f
	ldr     r2, [r2, #0xc]
	mov     r1, #0xe0
	mov     r3, #0x20
	bl      Function_201dc68
	pop     {r3,pc}
@ 0x21e5ec0


.thumb
Function_21e5ec0: @ 21e5ec0 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r2, [r2, #0x6c]
	mov     r0, #0x1f
	ldr     r2, [r2, #0xc]
	mov     r1, #0xe0
	add     r2, #0x20
	mov     r3, #0x20
	bl      Function_201dc68
	pop     {r3,pc}
@ 0x21e5ed6


.incbin "./baserom/overlay/overlay_0021.bin", 0x15156, 0x21e5f00 - 0x21e5ed6


.thumb
Function_21e5f00: @ 21e5f00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21e5f20
	ldr     r0, [r4, #0x3c]
	bl      Function_21e5ff4
	ldr     r1, [pc, #0x10] @ 0x21e5f24, (=#0xffff)
	ldr     r2, [r4, #0x40]
	mov     r0, #0x1
	bl      Function_2004f94
	ldr     r0, [r4, #0x44]
	bl      Function_21e5f28
branch_21e5f20: @ 21e5f20 :thumb
	pop     {r4,pc}
@ 0x21e5f22

.align 2
.word 0xffff @ 0x21e5f24



.thumb
Function_21e5f28: @ 21e5f28 :thumb
	ldr     r3, [pc, #0x8] @ 0x21e5f34, (=#Function_2004a54+1)
	mov     r1, r0
	mov     r0, #0x8
	mov     r2, #0x0
	bx      r3
@ 0x21e5f32

.align 2
.word Function_2004a54+1 @ 0x21e5f34



.thumb
Function_21e5f38: @ 21e5f38 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r2, [r4, #0x48]
	ldr     r1, [r5, #0x70]
	cmp     r2, r1
	beq     branch_21e5f58
	cmp     r2, #0x1
	bne     branch_21e5f50
	bl      Function_21e5eac
	b       branch_21e5f54

branch_21e5f50: @ 21e5f50 :thumb
	bl      Function_21e5ec0
branch_21e5f54: @ 21e5f54 :thumb
	ldr     r0, [r4, #0x48]
	str     r0, [r5, #0x70]
branch_21e5f58: @ 21e5f58 :thumb
	pop     {r3-r5,pc}
@ 0x21e5f5a


.align 2, 0
.thumb
Function_21e5f5c: @ 21e5f5c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d37bc
	mov     r6, r0
	ldr     r0, [pc, #0x60] @ 0x21e5fcc, (=#0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r0, r1
	beq     branch_21e5fb0
	str     r1, [r5, #0x28]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x64]
	cmp     r1, #0x0
	bne     branch_21e5f96
	ldr     r1, [r5, #0x2c]
	cmp     r1, #0x1
	bne     branch_21e5f8a
	bl      Function_200592c
branch_21e5f8a: @ 21e5f8a :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21e5de8
	pop     {r4-r6,pc}

branch_21e5f96: @ 21e5f96 :thumb
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	bne     branch_21e5fa8
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21e5de8
	pop     {r4-r6,pc}

branch_21e5fa8: @ 21e5fa8 :thumb
	mov     r0, r5
	bl      Function_21e5e18
	pop     {r4-r6,pc}

branch_21e5fb0: @ 21e5fb0 :thumb
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x1
	bne     branch_21e5fbe
	mov     r0, #0x2
	str     r0, [r5, #0x28]
	str     r0, [r5, #0x18]
	pop     {r4-r6,pc}

branch_21e5fbe: @ 21e5fbe :thumb
	cmp     r0, #0x2
	bne     branch_21e5fc8
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	str     r1, [r5, #0x18]
branch_21e5fc8: @ 21e5fc8 :thumb
	pop     {r4-r6,pc}
@ 0x21e5fca

.align 2
.word 0x21bf67c @ 0x21e5fcc



.thumb
Function_21e5fd0: @ 21e5fd0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [r0, #0x0]
	ldr     r0, [r1, #0x8]
	bl      Function_21e33bc
	cmp     r0, #0x1
	bne     branch_21e5fee
	mov     r3, #0x18
	mov     r0, r4
	mov     r1, #0xb4
	mov     r2, #0x83
	str     r3, [sp, #0x0]
	bl      Function_21d2574
branch_21e5fee: @ 21e5fee :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e5ff2


.align 2, 0
.thumb
Function_21e5ff4: @ 21e5ff4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [pc, #0x14] @ 0x21e6010, (=#0xffff)
	mov     r0, #0x1
	mov     r2, r4
	bl      Function_2004f68
	add     r4, #0x14
	ldr     r1, [pc, #0x8] @ 0x21e6010, (=#0xffff)
	mov     r0, #0x8
	mov     r2, r4
	bl      Function_2004f68
	pop     {r4,pc}
@ 0x21e6010

.word 0xffff @ 0x21e6010



.thumb
Function_21e6014: @ 21e6014 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e608c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e60d8
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e6100
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e6130
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e605c, (=#0x21e6135)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e6060, (=#0x21e6159)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e6064, (=#0x21e6169)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e6068, (=#0x21e617d)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e606c, (=#0x21e6201)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e6070, (=#0x21e6205)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e605c

.word Function_21e6134+1 @ =0x21e6135, 0x21e605c
.word Function_21e6158+1 @ =0x21e6159, 0x21e6060
.word Function_21e6168+1 @ =0x21e6169, 0x21e6064
.word Function_21e617c+1 @ =0x21e617d, 0x21e6068
.word Function_21e6200+1 @ =0x21e6201, 0x21e606c
.word Function_21e6204+1 @ =0x21e6205, 0x21e6070



.thumb
Function_21e6074: @ 21e6074 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e6104
	ldr     r0, [r4, #0x4]
	bl      Function_21e6118
	ldr     r0, [r4, #0x20]
	bl      Function_21e612c
	pop     {r4,pc}
@ 0x21e608c


.thumb
Function_21e608c: @ 21e608c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e609e
	bl      Function_2022974
branch_21e609e: @ 21e609e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	mov     r0, r5
	bl      Function_21d138c
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e60d6


.align 2, 0
.thumb
Function_21e60d8: @ 21e60d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e60ea
	bl      Function_2022974
branch_21e60ea: @ 21e60ea :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e6100


.thumb
Function_21e6100: @ 21e6100 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e6104


.thumb
Function_21e6104: @ 21e6104 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e610e
	bl      Function_2022974
branch_21e610e: @ 21e610e :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e6116


.align 2, 0
.thumb
Function_21e6118: @ 21e6118 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e6122
	bl      Function_2022974
branch_21e6122: @ 21e6122 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e612a


.align 2, 0
.thumb
Function_21e612c: @ 21e612c :thumb
	bx      lr
@ 0x21e612e


.align 2, 0
.thumb
Function_21e6130: @ 21e6130 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e6134


.thumb
Function_21e6134: @ 21e6134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e6148
	bl      Function_2022974
branch_21e6148: @ 21e6148 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	str     r4, [r5, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21e6158


.thumb
Function_21e6158: @ 21e6158 :thumb
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x1
	bne     branch_21e6162
	mov     r0, #0x1
	bx      lr

branch_21e6162: @ 21e6162 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e6166


.align 2, 0
.thumb
Function_21e6168: @ 21e6168 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e617a


.align 2, 0
.thumb
Function_21e617c: @ 21e617c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r3, [r3, #0x8]
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e61fa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r4, r0, #1
	lsl     r2, r3, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x14
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r2, #0x14
	mov     r1, #0x0
branch_21e61b0: @ 21e61b0 :thumb
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21e61b0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e61fa
@ 0x21e61c0


.incbin "./baserom/overlay/overlay_0021.bin", 0x15440, 0x21e61fa - 0x21e61c0


.thumb
branch_21e61fa: @ 21e61fa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e61fe


.align 2, 0
.thumb
Function_21e6200: @ 21e6200 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e6204


.thumb
Function_21e6204: @ 21e6204 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e626e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r3, #0
	lsl     r4, r5, #0
	lsl     r2, r7, #0
	lsl     r2, r1, #1
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e628c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e626e
@ 0x21e6238


.incbin "./baserom/overlay/overlay_0021.bin", 0x154b8, 0x21e626e - 0x21e6238


.thumb
branch_21e626e: @ 21e626e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21e6272


.align 2, 0
.thumb
Function_21e6274: @ 21e6274 :thumb
	ldr     r3, [pc, #0x4] @ 0x21e627c, (=Function_2021fe0+1)
	ldr     r0, [r0, #0x10]
	mov     r1, #0x1
	bx      r3
@ 0x21e627c

.word Function_2021fe0+1 @ 0x21e627c


.incbin "./baserom/overlay/overlay_0021.bin", 0x15500, 0x21e628c - 0x21e6280


.thumb
Function_21e628c: @ 21e628c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e6274
	ldr     r0, [r4, #0x8]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e62f4
	cmp     r6, #0x0
	beq     branch_21e62d0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21e62d0: @ 21e62d0 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e62f4: @ 21e62f4 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e62f8


.incbin "./baserom/overlay/overlay_0021.bin", 0x15578, 0x21e68f4 - 0x21e62f8


.thumb
Function_21e68f4: @ 21e68f4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e696c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e69b0
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e69d8
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e6a68
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e693c, (=#0x21e6a6d)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e6940, (=#0x21e6ab9)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e6944, (=#0x21e6b0d)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e6948, (=#0x21e6b21)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e694c, (=#0x21e6ba9)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e6950, (=#0x21e6bd9)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e693c

.word Function_21e6a6c+1 @ =0x21e6a6d, 0x21e693c
.word Function_21e6ab8+1 @ =0x21e6ab9, 0x21e6940
.word Function_21e6b0c+1 @ =0x21e6b0d, 0x21e6944
.word Function_21e6b20+1 @ =0x21e6b21, 0x21e6948
.word Function_21e6ba8+1 @ =0x21e6ba9, 0x21e694c
.word Function_21e6bd8+1 @ =0x21e6bd9, 0x21e6950



.thumb
Function_21e6954: @ 21e6954 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e6a20
	ldr     r0, [r4, #0x4]
	bl      Function_21e6a34
	ldr     r0, [r4, #0x20]
	bl      Function_21e6a48
	pop     {r4,pc}
@ 0x21e696c


.thumb
Function_21e696c: @ 21e696c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e697e
	bl      Function_2022974
branch_21e697e: @ 21e697e :thumb
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
branch_21e6984: @ 21e6984 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e6984
	mov     r0, r5
	bl      Function_21d13a0
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x8]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e69ae


.align 2, 0
.thumb
Function_21e69b0: @ 21e69b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e69c2
	bl      Function_2022974
branch_21e69c2: @ 21e69c2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e69d8


.thumb
Function_21e69d8: @ 21e69d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_21e6a68
	mov     r7, r0
	mov     r1, #0x14
	mul     r7, r1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e69f8
	bl      Function_2022974
branch_21e69f8: @ 21e69f8 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	blx     Function_20d5124
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_21d49e4
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x14
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_21d4a3c
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21e6a20


.thumb
Function_21e6a20: @ 21e6a20 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e6a2a
	bl      Function_2022974
branch_21e6a2a: @ 21e6a2a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e6a32


.align 2, 0
.thumb
Function_21e6a34: @ 21e6a34 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e6a3e
	bl      Function_2022974
branch_21e6a3e: @ 21e6a3e :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e6a46


.align 2, 0
.thumb
Function_21e6a48: @ 21e6a48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e6a52
	bl      Function_2022974
branch_21e6a52: @ 21e6a52 :thumb
	mov     r0, r4
	bl      Function_21d4660
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d4660
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e6a68


.thumb
Function_21e6a68: @ 21e6a68 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x21e6a6c


.thumb
Function_21e6a6c: @ 21e6a6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x18
	bl      Function_2018144
	mov     r6, r0
	mov     r2, r6
	mov     r1, #0x18
	mov     r0, #0x0
branch_21e6a82: @ 21e6a82 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e6a82
	mov     r1, #0x0
	mov     r2, r6
	mov     r0, #0x4
branch_21e6a90: @ 21e6a90 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x10]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x2
	blt     branch_21e6a90
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e6d58
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e6dbc
	str     r6, [r5, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21e6ab6


.align 2, 0
.thumb
Function_21e6ab8: @ 21e6ab8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21e6ac8
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e6ac8: @ 21e6ac8 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21e6ad2
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e6ad2: @ 21e6ad2 :thumb
	ldr     r0, [r5, #0xc]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e6b06
	mov     r0, r4
	bl      Function_21e6dac
	ldr     r0, [r5, #0xc]
	bl      Function_21e33bc
	cmp     r0, #0x0
	beq     branch_21e6afe
	ldr     r0, [r5, #0x8]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21e6afe
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e72e8
branch_21e6afe: @ 21e6afe :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e6dbc
branch_21e6b06: @ 21e6b06 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e6b0a


.align 2, 0
.thumb
Function_21e6b0c: @ 21e6b0c :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      Function_21e6dec
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e6b20


.thumb
Function_21e6b20: @ 21e6b20 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e6ba4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r6, r7, #0
	lsl     r4, r2, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x40
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e6ba4
@ 0x21e6b5e


.incbin "./baserom/overlay/overlay_0021.bin", 0x15dde, 0x21e6ba4 - 0x21e6b5e


.thumb
branch_21e6ba4: @ 21e6ba4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e6ba8


.thumb
Function_21e6ba8: @ 21e6ba8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r3, #0x8]
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [r4, #0xc]
	ldr     r7, [r5, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e6bd4
	ldr     r2, [sp, #0x0]
	ldr     r3, [r5, #0x4]
	mov     r0, r7
	mov     r1, r6
	bl      Function_21e728c
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e732c
branch_21e6bd4: @ 21e6bd4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e6bd8


.thumb
Function_21e6bd8: @ 21e6bd8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e6c5a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r5, #0
	lsl     r0, r0, #1
	lsl     r2, r2, #1
	lsl     r0, r4, #1
	mov     r0, #0x79
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_21d25ac
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21e6cb0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e6c5a
@ 0x21e6c20


.incbin "./baserom/overlay/overlay_0021.bin", 0x15ea0, 0x21e6c5a - 0x21e6c20


.thumb
branch_21e6c5a: @ 21e6c5a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e6c5e


.align 2, 0
.thumb
Function_21e6c60: @ 21e6c60 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x1
	mov     r5, r0
	mov     r4, #0x0
	mov     r7, r6
branch_21e6c6a: @ 21e6c6a :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2021fe0
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21e6c6a
	pop     {r3-r7,pc}
@ 0x21e6c86


.incbin "./baserom/overlay/overlay_0021.bin", 0x15f06, 0x21e6cb0 - 0x21e6c86


.thumb
Function_21e6cb0: @ 21e6cb0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e6c60
	ldr     r0, [r4, #0xc]
	bl      Function_21e33a4
	cmp     r0, #0x0
	beq     branch_21e6d18
	cmp     r6, #0x0
	beq     branch_21e6cf4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r2, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21e6cf4: @ 21e6cf4 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r3, r0
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e6d18: @ 21e6d18 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e6d1c


.incbin "./baserom/overlay/overlay_0021.bin", 0x15f9c, 0x21e6d58 - 0x21e6d1c


.thumb
Function_21e6d58: @ 21e6d58 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x40
	mov     r2, #0xb0
	mov     r3, #0x8
	bl      Function_21d154c
	mov     r0, #0xf8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x40
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0xb0
	mov     r3, #0x80
	bl      Function_21d154c
	str     r4, [r5, #0x8]
	str     r5, [r5, #0xc]
	str     r6, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x21e6da8, (=#Function_21e6e04+1)
	mov     r1, #0x2
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21e6da8

.word Function_21e6e04+1 @ 0x21e6da8



.thumb
Function_21e6dac: @ 21e6dac :thumb
	mov     r2, #0x0
	mov     r1, #0x3
branch_21e6db0: @ 21e6db0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0x10]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x2
	blt     branch_21e6db0
	bx      lr
@ 0x21e6dbc


.thumb
Function_21e6dbc: @ 21e6dbc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	bl      Function_202404c
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_21e6dd4
	cmp     r0, #0x1
	beq     branch_21e6de0
	pop     {r3-r5,pc}

branch_21e6dd4: @ 21e6dd4 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x2
	beq     branch_21e6dea
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	pop     {r3-r5,pc}

branch_21e6de0: @ 21e6de0 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x2
	beq     branch_21e6dea
	mov     r0, #0x1
	str     r0, [r4, #0x14]
branch_21e6dea: @ 21e6dea :thumb
	pop     {r3-r5,pc}
@ 0x21e6dec


.thumb
Function_21e6dec: @ 21e6dec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21e6e02


.align 2, 0
.thumb
Function_21e6e04: @ 21e6e04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r2, #0x0]
	ldr     r2, [r2, #0x4]
	lsl     r0, r5, #2
	add     r0, r2, r0
	str     r1, [r0, #0x10]
	cmp     r1, #0x2
	bne     branch_21e6e5e
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_21e33b4
	cmp     r5, #0x0
	beq     branch_21e6e28
	cmp     r5, #0x1
	beq     branch_21e6e44
	pop     {r3-r5,pc}

branch_21e6e28: @ 21e6e28 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21e6e5e
	ldr     r0, [pc, #0x30] @ 0x21e6e60, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	orr     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3-r5,pc}

branch_21e6e44: @ 21e6e44 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	beq     branch_21e6e5e
	ldr     r0, [pc, #0x14] @ 0x21e6e60, (=#0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r2, #0x0]
	orr     r0, r1
	str     r0, [r2, #0x0]
branch_21e6e5e: @ 21e6e5e :thumb
	pop     {r3-r5,pc}
@ 0x21e6e60

.word 0x5dd @ 0x21e6e60


.incbin "./baserom/overlay/overlay_0021.bin", 0x160e4, 0x21e71d0 - 0x21e6e64


.thumb
Function_21e71d0: @ 21e71d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r1
	mov     r1, r3
	str     r2, [sp, #0xc]
	ldr     r4, [sp, #0x30]
	ldr     r6, [sp, #0x40]
	mov     r5, #0x0
	bl      Function_21d144c
	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x38]
	bl      Function_21e727c
	ldr     r0, [sp, #0x8]
	bl      Function_2021e74
	cmp     r0, #0x3
	bhi     branch_21e7242
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r4, r4, #0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21e7242
	mov     r0, #0x0
	mov     r5, #0x1
	mov     r7, #0x9
	str     r0, [r4, #0x0]
	b       branch_21e7242
@ 0x21e7226


.incbin "./baserom/overlay/overlay_0021.bin", 0x164a6, 0x21e7242 - 0x21e7226


.thumb
branch_21e7242: @ 21e7242 :thumb
	cmp     r5, #0x0
	beq     branch_21e7278
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21e7250
	bl      Function_20181c4
branch_21e7250: @ 21e7250 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x34]
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	add     r2, sp, #0x10
	bl      Function_21d27e0
	str     r0, [r6, #0x0]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x1f
	lsl     r1, r1, #5
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_21e7278
	bl      Function_2022974
branch_21e7278: @ 21e7278 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e727c


.thumb
Function_21e727c: @ 21e727c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_21d1524
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e728c


.thumb
Function_21e728c: @ 21e728c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r7, r0
	mov     r4, r7
	mov     r5, r7
	str     r1, [sp, #0x1c]
	str     r2, [sp, #0x20]
	str     r3, [sp, #0x24]
	mov     r6, #0x0
	add     r4, #0x38
	add     r5, #0x30
branch_21e72a2: @ 21e72a2 :thumb
	cmp     r6, #0x0
	bne     branch_21e72aa
	mov     r1, #0x4
	b       branch_21e72ac

branch_21e72aa: @ 21e72aa :thumb
	mov     r1, #0x5
branch_21e72ac: @ 21e72ac :thumb
	mov     r0, #0x7
	mvn     r0, r0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	str     r5, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	str     r4, [sp, #0x18]
	ldr     r3, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r7, #0x0]
	ldr     r2, [r7, #0x8]
	ldr     r3, [r3, #0x10]
	bl      Function_21e71d0
	ldr     r0, [sp, #0x20]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x20]
	cmp     r6, #0x2
	blt     branch_21e72a2
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21e72e8


.thumb
Function_21e72e8: @ 21e72e8 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x38] @ 0x21e7324, (=#0x21bf67c)
	ldr     r3, [r2, #0x48]
	mov     r2, #0x1
	tst     r3, r2
	beq     branch_21e7320
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x1
	bne     branch_21e730c
	mov     r3, #0x0
	str     r3, [r1, #0x4]
	ldr     r3, [r1, #0x0]
	ldr     r1, [r3, #0x0]
	orr     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x2
	str     r1, [r0, #0x10]
	b       branch_21e731a

branch_21e730c: @ 21e730c :thumb
	str     r2, [r1, #0x4]
	ldr     r3, [r1, #0x0]
	mov     r1, #0x2
	ldr     r2, [r3, #0x0]
	orr     r2, r1
	str     r2, [r3, #0x0]
	str     r1, [r0, #0x14]
branch_21e731a: @ 21e731a :thumb
	ldr     r0, [pc, #0xc] @ 0x21e7328, (=#0x5dd)
	bl      Function_2005748
branch_21e7320: @ 21e7320 :thumb
	pop     {r3,pc}
@ 0x21e7322

.align 2
.word 0x21bf67c @ 0x21e7324
.word 0x5dd @ 0x21e7328



.thumb
Function_21e732c: @ 21e732c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_21e33bc
	cmp     r0, #0x1
	bne     branch_21e7364
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_21e7354
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xbc
	mov     r2, #0x78
	mov     r3, #0x68
	bl      Function_21e7368
	pop     {r3-r5,pc}

branch_21e7354: @ 21e7354 :thumb
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x44
	mov     r2, #0x78
	mov     r3, #0x68
	bl      Function_21e7368
branch_21e7364: @ 21e7364 :thumb
	pop     {r3-r5,pc}
@ 0x21e7366


.align 2, 0
.thumb
Function_21e7368: @ 21e7368 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_21d2574
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e737a


.align 2, 0
.thumb
Function_21e737c: @ 21e737c :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	bl      Function_21e73e8
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_21e7424
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	bl      Function_21e749c
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e73bc, (=#0x21e74a1)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e73c0, (=#0x21e750d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e73c4, (=#0x21e751d)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e73c8, (=#0x21e7531)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e73cc, (=#0x21e75d5)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e73d0, (=#0x21e7695)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e73bc

.word Function_21e74a0+1 @ =0x21e74a1, 0x21e73bc
.word Function_21e750c+1 @ =0x21e750d, 0x21e73c0
.word Function_21e751c+1 @ =0x21e751d, 0x21e73c4
.word Function_21e7530+1 @ =0x21e7531, 0x21e73c8
.word Function_21e75d4+1 @ =0x21e75d5, 0x21e73cc
.word Function_21e7694+1 @ =0x21e7695, 0x21e73d0



.thumb
Function_21e73d4: @ 21e73d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e7468
	ldr     r0, [r4, #0x4]
	bl      Function_21e747c
	pop     {r4,pc}
@ 0x21e73e6


.align 2, 0
.thumb
Function_21e73e8: @ 21e73e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x8
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e73fa
	bl      Function_2022974
branch_21e73fa: @ 21e73fa :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_21d1410
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e7422


.align 2, 0
.thumb
Function_21e7424: @ 21e7424 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x20
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e7438
	bl      Function_2022974
branch_21e7438: @ 21e7438 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20d5124
	mov     r0, r6
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e7ec0
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e7f40
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_2015240
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21e7466


.align 2, 0
.thumb
Function_21e7468: @ 21e7468 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e7472
	bl      Function_2022974
branch_21e7472: @ 21e7472 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e747a


.align 2, 0
.thumb
Function_21e747c: @ 21e747c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e7486
	bl      Function_2022974
branch_21e7486: @ 21e7486 :thumb
	mov     r0, r4
	bl      Function_21e7f20
	mov     r0, r4
	bl      Function_21e7f7c
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e749a


.align 2, 0
.thumb
Function_21e749c: @ 21e749c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e74a0


.thumb
Function_21e74a0: @ 21e74a0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r5, r1
	mov     r1, #0x8
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e74b6
	bl      Function_2022974
branch_21e74b6: @ 21e74b6 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	str     r4, [r6, #0x8]
	ldr     r0, [r5, #0x0]
	bl      Function_21d37bc
	mov     r1, r0
	ldr     r2, [r5, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21e7508, (=#0x1748)
	ldr     r0, [r2, r0]
	bl      Function_2098828
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	bl      Function_21d3920
	cmp     r0, #0x0
	bne     branch_21e74ec
	mov     r0, #0x5f
	b       branch_21e74ee

branch_21e74ec: @ 21e74ec :thumb
	mov     r0, #0x55
branch_21e74ee: @ 21e74ee :thumb
	lsl     r0, r0, #2
	cmp     r6, r0
	blt     branch_21e74fc
	sub     r0, r6, r0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	b       branch_21e7502

branch_21e74fc: @ 21e74fc :thumb
	sub     r0, r0, r6
	str     r0, [r4, #0x0]
	mov     r0, #0x0
branch_21e7502: @ 21e7502 :thumb
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21e7508

.word 0x1748 @ 0x21e7508



.thumb
Function_21e750c: @ 21e750c :thumb
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x1
	bne     branch_21e7516
	mov     r0, #0x1
	bx      lr

branch_21e7516: @ 21e7516 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e751a


.align 2, 0
.thumb
Function_21e751c: @ 21e751c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e752e


.align 2, 0
.thumb
Function_21e7530: @ 21e7530 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	str     r2, [sp, #0x4]
	ldr     r6, [r3, #0x8]
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e75c8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r5, #0
	lsl     r2, r1, #1
	lsl     r0, r4, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0xc4
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xc4
	blx     Function_20d5124
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e75c8
@ 0x21e757a


.incbin "./baserom/overlay/overlay_0021.bin", 0x167fa, 0x21e75c8 - 0x21e757a


.thumb
branch_21e75c8: @ 21e75c8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21e75ce


.incbin "./baserom/overlay/overlay_0021.bin", 0x1684e, 0x21e75d4 - 0x21e75ce


.thumb
Function_21e75d4: @ 21e75d4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x7
	bhi     branch_21e768c
	add     r3, r1, r1
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r6, r1, #0
	lsl     r0, r5, #0
	lsl     r0, r7, #0
	lsl     r6, r0, #1
	lsl     r6, r3, #1
	lsl     r4, r5, #1
	lsl     r6, r1, #2
	lsl     r2, r3, #2
	mov     r1, r0
	mov     r2, #0x1
	add     r1, #0xb8
	str     r2, [r1, #0x0]
	ldr     r0, [r0, #0x34]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_21e7614
	str     r2, [r4, #0x0]
	b       branch_21e768c

branch_21e7614: @ 21e7614 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_21e768c
@ 0x21e761a


.incbin "./baserom/overlay/overlay_0021.bin", 0x1689a, 0x21e768c - 0x21e761a


.thumb
branch_21e768c: @ 21e768c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e7692


.align 2, 0
.thumb
Function_21e7694: @ 21e7694 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r3, r0
	ldr     r0, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_21e7710
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r3, #0
	lsl     r4, r5, #0
	lsl     r2, r7, #0
	lsl     r4, r3, #1
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_21e771c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e7710
@ 0x21e76c8


.incbin "./baserom/overlay/overlay_0021.bin", 0x16948, 0x21e7710 - 0x21e76c8


.thumb
branch_21e7710: @ 21e7710 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21e7714


.thumb
Function_21e7714: @ 21e7714 :thumb
	bx      lr
@ 0x21e7716


.incbin "./baserom/overlay/overlay_0021.bin", 0x16996, 0x21e771c - 0x21e7716


.thumb
Function_21e771c: @ 21e771c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r7, r0
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e7714
	ldr     r0, [r4, #0x4]
	bl      Function_21e2a54
	cmp     r0, #0x0
	beq     branch_21e779e
	cmp     r6, #0x0
	beq     branch_21e777c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	bl      Function_21d24b8
	mov     r1, r0
	neg     r1, r1
	lsl     r1, r1, #24
	mov     r0, r7
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_21e8400
	add     sp, #0x14
	pop     {r4-r7,pc}

branch_21e777c: @ 21e777c :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2b
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e779e: @ 21e779e :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e77a2


.incbin "./baserom/overlay/overlay_0021.bin", 0x16a22, 0x21e7ec0 - 0x21e77a2


.thumb
Function_21e7ec0: @ 21e7ec0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r4, r0
	str     r5, [sp, #0x0]
	mov     r3, r4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x24
	mov     r2, #0x1
	add     r3, #0x18
	bl      Function_21d2808
	str     r0, [r4, #0x10]
	mov     r2, r4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	add     r2, #0x1c
	mov     r3, r5
	bl      Function_21d27e0
	str     r0, [r4, #0x14]
	mov     r0, #0x5a
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x4
	bl      Function_2015128
	str     r0, [r4, #0x4]
	mov     r0, #0x5a
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x10]
	mov     r0, #0x10
	str     r0, [sp, #0x14]
	add     r0, sp, #0xc
	bl      Function_20151a4
	str     r0, [r4, #0x8]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21e7f1e


.align 2, 0
.thumb
Function_21e7f20: @ 21e7f20 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2015164
	ldr     r0, [r4, #0x8]
	bl      Function_20151d4
	ldr     r0, [r4, #0x10]
	bl      Function_20181c4
	ldr     r0, [r4, #0x14]
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e7f3e


.align 2, 0
.thumb
Function_21e7f40: @ 21e7f40 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r4, r0
	mov     r0, #0x5a
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x40
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x0
	strh    r1, [r0, #0xc]
	mov     r1, #0x58
	strh    r1, [r0, #0xe]
	strh    r2, [r0, #0x10]
	mov     r1, #0x1f
	str     r1, [sp, #0x14]
	str     r2, [sp, #0x18]
	strh    r2, [r0, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2015214
	str     r0, [r4, #0xc]
	add     sp, #0x20
	pop     {r4,pc}
@ 0x21e7f7a


.align 2, 0
.thumb
Function_21e7f7c: @ 21e7f7c :thumb
	ldr     r3, [pc, #0x4] @ 0x21e7f84, (=#Function_2015238+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21e7f82

.align 2
.word Function_2015238+1 @ 0x21e7f84


.incbin "./baserom/overlay/overlay_0021.bin", 0x17208, 0x21e8400 - 0x21e7f88


.thumb
Function_21e8400: @ 21e8400 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r7, r1
	mov     r4, r2
	bl      Function_2009e34
	mov     r6, r0
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	bl      Function_200a72c
	mov     r1, r5
	str     r4, [sp, #0x0]
	add     r1, #0xbc
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0xc]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x30
	mov     r3, r7
	bl      Function_200393c
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	blx     Function_20a81fc
	mov     r2, r5
	add     r2, #0xbc
	mov     r1, r0
	ldr     r2, [r2, #0x0]
	mov     r0, #0xe
	mov     r3, #0x60
	bl      Function_201dc68
	ldr     r0, [r5, #0x28]
	bl      Function_2009e34
	mov     r6, r0
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	bl      Function_200a72c
	mov     r1, r5
	str     r4, [sp, #0x0]
	add     r1, #0xc0
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0xc]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x50
	mov     r3, r7
	bl      Function_200393c
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	blx     Function_20a81fc
	add     r5, #0xc0
	mov     r1, r0
	ldr     r2, [r5, #0x0]
	mov     r0, #0xe
	mov     r3, #0xa0
	bl      Function_201dc68
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21e8484


.thumb
Function_21e8484: @ 21e8484 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r2
	mov     r4, r1
	bl      Function_21e84fc
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e8544
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21e856c
	str     r6, [r5, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r5, #0x20]
	bl      Function_21e859c
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x18] @ 0x21e84cc, (=#0x21e85a1)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21e84d0, (=#0x21e85dd)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21e84d4, (=#0x21e8641)
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21e84d8, (=#0x21e8655)
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x18] @ 0x21e84dc, (=#0x21e86dd)
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x18] @ 0x21e84e0, (=#0x21e870d)
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21e84cc

.word Function_21e85a0+1 @ =0x21e85a1, 0x21e84cc
.word Function_21e85dc+1 @ =0x21e85dd, 0x21e84d0
.word Function_21e8640+1 @ =0x21e8641, 0x21e84d4
.word Function_21e8654+1 @ =0x21e8655, 0x21e84d8
.word Function_21e86dc+1 @ =0x21e86dd, 0x21e84dc
.word Function_21e870c+1 @ =0x21e870d, 0x21e84e0



.thumb
Function_21e84e4: @ 21e84e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_21e8570
	ldr     r0, [r4, #0x4]
	bl      Function_21e8584
	ldr     r0, [r4, #0x20]
	bl      Function_21e8598
	pop     {r4,pc}
@ 0x21e84fc


.thumb
Function_21e84fc: @ 21e84fc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e850e
	bl      Function_2022974
branch_21e850e: @ 21e850e :thumb
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
branch_21e8514: @ 21e8514 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e8514
	mov     r0, r5
	bl      Function_21d13a0
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1430
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d1410
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_21d13ec
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e8544


.thumb
Function_21e8544: @ 21e8544 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21e8556
	bl      Function_2022974
branch_21e8556: @ 21e8556 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, r5
	bl      Function_21d13fc
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21e856c


.thumb
Function_21e856c: @ 21e856c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e8570


.thumb
Function_21e8570: @ 21e8570 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e857a
	bl      Function_2022974
branch_21e857a: @ 21e857a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e8582


.align 2, 0
.thumb
Function_21e8584: @ 21e8584 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_21e858e
	bl      Function_2022974
branch_21e858e: @ 21e858e :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x21e8596


.align 2, 0
.thumb
Function_21e8598: @ 21e8598 :thumb
	bx      lr
@ 0x21e859a


.align 2, 0
.thumb
Function_21e859c: @ 21e859c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21e85a0


.thumb
Function_21e85a0: @ 21e85a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
branch_21e85b6: @ 21e85b6 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21e85b6
	mov     r0, #0x4
	str     r0, [r4, #0x10]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e886c
	mov     r0, r4
	mov     r1, r6
	bl      Function_21e88b8
	str     r4, [r5, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21e85da


.align 2, 0
.thumb
Function_21e85dc: @ 21e85dc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	ldr     r4, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_21e85ec
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_21e85ec: @ 21e85ec :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_21e85f6
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_21e85f6: @ 21e85f6 :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e863a
	mov     r0, r4
	bl      Function_21e88b0
	ldr     r0, [r5, #0x8]
	bl      Function_21e33bc
	cmp     r0, #0x0
	beq     branch_21e8622
	ldr     r0, [r5, #0x4]
	bl      Function_21d3998
	cmp     r0, #0x2
	bne     branch_21e8622
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e8cf0
branch_21e8622: @ 21e8622 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e88b8
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21e863a
	mov     r0, r5
	bl      Function_21e8d3c
	mov     r0, #0x0
	str     r0, [r4, #0x14]
branch_21e863a: @ 21e863a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21e863e


.align 2, 0
.thumb
Function_21e8640: @ 21e8640 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      Function_21e88d0
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21e8654


.thumb
Function_21e8654: @ 21e8654 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21e86d8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #0
	lsl     r6, r7, #0
	lsl     r4, r2, #1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x30
	bl      Function_2018144
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e86d8
@ 0x21e8692


.incbin "./baserom/overlay/overlay_0021.bin", 0x17912, 0x21e86d8 - 0x21e8692


.thumb
branch_21e86d8: @ 21e86d8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e86dc


.thumb
Function_21e86dc: @ 21e86dc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r3, #0x8]
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [r4, #0x8]
	ldr     r7, [r5, #0x8]
	bl      Function_21e33ac
	cmp     r0, #0x0
	beq     branch_21e8708
	ldr     r2, [sp, #0x0]
	ldr     r3, [r5, #0x4]
	mov     r0, r6
	mov     r1, r7
	bl      Function_21e8cbc
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e8d04
branch_21e8708: @ 21e8708 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e870c


.thumb
Function_21e870c: @ 21e870c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r7, r2
	ldr     r6, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21e878e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r5, #0
	lsl     r0, r0, #1
	lsl     r2, r2, #1
	lsl     r0, r4, #1
	mov     r0, #0x79
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_21d25ac
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_21e87c4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21e878e
@ 0x21e8754


.incbin "./baserom/overlay/overlay_0021.bin", 0x179d4, 0x21e878e - 0x21e8754


.thumb
branch_21e878e: @ 21e878e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21e8792


.align 2, 0
.thumb
Function_21e8794: @ 21e8794 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021fe0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2012af0
	pop     {r4,pc}
@ 0x21e87ac


.incbin "./baserom/overlay/overlay_0021.bin", 0x17a2c, 0x21e87c4 - 0x21e87ac


.thumb
Function_21e87c4: @ 21e87c4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r1
	mov     r6, r3
	bl      Function_21e8794
	ldr     r0, [r4, #0x8]
	bl      Function_21e33a4
	cmp     r0, #0x0
	beq     branch_21e882c
	cmp     r6, #0x0
	beq     branch_21e8808
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r2, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	mov     r2, r1
	sub     r2, #0x11
	bl      Function_21d23f8
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_21e8808: @ 21e8808 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x2f
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x19
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #4
	add     r0, r3, r0
	mov     r3, r1
	sub     r3, #0x11
	bl      Function_21d23f8
branch_21e882c: @ 21e882c :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21e8830


.incbin "./baserom/overlay/overlay_0021.bin", 0x17ab0, 0x21e886c - 0x21e8830


.thumb
Function_21e886c: @ 21e886c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2018144
	str     r0, [r5, #0x4]
	mov     r0, #0xf8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x68
	mov     r2, #0xb8
	mov     r3, #0x8
	bl      Function_21d154c
	str     r4, [r5, #0x8]
	str     r5, [r5, #0xc]
	str     r6, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x10] @ 0x21e88ac, (=#Function_21e88e8+1)
	mov     r1, #0x1
	add     r3, #0x8
	bl      Function_2023fcc
	str     r0, [r5, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21e88aa

.align 2
.word Function_21e88e8+1 @ 0x21e88ac



.thumb
Function_21e88b0: @ 21e88b0 :thumb
	mov     r1, #0x3
	str     r1, [r0, #0x10]
	bx      lr
@ 0x21e88b6


.align 2, 0
.thumb
Function_21e88b8: @ 21e88b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_202404c
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21e88cc
	mov     r0, #0x2
	str     r0, [r4, #0x10]
branch_21e88cc: @ 21e88cc :thumb
	pop     {r4,pc}
@ 0x21e88ce


.align 2, 0
.thumb
Function_21e88d0: @ 21e88d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2024034
	ldr     r0, [r4, #0x4]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21e88e6


.align 2, 0
Function_21e88e8: @ 21e88e8 :thumb
	push    {r4,lr}
	ldr     r4, [r2, #0x4]
	ldr     r3, [r2, #0x0]
	lsl     r2, r0, #2
	add     r2, r4, r2
	str     r1, [r2, #0x10]
	cmp     r1, #0x0
	beq     branch_21e88fe
	cmp     r1, #0x2
	beq     branch_21e8910
	pop     {r4,pc}

branch_21e88fe: @ 21e88fe :thumb
	cmp     r0, #0x0
	bne     branch_21e8918
	ldr     r0, [r3, #0x8]
	mov     r1, #0x1
	bl      Function_21e33b4
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	pop     {r4,pc}

branch_21e8910: @ 21e8910 :thumb
	cmp     r0, #0x0
	bne     branch_21e8918
	mov     r0, #0x1
	str     r0, [r4, #0x14]
branch_21e8918: @ 21e8918 :thumb
	pop     {r4,pc}
@ 0x21e891a


.incbin "./baserom/overlay/overlay_0021.bin", 0x17b9a, 0x21e8be8 - 0x21e891a


.thumb
Function_21e8be8: @ 21e8be8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r1
	mov     r1, r3
	str     r2, [sp, #0xc]
	ldr     r4, [sp, #0x30]
	ldr     r6, [sp, #0x40]
	mov     r5, #0x0
	bl      Function_21d144c
	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x38]
	bl      Function_21e8c94
	ldr     r0, [sp, #0x8]
	bl      Function_2021e74
	cmp     r0, #0x3
	bhi     branch_21e8c5a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r4, r4, #0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21e8c5a
	mov     r0, #0x0
	mov     r5, #0x1
	mov     r7, #0x9
	str     r0, [r4, #0x0]
	b       branch_21e8c5a
@ 0x21e8c3e


.incbin "./baserom/overlay/overlay_0021.bin", 0x17ebe, 0x21e8c5a - 0x21e8c3e


.thumb
branch_21e8c5a: @ 21e8c5a :thumb
	cmp     r5, #0x0
	beq     branch_21e8c90
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21e8c68
	bl      Function_20181c4
branch_21e8c68: @ 21e8c68 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x34]
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	add     r2, sp, #0x10
	bl      Function_21d27e0
	str     r0, [r6, #0x0]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x1f
	lsl     r1, r1, #5
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_21e8c90
	bl      Function_2022974
branch_21e8c90: @ 21e8c90 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21e8c94


.thumb
Function_21e8c94: @ 21e8c94 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	bl      Function_21d1498
	mov     r0, r5
	bl      Function_2021e74
	cmp     r0, #0x2
	ldr     r0, [r4, #0x0]
	bge     branch_21e8cb4
	mov     r1, r6
	bl      Function_2012ac0
	pop     {r4-r6,pc}

branch_21e8cb4: @ 21e8cb4 :thumb
	ldr     r1, [sp, #0x10]
	bl      Function_2012ac0
	pop     {r4-r6,pc}
@ 0x21e8cbc


.thumb
Function_21e8cbc: @ 21e8cbc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r1, #0x7
	mvn     r1, r1
	mov     r4, r2
	str     r1, [sp, #0x0]
	mov     r2, #0x4
	mov     r1, r5
	str     r2, [sp, #0x4]
	add     r1, #0x28
	str     r1, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r1, #0x1
	str     r1, [sp, #0x14]
	mov     r1, r5
	add     r1, #0x2c
	str     r1, [sp, #0x18]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	ldr     r3, [r4, #0x10]
	bl      Function_21e8be8
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21e8cf0


.thumb
Function_21e8cf0: @ 21e8cf0 :thumb
	ldr     r1, [pc, #0xc] @ 0x21e8d00, (=#0x21bf67c)
	ldr     r2, [r1, #0x44]
	mov     r1, #0x1
	tst     r2, r1
	beq     branch_21e8cfc
	str     r1, [r0, #0x14]
branch_21e8cfc: @ 21e8cfc :thumb
	bx      lr
@ 0x21e8cfe

.align 2
.word 0x21bf67c @ 0x21e8d00



.thumb
Function_21e8d04: @ 21e8d04 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r1, #0x8]
	bl      Function_21e33bc
	cmp     r0, #0x1
	bne     branch_21e8d24
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x90
	mov     r3, #0xe4
	bl      Function_21e8d28
branch_21e8d24: @ 21e8d24 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e8d28


.thumb
Function_21e8d28: @ 21e8d28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_21d2574
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21e8d3a


.align 2, 0
.thumb
Function_21e8d3c: @ 21e8d3c :thumb
	ldr     r3, [pc, #0x4] @ 0x21e8d44, (=#Function_21df7a0+1)
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	bx      r3
@ 0x21e8d44

.word Function_21df7a0+1 @ 0x21e8d44


.incbin "./baserom/overlay/overlay_0021.bin", 0x17fc8, 0x21e9b24 - 0x21e8d48


Unknown_21e9b24:
.incbin "./baserom/overlay/overlay_0021.bin", 0x18da4, 0x21e9b34 - 0x21e9b24


Jumptable_21e9b34:
.word Function_21d76b0+1 @ =0x21d76b1, 0x21e9b34
.word Function_21d94bc+1 @ =0x21d94bd, 0x21e9b38
.word Function_21e1924+1 @ =0x21e1925, 0x21e9b3c
.word Function_21e332c+1 @ =0x21e332d, 0x21e9b40
.word Function_21ddd2c+1 @ =0x21ddd2d, 0x21e9b44
.word Function_21e4ca4+1 @ =0x21e4ca5, 0x21e9b48
.word Function_21e68f4+1 @ =0x21e68f5, 0x21e9b4c
.word Function_21e8484+1 @ =0x21e8485, 0x21e9b50
.word Function_21d7710+1 @ =0x21d7711, 0x21e9b54
.word Function_21d951c+1 @ =0x21d951d, 0x21e9b58
.word Function_21e1984+1 @ =0x21e1985, 0x21e9b5c
.word Function_21e338c+1 @ =0x21e338d, 0x21e9b60
.word Function_21ddd8c+1 @ =0x21ddd8d, 0x21e9b64
.word Function_21e4d04+1 @ =0x21e4d05, 0x21e9b68
.word Function_21e6954+1 @ =0x21e6955, 0x21e9b6c
.word Function_21e84e4+1 @ =0x21e84e5, 0x21e9b70

Jumptable_21e9b74:
.word Function_21d5aec+1 @ =0x21d5aed, 0x21e9b74
.word Function_21d85b0+1 @ =0x21d85b1, 0x21e9b78
.word Function_21de668+1 @ =0x21de669, 0x21e9b7c
.word Function_21df734+1 @ =0x21df735, 0x21e9b80
.word Function_21e0c68+1 @ =0x21e0c69, 0x21e9b84
.word Function_21e29dc+1 @ =0x21e29dd, 0x21e9b88
.word Function_21dc9bc+1 @ =0x21dc9bd, 0x21e9b8c
.word Function_21e3ffc+1 @ =0x21e3ffd, 0x21e9b90
.word Function_21e6014+1 @ =0x21e6015, 0x21e9b94
.word Function_21e737c+1 @ =0x21e737d, 0x21e9b98
.word Function_21d5b50+1 @ =0x21d5b51, 0x21e9b9c
.word Function_21d8610+1 @ =0x21d8611, 0x21e9ba0
.word Function_21de6c0+1 @ =0x21de6c1, 0x21e9ba4
.word Function_21df78c+1 @ =0x21df78d, 0x21e9ba8
.word Function_21e0cc0+1 @ =0x21e0cc1, 0x21e9bac
.word Function_21e2a3c+1 @ =0x21e2a3d, 0x21e9bb0
.word Function_21dca14+1 @ =0x21dca15, 0x21e9bb4
.word Function_21e4054+1 @ =0x21e4055, 0x21e9bb8
.word Function_21e6074+1 @ =0x21e6075, 0x21e9bbc
.word Function_21e73d4+1 @ =0x21e73d5, 0x21e9bc0
@ 0x21e9bc4


Unknown_21e9bc4:
.incbin "./baserom/overlay/overlay_0021.bin", 0x18e44, 0x21e9d98 - 0x21e9bc4


Unknown_21e9d98:
.incbin "./baserom/overlay/overlay_0021.bin", 0x19018, 0x21e9f7f - 0x21e9d98


@end 0x21e9f7f
