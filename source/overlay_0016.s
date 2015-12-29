


.section .iwram16, "ax"


@ 1d8600 = 0
@ 1db690 = 3090

.thumb
Function_223b140: @ 223b140 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r4, r1
	mov     r6, r0
	bl      Function_2006840
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0xf
	bls     branch_223b156
	b       branch_223b370
@ 0x223b156

.thumb
branch_223b156: @ 223b156 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r3, #0
	lsl     r2, r1, #1
	lsl     r4, r0, #2
	lsl     r2, r3, #2
	lsl     r0, r6, #2
	lsl     r0, r0, #3
	lsl     r6, r2, #3
	lsl     r2, r6, #3
	lsl     r4, r0, #4
	lsl     r0, r4, #4
	lsl     r6, r6, #4
	lsl     r2, r2, #5
	lsl     r6, r5, #5
	lsl     r4, r6, #5
	lsl     r4, r4, #7
	lsl     r6, r0, #8
	mov     r2, #0xb
	mov     r0, #0x3
	mov     r1, #0x5
	lsl     r2, r2, #16
	bl      Function_2017fc8
	ldr     r1, [r5, #0x0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_223b1a8
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_223b1a8
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b370
@ 0x223b1a8

.thumb
branch_223b1a8: @ 223b1a8 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_223b370
@ 0x223b1ae


.incbin "./baserom/overlay/overlay_0016.bin", 0x6e, 0x223b370 - 0x223b1ae


.thumb
branch_223b370: @ 223b370 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x223b376


.incbin "./baserom/overlay/overlay_0016.bin", 0x236, 0x223b748 - 0x223b376


.thumb
Function_223b748: @ 223b748 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x223b784, (=#0x2445)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, r4
	bne     branch_223b75a
	bl      Function_2022974
.thumb
branch_223b75a: @ 223b75a :thumb
	ldr     r0, [pc, #0x28] @ 0x223b784, (=#0x2445)
	cmp     r4, #0x0
	strb    r4, [r5, r0]
	bne     branch_223b772
	ldr     r0, [pc, #0x24] @ 0x223b788, (=#0xe)
	bl      Function_2006514
	ldr     r0, [pc, #0x20] @ 0x223b78c, (=#0xc)
	mov     r1, #0x2
	bl      LoadOverlay
	pop     {r3-r5,pc}
@ 0x223b772

.thumb
branch_223b772: @ 223b772 :thumb
	ldr     r0, [pc, #0x18] @ 0x223b78c, (=#0xc)
	bl      Function_2006514
	ldr     r0, [pc, #0xc] @ 0x223b788, (=#0xe)
	mov     r1, #0x2
	bl      LoadOverlay
	pop     {r3-r5,pc}
@ 0x223b782


.align 2


.word 0x2445 @ 0x223b784
.word 0xe @ 0x223b788
.word 0xc @ 0x223b78c

.incbin "./baserom/overlay/overlay_0016.bin", 0x650, 0x223d0f4 - 0x223b790


.thumb
Function_223d0f4: @ 223d0f4 :thumb
	push    {r3,lr}
	bl      Function_20389b8
	cmp     r0, #0x0
	bne     branch_223d106
	ldr     r0, [pc, #0x8] @ 0x223d108, (=#0x15)
	mov     r1, #0x2
	bl      LoadOverlay
.thumb
branch_223d106: @ 223d106 :thumb
	pop     {r3,pc}
@ 0x223d108

.word 0x15 @ 0x223d108

.incbin "./baserom/overlay/overlay_0016.bin", 0x1fcc, 0x223df00 - 0x223d10c


.thumb
Function_223df00: @ 223df00 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x223df04


.incbin "./baserom/overlay/overlay_0016.bin", 0x2dc4, 0x223df0c - 0x223df04


.thumb
Function_223df0c: @ 223df0c :thumb
	ldr     r0, [r0, #0x2c]
	bx      lr
@ 0x223df10

.thumb
Function_223df10: @ 223df10 :thumb
	ldr     r0, [r0, #0x30]
	bx      lr
@ 0x223df14

.thumb
Function_223df14: @ 223df14 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0x34]
	bx      lr
@ 0x223df1c

.thumb
Function_223df1c: @ 223df1c :thumb
	ldr     r0, [r0, #0x44]
	bx      lr
@ 0x223df20

.thumb
Function_223df20: @ 223df20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223df3e
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223df46
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223df46
.thumb
branch_223df3e: @ 223df3e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	pop     {r3-r5,pc}
@ 0x223df46

.thumb
branch_223df46: @ 223df46 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223df58
	lsl     r0, r4, #31
	lsr     r0, r0, #29
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	pop     {r3-r5,pc}
@ 0x223df58

.thumb
branch_223df58: @ 223df58 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	pop     {r3-r5,pc}
@ 0x223df60

.thumb
Function_223df60: @ 223df60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223df7e
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223df8a
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223df8a
.thumb
branch_223df7e: @ 223df7e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	bl      Function_207a0f8
	pop     {r3-r5,pc}
@ 0x223df8a

.thumb
branch_223df8a: @ 223df8a :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223dfa0
	lsl     r0, r4, #31
	lsr     r0, r0, #29
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	bl      Function_207a0f8
	pop     {r3-r5,pc}
@ 0x223dfa0

.thumb
branch_223dfa0: @ 223dfa0 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	bl      Function_207a0f8
	pop     {r3-r5,pc}
@ 0x223dfac

.thumb
Function_223dfac: @ 223dfac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223dfcc
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223dfda
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223dfda
.thumb
branch_223dfcc: @ 223dfcc :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	mov     r1, r6
	bl      Function_207a0fc
	pop     {r4-r6,pc}
@ 0x223dfda

.thumb
branch_223dfda: @ 223dfda :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223dff2
	lsl     r0, r4, #31
	lsr     r0, r0, #29
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	mov     r1, r6
	bl      Function_207a0fc
	pop     {r4-r6,pc}
@ 0x223dff2

.thumb
branch_223dff2: @ 223dff2 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x68]
	mov     r1, r6
	bl      Function_207a0fc
	pop     {r4-r6,pc}
@ 0x223e000


.incbin "./baserom/overlay/overlay_0016.bin", 0x2ec0, 0x223e018 - 0x223e000


.thumb
Function_223e018: @ 223e018 :thumb
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x223e01e


.incbin "./baserom/overlay/overlay_0016.bin", 0x2ede, 0x223e05c - 0x223e01e


.thumb
Function_223e05c: @ 223e05c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x223e060


.incbin "./baserom/overlay/overlay_0016.bin", 0x2f20, 0x223e06c - 0x223e060


.thumb
Function_223e06c: @ 223e06c :thumb
	mov     r1, #0x8a
	lsl     r1, r1, #2
	add     r0, r0, r1
	bx      lr
@ 0x223e074

.thumb
Function_223e074: @ 223e074 :thumb
	ldr     r1, [pc, #0x4] @ 0x223e07c, (=#0x1228)
	add     r0, r0, r1
	bx      lr
@ 0x223e07a


.align 2


.word 0x1228 @ 0x223e07c

.incbin "./baserom/overlay/overlay_0016.bin", 0x2f40, 0x223e08c - 0x223e080


.thumb
Function_223e08c: @ 223e08c :thumb
	ldr     r1, [pc, #0x4] @ 0x223e094, (=#0x23ea)
	add     r0, r0, r1
	bx      lr
@ 0x223e092


.align 2


.word 0x23ea @ 0x223e094
.thumb
Function_223e098: @ 223e098 :thumb
	ldr     r1, [pc, #0x4] @ 0x223e0a0, (=#0x23ec)
	add     r0, r0, r1
	bx      lr
@ 0x223e09e


.align 2


.word 0x23ec @ 0x223e0a0

.incbin "./baserom/overlay/overlay_0016.bin", 0x2f64, 0x223e0b0 - 0x223e0a4


.thumb
Function_223e0b0: @ 223e0b0 :thumb
	ldr     r1, [pc, #0x4] @ 0x223e0b8, (=#0x23f0)
	add     r0, r0, r1
	bx      lr
@ 0x223e0b6


.align 2


.word 0x23f0 @ 0x223e0b8
.thumb
Function_223e0bc: @ 223e0bc :thumb
	ldr     r1, [pc, #0x4] @ 0x223e0c4, (=#0x23f2)
	add     r0, r0, r1
	bx      lr
@ 0x223e0c2


.align 2


.word 0x23f2 @ 0x223e0c4

.incbin "./baserom/overlay/overlay_0016.bin", 0x2f88, 0x223e0d0 - 0x223e0c8


.thumb
Function_223e0d0: @ 223e0d0 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x223e0d4


.incbin "./baserom/overlay/overlay_0016.bin", 0x2f94, 0x223e0d8 - 0x223e0d4


.thumb
Function_223e0d8: @ 223e0d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223e0f6
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223e100
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223e100
.thumb
branch_223e0f6: @ 223e0f6 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	add     r0, #0xa0
	ldrh    r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223e100

.thumb
branch_223e100: @ 223e100 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223e114
	lsl     r0, r4, #31
	lsr     r0, r0, #30
	add     r0, r5, r0
	add     r0, #0xa0
	ldrh    r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223e114

.thumb
branch_223e114: @ 223e114 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	add     r0, #0xa0
	ldrh    r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223e11e


.align 2, 0


.thumb
Function_223e120: @ 223e120 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223e13e
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223e148
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223e148
.thumb
branch_223e13e: @ 223e13e :thumb
	mov     r0, #0x34
	add     r5, #0xac
	mul     r0, r4
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x223e148

.thumb
branch_223e148: @ 223e148 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223e160
	mov     r0, #0x1
	mov     r1, r4
	and     r1, r0
	mov     r0, #0x34
	add     r5, #0xac
	mul     r0, r1
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x223e160

.thumb
branch_223e160: @ 223e160 :thumb
	mov     r0, #0x34
	add     r5, #0xac
	mul     r0, r4
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x223e16a


.align 2, 0


.thumb
Function_223e16c: @ 223e16c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223e18a
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223e192
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223e192
.thumb
branch_223e18a: @ 223e18a :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x48]
	pop     {r3-r5,pc}
@ 0x223e192

.thumb
branch_223e192: @ 223e192 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223e1a4
	lsl     r0, r4, #31
	lsr     r0, r0, #29
	add     r0, r5, r0
	ldr     r0, [r0, #0x48]
	pop     {r3-r5,pc}
@ 0x223e1a4

.thumb
branch_223e1a4: @ 223e1a4 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x48]
	pop     {r3-r5,pc}
@ 0x223e1ac


.incbin "./baserom/overlay/overlay_0016.bin", 0x306c, 0x223e1c4 - 0x223e1ac


.thumb
Function_223e1c4: @ 223e1c4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x44]
	mov     r7, r1
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223e1e8
	mov     r5, r6
.thumb
branch_223e1d4: @ 223e1d4 :thumb
	ldr     r0, [r5, #0x34]
	bl      Function_2263ae4
	cmp     r7, r0
	beq     branch_223e1e8
	ldr     r0, [r6, #0x44]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223e1d4
.thumb
branch_223e1e8: @ 223e1e8 :thumb
	ldr     r0, [r6, #0x44]
	cmp     r4, r0
	blt     branch_223e1f2
	bl      Function_2022974
.thumb
branch_223e1f2: @ 223e1f2 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223e1f6


.align 2, 0


.thumb
Function_223e1f8: @ 223e1f8 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r3, [pc, #0x4] @ 0x223e204, (=#0x2263ae5)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x223e202


.align 2


.word Function_2263ae4+1 @ =0x2263ae5, 0x223e204
.thumb
Function_223e208: @ 223e208 :thumb
	push    {r3,lr}
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0x34]
	bl      Function_2263ae4
	mov     r1, #0x1
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x223e21e


.incbin "./baserom/overlay/overlay_0016.bin", 0x30de, 0x223e22c - 0x223e21e


.thumb
Function_223e22c: @ 223e22c :thumb
	mov     r1, #0x9
	lsl     r1, r1, #10
	ldr     r0, [r0, r1]
	cmp     r0, #0x18
	bgt     branch_223e23a
	cmp     r0, #0x0
	bge     branch_223e23c
.thumb
branch_223e23a: @ 223e23a :thumb
	mov     r0, #0x18
.thumb
branch_223e23c: @ 223e23c :thumb
	bx      lr
@ 0x223e23e


.incbin "./baserom/overlay/overlay_0016.bin", 0x30fe, 0x223e24c - 0x223e23e


.thumb
Function_223e24c: @ 223e24c :thumb
	ldr     r1, [pc, #0x4] @ 0x223e254, (=#0x2408)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223e252


.align 2


.word 0x2408 @ 0x223e254
.thumb
Function_223e258: @ 223e258 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_223df1c
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_223e274
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x223e274

.thumb
branch_223e274: @ 223e274 :thumb
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223e29e
.thumb
branch_223e27c: @ 223e27c :thumb
	cmp     r4, r5
	beq     branch_223e296
	mov     r0, r6
	mov     r1, r4
	bl      Function_223e208
	mov     r7, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e208
	cmp     r7, r0
	beq     branch_223e29e
.thumb
branch_223e296: @ 223e296 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_223e27c
.thumb
branch_223e29e: @ 223e29e :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223e2a2


.align 2, 0


.thumb
Function_223e2a4: @ 223e2a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	str     r2, [sp, #0x0]
	bl      Function_223df1c
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_223e2c8
	mov     r0, #0x1
	add     sp, #0x8
	eor     r0, r6
	pop     {r3-r7,pc}
@ 0x223e2c8

.thumb
branch_223e2c8: @ 223e2c8 :thumb
	ldr     r0, [sp, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223e304
.thumb
branch_223e2d0: @ 223e2d0 :thumb
	cmp     r4, r6
	beq     branch_223e2fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_223e1f8
	mov     r1, #0x2
	and     r1, r0
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_223e2fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_223e208
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_223e208
	cmp     r7, r0
	bne     branch_223e304
.thumb
branch_223e2fc: @ 223e2fc :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_223e2d0
.thumb
branch_223e304: @ 223e304 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223e30a


.align 2, 0


.thumb
Function_223e30c: @ 223e30c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r1
	ldr     r1, [sp, #0x38]
	mov     r6, r2
	str     r1, [sp, #0x38]
	mov     r1, r0
	ldr     r1, [r1, #0x30]
	mov     r4, r3
	str     r1, [sp, #0x1c]
	mov     r1, #0x0
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_225b45c
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	bl      Function_223df0c
	cmp     r0, #0x3
	beq     branch_223e356
	ldr     r0, [sp, #0x4]
	bl      Function_223df0c
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_223e37c
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	bne     branch_223e37c
.thumb
branch_223e356: @ 223e356 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223e258
	mov     r3, r0
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x2
	bl      Function_225b45c
	str     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e380
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223e258
	mov     r7, r0
	b       branch_223e380
@ 0x223e37c

.thumb
branch_223e37c: @ 223e37c :thumb
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
.thumb
branch_223e380: @ 223e380 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_223dfac
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	mov     r1, #0xf
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e414
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x7
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e414
	mov     r1, #0x7
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	add     r2, sp, #0x20
	bl      Function_2074b30
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e3d0
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e410
.thumb
branch_223e3d0: @ 223e3d0 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x7
	str     r0, [sp, #0x20]
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	add     r3, sp, #0x20
	bl      Function_22523e8
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [pc, #0x224] @ 0x223e624, (=#0xf7ffffff)
	str     r0, [sp, #0x20]
	and     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	add     r3, sp, #0x20
	bl      Function_22523e8
.thumb
branch_223e410: @ 223e410 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e414: @ 223e414 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x10
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e478
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x1f4] @ 0x223e628, (=#0xf88)
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e478
	ldr     r1, [pc, #0x1f0] @ 0x223e62c, (=#0xfffff077)
	add     r2, sp, #0x20
	and     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	bl      Function_2074b30
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e454
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e474
.thumb
branch_223e454: @ 223e454 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [pc, #0x1c8] @ 0x223e62c, (=#0xfffff077)
	str     r0, [sp, #0x20]
	and     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	add     r3, sp, #0x20
	bl      Function_22523e8
.thumb
branch_223e474: @ 223e474 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e478: @ 223e478 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x11
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e4dc
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x10
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e4dc
	mov     r1, #0x10
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	add     r2, sp, #0x20
	bl      Function_2074b30
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e4b8
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e4d8
.thumb
branch_223e4b8: @ 223e4b8 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x10
	str     r0, [sp, #0x20]
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	add     r3, sp, #0x20
	bl      Function_22523e8
.thumb
branch_223e4d8: @ 223e4d8 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e4dc: @ 223e4dc :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x12
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e540
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x20
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e540
	mov     r1, #0x20
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	add     r2, sp, #0x20
	bl      Function_2074b30
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e51c
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e53c
.thumb
branch_223e51c: @ 223e51c :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x20
	str     r0, [sp, #0x20]
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	add     r3, sp, #0x20
	bl      Function_22523e8
.thumb
branch_223e53c: @ 223e53c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e540: @ 223e540 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x13
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e5a4
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x40
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e5a4
	mov     r1, #0x40
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	add     r2, sp, #0x20
	bl      Function_2074b30
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e580
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e5a0
.thumb
branch_223e580: @ 223e580 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x40
	str     r0, [sp, #0x20]
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x34
	add     r3, sp, #0x20
	bl      Function_22523e8
.thumb
branch_223e5a0: @ 223e5a0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e5a4: @ 223e5a4 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x14
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e5ec
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e5c2
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e5ec
.thumb
branch_223e5c2: @ 223e5c2 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x7
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e5ec
	mov     r1, #0x7
	bic     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	add     r3, sp, #0x20
	bl      Function_22523e8
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e5ec: @ 223e5ec :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x15
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e648
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e60a
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e648
.thumb
branch_223e60a: @ 223e60a :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0xf
	lsl     r1, r1, #16
	str     r0, [sp, #0x20]
	tst     r1, r0
	beq     branch_223e648
	ldr     r1, [pc, #0xc] @ 0x223e630, (=#0xfff0ffff)
	b       branch_223e634
@ 0x223e624

.word 0xf7ffffff @ 0x223e624
.word 0xf88 @ 0x223e628
.word 0xfffff077 @ 0x223e62c
.word 0xfff0ffff @ 0x223e630
.thumb
branch_223e634: @ 223e634 :thumb
	mov     r2, #0x35
	and     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	add     r3, sp, #0x20
	bl      Function_22523e8
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e648: @ 223e648 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e6a2
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_225b45c
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_223e6a2
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_225b45c
	mov     r1, #0x40
	str     r0, [sp, #0x20]
	orr     r0, r1
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_225b540
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_225b540
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e6a2: @ 223e6a2 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1b
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e6e0
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e6c0
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e6e0
.thumb
branch_223e6c0: @ 223e6c0 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x13
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e6e0
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x13
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e6e0: @ 223e6e0 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e71e
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e6fe
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e71e
.thumb
branch_223e6fe: @ 223e6fe :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x14
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e71e
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x14
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e71e: @ 223e71e :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1d
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e75c
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e73c
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e75c
.thumb
branch_223e73c: @ 223e73c :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x16
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e75c
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x16
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e75c: @ 223e75c :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1e
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e79a
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e77a
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e79a
.thumb
branch_223e77a: @ 223e77a :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x17
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e79a
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x17
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e79a: @ 223e79a :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e7d8
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e7b8
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e7d8
.thumb
branch_223e7b8: @ 223e7b8 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x15
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e7d8
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x15
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e7d8: @ 223e7d8 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x20
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e816
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e7f6
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e816
.thumb
branch_223e7f6: @ 223e7f6 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x18
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0xc
	bge     branch_223e816
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x18
	mov     r3, #0x1
	bl      Function_2252a14
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e816: @ 223e816 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x21
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e860
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e834
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e860
.thumb
branch_223e834: @ 223e834 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x1
	lsl     r1, r1, #20
	mov     r2, r0
	str     r0, [sp, #0x20]
	tst     r2, r1
	bne     branch_223e860
	orr     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	add     r3, sp, #0x20
	bl      Function_22523e8
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e860: @ 223e860 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e8f6
	ldr     r0, [sp, #0x38]
	mov     r1, #0x37
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x20]
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	add     r1, #0x3a
	mov     r2, #0x0
	bl      Function_2074470
	mov     r5, r0
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	add     r1, #0x42
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r5, r0
	beq     branch_223e8f6
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	add     r1, #0x3a
	bl      Function_207536c
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e8b8
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e8f2
.thumb
branch_223e8b8: @ 223e8b8 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x2
	lsl     r1, r1, #20
	tst     r0, r1
	bne     branch_223e8f2
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x4b
	mov     r3, #0x0
	bl      Function_2252060
	mov     r5, r0
	mov     r0, r4
	bl      Function_20787cc
	tst     r0, r5
	bne     branch_223e8f2
	add     r4, #0x1f
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	mov     r1, r7
	mov     r2, r4
	bl      Function_2252a14
.thumb
branch_223e8f2: @ 223e8f2 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e8f6: @ 223e8f6 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x25
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e994
	ldr     r0, [sp, #0x38]
	mov     r1, #0x37
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x20]
	mov     r4, #0x0
.thumb
branch_223e91a: @ 223e91a :thumb
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	add     r1, #0x3a
	mov     r2, #0x0
	bl      Function_2074470
	mov     r5, r0
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	add     r1, #0x42
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r5, r0
	beq     branch_223e98e
	mov     r1, r4
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	add     r1, #0x3a
	bl      Function_207536c
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223e950
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223e98a
.thumb
branch_223e950: @ 223e950 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x2
	lsl     r1, r1, #20
	tst     r0, r1
	bne     branch_223e98a
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x4b
	mov     r3, #0x0
	bl      Function_2252060
	mov     r5, r0
	mov     r0, r4
	bl      Function_20787cc
	tst     r0, r5
	bne     branch_223e98a
	mov     r2, r4
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	mov     r1, r7
	add     r2, #0x1f
	bl      Function_2252a14
.thumb
branch_223e98a: @ 223e98a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223e98e: @ 223e98e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_223e91a
.thumb
branch_223e994: @ 223e994 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x26
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	bne     branch_223e9a8
	b       branch_223eab0
@ 0x223e9a8

.thumb
branch_223e9a8: @ 223e9a8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x38]
	mov     r1, #0x17
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223e9d2
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	bne     branch_223e9de
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	b       branch_223e9de
@ 0x223e9d2

.thumb
branch_223e9d2: @ 223e9d2 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x20]
.thumb
branch_223e9de: @ 223e9de :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_223eab0
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	mov     r4, r0
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r4, r0
	beq     branch_223eab0
	ldr     r0, [sp, #0x38]
	mov     r1, #0x36
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x20]
	cmp     r0, #0xfd
	beq     branch_223ea3e
	cmp     r0, #0xfe
	beq     branch_223ea28
	cmp     r0, #0xff
	bne     branch_223ea5e
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x20]
	b       branch_223ea5e
@ 0x223ea28

.thumb
branch_223ea28: @ 223ea28 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	lsr     r0, r0, #1
	str     r0, [sp, #0x20]
	bne     branch_223ea5e
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	b       branch_223ea5e
@ 0x223ea3e

.thumb
branch_223ea3e: @ 223ea3e :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x19
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0x64
	blx     Function_20e2178
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_223ea5e
	mov     r0, #0x1
	str     r0, [sp, #0x20]
.thumb
branch_223ea5e: @ 223ea5e :thumb
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	mov     r1, #0xa3
	bl      Function_207536c
	ldr     r0, [sp, #0x38]
	mov     r1, #0x17
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	bne     branch_223eaac
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_223ea94
	ldr     r0, [sp, #0x1c]
	mov     r1, r7
	mov     r2, #0x5f
	add     r3, sp, #0x20
	bl      Function_22523e8
	b       branch_223eaac
@ 0x223ea94

.thumb
branch_223ea94: @ 223ea94 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223eaa0
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223eaac
.thumb
branch_223eaa0: @ 223eaa0 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	mov     r1, r7
	mov     r2, #0x2f
	bl      Function_2252a14
.thumb
branch_223eaac: @ 223eaac :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_223eab0: @ 223eab0 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x2d
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223eae6
	ldr     r0, [sp, #0x18]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x64
	bcs     branch_223eae6
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_223eae6
	ldr     r0, [sp, #0x38]
	mov     r1, #0x38
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x8]
.thumb
branch_223eae6: @ 223eae6 :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x2e
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223eb2a
	ldr     r0, [sp, #0x18]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x64
	bcc     branch_223eb2a
	ldr     r0, [sp, #0x18]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0xc8
	bcs     branch_223eb2a
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_223eb2a
	ldr     r0, [sp, #0x38]
	mov     r1, #0x39
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x8]
.thumb
branch_223eb2a: @ 223eb2a :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x2f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x0
	beq     branch_223eb60
	ldr     r0, [sp, #0x18]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0xc8
	bcc     branch_223eb60
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_223eb60
	ldr     r0, [sp, #0x38]
	mov     r1, #0x3a
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	str     r0, [sp, #0x8]
.thumb
branch_223eb60: @ 223eb60 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_223ebe6
	ble     branch_223ebc4
	ldr     r0, [sp, #0x18]
	mov     r1, #0x9b
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0xb
	bne     branch_223eb7c
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_223eb7c: @ 223eb7c :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0x98
	mov     r2, #0x0
	bl      Function_2074470
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	bl      Function_223e24c
	cmp     r4, r0
	bne     branch_223eb98
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_223eb98: @ 223eb98 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x5
	bl      Function_207cff0
	cmp     r0, #0x35
	bne     branch_223ebc4
	ldr     r1, [sp, #0x8]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	str     r0, [sp, #0x8]
.thumb
branch_223ebc4: @ 223ebc4 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x9
	bl      Function_207536c
	ldr     r0, [sp, #0x10]
	cmp     r0, r6
	beq     branch_223ebda
	ldr     r0, [sp, #0xc]
	cmp     r0, r6
	bne     branch_223ebe6
.thumb
branch_223ebda: @ 223ebda :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x2c
	bl      Function_2252a14
.thumb
branch_223ebe6: @ 223ebe6 :thumb
	ldr     r0, [sp, #0x14]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x223ebec

.thumb
Function_223ebec: @ 223ebec :thumb
	ldr     r1, [pc, #0x4] @ 0x223ebf4, (=#0x240c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223ebf2


.align 2


.word 0x240c @ 0x223ebf4

.incbin "./baserom/overlay/overlay_0016.bin", 0x3ab8, 0x223ed8c - 0x223ebf8


.thumb
Function_223ed8c: @ 223ed8c :thumb
	ldr     r1, [pc, #0x4] @ 0x223ed94, (=#0x2414)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223ed92


.align 2


.word 0x2414 @ 0x223ed94
.thumb
Function_223ed98: @ 223ed98 :thumb
	ldr     r2, [pc, #0x4] @ 0x223eda0, (=#0x2414)
	str     r1, [r0, r2]
	bx      lr
@ 0x223ed9e


.align 2


.word 0x2414 @ 0x223eda0

.incbin "./baserom/overlay/overlay_0016.bin", 0x3c64, 0x223edac - 0x223eda4


.thumb
Function_223edac: @ 223edac :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x2c]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_223edc4
	ldr     r1, [pc, #0x24] @ 0x223eddc, (=#0x240c)
	ldr     r2, [r0, r1]
	mov     r1, #0x10
	tst     r1, r2
	bne     branch_223edc4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223edc4

.thumb
branch_223edc4: @ 223edc4 :thumb
	mov     r1, #0x6d
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_2027af8
	cmp     r0, #0x0
	bne     branch_223edd6
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223edd6

.thumb
branch_223edd6: @ 223edd6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223edda


.align 2


.word 0x240c @ 0x223eddc

.incbin "./baserom/overlay/overlay_0016.bin", 0x3ca0, 0x223ee18 - 0x223ede0


.thumb
Function_223ee18: @ 223ee18 :thumb
	mov     r1, #0x6d
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x223ee24, (=#0x2027b15)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223ee22


.align 2


.word 0x2027b15 @ 0x223ee24

.incbin "./baserom/overlay/overlay_0016.bin", 0x3ce8, 0x223ee30 - 0x223ee28


.thumb
Function_223ee30: @ 223ee30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223ee4e
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223ee56
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223ee56
.thumb
branch_223ee4e: @ 223ee4e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x78]
	pop     {r3-r5,pc}
@ 0x223ee56

.thumb
branch_223ee56: @ 223ee56 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223ee68
	lsl     r0, r4, #31
	lsr     r0, r0, #29
	add     r0, r5, r0
	ldr     r0, [r0, #0x78]
	pop     {r3-r5,pc}
@ 0x223ee68

.thumb
branch_223ee68: @ 223ee68 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x78]
	pop     {r3-r5,pc}
@ 0x223ee70


.incbin "./baserom/overlay/overlay_0016.bin", 0x3d30, 0x223ef2c - 0x223ee70


.thumb
Function_223ef2c: @ 223ef2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_20787cc
	ldr     r1, [pc, #0x8] @ 0x223ef44, (=#0x2418)
	add     r2, r5, r1
	ldrb    r1, [r2, r4]
	orr     r0, r1
	strb    r0, [r2, r4]
	pop     {r3-r5,pc}
@ 0x223ef44

.word 0x2418 @ 0x223ef44

.incbin "./baserom/overlay/overlay_0016.bin", 0x3e08, 0x223f21c - 0x223ef48


.thumb
Function_223f21c: @ 223f21c :thumb
	ldr     r1, [pc, #0x4] @ 0x223f224, (=#0x242c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223f222


.align 2


.word 0x242c @ 0x223f224

.incbin "./baserom/overlay/overlay_0016.bin", 0x40e8, 0x223f288 - 0x223f228


.thumb
Function_223f288: @ 223f288 :thumb
	mov     r2, #0x91
	lsl     r2, r2, #6
	str     r1, [r0, r2]
	bx      lr
@ 0x223f290


.incbin "./baserom/overlay/overlay_0016.bin", 0x4150, 0x223f438 - 0x223f290


.thumb
Function_223f438: @ 223f438 :thumb
	ldr     r1, [pc, #0x4] @ 0x223f440, (=#0x2420)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x223f43e


.align 2


.word 0x2420 @ 0x223f440
.thumb
Function_223f444: @ 223f444 :thumb
	ldr     r2, [pc, #0x4] @ 0x223f44c, (=#0x2420)
	strb    r1, [r0, r2]
	bx      lr
@ 0x223f44a


.align 2


.word 0x2420 @ 0x223f44c

.incbin "./baserom/overlay/overlay_0016.bin", 0x4310, 0x223f460 - 0x223f450


.thumb
Function_223f460: @ 223f460 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x14] @ 0x223f478, (=#0x23ff)
	lsl     r1, r1, #30
	ldrb    r4, [r0, r3]
	mov     r2, #0x18
	lsr     r1, r1, #27
	bic     r4, r2
	orr     r1, r4
	strb    r1, [r0, r3]
	pop     {r3,r4}
	bx      lr
@ 0x223f476


.align 2


.word 0x23ff @ 0x223f478

.incbin "./baserom/overlay/overlay_0016.bin", 0x433c, 0x223f4bc - 0x223f47c


.thumb
Function_223f4bc: @ 223f4bc :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x1c] @ 0x223f4dc, (=#0x2448)
	ldr     r1, [pc, #0x1c] @ 0x223f4e0, (=#0x41c64e6d)
	ldr     r3, [r0, r2]
	mov     r4, r3
	mul     r4, r1
	ldr     r1, [pc, #0x18] @ 0x223f4e4, (=#0x6073)
	add     r1, r4, r1
	str     r1, [r0, r2]
	ldr     r0, [r0, r2]
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,r4}
	bx      lr
@ 0x223f4da


.align 2


.word 0x2448 @ 0x223f4dc
.word 0x41c64e6d @ 0x223f4e0
.word 0x6073 @ 0x223f4e4
.thumb
Function_223f4e8: @ 223f4e8 :thumb
	ldr     r1, [pc, #0x4] @ 0x223f4f0, (=#0x244c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223f4ee


.align 2


.word 0x244c @ 0x223f4f0

.incbin "./baserom/overlay/overlay_0016.bin", 0x43b4, 0x223f500 - 0x223f4f4


.thumb
Function_223f500: @ 223f500 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x24] @ 0x223f52c, (=#0x240c)
	mov     r3, #0x10
	ldr     r4, [r0, r1]
	tst     r4, r3
	bne     branch_223f528
	add     r1, #0x54
	add     r4, r0, r1
	lsl     r5, r6, #1
	ldrh    r1, [r4, r5]
	lsl     r0, r3, #6
	cmp     r1, r0
	bcs     branch_223f528
	mov     r0, r6
	bl      Function_202f868
	ldrh    r0, [r4, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, r5]
.thumb
branch_223f528: @ 223f528 :thumb
	pop     {r4-r6,pc}
@ 0x223f52a


.align 2


.word 0x240c @ 0x223f52c

.incbin "./baserom/overlay/overlay_0016.bin", 0x43f0, 0x223f58c - 0x223f530


.thumb
Function_223f58c: @ 223f58c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	ldr     r0, [r0, #0x44]
	mov     r7, r6
	str     r1, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_223f620
.thumb
branch_223f59e: @ 223f59e :thumb
	ldr     r0, [sp, #0x0]
	lsl     r1, r7, #1
	add     r5, r0, r1
	ldr     r0, [pc, #0x88] @ 0x223f630, (=#0x2460)
	mov     r1, r0
	sub     r1, #0x10
	ldrh    r2, [r5, r0]
	ldrh    r1, [r5, r1]
	cmp     r2, r1
	beq     branch_223f612
	add     r1, r6, #0x1
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	ldr     r1, [sp, #0x4]
	mov     r3, r0
	strb    r7, [r1, r6]
	add     r1, r2, #0x1
	lsl     r1, r1, #24
	sub     r3, #0x10
	lsr     r6, r1, #24
	ldrh    r1, [r5, r0]
	ldrh    r3, [r5, r3]
	mov     r4, #0x0
	sub     r3, r1, r3
	ldr     r1, [sp, #0x4]
	strb    r3, [r1, r2]
	ldrh    r1, [r5, r0]
	sub     r0, #0x10
	ldrh    r0, [r5, r0]
	sub     r0, r1, r0
	cmp     r0, #0x0
	ble     branch_223f60a
.thumb
branch_223f5de: @ 223f5de :thumb
	ldr     r1, [pc, #0x54] @ 0x223f634, (=#0x2450)
	mov     r0, r7
	ldrh    r1, [r5, r1]
	add     r1, r4, r1
	bl      Function_202f884
	add     r2, r6, #0x1
	lsl     r2, r2, #24
	mov     r1, r6
	lsr     r6, r2, #24
	ldr     r2, [sp, #0x4]
	strb    r0, [r2, r1]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [pc, #0x30] @ 0x223f630, (=#0x2460)
	ldrh    r1, [r5, r0]
	sub     r0, #0x10
	ldrh    r0, [r5, r0]
	sub     r0, r1, r0
	cmp     r4, r0
	blt     branch_223f5de
.thumb
branch_223f60a: @ 223f60a :thumb
	ldr     r0, [pc, #0x24] @ 0x223f630, (=#0x2460)
	ldrh    r1, [r5, r0]
	sub     r0, #0x10
	strh    r1, [r5, r0]
.thumb
branch_223f612: @ 223f612 :thumb
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x44]
	cmp     r7, r0
	blt     branch_223f59e
.thumb
branch_223f620: @ 223f620 :thumb
	cmp     r6, #0x1c
	bls     branch_223f628
	bl      Function_2022974
.thumb
branch_223f628: @ 223f628 :thumb
	mov     r0, r6
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223f62e


.align 2


.word 0x2460 @ 0x223f630
.word 0x2450 @ 0x223f634

.incbin "./baserom/overlay/overlay_0016.bin", 0x44f8, 0x223f710 - 0x223f638


.thumb
Function_223f710: @ 223f710 :thumb
	ldr     r1, [pc, #0x8] @ 0x223f71c, (=#0x2478)
	ldr     r0, [r0, r1]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr
@ 0x223f71a


.align 2


.word 0x2478 @ 0x223f71c

.incbin "./baserom/overlay/overlay_0016.bin", 0x45e0, 0x223f7e8 - 0x223f720


.thumb
Function_223f7e8: @ 223f7e8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x1c] @ 0x223f808, (=#0x240c)
	mov     r4, r0
	ldr     r3, [r4, r1]
	mov     r2, #0x10
	tst     r2, r3
	beq     branch_223f806
	add     r1, #0x70
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_223f806
	bl      Function_226e148
	ldr     r1, [pc, #0x8] @ 0x223f80c, (=#0x247c)
	str     r0, [r4, r1]
.thumb
branch_223f806: @ 223f806 :thumb
	pop     {r4,pc}
@ 0x223f808

.word 0x240c @ 0x223f808
.word 0x247c @ 0x223f80c
.thumb
Function_223f810: @ 223f810 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x2c]
	mov     r3, #0x8
	mov     r4, r1
	tst     r3, r2
	bne     branch_223f82e
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_223f838
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223f838
.thumb
branch_223f82e: @ 223f82e :thumb
	mov     r0, #0x92
	add     r1, r5, r4
	lsl     r0, r0, #6
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x223f838

.thumb
branch_223f838: @ 223f838 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223f84e
	mov     r0, #0x1
	and     r0, r4
	add     r1, r5, r0
	mov     r0, #0x92
	lsl     r0, r0, #6
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x223f84e

.thumb
branch_223f84e: @ 223f84e :thumb
	mov     r0, #0x92
	add     r1, r5, r4
	lsl     r0, r0, #6
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x223f858


.incbin "./baserom/overlay/overlay_0016.bin", 0x4718, 0x223f904 - 0x223f858


.thumb
Function_223f904: @ 223f904 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	bl      Function_2025f58
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      Function_2077550
	ldr     r1, [pc, #0x18] @ 0x223f934, (=#0x226e564)
	lsl     r0, r0, #2
	ldrb    r1, [r1, r4]
	mov     r4, r1
	mul     r4, r0
	mov     r0, r6
	bl      Function_2025f74
	cmp     r4, r0
	bls     branch_223f930
	mov     r4, r0
.thumb
branch_223f930: @ 223f930 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223f934

.word 0x226e564 @ 0x223f934
.thumb
Function_223f938: @ 223f938 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	lsl     r0, r6, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x34]
	bl      Function_2263ae4
	mov     r4, r0
	ldr     r1, [r5, #0x30]
	mov     r0, r5
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_225b45c
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_223dfac
	mov     r6, r0
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x84
	tst     r1, r0
	bne     branch_223f97e
	mov     r1, #0x1
	tst     r1, r4
	bne     branch_223f976
	sub     r0, #0x4a
	cmp     r0, #0x1
	bhi     branch_223f97e
.thumb
branch_223f976: @ 223f976 :thumb
	ldr     r0, [r5, #0x60]
	mov     r1, r6
	bl      Function_20272a4
.thumb
branch_223f97e: @ 223f97e :thumb
	mov     r0, #0x1
	tst     r0, r4
	bne     branch_223f99e
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x67
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_223f99e
	ldr     r0, [r5, #0x60]
	mov     r1, r6
	bl      Function_202736c
.thumb
branch_223f99e: @ 223f99e :thumb
	pop     {r4-r6,pc}
@ 0x223f9a0


.incbin "./baserom/overlay/overlay_0016.bin", 0x4860, 0x223f9e0 - 0x223f9a0


.thumb
Function_223f9e0: @ 223f9e0 :thumb
	ldr     r3, [pc, #0x8] @ 0x223f9ec, (=#0x2026f9d)
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x60]
	lsr     r1, r1, #16
	bx      r3
@ 0x223f9ea


.align 2


.word 0x2026f9d @ 0x223f9ec

.incbin "./baserom/overlay/overlay_0016.bin", 0x48b0, 0x22405fc - 0x223f9f0


.thumb
Function_22405fc: @ 22405fc :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x44] @ 0x2240644, (=#0x226e72c)
	mov     r5, r0
	mov     r4, r1
.thumb
branch_2240604: @ 2240604 :thumb
	mov     r2, r4
	add     r2, #0xb4
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	lsl     r2, r2, #2
	add     r3, r4, r2
	mov     r2, #0x27
	lsl     r2, r2, #8
	ldr     r2, [r3, r2]
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r7, r2]
	blx     r2
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x2240648, (=#0x3154)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2240636
	mov     r0, r5
	bl      Function_223df0c
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2240604
.thumb
branch_2240636: @ 2240636 :thumb
	ldr     r1, [pc, #0x10] @ 0x2240648, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	bic     r2, r0
	str     r2, [r4, r1]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2240644

.word 0x226e72c @ 0x2240644
.word 0x3154 @ 0x2240648
.thumb
Function_224064c: @ 224064c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2264a8c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2240664

.thumb
Function_2240664: @ 2240664 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	cmp     r0, #0x0
	beq     branch_224068a
	cmp     r0, #0x3
	beq     branch_22406d6
	cmp     r0, #0x4
	beq     branch_22406a8
.thumb
branch_224068a: @ 224068a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22406d6
.thumb
branch_2240690: @ 2240690 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264ab4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240690
	b       branch_22406d6
@ 0x22406a8

.thumb
branch_22406a8: @ 22406a8 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22406d6
	mov     r7, #0x1
.thumb
branch_22406b0: @ 22406b0 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x20] @ 0x22406dc, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_22406d0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264ab4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
.thumb
branch_22406d0: @ 22406d0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22406b0
.thumb
branch_22406d6: @ 22406d6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22406da


.align 2


.word 0x195 @ 0x22406dc
.thumb
Function_22406e0: @ 22406e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	cmp     r0, #0x6
	bhi     branch_2240718
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r0, r6, #2
	lsl     r2, r7, #3
	lsl     r2, r5, #0
	lsl     r6, r5, #1
	lsl     r4, r1, #0
	lsl     r4, r0, #5
.thumb
branch_2240718: @ 2240718 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2240734
.thumb
branch_224071e: @ 224071e :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264bb4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_224071e
.thumb
branch_2240734: @ 2240734 :thumb
	b       branch_2240898
@ 0x2240736


.incbin "./baserom/overlay/overlay_0016.bin", 0x55f6, 0x2240898 - 0x2240736


.thumb
branch_2240898: @ 2240898 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224089c


.incbin "./baserom/overlay/overlay_0016.bin", 0x575c, 0x22408a0 - 0x224089c


.thumb
Function_22408a0: @ 22408a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	cmp     r0, #0x6
	bhi     branch_22408d8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r6, r7, #2
	lsl     r4, r1, #4
	lsl     r0, r6, #0
	lsl     r0, r7, #1
	lsl     r4, r1, #0
	lsl     r2, r3, #5
.thumb
branch_22408d8: @ 22408d8 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22408fa
	mov     r6, r5
.thumb
branch_22408e0: @ 22408e0 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, r6
	bl      Function_2264ce8
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_22408e0
.thumb
branch_22408fa: @ 22408fa :thumb
	b       branch_2240a72
@ 0x22408fc


.incbin "./baserom/overlay/overlay_0016.bin", 0x57bc, 0x2240a72 - 0x22408fc


.thumb
branch_2240a72: @ 2240a72 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240a76


.incbin "./baserom/overlay/overlay_0016.bin", 0x5936, 0x2240a7c - 0x2240a76


.thumb
Function_2240a7c: @ 2240a7c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	bl      Function_223df1c
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r2, r0
	beq     branch_2240aa4
	cmp     r2, #0x3
	beq     branch_2240abc
	cmp     r2, #0x4
	beq     branch_2240ae6
	b       branch_2240b1e
@ 0x2240aa4

.thumb
branch_2240aa4: @ 2240aa4 :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
.thumb
branch_2240aaa: @ 2240aaa :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240aaa
	b       branch_2240b30
@ 0x2240abc

.thumb
branch_2240abc: @ 2240abc :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
.thumb
branch_2240ac2: @ 2240ac2 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_223df14
	ldr     r1, [pc, #0x68] @ 0x2240b34, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240ade
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
.thumb
branch_2240ade: @ 2240ade :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240ac2
	b       branch_2240b30
@ 0x2240ae6

.thumb
branch_2240ae6: @ 2240ae6 :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
.thumb
branch_2240aec: @ 2240aec :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_223df14
	ldr     r1, [pc, #0x3c] @ 0x2240b34, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2240b16
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [pc, #0x30] @ 0x2240b38, (=#0x3108)
	ldrb    r1, [r6, r1]
	tst     r0, r1
	bne     branch_2240b16
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
.thumb
branch_2240b16: @ 2240b16 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240aec
	b       branch_2240b30
@ 0x2240b1e

.thumb
branch_2240b1e: @ 2240b1e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2264ef8
.thumb
branch_2240b30: @ 2240b30 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240b34

.word 0x195 @ 0x2240b34
.word 0x3108 @ 0x2240b38
.thumb
Function_2240b3c: @ 2240b3c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_2265108
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2240b66


.align 2, 0


.thumb
Function_2240b68: @ 2240b68 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	cmp     r0, #0x0
	beq     branch_2240b8e
	cmp     r0, #0x3
	beq     branch_2240bf2
	cmp     r0, #0x4
	beq     branch_2240c32
.thumb
branch_2240b8e: @ 2240b8e :thumb
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_2240bc0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	ldr     r7, [pc, #0xdc] @ 0x2240c80, (=#0x195)
.thumb
branch_2240ba2: @ 2240ba2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldrb    r0, [r0, r7]
	cmp     r0, #0x4
	beq     branch_2240bb8
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
.thumb
branch_2240bb8: @ 2240bb8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240ba2
	b       branch_2240c7c
@ 0x2240bc0

.thumb
branch_2240bc0: @ 2240bc0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x8
.thumb
branch_2240bc8: @ 2240bc8 :thumb
	mov     r0, r4
	bl      Function_223df0c
	tst     r0, r7
	bne     branch_2240be2
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240be2
	cmp     r5, #0x1
	bgt     branch_2240c7c
.thumb
branch_2240be2: @ 2240be2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240bc8
	b       branch_2240c7c
@ 0x2240bf2

.thumb
branch_2240bf2: @ 2240bf2 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x1
.thumb
branch_2240bfa: @ 2240bfa :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x7c] @ 0x2240c80, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_2240c2a
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240c2a
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240c7c
.thumb
branch_2240c2a: @ 2240c2a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240bfa
	b       branch_2240c7c
@ 0x2240c32

.thumb
branch_2240c32: @ 2240c32 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x1
.thumb
branch_2240c3a: @ 2240c3a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x3c] @ 0x2240c80, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2240c76
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240c76
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2240c76
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240c7c
.thumb
branch_2240c76: @ 2240c76 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240c3a
.thumb
branch_2240c7c: @ 2240c7c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240c80

.word 0x195 @ 0x2240c80
.thumb
Function_2240c84: @ 2240c84 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [sp, #0x0]
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	bl      Function_2248ad0
	mov     r7, r0
	cmp     r5, #0x0
	beq     branch_2240cb4
	cmp     r5, #0x3
	beq     branch_2240ce8
	cmp     r5, #0x4
	beq     branch_2240d2a
.thumb
branch_2240cb4: @ 2240cb4 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
.thumb
branch_2240cba: @ 2240cba :thumb
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240cd6
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240cd6
	cmp     r5, #0x1
	bgt     branch_2240d76
.thumb
branch_2240cd6: @ 2240cd6 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240cba
	b       branch_2240d76
@ 0x2240ce8

.thumb
branch_2240ce8: @ 2240ce8 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
.thumb
branch_2240cee: @ 2240cee :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x94] @ 0x2240d8c, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240d22
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240d22
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240d76
.thumb
branch_2240d22: @ 2240d22 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240cee
	b       branch_2240d76
@ 0x2240d2a

.thumb
branch_2240d2a: @ 2240d2a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
.thumb
branch_2240d30: @ 2240d30 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x50] @ 0x2240d8c, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2240d70
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240d70
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2240d70
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240d76
.thumb
branch_2240d70: @ 2240d70 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240d30
.thumb
branch_2240d76: @ 2240d76 :thumb
	ldr     r1, [pc, #0x18] @ 0x2240d90, (=#0x3154)
	ldr     r0, [sp, #0x0]
	ldr     r2, [r0, r1]
	mov     r0, #0x1
	bic     r2, r0
	mov     r0, #0x1
	orr     r2, r0
	ldr     r0, [sp, #0x0]
	str     r2, [r0, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240d8c

.word 0x195 @ 0x2240d8c
.word 0x3154 @ 0x2240d90
.thumb
Function_2240d94: @ 2240d94 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	cmp     r0, #0xc
	bhi     branch_2240dd8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r2, r1, #1
	lsl     r2, r1, #2
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r6, r2, #3
	lsl     r2, r0, #4
	lsl     r6, r5, #4
	lsl     r6, r2, #5
.thumb
branch_2240dd8: @ 2240dd8 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240e08
	mov     r7, #0x8
.thumb
branch_2240de0: @ 2240de0 :thumb
	mov     r0, r4
	bl      Function_223df0c
	tst     r0, r7
	bne     branch_2240dfa
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240dfa
	cmp     r6, #0x1
	bgt     branch_2240e08
.thumb
branch_2240dfa: @ 2240dfa :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240de0
.thumb
branch_2240e08: @ 2240e08 :thumb
	b       branch_2240f3c
@ 0x2240e0a


.incbin "./baserom/overlay/overlay_0016.bin", 0x5cca, 0x2240f3c - 0x2240e0a


.thumb
branch_2240f3c: @ 2240f3c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240f40


.incbin "./baserom/overlay/overlay_0016.bin", 0x5e00, 0x2240f44 - 0x2240f40


.thumb
Function_2240f44: @ 2240f44 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r7
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r7
	bl      Function_2248ad0
	mov     r7, r0
	cmp     r6, #0xc
	bhi     branch_2240f92
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r0, #1
	lsl     r6, r6, #1
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r4, r5, #2
	lsl     r2, r3, #3
	lsl     r0, r1, #4
	lsl     r2, r6, #4
.thumb
branch_2240f92: @ 2240f92 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240fb8
.thumb
branch_2240f98: @ 2240f98 :thumb
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240fa8
	cmp     r6, #0x1
	bgt     branch_2240fb8
.thumb
branch_2240fa8: @ 2240fa8 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240f98
.thumb
branch_2240fb8: @ 2240fb8 :thumb
	b       branch_22410d4
@ 0x2240fba


.incbin "./baserom/overlay/overlay_0016.bin", 0x5e7a, 0x22410d4 - 0x2240fba


.thumb
branch_22410d4: @ 22410d4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22410d8


.incbin "./baserom/overlay/overlay_0016.bin", 0x5f98, 0x22410dc - 0x22410d8


.thumb
Function_22410dc: @ 22410dc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	bl      Function_223df1c
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_2241104
.thumb
branch_22410f6: @ 22410f6 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2266460
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_22410f6
.thumb
branch_2241104: @ 2241104 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241108

.thumb
Function_2241108: @ 2241108 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r7
	bl      Function_2248ad0
	mov     r2, r0
	beq     branch_2241130
	cmp     r2, #0x3
	beq     branch_224114a
	cmp     r2, #0x4
	beq     branch_2241176
	b       branch_22411a2
@ 0x2241130

.thumb
branch_2241130: @ 2241130 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
.thumb
branch_2241136: @ 2241136 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241136
	b       branch_22411b6
@ 0x224114a

.thumb
branch_224114a: @ 224114a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
.thumb
branch_2241150: @ 2241150 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x60] @ 0x22411bc, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224116e
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
.thumb
branch_224116e: @ 224116e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241150
	b       branch_22411b6
@ 0x2241176

.thumb
branch_2241176: @ 2241176 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
.thumb
branch_224117c: @ 224117c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x34] @ 0x22411bc, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_224119a
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
.thumb
branch_224119a: @ 224119a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_224117c
	b       branch_22411b6
@ 0x22411a2

.thumb
branch_22411a2: @ 22411a2 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_22651dc
.thumb
branch_22411b6: @ 22411b6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22411ba


.align 2


.word 0x195 @ 0x22411bc
.thumb
Function_22411c0: @ 22411c0 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r5, r0
	bl      Function_223df1c
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [sp, #0x0]
	bl      Function_2248ad0
	mov     r2, r0
	ldr     r4, [pc, #0xa0] @ 0x2241280, (=#0x0)
	beq     branch_22411ea
	cmp     r2, #0x3
	beq     branch_2241204
	cmp     r2, #0x4
	beq     branch_2241236
	b       branch_2241268
@ 0x22411ea

.thumb
branch_22411ea: @ 22411ea :thumb
	cmp     r7, #0x0
	ble     branch_224127c
	mov     r6, r4
.thumb
branch_22411f0: @ 22411f0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_22651dc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_22411f0
	b       branch_224127c
@ 0x2241204

.thumb
branch_2241204: @ 2241204 :thumb
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_224127c
.thumb
branch_224120a: @ 224120a :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_223df14
	ldr     r1, [pc, #0x70] @ 0x2241284, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224122e
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_22651dc
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_224122e: @ 224122e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r7
	blt     branch_224120a
	b       branch_224127c
@ 0x2241236

.thumb
branch_2241236: @ 2241236 :thumb
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_224127c
.thumb
branch_224123c: @ 224123c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_223df14
	ldr     r1, [pc, #0x3c] @ 0x2241284, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2241260
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_22651dc
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_2241260: @ 2241260 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r7
	blt     branch_224123c
	b       branch_224127c
@ 0x2241268

.thumb
branch_2241268: @ 2241268 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_224a984
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r3, r4
	bl      Function_22651dc
.thumb
branch_224127c: @ 224127c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241280

.word 0x0 @ 0x2241280
.word 0x195 @ 0x2241284
.thumb
Function_2241288: @ 2241288 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r7
	bl      Function_2248ad0
	mov     r2, r0
	beq     branch_22412b0
	cmp     r2, #0x3
	beq     branch_22412c6
	cmp     r2, #0x4
	beq     branch_22412fc
	b       branch_2241324
@ 0x22412b0

.thumb
branch_22412b0: @ 22412b0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334
.thumb
branch_22412b6: @ 22412b6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22412b6
	b       branch_2241334
@ 0x22412c6

.thumb
branch_22412c6: @ 22412c6 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334
.thumb
branch_22412cc: @ 22412cc :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x60] @ 0x2241338, (=#0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_22412f4
	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0x54] @ 0x224133c, (=#0x3108)
	ldrb    r1, [r7, r1]
	tst     r0, r1
	bne     branch_22412f4
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314
.thumb
branch_22412f4: @ 22412f4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22412cc
	b       branch_2241334
@ 0x22412fc

.thumb
branch_22412fc: @ 22412fc :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334
	mov     r7, #0x1
.thumb
branch_2241304: @ 2241304 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x28] @ 0x2241338, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_224131c
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314
.thumb
branch_224131c: @ 224131c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241304
	b       branch_2241334
@ 0x2241324

.thumb
branch_2241324: @ 2241324 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_2265314
.thumb
branch_2241334: @ 2241334 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241338

.word 0x195 @ 0x2241338
.word 0x3108 @ 0x224133c
.thumb
Function_2241340: @ 2241340 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_2251fc8
	cmp     r0, #0x0
	beq     branch_2241358
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	b       branch_224135e
@ 0x2241358

.thumb
branch_2241358: @ 2241358 :thumb
	mov     r0, r4
	bl      Function_225201c
.thumb
branch_224135e: @ 224135e :thumb
	ldr     r1, [pc, #0x10] @ 0x2241370, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241370

.word 0x3154 @ 0x2241370
.thumb
Function_2241374: @ 2241374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	ldr     r1, [r5, #0x64]
	mov     r7, r0
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_224138c
	mov     r4, #0x0
	b       branch_22413a0
@ 0x224138c

.thumb
branch_224138c: @ 224138c :thumb
	ldr     r0, [pc, #0x130] @ 0x22414c0, (=#0x2160)
	ldr     r4, [r5, r0]
	cmp     r4, #0x0
	bne     branch_22413a0
	ldr     r0, [pc, #0x12c] @ 0x22414c4, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x128] @ 0x22414c8, (=#0x3e2)
	ldrb    r4, [r1, r0]
.thumb
branch_22413a0: @ 22413a0 :thumb
	ldr     r0, [r5, #0x6c]
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r7
	bl      Function_223e208
	mov     r3, #0x6
	lsl     r3, r3, #6
	mov     r6, r0
	ldr     r0, [r5, r3]
	ldr     r1, [pc, #0x114] @ 0x22414cc, (=#0x2154)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r1]
	ldr     r2, [pc, #0x108] @ 0x22414c4, (=#0x3044)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x64]
	lsl     r4, r6, #2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	add     r4, r5, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	add     r3, #0x3c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldr     r2, [r5, r2]
	ldr     r3, [r4, r3]
	mov     r0, r7
	mov     r1, r5
	bl      Function_225a280
	ldr     r1, [pc, #0xd8] @ 0x22414d0, (=#0x2144)
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0xc
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0]
	mul     r0, r2
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r0, #0x62
	bne     branch_224142c
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [pc, #0xb4] @ 0x22414d0, (=#0x2144)
	add     r0, #0x64
	ldr     r1, [r5, r1]
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	ldr     r1, [pc, #0xa4] @ 0x22414d0, (=#0x2144)
	str     r0, [r5, r1]
.thumb
branch_224142c: @ 224142c :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r0, #0x69
	bne     branch_224145a
	ldr     r0, [pc, #0x94] @ 0x22414d0, (=#0x2144)
	ldr     r2, [r5, #0x64]
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x22414d4, (=#0x2dcc)
	ldr     r0, [r2, r0]
	lsl     r0, r0, #5
	lsr     r0, r0, #28
	add     r0, #0xa
	mul     r0, r1
	mov     r1, #0xa
	blx     Function_20e2178
	ldr     r1, [pc, #0x78] @ 0x22414d0, (=#0x2144)
	str     r0, [r5, r1]
.thumb
branch_224145a: @ 224145a :thumb
	ldr     r2, [r5, #0x64]
	mov     r1, #0xc0
	mov     r0, r2
	mul     r0, r1
	ldr     r2, [pc, #0x70] @ 0x22414d4, (=#0x2dcc)
	add     r3, r5, r0
	ldr     r3, [r3, r2]
	lsl     r3, r3, #1
	lsr     r3, r3, #31
	beq     branch_22414ba
	add     r2, #0x10
	add     r3, r5, r2
	add     r1, #0xb4
	ldr     r2, [r5, r1]
	ldr     r1, [r3, r0]
	cmp     r2, r1
	bne     branch_2241480
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r3, r0]
.thumb
branch_2241480: @ 2241480 :thumb
	ldr     r2, [r5, #0x64]
	mov     r1, #0xc0
	mov     r0, r2
	mul     r0, r1
	add     r1, #0xb4
	ldr     r3, [r5, r1]
	ldr     r1, [pc, #0x48] @ 0x22414d8, (=#0x2ddc)
	add     r2, r5, r0
	ldr     r2, [r2, r1]
	sub     r2, r3, r2
	cmp     r2, #0x2
	bge     branch_22414ae
	ldr     r0, [pc, #0x34] @ 0x22414d0, (=#0x2144)
	ldr     r1, [r5, r0]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	ldr     r1, [pc, #0x28] @ 0x22414d0, (=#0x2144)
	add     sp, #0x1c
	str     r0, [r5, r1]
	pop     {r4-r7,pc}
@ 0x22414ae

.thumb
branch_22414ae: @ 22414ae :thumb
	sub     r1, #0x10
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0x24] @ 0x22414dc, (=#0xbfffffff)
	and     r1, r2
	str     r1, [r3, r0]
.thumb
branch_22414ba: @ 22414ba :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22414be


.align 2


.word 0x2160 @ 0x22414c0
.word 0x3044 @ 0x22414c4
.word 0x3e2 @ 0x22414c8
.word 0x2154 @ 0x22414cc
.word 0x2144 @ 0x22414d0
.word 0x2dcc @ 0x22414d4
.word 0x2ddc @ 0x22414d8
.word 0xbfffffff @ 0x22414dc
.thumb
Function_22414e0: @ 22414e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2241374
	ldr     r2, [pc, #0x1c] @ 0x2241514, (=#0x2144)
	mov     r0, r5
	ldr     r2, [r4, r2]
	mov     r1, r4
	bl      Function_225aeb8
	ldr     r1, [pc, #0x10] @ 0x2241514, (=#0x2144)
	str     r0, [r4, r1]
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241514

.word 0x2144 @ 0x2241514
.thumb
Function_2241518: @ 2241518 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2241374
	ldr     r1, [pc, #0x10] @ 0x2241540, (=#0x2144)
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224153e


.align 2


.word 0x2144 @ 0x2241540
.thumb
Function_2241544: @ 2241544 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [pc, #0x2c] @ 0x2241580, (=#0x213c)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2241564
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265b68
.thumb
branch_2241564: @ 2241564 :thumb
	ldr     r1, [pc, #0x18] @ 0x2241580, (=#0x213c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	orr     r0, r2
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r2, [r4, r0]
	mov     r0, #0x4
	orr     r2, r0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224157e


.align 2


.word 0x213c @ 0x2241580
.thumb
Function_2241584: @ 2241584 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	add     r1, sp, #0x24
	bl      Function_224abec
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x24
	add     r3, sp, #0x0
	bl      Function_224acb8
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2265ba0
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4,r5,pc}
@ 0x22415b8

.thumb
Function_22415b8: @ 22415b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	add     r1, sp, #0x24
	bl      Function_224abec
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x24
	add     r3, sp, #0x0
	bl      Function_224acb8
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x1]
	mov     r0, #0x80
	orr     r0, r2
	strb    r0, [r1, #0x1]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2265ba0
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4,r5,pc}
@ 0x22415f6


.align 2, 0


.thumb
Function_22415f8: @ 22415f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r1, r4
	add     r4, #0xf4
	mov     r0, r5
	mov     r2, r4
	bl      Function_2265ba0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241616


.align 2, 0


.thumb
Function_2241618: @ 2241618 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_224abec
	mov     r1, r4
	add     r4, #0xf4
	mov     r0, r5
	add     r2, sp, #0x0
	mov     r3, r4
	bl      Function_224acb8
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2241644

.thumb
Function_2241644: @ 2241644 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0x24
	bl      Function_224abec
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x24
	add     r3, sp, #0x0
	bl      Function_224acb8
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x1]
	mov     r0, #0x40
	orr     r0, r2
	strb    r0, [r1, #0x1]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	str     r0, [sp, #0x20]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2265ba0
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r3-r6,pc}
@ 0x2241696


.align 2, 0


.thumb
Function_2241698: @ 2241698 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	cmp     r0, #0xff
	bne     branch_22416b6
	mov     r0, #0x49
	lsl     r0, r0, #2
	b       branch_22416b8
@ 0x22416b6

.thumb
branch_22416b6: @ 22416b6 :thumb
	ldr     r0, [pc, #0x50] @ 0x2241708, (=#0x3044)
.thumb
branch_22416b8: @ 22416b8 :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [pc, #0x4c] @ 0x224170c, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	tst     r0, r1
	bne     branch_22416d4
	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_22416d8
.thumb
branch_22416d4: @ 22416d4 :thumb
	cmp     r4, #0x90
	bne     branch_22416ee
.thumb
branch_22416d8: @ 22416d8 :thumb
	ldr     r1, [pc, #0x30] @ 0x224170c, (=#0x213c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	lsl     r0, r0, #14
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2265bbc
.thumb
branch_22416ee: @ 22416ee :thumb
	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x0
	bne     branch_2241702
	ldr     r2, [pc, #0x14] @ 0x2241710, (=#0x123)
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248b08
.thumb
branch_2241702: @ 2241702 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241706


.align 2


.word 0x3044 @ 0x2241708
.word 0x213c @ 0x224170c
.word 0x123 @ 0x2241710
.thumb
Function_2241714: @ 2241714 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	cmp     r6, #0xff
	bne     branch_2241746
	mov     r0, #0x49
	lsl     r0, r0, #2
	b       branch_2241748
@ 0x2241746

.thumb
branch_2241746: @ 2241746 :thumb
	ldr     r0, [pc, #0x6c] @ 0x22417b4, (=#0x3044)
.thumb
branch_2241748: @ 2241748 :thumb
	ldr     r0, [r4, r0]
	mov     r1, r4
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r5
	mov     r2, r7
	bl      Function_224a984
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r7, r0
	ldr     r0, [pc, #0x50] @ 0x22417b8, (=#0x213c)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	tst     r0, r1
	bne     branch_224177c
	mov     r0, r5
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_2241780
.thumb
branch_224177c: @ 224177c :thumb
	cmp     r6, #0x90
	bne     branch_224179a
.thumb
branch_2241780: @ 2241780 :thumb
	ldr     r1, [pc, #0x34] @ 0x22417b8, (=#0x213c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #14
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	str     r7, [sp, #0x0]
	bl      Function_2265bec
.thumb
branch_224179a: @ 224179a :thumb
	mov     r0, r5
	bl      Function_223edac
	cmp     r0, #0x0
	bne     branch_22417ae
	ldr     r2, [pc, #0x14] @ 0x22417bc, (=#0x123)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248b08
.thumb
branch_22417ae: @ 22417ae :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22417b4

.word 0x3044 @ 0x22417b4
.word 0x213c @ 0x22417b8
.word 0x123 @ 0x22417bc
.thumb
Function_22417c0: @ 22417c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	ldr     r2, [pc, #0x10] @ 0x22417f0, (=#0x216c)
	mov     r1, r0
	ldr     r2, [r4, r2]
	mov     r0, r5
	bl      Function_2265c1c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22417ee


.align 2


.word 0x216c @ 0x22417f0
.thumb
Function_22417f4: @ 22417f4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	ldr     r0, [pc, #0x70] @ 0x2241888, (=#0x2d8c)
	mov     r7, r2
	add     r5, r4, r0
	mov     r0, #0xc0
	mul     r7, r0
	ldr     r0, [pc, #0x6c] @ 0x224188c, (=#0x215c)
	ldr     r6, [r5, r7]
	ldr     r3, [r4, r0]
	add     r1, r3, r6
	cmp     r1, #0x0
	bgt     branch_2241832
	neg     r1, r6
	sub     r0, #0x14
	str     r1, [r4, r0]
	b       branch_2241836
@ 0x2241832

.thumb
branch_2241832: @ 2241832 :thumb
	sub     r0, #0x14
	str     r3, [r4, r0]
.thumb
branch_2241836: @ 2241836 :thumb
	ldr     r0, [pc, #0x58] @ 0x2241890, (=#0x2148)
	ldr     r6, [r4, r0]
	cmp     r6, #0x0
	bge     branch_224184c
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r3, r4, r0
	lsl     r1, r2, #2
	ldr     r0, [r3, r1]
	sub     r0, r0, r6
	str     r0, [r3, r1]
.thumb
branch_224184c: @ 224184c :thumb
	mov     r0, #0xc0
	mov     r3, r2
	mul     r3, r0
	ldr     r0, [pc, #0x34] @ 0x2241888, (=#0x2d8c)
	ldr     r6, [pc, #0x34] @ 0x224188c, (=#0x215c)
	add     r1, r4, r0
	ldr     r0, [r1, r3]
	ldr     r6, [r4, r6]
	add     r0, r0, r6
	str     r0, [r1, r3]
	ldr     r1, [r1, r3]
	cmp     r1, #0x0
	bge     branch_224186c
	mov     r0, #0x0
	str     r0, [r5, r7]
	b       branch_224187a
@ 0x224186c

.thumb
branch_224186c: @ 224186c :thumb
	add     r0, r4, r3
	ldr     r3, [pc, #0x18] @ 0x2241888, (=#0x2d8c)
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r0, [r0, r3]
	cmp     r1, r0
	bls     branch_224187a
	str     r0, [r5, r7]
.thumb
branch_224187a: @ 224187a :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2253ec0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241886


.align 2


.word 0x2d8c @ 0x2241888
.word 0x215c @ 0x224188c
.word 0x2148 @ 0x2241890
.thumb
Function_2241894: @ 2241894 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265c38
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22418c0

.thumb
Function_22418c0: @ 22418c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_224a984
	mov     r4, r0
	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	ldr     r1, [pc, #0x34] @ 0x224191c, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2241916
	str     r4, [r5, #0x74]
	bl      Function_20787cc
	ldr     r1, [pc, #0x28] @ 0x2241920, (=#0x213c)
	lsl     r0, r0, #24
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r2, r5, r0
	lsl     r1, r4, #2
	ldr     r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224b850
.thumb
branch_2241916: @ 2241916 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224191a


.align 2


.word 0x2d8c @ 0x224191c
.word 0x213c @ 0x2241920
.thumb
Function_2241924: @ 2241924 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r2, [r4, #0x74]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265d98
	ldr     r0, [r4, #0x74]
	bl      Function_20787cc
	ldr     r2, [pc, #0x3c] @ 0x2241980, (=#0x213c)
	lsl     r3, r0, #24
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r1, [r4, r2]
	eor     r0, r3
	and     r0, r1
	str     r0, [r4, r2]
	ldr     r0, [r4, #0x74]
	bl      Function_20787cc
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	lsl     r0, r0, #28
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x74]
	mov     r2, #0x27
	lsl     r0, r0, #4
	add     r0, r4, r0
	add     r1, #0x68
	str     r2, [r0, r1]
	ldr     r2, [r4, #0x74]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2254744
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224197e


.align 2


.word 0x213c @ 0x2241980
.thumb
Function_2241984: @ 2241984 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x4
	tst     r0, r1
	bne     branch_22419be
	ldr     r0, [pc, #0x68] @ 0x2241a10, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	ldr     r0, [pc, #0x68] @ 0x2241a14, (=#0xc03)
	tst     r0, r1
	bne     branch_22419b8
	bl      Function_2022798
	cmp     r0, #0x0
	beq     branch_22419be
.thumb
branch_22419b8: @ 22419b8 :thumb
	mov     r0, r5
	add     r0, #0xf0
	str     r6, [r0, #0x0]
.thumb
branch_22419be: @ 22419be :thumb
	ldr     r1, [r4, #0x2c]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_22419d4
	ldr     r0, [pc, #0x50] @ 0x2241a18, (=#0x240c)
	ldr     r1, [r4, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22419d4
	mov     r4, #0x2
	b       branch_22419d6
@ 0x22419d4

.thumb
branch_22419d4: @ 22419d4 :thumb
	mov     r4, #0x1
.thumb
branch_22419d6: @ 22419d6 :thumb
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	cmp     r6, r0
	ble     branch_22419f4
	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      Function_2248af0
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	b       branch_22419f6
@ 0x22419f4

.thumb
branch_22419f4: @ 22419f4 :thumb
	mov     r1, #0x0
.thumb
branch_22419f6: @ 22419f6 :thumb
	mov     r0, r5
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x2241a1c, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241a0e


.align 2


.word 0x21bf67c @ 0x2241a10
.word 0xc03 @ 0x2241a14
.word 0x240c @ 0x2241a18
.word 0x3154 @ 0x2241a1c
.thumb
Function_2241a20: @ 2241a20 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2265eac
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241a58

.thumb
Function_2241a58: @ 2241a58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      Function_2248b10
	cmp     r7, #0x6
	bhi     branch_2241af6
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r6, r2, #0
	lsl     r0, r4, #0
	lsl     r2, r5, #0
	lsl     r4, r6, #0
	lsl     r6, r7, #0
	lsl     r0, r1, #1
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	beq     branch_2241af6
	mov     r5, #0x0
	b       branch_2241af6
@ 0x2241aba


.incbin "./baserom/overlay/overlay_0016.bin", 0x697a, 0x2241af6 - 0x2241aba


.thumb
branch_2241af6: @ 2241af6 :thumb
	cmp     r5, #0x0
	beq     branch_2241b02
	mov     r0, r6
	mov     r1, r5
	bl      Function_2248af0
.thumb
branch_2241b02: @ 2241b02 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2241b08

.thumb
Function_2241b08: @ 2241b08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      Function_224a984
	mov     r1, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r7, #0x6
	bhi     branch_2241bac
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r4, r2, #0
	lsl     r4, r3, #0
	lsl     r4, r4, #0
	lsl     r4, r5, #0
	lsl     r4, r6, #0
	lsl     r4, r7, #0
	cmp     r0, r4
	beq     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac
@ 0x2241b7c


.incbin "./baserom/overlay/overlay_0016.bin", 0x6a3c, 0x2241bac - 0x2241b7c


.thumb
branch_2241bac: @ 2241bac :thumb
	cmp     r5, #0x0
	beq     branch_2241bb8
	mov     r0, r6
	mov     r1, r5
	bl      Function_2248af0
.thumb
branch_2241bb8: @ 2241bb8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2241bbe


.align 2, 0


.thumb
Function_2241bc0: @ 2241bc0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265ecc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241bda


.align 2, 0


.thumb
Function_2241bdc: @ 2241bdc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248b00
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241bfc

.thumb
Function_2241bfc: @ 2241bfc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r2, [pc, #0x14] @ 0x2241c20, (=#0x3044)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #0x1e
	lsl     r2, r2, #4
	add     r3, r4, r2
	ldr     r2, [pc, #0xc] @ 0x2241c24, (=#0x3de)
	ldrh    r2, [r3, r2]
	bl      Function_2248b00
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241c20

.word 0x3044 @ 0x2241c20
.word 0x3de @ 0x2241c24
.thumb
Function_2241c28: @ 2241c28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	ldr     r2, [pc, #0x80] @ 0x2241cc0, (=#0x213c)
	mov     r1, #0x1
	ldr     r3, [r4, r2]
	bic     r3, r1
	str     r3, [r4, r2]
	ldr     r3, [r4, r2]
	ldr     r1, [pc, #0x78] @ 0x2241cc4, (=#0xffffbfff)
	and     r1, r3
	mov     r3, #0x49
	lsl     r3, r3, #2
	str     r1, [r4, r2]
	ldr     r2, [r4, r3]
	ldr     r1, [pc, #0x70] @ 0x2241cc8, (=#0x3044)
	cmp     r0, #0x0
	str     r2, [r4, r1]
	bne     branch_2241c98
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r3, [r4, r3]
	ldr     r2, [r4, #0x64]
	lsl     r3, r3, #16
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_2253954
	str     r0, [r4, #0x6c]
	mov     r3, #0x49
	lsl     r3, r3, #2
	ldr     r3, [r4, r3]
	ldr     r2, [r4, #0x64]
	lsl     r3, r3, #16
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_2253c98
	ldr     r0, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x34] @ 0x2241ccc, (=#0x21ac)
	str     r2, [r1, r0]
.thumb
branch_2241c98: @ 2241c98 :thumb
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0xff
	bne     branch_2241cae
	mov     r2, #0x26
	str     r2, [r4, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	add     r2, #0xf3
	bl      Function_2248b00
	b       branch_2241cba
@ 0x2241cae

.thumb
branch_2241cae: @ 2241cae :thumb
	ldr     r2, [pc, #0x18] @ 0x2241cc8, (=#0x3044)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	bl      Function_2248b00
.thumb
branch_2241cba: @ 2241cba :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2241cc0

.word 0x213c @ 0x2241cc0
.word 0xffffbfff @ 0x2241cc4
.word 0x3044 @ 0x2241cc8
.word 0x21ac @ 0x2241ccc
.thumb
Function_2241cd0: @ 2241cd0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_223df0c
	mov     r1, #0x1
	lsl     r1, r1, #10
	tst     r0, r1
	bne     branch_2241cfa
	mov     r0, r5
	bl      Function_223ebec
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2241d02
.thumb
branch_2241cfa: @ 2241cfa :thumb
	ldr     r0, [pc, #0x30] @ 0x2241d2c, (=#0x2150)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2241d26
@ 0x2241d02

.thumb
branch_2241d02: @ 2241d02 :thumb
	ldr     r3, [r4, #0x6c]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_225b45c
	ldr     r1, [pc, #0x20] @ 0x2241d30, (=#0x214c)
	ldr     r1, [r4, r1]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [r4, #0x64]
	ldr     r3, [r4, #0x6c]
	mov     r0, r5
	mov     r1, r4
	bl      Function_225aee4
	ldr     r1, [pc, #0x8] @ 0x2241d2c, (=#0x2150)
	str     r0, [r4, r1]
.thumb
branch_2241d26: @ 2241d26 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2241d2c

.word 0x2150 @ 0x2241d2c
.word 0x214c @ 0x2241d30
.thumb
Function_2241d34: @ 2241d34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r7, r0
	bl      Function_223df0c
	mov     r4, r0
	ldr     r1, [r5, #0x74]
	mov     r0, r7
	bl      Function_223df14
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [pc, #0x148] @ 0x2241ea8, (=#0x195)
	ldrb    r2, [r6, r0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_2241d6e
	mov     r0, #0xa9
	lsl     r0, r0, #2
	tst     r0, r4
	beq     branch_2241d70
.thumb
branch_2241d6e: @ 2241d6e :thumb
	b       branch_2241e9c
@ 0x2241d70

.thumb
branch_2241d70: @ 2241d70 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r4, r0
	mov     r0, r7
	bl      Function_223df20
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2241dfe
.thumb
branch_2241d88: @ 2241d88 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_223dfac
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2241dec
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2241dec
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [r5, #0x74]
	asr     r1, r1, #1
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	add     r1, r5, r1
	add     r1, #0xa4
	ldr     r1, [r1, #0x0]
	tst     r0, r1
	beq     branch_2241dcc
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_2241dcc: @ 2241dcc :thumb
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_225b0fc
	cmp     r0, #0x33
	bne     branch_2241dec
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_2241dec: @ 2241dec :thumb
	mov     r0, r7
	mov     r1, #0x0
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df20
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_2241d88
.thumb
branch_2241dfe: @ 2241dfe :thumb
	ldr     r1, [r5, #0x74]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r0, [r1, r0]
	mov     r1, #0x9
	bl      Function_20759f0
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r2, [r5, #0x74]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2241eac, (=#0x2d74)
	ldrb    r0, [r2, r0]
	mul     r0, r1
	mov     r1, #0x7
	blx     Division
	lsl     r0, r0, #16
	ldr     r1, [sp, #0x0]
	lsr     r0, r0, #16
	cmp     r1, #0x0
	beq     branch_2241e76
	lsr     r4, r0, #1
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	blx     Division
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241e56
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_2241e56: @ 2241e56 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	blx     Division
	mov     r1, r5
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241ea2
	mov     r0, #0x1
	add     r5, #0xa0
	str     r0, [r5, #0x0]
	b       branch_2241ea2
@ 0x2241e76

.thumb
branch_2241e76: @ 2241e76 :thumb
	ldr     r1, [sp, #0x4]
	blx     Division
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241e94
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_2241e94: @ 2241e94 :thumb
	mov     r0, #0x0
	add     r5, #0xa0
	str     r0, [r5, #0x0]
	b       branch_2241ea2
@ 0x2241e9c

.thumb
branch_2241e9c: @ 2241e9c :thumb
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2241ea2: @ 2241ea2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2241ea8

.word 0x195 @ 0x2241ea8
.word 0x2d74 @ 0x2241eac
.thumb
Function_2241eb0: @ 2241eb0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0x5
	mov     r1, #0x58
	bl      Function_2018144
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r2, #0x0
	str     r5, [r0, #0x0]
	ldr     r0, [r4, r1]
	str     r4, [r0, #0x4]
	ldr     r0, [r4, r1]
	str     r2, [r0, #0x28]
	ldr     r0, [r4, r1]
	str     r2, [r0, #0x48]
	ldr     r0, [pc, #0xc] @ 0x2241eec, (=#0x2248e75)
	ldr     r1, [r4, r1]
	bl      Function_200d9e8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241eea


.align 2


.word 0x2248e75 @ 0x2241eec
.thumb
Function_2241ef0: @ 2241ef0 :thumb
	push    {r4,lr}
	mov     r0, #0x5e
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2241f06
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
.thumb
branch_2241f06: @ 2241f06 :thumb
	ldr     r1, [pc, #0x10] @ 0x2241f18, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241f18

.word 0x3154 @ 0x2241f18
.thumb
Function_2241f1c: @ 2241f1c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241f32


.align 2, 0


.thumb
Function_2241f34: @ 2241f34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x8]
	mov     r6, r0
	bl      Function_223df1c
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r4, #0x0
	mov     r5, r4
	cmp     r7, #0x0
	ble     branch_2241f8c
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
.thumb
branch_2241f56: @ 2241f56 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2241f80
	mov     r0, r5
	bl      Function_20787cc
	orr     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2265a8c
.thumb
branch_2241f80: @ 2241f80 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	cmp     r5, r7
	blt     branch_2241f56
.thumb
branch_2241f8c: @ 2241f8c :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2241fe4
.thumb
branch_2241f92: @ 2241f92 :thumb
	mov     r0, r6
	bl      Function_223df0c
	cmp     r0, #0x7
	bne     branch_2241fcc
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e258
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	ldr     r0, [sp, #0x10]
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	mov     r0, r5
	bl      Function_20787cc
	orr     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_22666e0
	b       branch_2241fde
@ 0x2241fcc

.thumb
branch_2241fcc: @ 2241fcc :thumb
	mov     r0, r5
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	mov     r0, r6
	mov     r1, r5
	bl      Function_22666e0
.thumb
branch_2241fde: @ 2241fde :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2241f92
.thumb
branch_2241fe4: @ 2241fe4 :thumb
	mov     r0, #0x0
	cmp     r7, #0x0
	ble     branch_2242006
	mov     r1, #0x4f
	ldr     r4, [sp, #0x8]
	lsl     r1, r1, #2
	mov     r2, #0x1
.thumb
branch_2241ff2: @ 2241ff2 :thumb
	ldr     r3, [r4, r1]
	tst     r3, r2
	beq     branch_2241ffe
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x78]
	b       branch_2242006
@ 0x2241ffe

.thumb
branch_2241ffe: @ 2241ffe :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r0, r7
	blt     branch_2241ff2
.thumb
branch_2242006: @ 2242006 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224200c

.thumb
Function_224200c: @ 224200c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r5, r1
	bl      Function_223df1c
	mov     r7, r0
	mov     r6, #0x0
	mov     r0, r6
	cmp     r7, #0x0
	ble     branch_224203a
	mov     r4, #0x4f
	mov     r1, r5
	lsl     r4, r4, #2
	mov     r2, #0x1
.thumb
branch_224202a: @ 224202a :thumb
	ldr     r3, [r1, r4]
	tst     r3, r2
	beq     branch_2242032
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2242032: @ 2242032 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, r7
	blt     branch_224202a
.thumb
branch_224203a: @ 224203a :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_22420b6
	str     r5, [sp, #0x8]
	str     r5, [sp, #0x4]
.thumb
branch_2242044: @ 2242044 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22420a0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259ab4
	cmp     r0, #0x0
	beq     branch_22420a0
	mov     r0, #0x23
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #8
	ldrb    r0, [r1, r0]
	add     r1, r5, r4
	.hword  0x1e76 @ sub r6, r6, #0x1
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldr     r0, [pc, #0xb8] @ 0x2242128, (=#0x21a0)
	strb    r2, [r1, r0]
	mov     r0, r4
	bl      Function_20787cc
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	lsl     r0, r0, #24
	tst     r0, r1
	bne     branch_22420a0
	mov     r0, r4
	bl      Function_20787cc
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	lsl     r0, r0, #24
	orr     r1, r0
	mov     r0, #0x85
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_22666e0
.thumb
branch_22420a0: @ 22420a0 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [sp, #0x4]
	cmp     r4, r7
	blt     branch_2242044
.thumb
branch_22420b6: @ 22420b6 :thumb
	cmp     r6, #0x0
	bne     branch_2242112
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_22420fe
	str     r5, [sp, #0xc]
	mov     r6, r5
.thumb
branch_22420c4: @ 22420c4 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22420ec
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259ab4
	cmp     r0, #0x0
	beq     branch_22420ec
	mov     r2, #0x23
	lsl     r2, r2, #8
	ldrb    r2, [r6, r2]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223f500
.thumb
branch_22420ec: @ 22420ec :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r6, r6, r0
	cmp     r4, r7
	blt     branch_22420c4
.thumb
branch_22420fe: @ 22420fe :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x24] @ 0x224212c, (=#0xf0ffffff)
	and     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
.thumb
branch_2242112: @ 2242112 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2242130, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242126


.align 2


.word 0x21a0 @ 0x2242128
.word 0xf0ffffff @ 0x224212c
.word 0x3154 @ 0x2242130
.thumb
Function_2242134: @ 2242134 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	cmp     r0, #0x1
	beq     branch_2242156
	cmp     r0, #0x6
	beq     branch_224215a
	cmp     r0, #0x12
	beq     branch_224215e
	b       branch_2242160
@ 0x2242156

.thumb
branch_2242156: @ 2242156 :thumb
	ldr     r4, [r5, #0x64]
	b       branch_2242160
@ 0x224215a

.thumb
branch_224215a: @ 224215a :thumb
	ldr     r4, [r5, #0x78]
	b       branch_2242160
@ 0x224215e

.thumb
branch_224215e: @ 224215e :thumb
	ldr     r4, [r5, #0x6c]
.thumb
branch_2242160: @ 2242160 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r4, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, r4
	str     r1, [r3, r2]
	bl      Function_20787cc
	ldr     r3, [pc, #0x4c] @ 0x22421c4, (=#0x3108)
	mov     r2, #0x0
	mvn     r2, r2
	eor     r0, r2
	ldrb    r1, [r5, r3]
	mov     r2, r4
	and     r0, r1
	ldr     r1, [pc, #0x40] @ 0x22421c8, (=#0x21a0)
	strb    r0, [r5, r3]
	add     r0, r5, r1
	.hword  0x1f09 @ sub r1, r1, #0x4
	add     r6, r5, r1
	ldrb    r1, [r0, r4]
	strb    r1, [r6, r4]
	mov     r1, #0x6
	strb    r1, [r0, r4]
	ldrb    r3, [r6, r4]
	mov     r0, r7
	mov     r1, r5
	bl      Function_225177c
	ldrb    r3, [r6, r4]
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_225a200
	ldr     r0, [pc, #0x1c] @ 0x22421cc, (=#0x2e4c)
	mov     r2, r4
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x22421d0, (=#0x3122)
	strh    r1, [r5, r0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_225433c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22421c2


.align 2


.word 0x3108 @ 0x22421c4
.word 0x21a0 @ 0x22421c8
.word 0x2e4c @ 0x22421cc
.word 0x3122 @ 0x22421d0
.thumb
Function_22421d4: @ 22421d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	bl      Function_223df1c
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_2242216
	mov     r2, #0x4f
	mov     r1, r5
	lsl     r2, r2, #2
	mov     r3, #0x1
.thumb
branch_22421fc: @ 22421fc :thumb
	ldr     r6, [r1, r2]
	tst     r6, r3
	beq     branch_224220e
	str     r0, [r5, #0x78]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
	b       branch_2242216
@ 0x224220e

.thumb
branch_224220e: @ 224220e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, r4
	blt     branch_22421fc
.thumb
branch_2242216: @ 2242216 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224221a


.align 2, 0


.thumb
Function_224221c: @ 224221c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, #0x5
	mov     r1, #0x58
	bl      Function_2018144
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r2, #0x0
	str     r5, [r0, #0x0]
	ldr     r0, [r4, r1]
	str     r4, [r0, #0x4]
	ldr     r0, [r4, r1]
	str     r2, [r0, #0x28]
	ldr     r0, [r4, r1]
	str     r6, [r0, #0x24]
	mov     r0, r1
	sub     r0, #0x50
	ldr     r3, [r4, r0]
	ldr     r0, [r4, r1]
	str     r3, [r0, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2242268, (=#0x2249b81)
	ldr     r1, [r4, r1]
	bl      Function_200d9e8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2242268

.word 0x2249b81 @ 0x2242268
.thumb
Function_224226c: @ 224226c :thumb
	push    {r4,lr}
	mov     r0, #0x5e
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2242282
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
.thumb
branch_2242282: @ 2242282 :thumb
	ldr     r1, [pc, #0x10] @ 0x2242294, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242294

.word 0x3154 @ 0x2242294
.thumb
Function_2242298: @ 2242298 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r0, [pc, #0x4c] @ 0x2242304, (=#0x217d)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2242300
	cmp     r4, #0x0
	bne     branch_22422f0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x5c
	bne     branch_22422d2
	mov     r4, #0x5
	b       branch_22422f0
@ 0x22422d2

.thumb
branch_22422d2: @ 22422d2 :thumb
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x3
	and     r0, r1
	cmp     r0, #0x2
	bge     branch_22422e4
	add     r4, r0, #0x2
	b       branch_22422f0
@ 0x22422e4

.thumb
branch_22422e4: @ 22422e4 :thumb
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x3
	and     r0, r1
	add     r4, r0, #0x2
.thumb
branch_22422f0: @ 22422f0 :thumb
	lsl     r0, r4, #24
	ldr     r1, [pc, #0x14] @ 0x2242308, (=#0x217c)
	lsr     r2, r0, #24
	strb    r2, [r5, r1]
	add     r0, r1, #0x1
	strb    r2, [r5, r0]
	add     r1, #0xc
	str     r7, [r5, r1]
.thumb
branch_2242300: @ 2242300 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242304

.word 0x217d @ 0x2242304
.word 0x217c @ 0x2242308
.thumb
Function_224230c: @ 224230c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2248b10
	mov     r4, r0
	cmp     r6, #0x14
	bhi     branch_22423f6
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r6, r4, #2
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	lsl     r4, r6, #0
	lsl     r4, r7, #0
	lsl     r4, r0, #1
	lsl     r2, r2, #1
	lsl     r4, r3, #1
	lsl     r0, r5, #1
	lsl     r0, r6, #1
	lsl     r0, r7, #1
	lsl     r2, r0, #2
	lsl     r0, r1, #2
	lsl     r6, r2, #2
	lsl     r6, r3, #2
	str     r5, [r4, #0x0]
	b       branch_22423fa
@ 0x224237c


.incbin "./baserom/overlay/overlay_0016.bin", 0x723c, 0x22423f6 - 0x224237c


.thumb
branch_22423f6: @ 22423f6 :thumb
	bl      Function_2022974
.thumb
branch_22423fa: @ 22423fa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22423fe


.align 2, 0


.thumb
Function_2242400: @ 2242400 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xb5
	mov     r5, r1
	lsl     r0, r0, #6
	add     r2, r5, r0
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r6, r2, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248ad0
	ldr     r1, [pc, #0x328] @ 0x2242764, (=#0x213c)
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x324] @ 0x2242768, (=#0xfffdffff)
	and     r2, r0
	str     r2, [r5, r1]
	mov     r1, r5
	add     r1, #0x8c
	ldr     r4, [r1, #0x0]
	cmp     r4, #0x2e
	blt     branch_2242460
	asr     r7, r0, #17
	mov     r0, #0x4e
	mov     r1, #0xd
	lsl     r0, r0, #2
	sub     r4, #0x2e
	str     r1, [r5, r0]
	b       branch_2242490
@ 0x2242460

.thumb
branch_2242460: @ 2242460 :thumb
	cmp     r4, #0x27
	blt     branch_2242472
	mov     r0, #0x4e
	mov     r1, #0xc
	lsl     r0, r0, #2
	sub     r4, #0x27
	mov     r7, #0x2
	str     r1, [r5, r0]
	b       branch_2242490
@ 0x2242472

.thumb
branch_2242472: @ 2242472 :thumb
	cmp     r4, #0x16
	blt     branch_2242484
	asr     r7, r0, #18
	mov     r0, #0x4e
	mov     r1, #0xd
	lsl     r0, r0, #2
	sub     r4, #0x16
	str     r1, [r5, r0]
	b       branch_2242490
@ 0x2242484

.thumb
branch_2242484: @ 2242484 :thumb
	mov     r0, #0x4e
	mov     r1, #0xc
	lsl     r0, r0, #2
	sub     r4, #0xf
	mov     r7, #0x1
	str     r1, [r5, r0]
.thumb
branch_2242490: @ 2242490 :thumb
	cmp     r7, #0x0
	bgt     branch_2242496
	b       branch_22425ce
@ 0x2242496

.thumb
branch_2242496: @ 2242496 :thumb
	add     r1, r4, #0x1
	add     r6, #0x18
	add     r0, r6, r1
	str     r0, [sp, #0x4]
	ldsb    r0, [r6, r1]
	cmp     r0, #0xc
	bne     branch_22424fa
	ldr     r1, [pc, #0x2bc] @ 0x2242764, (=#0x213c)
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #16
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_22424c6
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_22429f4
@ 0x22424c6

.thumb
branch_22424c6: @ 22424c6 :thumb
	mov     r0, r5
	mov     r1, #0x8e
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_22429f4
@ 0x22424fa

.thumb
branch_22424fa: @ 22424fa :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2242546
	mov     r0, r5
	ldr     r1, [pc, #0x264] @ 0x224276c, (=#0x26e)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x27
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x23c] @ 0x2242770, (=#0x2d67)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	add     r1, #0x40
	str     r0, [r5, r1]
	b       branch_22425b2
@ 0x2242546

.thumb
branch_2242546: @ 2242546 :thumb
	cmp     r0, #0x5
	bne     branch_2242582
	mov     r1, #0xbd
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2d
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	sub     r1, #0x28
	str     r0, [r5, r1]
	b       branch_22425b2
@ 0x2242582

.thumb
branch_2242582: @ 2242582 :thumb
	cmp     r7, #0x1
	bne     branch_224258a
	ldr     r1, [pc, #0x1ec] @ 0x2242774, (=#0x2ee)
	b       branch_224258c
@ 0x224258a

.thumb
branch_224258a: @ 224258a :thumb
	ldr     r1, [pc, #0x1ec] @ 0x2242778, (=#0x2f1)
.thumb
branch_224258c: @ 224258c :thumb
	mov     r0, r5
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	add     r0, r4, #0x1
	add     r5, #0xfc
	str     r0, [r5, #0x0]
.thumb
branch_22425b2: @ 22425b2 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldsb    r0, [r0, r1]
	add     r2, r0, r7
	ldr     r0, [sp, #0x4]
	strb    r2, [r0, #0x0]
	ldsb    r0, [r0, r1]
	cmp     r0, #0xc
	bgt     branch_22425c6
	b       branch_22429f4
@ 0x22425c6

.thumb
branch_22425c6: @ 22425c6 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc
	strb    r1, [r0, #0x0]
	b       branch_22429f4
@ 0x22425ce

.thumb
branch_22425ce: @ 22425ce :thumb
	mov     r0, r5
	add     r0, #0x90
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #26
	tst     r1, r0
	beq     branch_22425de
	b       branch_2242958
@ 0x22425de

.thumb
branch_22425de: @ 22425de :thumb
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	ldr     r2, [r5, #0x64]
	cmp     r2, r1
	bne     branch_22425ec
	b       branch_22428a0
@ 0x22425ec

.thumb
branch_22425ec: @ 22425ec :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223e208
	lsl     r0, r0, #3
	mov     r1, #0x71
	add     r0, r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsl     r0, r0, #17
	lsr     r0, r0, #29
	beq     branch_224262a
	mov     r0, r5
	sub     r1, #0xb3
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x224262a

.thumb
branch_224262a: @ 224262a :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x1d
	bl      Function_2255ab4
	cmp     r0, #0x1
	beq     branch_2242652
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x49
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22426f4
.thumb
branch_2242652: @ 2242652 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22426b6
	mov     r0, r5
	ldr     r1, [pc, #0x11c] @ 0x224277c, (=#0x2d7)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x35
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0xe4] @ 0x2242770, (=#0x2d67)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0xc4] @ 0x2242770, (=#0x2d67)
	add     r2, r5, r2
	ldrb    r0, [r2, r0]
	add     r1, #0x44
	str     r0, [r5, r1]
	b       branch_22426ee
@ 0x22426b6

.thumb
branch_22426b6: @ 22426b6 :thumb
	mov     r0, r5
	ldr     r1, [pc, #0xc4] @ 0x2242780, (=#0x29d)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xb
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x88] @ 0x2242770, (=#0x2d67)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
.thumb
branch_22426ee: @ 22426ee :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x22426f4

.thumb
branch_22426f4: @ 22426f4 :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x33
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224270e
	add     r0, r4, #0x1
	cmp     r0, #0x6
	beq     branch_2242726
.thumb
branch_224270e: @ 224270e :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x34
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22427f4
	cmp     r4, #0x0
	bne     branch_22427f4
.thumb
branch_2242726: @ 2242726 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22427ac
	mov     r0, r5
	ldr     r1, [pc, #0x48] @ 0x224277c, (=#0x2d7)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x35
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x10] @ 0x2242770, (=#0x2d67)
	b       branch_2242784
@ 0x2242762


.align 2


.word 0x213c @ 0x2242764
.word 0xfffdffff @ 0x2242768
.word 0x26e @ 0x224276c
.word 0x2d67 @ 0x2242770
.word 0x2ee @ 0x2242774
.word 0x2f1 @ 0x2242778
.word 0x2d7 @ 0x224277c
.word 0x29d @ 0x2242780
.thumb
branch_2242784: @ 2242784 :thumb
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x258] @ 0x22429fc, (=#0x2d67)
	add     r2, r5, r2
	ldrb    r0, [r2, r0]
	add     r1, #0x44
	b       branch_22427ec
@ 0x22427ac

.thumb
branch_22427ac: @ 22427ac :thumb
	mov     r1, #0xb
	mov     r0, r5
	lsl     r1, r1, #6
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x27
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x21c] @ 0x22429fc, (=#0x2d67)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	add     r1, #0x40
.thumb
branch_22427ec: @ 22427ec :thumb
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x22427f4

.thumb
branch_22427f4: @ 22427f4 :thumb
	add     r0, r4, #0x1
	add     r1, r6, r0
	mov     r0, #0x18
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_224285e
	ldr     r1, [pc, #0x1fc] @ 0x2242a00, (=#0x213c)
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #16
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_2242826
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242826

.thumb
branch_2242826: @ 2242826 :thumb
	mov     r0, r5
	mov     r1, #0x91
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224285e

.thumb
branch_224285e: @ 224285e :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x13
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2242882
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2242882
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x2242882

.thumb
branch_2242882: @ 2242882 :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x174] @ 0x2242a04, (=#0x2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r1
	beq     branch_2242908
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x22428a0

.thumb
branch_22428a0: @ 22428a0 :thumb
	add     r1, r4, #0x1
	add     r2, r6, r1
	mov     r1, #0x18
	ldsb    r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2242908
	ldr     r1, [pc, #0x150] @ 0x2242a00, (=#0x213c)
	lsr     r0, r0, #10
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_22428d0
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22428d0

.thumb
branch_22428d0: @ 22428d0 :thumb
	mov     r0, r5
	mov     r1, #0x91
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242908

.thumb
branch_2242908: @ 2242908 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_2242926
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2242926
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242926

.thumb
branch_2242926: @ 2242926 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2242944
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2242944
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242944

.thumb
branch_2242944: @ 2242944 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2242958
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242958

.thumb
branch_2242958: @ 2242958 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22429ac
	mov     r0, r5
	ldr     r1, [pc, #0xa0] @ 0x2242a08, (=#0x296)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x36
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x70] @ 0x22429fc, (=#0x2d67)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	add     r2, r4, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_22429e0
@ 0x22429ac

.thumb
branch_22429ac: @ 22429ac :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r7, r0
	bne     branch_22429b8
	ldr     r1, [pc, #0x54] @ 0x2242a0c, (=#0x2fa)
	b       branch_22429ba
@ 0x22429b8

.thumb
branch_22429b8: @ 22429b8 :thumb
	ldr     r1, [pc, #0x54] @ 0x2242a10, (=#0x2fd)
.thumb
branch_22429ba: @ 22429ba :thumb
	mov     r0, r5
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	add     r0, r4, #0x1
	add     r5, #0xfc
	str     r0, [r5, #0x0]
.thumb
branch_22429e0: @ 22429e0 :thumb
	add     r6, #0x18
	add     r1, r4, #0x1
	ldsb    r0, [r6, r1]
	add     r0, r0, r7
	strb    r0, [r6, r1]
	ldsb    r0, [r6, r1]
	cmp     r0, #0x0
	bge     branch_22429f4
	mov     r0, #0x0
	strb    r0, [r6, r1]
.thumb
branch_22429f4: @ 22429f4 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22429fa


.align 2


.word 0x2d67 @ 0x22429fc
.word 0x213c @ 0x2242a00
.word 0x2db0 @ 0x2242a04
.word 0x296 @ 0x2242a08
.word 0x2fa @ 0x2242a0c
.word 0x2fd @ 0x2242a10
.thumb
Function_2242a14: @ 2242a14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r5
	bl      Function_224a984
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2252060
	str     r0, [sp, #0xc]
	cmp     r7, #0x14
	bhi     branch_2242b00
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r2, #2
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	lsl     r2, r6, #0
	lsl     r0, r7, #0
	lsl     r6, r7, #0
	lsl     r2, r1, #1
	lsl     r2, r2, #1
	lsl     r4, r3, #1
	lsl     r2, r4, #1
	lsl     r0, r5, #1
	lsl     r2, r6, #1
	lsl     r0, r7, #1
	lsl     r4, r0, #2
	lsl     r2, r1, #2
	str     r4, [sp, #0xc]
	b       branch_2242b04
@ 0x2242a9c


.incbin "./baserom/overlay/overlay_0016.bin", 0x795c, 0x2242b00 - 0x2242a9c


.thumb
branch_2242b00: @ 2242b00 :thumb
	bl      Function_2022974
.thumb
branch_2242b04: @ 2242b04 :thumb
	cmp     r6, #0x1a
	bne     branch_2242b1a
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_224b928
.thumb
branch_2242b1a: @ 2242b1a :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0xc
	bl      Function_22523e8
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	bl      Function_2253ec0
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242b36


.align 2, 0


.thumb
Function_2242b38: @ 2242b38 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_224a984
	ldr     r1, [pc, #0xc] @ 0x2242b70, (=#0x218c)
	add     r2, r5, r1
	lsl     r1, r0, #2
	ldr     r0, [r2, r1]
	orr     r0, r4
	str     r0, [r2, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242b70

.word 0x218c @ 0x2242b70
.thumb
Function_2242b74: @ 2242b74 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265ee8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242baa


.align 2, 0


.thumb
Function_2242bac: @ 2242bac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	cmp     r4, #0x0
	bne     branch_2242c22
	ldr     r0, [sp, #0x0]
	bl      Function_223df1c
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2242c64
.thumb
branch_2242bee: @ 2242bee :thumb
	cmp     r7, #0x0
	bne     branch_2242c0c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r6, r0
	bne     branch_2242c18
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
	b       branch_2242c64
@ 0x2242c0c

.thumb
branch_2242c0c: @ 2242c0c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r6, r0
	beq     branch_2242c64
.thumb
branch_2242c18: @ 2242c18 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2242bee
	b       branch_2242c64
@ 0x2242c22

.thumb
branch_2242c22: @ 2242c22 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r4, r0
	cmp     r7, #0x0
	bne     branch_2242c4c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r6, r0
	bne     branch_2242c64
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
	b       branch_2242c64
@ 0x2242c4c

.thumb
branch_2242c4c: @ 2242c4c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r6, r0
	beq     branch_2242c64
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
.thumb
branch_2242c64: @ 2242c64 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2242c6a


.align 2, 0


.thumb
Function_2242c6c: @ 2242c6c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r7
	bl      Function_223f4bc
	add     r1, r4, #0x1
	blx     Division
	mov     r0, #0x4d
	add     r1, r6, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242ca2


.align 2, 0


.thumb
Function_2242ca4: @ 2242ca4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_2248b10
	mov     r4, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_2248b10
	mov     r1, r0
	cmp     r6, #0x14
	bhi     branch_2242db2
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r0, r5, #0
	lsl     r6, r5, #0
	lsl     r0, r7, #0
	lsl     r2, r0, #1
	lsl     r4, r1, #1
	lsl     r4, r3, #1
	lsl     r6, r4, #1
	lsl     r2, r6, #1
	lsl     r6, r7, #1
	lsl     r2, r1, #2
	lsl     r4, r2, #2
	lsl     r2, r3, #2
	lsl     r2, r5, #2
	lsl     r4, r6, #2
	ldr     r0, [r1, #0x0]
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d22


.incbin "./baserom/overlay/overlay_0016.bin", 0x7be2, 0x2242db2 - 0x2242d22


.thumb
branch_2242db2: @ 2242db2 :thumb
	bl      Function_2022974
.thumb
branch_2242db6: @ 2242db6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242dba


.align 2, 0


.thumb
Function_2242dbc: @ 2242dbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r5, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r0, r7
	mov     r1, r4
	bl      Function_224a984
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2252060
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2248b10
	mov     r1, r0
	cmp     r5, #0x14
	bhi     branch_2242ee2
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r6, r7, #2
	lsl     r0, r5, #0
	lsl     r6, r5, #0
	lsl     r0, r7, #0
	lsl     r2, r0, #1
	lsl     r4, r1, #1
	lsl     r4, r3, #1
	lsl     r6, r4, #1
	lsl     r2, r6, #1
	lsl     r6, r7, #1
	lsl     r2, r1, #2
	lsl     r4, r2, #2
	lsl     r2, r3, #2
	lsl     r2, r5, #2
	lsl     r4, r6, #2
	ldr     r0, [r1, #0x0]
	str     r0, [sp, #0xc]
	b       branch_2242ee6
@ 0x2242e52


.incbin "./baserom/overlay/overlay_0016.bin", 0x7d12, 0x2242ee2 - 0x2242e52


.thumb
branch_2242ee2: @ 2242ee2 :thumb
	bl      Function_2022974
.thumb
branch_2242ee6: @ 2242ee6 :thumb
	cmp     r5, #0x11
	beq     branch_2242f16
	cmp     r6, #0x1a
	bne     branch_2242f00
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	mov     r0, r4
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_224b928
.thumb
branch_2242f00: @ 2242f00 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	add     r3, sp, #0xc
	bl      Function_22523e8
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0
.thumb
branch_2242f16: @ 2242f16 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242f1c

.thumb
Function_2242f1c: @ 2242f1c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2248af0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242f3a


.align 2, 0


.thumb
Function_2242f3c: @ 2242f3c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242f5c

.thumb
Function_2242f5c: @ 2242f5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248b10
	mov     r2, r0
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2242f8a


.align 2, 0


.thumb
Function_2242f8c: @ 2242f8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r4, #0x0
	bl      Function_223df0c
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	lsl     r0, r1, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0xe0] @ 0x224308c, (=#0x3084)
	ldrh    r2, [r2, r0]
	cmp     r2, #0x0
	beq     branch_2242fb6
	mov     r4, r2
	b       branch_2243002
@ 0x2242fb6

.thumb
branch_2242fb6: @ 2242fb6 :thumb
	mov     r2, #0x2
	tst     r2, r7
	beq     branch_2243002
	lsl     r1, r1, #3
	add     r4, r5, r1
	mov     r1, r0
	add     r1, #0xe
	ldrh    r3, [r4, r1]
	mov     r1, r0
	add     r1, #0xc
	ldrh    r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x8
	add     r0, #0xa
	ldrh    r1, [r4, r1]
	ldrh    r0, [r4, r0]
	add     r0, r1, r0
	add     r0, r2, r0
	add     r4, r3, r0
	beq     branch_2243002
	ldr     r7, [pc, #0xb0] @ 0x2243090, (=#0x308c)
.thumb
branch_2242fe0: @ 2242fe0 :thumb
	mov     r0, r6
	bl      Function_223f4bc
	ldr     r1, [r5, #0x64]
	lsl     r3, r0, #30
	lsl     r2, r1, #3
	lsr     r1, r0, #31
	sub     r3, r3, r1
	mov     r0, #0x1e
	ror     r3, r0
	add     r0, r1, r3
	lsl     r1, r0, #1
	add     r0, r5, r2
	add     r0, r1, r0
	ldrh    r4, [r0, r7]
	cmp     r4, #0x0
	beq     branch_2242fe0
.thumb
branch_2243002: @ 2243002 :thumb
	cmp     r4, #0x0
	beq     branch_224306c
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_225b084
	cmp     r0, #0x1
	bne     branch_224306c
	ldr     r1, [pc, #0x7c] @ 0x2243094, (=#0x213c)
	lsl     r3, r4, #16
	ldr     r2, [r5, r1]
	mov     r0, #0x1
	bic     r2, r0
	str     r2, [r5, r1]
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x74] @ 0x2243098, (=#0xffffbfff)
	lsr     r3, r3, #16
	and     r0, r2
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x70] @ 0x224309c, (=#0x3044)
	mov     r1, r5
	str     r4, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	bl      Function_2253954
	str     r0, [r5, #0x6c]
	cmp     r0, #0xff
	bne     branch_2243056
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	add     r2, #0xf3
	bl      Function_2248b00
	b       branch_2243086
@ 0x2243056

.thumb
branch_2243056: @ 2243056 :thumb
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x40] @ 0x22430a0, (=#0x21ac)
	str     r0, [r2, r1]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2248b00
	b       branch_2243086
@ 0x224306c

.thumb
branch_224306c: @ 224306c :thumb
	ldr     r2, [r5, #0x64]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r2
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
.thumb
branch_2243086: @ 2243086 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224308c

.word 0x3084 @ 0x224308c
.word 0x308c @ 0x2243090
.word 0x213c @ 0x2243094
.word 0xffffbfff @ 0x2243098
.word 0x3044 @ 0x224309c
.word 0x21ac @ 0x22430a0
.thumb
Function_22430a4: @ 22430a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_223df1c
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_22430e4
	ldr     r6, [pc, #0x28] @ 0x22430e8, (=#0x2d58)
	mov     r1, #0x6
	mov     r5, r6
	add     r5, #0x58
.thumb
branch_22430c6: @ 22430c6 :thumb
	mov     r7, #0x0
.thumb
branch_22430c8: @ 22430c8 :thumb
	add     r3, r4, r7
	.hword  0x1c7f @ add r7, r7, #0x1
	strb    r1, [r3, r6]
	cmp     r7, #0x8
	blt     branch_22430c8
	ldr     r3, [pc, #0x18] @ 0x22430ec, (=#0x2db0)
	.hword  0x1c52 @ add r2, r2, #0x1
	ldr     r7, [r4, r3]
	ldr     r3, [pc, #0x14] @ 0x22430f0, (=#0xffefffff)
	and     r3, r7
	str     r3, [r4, r5]
	add     r4, #0xc0
	cmp     r2, r0
	blt     branch_22430c6
.thumb
branch_22430e4: @ 22430e4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22430e8

.word 0x2d58 @ 0x22430e8
.word 0x2db0 @ 0x22430ec
.word 0xffefffff @ 0x22430f0
.thumb
Function_22430f4: @ 22430f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253ef0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2243120

.thumb
Function_2243120: @ 2243120 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253f20
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224314c

.thumb
Function_224314c: @ 224314c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265fb8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243182


.align 2, 0


.thumb
Function_2243184: @ 2243184 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265fd8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22431ba


.align 2, 0


.thumb
Function_22431bc: @ 22431bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	mov     r0, #0x5
	mov     r1, #0x6c
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r6, r7
	lsl     r0, r0, #1
	add     r6, #0xa0
	str     r0, [sp, #0x4]
	ldrh    r0, [r6, r0]
	add     r1, sp, #0x8
	bl      Function_207938c
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	ldrh    r0, [r6, r0]
	bl      Function_207939c
	add     r0, sp, #0x8
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x3
	bhi     branch_2243208
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r0, r3, #0
	lsl     r0, r5, #0
	lsl     r2, r7, #0
.thumb
branch_2243208: @ 2243208 :thumb
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x3]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #3
	add     r0, r4, r0
	ldrh    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_224324c
@ 0x224321a


.incbin "./baserom/overlay/overlay_0016.bin", 0x80da, 0x224324c - 0x224321a


.thumb
branch_224324c: @ 224324c :thumb
	ldr     r2, [r7, #0x2c]
	mov     r0, #0x10
	tst     r0, r2
	bne     branch_2243258
	cmp     r2, #0x4b
	bne     branch_224326e
.thumb
branch_2243258: @ 2243258 :thumb
	add     r0, sp, #0x8
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x4c] @ 0x22432ac, (=#0x2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x4c] @ 0x22432b0, (=#0x2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	mul     r5, r1
	b       branch_224329e
@ 0x224326e

.thumb
branch_224326e: @ 224326e :thumb
	mov     r0, #0x2
	tst     r0, r2
	add     r0, sp, #0x8
	beq     branch_224328c
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x30] @ 0x22432ac, (=#0x2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x30] @ 0x22432b0, (=#0x2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	lsl     r1, r1, #1
	mul     r5, r1
	b       branch_224329e
@ 0x224328c

.thumb
branch_224328c: @ 224328c :thumb
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x1c] @ 0x22432ac, (=#0x2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x18] @ 0x22432b0, (=#0x2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	mul     r5, r1
.thumb
branch_224329e: @ 224329e :thumb
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, r5
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x22432aa


.align 2


.word 0x2270b20 @ 0x22432ac
.word 0x2168 @ 0x22432b0
.thumb
Function_22432b4: @ 22432b4 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [pc, #0x6c] @ 0x2243330, (=#0x2420)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_22432fe
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22431bc
	mov     r4, r0
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22432e2
	cmp     r1, #0x4b
	bne     branch_22432ee
.thumb
branch_22432e2: @ 22432e2 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22431bc
	add     r4, r4, r0
.thumb
branch_22432ee: @ 22432ee :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223e16c
	mov     r1, r4
	bl      Function_2025f94
	b       branch_2243316
@ 0x22432fe

.thumb
branch_22432fe: @ 22432fe :thumb
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x48]
	bl      Function_223f904
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223e16c
	mov     r1, r4
	bl      Function_2025fb8
.thumb
branch_2243316: @ 2243316 :thumb
	cmp     r4, #0x0
	beq     branch_2243322
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r4, [r6, r0]
	b       branch_224332a
@ 0x2243322

.thumb
branch_2243322: @ 2243322 :thumb
	mov     r0, #0x13
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r6, r0]
.thumb
branch_224332a: @ 224332a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224332e


.align 2


.word 0x2420 @ 0x2243330
.thumb
Function_2243334: @ 2243334 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_224336c
	cmp     r4, #0xf
	beq     branch_224336c
	cmp     r4, #0x10
	beq     branch_224336c
	mov     r0, r4
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_2243392
.thumb
branch_224336c: @ 224336c :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_224a984
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_2243392
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, r4
	bl      Function_2265ff8
.thumb
branch_2243392: @ 2243392 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243396


.align 2, 0


.thumb
Function_2243398: @ 2243398 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_22433da
	cmp     r4, #0xf
	beq     branch_22433da
	cmp     r4, #0x10
	beq     branch_22433da
	mov     r0, r4
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_224341c
.thumb
branch_22433da: @ 22433da :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_224a984
	mov     r7, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	bl      Function_224a984
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224341c
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224341c
	ldr     r3, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	str     r4, [sp, #0x0]
	bl      Function_2266028
.thumb
branch_224341c: @ 224341c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2243422


.align 2, 0


.thumb
Function_2243424: @ 2243424 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, r6
	bl      Function_2248b10
	mov     r4, r0
	mov     r0, r7
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_2243474
	cmp     r6, #0xf
	beq     branch_2243474
	cmp     r6, #0x10
	beq     branch_2243474
	ldr     r0, [r4, #0x0]
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_224348e
.thumb
branch_2243474: @ 2243474 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224348e
	ldr     r2, [sp, #0x0]
	ldr     r3, [r4, #0x0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_2265ff8
.thumb
branch_224348e: @ 224348e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243492


.align 2, 0


.thumb
Function_2243494: @ 2243494 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x22434c8, (=#0x219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      Function_2266058
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22434c6


.align 2


.word 0x219c @ 0x22434c8
.thumb
Function_22434cc: @ 22434cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x2243500, (=#0x219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      Function_226609c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22434fe


.align 2


.word 0x219c @ 0x2243500
.thumb
Function_2243504: @ 2243504 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_22660e8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2243530

.thumb
Function_2243530: @ 2243530 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2266100
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224355c

.thumb
Function_224355c: @ 224355c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, #0x13
	lsl     r2, r2, #4
	mov     r1, r0
	ldr     r2, [r4, r2]
	mov     r0, r5
	bl      Function_2265fd8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224358c

.thumb
Function_224358c: @ 224358c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x79
	bne     branch_22435be
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248af0
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22435be

.thumb
branch_22435be: @ 22435be :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	ldr     r0, [pc, #0x134] @ 0x22436fc, (=#0x2d4c)
	mov     r6, #0x0
.thumb
branch_22435ca: @ 22435ca :thumb
	ldrh    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_22435d8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r6, #0x4
	blt     branch_22435ca
.thumb
branch_22435d8: @ 22435d8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r6, #0x0
	ble     branch_2243650
	mov     r7, r0
.thumb
branch_22435e2: @ 22435e2 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r4, r0
	add     r2, r7, r0
	ldr     r0, [pc, #0x10c] @ 0x22436fc, (=#0x2d4c)
	ldrh    r0, [r2, r0]
	cmp     r0, #0xa0
	beq     branch_2243644
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x104] @ 0x2243700, (=#0x3e2)
	ldrb    r5, [r2, r0]
	cmp     r5, #0x9
	bne     branch_2243624
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	beq     branch_224361e
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	bne     branch_2243622
.thumb
branch_224361e: @ 224361e :thumb
	mov     r5, #0x7
	b       branch_2243624
@ 0x2243622

.thumb
branch_2243622: @ 2243622 :thumb
	mov     r5, #0x0
.thumb
branch_2243624: @ 2243624 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r5, r0
	beq     branch_2243644
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r5, r0
	bne     branch_2243650
.thumb
branch_2243644: @ 2243644 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r6
	blt     branch_22435e2
.thumb
branch_2243650: @ 2243650 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, r6
	bne     branch_2243660
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248af0
	b       branch_22436f4
@ 0x2243660

.thumb
branch_2243660: @ 2243660 :thumb
	ldr     r7, [pc, #0x98] @ 0x22436fc, (=#0x2d4c)
.thumb
branch_2243662: @ 2243662 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, r6
	blx     Division
	ldr     r2, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r2
	lsl     r1, r1, #1
	add     r0, r4, r0
	add     r0, r1, r0
	ldrh    r0, [r0, r7]
	cmp     r0, #0xa0
	beq     branch_2243662
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x78] @ 0x2243700, (=#0x3e2)
	ldrb    r5, [r1, r0]
	cmp     r5, #0x9
	bne     branch_22436b2
	mov     r1, r2
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	beq     branch_22436ac
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	bne     branch_22436b0
.thumb
branch_22436ac: @ 22436ac :thumb
	mov     r5, #0x7
	b       branch_22436b2
@ 0x22436b0

.thumb
branch_22436b0: @ 22436b0 :thumb
	mov     r5, #0x0
.thumb
branch_22436b2: @ 22436b2 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r5, r0
	beq     branch_2243662
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r5, r0
	beq     branch_2243662
	ldr     r1, [r4, #0x64]
	lsl     r0, r5, #24
	mov     r3, r1
	mov     r2, #0xc0
	mul     r3, r2
	ldr     r1, [pc, #0x24] @ 0x2243704, (=#0x2d64)
	lsr     r0, r0, #24
	add     r3, r4, r3
	strb    r0, [r3, r1]
	ldr     r3, [r4, #0x64]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r6, r3
	mul     r6, r2
	add     r3, r4, r6
	strb    r0, [r3, r1]
	add     r2, #0x70
	str     r5, [r4, r2]
.thumb
branch_22436f4: @ 22436f4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22436fa


.align 2


.word 0x2d4c @ 0x22436fc
.word 0x3e2 @ 0x2243700
.word 0x2d64 @ 0x2243704
.thumb
Function_2243708: @ 2243708 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_2248b10
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      Function_2248b10
	cmp     r7, #0x6
	bhi     branch_22437c0
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r0, r3, #0
	lsl     r4, r4, #0
	lsl     r0, r6, #0
	lsl     r4, r7, #0
	lsl     r0, r1, #1
	lsl     r4, r2, #1
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x2243778


.incbin "./baserom/overlay/overlay_0016.bin", 0x8638, 0x22437c0 - 0x2243778


.thumb
branch_22437c0: @ 22437c0 :thumb
	cmp     r5, #0x0
	beq     branch_22437cc
	mov     r0, r6
	mov     r1, r5
	bl      Function_2248af0
.thumb
branch_22437cc: @ 22437cc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22437d2


.align 2, 0


.thumb
Function_22437d4: @ 22437d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_224a984
	mov     r1, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r3, #0x0
	bl      Function_2252060
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r6
	bl      Function_2248b10
	cmp     r7, #0x6
	bhi     branch_2243894
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r6, r2, #0
	lsl     r0, r4, #0
	lsl     r2, r5, #0
	lsl     r4, r6, #0
	lsl     r6, r7, #0
	lsl     r0, r1, #1
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	beq     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x2243856


.incbin "./baserom/overlay/overlay_0016.bin", 0x8716, 0x2243894 - 0x2243856


.thumb
branch_2243894: @ 2243894 :thumb
	cmp     r5, #0x0
	beq     branch_22438a0
	mov     r0, r6
	mov     r1, r5
	bl      Function_2248af0
.thumb
branch_22438a0: @ 22438a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22438a6


.align 2, 0


.thumb
Function_22438a8: @ 22438a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x34] @ 0x22438f0, (=#0x2168)
	ldr     r2, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r3, r2
	mul     r3, r1
	mov     r1, r0
	sub     r1, #0x1c
	str     r3, [r4, r1]
	mov     r1, r0
	sub     r1, #0x1c
	ldr     r2, [r4, r1]
	ldr     r1, [pc, #0x20] @ 0x22438f4, (=#0xffff)
	cmp     r2, r1
	ble     branch_22438da
	sub     r0, #0x1c
	str     r1, [r4, r0]
.thumb
branch_22438da: @ 22438da :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223e16c
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	bl      Function_2025f94
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22438f0

.word 0x2168 @ 0x22438f0
.word 0xffff @ 0x22438f4
.thumb
Function_22438f8: @ 22438f8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_223e208
	mov     r6, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r6, #2
	ldr     r1, [r3, r2]
	mov     r4, #0x2
	tst     r4, r1
	beq     branch_224393c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
	ldr     r1, [pc, #0x98] @ 0x22439cc, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_22439c8
@ 0x224393c

.thumb
branch_224393c: @ 224393c :thumb
	mov     r4, #0x2
	orr     r1, r4
	str     r1, [r3, r2]
	mov     r1, r0
	add     r1, #0x8
	add     r4, r5, r1
	lsl     r6, r6, #3
	ldr     r2, [r4, r6]
	ldr     r1, [pc, #0x80] @ 0x22439d0, (=#0xfffffc7f)
	add     r0, #0xc4
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r0, [r4, r6]
	mov     r1, #0x60
	bic     r0, r1
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #30
	lsr     r1, r1, #25
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r0, #0x61
	bne     branch_2243990
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [r4, r6]
	ldr     r2, [pc, #0x50] @ 0x22439d0, (=#0xfffffc7f)
	and     r2, r1
	lsl     r1, r1, #22
	lsr     r1, r1, #29
	add     r0, r1, r0
	lsl     r0, r0, #29
	lsr     r0, r0, #22
	orr     r0, r2
	str     r0, [r4, r6]
.thumb
branch_2243990: @ 2243990 :thumb
	mov     r0, r5
	mov     r1, #0x14
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x22439d4, (=#0x3044)
	mov     r2, #0x1
	ldr     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r3, [r5, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_22439c2
	mov     r0, #0xc0
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
	b       branch_22439c8
@ 0x22439c2

.thumb
branch_22439c2: @ 22439c2 :thumb
	mov     r0, #0xbe
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
.thumb
branch_22439c8: @ 22439c8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22439cc

.word 0x216c @ 0x22439cc
.word 0xfffffc7f @ 0x22439d0
.word 0x3044 @ 0x22439d4
.thumb
Function_22439d8: @ 22439d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_223e208
	mov     r6, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r6, #2
	ldr     r1, [r3, r2]
	mov     r4, #0x1
	tst     r4, r1
	beq     branch_2243a1c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
	ldr     r1, [pc, #0x9c] @ 0x2243ab0, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_2243aaa
@ 0x2243a1c

.thumb
branch_2243a1c: @ 2243a1c :thumb
	mov     r4, #0x1
	orr     r1, r4
	add     r0, #0x8
	add     r4, r5, r0
	lsl     r6, r6, #3
	str     r1, [r3, r2]
	ldr     r1, [r4, r6]
	mov     r0, #0x1c
	bic     r1, r0
	mov     r0, #0x14
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r0, [r4, r6]
	mov     r1, #0x3
	bic     r0, r1
	ldr     r2, [r5, #0x64]
	mov     r1, #0x3
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r0, #0x61
	bne     branch_2243a72
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [r4, r6]
	mov     r3, r0
	mov     r0, #0x1c
	mov     r2, r1
	bic     r2, r0
	lsl     r0, r1, #27
	lsr     r0, r0, #29
	add     r0, r0, r3
	lsl     r0, r0, #29
	lsr     r0, r0, #27
	orr     r0, r2
	str     r0, [r4, r6]
.thumb
branch_2243a72: @ 2243a72 :thumb
	mov     r0, r5
	mov     r1, #0x14
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2243ab4, (=#0x3044)
	mov     r2, #0x1
	ldr     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r3, [r5, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_2243aa4
	mov     r0, #0xc4
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
	b       branch_2243aaa
@ 0x2243aa4

.thumb
branch_2243aa4: @ 2243aa4 :thumb
	mov     r0, #0xc2
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
.thumb
branch_2243aaa: @ 2243aaa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243aae


.align 2


.word 0x216c @ 0x2243ab0
.word 0x3044 @ 0x2243ab4
.thumb
Function_2243ab8: @ 2243ab8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	mov     r5, #0x6f
	mov     r2, r0
	lsl     r5, r5, #2
	add     r1, r4, r5
	lsl     r0, r2, #2
	ldr     r6, [r1, r0]
	mov     r3, #0x40
	tst     r3, r6
	beq     branch_2243afc
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
	ldr     r1, [pc, #0x38] @ 0x2243b2c, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r4, r1]
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243b26
@ 0x2243afc

.thumb
branch_2243afc: @ 2243afc :thumb
	mov     r3, #0x40
	orr     r3, r6
	str     r3, [r1, r0]
	add     r5, #0x8
	lsl     r0, r2, #3
	add     r1, r4, r5
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x24] @ 0x2243b30, (=#0xffff8fff)
	and     r3, r2
	mov     r2, #0x5
	lsl     r2, r2, #12
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x18] @ 0x2243b34, (=#0xfffff3ff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #20
	orr     r2, r3
	str     r2, [r1, r0]
.thumb
branch_2243b26: @ 2243b26 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243b2a


.align 2


.word 0x216c @ 0x2243b2c
.word 0xffff8fff @ 0x2243b30
.word 0xfffff3ff @ 0x2243b34
.thumb
Function_2243b38: @ 2243b38 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [pc, #0x1c4] @ 0x2243d0c, (=#0x213c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #10
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	mov     r0, r4
	mov     r3, #0x5
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2243b70
	ldr     r1, [pc, #0x1ac] @ 0x2243d10, (=#0x216c)
	mov     r0, #0x2
	ldr     r2, [r4, r1]
	lsl     r0, r0, #18
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243d08
@ 0x2243b70

.thumb
branch_2243b70: @ 2243b70 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r1, r0]
	mov     r0, #0x18
	tst     r0, r1
	bne     branch_2243bf8
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x63
	beq     branch_2243bf8
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x63
	beq     branch_2243bf8
	ldr     r0, [pc, #0x174] @ 0x2243d14, (=#0x3044)
	mov     r2, #0xc0
	ldr     r0, [r4, r0]
	ldr     r5, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x16c] @ 0x2243d18, (=#0x3e3)
	ldrb    r1, [r1, r0]
	ldr     r0, [r4, #0x64]
	mov     r3, r0
	mul     r3, r2
	add     r0, r4, r3
	ldr     r3, [pc, #0x164] @ 0x2243d1c, (=#0x2d74)
	mul     r2, r5
	add     r2, r4, r2
	ldrb    r0, [r0, r3]
	ldrb    r2, [r2, r3]
	sub     r0, r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r5
	bge     branch_2243bf4
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x13c] @ 0x2243d1c, (=#0x2d74)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	bcc     branch_2243bf4
	mov     r3, #0x1
	b       branch_2243cb2
@ 0x2243bf4

.thumb
branch_2243bf4: @ 2243bf4 :thumb
	mov     r3, #0x0
	b       branch_2243cb2
@ 0x2243bf8

.thumb
branch_2243bf8: @ 2243bf8 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r4, r0
	ldr     r0, [pc, #0x11c] @ 0x2243d20, (=#0x2dcc)
	ldr     r1, [r4, #0x64]
	ldr     r2, [r3, r0]
	lsl     r2, r2, #30
	lsr     r2, r2, #30
	cmp     r1, r2
	bne     branch_2243c18
	sub     r0, #0xc
	ldr     r2, [r3, r0]
	mov     r0, #0x18
	tst     r0, r2
	bne     branch_2243c2e
.thumb
branch_2243c18: @ 2243c18 :thumb
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x63
	beq     branch_2243c2e
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x63
	bne     branch_2243c4c
.thumb
branch_2243c2e: @ 2243c2e :thumb
	ldr     r0, [r4, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r3, [r4, #0x6c]
	add     r0, r4, r2
	ldr     r2, [pc, #0xe0] @ 0x2243d1c, (=#0x2d74)
	mul     r1, r3
	add     r1, r4, r1
	ldrb    r0, [r0, r2]
	ldrb    r1, [r1, r2]
	cmp     r0, r1
	bcc     branch_2243c4c
	mov     r3, #0x1
	b       branch_2243ca6
@ 0x2243c4c

.thumb
branch_2243c4c: @ 2243c4c :thumb
	ldr     r0, [pc, #0xc4] @ 0x2243d14, (=#0x3044)
	mov     r2, #0xc0
	ldr     r0, [r4, r0]
	ldr     r5, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0xbc] @ 0x2243d18, (=#0x3e3)
	ldrb    r1, [r1, r0]
	ldr     r0, [r4, #0x64]
	mov     r3, r0
	mul     r3, r2
	add     r0, r4, r3
	ldr     r3, [pc, #0xb4] @ 0x2243d1c, (=#0x2d74)
	mul     r2, r5
	add     r2, r4, r2
	ldrb    r0, [r0, r3]
	ldrb    r2, [r2, r3]
	sub     r0, r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r5
	bge     branch_2243ca4
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x8c] @ 0x2243d1c, (=#0x2d74)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	bcc     branch_2243ca4
	mov     r3, #0x1
	b       branch_2243ca6
@ 0x2243ca4

.thumb
branch_2243ca4: @ 2243ca4 :thumb
	mov     r3, #0x0
.thumb
branch_2243ca6: @ 2243ca6 :thumb
	ldr     r1, [pc, #0x68] @ 0x2243d10, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #10
	orr     r0, r2
	str     r0, [r4, r1]
.thumb
branch_2243cb2: @ 2243cb2 :thumb
	cmp     r3, #0x0
	beq     branch_2243cd8
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x64] @ 0x2243d24, (=#0x2d8c)
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x64] @ 0x2243d28, (=#0x2144)
	neg     r0, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x28
	ldr     r2, [r4, r0]
	mov     r0, #0x20
	orr     r0, r2
	add     r1, #0x28
	str     r0, [r4, r1]
	b       branch_2243d08
@ 0x2243cd8

.thumb
branch_2243cd8: @ 2243cd8 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x38] @ 0x2243d1c, (=#0x2d74)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	ldr     r1, [pc, #0x1c] @ 0x2243d10, (=#0x216c)
	bcc     branch_2243cfe
	ldr     r2, [r4, r1]
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243d08
@ 0x2243cfe

.thumb
branch_2243cfe: @ 2243cfe :thumb
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #12
	orr     r0, r2
	str     r0, [r4, r1]
.thumb
branch_2243d08: @ 2243d08 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2243d0c

.word 0x213c @ 0x2243d0c
.word 0x216c @ 0x2243d10
.word 0x3044 @ 0x2243d14
.word 0x3e3 @ 0x2243d18
.word 0x2d74 @ 0x2243d1c
.word 0x2dcc @ 0x2243d20
.word 0x2d8c @ 0x2243d24
.word 0x2144 @ 0x2243d28
.thumb
Function_2243d2c: @ 2243d2c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2248b10
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_22563f8
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243d64

.thumb
Function_2243d64: @ 2243d64 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2248b10
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_2248b10
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bge     branch_2243da6
	mov     r5, #0x0
	mvn     r5, r5
	b       branch_2243da8
@ 0x2243da6

.thumb
branch_2243da6: @ 2243da6 :thumb
	mov     r5, #0x1
.thumb
branch_2243da8: @ 2243da8 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	blx     Division
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2243db8
	str     r5, [r4, #0x0]
.thumb
branch_2243db8: @ 2243db8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243dbc

.thumb
Function_2243dbc: @ 2243dbc :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0x108] @ 0x2243ee0, (=#0x307c)
	ldrh    r0, [r1, r0]
	bl      Function_225aff4
	cmp     r0, #0x0
	beq     branch_2243e16
	ldr     r0, [r6, #0x64]
	mov     r2, #0x2
	mov     r3, #0xc0
	mov     r1, r0
	mul     r1, r3
	add     r0, r6, r1
	ldr     r1, [pc, #0xf4] @ 0x2243ee4, (=#0x2db0)
	mov     r12, r0
	ldr     r0, [r0, r1]
	lsl     r2, r2, #20
	tst     r0, r2
	bne     branch_2243e16
	ldr     r0, [r6, #0x6c]
	mov     r4, r0
	mul     r4, r3
	add     r4, r6, r4
	ldr     r4, [r4, r1]
	lsl     r1, r2, #3
	tst     r1, r4
	bne     branch_2243e16
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0xd0] @ 0x2243ee0, (=#0x307c)
	ldrh    r7, [r1, r0]
	cmp     r7, #0x0
	bne     branch_2243e20
.thumb
branch_2243e16: @ 2243e16 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_2248af0
	b       branch_2243edc
@ 0x2243e20

.thumb
branch_2243e20: @ 2243e20 :thumb
	mov     r2, #0x0
	sub     r3, #0xc1
	mov     r4, r12
	mov     r5, r2
.thumb
branch_2243e28: @ 2243e28 :thumb
	ldr     r0, [pc, #0xbc] @ 0x2243ee8, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r7, r0
	beq     branch_2243e50
	mov     r0, r12
	add     r1, r0, r5
	ldr     r0, [pc, #0xb0] @ 0x2243ee8, (=#0x2d4c)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x66
	bne     branch_2243e46
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r3, r0
	bne     branch_2243e46
	mov     r3, r2
.thumb
branch_2243e46: @ 2243e46 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r2, #0x4
	blt     branch_2243e28
.thumb
branch_2243e50: @ 2243e50 :thumb
	cmp     r2, #0x4
	bne     branch_2243ed4
	mov     r4, #0x49
	lsl     r4, r4, #2
	str     r7, [r6, r4]
	ldr     r2, [r6, #0x64]
	mov     r1, #0xc0
	mov     r5, r2
	mul     r5, r1
	add     r5, r6, r5
	lsl     r2, r3, #1
	add     r5, r5, r2
	ldr     r0, [r6, r4]
	ldr     r2, [pc, #0x7c] @ 0x2243ee8, (=#0x2d4c)
	strh    r0, [r5, r2]
	ldr     r0, [r6, r4]
	lsl     r0, r0, #4
	add     r4, r6, r0
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x5
	bcs     branch_2243e80
	b       branch_2243e82
@ 0x2243e80

.thumb
branch_2243e80: @ 2243e80 :thumb
	mov     r0, #0x5
.thumb
branch_2243e82: @ 2243e82 :thumb
	ldr     r4, [r6, #0x64]
	add     r2, #0x20
	mul     r1, r4
	add     r1, r6, r1
	add     r1, r1, r3
	strb    r0, [r1, r2]
	mov     r0, r3
	bl      Function_20787cc
	ldr     r1, [pc, #0x54] @ 0x2243eec, (=#0x2dcc)
	mov     r4, #0xc0
	add     r3, r6, r1
	ldr     r1, [r6, #0x64]
	mov     r5, #0x3c
	mov     r2, r1
	mul     r2, r4
	ldr     r7, [r3, r2]
	mov     r1, r7
	bic     r1, r5
	lsl     r5, r7, #26
	lsr     r5, r5, #28
	orr     r0, r5
	lsl     r0, r0, #28
	lsr     r0, r0, #26
	orr     r0, r1
	str     r0, [r3, r2]
	mov     r0, r4
	add     r0, #0x64
	ldr     r1, [r6, r0]
	mov     r0, r4
	add     r0, #0xc3
	cmp     r1, r0
	bne     branch_2243edc
	ldr     r0, [r6, #0x64]
	mov     r2, r0
	mul     r2, r4
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x20] @ 0x2243ef0, (=#0xffffe3ff)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_2243edc
@ 0x2243ed4

.thumb
branch_2243ed4: @ 2243ed4 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_2248af0
.thumb
branch_2243edc: @ 2243edc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243ee0

.word 0x307c @ 0x2243ee0
.word 0x2db0 @ 0x2243ee4
.word 0x2d4c @ 0x2243ee8
.word 0x2dcc @ 0x2243eec
.word 0xffffe3ff @ 0x2243ef0
.thumb
Function_2243ef4: @ 2243ef4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r4, [pc, #0x48] @ 0x2243f4c, (=#0x2d4c)
.thumb
branch_2243f04: @ 2243f04 :thumb
	mov     r0, r7
	bl      Function_223f4bc
	ldr     r1, [pc, #0x44] @ 0x2243f50, (=#0x1d3)
	blx     Division
	add     r0, r1, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r3, [r6, #0x64]
	mov     r0, #0xc0
	mul     r0, r3
	mov     r1, #0x0
	add     r2, r6, r0
.thumb
branch_2243f20: @ 2243f20 :thumb
	ldrh    r0, [r2, r4]
	cmp     r5, r0
	beq     branch_2243f2e
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x4
	blt     branch_2243f20
.thumb
branch_2243f2e: @ 2243f2e :thumb
	cmp     r1, #0x4
	bne     branch_2243f04
	mov     r2, r3
	mov     r0, r7
	mov     r1, r6
	mov     r3, r5
	bl      Function_225b02c
	cmp     r0, #0x0
	beq     branch_2243f04
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r5, [r6, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243f4c

.word 0x2d4c @ 0x2243f4c
.word 0x1d3 @ 0x2243f50
.thumb
Function_2243f54: @ 2243f54 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	add     r2, r4, r0
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	lsl     r1, r1, #1
	add     r0, r2, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x88] @ 0x2244008, (=#0x307c)
	ldrh    r1, [r2, r1]
	bl      Function_2254ee0
	mov     r3, r0
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	ldr     r7, [pc, #0x7c] @ 0x224400c, (=#0x2de8)
	add     r1, r4, r0
	ldrh    r0, [r1, r7]
	cmp     r0, #0x0
	bne     branch_2243ffa
	cmp     r3, #0x4
	beq     branch_2243ffa
	mov     r0, r7
	add     r1, r1, r3
	sub     r0, #0x7c
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2243ffa
	lsl     r0, r2, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x5c] @ 0x2244008, (=#0x307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2243ffa
	mov     r0, #0xc0
	add     r0, #0x64
	str     r1, [r4, r0]
	mov     r0, #0xc0
	add     r0, #0x64
	ldr     r2, [r4, #0x6c]
	mov     r1, #0xc0
	mul     r1, r2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	strh    r0, [r1, r7]
	mov     r0, r5
	bl      Function_223f4bc
	mov     r1, r7
	sub     r1, #0x20
	add     r3, r4, r1
	ldr     r4, [r4, #0x6c]
	mov     r1, #0xc0
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [r3, r2]
	mov     r4, #0x7
	bic     r1, r4
	lsr     r5, r0, #31
	lsl     r4, r0, #30
	sub     r4, r4, r5
	mov     r0, #0x1e
	ror     r4, r0
	add     r0, r5, r4
	add     r4, r0, #0x3
	mov     r0, #0x7
	and     r0, r4
	orr     r0, r1
	str     r0, [r3, r2]
	b       branch_2244002
@ 0x2243ffa

.thumb
branch_2243ffa: @ 2243ffa :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2244002: @ 2244002 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2244006


.align 2


.word 0x307c @ 0x2244008
.word 0x2de8 @ 0x224400c
.thumb
Function_2244010: @ 2244010 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	lsl     r0, r1, #6
	add     r2, r5, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r4, [r2, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_223e208
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e208
	ldr     r6, [r5, #0x64]
	mov     r3, r0
	lsl     r0, r6, #6
	add     r1, r5, r0
	lsl     r0, r4, #2
	add     r0, r1, r0
	mov     r1, #0x76
	lsl     r1, r1, #2
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	beq     branch_22440d6
	ldr     r0, [sp, #0x4]
	cmp     r0, r3
	beq     branch_22440d6
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2244100, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22440d6
	ldr     r0, [pc, #0x9c] @ 0x2244104, (=#0x2144)
	lsl     r2, r7, #1
	sub     r1, #0x14
	str     r2, [r5, r0]
	add     r1, r5, r1
	lsl     r0, r3, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2244090
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x78] @ 0x2244100, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2244090
	str     r0, [r5, #0x6c]
	b       branch_2244092
@ 0x2244090

.thumb
branch_2244090: @ 2244090 :thumb
	str     r4, [r5, #0x6c]
.thumb
branch_2244092: @ 2244092 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x2244100, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22440ca
	ldr     r0, [sp, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	bl      Function_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x4c] @ 0x2244100, (=#0x2d8c)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22440ca
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	add     r2, #0xf3
	bl      Function_2248b00
.thumb
branch_22440ca: @ 22440ca :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_22440f8
@ 0x22440d6

.thumb
branch_22440d6: @ 22440d6 :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r6
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
	ldr     r1, [pc, #0x18] @ 0x2244108, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_22440f8: @ 22440f8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22440fe


.align 2


.word 0x2d8c @ 0x2244100
.word 0x2144 @ 0x2244104
.word 0x216c @ 0x2244108
.thumb
Function_224410c: @ 224410c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	lsl     r0, r1, #6
	add     r2, r5, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r4, [r2, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_223e208
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e208
	ldr     r6, [r5, #0x64]
	mov     r3, r0
	lsl     r0, r6, #6
	add     r1, r5, r0
	lsl     r0, r4, #2
	add     r0, r1, r0
	mov     r1, #0x1f
	lsl     r1, r1, #4
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	beq     branch_22441d2
	ldr     r0, [sp, #0x4]
	cmp     r0, r3
	beq     branch_22441d2
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x22441fc, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22441d2
	ldr     r0, [pc, #0x9c] @ 0x2244200, (=#0x2144)
	lsl     r2, r7, #1
	sub     r1, #0x2c
	str     r2, [r5, r0]
	add     r1, r5, r1
	lsl     r0, r3, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_224418c
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x78] @ 0x22441fc, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224418c
	str     r0, [r5, #0x6c]
	b       branch_224418e
@ 0x224418c

.thumb
branch_224418c: @ 224418c :thumb
	str     r4, [r5, #0x6c]
.thumb
branch_224418e: @ 224418e :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x22441fc, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22441c6
	ldr     r0, [sp, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	bl      Function_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x4c] @ 0x22441fc, (=#0x2d8c)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22441c6
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	add     r2, #0xf3
	bl      Function_2248b00
.thumb
branch_22441c6: @ 22441c6 :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_22441f4
@ 0x22441d2

.thumb
branch_22441d2: @ 22441d2 :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r6
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
	ldr     r1, [pc, #0x18] @ 0x2244204, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_22441f4: @ 22441f4 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22441fa


.align 2


.word 0x2d8c @ 0x22441fc
.word 0x2144 @ 0x2244200
.word 0x216c @ 0x2244204
.thumb
Function_2244208: @ 2244208 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	add     r2, r5, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	lsl     r1, r1, #1
	add     r0, r2, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0xac] @ 0x22442e0, (=#0x307c)
	ldrh    r1, [r2, r1]
	bl      Function_2254ee0
	ldr     r1, [r5, #0x6c]
	mov     r4, r0
	lsl     r1, r1, #1
	add     r2, r5, r1
	ldr     r1, [pc, #0x9c] @ 0x22442e0, (=#0x307c)
	mov     r0, r5
	ldrh    r1, [r2, r1]
	bl      Function_225b084
	cmp     r0, #0x0
	bne     branch_2244250
	mov     r4, #0x4
.thumb
branch_2244250: @ 2244250 :thumb
	ldr     r0, [r5, #0x6c]
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	ldr     r3, [pc, #0x88] @ 0x22442e4, (=#0x2dec)
	add     r6, r5, r1
	ldrh    r1, [r6, r3]
	cmp     r1, #0x0
	bne     branch_22442ca
	cmp     r4, #0x4
	beq     branch_22442ca
	mov     r1, r3
	add     r6, r6, r4
	sub     r1, #0x80
	ldrb    r1, [r6, r1]
	cmp     r1, #0x0
	beq     branch_22442ca
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x68] @ 0x22442e0, (=#0x307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22442ca
	mov     r0, r2
	add     r0, #0x64
	str     r1, [r5, r0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r2
	add     r0, #0x64
	mov     r6, r1
	mul     r6, r2
	ldr     r0, [r5, r0]
	add     r1, r5, r6
	strh    r0, [r1, r3]
	ldr     r0, [r5, #0x6c]
	mov     r1, r0
	mul     r1, r2
	add     r1, r5, r1
	add     r0, r3, #0x2
	strh    r4, [r1, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	ldr     r1, [pc, #0x40] @ 0x22442e8, (=#0x2dc8)
	ldr     r2, [r5, #0x6c]
	add     r4, r5, r1
	mov     r1, #0xc0
	mov     r5, r2
	mul     r5, r1
	mov     r1, #0x5
	blx     Division
	ldr     r2, [r4, r5]
	mov     r0, #0x38
	bic     r2, r0
	add     r0, r1, #0x3
	lsl     r0, r0, #29
	lsr     r0, r0, #26
	orr     r0, r2
	str     r0, [r4, r5]
	b       branch_22442dc
@ 0x22442ca

.thumb
branch_22442ca: @ 22442ca :thumb
	ldr     r1, [pc, #0x20] @ 0x22442ec, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_22442dc: @ 22442dc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22442e0

.word 0x307c @ 0x22442e0
.word 0x2dec @ 0x22442e4
.word 0x2dc8 @ 0x22442e8
.word 0x216c @ 0x22442ec
.thumb
Function_22442f0: @ 22442f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x79
	bne     branch_2244322
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2244322

.thumb
branch_2244322: @ 2244322 :thumb
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x16c] @ 0x2244498, (=#0x30c4)
	ldrh    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_2244338
	add     r0, #0x8
	ldrh    r0, [r2, r0]
	cmp     r0, #0xff
	bne     branch_224433a
.thumb
branch_2244338: @ 2244338 :thumb
	b       branch_2244488
@ 0x224433a

.thumb
branch_224433a: @ 224433a :thumb
	mov     r0, r5
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224436e
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x150] @ 0x224449c, (=#0x30cc)
	ldrh    r1, [r1, r0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x148] @ 0x22444a0, (=#0x2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_224436e
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224436e

.thumb
branch_224436e: @ 224436e :thumb
	ldr     r0, [r5, #0x64]
	mov     r6, #0x0
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x12c] @ 0x22444a4, (=#0x30d4)
	ldrh    r7, [r1, r0]
.thumb
branch_224437a: @ 224437a :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x120] @ 0x22444a8, (=#0xffff)
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x2]
	cmp     r0, r7
	bne     branch_22443ec
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bhi     branch_22443ec
	add     r0, sp, #0xc
	ldrb    r4, [r0, #0x1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_22443ec
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_22443ec
	ldr     r0, [r5, #0x64]
	add     r3, sp, #0xc
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	add     r0, r5, r1
	ldr     r1, [pc, #0xdc] @ 0x22444ac, (=#0x2d64)
	add     sp, #0x10
	strb    r4, [r0, r1]
	ldr     r4, [r5, #0x64]
	ldrb    r0, [r3, #0x1]
	mov     r6, r4
	mul     r6, r2
	add     r4, r5, r6
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r4, r1]
	ldrb    r0, [r3, #0x1]
	add     r2, #0x70
	str     r0, [r5, r2]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22443ec

.thumb
branch_22443ec: @ 22443ec :thumb
	mov     r0, #0xfa
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r0, r0, #2
	cmp     r6, r0
	blt     branch_224437a
	add     r0, sp, #0xc
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	cmp     r0, #0x1
	bne     branch_2244488
.thumb
branch_2244410: @ 2244410 :thumb
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x2]
	cmp     r0, r7
	bne     branch_224446e
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bhi     branch_224446e
	add     r0, sp, #0xc
	ldrb    r4, [r0, #0x1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_224446e
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_224446e
	ldr     r0, [r5, #0x64]
	add     r3, sp, #0xc
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	add     r0, r5, r1
	ldr     r1, [pc, #0x58] @ 0x22444ac, (=#0x2d64)
	add     sp, #0x10
	strb    r4, [r0, r1]
	ldr     r4, [r5, #0x64]
	ldrb    r0, [r3, #0x1]
	mov     r6, r4
	mul     r6, r2
	add     r4, r5, r6
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r4, r1]
	ldrb    r0, [r3, #0x1]
	add     r2, #0x70
	str     r0, [r5, r2]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224446e

.thumb
branch_224446e: @ 224446e :thumb
	add     r0, sp, #0xc
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	cmp     r0, #0x1
	beq     branch_2244410
.thumb
branch_2244488: @ 2244488 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2244496


.align 2


.word 0x30c4 @ 0x2244498
.word 0x30cc @ 0x224449c
.word 0x2db0 @ 0x22444a0
.word 0x30d4 @ 0x22444a4
.word 0xffff @ 0x22444a8
.word 0x2d64 @ 0x22444ac
.thumb
Function_22444b0: @ 22444b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r6, r1
	mvn     r0, r0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r12, r0
	ldr     r1, [r6, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	str     r0, [sp, #0x4]
	add     r3, r6, r0
	ldr     r0, [pc, #0xe4] @ 0x22445c0, (=#0x2db0)
	ldr     r1, [r3, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_2244502
	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0xd8] @ 0x22445c4, (=#0x30ac)
	ldrh    r7, [r1, r0]
	cmp     r7, #0xa5
	beq     branch_2244502
	cmp     r7, #0xa6
	beq     branch_2244502
	mov     r0, #0x7
	lsl     r0, r0, #6
	cmp     r7, r0
	beq     branch_2244502
	cmp     r7, #0x0
	bne     branch_224450c
.thumb
branch_2244502: @ 2244502 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      Function_2248af0
	b       branch_22445ba
@ 0x224450c

.thumb
branch_224450c: @ 224450c :thumb
	mov     r0, #0x0
	mov     r1, r3
	mov     r2, r0
.thumb
branch_2244512: @ 2244512 :thumb
	ldr     r4, [pc, #0xb4] @ 0x22445c8, (=#0x2d4c)
	ldrh    r4, [r1, r4]
	cmp     r4, #0xa6
	beq     branch_2244524
	ldr     r4, [pc, #0xac] @ 0x22445c8, (=#0x2d4c)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	cmp     r7, r4
	beq     branch_2244544
.thumb
branch_2244524: @ 2244524 :thumb
	ldr     r4, [pc, #0xa0] @ 0x22445c8, (=#0x2d4c)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	cmp     r4, #0xa6
	bne     branch_224453a
	mov     r5, #0x0
	ldr     r4, [sp, #0x8]
	mvn     r5, r5
	cmp     r4, r5
	bne     branch_224453a
	str     r0, [sp, #0x8]
.thumb
branch_224453a: @ 224453a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_2244512
.thumb
branch_2244544: @ 2244544 :thumb
	cmp     r0, #0x4
	bne     branch_22445b2
	ldr     r0, [sp, #0x4]
	add     r1, r6, r0
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #1
	add     r1, r1, r0
	ldr     r0, [pc, #0x74] @ 0x22445c8, (=#0x2d4c)
	strh    r7, [r1, r0]
	ldr     r1, [r6, #0x6c]
	ldr     r3, [r6, #0x64]
	lsl     r1, r1, #1
	add     r2, r6, r1
	ldr     r1, [pc, #0x64] @ 0x22445c4, (=#0x30ac)
	add     r0, #0x20
	ldrh    r1, [r2, r1]
	lsl     r1, r1, #4
	add     r2, r6, r1
	mov     r1, #0xf9
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r6, r2
	ldr     r2, [sp, #0x8]
	add     r2, r3, r2
	strb    r1, [r2, r0]
	ldr     r0, [sp, #0x0]
	ldr     r2, [r6, #0x64]
	mov     r1, r6
	bl      Function_22662fc
	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0x38] @ 0x22445c4, (=#0x30ac)
	ldrh    r1, [r1, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	ldr     r1, [r6, r0]
	add     r0, #0x5f
	cmp     r1, r0
	bne     branch_22445ba
	ldr     r0, [pc, #0x2c] @ 0x22445cc, (=#0x2dcc)
	ldr     r1, [r6, #0x64]
	add     r3, r6, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x24] @ 0x22445d0, (=#0xffffe3ff)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_22445ba
@ 0x22445b2

.thumb
branch_22445b2: @ 22445b2 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      Function_2248af0
.thumb
branch_22445ba: @ 22445ba :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22445c0

.word 0x2db0 @ 0x22445c0
.word 0x30ac @ 0x22445c4
.word 0x2d4c @ 0x22445c8
.word 0x2dcc @ 0x22445cc
.word 0xffffe3ff @ 0x22445d0
.thumb
Function_22445d4: @ 22445d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	mov     r6, r7
	mov     r4, r7
.thumb
branch_22445f2: @ 22445f2 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x9c] @ 0x224469c, (=#0x2d4c)
	ldrh    r0, [r1, r0]
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_2244632
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x88] @ 0x224469c, (=#0x2d4c)
	ldrh    r1, [r1, r0]
	mov     r0, #0x42
	lsl     r0, r0, #2
	cmp     r1, r0
	beq     branch_2244632
	cmp     r1, #0xfd
	beq     branch_2244632
	add     r0, #0xb8
	cmp     r1, r0
	beq     branch_2244632
	mov     r0, r5
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224463a
.thumb
branch_2244632: @ 2244632 :thumb
	mov     r0, r6
	bl      Function_20787cc
	orr     r7, r0
.thumb
branch_224463a: @ 224463a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x4
	blt     branch_22445f2
	mov     r0, #0x2
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	mov     r3, r7
	bl      Function_2254a6c
	mov     r4, r0
	cmp     r4, #0xf
	bne     branch_2244664
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_2244696
@ 0x2244664

.thumb
branch_2244664: @ 2244664 :thumb
	mov     r7, #0x1e
.thumb
branch_2244666: @ 2244666 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	lsr     r1, r0, #31
	lsl     r0, r0, #30
	sub     r0, r0, r1
	ror     r0, r7
	add     r6, r1, r0
	mov     r0, r6
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2244666
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r2, r5, r2
	lsl     r0, r6, #1
	add     r2, r2, r0
	ldr     r0, [pc, #0xc] @ 0x224469c, (=#0x2d4c)
	add     r1, #0x64
	ldrh    r0, [r2, r0]
	str     r0, [r5, r1]
.thumb
branch_2244696: @ 2244696 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224469c

.word 0x2d4c @ 0x224469c
.thumb
Function_22446a0: @ 22446a0 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x30] @ 0x22446e4, (=#0x2d8c)
	add     r2, r4, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	mov     r2, #0x40
	bl      Function_208c0bc
	ldr     r3, [pc, #0x24] @ 0x22446e8, (=#0x226e584)
	mov     r2, #0x0
.thumb
branch_22446c6: @ 22446c6 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	ble     branch_22446d4
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x6
	bcc     branch_22446c6
.thumb
branch_22446d4: @ 22446d4 :thumb
	ldr     r0, [pc, #0x14] @ 0x22446ec, (=#0x226e585)
	lsl     r1, r2, #1
	ldrb    r1, [r0, r1]
	ldr     r0, [pc, #0x14] @ 0x22446f0, (=#0x2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22446e2


.align 2


.word 0x2d8c @ 0x22446e4
.word 0x226e584 @ 0x22446e8
.word 0x226e585 @ 0x22446ec
.word 0x2154 @ 0x22446f0
.thumb
Function_22446f4: @ 22446f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	ldr     r2, [r5, #0x6c]
	mov     r4, r0
	lsl     r0, r2, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x7c] @ 0x2244790, (=#0x307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2244782
	mov     r0, #0xb5
	lsl     r0, r0, #6
	mov     r3, #0xc0
	add     r0, r5, r0
	mul     r3, r2
	add     r0, r0, r3
	bl      Function_2254ee0
	mov     r2, r0
	cmp     r2, #0x4
	beq     branch_2244740
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mul     r1, r0
	add     r1, r5, r1
	add     r3, r1, r2
	ldr     r1, [pc, #0x58] @ 0x2244794, (=#0x2d6c)
	ldrb    r3, [r3, r1]
	cmp     r3, #0x0
	bne     branch_224474a
.thumb
branch_2244740: @ 2244740 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_224478a
@ 0x224474a

.thumb
branch_224474a: @ 224474a :thumb
	mov     r1, #0x4
	cmp     r3, #0x4
	bge     branch_2244752
	mov     r1, r3
.thumb
branch_2244752: @ 2244752 :thumb
	lsl     r0, r0, #1
	add     r3, r5, r0
	ldr     r0, [pc, #0x38] @ 0x2244790, (=#0x307c)
	ldrh    r3, [r3, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r3, [r5, r0]
	add     r0, #0xc
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x2c] @ 0x2244794, (=#0x2d6c)
	ldr     r4, [r5, #0x6c]
	mov     r3, #0xc0
	add     r0, r5, r0
	mul     r3, r4
	add     r3, r0, r3
	ldrb    r0, [r3, r2]
	sub     r0, r0, r1
	strb    r0, [r3, r2]
	ldr     r2, [r5, #0x6c]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2253ec0
	b       branch_224478a
@ 0x2244782

.thumb
branch_2244782: @ 2244782 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
.thumb
branch_224478a: @ 224478a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224478e


.align 2


.word 0x307c @ 0x2244790
.word 0x2d6c @ 0x2244794
.thumb
Function_2244798: @ 2244798 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	bl      Function_223df0c
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r1, #0x4d
	mov     r0, #0x0
	lsl     r1, r1, #2
	ldr     r2, [pc, #0x124] @ 0x22448d8, (=#0x3044)
	str     r0, [r5, r1]
	ldr     r2, [r5, r2]
	cmp     r2, #0xd7
	bne     branch_2244866
	sub     r1, #0x10
	str     r2, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x2b
	beq     branch_22447ee
	ldr     r2, [r5, #0x64]
	mov     r0, #0xc0
	mov     r3, r2
	mul     r3, r0
	ldr     r2, [pc, #0x104] @ 0x22448dc, (=#0x2dac)
	mov     r1, #0x0
	add     r3, r5, r3
	str     r1, [r3, r2]
	add     r1, r2, #0x4
	ldr     r2, [r5, #0x64]
	add     r1, r5, r1
	mul     r0, r2
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0xf8] @ 0x22448e0, (=#0xf7ffffff)
	and     r2, r3
	str     r2, [r1, r0]
	b       branch_22447fa
@ 0x22447ee

.thumb
branch_22447ee: @ 22447ee :thumb
	mov     r1, #0x4d
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, #0x5
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_22447fa: @ 22447fa :thumb
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_2244858
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_224a984
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0xd0] @ 0x22448e4, (=#0x3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_22448c6
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x2b
	bl      Function_2255ab4
	cmp     r0, #0x0
	bne     branch_2244842
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [pc, #0xac] @ 0x22448dc, (=#0x2dac)
	mov     r3, #0x0
	add     r2, r5, r0
	str     r3, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0xa4] @ 0x22448e0, (=#0xf7ffffff)
	and     r1, r2
	str     r1, [r3, r0]
	b       branch_22448c6
@ 0x2244842

.thumb
branch_2244842: @ 2244842 :thumb
	mov     r1, #0x46
	lsl     r1, r1, #2
	mov     r0, r1
	str     r4, [r5, r1]
	add     r0, #0x1c
	ldr     r2, [r5, r0]
	mov     r0, #0xa
	orr     r0, r2
	add     r1, #0x1c
	str     r0, [r5, r1]
	b       branch_22448c6
@ 0x2244858

.thumb
branch_2244858: @ 2244858 :thumb
	mov     r1, #0x4d
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_22448c6
@ 0x2244866

.thumb
branch_2244866: @ 2244866 :thumb
	ldr     r3, [r5, #0x64]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r5, r2
	ldr     r2, [pc, #0x6c] @ 0x22448dc, (=#0x2dac)
	str     r0, [r3, r2]
	add     r0, r2, #0x4
	add     r6, r5, r0
	ldr     r0, [r5, #0x64]
	mov     r2, #0xc0
	mov     r3, r0
	mul     r3, r2
	ldr     r2, [r6, r3]
	ldr     r0, [pc, #0x5c] @ 0x22448e0, (=#0xf7ffffff)
	and     r0, r2
	str     r0, [r6, r3]
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_22448be
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_224a984
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0x44] @ 0x22448e4, (=#0x3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_22448c6
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [pc, #0x30] @ 0x22448dc, (=#0x2dac)
	mov     r3, #0x0
	add     r2, r5, r0
	str     r3, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0x28] @ 0x22448e0, (=#0xf7ffffff)
	and     r1, r2
	str     r1, [r3, r0]
	b       branch_22448c6
@ 0x22448be

.thumb
branch_22448be: @ 22448be :thumb
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_22448c6: @ 22448c6 :thumb
	ldr     r3, [pc, #0x10] @ 0x22448d8, (=#0x3044)
	ldr     r2, [r5, #0x64]
	ldr     r3, [r5, r3]
	mov     r0, r7
	mov     r1, r5
	bl      Function_2266498
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22448d8

.word 0x3044 @ 0x22448d8
.word 0x2dac @ 0x22448dc
.word 0xf7ffffff @ 0x22448e0
.word 0x3108 @ 0x22448e4
.thumb
Function_22448e8: @ 22448e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_223df0c
	str     r0, [sp, #0x4]
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223e208
	mov     r7, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_2244938
	ldr     r0, [sp, #0x4]
	mov     r1, #0x84
	tst     r0, r1
	bne     branch_2244938
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_22449fc
@ 0x2244938

.thumb
branch_2244938: @ 2244938 :thumb
	ldr     r0, [r5, #0x64]
	add     r1, r5, r0
	ldr     r0, [pc, #0xc4] @ 0x2244a04, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	lsl     r1, r7, #3
	add     r2, r5, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	beq     branch_2244960
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_22449fc
@ 0x2244960

.thumb
branch_2244960: @ 2244960 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x79
	beq     branch_2244978
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x79
	bne     branch_2244982
.thumb
branch_2244978: @ 2244978 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_22449fc
@ 0x2244982

.thumb
branch_2244982: @ 2244982 :thumb
	ldr     r2, [r5, #0x6c]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r3, [pc, #0x7c] @ 0x2244a08, (=#0x2db8)
	add     r0, r5, r1
	ldrh    r0, [r0, r3]
	cmp     r0, #0x70
	bne     branch_224499e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_22449fc
@ 0x224499e

.thumb
branch_224499e: @ 224499e :thumb
	add     r3, #0x14
	add     r3, r5, r3
	ldr     r1, [r3, r1]
	lsl     r3, r1, #3
	lsr     r3, r3, #31
	bne     branch_22449b0
	lsl     r1, r1, #2
	lsr     r1, r1, #31
	beq     branch_22449ba
.thumb
branch_22449b0: @ 22449b0 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_22449fc
@ 0x22449ba

.thumb
branch_22449ba: @ 22449ba :thumb
	cmp     r0, #0x0
	beq     branch_22449d6
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x3c
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22449d6
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_22449fc
@ 0x22449d6

.thumb
branch_22449d6: @ 22449d6 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2244a08, (=#0x2db8)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22449f4
	ldr     r2, [r5, #0x6c]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2255980
	cmp     r0, #0x0
	bne     branch_22449fc
.thumb
branch_22449f4: @ 22449f4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
.thumb
branch_22449fc: @ 22449fc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2244a02


.align 2


.word 0x219c @ 0x2244a04
.word 0x2db8 @ 0x2244a08
.thumb
Function_2244a0c: @ 2244a0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	ldr     r1, [r5, #0x64]
	str     r0, [sp, #0x8]
	lsl     r0, r1, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x100] @ 0x2244b2c, (=#0x305c)
	ldrh    r0, [r2, r0]
	cmp     r0, #0xb6
	beq     branch_2244a4c
	cmp     r0, #0xc5
	beq     branch_2244a4c
	cmp     r0, #0xcb
	beq     branch_2244a4c
	ldr     r0, [pc, #0xf4] @ 0x2244b30, (=#0x2dc8)
	mov     r3, r1
	mov     r2, #0xc0
	add     r0, r5, r0
	mul     r3, r2
	ldr     r2, [r0, r3]
	ldr     r1, [pc, #0xec] @ 0x2244b34, (=#0xffffe7ff)
	and     r1, r2
	str     r1, [r0, r3]
.thumb
branch_2244a4c: @ 2244a4c :thumb
	ldr     r0, [pc, #0xe8] @ 0x2244b38, (=#0x3150)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_2244a5a
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2244a5e
@ 0x2244a5a

.thumb
branch_2244a5a: @ 2244a5a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2244a5e: @ 2244a5e :thumb
	ldr     r6, [r5, #0x64]
	ldr     r0, [pc, #0xcc] @ 0x2244b30, (=#0x2dc8)
	mov     r7, r6
	add     r4, r5, r0
	mov     r0, #0xc0
	mul     r7, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	ldr     r1, [r4, r7]
	lsl     r1, r1, #19
	lsr     r1, r1, #30
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xc0] @ 0x2244b3c, (=#0x226e57c)
	ldrh    r1, [r1, r2]
	cmp     r1, r0
	bcc     branch_2244b16
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2244b16
	ldr     r0, [pc, #0xb8] @ 0x2244b40, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xb4] @ 0x2244b44, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x6f
	bne     branch_2244aae
	mov     r2, #0x75
	lsl     r2, r2, #2
	add     r0, r5, r2
	lsl     r4, r6, #6
	ldr     r3, [r0, r4]
	mov     r1, #0x4
	orr     r1, r3
	str     r1, [r0, r4]
	mov     r0, r5
	sub     r2, #0xba
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
.thumb
branch_2244aae: @ 2244aae :thumb
	ldr     r0, [pc, #0x90] @ 0x2244b40, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2244b44, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x74
	bne     branch_2244ada
	mov     r2, #0x75
	ldr     r1, [r5, #0x64]
	lsl     r2, r2, #2
	lsl     r4, r1, #6
	add     r0, r5, r2
	mov     r1, r2
	ldr     r3, [r0, r4]
	add     r1, #0x2c
	orr     r1, r3
	str     r1, [r0, r4]
	mov     r0, r5
	sub     r2, #0x1a
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
.thumb
branch_2244ada: @ 2244ada :thumb
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x34] @ 0x2244b30, (=#0x2dc8)
	add     r0, r5, r0
	ldr     r3, [r0, r1]
	lsl     r2, r3, #19
	lsr     r4, r2, #30
	cmp     r4, #0x3
	bcs     branch_2244b26
	ldr     r2, [pc, #0x2c] @ 0x2244b34, (=#0xffffe7ff)
	and     r3, r2
	add     r2, r4, #0x1
	lsl     r2, r2, #30
	lsr     r2, r2, #19
	orr     r2, r3
	str     r2, [r0, r1]
	b       branch_2244b26
@ 0x2244b16

.thumb
branch_2244b16: @ 2244b16 :thumb
	ldr     r1, [r4, r7]
	ldr     r0, [pc, #0x18] @ 0x2244b34, (=#0xffffe7ff)
	and     r0, r1
	str     r0, [r4, r7]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2244b26: @ 2244b26 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244b2c

.word 0x305c @ 0x2244b2c
.word 0x2dc8 @ 0x2244b30
.word 0xffffe7ff @ 0x2244b34
.word 0x3150 @ 0x2244b38
.word 0x226e57c @ 0x2244b3c
.word 0x3044 @ 0x2244b40
.word 0x3de @ 0x2244b44
.thumb
Function_2244b48: @ 2244b48 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x4c] @ 0x2244bb4, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [r5, #0x64]
	mov     r2, #0xc0
	mov     r3, r1
	mul     r3, r2
	add     r1, r5, r3
	ldr     r3, [pc, #0x3c] @ 0x2244bb8, (=#0x2d8c)
	ldr     r1, [r1, r3]
	cmp     r1, r0
	bgt     branch_2244b8a
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
	b       branch_2244bae
@ 0x2244b8a

.thumb
branch_2244b8a: @ 2244b8a :thumb
	ldr     r1, [pc, #0x30] @ 0x2244bbc, (=#0x215c)
	neg     r4, r0
	str     r4, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r4, r1
	mov     r1, r3
	mul     r4, r2
	add     r3, #0x24
	add     r4, r5, r4
	add     r1, #0x54
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x64]
	add     r3, r5, r3
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x14] @ 0x2244bc0, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r3, r2]
.thumb
branch_2244bae: @ 2244bae :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244bb2


.align 2


.word 0x2d90 @ 0x2244bb4
.word 0x2d8c @ 0x2244bb8
.word 0x215c @ 0x2244bbc
.word 0xffff1fff @ 0x2244bc0
.thumb
Function_2244bc4: @ 2244bc4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [sp, #0x4]
	bl      Function_2248ad0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	mov     r4, r0
	mov     r0, #0x1
	tst     r0, r4
	bne     branch_2244bec
	b       branch_2244d3e
@ 0x2244bec

.thumb
branch_2244bec: @ 2244bec :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	mov     r7, #0x0
	bl      Function_223df20
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	bl      Function_223df60
	mov     r6, r0
	mov     r0, #0x8
	tst     r0, r4
	bne     branch_2244c20
	mov     r0, #0x10
	tst     r0, r4
	beq     branch_2244c38
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_2244c38
.thumb
branch_2244c20: @ 2244c20 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0x128] @ 0x2244d58, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	b       branch_2244c78
@ 0x2244c38

.thumb
branch_2244c38: @ 2244c38 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	tst     r0, r4
	beq     branch_2244c62
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r2, r0, r1
	ldr     r0, [pc, #0x10c] @ 0x2244d58, (=#0x219c)
	ldrb    r0, [r2, r0]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	bl      Function_223e258
	ldr     r1, [sp, #0x4]
	add     r1, r1, r0
	ldr     r0, [pc, #0xfc] @ 0x2244d58, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x8]
	b       branch_2244c78
@ 0x2244c62

.thumb
branch_2244c62: @ 2244c62 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0xe4] @ 0x2244d58, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
.thumb
branch_2244c78: @ 2244c78 :thumb
	ldr     r5, [sp, #0x10]
	mov     r0, r5
	cmp     r0, r6
	bge     branch_2244cba
.thumb
branch_2244c80: @ 2244c80 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2244cb4
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	bne     branch_2244cb4
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2244cb4
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2244cb4: @ 2244cb4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2244c80
.thumb
branch_2244cba: @ 2244cba :thumb
	ldr     r0, [sp, #0x14]
	cmp     r7, r0
	bgt     branch_2244cca
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2248af0
	b       branch_2244d52
@ 0x2244cca

.thumb
branch_2244cca: @ 2244cca :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22559fc
	cmp     r0, #0x0
	beq     branch_2244d34
	mov     r7, #0x5
.thumb
branch_2244cd8: @ 2244cd8 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, r6
	blx     Division
	ldr     r0, [sp, #0x10]
	mov     r5, r1
	add     r5, r5, r0
	ldr     r0, [sp, #0xc]
	cmp     r5, r0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x8]
	cmp     r5, r0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, r7
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2244cd8
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x1
	beq     branch_2244cd8
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0x2c] @ 0x2244d5c, (=#0x21a0)
	strb    r5, [r1, r0]
	b       branch_2244d52
@ 0x2244d34

.thumb
branch_2244d34: @ 2244d34 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2248af0
	b       branch_2244d52
@ 0x2244d3e

.thumb
branch_2244d3e: @ 2244d3e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22559fc
	cmp     r0, #0x0
	bne     branch_2244d52
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2248af0
.thumb
branch_2244d52: @ 2244d52 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2244d58

.word 0x219c @ 0x2244d58
.word 0x21a0 @ 0x2244d5c
.thumb
Function_2244d60: @ 2244d60 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r5, [r4, #0x64]
	ldr     r1, [pc, #0x1c0] @ 0x2244f30, (=#0x2db0)
	mov     r0, r5
	mov     r2, #0xc0
	mov     r5, #0x2
	add     r3, r4, r1
	mul     r0, r2
	ldr     r6, [r3, r0]
	lsl     r5, r5, #20
	orr     r5, r6
	str     r5, [r3, r0]
	ldr     r3, [r4, #0x64]
	mov     r0, #0x0
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	add     r3, #0x38
	strh    r0, [r5, r3]
	mov     r3, r1
	add     r3, #0x18
	ldr     r6, [r4, #0x64]
	add     r5, r4, r3
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	mov     r6, #0x7
	bic     r7, r6
	str     r7, [r5, r3]
	ldr     r3, [r4, #0x6c]
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	sub     r3, #0x8
	ldr     r3, [r5, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	mul     r6, r2
	mov     r5, r1
	add     r6, r4, r6
	add     r5, #0x34
	str     r3, [r6, r5]
	ldr     r3, [r4, #0x6c]
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	add     r3, #0xe
	ldrb    r3, [r5, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	lsl     r3, r3, #28
	mul     r6, r2
	mov     r5, r1
	lsr     r3, r3, #28
	add     r6, r4, r6
	add     r5, #0x4a
	strh    r3, [r6, r5]
	mov     r3, r1
	add     r3, #0x1c
	ldr     r6, [r4, #0x64]
	add     r5, r4, r3
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	mov     r6, #0x3c
	bic     r7, r6
	str     r7, [r5, r3]
	ldr     r6, [r4, #0x64]
	sub     r1, #0x70
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	ldr     r6, [pc, #0x130] @ 0x2244f34, (=#0xffffe3ff)
	and     r6, r7
	str     r6, [r5, r3]
	add     r5, r4, r1
	ldr     r1, [r4, #0x64]
	mov     r3, r1
	mul     r3, r2
	ldr     r1, [r4, #0x6c]
	add     r3, r5, r3
	mul     r2, r1
	add     r2, r5, r2
.thumb
branch_2244e16: @ 2244e16 :thumb
	ldrb    r1, [r2, r0]
	strb    r1, [r3, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x28
	bcc     branch_2244e16
	ldr     r3, [r4, #0x64]
	ldr     r1, [pc, #0x114] @ 0x2244f38, (=#0x2d68)
	mov     r6, r3
	mov     r2, #0xc0
	add     r0, r4, r1
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x1
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x2
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x4
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x8
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x10
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x20
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xb8] @ 0x2244f3c, (=#0xfffffeff)
	and     r5, r6
	str     r5, [r0, r3]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xac] @ 0x2244f40, (=#0xfffffdff)
	and     r5, r6
	str     r5, [r0, r3]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xa4] @ 0x2244f44, (=#0xfffffbff)
	and     r5, r6
	str     r5, [r0, r3]
	mov     r3, r1
	add     r3, #0x60
	add     r6, r4, r3
	ldr     r3, [r4, #0x64]
	add     r1, #0x70
	mov     r5, r3
	mul     r5, r2
	ldr     r7, [r6, r5]
	ldr     r3, [pc, #0x90] @ 0x2244f48, (=#0xbfffffff)
	and     r3, r7
	mov     r7, r2
	add     r7, #0x90
	ldr     r7, [r4, r7]
	lsl     r7, r7, #31
	lsr     r7, r7, #1
	orr     r3, r7
	str     r3, [r6, r5]
	mov     r3, r2
	add     r3, #0x90
	ldr     r3, [r4, r3]
	add     r6, r3, #0x1
	ldr     r3, [r4, #0x64]
	mov     r5, r3
	mul     r5, r2
	add     r3, r4, r5
	str     r6, [r3, r1]
	ldr     r1, [r4, #0x64]
	mov     r5, r1
	mul     r5, r2
	ldr     r3, [r0, r5]
	mov     r1, #0x40
	bic     r3, r1
	str     r3, [r0, r5]
	ldr     r1, [r4, #0x64]
	mov     r6, #0x0
	mov     r3, r1
	mul     r3, r2
	ldr     r2, [r0, r3]
	mov     r1, #0x80
	bic     r2, r1
	str     r2, [r0, r3]
	mov     r0, #0xf9
	mov     r5, r6
	mov     r1, #0x5
	lsl     r0, r0, #2
.thumb
branch_2244efe: @ 2244efe :thumb
	ldr     r3, [r4, #0x64]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	ldr     r2, [pc, #0x44] @ 0x2244f4c, (=#0x2d4c)
	add     r7, r3, r5
	ldrh    r2, [r7, r2]
	lsl     r2, r2, #4
	add     r2, r4, r2
	ldrb    r2, [r2, r0]
	cmp     r2, #0x5
	bcs     branch_2244f1e
	add     r7, r3, r6
	ldr     r3, [pc, #0x34] @ 0x2244f50, (=#0x2d6c)
	strb    r2, [r7, r3]
	b       branch_2244f24
@ 0x2244f1e

.thumb
branch_2244f1e: @ 2244f1e :thumb
	ldr     r2, [pc, #0x30] @ 0x2244f50, (=#0x2d6c)
	add     r3, r3, r6
	strb    r1, [r3, r2]
.thumb
branch_2244f24: @ 2244f24 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x4
	blt     branch_2244efe
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2244f30

.word 0x2db0 @ 0x2244f30
.word 0xffffe3ff @ 0x2244f34
.word 0x2d68 @ 0x2244f38
.word 0xfffffeff @ 0x2244f3c
.word 0xfffffdff @ 0x2244f40
.word 0xfffffbff @ 0x2244f44
.word 0xbfffffff @ 0x2244f48
.word 0x2d4c @ 0x2244f4c
.word 0x2d6c @ 0x2244f50
.thumb
Function_2244f54: @ 2244f54 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	mov     r2, #0x72
	mov     r1, #0x1
	mov     r3, r0
	eor     r3, r1
	lsl     r0, r3, #3
	add     r5, r4, r0
	lsl     r2, r2, #2
	ldr     r5, [r5, r2]
	lsl     r5, r5, #30
	lsr     r5, r5, #30
	cmp     r5, #0x3
	bne     branch_2244faa
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r3, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r5, [r2, r0]
	mov     r3, #0x1
	bic     r5, r3
	orr     r1, r5
	str     r1, [r2, r0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
	b       branch_2244fd2
@ 0x2244faa

.thumb
branch_2244faa: @ 2244faa :thumb
	mov     r1, r2
	sub     r1, #0xc
	lsl     r6, r3, #2
	add     r1, r4, r1
	ldr     r5, [r1, r6]
	mov     r3, #0x4
	orr     r3, r5
	str     r3, [r1, r6]
	add     r2, r4, r2
	ldr     r4, [r2, r0]
	mov     r3, #0x3
	mov     r1, r4
	bic     r1, r3
	lsl     r3, r4, #30
	lsr     r3, r3, #30
	add     r4, r3, #0x1
	mov     r3, #0x3
	and     r3, r4
	orr     r1, r3
	str     r1, [r2, r0]
.thumb
branch_2244fd2: @ 2244fd2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2244fd6


.align 2, 0


.thumb
Function_2244fd8: @ 2244fd8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_223e208
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #30
	lsr     r1, r0, #30
	beq     branch_2245046
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r4, [pc, #0x34] @ 0x2245054, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r2, [r0, r4]
	cmp     r2, #0x0
	beq     branch_2245046
	mov     r2, #0x5
	sub     r1, r2, r1
	ldr     r3, [pc, #0x28] @ 0x2245058, (=#0x215c)
	lsl     r1, r1, #1
	str     r1, [r5, r3]
	add     r1, r4, #0x4
	ldr     r1, [r0, r1]
	.hword  0x1f90 @ sub r0, r2, #0x6
	mul     r0, r1
	ldr     r1, [r5, r3]
	bl      Function_22563f8
	ldr     r1, [pc, #0x14] @ 0x2245058, (=#0x215c)
	str     r0, [r5, r1]
	b       branch_224504e
@ 0x2245046

.thumb
branch_2245046: @ 2245046 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_224504e: @ 224504e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245052


.align 2


.word 0x2d8c @ 0x2245054
.word 0x215c @ 0x2245058
.thumb
Function_224505c: @ 224505c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [sp, #0x0]
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_223df1c
	mov     r2, #0x4d
	mov     r7, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	ldr     r0, [sp, #0x4]
	mov     r6, r7
	cmp     r0, #0x0
	ble     branch_22450ec
	ldr     r4, [sp, #0x0]
	ldr     r1, [pc, #0x6c] @ 0x2245100, (=#0x2dc8)
	mov     r0, r4
	add     r5, r0, r1
.thumb
branch_2245098: @ 2245098 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_22450be
	ldr     r0, [pc, #0x5c] @ 0x2245104, (=#0x2d8c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22450be
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	mov     r1, r0
	ldr     r1, [r1, #0x64]
	mov     r3, #0x2b
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22450c2
.thumb
branch_22450be: @ 22450be :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	b       branch_22450e0
@ 0x22450c2

.thumb
branch_22450c2: @ 22450c2 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x20
	orr     r1, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2245108, (=#0xffff9fff)
	and     r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r5, #0x0]
.thumb
branch_22450e0: @ 22450e0 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc0
	add     r5, #0xc0
	cmp     r6, r0
	blt     branch_2245098
.thumb
branch_22450ec: @ 22450ec :thumb
	ldr     r0, [sp, #0x4]
	cmp     r7, r0
	bne     branch_22450fa
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      Function_2248af0
.thumb
branch_22450fa: @ 22450fa :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2245100

.word 0x2dc8 @ 0x2245100
.word 0x2d8c @ 0x2245104
.word 0xffff9fff @ 0x2245108
.thumb
Function_224510c: @ 224510c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248b10
	ldr     r1, [pc, #0x10] @ 0x224513c, (=#0x3104)
	ldr     r1, [r4, r1]
	add     r2, r4, r1
	ldr     r1, [pc, #0xc] @ 0x2245140, (=#0x21ec)
	ldrb    r1, [r2, r1]
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224513a


.align 2


.word 0x3104 @ 0x224513c
.word 0x21ec @ 0x2245140
.thumb
Function_2245144: @ 2245144 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2248b10
	mov     r6, r0
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [r6, #0x0]
	cmp     r1, r0
	bcs     branch_2245182
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_2245182: @ 2245182 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245186


.align 2, 0


.thumb
Function_2245188: @ 2245188 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_224a984
	mov     r4, r0
	mov     r0, #0x4e
	mov     r3, #0x0
	lsl     r0, r0, #2
	str     r3, [r5, r0]
	ldr     r0, [pc, #0x27c] @ 0x2245430, (=#0x215c)
	mov     r1, r4
	str     r3, [r5, r0]
	mov     r0, r5
	mov     r2, #0x1b
	bl      Function_2252060
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	mov     r7, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_22451f8
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_22451fa
.thumb
branch_22451f8: @ 22451f8 :thumb
	b       branch_2245428
@ 0x22451fa

.thumb
branch_22451fa: @ 22451fa :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_2245264
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x5
	beq     branch_2245264
	cmp     r7, #0x5
	beq     branch_2245264
	cmp     r0, #0x8
	beq     branch_2245264
	cmp     r7, #0x8
	beq     branch_2245264
	cmp     r0, #0x4
	beq     branch_2245264
	cmp     r7, #0x4
	beq     branch_2245264
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x20c] @ 0x2245434, (=#0x2d8c)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2245264
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x8
	beq     branch_2245264
	mov     r3, #0xb7
	add     r1, r5, r6
	lsl     r3, r3, #6
	ldr     r2, [r1, r3]
	ldr     r0, [pc, #0x1f0] @ 0x2245438, (=#0x40080)
	tst     r0, r2
	bne     branch_2245264
	mov     r0, #0xc9
	mov     r2, r0
	add     r2, #0x5b
	str     r0, [r5, r2]
	sub     r3, #0x30
	ldr     r1, [r1, r3]
	sub     r0, #0xca
	mul     r0, r1
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0x1cc] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
.thumb
branch_2245264: @ 2245264 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_22452cc
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x1bc] @ 0x2245434, (=#0x2d8c)
	add     r2, r5, r6
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_22452cc
	add     r0, #0x34
	ldr     r1, [r2, r0]
	ldr     r0, [pc, #0x1b0] @ 0x2245438, (=#0x40080)
	tst     r0, r1
	bne     branch_22452cc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x57
	beq     branch_22452a2
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x5e
	bne     branch_22452b8
.thumb
branch_22452a2: @ 22452a2 :thumb
	ldr     r0, [pc, #0x198] @ 0x224543c, (=#0x2d90)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	mov     r1, #0x8
	bl      Function_22563f8
	ldr     r1, [pc, #0x178] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
.thumb
branch_22452b8: @ 22452b8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x5e
	bne     branch_22452cc
	mov     r0, #0x4e
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22452cc: @ 22452cc :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	tst     r1, r0
	beq     branch_224534e
	ldr     r1, [pc, #0x158] @ 0x2245434, (=#0x2d8c)
	mov     r6, r4
	mul     r6, r0
	add     r0, r5, r1
	str     r0, [sp, #0x8]
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	beq     branch_224534e
	add     r0, r5, r6
	add     r1, #0x34
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x148] @ 0x2245438, (=#0x40080)
	tst     r0, r1
	bne     branch_224534e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x73
	bne     branch_224531a
	ldr     r0, [pc, #0x138] @ 0x224543c, (=#0x2d90)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x8]
	ldr     r1, [r1, r6]
	cmp     r1, r0
	bcs     branch_224534e
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0x118] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
	b       branch_224534e
@ 0x224531a

.thumb
branch_224531a: @ 224531a :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0xf
	beq     branch_224534e
	cmp     r7, #0xf
	beq     branch_224534e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x51
	beq     branch_224534e
	ldr     r1, [pc, #0x10c] @ 0x2245440, (=#0x102)
	mov     r0, r1
	add     r0, #0x22
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x100] @ 0x224543c, (=#0x2d90)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0xe4] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
.thumb
branch_224534e: @ 224534e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2245428
	ldr     r1, [pc, #0xd8] @ 0x2245434, (=#0x2d8c)
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	add     r7, r5, r1
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_2245390
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r5, r1
	str     r1, [sp, #0xc]
	ldr     r1, [r1, r6]
	cmp     r0, r1
	bcs     branch_2245390
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x2c
	bne     branch_2245390
	ldr     r0, [sp, #0xc]
	mov     r1, #0x10
	ldr     r0, [r0, r6]
	bl      Function_22563f8
	ldr     r1, [pc, #0xa0] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
.thumb
branch_2245390: @ 2245390 :thumb
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_22453bc
	ldr     r1, [pc, #0xa4] @ 0x224543c, (=#0x2d90)
	add     r1, r5, r1
	str     r1, [sp, #0x10]
	ldr     r1, [r1, r6]
	cmp     r0, r1
	bcs     branch_22453bc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x57
	bne     branch_22453bc
	ldr     r0, [sp, #0x10]
	mov     r1, #0x8
	ldr     r0, [r0, r6]
	bl      Function_22563f8
	ldr     r1, [pc, #0x74] @ 0x2245430, (=#0x215c)
	str     r0, [r5, r1]
.thumb
branch_22453bc: @ 22453bc :thumb
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_2245428
	ldr     r0, [pc, #0x80] @ 0x2245444, (=#0x2dac)
	add     r7, r5, r0
	ldr     r0, [r7, r6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_2245428
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x5d
	bne     branch_2245428
	ldr     r0, [r7, r6]
	mov     r1, #0x7
	tst     r1, r0
	beq     branch_22453ec
	mov     r0, #0x13
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420
@ 0x22453ec

.thumb
branch_22453ec: @ 22453ec :thumb
	ldr     r1, [pc, #0x58] @ 0x2245448, (=#0xf88)
	tst     r1, r0
	beq     branch_22453fc
	mov     r0, #0x13
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420
@ 0x22453fc

.thumb
branch_22453fc: @ 22453fc :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_224540c
	mov     r0, #0x13
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420
@ 0x224540c

.thumb
branch_224540c: @ 224540c :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_224541a
	mov     r0, #0x3
	add     r1, #0xf0
	str     r0, [r5, r1]
	b       branch_2245420
@ 0x224541a

.thumb
branch_224541a: @ 224541a :thumb
	mov     r0, #0x4
	add     r1, #0xf0
	str     r0, [r5, r1]
.thumb
branch_2245420: @ 2245420 :thumb
	mov     r0, #0x4e
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2245428: @ 2245428 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224542e


.align 2


.word 0x215c @ 0x2245430
.word 0x2d8c @ 0x2245434
.word 0x40080 @ 0x2245438
.word 0x2d90 @ 0x224543c
.word 0x102 @ 0x2245440
.word 0x2dac @ 0x2245444
.word 0xf88 @ 0x2245448
.thumb
Function_224544c: @ 224544c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r6, [r4, #0x64]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x1c
	mov     r1, r6
	mul     r1, r0
	ldr     r3, [r2, r1]
	ldr     r0, [pc, #0xe0] @ 0x224554c, (=#0xfffffe3f)
	mov     r7, #0xc0
	and     r0, r3
	mov     r3, r6
	mul     r3, r7
	add     r6, r4, r3
	ldr     r3, [pc, #0xd8] @ 0x2245550, (=#0x2dc8)
	ldr     r6, [r6, r3]
	sub     r3, #0x18
	lsl     r6, r6, #14
	lsr     r6, r6, #29
	lsl     r6, r6, #29
	lsr     r6, r6, #23
	orr     r0, r6
	str     r0, [r2, r1]
	ldr     r2, [r4, #0x64]
	mov     r0, r2
	mul     r0, r7
	add     r0, r4, r0
	ldr     r1, [r0, r3]
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r1
	bne     branch_22454ba
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253ef0
	ldr     r0, [pc, #0xac] @ 0x2245550, (=#0x2dc8)
	ldr     r2, [r4, #0x64]
	add     r1, r4, r0
	mov     r0, r7
	mul     r0, r2
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0xa4] @ 0x2245554, (=#0xfffc7fff)
	and     r3, r2
	mov     r2, #0xa
	lsl     r2, r2, #14
	orr     r2, r3
	str     r2, [r1, r0]
.thumb
branch_22454ba: @ 22454ba :thumb
	ldr     r1, [r4, #0x64]
	ldr     r0, [pc, #0x90] @ 0x2245550, (=#0x2dc8)
	mov     r7, #0xc0
	mov     r3, r1
	add     r6, r4, r0
	mul     r3, r7
	ldr     r1, [r6, r3]
	ldr     r2, [pc, #0x88] @ 0x2245554, (=#0xfffc7fff)
	and     r2, r1
	lsl     r1, r1, #14
	lsr     r1, r1, #29
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #29
	lsr     r1, r1, #14
	orr     r1, r2
	str     r1, [r6, r3]
	ldr     r2, [r4, #0x64]
	mov     r1, r2
	mul     r1, r7
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #14
	lsr     r0, r0, #29
	bne     branch_22454f2
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253f20
.thumb
branch_22454f2: @ 22454f2 :thumb
	ldr     r0, [pc, #0x64] @ 0x2245558, (=#0x3044)
	mov     r2, #0x1
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x5c] @ 0x224555c, (=#0x3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x5c] @ 0x2245560, (=#0x2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x40] @ 0x2245550, (=#0x2dc8)
	ldr     r0, [r1, r0]
	lsl     r0, r0, #14
	lsr     r1, r0, #29
	mov     r0, #0x5
	sub     r3, r0, r1
	cmp     r3, #0x1
	ble     branch_224552a
	ldr     r0, [pc, #0x40] @ 0x2245560, (=#0x2154)
.thumb
branch_224551e: @ 224551e :thumb
	ldr     r1, [r4, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r1, r1, #1
	str     r1, [r4, r0]
	cmp     r2, r3
	blt     branch_224551e
.thumb
branch_224552a: @ 224552a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x30] @ 0x2245564, (=#0x2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #30
	tst     r0, r1
	beq     branch_2245546
	ldr     r0, [pc, #0x20] @ 0x2245560, (=#0x2154)
	ldr     r1, [r4, r0]
	lsl     r1, r1, #1
	str     r1, [r4, r0]
.thumb
branch_2245546: @ 2245546 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224554a


.align 2


.word 0xfffffe3f @ 0x224554c
.word 0x2dc8 @ 0x2245550
.word 0xfffc7fff @ 0x2245554
.word 0x3044 @ 0x2245558
.word 0x3e1 @ 0x224555c
.word 0x2154 @ 0x2245560
.word 0x2db0 @ 0x2245564
.thumb
Function_2245568: @ 2245568 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r2, [r4, #0x64]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x64] @ 0x22455e4, (=#0x2dc8)
	add     r0, r4, r0
	ldr     r3, [r0, r1]
	lsl     r2, r3, #11
	lsr     r5, r2, #29
	cmp     r5, #0x5
	bcs     branch_2245598
	ldr     r2, [pc, #0x5c] @ 0x22455e8, (=#0xffe3ffff)
	and     r3, r2
	add     r2, r5, #0x1
	lsl     r2, r2, #29
	lsr     r2, r2, #11
	orr     r2, r3
	str     r2, [r0, r1]
.thumb
branch_2245598: @ 2245598 :thumb
	ldr     r0, [pc, #0x50] @ 0x22455ec, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x4c] @ 0x22455f0, (=#0x3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x4c] @ 0x22455f4, (=#0x2154)
	str     r1, [r4, r0]
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x30] @ 0x22455e4, (=#0x2dc8)
	mov     r0, #0x1
	ldr     r1, [r2, r1]
	lsl     r1, r1, #11
	lsr     r1, r1, #29
	cmp     r1, #0x1
	bls     branch_22455de
	ldr     r3, [pc, #0x34] @ 0x22455f4, (=#0x2154)
	ldr     r2, [pc, #0x20] @ 0x22455e4, (=#0x2dc8)
	mov     r1, #0xc0
.thumb
branch_22455c4: @ 22455c4 :thumb
	ldr     r5, [r4, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r5, r5, #1
	str     r5, [r4, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	mul     r6, r1
	add     r5, r4, r6
	ldr     r5, [r5, r2]
	lsl     r5, r5, #11
	lsr     r5, r5, #29
	cmp     r0, r5
	bcc     branch_22455c4
.thumb
branch_22455de: @ 22455de :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22455e2


.align 2


.word 0x2dc8 @ 0x22455e4
.word 0xffe3ffff @ 0x22455e8
.word 0x3044 @ 0x22455ec
.word 0x3e1 @ 0x22455f0
.word 0x2154 @ 0x22455f4
.thumb
Function_22455f8: @ 22455f8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r3, r0
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r5, #0xc0
	mov     r1, r0
	mul     r1, r5
	ldr     r6, [pc, #0x58] @ 0x2245674, (=#0x2dbe)
	add     r1, r4, r1
	ldrb    r0, [r1, r6]
	lsl     r0, r0, #28
	lsr     r2, r0, #28
	mov     r0, r5
	add     r0, #0x58
	ldr     r0, [r4, r0]
	mul     r5, r0
	add     r5, r4, r5
	ldrb    r5, [r5, r6]
	lsl     r5, r5, #28
	lsr     r5, r5, #28
	cmp     r5, r2
	beq     branch_224564a
	sub     r6, #0xe
	ldr     r6, [r1, r6]
	mov     r1, #0xf
	lsl     r1, r1, #16
	tst     r1, r6
	bne     branch_224564a
	cmp     r5, #0x2
	beq     branch_224564a
	cmp     r2, #0x2
	bne     branch_2245654
.thumb
branch_224564a: @ 224564a :thumb
	mov     r0, r4
	mov     r1, r3
	bl      Function_2248af0
	b       branch_224566e
@ 0x2245654

.thumb
branch_2245654: @ 2245654 :thumb
	bl      Function_20787cc
	ldr     r1, [pc, #0x1c] @ 0x2245678, (=#0x2db0)
	mov     r2, #0xc0
	add     r1, r4, r1
	add     r4, #0x94
	ldr     r3, [r4, #0x0]
	lsl     r0, r0, #16
	mov     r4, r3
	mul     r4, r2
	ldr     r2, [r1, r4]
	orr     r0, r2
	str     r0, [r1, r4]
.thumb
branch_224566e: @ 224566e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245672


.align 2


.word 0x2dbe @ 0x2245674
.word 0x2db0 @ 0x2245678
.thumb
Function_224567c: @ 224567c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	mov     r5, #0x6f
	mov     r2, r0
	lsl     r5, r5, #2
	add     r1, r4, r5
	lsl     r0, r2, #2
	ldr     r6, [r1, r0]
	mov     r3, #0x8
	tst     r3, r6
	beq     branch_22456c0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
	ldr     r1, [pc, #0x4c] @ 0x2245704, (=#0x216c)
	mov     r0, #0x40
	ldr     r2, [r4, r1]
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2245700
@ 0x22456c0

.thumb
branch_22456c0: @ 22456c0 :thumb
	mov     r3, #0x8
	orr     r3, r6
	str     r3, [r1, r0]
	add     r5, #0x8
	lsl     r0, r2, #3
	add     r1, r4, r5
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x38] @ 0x2245708, (=#0xfff1ffff)
	and     r3, r2
	mov     r2, #0xa
	lsl     r2, r2, #16
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x2c] @ 0x224570c, (=#0xfffe7fff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #15
	orr     r2, r3
	str     r2, [r1, r0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x64]
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, #0xc6
	add     r4, #0xf6
	strh    r0, [r4, #0x0]
.thumb
branch_2245700: @ 2245700 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245704

.word 0x216c @ 0x2245704
.word 0xfff1ffff @ 0x2245708
.word 0xfffe7fff @ 0x224570c
.thumb
Function_2245710: @ 2245710 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_223f4bc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x66
	bge     branch_224573c
	ldr     r0, [pc, #0x40] @ 0x2245778, (=#0x2154)
	mov     r1, #0x28
	str     r1, [r4, r0]
	b       branch_2245772
@ 0x224573c

.thumb
branch_224573c: @ 224573c :thumb
	cmp     r0, #0xb2
	bge     branch_2245748
	ldr     r0, [pc, #0x34] @ 0x2245778, (=#0x2154)
	mov     r1, #0x50
	str     r1, [r4, r0]
	b       branch_2245772
@ 0x2245748

.thumb
branch_2245748: @ 2245748 :thumb
	cmp     r0, #0xcc
	bge     branch_2245754
	ldr     r0, [pc, #0x28] @ 0x2245778, (=#0x2154)
	mov     r1, #0x78
	str     r1, [r4, r0]
	b       branch_2245772
@ 0x2245754

.thumb
branch_2245754: @ 2245754 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x1c] @ 0x224577c, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0x18] @ 0x2245780, (=#0x215c)
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2245772: @ 2245772 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245776


.align 2


.word 0x2154 @ 0x2245778
.word 0x2d90 @ 0x224577c
.word 0x215c @ 0x2245780
.thumb
Function_2245784: @ 2245784 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [pc, #0x90] @ 0x2245824, (=#0x3120)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2245814
	mov     r0, r5
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	ldr     r0, [pc, #0x7c] @ 0x2245824, (=#0x3120)
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	cmp     r1, #0x5
	bcs     branch_22457bc
	ldr     r1, [pc, #0x74] @ 0x2245828, (=#0x2154)
	mov     r2, #0xa
	str     r2, [r4, r1]
	mov     r1, #0x4
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457bc

.thumb
branch_22457bc: @ 22457bc :thumb
	cmp     r1, #0xf
	bcs     branch_22457cc
	ldr     r1, [pc, #0x64] @ 0x2245828, (=#0x2154)
	mov     r2, #0x1e
	str     r2, [r4, r1]
	mov     r1, #0x5
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457cc

.thumb
branch_22457cc: @ 22457cc :thumb
	cmp     r1, #0x23
	bcs     branch_22457dc
	ldr     r1, [pc, #0x54] @ 0x2245828, (=#0x2154)
	mov     r2, #0x32
	str     r2, [r4, r1]
	mov     r1, #0x6
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457dc

.thumb
branch_22457dc: @ 22457dc :thumb
	cmp     r1, #0x41
	bcs     branch_22457ec
	ldr     r1, [pc, #0x44] @ 0x2245828, (=#0x2154)
	mov     r2, #0x46
	str     r2, [r4, r1]
	mov     r1, #0x7
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457ec

.thumb
branch_22457ec: @ 22457ec :thumb
	cmp     r1, #0x55
	bcs     branch_22457fc
	ldr     r1, [pc, #0x34] @ 0x2245828, (=#0x2154)
	mov     r2, #0x5a
	str     r2, [r4, r1]
	mov     r1, #0x8
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457fc

.thumb
branch_22457fc: @ 22457fc :thumb
	cmp     r1, #0x5f
	ldr     r1, [pc, #0x28] @ 0x2245828, (=#0x2154)
	bcs     branch_224580c
	mov     r2, #0x6e
	str     r2, [r4, r1]
	mov     r1, #0x9
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x224580c

.thumb
branch_224580c: @ 224580c :thumb
	mov     r2, #0x96
	str     r2, [r4, r1]
	mov     r1, #0xa
	strb    r1, [r4, r0]
.thumb
branch_2245814: @ 2245814 :thumb
	ldr     r0, [pc, #0xc] @ 0x2245824, (=#0x3120)
	ldrb    r1, [r4, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2245822


.align 2


.word 0x3120 @ 0x2245824
.word 0x2154 @ 0x2245828
.thumb
Function_224582c: @ 224582c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2255b10
	cmp     r0, #0x0
	bne     branch_2245876
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_224588a
@ 0x2245876

.thumb
branch_2245876: @ 2245876 :thumb
	cmp     r7, #0x1
	bne     branch_224588a
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r4, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_224588a: @ 224588a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224588e


.align 2, 0


.thumb
Function_2245890: @ 2245890 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x64]
	bl      Function_223e208
	ldr     r1, [r4, #0x64]
	mov     r6, #0xe
	ldr     r5, [pc, #0x12c] @ 0x22459cc, (=#0x2db0)
	mov     r2, r1
	mov     r3, #0xc0
	mul     r2, r3
	add     r1, r4, r5
	ldr     r7, [r1, r2]
	lsl     r6, r6, #12
	tst     r6, r7
	beq     branch_22458ec
	ldr     r0, [pc, #0x11c] @ 0x22459d0, (=#0xffff1fff)
	and     r0, r7
	str     r0, [r1, r2]
	ldr     r0, [r4, #0x64]
	mov     r2, #0x74
	mov     r1, r0
	mov     r0, r5
	mul     r1, r3
	add     r1, r4, r1
	add     r0, #0x1c
	ldr     r0, [r1, r0]
	add     r5, #0x3a
	lsl     r0, r0, #24
	lsr     r1, r0, #30
	mov     r0, r3
	add     r0, #0x58
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x64]
	mov     r1, r0
	mul     r1, r3
	add     r0, r4, r1
	ldrh    r0, [r0, r5]
	add     r3, #0x64
	mov     r1, #0x1
	str     r0, [r4, r3]
	mov     r0, r4
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22458ec

.thumb
branch_22458ec: @ 22458ec :thumb
	add     r5, #0x10
	add     r5, r4, r5
	ldr     r1, [r5, r2]
	mov     r6, #0x4
	tst     r6, r1
	beq     branch_2245922
	mov     r0, #0x4
	bic     r1, r0
	str     r1, [r5, r2]
	ldr     r0, [r4, #0x64]
	mov     r2, r0
	mul     r2, r3
	ldr     r1, [r5, r2]
	mov     r0, #0x3
	bic     r1, r0
	str     r1, [r5, r2]
	mov     r1, #0x49
	mov     r0, r1
	add     r0, #0xdb
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x75
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245922

.thumb
branch_2245922: @ 2245922 :thumb
	mov     r1, #0x72
	lsl     r1, r1, #2
	add     r6, r4, r1
	lsl     r5, r0, #3
	ldr     r2, [r6, r5]
	lsl     r3, r2, #30
	lsr     r3, r3, #30
	beq     branch_224595e
	sub     r1, #0xc
	lsl     r3, r0, #2
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x4
	bic     r2, r0
	str     r2, [r1, r3]
	ldr     r1, [r6, r5]
	mov     r0, #0x3
	bic     r1, r0
	str     r1, [r6, r5]
	mov     r1, #0xbf
	mov     r0, r1
	add     r0, #0x65
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x75
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224595e

.thumb
branch_224595e: @ 224595e :thumb
	lsl     r2, r2, #28
	lsr     r2, r2, #30
	beq     branch_2245992
	mov     r2, r1
	sub     r2, #0xc
	lsl     r7, r0, #2
	add     r3, r4, r2
	ldr     r2, [r3, r7]
	ldr     r0, [pc, #0x64] @ 0x22459d4, (=#0xfffffbff)
	and     r0, r2
	str     r0, [r3, r7]
	ldr     r2, [r6, r5]
	mov     r0, #0xc
	bic     r2, r0
	mov     r0, r1
	str     r2, [r6, r5]
	sub     r0, #0x42
	sub     r1, #0xa4
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x75
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245992

.thumb
branch_2245992: @ 2245992 :thumb
	mov     r2, r1
	sub     r2, #0xc
	add     r2, r4, r2
	lsl     r0, r0, #2
	ldr     r6, [r2, r0]
	mov     r5, #0x80
	mov     r3, r6
	tst     r3, r5
	beq     branch_22459be
	mov     r3, #0x80
	bic     r6, r3
	str     r6, [r2, r0]
	sub     r1, #0xa
	add     r5, #0xa4
	str     r1, [r4, r5]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x75
	bl      Function_2248b08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22459be

.thumb
branch_22459be: @ 22459be :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22459ca


.align 2


.word 0x2db0 @ 0x22459cc
.word 0xffff1fff @ 0x22459d0
.word 0xfffffbff @ 0x22459d4
.thumb
Function_22459d8: @ 22459d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x80] @ 0x2245a70, (=#0x80ff)
	tst     r0, r1
	beq     branch_2245a1a
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2245a1a
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_2245a2e
.thumb
branch_2245a1a: @ 2245a1a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x50] @ 0x2245a74, (=#0x2d90)
	ldr     r0, [r1, r0]
	lsr     r1, r0, #1
	ldr     r0, [pc, #0x4c] @ 0x2245a78, (=#0x215c)
	str     r1, [r4, r0]
	b       branch_2245a6a
@ 0x2245a2e

.thumb
branch_2245a2e: @ 2245a2e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x30
	tst     r0, r1
	ldr     r1, [r4, #0x64]
	beq     branch_2245a56
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x30] @ 0x2245a74, (=#0x2d90)
	ldr     r1, [r1, r0]
	mov     r0, #0x14
	mul     r0, r1
	mov     r1, #0x1e
	bl      Function_22563f8
	ldr     r1, [pc, #0x24] @ 0x2245a78, (=#0x215c)
	str     r0, [r4, r1]
	b       branch_2245a6a
@ 0x2245a56

.thumb
branch_2245a56: @ 2245a56 :thumb
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x14] @ 0x2245a74, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0x10] @ 0x2245a78, (=#0x215c)
	str     r0, [r4, r1]
.thumb
branch_2245a6a: @ 2245a6a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2245a6e


.align 2


.word 0x80ff @ 0x2245a70
.word 0x2d90 @ 0x2245a74
.word 0x215c @ 0x2245a78
.thumb
Function_2245a7c: @ 2245a7c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [pc, #0xd0] @ 0x2245b5c, (=#0x2d54)
	ldr     r1, [r4, #0x64]
	add     r3, r4, r0
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [r3, r0]
	mov     r5, #0x2
	lsl     r0, r1, #2
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r2, r0, #4
	lsl     r0, r1, #7
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r7, r0, #3
	lsl     r0, r1, #12
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r0, r0, #2
	mov     r12, r0
	lsl     r0, r1, #17
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r6, r0, #1
	lsl     r0, r1, #27
	lsr     r0, r0, #27
	lsl     r1, r1, #22
	and     r0, r5
	lsr     r1, r1, #27
	lsr     r0, r0, #1
	and     r1, r5
	orr     r0, r1
	mov     r1, r6
	orr     r1, r0
	mov     r0, r12
	orr     r0, r1
	orr     r0, r7
	mov     r1, r2
	orr     r1, r0
	ldr     r0, [pc, #0x88] @ 0x2245b60, (=#0x2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r5, [r3, r0]
	lsl     r0, r5, #2
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r6, r0, #26
	lsl     r0, r5, #7
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r3, r0, #27
	lsl     r0, r5, #12
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r2, r0, #28
	lsl     r0, r5, #17
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r7, r0, #29
	lsl     r0, r5, #27
	lsr     r1, r0, #27
	mov     r0, #0x1
	and     r0, r1
	lsl     r1, r5, #22
	lsr     r1, r1, #27
	lsl     r1, r1, #31
	lsr     r1, r1, #30
	orr     r0, r1
	orr     r0, r7
	orr     r0, r2
	orr     r0, r3
	mov     r1, r6
	orr     r1, r0
	ldr     r0, [pc, #0x40] @ 0x2245b60, (=#0x2154)
	add     r0, #0xc
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x38] @ 0x2245b60, (=#0x2154)
	ldr     r1, [r4, r0]
	mov     r0, #0x28
	mul     r0, r1
	mov     r1, #0x3f
	blx     Division
	ldr     r1, [pc, #0x2c] @ 0x2245b60, (=#0x2154)
	add     r0, #0x1e
	str     r0, [r4, r1]
	add     r1, #0xc
	ldr     r1, [r4, r1]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0x3f
	blx     Division
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x18] @ 0x2245b64, (=#0x2160)
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x9
	blt     branch_2245b56
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2245b56: @ 2245b56 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245b5a


.align 2


.word 0x2d54 @ 0x2245b5c
.word 0x2154 @ 0x2245b60
.word 0x2160 @ 0x2245b64
.thumb
Function_2245b68: @ 2245b68 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r2, [pc, #0x48] @ 0x2245bc0, (=#0x2d58)
	mov     r1, #0x0
	mov     r3, #0xc0
	mov     r5, r2
.thumb
branch_2245b7c: @ 2245b7c :thumb
	ldr     r6, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r6
	ldr     r6, [r4, #0x64]
	add     r0, r4, r0
	add     r0, r1, r0
	mov     r7, r6
	mul     r7, r3
	add     r6, r4, r7
	add     r6, r1, r6
	ldsb    r0, [r0, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x8
	strb    r0, [r6, r5]
	blt     branch_2245b7c
	ldr     r0, [r4, #0x64]
	ldr     r6, [r4, #0x6c]
	mov     r3, #0xc0
	mov     r1, r0
	ldr     r5, [pc, #0x20] @ 0x2245bc4, (=#0x2db0)
	mul     r1, r3
	mul     r3, r6
	add     r2, r4, r5
	add     r3, r4, r3
	ldr     r4, [r3, r5]
	mov     r3, #0x1
	lsl     r3, r3, #20
	ldr     r0, [r2, r1]
	and     r3, r4
	orr     r0, r3
	str     r0, [r2, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245bbe


.align 2


.word 0x2d58 @ 0x2245bc0
.word 0x2db0 @ 0x2245bc4
.thumb
Function_2245bc8: @ 2245bc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	ldr     r1, [r4, #0x6c]
	mov     r2, r0
	mov     r0, #0x62
	add     r3, r4, r1
	lsl     r0, r0, #2
	ldrb    r0, [r3, r0]
	cmp     r0, #0x0
	bne     branch_2245ca0
	mov     r0, r7
	bl      Function_223e208
	mov     r1, #0x6f
	lsl     r1, r1, #2
	lsl     r3, r0, #2
	add     r5, r4, r1
	ldr     r2, [r5, r3]
	mov     r0, #0x10
	orr     r0, r2
	str     r0, [r5, r3]
	ldr     r0, [r4, #0x6c]
	mov     r2, r1
	add     r6, r4, r0
	sub     r2, #0x34
	mov     r0, #0x3
	strb    r0, [r6, r2]
	ldr     r0, [pc, #0x9c] @ 0x2245cb0, (=#0x3044)
	ldr     r6, [r4, r0]
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #1
	add     r2, r4, r0
	mov     r0, r1
	sub     r0, #0x2c
	strh    r6, [r2, r0]
	ldr     r2, [r4, #0x6c]
	ldr     r0, [r4, #0x64]
	lsl     r2, r2, #2
	add     r2, r4, r2
	sub     r1, #0x24
	str     r0, [r2, r1]
	mov     r0, #0x3
	lsl     r0, r0, #7
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x7c] @ 0x2245cb0, (=#0x3044)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x64]
	mov     r1, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r2, [r4, r2]
	ldr     r3, [r5, r3]
	mov     r0, r7
	bl      Function_225a280
	mov     r1, #0x0
	mov     r2, r0
	mvn     r1, r1
	mul     r2, r1
	mov     r0, r7
	mov     r1, r4
	bl      Function_225aeb8
	ldr     r1, [r4, #0x6c]
	lsl     r1, r1, #2
	add     r2, r4, r1
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x64]
	lsl     r0, r0, #6
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x2c
	ldr     r0, [r2, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_2245ca8
	ldr     r0, [r4, #0x6c]
	add     r5, r4, r1
	lsl     r4, r0, #2
	ldr     r1, [r5, r4]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	str     r0, [r5, r4]
	b       branch_2245ca8
@ 0x2245ca0

.thumb
branch_2245ca0: @ 2245ca0 :thumb
	mov     r0, r4
	mov     r1, r2
	bl      Function_2248af0
.thumb
branch_2245ca8: @ 2245ca8 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2245cae


.align 2


.word 0x3044 @ 0x2245cb0
.thumb
Function_2245cb4: @ 2245cb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224a984
	mov     r6, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_224b3e8
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r6
	bl      Function_224b9f4
	ldr     r0, [pc, #0x18] @ 0x2245d2c, (=#0x216c)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x2245d30, (=#0x1fd849)
	tst     r0, r1
	beq     branch_2245d24
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_2245d24: @ 2245d24 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2245d2a


.align 2


.word 0x216c @ 0x2245d2c
.word 0x1fd849 @ 0x2245d30
.thumb
Function_2245d34: @ 2245d34 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2255c00
	cmp     r0, #0x0
	beq     branch_2245d62
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2245d62: @ 2245d62 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245d66


.align 2, 0


.thumb
Function_2245d68: @ 2245d68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_223df60
	ldr     r1, [pc, #0x21c] @ 0x2245fa0, (=#0x217d)
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_2245dfc
	mov     r0, #0x2
	strb    r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0xfd
	add     r0, #0xb
	str     r2, [r5, r0]
	mov     r2, #0x0
	add     r0, r1, #0x2
	strb    r2, [r5, r0]
	add     r6, r1, #0x2
.thumb
branch_2245d9e: @ 2245d9e :thumb
	ldr     r2, [pc, #0x204] @ 0x2245fa4, (=#0x217f)
	ldr     r1, [r5, #0x64]
	ldrb    r2, [r5, r2]
	mov     r0, r7
	bl      Function_223dfac
	ldr     r1, [pc, #0x1f8] @ 0x2245fa4, (=#0x217f)
	mov     r4, r0
	ldrb    r3, [r5, r1]
	ldr     r1, [r5, #0x64]
	add     r2, r5, r1
	ldr     r1, [pc, #0x1f0] @ 0x2245fa8, (=#0x219c)
	ldrb    r1, [r2, r1]
	cmp     r3, r1
	beq     branch_2245dfc
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x1c8] @ 0x2245fac, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245dfc
.thumb
branch_2245df4: @ 2245df4 :thumb
	ldrb    r0, [r5, r6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r6]
	b       branch_2245d9e
@ 0x2245dfc

.thumb
branch_2245dfc: @ 2245dfc :thumb
	ldr     r2, [pc, #0x1a4] @ 0x2245fa4, (=#0x217f)
	ldr     r1, [r5, #0x64]
	ldrb    r2, [r5, r2]
	mov     r0, r7
	bl      Function_223dfac
	mov     r4, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_20759cc
	ldr     r1, [pc, #0x178] @ 0x2245fb0, (=#0x2144)
	ldr     r2, [pc, #0x178] @ 0x2245fb4, (=#0x3044)
	str     r0, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r0, [r5, r1]
	lsl     r2, r2, #4
	add     r3, r5, r2
	ldr     r2, [pc, #0x170] @ 0x2245fb8, (=#0x3e1)
	ldrb    r2, [r3, r2]
	mul     r2, r0
	str     r2, [r5, r1]
	lsl     r0, r4, #1
	mov     r1, #0x5
	blx     Division
	ldr     r1, [pc, #0x158] @ 0x2245fb0, (=#0x2144)
	.hword  0x1c80 @ add r0, r0, #0x2
	ldr     r2, [r5, r1]
	mul     r0, r2
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	mov     r1, #0xb5
	add     r2, r5, r0
	lsl     r1, r1, #6
	ldrh    r0, [r2, r1]
	add     r1, #0x26
	ldrb    r1, [r2, r1]
	mov     r2, #0x2
	lsl     r1, r1, #27
	lsr     r1, r1, #27
	bl      Function_20759cc
	mov     r1, r0
	ldr     r0, [pc, #0x130] @ 0x2245fb0, (=#0x2144)
	ldr     r0, [r5, r0]
	blx     Function_20e2178
	ldr     r1, [pc, #0x128] @ 0x2245fb0, (=#0x2144)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x32
	blx     Division
	ldr     r1, [pc, #0x11c] @ 0x2245fb0, (=#0x2144)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0xc
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0]
	mul     r0, r2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #6
	add     r2, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_2245ec8
	ldr     r1, [r5, r1]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	ldr     r1, [pc, #0xe8] @ 0x2245fb0, (=#0x2144)
	str     r0, [r5, r1]
.thumb
branch_2245ec8: @ 2245ec8 :thumb
	ldr     r2, [pc, #0xe4] @ 0x2245fb0, (=#0x2144)
	mov     r0, r7
	ldr     r2, [r5, r2]
	mov     r1, r5
	bl      Function_225aeb8
	ldr     r1, [pc, #0xd8] @ 0x2245fb0, (=#0x2144)
	str     r0, [r5, r1]
	mov     r0, #0x0
	ldr     r2, [r5, r1]
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r3, r1
	ldr     r2, [pc, #0xd4] @ 0x2245fbc, (=#0x1e1)
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0xf5
	strb    r2, [r0, #0x0]
	add     r3, #0x3b
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x64]
	mov     r6, r1
	lsl     r3, r3, #8
	orr     r3, r0
	mov     r0, r5
	add     r0, #0xf8
	str     r3, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x3b
	ldrb    r0, [r5, r0]
	add     r6, #0x3b
	add     r3, r0, #0x1
	mov     r0, r1
	add     r0, #0x3b
	strb    r3, [r5, r0]
	mov     r0, r1
	add     r0, #0x38
	strb    r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x3b
	ldrb    r2, [r5, r0]
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	bge     branch_2245f92
.thumb
branch_2245f28: @ 2245f28 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_223dfac
	ldr     r1, [pc, #0x70] @ 0x2245fa4, (=#0x217f)
	mov     r4, r0
	ldrb    r3, [r5, r1]
	ldr     r1, [r5, #0x64]
	add     r2, r5, r1
	ldr     r1, [pc, #0x6c] @ 0x2245fa8, (=#0x219c)
	ldrb    r1, [r2, r1]
	cmp     r3, r1
	beq     branch_2245f98
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x44] @ 0x2245fac, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2245f98
.thumb
branch_2245f7a: @ 2245f7a :thumb
	ldrb    r0, [r5, r6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r6]
	ldr     r0, [pc, #0x20] @ 0x2245fa4, (=#0x217f)
	ldrb    r2, [r5, r0]
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	blt     branch_2245f28
	ldr     r0, [pc, #0x34] @ 0x2245fc0, (=#0x217c)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	b       branch_2245f98
@ 0x2245f92

.thumb
branch_2245f92: @ 2245f92 :thumb
	mov     r0, #0x1
	add     r1, #0x38
	strb    r0, [r5, r1]
.thumb
branch_2245f98: @ 2245f98 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245f9e


.align 2


.word 0x217d @ 0x2245fa0
.word 0x217f @ 0x2245fa4
.word 0x219c @ 0x2245fa8
.word 0x1ee @ 0x2245fac
.word 0x2144 @ 0x2245fb0
.word 0x3044 @ 0x2245fb4
.word 0x3e1 @ 0x2245fb8
.word 0x1e1 @ 0x2245fbc
.word 0x217c @ 0x2245fc0
.thumb
Function_2245fc4: @ 2245fc4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	mov     r1, #0x71
	lsl     r1, r1, #2
	mov     r2, #0x1
	add     r1, r4, r1
	lsl     r0, r0, #3
	ldr     r3, [r1, r0]
	lsl     r2, r2, #20
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x10] @ 0x2246000, (=#0xff9fffff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #9
	orr     r2, r3
	str     r2, [r1, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246000

.word 0xff9fffff @ 0x2246000
.thumb
Function_2246004: @ 2246004 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_224608e
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_224a984
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0x64] @ 0x224609c, (=#0x3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_2246084
	lsl     r0, r4, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x22460a0, (=#0x21a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x27
	beq     branch_2246084
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x50] @ 0x22460a4, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246084
	ldr     r0, [r5, #0x64]
	mov     r2, #0x75
	lsl     r0, r0, #6
	add     r0, r5, r0
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_2246084
	add     r1, r5, r2
	lsl     r0, r4, #6
	ldr     r3, [r1, r0]
	lsl     r3, r3, #28
	lsr     r3, r3, #31
	bne     branch_2246084
	sub     r2, #0xbc
	str     r4, [r5, r2]
	ldr     r3, [r1, r0]
	mov     r2, #0x8
	orr     r2, r3
	str     r2, [r1, r0]
	b       branch_2246096
@ 0x2246084

.thumb
branch_2246084: @ 2246084 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
	b       branch_2246096
@ 0x224608e

.thumb
branch_224608e: @ 224608e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2246096: @ 2246096 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224609a


.align 2


.word 0x3108 @ 0x224609c
.word 0x21a8 @ 0x22460a0
.word 0x2d8c @ 0x22460a4
.thumb
Function_22460a8: @ 22460a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_223df0c
	str     r0, [sp, #0x8]
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x6c]
	mov     r0, r5
	bl      Function_223e208
	mov     r7, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_2246102
	ldr     r0, [sp, #0x8]
	mov     r1, #0x84
	tst     r0, r1
	bne     branch_2246102
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
	b       branch_22461a0
@ 0x2246102

.thumb
branch_2246102: @ 2246102 :thumb
	ldr     r0, [r4, #0x64]
	add     r1, r4, r0
	ldr     r0, [pc, #0xa0] @ 0x22461a8, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #3
	add     r2, r4, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	bne     branch_2246140
	ldr     r0, [r4, #0x6c]
	add     r1, r4, r0
	ldr     r0, [pc, #0x80] @ 0x22461a8, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	lsl     r1, r7, #3
	add     r2, r4, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	beq     branch_224614a
.thumb
branch_2246140: @ 2246140 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
	b       branch_22461a0
@ 0x224614a

.thumb
branch_224614a: @ 224614a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	add     r3, r4, r2
	ldr     r2, [pc, #0x54] @ 0x22461ac, (=#0x2db8)
	ldrh    r3, [r3, r2]
	cmp     r3, #0x0
	bne     branch_2246168
	ldr     r3, [r4, #0x6c]
	mul     r0, r3
	add     r0, r4, r0
	ldrh    r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_224617e
.thumb
branch_2246168: @ 2246168 :thumb
	mov     r0, r4
	bl      Function_22559dc
	cmp     r0, #0x0
	beq     branch_224617e
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_22559dc
	cmp     r0, #0x0
	bne     branch_2246188
.thumb
branch_224617e: @ 224617e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
	b       branch_22461a0
@ 0x2246188

.thumb
branch_2246188: @ 2246188 :thumb
	ldr     r1, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	mov     r0, r4
	mov     r3, #0x3c
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22461a0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_22461a0: @ 22461a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22461a6


.align 2


.word 0x219c @ 0x22461a8
.word 0x2db8 @ 0x22461ac
.thumb
Function_22461b0: @ 22461b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, #0x63
	lsl     r2, r2, #2
	ldr     r3, [r4, #0x64]
	add     r5, r4, r2
	mov     r1, r0
	ldrb    r0, [r5, r3]
	cmp     r0, #0x0
	beq     branch_22461da
	mov     r0, r4
	bl      Function_2248af0
	b       branch_22461ea
@ 0x22461da

.thumb
branch_22461da: @ 22461da :thumb
	mov     r0, #0x2
	strb    r0, [r5, r3]
	ldr     r0, [r4, #0x64]
	add     r2, #0x2c
	add     r1, r4, r0
	ldr     r0, [pc, #0x8] @ 0x22461f0, (=#0x219c)
	ldrb    r0, [r1, r0]
	strb    r0, [r1, r2]
.thumb
branch_22461ea: @ 22461ea :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22461ee


.align 2


.word 0x219c @ 0x22461f0
.thumb
Function_22461f4: @ 22461f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [sp, #0x4]
	bl      Function_2248ad0
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x64]
	mov     r7, #0x0
	bl      Function_223df60
	str     r0, [sp, #0xc]
	mov     r0, r7
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_22462a2
	add     r5, sp, #0x18
.thumb
branch_2246226: @ 2246226 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x64]
	add     r2, r0, r1
	ldr     r0, [pc, #0xa0] @ 0x22462d0, (=#0x219c)
	ldrb    r2, [r2, r0]
	ldr     r0, [sp, #0x10]
	cmp     r0, r2
	beq     branch_2246296
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	bl      Function_223dfac
	mov     r1, #0xae
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2246296
	ldr     r0, [sp, #0x8]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x7c] @ 0x22462d4, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2246296
	mov     r4, #0x0
.thumb
branch_224625e: @ 224625e :thumb
	mov     r1, r4
	ldr     r0, [sp, #0x8]
	add     r1, #0x36
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r6
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_2246290
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	ldr     r2, [r2, #0x64]
	mov     r3, r6
	bl      Function_225b02c
	cmp     r0, #0x1
	bne     branch_2246290
	strh    r6, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2246290: @ 2246290 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_224625e
.thumb
branch_2246296: @ 2246296 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_2246226
.thumb
branch_22462a2: @ 22462a2 :thumb
	cmp     r7, #0x0
	beq     branch_22462c2
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, r7
	blx     Division
	lsl     r1, r1, #1
	add     r0, sp, #0x18
	ldrh    r2, [r0, r1]
	mov     r1, #0x49
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	b       branch_22462ca
@ 0x22462c2

.thumb
branch_22462c2: @ 22462c2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      Function_2248af0
.thumb
branch_22462ca: @ 22462ca :thumb
	mov     r0, #0x0
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x22462d0

.word 0x219c @ 0x22462d0
.word 0x1ee @ 0x22462d4
.thumb
Function_22462d8: @ 22462d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r4, #0x0
	bl      Function_223df1c
	cmp     r0, #0x0
	ble     branch_2246306
.thumb
branch_22462fa: @ 22462fa :thumb
	mov     r0, r5
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	blt     branch_22462fa
.thumb
branch_2246306: @ 2246306 :thumb
	ldr     r0, [pc, #0x28] @ 0x2246330, (=#0x3150)
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_2246318
	mov     r0, r6
	mov     r1, r7
	bl      Function_2248af0
	b       branch_224632a
@ 0x2246318

.thumb
branch_2246318: @ 2246318 :thumb
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r3, r6, r0
	ldr     r0, [r6, #0x64]
	lsl     r2, r0, #6
	ldr     r1, [r3, r2]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_224632a: @ 224632a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224632e


.align 2


.word 0x3150 @ 0x2246330
.thumb
Function_2246334: @ 2246334 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223e208
	mov     r1, r5
	ldr     r4, [r5, #0x64]
	add     r1, #0x84
	str     r4, [r1, #0x0]
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #3
	str     r1, [r5, #0x64]
	mov     r1, #0x71
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_224637e
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x68] @ 0x22463dc, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224637e
	str     r0, [r5, #0x6c]
	b       branch_22463ca
@ 0x224637e

.thumb
branch_224637e: @ 224637e :thumb
	ldr     r0, [pc, #0x60] @ 0x22463e0, (=#0x3044)
	ldr     r3, [r5, r0]
	lsl     r0, r3, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x22463e4, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x4
	beq     branch_2246392
	cmp     r0, #0x8
	bne     branch_2246396
.thumb
branch_2246392: @ 2246392 :thumb
	str     r4, [r5, #0x6c]
	b       branch_22463ca
@ 0x2246396

.thumb
branch_2246396: @ 2246396 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	lsl     r3, r3, #16
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	mov     r1, r5
	lsr     r3, r3, #16
	bl      Function_2253954
	mov     r1, #0xb5
	lsl     r1, r1, #2
	add     r2, r5, r1
	mov     r1, #0x1c
	mul     r1, r0
	ldr     r1, [r2, r1]
	lsl     r2, r1, #30
	lsr     r2, r2, #31
	bne     branch_22463c4
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	beq     branch_22463c8
.thumb
branch_22463c4: @ 22463c4 :thumb
	str     r0, [r5, #0x6c]
	b       branch_22463ca
@ 0x22463c8

.thumb
branch_22463c8: @ 22463c8 :thumb
	str     r4, [r5, #0x6c]
.thumb
branch_22463ca: @ 22463ca :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22463dc

.word 0x2d8c @ 0x22463dc
.word 0x3044 @ 0x22463e0
.word 0x3e6 @ 0x22463e4
.thumb
Function_22463e8: @ 22463e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r5, #0x64]
	ldr     r0, [r5, #0x6c]
	lsl     r4, r1, #6
	add     r2, r5, r4
	lsl     r1, r0, #2
	add     r2, r2, r1
	mov     r1, #0x76
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224641a
	bl      Function_20787cc
	mov     r1, #0x7b
	add     r2, r5, r4
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	tst     r0, r1
	bne     branch_2246440
.thumb
branch_224641a: @ 224641a :thumb
	ldr     r0, [r5, #0x6c]
	add     r2, r5, r4
	lsl     r1, r0, #2
	add     r2, r2, r1
	mov     r1, #0x1f
	lsl     r1, r1, #4
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2246448
	bl      Function_20787cc
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #6
	add     r2, r5, r1
	mov     r1, #0x81
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	tst     r0, r1
	beq     branch_2246448
.thumb
branch_2246440: @ 2246440 :thumb
	ldr     r0, [pc, #0x10] @ 0x2246454, (=#0x2158)
	mov     r1, #0x14
	str     r1, [r5, r0]
	b       branch_224644e
@ 0x2246448

.thumb
branch_2246448: @ 2246448 :thumb
	ldr     r0, [pc, #0x8] @ 0x2246454, (=#0x2158)
	mov     r1, #0xa
	str     r1, [r5, r0]
.thumb
branch_224644e: @ 224644e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246452


.align 2


.word 0x2158 @ 0x2246454
.thumb
Function_2246458: @ 2246458 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r4, #0x6c]
	mov     r0, r5
	bl      Function_223e208
	lsl     r1, r0, #2
	add     r2, r4, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_224648c
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_22464bc
.thumb
branch_224648c: @ 224648c :thumb
	mov     r5, #0x6f
	lsl     r5, r5, #2
	add     r2, r4, r5
	lsl     r1, r0, #2
	ldr     r6, [r2, r1]
	mov     r3, #0x1
	bic     r6, r3
	str     r6, [r2, r1]
	ldr     r6, [r2, r1]
	mov     r3, #0x2
	bic     r6, r3
	add     r5, #0x8
	str     r6, [r2, r1]
	lsl     r2, r0, #3
	add     r3, r4, r5
	ldr     r1, [r3, r2]
	mov     r0, #0x1c
	bic     r1, r0
	str     r1, [r3, r2]
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x10] @ 0x22464c8, (=#0xfffffc7f)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_22464c4
@ 0x22464bc

.thumb
branch_22464bc: @ 22464bc :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_22464c4: @ 22464c4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22464c8

.word 0xfffffc7f @ 0x22464c8
.thumb
Function_22464cc: @ 22464cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	add     r3, r4, r0
	ldr     r0, [r4, #0x6c]
	mov     r5, #0xc0
	mov     r2, r0
	mul     r2, r5
	ldr     r0, [r3, r2]
	lsl     r5, r5, #5
	tst     r5, r0
	beq     branch_22464fe
	mov     r0, r4
	bl      Function_2248af0
	b       branch_2246506
@ 0x22464fe

.thumb
branch_22464fe: @ 22464fe :thumb
	mov     r1, #0x1
	lsl     r1, r1, #12
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_2246506: @ 2246506 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224650a


.align 2, 0


.thumb
Function_224650c: @ 224650c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, r4
	bl      Function_223e208
	mov     r4, r0
	ldr     r2, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r5, r0
	ldr     r0, [pc, #0xe0] @ 0x2246618, (=#0x2db8)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246586
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x3c
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2246586
	mov     r0, r5
	ldr     r1, [pc, #0xcc] @ 0x224661c, (=#0x2ca)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0xac] @ 0x2246620, (=#0x2d67)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x2246624, (=#0x3044)
	add     r1, #0x40
	ldr     r0, [r5, r0]
	str     r0, [r5, r1]
	b       branch_2246614
@ 0x2246586

.thumb
branch_2246586: @ 2246586 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x88] @ 0x2246618, (=#0x2db8)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224660c
	mov     r1, #0x8a
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x21
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r0, r5, r2
	ldr     r2, [pc, #0x48] @ 0x2246618, (=#0x2db8)
	ldrh    r3, [r0, r2]
	mov     r0, r1
	add     r0, #0x40
	str     r3, [r5, r0]
	ldr     r3, [r5, #0x6c]
	mov     r0, #0x0
	mul     r1, r3
	add     r1, r5, r1
	strh    r0, [r1, r2]
	ldr     r0, [r5, #0x6c]
	add     r1, r5, r0
	ldr     r0, [pc, #0x40] @ 0x2246628, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	mov     r1, #0x71
	lsl     r1, r1, #2
	add     r3, r5, r1
	lsl     r2, r4, #3
	ldr     r4, [r3, r2]
	ldr     r1, [pc, #0x30] @ 0x224662c, (=#0xe07fffff)
	and     r1, r4
	lsl     r4, r4, #3
	lsr     r4, r4, #26
	orr     r0, r4
	lsl     r0, r0, #26
	lsr     r0, r0, #3
	orr     r0, r1
	str     r0, [r3, r2]
	b       branch_2246614
@ 0x224660c

.thumb
branch_224660c: @ 224660c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2246614: @ 2246614 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2246618

.word 0x2db8 @ 0x2246618
.word 0x2ca @ 0x224661c
.word 0x2d67 @ 0x2246620
.word 0x3044 @ 0x2246624
.word 0x219c @ 0x2246628
.word 0xe07fffff @ 0x224662c
.thumb
Function_2246630: @ 2246630 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [pc, #0x38] @ 0x2246678, (=#0x2154)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2246674
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x30] @ 0x224667c, (=#0x3044)
	ldr     r1, [r4, r1]
	lsl     r1, r1, #4
	add     r2, r4, r1
	ldr     r1, [pc, #0x2c] @ 0x2246680, (=#0x3e1)
	ldrb    r3, [r2, r1]
	ldr     r1, [pc, #0x2c] @ 0x2246684, (=#0x2d8c)
	add     r2, r4, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	mul     r0, r3
	blx     Function_20e2178
	ldr     r1, [pc, #0x10] @ 0x2246678, (=#0x2154)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_2246674
	mov     r0, #0x1
	str     r0, [r4, r1]
.thumb
branch_2246674: @ 2246674 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246678

.word 0x2154 @ 0x2246678
.word 0x3044 @ 0x224667c
.word 0x3e1 @ 0x2246680
.word 0x2d8c @ 0x2246684
.thumb
Function_2246688: @ 2246688 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r7
	bl      Function_2248ad0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, #0x64]
	mov     r2, #0x0
	bl      Function_223e2a4
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, #0x64]
	mov     r2, #0x2
	bl      Function_223e2a4
	mov     r6, #0xb7
	mov     r3, r0
	lsl     r6, r6, #6
	mov     r1, r4
	mov     r0, #0xc0
	mov     r4, #0x1
	add     r2, r7, r6
	mul     r1, r0
	ldr     r5, [r2, r1]
	lsl     r4, r4, #30
	orr     r5, r4
	str     r5, [r2, r1]
	mov     r1, r3
	mul     r1, r0
	ldr     r3, [r2, r1]
	orr     r3, r4
	str     r3, [r2, r1]
	ldr     r1, [r7, #0x64]
	mul     r0, r1
	add     r0, r7, r0
	ldr     r2, [r0, r6]
	lsr     r0, r4, #17
	tst     r0, r2
	beq     branch_22466f0
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_2248af0
	b       branch_2246794
@ 0x22466f0

.thumb
branch_22466f0: @ 22466f0 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223e208
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	bl      Function_223df1c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_224676a
	str     r7, [sp, #0x4]
.thumb
branch_224670c: @ 224670c :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	bl      Function_223e208
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	beq     branch_2246758
	mov     r2, #0x0
	ldr     r0, [pc, #0x7c] @ 0x224679c, (=#0x2d4c)
	mov     r4, r2
.thumb
branch_2246720: @ 2246720 :thumb
	ldr     r1, [r7, #0x64]
	mov     r6, #0xc0
	mul     r6, r1
	add     r1, r7, r6
	add     r6, r1, r4
	ldr     r1, [pc, #0x70] @ 0x224679c, (=#0x2d4c)
	ldr     r5, [sp, #0x4]
	ldrh    r6, [r6, r1]
	mov     r3, #0x0
.thumb
branch_2246732: @ 2246732 :thumb
	ldrh    r1, [r5, r0]
	cmp     r6, r1
	bne     branch_2246740
	cmp     r6, #0x0
	beq     branch_2246740
	cmp     r1, #0x0
	bne     branch_2246748
.thumb
branch_2246740: @ 2246740 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #0x4
	blt     branch_2246732
.thumb
branch_2246748: @ 2246748 :thumb
	cmp     r3, #0x4
	bne     branch_2246754
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x4
	blt     branch_2246720
.thumb
branch_2246754: @ 2246754 :thumb
	cmp     r3, #0x4
	bne     branch_224676a
.thumb
branch_2246758: @ 2246758 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_224670c
.thumb
branch_224676a: @ 224676a :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	bne     branch_224677c
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_2248af0
	b       branch_2246794
@ 0x224677c

.thumb
branch_224677c: @ 224677c :thumb
	mov     r0, #0xb7
	ldr     r1, [r7, #0x64]
	lsl     r0, r0, #6
	add     r3, r7, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x2
	ldr     r1, [r3, r2]
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_2246794: @ 2246794 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224679a


.align 2


.word 0x2d4c @ 0x224679c
.thumb
Function_22467a0: @ 22467a0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x6c]
	mov     r0, r7
	bl      Function_223e208
	ldr     r5, [r4, #0x74]
	mov     r0, #0xc0
	mul     r0, r5
	add     r1, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	tst     r0, r1
	beq     branch_2246838
	ldr     r1, [r4, #0x64]
	mov     r0, r7
	bl      Function_223e208
	mov     r6, r0
	mov     r0, r7
	mov     r1, r5
	bl      Function_223e208
	cmp     r6, r0
	beq     branch_2246838
	ldr     r6, [r4, #0x64]
	mov     r1, #0xc0
	mov     r0, r6
	mul     r0, r1
	ldr     r2, [pc, #0x50] @ 0x2246844, (=#0x2d8c)
	add     r5, r4, r0
	ldr     r0, [r5, r2]
	cmp     r0, #0x0
	beq     branch_2246838
	mov     r0, #0xc1
	lsl     r0, r0, #6
	ldr     r3, [r4, r0]
	cmp     r3, #0xa5
	beq     branch_2246838
	lsl     r3, r6, #1
	add     r3, r4, r3
	add     r0, #0x7c
	ldrh    r0, [r3, r0]
	mov     r3, r2
	mov     r6, #0x0
	add     r5, r5, r0
	sub     r3, #0x20
	strb    r6, [r5, r3]
	ldr     r3, [r4, #0x64]
	lsl     r0, r0, #1
	mov     r5, r3
	mul     r5, r1
	add     r3, r4, r5
	add     r0, r3, r0
	sub     r2, #0x40
	ldrh    r0, [r0, r2]
	add     r1, #0x64
	str     r0, [r4, r1]
	ldr     r2, [r4, #0x64]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0
	b       branch_2246840
@ 0x2246838

.thumb
branch_2246838: @ 2246838 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_2246840: @ 2246840 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246844

.word 0x2d8c @ 0x2246844
.thumb
Function_2246848: @ 2246848 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r4, #0x0
	bl      Function_223df1c
	cmp     r0, #0x0
	ble     branch_2246876
.thumb
branch_224686a: @ 224686a :thumb
	mov     r0, r5
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	blt     branch_224686a
.thumb
branch_2246876: @ 2246876 :thumb
	ldr     r0, [pc, #0x28] @ 0x22468a0, (=#0x3150)
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_2246888
	mov     r0, r6
	mov     r1, r7
	bl      Function_2248af0
	b       branch_224689a
@ 0x2246888

.thumb
branch_2246888: @ 2246888 :thumb
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r3, r6, r0
	ldr     r0, [r6, #0x64]
	lsl     r2, r0, #6
	ldr     r1, [r3, r2]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_224689a: @ 224689a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224689e


.align 2


.word 0x3150 @ 0x22468a0
.thumb
Function_22468a4: @ 22468a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r2, [r4, #0x6c]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x34] @ 0x22468f0, (=#0x2d60)
	ldr     r5, [pc, #0x38] @ 0x22468f4, (=#0x226e5f0)
	ldr     r3, [r2, r1]
	ldr     r1, [pc, #0x38] @ 0x22468f8, (=#0xffff)
	mov     r0, #0x0
.thumb
branch_22468c2: @ 22468c2 :thumb
	ldrh    r2, [r5, #0x0]
	cmp     r2, r3
	bge     branch_22468d2
	.hword  0x1d2d @ add r5, r5, #0x4
	ldrh    r2, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r1
	bne     branch_22468c2
.thumb
branch_22468d2: @ 22468d2 :thumb
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x1c] @ 0x22468f4, (=#0x226e5f0)
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x1c] @ 0x22468f8, (=#0xffff)
	cmp     r1, r0
	beq     branch_22468e4
	ldr     r0, [pc, #0x1c] @ 0x22468fc, (=#0x226e5f2)
	ldrh    r1, [r0, r2]
	b       branch_22468e6
@ 0x22468e4

.thumb
branch_22468e4: @ 22468e4 :thumb
	mov     r1, #0x78
.thumb
branch_22468e6: @ 22468e6 :thumb
	ldr     r0, [pc, #0x18] @ 0x2246900, (=#0x2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22468ee


.align 2


.word 0x2d60 @ 0x22468f0
.word 0x226e5f0 @ 0x22468f4
.word 0xffff @ 0x22468f8
.word 0x226e5f2 @ 0x22468fc
.word 0x2154 @ 0x2246900
.thumb
Function_2246904: @ 2246904 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_22469ac
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_22469ac
	mov     r1, #0x6
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x6c] @ 0x22469b0, (=#0x80ff)
	tst     r0, r2
	ldr     r0, [pc, #0x6c] @ 0x22469b4, (=#0x3044)
	beq     branch_224699e
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x68] @ 0x22469b8, (=#0x3e1)
	ldrb    r0, [r2, r0]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x64] @ 0x22469bc, (=#0x2154)
	str     r2, [r4, r0]
	ldr     r2, [r4, r1]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_2246966
	mov     r1, #0xb
	add     r0, #0xc
	str     r1, [r4, r0]
.thumb
branch_2246966: @ 2246966 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_2246978
	ldr     r0, [pc, #0x4c] @ 0x22469c0, (=#0x2160)
	mov     r1, #0x5
	str     r1, [r4, r0]
.thumb
branch_2246978: @ 2246978 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_224698a
	ldr     r0, [pc, #0x38] @ 0x22469c0, (=#0x2160)
	mov     r1, #0xa
	str     r1, [r4, r0]
.thumb
branch_224698a: @ 224698a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0xc0
	tst     r0, r1
	beq     branch_22469ac
	ldr     r0, [pc, #0x28] @ 0x22469c0, (=#0x2160)
	mov     r1, #0xf
	str     r1, [r4, r0]
	b       branch_22469ac
@ 0x224699e

.thumb
branch_224699e: @ 224699e :thumb
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x10] @ 0x22469b8, (=#0x3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x10] @ 0x22469bc, (=#0x2154)
	str     r1, [r4, r0]
.thumb
branch_22469ac: @ 22469ac :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22469b0

.word 0x80ff @ 0x22469b0
.word 0x3044 @ 0x22469b4
.word 0x3e1 @ 0x22469b8
.word 0x2154 @ 0x22469bc
.word 0x2160 @ 0x22469c0
.thumb
Function_22469c4: @ 22469c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	bl      Function_223df1c
	mov     r7, #0x0
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	bgt     branch_22469ec
	b       branch_2246afe
@ 0x22469ec

.thumb
branch_22469ec: @ 22469ec :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #6
	add     r0, r5, r0
	str     r5, [sp, #0x8]
	mov     r4, r5
	str     r0, [sp, #0x4]
.thumb
branch_22469f8: @ 22469f8 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x144] @ 0x2246b40, (=#0x21a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x27
	beq     branch_2246ae6
	ldr     r0, [pc, #0x140] @ 0x2246b44, (=#0x2d8c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246ae6
	ldr     r0, [pc, #0x13c] @ 0x2246b48, (=#0x2dac)
	ldr     r1, [r4, r0]
	mov     r0, #0x27
	tst     r0, r1
	bne     branch_2246ae6
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255ec0
	cmp     r0, #0x0
	bne     branch_2246ae6
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_223e208
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	bl      Function_223e208
	ldr     r1, [sp, #0x14]
	cmp     r1, r0
	beq     branch_2246ae6
	ldr     r0, [pc, #0x110] @ 0x2246b4c, (=#0x2dec)
	ldrh    r6, [r4, r0]
	cmp     r6, #0x0
	beq     branch_2246a50
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x104] @ 0x2246b50, (=#0x2d4c)
	ldrh    r0, [r1, r0]
	cmp     r6, r0
	beq     branch_2246a5a
.thumb
branch_2246a50: @ 2246a50 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255570
	mov     r6, r0
.thumb
branch_2246a5a: @ 2246a5a :thumb
	cmp     r6, #0x0
	beq     branch_2246ae6
	lsl     r1, r6, #16
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #16
	bl      Function_2254ee0
	str     r0, [sp, #0x18]
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xe4] @ 0x2246b54, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x80
	bne     branch_2246ae6
	ldr     r0, [sp, #0x18]
	add     r1, r4, r0
	ldr     r0, [pc, #0xdc] @ 0x2246b58, (=#0x2d6c)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246ae6
	ldr     r0, [pc, #0xd4] @ 0x2246b58, (=#0x2d6c)
	add     r1, r5, r0
	mov     r0, #0xc0
	mul     r0, r7
	add     r4, r1, r0
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	strb    r1, [r4, r0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x2e
	bne     branch_2246ab0
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246ab0
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	strb    r1, [r4, r0]
.thumb
branch_2246ab0: @ 2246ab0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2255f94
	str     r7, [r5, #0x64]
	ldr     r0, [r5, #0x78]
	lsl     r2, r7, #1
	str     r0, [r5, #0x6c]
	ldr     r1, [pc, #0x98] @ 0x2246b5c, (=#0x2158)
	mov     r0, #0x14
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x98] @ 0x2246b60, (=#0x3044)
	add     r2, r5, r2
	str     r6, [r5, r0]
	add     r0, #0x38
	strh    r6, [r2, r0]
	lsl     r0, r7, #4
	mov     r2, #0x27
	add     r0, r5, r0
	add     r1, #0x50
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2253ec0
	b       branch_2246afe
@ 0x2246ae6

.thumb
branch_2246ae6: @ 2246ae6 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r4, #0xc0
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	bge     branch_2246afe
	b       branch_22469f8
@ 0x2246afe

.thumb
branch_2246afe: @ 2246afe :thumb
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	bne     branch_2246b0e
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2248af0
	b       branch_2246b3a
@ 0x2246b0e

.thumb
branch_2246b0e: @ 2246b0e :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	mov     r4, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	cmp     r4, #0x37
	beq     branch_2246b2e
	cmp     r4, #0x73
	beq     branch_2246b2e
	cmp     r4, #0x7d
	bne     branch_2246b3a
.thumb
branch_2246b2e: @ 2246b2e :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x2c] @ 0x2246b64, (=#0x2df8)
	strh    r6, [r1, r0]
.thumb
branch_2246b3a: @ 2246b3a :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2246b40

.word 0x21a8 @ 0x2246b40
.word 0x2d8c @ 0x2246b44
.word 0x2dac @ 0x2246b48
.word 0x2dec @ 0x2246b4c
.word 0x2d4c @ 0x2246b50
.word 0x3de @ 0x2246b54
.word 0x2d6c @ 0x2246b58
.word 0x2158 @ 0x2246b5c
.word 0x3044 @ 0x2246b60
.word 0x2df8 @ 0x2246b64
.thumb
Function_2246b68: @ 2246b68 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [r4, #0x64]
	ldr     r3, [pc, #0x2c] @ 0x2246ba8, (=#0x2144)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x6c]
	ldr     r2, [pc, #0x28] @ 0x2246bac, (=#0x3044)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, r3]
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r3
	add     r0, #0x28
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	add     r3, #0x1c
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_2254fa8
	ldr     r1, [pc, #0x8] @ 0x2246ba8, (=#0x2144)
	str     r0, [r4, r1]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2246ba8

.word 0x2144 @ 0x2246ba8
.word 0x3044 @ 0x2246bac
.thumb
Function_2246bb0: @ 2246bb0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r6, #0x0
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r5, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r4
	bl      Function_224a984
	cmp     r7, #0x6
	bhi     branch_2246ca2
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r2, r4, #0
	lsl     r0, r7, #0
	lsl     r6, r1, #1
	lsl     r4, r4, #1
	lsl     r2, r7, #1
	lsl     r0, r2, #2
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2
@ 0x2246c20


.incbin "./baserom/overlay/overlay_0016.bin", 0xbae0, 0x2246ca2 - 0x2246c20


.thumb
branch_2246ca2: @ 2246ca2 :thumb
	cmp     r6, #0x0
	beq     branch_2246cae
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_2246cae: @ 2246cae :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2246cb4

.thumb
Function_2246cb4: @ 2246cb4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_224a984
	cmp     r6, #0x6
	bhi     branch_2246da8
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r4, r4, #0
	lsl     r4, r7, #0
	lsl     r4, r2, #1
	lsl     r4, r5, #1
	lsl     r4, r0, #2
	lsl     r4, r3, #2
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x1
	bic     r2, r0
	mov     r0, #0x1
	and     r0, r5
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8
@ 0x2246d1a


.incbin "./baserom/overlay/overlay_0016.bin", 0xbbda, 0x2246da8 - 0x2246d1a


.thumb
branch_2246da8: @ 2246da8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246dac

.thumb
Function_2246dac: @ 2246dac :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [r4, #0x6c]
	ldr     r1, [pc, #0x2c] @ 0x2246de8, (=#0x21f0)
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r2, [r0, r1]
	mov     r0, #0x19
	mul     r0, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldr     r1, [r2, r1]
	blx     Function_20e2178
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x14] @ 0x2246dec, (=#0x2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x96
	ble     branch_2246de2
	mov     r1, #0x96
	str     r1, [r4, r0]
.thumb
branch_2246de2: @ 2246de2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246de6


.align 2


.word 0x21f0 @ 0x2246de8
.word 0x2154 @ 0x2246dec
.thumb
Function_2246df0: @ 2246df0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223e208
	ldr     r1, [r5, #0x64]
	mov     r7, r0
	lsl     r1, r1, #6
	add     r2, r5, r1
	mov     r1, #0x83
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r0, r6
	bl      Function_223e208
	mov     r4, r0
	ldr     r0, [r5, #0x64]
	mov     r2, #0x82
	lsl     r0, r0, #6
	add     r0, r5, r0
	lsl     r2, r2, #2
	ldr     r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_2246ed0
	cmp     r7, r4
	beq     branch_2246ed0
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r0, r2]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x98] @ 0x2246edc, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2246ed0
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	ldr     r1, [pc, #0x88] @ 0x2246ee0, (=#0x2144)
	str     r0, [r5, r1]
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r1, r5, r0
	lsl     r0, r4, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2246e7e
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x68] @ 0x2246edc, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2246e7e
	str     r0, [r5, #0x6c]
	b       branch_2246e8c
@ 0x2246e7e

.thumb
branch_2246e7e: @ 2246e7e :thumb
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [r5, #0x6c]
.thumb
branch_2246e8c: @ 2246e8c :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x44] @ 0x2246edc, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2246ec4
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x2c] @ 0x2246edc, (=#0x2d8c)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2246ec4
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	add     r2, #0xf3
	bl      Function_2248b00
.thumb
branch_2246ec4: @ 2246ec4 :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_2246ed8
@ 0x2246ed0

.thumb
branch_2246ed0: @ 2246ed0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2246ed8: @ 2246ed8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246edc

.word 0x2d8c @ 0x2246edc
.word 0x2144 @ 0x2246ee0
.thumb
Function_2246ee4: @ 2246ee4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r0, [r4, #0x6c]
	ldr     r1, [pc, #0x2c] @ 0x2246f20, (=#0x21a8)
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldr     r0, [r0, r1]
	cmp     r0, #0x27
	ldr     r0, [pc, #0x24] @ 0x2246f24, (=#0x3044)
	bne     branch_2246f0e
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x20] @ 0x2246f28, (=#0x3e1)
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #1
	b       branch_2246f18
@ 0x2246f0e

.thumb
branch_2246f0e: @ 2246f0e :thumb
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2246f28, (=#0x3e1)
	ldrb    r0, [r2, r0]
.thumb
branch_2246f18: @ 2246f18 :thumb
	sub     r1, #0x54
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f20

.word 0x21a8 @ 0x2246f20
.word 0x3044 @ 0x2246f24
.word 0x3e1 @ 0x2246f28
.thumb
Function_2246f2c: @ 2246f2c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	lsl     r0, r1, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x18] @ 0x2246f60, (=#0x30bc)
	ldrh    r0, [r1, r0]
	add     r1, r2, r0
	ldr     r0, [pc, #0x18] @ 0x2246f64, (=#0x2d6c)
	ldrb    r1, [r1, r0]
	cmp     r1, #0x4
	bls     branch_2246f54
	mov     r1, #0x4
.thumb
branch_2246f54: @ 2246f54 :thumb
	ldr     r0, [pc, #0x10] @ 0x2246f68, (=#0x226e574)
	ldrb    r1, [r0, r1]
	ldr     r0, [pc, #0x10] @ 0x2246f6c, (=#0x2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f60

.word 0x30bc @ 0x2246f60
.word 0x2d6c @ 0x2246f64
.word 0x226e574 @ 0x2246f68
.word 0x2154 @ 0x2246f6c
.thumb
Function_2246f70: @ 2246f70 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r4, r0
	ldr     r1, [pc, #0x18] @ 0x2246fa0, (=#0x2d8c)
	mov     r0, #0x78
	ldr     r2, [r3, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r3, r1]
	mul     r0, r2
	blx     Function_20e2178
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xc] @ 0x2246fa4, (=#0x2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f9e


.align 2


.word 0x2d8c @ 0x2246fa0
.word 0x2154 @ 0x2246fa4
.thumb
Function_2246fa8: @ 2246fa8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x90] @ 0x2247054, (=#0x2dec)
	add     r0, r5, r0
	ldrh    r4, [r0, r3]
	cmp     r4, #0x0
	beq     branch_2246fdc
	add     r2, r3, #0x2
	ldrh    r2, [r0, r2]
	sub     r3, #0xa0
	lsl     r2, r2, #1
	add     r0, r0, r2
	ldrh    r0, [r0, r3]
	cmp     r4, r0
	beq     branch_2246fe4
.thumb
branch_2246fdc: @ 2246fdc :thumb
	mov     r0, r5
	bl      Function_2255570
	mov     r4, r0
.thumb
branch_2246fe4: @ 2246fe4 :thumb
	ldr     r0, [r5, #0x6c]
	lsl     r1, r0, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x6c] @ 0x2247058, (=#0x21a8)
	ldr     r1, [r2, r1]
	cmp     r1, #0x27
	beq     branch_2247048
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2247048
	mov     r0, r5
	mov     r1, r4
	bl      Function_225b0c0
	cmp     r0, #0x1
	bne     branch_2247048
	lsl     r0, r4, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x48] @ 0x224705c, (=#0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247048
	ldr     r2, [r5, #0x64]
	ldr     r3, [pc, #0x40] @ 0x2247060, (=#0x2dcc)
	mov     r0, r2
	mov     r6, #0xc0
	add     r1, r5, r3
	mul     r0, r6
	mov     r2, #0x1
	ldr     r7, [r1, r0]
	lsl     r2, r2, #30
	orr     r2, r7
	str     r2, [r1, r0]
	mov     r0, r6
	add     r0, #0xb4
	ldr     r2, [r5, r0]
	ldr     r0, [r5, #0x64]
	add     r3, #0x10
	mov     r1, r0
	mul     r1, r6
	add     r0, r5, r1
	str     r2, [r0, r3]
	add     r6, #0x64
	str     r4, [r5, r6]
	b       branch_2247050
@ 0x2247048

.thumb
branch_2247048: @ 2247048 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2247050: @ 2247050 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247054

.word 0x2dec @ 0x2247054
.word 0x21a8 @ 0x2247058
.word 0x3e1 @ 0x224705c
.word 0x2dcc @ 0x2247060
.thumb
Function_2247064: @ 2247064 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r0, [pc, #0x40] @ 0x22470bc, (=#0x3048)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_22470b0
	ldr     r0, [pc, #0x30] @ 0x22470bc, (=#0x3048)
	ldr     r3, [r4, r0]
	cmp     r3, #0x0
	beq     branch_22470b0
	lsl     r3, r3, #16
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_225b02c
	cmp     r0, #0x1
	bne     branch_22470b0
	ldr     r0, [pc, #0x14] @ 0x22470bc, (=#0x3048)
	ldr     r1, [r4, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_22470b8
@ 0x22470b0

.thumb
branch_22470b0: @ 22470b0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_22470b8: @ 22470b8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22470bc

.word 0x3048 @ 0x22470bc
.thumb
Function_22470c0: @ 22470c0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	ldr     r5, [pc, #0x40] @ 0x2247110, (=#0x2d58)
	mov     r1, #0x0
	ldr     r3, [r4, #0x6c]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	mov     r0, r1
	mov     r2, r3
	mov     r6, r5
.thumb
branch_22470de: @ 22470de :thumb
	ldsb    r7, [r2, r6]
	cmp     r7, #0x6
	ble     branch_22470ec
	add     r7, r3, r0
	ldsb    r7, [r7, r5]
	.hword  0x1fbf @ sub r7, r7, #0x6
	add     r1, r1, r7
.thumb
branch_22470ec: @ 22470ec :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x8
	blt     branch_22470de
	mov     r0, #0x14
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x18] @ 0x2247114, (=#0x2154)
	add     r2, #0x3c
	str     r2, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0xc8
	ble     branch_224710a
	mov     r1, #0xc8
	str     r1, [r4, r0]
.thumb
branch_224710a: @ 224710a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224710e


.align 2


.word 0x2d58 @ 0x2247110
.word 0x2154 @ 0x2247114
.thumb
Function_2247118: @ 2247118 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r6, [pc, #0x54] @ 0x2247188, (=#0x2dec)
	add     r2, r5, r0
	ldrh    r0, [r2, r6]
	cmp     r0, #0x0
	beq     branch_224714c
	add     r3, r6, #0x2
	ldrh    r3, [r2, r3]
	sub     r6, #0xa0
	lsl     r3, r3, #1
	add     r2, r2, r3
	ldrh    r2, [r2, r6]
	cmp     r0, r2
	beq     branch_2247152
.thumb
branch_224714c: @ 224714c :thumb
	mov     r0, r5
	bl      Function_2255570
.thumb
branch_2247152: @ 2247152 :thumb
	ldr     r1, [r5, #0x6c]
	lsl     r2, r1, #4
	add     r3, r5, r2
	ldr     r2, [pc, #0x30] @ 0x224718c, (=#0x21a8)
	ldr     r2, [r3, r2]
	cmp     r2, #0x27
	beq     branch_224717c
	lsl     r0, r0, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2247190, (=#0x3e1)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2247184
	lsl     r0, r1, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2247184
.thumb
branch_224717c: @ 224717c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248af0
.thumb
branch_2247184: @ 2247184 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247188

.word 0x2dec @ 0x2247188
.word 0x21a8 @ 0x224718c
.word 0x3e1 @ 0x2247190
.thumb
Function_2247194: @ 2247194 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r7
	bl      Function_223e208
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	beq     branch_22471e6
	cmp     r1, #0x1
	beq     branch_22471e6
	cmp     r1, #0x2
	beq     branch_2247264
	b       branch_224733e
@ 0x22471e6

.thumb
branch_22471e6: @ 22471e6 :thumb
	cmp     r6, #0x5
	bls     branch_22471ec
	b       branch_224733e
@ 0x22471ec

.thumb
branch_22471ec: @ 22471ec :thumb
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r2, r5, #0
	lsl     r2, r7, #0
	lsl     r2, r1, #1
	lsl     r2, r3, #1
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r5, r0, #29
	b       branch_224733e
@ 0x2247214


.incbin "./baserom/overlay/overlay_0016.bin", 0xc0d4, 0x2247264 - 0x2247214


.thumb
branch_2247264: @ 2247264 :thumb
	cmp     r6, #0x5
	bhi     branch_224733e
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r5, #0
	lsl     r2, r1, #1
	lsl     r2, r5, #1
	lsl     r2, r1, #2
	lsl     r2, r5, #2
	mov     r2, #0x71
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r3, r0, #3
	ldr     r7, [r6, r3]
	mov     r1, #0x1c
	bic     r7, r1
	sub     r2, #0x8
	str     r7, [r6, r3]
	add     r3, r4, r2
	lsl     r2, r0, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e
@ 0x22472a0


.incbin "./baserom/overlay/overlay_0016.bin", 0xc160, 0x224733e - 0x22472a0


.thumb
branch_224733e: @ 224733e :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2247350
	cmp     r5, #0x0
	bne     branch_2247350
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_2247350: @ 2247350 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2247362
	cmp     r5, #0x0
	beq     branch_2247362
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_2247362: @ 2247362 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2247368


.incbin "./baserom/overlay/overlay_0016.bin", 0xc228, 0x2247378 - 0x2247368


.thumb
Function_2247378: @ 2247378 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #6
	add     r2, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_22473a4
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_22473a4: @ 22473a4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22473a8

.thumb
Function_22473a8: @ 22473a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [r4, #0x6c]
	mov     r2, #0xc0
	mov     r3, r0
	mul     r3, r2
	add     r5, r4, r3
	ldr     r3, [pc, #0x28] @ 0x22473f0, (=#0x2dac)
	ldr     r0, [r5, r3]
	cmp     r0, #0x0
	bne     branch_22473e6
	add     r0, r3, #0x4
	ldr     r5, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r5
	bne     branch_22473e6
	ldr     r0, [r4, #0x64]
	mul     r2, r0
	add     r0, r4, r2
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	bne     branch_22473ec
.thumb
branch_22473e6: @ 22473e6 :thumb
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_22473ec: @ 22473ec :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22473f0

.word 0x2dac @ 0x22473f0
.thumb
Function_22473f4: @ 22473f4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2256128
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x1c] @ 0x224743c, (=#0x2dcc)
	ldr     r1, [r2, r1]
	lsl     r1, r1, #19
	lsr     r2, r1, #29
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r2, r1
	bcc     branch_224742e
	cmp     r0, #0x2
	bge     branch_2247436
.thumb
branch_224742e: @ 224742e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2247436: @ 2247436 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224743a


.align 2


.word 0x2dcc @ 0x224743c
.thumb
Function_2247440: @ 2247440 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223e208
	mov     r2, #0x72
	mov     r1, #0x1
	mov     r3, r0
	eor     r3, r1
	lsl     r0, r3, #3
	add     r5, r4, r0
	lsl     r2, r2, #2
	ldr     r5, [r5, r2]
	lsl     r5, r5, #28
	lsr     r5, r5, #30
	cmp     r5, #0x2
	bne     branch_2247496
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r3, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r5, [r2, r0]
	mov     r3, #0x1
	bic     r5, r3
	orr     r1, r5
	str     r1, [r2, r0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
	b       branch_22474be
@ 0x2247496

.thumb
branch_2247496: @ 2247496 :thumb
	mov     r5, r2
	sub     r5, #0xc
	add     r5, r4, r5
	lsl     r3, r3, #2
	ldr     r6, [r5, r3]
	lsl     r1, r1, #10
	orr     r1, r6
	str     r1, [r5, r3]
	add     r2, r4, r2
	ldr     r4, [r2, r0]
	mov     r3, #0xc
	mov     r1, r4
	bic     r1, r3
	lsl     r3, r4, #28
	lsr     r3, r3, #30
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #30
	lsr     r3, r3, #28
	orr     r1, r3
	str     r1, [r2, r0]
.thumb
branch_22474be: @ 22474be :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22474c2


.align 2, 0


.thumb
Function_22474c4: @ 22474c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_224a984
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_223e208
	mov     r1, #0x72
	lsl     r1, r1, #2
	add     r4, r5, r1
	lsl     r6, r0, #3
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r6]
	lsl     r0, r0, #28
	lsr     r0, r0, #30
	beq     branch_224755e
	sub     r1, #0x94
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, #0x6
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	str     r7, [r0, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x3
	beq     branch_224753c
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x3
	bne     branch_2247566
.thumb
branch_224753c: @ 224753c :thumb
	mov     r0, #0x6f
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	add     r2, r5, r0
	lsl     r1, r1, #2
	ldr     r7, [r2, r1]
	ldr     r3, [pc, #0x20] @ 0x224756c, (=#0xfffffbff)
	sub     r0, #0x88
	and     r3, r7
	str     r3, [r2, r1]
	ldr     r2, [r4, r6]
	mov     r1, #0xc
	bic     r2, r1
	str     r2, [r4, r6]
	mov     r1, #0x0
	str     r1, [r5, r0]
	b       branch_2247566
@ 0x224755e

.thumb
branch_224755e: @ 224755e :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2247566: @ 2247566 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224756c

.word 0xfffffbff @ 0x224756c
.thumb
Function_2247570: @ 2247570 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	cmp     r4, #0x0
	bne     branch_2247620
	mov     r0, r6
	bl      Function_223df1c
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2247688
.thumb
branch_22475b2: @ 22475b2 :thumb
	ldr     r0, [pc, #0xdc] @ 0x2247690, (=#0x21ec)
	add     r1, r5, r6
	ldrb    r4, [r1, r0]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_22475ea
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2247616
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xbc] @ 0x2247694, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247616
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
	b       branch_2247688
@ 0x22475ea

.thumb
branch_22475ea: @ 22475ea :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4
	cmp     r0, #0x0
	beq     branch_2247608
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x90] @ 0x2247694, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2247616
.thumb
branch_2247608: @ 2247608 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
	b       branch_2247688
@ 0x2247616

.thumb
branch_2247616: @ 2247616 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_22475b2
	b       branch_2247688
@ 0x2247620

.thumb
branch_2247620: @ 2247620 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_224765e
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2247688
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x48] @ 0x2247694, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247688
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
	b       branch_2247688
@ 0x224765e

.thumb
branch_224765e: @ 224765e :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4
	cmp     r0, #0x0
	beq     branch_224767c
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2247694, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2247688
.thumb
branch_224767c: @ 224767c :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248af0
	add     r5, #0x80
	str     r4, [r5, #0x0]
.thumb
branch_2247688: @ 2247688 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224768e


.align 2


.word 0x21ec @ 0x2247690
.word 0x2d8c @ 0x2247694
.thumb
Function_2247698: @ 2247698 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224a984
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_223e208
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_223e208
	cmp     r6, r0
	bne     branch_22476f4
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_22476f4: @ 22476f4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22476f8

.thumb
Function_22476f8: @ 22476f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	bl      Function_223df60
	cmp     r0, #0x0
	bgt     branch_2247718
	b       branch_2247862
@ 0x2247718

.thumb
branch_2247718: @ 2247718 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_223dfac
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	cmp     r0, #0x35
	bne     branch_22477e6
	cmp     r6, #0x0
	beq     branch_22477e6
	ldr     r0, [pc, #0x10c] @ 0x2247868, (=#0x1ee)
	cmp     r6, r0
	beq     branch_22477e6
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_22477e6
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x0
	bne     branch_22477e6
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	.hword  0x1e40 @ sub r0, r0, #0x1
	mov     r1, #0xa
	blx     Function_20e2178
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, #0xa
	bcc     branch_224779e
	mov     r3, #0x9
.thumb
branch_224779e: @ 224779e :thumb
	mov     r1, #0x0
	ldr     r2, [pc, #0xc8] @ 0x224786c, (=#0x226eaa8)
	str     r1, [sp, #0xc]
.thumb
branch_22477a4: @ 22477a4 :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r0, r5
	ble     branch_22477be
	ldr     r2, [sp, #0xc]
	ldr     r5, [pc, #0xc0] @ 0x2247870, (=#0x226e66c)
	add     r2, r3, r2
	lsl     r2, r2, #1
	mov     r0, r4
	mov     r1, #0x6
	add     r2, r5, r2
	bl      Function_2074b30
	b       branch_22477e6
@ 0x22477be

.thumb
branch_22477be: @ 22477be :thumb
	cmp     r5, #0x62
	blt     branch_22477dc
	cmp     r5, #0x63
	bgt     branch_22477dc
	mov     r2, #0x63
	sub     r2, r2, r5
	add     r2, r3, r2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xa4] @ 0x2247874, (=#0x226e590)
	mov     r0, r4
	mov     r1, #0x6
	add     r2, r2, r3
	bl      Function_2074b30
	b       branch_22477e6
@ 0x22477dc

.thumb
branch_22477dc: @ 22477dc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [sp, #0xc]
	cmp     r1, #0x9
	blt     branch_22477a4
.thumb
branch_22477e6: @ 22477e6 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x76
	bne     branch_224784c
	cmp     r6, #0x0
	beq     branch_224784c
	ldr     r0, [pc, #0x74] @ 0x2247868, (=#0x1ee)
	cmp     r6, r0
	beq     branch_224784c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_224784c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xa1
	str     r2, [sp, #0xc]
	mov     r5, #0xa
	bl      Function_2074470
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0xa
	ble     branch_224781e
	ldr     r0, [sp, #0xc]
.thumb
branch_2247814: @ 2247814 :thumb
	add     r5, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r1
	blt     branch_2247814
	str     r0, [sp, #0xc]
.thumb
branch_224781e: @ 224781e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0xa
	blt     branch_2247828
	bl      Function_2022974
.thumb
branch_2247828: @ 2247828 :thumb
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	ldr     r2, [sp, #0xc]
	ldr     r0, [pc, #0x40] @ 0x2247878, (=#0x226eab4)
	ldrb    r0, [r0, r2]
	cmp     r1, r0
	bge     branch_224784c
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0xc
	bl      Function_2074b30
.thumb
branch_224784c: @ 224784c :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      Function_223df60
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	bge     branch_2247862
	b       branch_2247718
@ 0x2247862

.thumb
branch_2247862: @ 2247862 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2247868

.word 0x1ee @ 0x2247868
.word 0x226eaa8 @ 0x224786c
.word 0x226e66c @ 0x2247870
.word 0x226e590 @ 0x2247874
.word 0x226eab4 @ 0x2247878
.thumb
Function_224787c: @ 224787c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, #0xb5
	ldr     r1, [r4, #0x64]
	lsl     r0, r0, #2
	add     r3, r4, r0
	mov     r0, #0x1c
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r3, r2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22478a2


.align 2, 0


.thumb
Function_22478a4: @ 22478a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_22588a4
	cmp     r0, #0x1
	bne     branch_22478e0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_22478e0: @ 22478e0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22478e4

.thumb
Function_22478e4: @ 22478e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	bl      Function_224a984
	mov     r1, r0
	cmp     r6, #0x0
	bne     branch_2247938
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r4, r0
	bne     branch_224794a
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
	b       branch_224794a
@ 0x2247938

.thumb
branch_2247938: @ 2247938 :thumb
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r4, r0
	beq     branch_224794a
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_224794a: @ 224794a :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2247950

.thumb
Function_2247950: @ 2247950 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248b10
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225b0fc
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224799a


.align 2, 0


.thumb
Function_224799c: @ 224799c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248b10
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_225b0fc
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22479e6


.align 2, 0


.thumb
Function_22479e8: @ 22479e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x79
	bne     branch_2247a16
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247a16

.thumb
branch_2247a16: @ 2247a16 :thumb
	mov     r0, r4
	bl      Function_223e22c
	cmp     r0, #0xc
	ble     branch_2247a22
	mov     r0, #0xc
.thumb
branch_2247a22: @ 2247a22 :thumb
	ldr     r1, [pc, #0x54] @ 0x2247a78, (=#0x226eac0)
	mov     r2, #0x1b
	ldrb    r4, [r1, r0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_2247a6a
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r4, r0
	beq     branch_2247a6a
	ldr     r1, [r5, #0x64]
	lsl     r0, r4, #24
	mov     r3, r1
	mov     r2, #0xc0
	mul     r3, r2
	ldr     r1, [pc, #0x28] @ 0x2247a7c, (=#0x2d64)
	lsr     r0, r0, #24
	add     r3, r5, r3
	strb    r0, [r3, r1]
	ldr     r3, [r5, #0x64]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r6, r3
	mul     r6, r2
	add     r3, r5, r6
	strb    r0, [r3, r1]
	add     r2, #0x70
	str     r4, [r5, r2]
	b       branch_2247a72
@ 0x2247a6a

.thumb
branch_2247a6a: @ 2247a6a :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2247a72: @ 2247a72 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247a76


.align 2


.word 0x226eac0 @ 0x2247a78
.word 0x2d64 @ 0x2247a7c
.thumb
Function_2247a80: @ 2247a80 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_223e22c
	cmp     r0, #0xc
	ble     branch_2247a9a
	mov     r0, #0xc
.thumb
branch_2247a9a: @ 2247a9a :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xc] @ 0x2247aac, (=#0x226e652)
	ldrh    r1, [r0, r1]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247aaa


.align 2


.word 0x226e652 @ 0x2247aac
.thumb
Function_2247ab0: @ 2247ab0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_223e22c
	cmp     r0, #0xc
	ble     branch_2247aca
	mov     r0, #0xc
.thumb
branch_2247aca: @ 2247aca :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8] @ 0x2247ad8, (=#0x226e690)
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x8] @ 0x2247adc, (=#0x2174)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247ad8

.word 0x226e690 @ 0x2247ad8
.word 0x2174 @ 0x2247adc
.thumb
Function_2247ae0: @ 2247ae0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r5, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258b18
	cmp     r0, #0x0
	beq     branch_2247b12
	ldr     r1, [pc, #0x1c] @ 0x2247b20, (=#0x2154)
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258b2c
	ldr     r1, [pc, #0x14] @ 0x2247b24, (=#0x2160)
	str     r0, [r4, r1]
	b       branch_2247b1a
@ 0x2247b12

.thumb
branch_2247b12: @ 2247b12 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2248af0
.thumb
branch_2247b1a: @ 2247b1a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247b1e


.align 2


.word 0x2154 @ 0x2247b20
.word 0x2160 @ 0x2247b24
.thumb
Function_2247b28: @ 2247b28 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r4, r0
	ldr     r0, [pc, #0x50] @ 0x2247ba0, (=#0x2db8)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247b6e
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r3, #0x3c
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2247b6e
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
	b       branch_2247b9c
@ 0x2247b6e

.thumb
branch_2247b6e: @ 2247b6e :thumb
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r3, r4, r0
	ldr     r0, [pc, #0x28] @ 0x2247ba0, (=#0x2db8)
	ldrh    r1, [r3, r0]
	cmp     r1, #0x0
	beq     branch_2247b88
	add     r0, #0x14
	ldr     r0, [r3, r0]
	lsl     r0, r0, #3
	lsr     r0, r0, #31
	bne     branch_2247b94
.thumb
branch_2247b88: @ 2247b88 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2258cb4
	cmp     r0, #0x1
	beq     branch_2247b9c
.thumb
branch_2247b94: @ 2247b94 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2247b9c: @ 2247b9c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247ba0

.word 0x2db8 @ 0x2247ba0
.thumb
Function_2247ba4: @ 2247ba4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259204
	cmp     r0, #0x1
	beq     branch_2247bd0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2247bd0: @ 2247bd0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247bd4

.thumb
Function_2247bd4: @ 2247bd4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	str     r2, [sp, #0x8]
	bl      Function_2265b2c
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2247c02


.align 2, 0


.thumb
Function_2247c04: @ 2247c04 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2259ab4
	mov     r4, r0
	beq     branch_2247c4c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r1, r0
	cmp     r4, #0xff
	bne     branch_2247c3a
	mov     r0, r5
	bl      Function_2248af0
	b       branch_2247c42
@ 0x2247c3a

.thumb
branch_2247c3a: @ 2247c3a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_2247c42: @ 2247c42 :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_223f500
.thumb
branch_2247c4c: @ 2247c4c :thumb
	ldr     r1, [pc, #0x10] @ 0x2247c60, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247c5e


.align 2


.word 0x3154 @ 0x2247c60
.thumb
Function_2247c64: @ 2247c64 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	bl      Function_223df1c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_2265a8c
	mov     r0, #0x0
	str     r0, [r4, #0x78]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2247c92


.align 2, 0


.thumb
Function_2247c94: @ 2247c94 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2259ab4
	mov     r5, r0
	beq     branch_2247cc6
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	cmp     r5, #0xff
	bne     branch_2247cc0
	mov     r0, r4
	bl      Function_2248af0
	b       branch_2247cc6
@ 0x2247cc0

.thumb
branch_2247cc0: @ 2247cc0 :thumb
	ldr     r0, [pc, #0x14] @ 0x2247cd8, (=#0x21a0)
	.hword  0x1e69 @ sub r1, r5, #0x1
	strb    r1, [r4, r0]
.thumb
branch_2247cc6: @ 2247cc6 :thumb
	ldr     r1, [pc, #0x14] @ 0x2247cdc, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247cd8

.word 0x21a0 @ 0x2247cd8
.word 0x3154 @ 0x2247cdc
.thumb
Function_2247ce0: @ 2247ce0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_223df0c
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2247cfe
	mov     r0, r4
	bl      Function_2266a38
.thumb
branch_2247cfe: @ 2247cfe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247d02


.align 2, 0


.thumb
Function_2247d04: @ 2247d04 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_223e208
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	mov     r2, r0
	lsl     r0, r6, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2247df8
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x98] @ 0x2247e04, (=#0x2d8c)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247df8
	lsl     r1, r7, #24
	lsl     r2, r2, #24
	mov     r0, #0x5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_22558cc
	cmp     r0, #0x14
	bgt     branch_2247d96
	bge     branch_2247dbe
	cmp     r0, #0x0
	bgt     branch_2247d90
	beq     branch_2247dce
	b       branch_2247dda
@ 0x2247d90

.thumb
branch_2247d90: @ 2247d90 :thumb
	cmp     r0, #0xa
	beq     branch_2247dc6
	b       branch_2247dda
@ 0x2247d96

.thumb
branch_2247d96: @ 2247d96 :thumb
	cmp     r0, #0x50
	bgt     branch_2247da2
	bge     branch_2247dae
	cmp     r0, #0x28
	beq     branch_2247db6
	b       branch_2247dda
@ 0x2247da2

.thumb
branch_2247da2: @ 2247da2 :thumb
	cmp     r0, #0xa0
	bne     branch_2247dda
	ldr     r0, [pc, #0x60] @ 0x2247e08, (=#0x215c)
	mov     r1, #0x2
	str     r1, [r5, r0]
	b       branch_2247dde
@ 0x2247dae

.thumb
branch_2247dae: @ 2247dae :thumb
	ldr     r0, [pc, #0x58] @ 0x2247e08, (=#0x215c)
	mov     r1, #0x4
	str     r1, [r5, r0]
	b       branch_2247dde
@ 0x2247db6

.thumb
branch_2247db6: @ 2247db6 :thumb
	ldr     r0, [pc, #0x50] @ 0x2247e08, (=#0x215c)
	mov     r1, #0x8
	str     r1, [r5, r0]
	b       branch_2247dde
@ 0x2247dbe

.thumb
branch_2247dbe: @ 2247dbe :thumb
	ldr     r0, [pc, #0x48] @ 0x2247e08, (=#0x215c)
	mov     r1, #0x10
	str     r1, [r5, r0]
	b       branch_2247dde
@ 0x2247dc6

.thumb
branch_2247dc6: @ 2247dc6 :thumb
	ldr     r0, [pc, #0x40] @ 0x2247e08, (=#0x215c)
	mov     r1, #0x20
	str     r1, [r5, r0]
	b       branch_2247dde
@ 0x2247dce

.thumb
branch_2247dce: @ 2247dce :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247dda

.thumb
branch_2247dda: @ 2247dda :thumb
	bl      Function_2022974
.thumb
branch_2247dde: @ 2247dde :thumb
	ldr     r0, [pc, #0x2c] @ 0x2247e0c, (=#0x2d90)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	ldr     r1, [pc, #0x1c] @ 0x2247e08, (=#0x215c)
	ldr     r1, [r5, r1]
	bl      Function_22563f8
	ldr     r1, [pc, #0x14] @ 0x2247e08, (=#0x215c)
	str     r0, [r5, r1]
	b       branch_2247e00
@ 0x2247df8

.thumb
branch_2247df8: @ 2247df8 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2247e00: @ 2247e00 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247e04

.word 0x2d8c @ 0x2247e04
.word 0x215c @ 0x2247e08
.word 0x2d90 @ 0x2247e0c
.thumb
Function_2247e10: @ 2247e10 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x20
	ldr     r0, [pc, #0x58] @ 0x2247e8c, (=#0x3044)
	bne     branch_2247e44
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x54] @ 0x2247e90, (=#0x3e5)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #17
	lsr     r4, r0, #16
	b       branch_2247e4e
@ 0x2247e44

.thumb
branch_2247e44: @ 2247e44 :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x44] @ 0x2247e90, (=#0x3e5)
	ldrb    r4, [r1, r0]
.thumb
branch_2247e4e: @ 2247e4e :thumb
	cmp     r4, #0x0
	bne     branch_2247e56
	bl      Function_2022974
.thumb
branch_2247e56: @ 2247e56 :thumb
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r4
	bge     branch_2247e7e
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x20] @ 0x2247e94, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247e7e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247e7e

.thumb
branch_2247e7e: @ 2247e7e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247e8a


.align 2


.word 0x3044 @ 0x2247e8c
.word 0x3e5 @ 0x2247e90
.word 0x2d8c @ 0x2247e94
.thumb
Function_2247e98: @ 2247e98 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	ldr     r0, [r5, #0x64]
	mov     r4, #0xc0
	mov     r1, r0
	mul     r1, r4
	mov     r0, #0xb5
	add     r3, r5, r1
	lsl     r0, r0, #6
	mov     r1, r4
	ldrh    r2, [r3, r0]
	add     r1, #0xf9
	cmp     r2, r1
	bne     branch_2247f36
	ldr     r1, [r5, #0x6c]
	mov     r2, r1
	mul     r2, r4
	mov     r1, r0
	add     r2, r5, r2
	add     r1, #0x4c
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2247f36
	add     r0, #0x70
	ldr     r1, [r3, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_2247f36
	mov     r0, r6
	bl      Function_223ebec
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2247efe
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223ee30
	bl      Function_2006494
	b       branch_2247f06
@ 0x2247efe

.thumb
branch_2247efe: @ 2247efe :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223f810
.thumb
branch_2247f06: @ 2247f06 :thumb
	cmp     r0, #0x0
	beq     branch_2247f12
	cmp     r0, #0x1
	beq     branch_2247f16
	cmp     r0, #0x2
	beq     branch_2247f1a
.thumb
branch_2247f12: @ 2247f12 :thumb
	mov     r4, #0x0
	b       branch_2247f1c
@ 0x2247f16

.thumb
branch_2247f16: @ 2247f16 :thumb
	mov     r4, #0xa
	b       branch_2247f1c
@ 0x2247f1a

.thumb
branch_2247f1a: @ 2247f1a :thumb
	mov     r4, #0x1e
.thumb
branch_2247f1c: @ 2247f1c :thumb
	mov     r0, r6
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r4
	ble     branch_2247f3e
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
	b       branch_2247f3e
@ 0x2247f36

.thumb
branch_2247f36: @ 2247f36 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_2247f3e: @ 2247f3e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247f42


.align 2, 0


.thumb
Function_2247f44: @ 2247f44 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x2247f74, (=#0x3de)
	add     r2, r4, r0
	ldr     r0, [pc, #0x18] @ 0x2247f78, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	bl      Function_2079104
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247f72


.align 2


.word 0x3de @ 0x2247f74
.word 0x3044 @ 0x2247f78
.thumb
Function_2247f7c: @ 2247f7c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22664f8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247fbc

.thumb
Function_2247fbc: @ 2247fbc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_226651c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247fe6


.align 2, 0


.thumb
Function_2247fe8: @ 2247fe8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22665ac
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248000

.thumb
Function_2248000: @ 2248000 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x14] @ 0x224803c, (=#0x219c)
	str     r0, [sp, #0x0]
	add     r3, r4, r1
	ldrb    r2, [r3, r2]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_223e30c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224803a


.align 2


.word 0x219c @ 0x224803c
.thumb
Function_2248040: @ 2248040 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255de8
	cmp     r0, #0x0
	beq     branch_224807e
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_224807e: @ 224807e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248082


.align 2, 0


.thumb
Function_2248084: @ 2248084 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_22665e4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22480ae


.align 2, 0


.thumb
Function_22480b0: @ 22480b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_226660c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22480da


.align 2, 0


.thumb
Function_22480dc: @ 22480dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_2266634
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248106


.align 2, 0


.thumb
Function_2248108: @ 2248108 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	bl      Function_226665c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248132


.align 2, 0


.thumb
Function_2248134: @ 2248134 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2266684
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224814a


.align 2, 0


.thumb
Function_224814c: @ 224814c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_22666a0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248162


.align 2, 0


.thumb
Function_2248164: @ 2248164 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22666bc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22481a4

.thumb
Function_22481a4: @ 22481a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226673c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22481d0

.thumb
Function_22481d0: @ 22481d0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_225708c
	cmp     r0, #0x0
	bne     branch_2248200
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2248200: @ 2248200 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248204

.thumb
Function_2248204: @ 2248204 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r2, r0
	cmp     r2, #0x3
	beq     branch_224822a
	cmp     r2, #0x4
	beq     branch_2248252
	b       branch_224827a
@ 0x224822a

.thumb
branch_224822a: @ 224822a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224828a
	mov     r7, #0x1
.thumb
branch_2248232: @ 2248232 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x54] @ 0x2248290, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_224824a
	mov     r0, r4
	mov     r1, r5
	bl      Function_22667e8
.thumb
branch_224824a: @ 224824a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2248232
	b       branch_224828a
@ 0x2248252

.thumb
branch_2248252: @ 2248252 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224828a
	mov     r7, #0x1
.thumb
branch_224825a: @ 224825a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x2c] @ 0x2248290, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2248272
	mov     r0, r4
	mov     r1, r5
	bl      Function_22667e8
.thumb
branch_2248272: @ 2248272 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_224825a
	b       branch_224828a
@ 0x224827a

.thumb
branch_224827a: @ 224827a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_22667e8
.thumb
branch_224828a: @ 224828a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224828e


.align 2


.word 0x195 @ 0x2248290
.thumb
Function_2248294: @ 2248294 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	bl      Function_223df1c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r2, r0
	cmp     r2, #0x3
	beq     branch_22482ba
	cmp     r2, #0x4
	beq     branch_22482e2
	b       branch_224830a
@ 0x22482ba

.thumb
branch_22482ba: @ 22482ba :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224831a
	mov     r7, #0x1
.thumb
branch_22482c2: @ 22482c2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x54] @ 0x2248320, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_22482da
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266804
.thumb
branch_22482da: @ 22482da :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22482c2
	b       branch_224831a
@ 0x22482e2

.thumb
branch_22482e2: @ 22482e2 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224831a
	mov     r7, #0x1
.thumb
branch_22482ea: @ 22482ea :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223df14
	ldr     r1, [pc, #0x2c] @ 0x2248320, (=#0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2248302
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266804
.thumb
branch_2248302: @ 2248302 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22482ea
	b       branch_224831a
@ 0x224830a

.thumb
branch_224830a: @ 224830a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r4
	bl      Function_2266804
.thumb
branch_224831a: @ 224831a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224831e


.align 2


.word 0x195 @ 0x2248320
.thumb
Function_2248324: @ 2248324 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x1
	mov     r5, #0x0
	bl      Function_2248af0
	ldr     r0, [sp, #0x4]
	bl      Function_2248ad0
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	bl      Function_2248ad0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r4
	bl      Function_224a984
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2248376
	ldr     r0, [sp, #0xc]
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_224845e
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_224845e
.thumb
branch_2248376: @ 2248376 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223df20
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223e258
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223df20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223df14
	mov     r0, r7
	mov     r4, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_22483e4
.thumb
branch_22483a6: @ 22483a6 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22483d8
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x104] @ 0x22484cc, (=#0x1ee)
	cmp     r0, r1
	beq     branch_22483d8
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r5, r5, r0
.thumb
branch_22483d8: @ 22483d8 :thumb
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_22483a6
.thumb
branch_22483e4: @ 22483e4 :thumb
	ldr     r0, [sp, #0xc]
	sub     r0, #0x4a
	str     r0, [sp, #0xc]
	cmp     r0, #0x1
	bhi     branch_2248406
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_2248406
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223e1f8
	cmp     r0, #0x2
	beq     branch_2248450
.thumb
branch_2248406: @ 2248406 :thumb
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2248450
	ldr     r7, [pc, #0xb8] @ 0x22484cc, (=#0x1ee)
.thumb
branch_2248414: @ 2248414 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2248444
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, r7
	beq     branch_2248444
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r5, r5, r0
.thumb
branch_2248444: @ 2248444 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_2248414
.thumb
branch_2248450: @ 2248450 :thumb
	cmp     r5, #0x0
	bne     branch_22484c6
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      Function_2248af0
	b       branch_22484c6
@ 0x224845e

.thumb
branch_224845e: @ 224845e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223df20
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_223df14
	mov     r0, r7
	mov     r4, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_22484ba
.thumb
branch_224847c: @ 224847c :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22484ae
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x2c] @ 0x22484cc, (=#0x1ee)
	cmp     r0, r1
	beq     branch_22484ae
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r5, r5, r0
.thumb
branch_22484ae: @ 22484ae :thumb
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_224847c
.thumb
branch_22484ba: @ 22484ba :thumb
	cmp     r5, #0x0
	bne     branch_22484c6
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      Function_2248af0
.thumb
branch_22484c6: @ 22484c6 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22484cc

.word 0x1ee @ 0x22484cc
.thumb
Function_22484d0: @ 22484d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r6
	bl      Function_2248ad0
	mov     r12, r0
	ldr     r1, [r6, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r6, r0
	add     r5, r0, #0x1
	ldr     r7, [pc, #0x54] @ 0x2248548, (=#0x2d58)
	mov     r4, #0x0
	mov     r3, #0x1
	add     r0, sp, #0x4
.thumb
branch_22484fa: @ 22484fa :thumb
	ldsb    r1, [r5, r7]
	cmp     r1, #0xc
	bge     branch_2248508
	lsl     r1, r4, #2
	.hword  0x1e5a @ sub r2, r3, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r2, [r0, r1]
.thumb
branch_2248508: @ 2248508 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r3, #0x8
	blt     branch_22484fa
	cmp     r4, #0x0
	beq     branch_2248538
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, r4
	blx     Division
	lsl     r1, r1, #2
	add     r0, sp, #0x4
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0x24] @ 0x224854c, (=#0x2170)
	add     r0, #0x27
	str     r0, [r6, r1]
	mov     r0, #0x2
	ldr     r2, [r6, r1]
	lsl     r0, r0, #30
	orr     r0, r2
	str     r0, [r6, r1]
	b       branch_2248540
@ 0x2248538

.thumb
branch_2248538: @ 2248538 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      Function_2248af0
.thumb
branch_2248540: @ 2248540 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2248546


.align 2


.word 0x2d58 @ 0x2248548
.word 0x2170 @ 0x224854c
.thumb
Function_2248550: @ 2248550 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r7
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	ldr     r0, [pc, #0x20] @ 0x2248594, (=#0x2db8)
	mov     r5, r2
	add     r6, r4, r0
	mov     r0, #0xc0
	mul     r5, r0
	lsl     r0, r2, #1
	add     r1, r4, r0
	ldrh    r3, [r6, r5]
	ldr     r0, [pc, #0x14] @ 0x2248598, (=#0x3124)
	strh    r3, [r1, r0]
	mov     r0, #0x0
	strh    r0, [r6, r5]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248594

.word 0x2db8 @ 0x2248594
.word 0x3124 @ 0x2248598
.thumb
Function_224859c: @ 224859c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [r4, #0x64]
	ldr     r2, [pc, #0x28] @ 0x22485dc, (=#0x3124)
	lsl     r0, r0, #1
	add     r0, r4, r0
	ldrh    r3, [r0, r2]
	cmp     r3, #0x0
	beq     branch_22485d0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r3, [r4, r0]
	ldr     r0, [r4, #0x64]
	mov     r1, #0x0
	lsl     r0, r0, #1
	add     r0, r4, r0
	strh    r1, [r0, r2]
	b       branch_22485d6
@ 0x22485d0

.thumb
branch_22485d0: @ 22485d0 :thumb
	mov     r0, r4
	bl      Function_2248af0
.thumb
branch_22485d6: @ 22485d6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22485da


.align 2


.word 0x3124 @ 0x22485dc
.thumb
Function_22485e0: @ 22485e0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_22588bc
	cmp     r0, #0x0
	bne     branch_2248610
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2248610: @ 2248610 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248614

.thumb
Function_2248614: @ 2248614 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2266820
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224862a


.align 2, 0


.thumb
Function_224862c: @ 224862c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226683c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248646


.align 2, 0


.thumb
Function_2248648: @ 2248648 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_22668d0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224865e


.align 2, 0


.thumb
Function_2248660: @ 2248660 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r4, #0x0
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_224a984
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_2258ab8
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_2258acc
	str     r0, [sp, #0x4]
	cmp     r6, #0x41
	bne     branch_22486b2
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bge     branch_22486b2
	mov     r4, #0x1
.thumb
branch_22486b2: @ 22486b2 :thumb
	cmp     r6, #0x67
	bne     branch_22486ca
	mov     r0, #0xc0
	mul     r0, r7
	add     r2, r5, r0
	ldr     r0, [pc, #0x40] @ 0x2248700, (=#0x2d8c)
	ldr     r1, [r2, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	cmp     r1, r0
	bne     branch_22486ca
	mov     r4, #0x1
.thumb
branch_22486ca: @ 22486ca :thumb
	cmp     r4, #0x0
	beq     branch_22486f8
	mov     r1, #0xc0
	mov     r0, r7
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2248700, (=#0x2d8c)
	ldr     r3, [r2, r0]
	ldr     r2, [pc, #0x28] @ 0x2248704, (=#0x215c)
	ldr     r0, [r5, r2]
	add     r0, r0, r3
	cmp     r0, #0x0
	bgt     branch_22486f8
	.hword  0x1e58 @ sub r0, r3, #0x1
	neg     r0, r0
	str     r0, [r5, r2]
	mov     r0, r2
	add     r0, #0x10
	ldr     r0, [r5, r0]
	add     r1, #0x40
	orr     r0, r1
	add     r2, #0x10
	str     r0, [r5, r2]
.thumb
branch_22486f8: @ 22486f8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22486fe


.align 2


.word 0x2d8c @ 0x2248700
.word 0x215c @ 0x2248704
.thumb
Function_2248708: @ 2248708 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224a984
	mov     r1, r0
	mov     r0, #0xc0
	mov     r4, r1
	mul     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x2248798, (=#0x2d8c)
	add     r2, r5, r4
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_224878a
	ldr     r0, [pc, #0x58] @ 0x224879c, (=#0x219c)
	add     r2, r5, r1
	ldrb    r2, [r2, r0]
	cmp     r2, #0x6
	beq     branch_224878a
	mov     r0, r6
	bl      Function_223dfac
	mov     r6, r0
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	ldr     r0, [pc, #0x34] @ 0x22487a0, (=#0x2d67)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1e
	beq     branch_2248792
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_22577a4
	cmp     r0, #0x0
	bne     branch_2248792
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
	b       branch_2248792
@ 0x224878a

.thumb
branch_224878a: @ 224878a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2248af0
.thumb
branch_2248792: @ 2248792 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248796


.align 2


.word 0x2d8c @ 0x2248798
.word 0x219c @ 0x224879c
.word 0x2d67 @ 0x22487a0
.thumb
Function_22487a4: @ 22487a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224a984
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x28] @ 0x22487fc, (=#0x2db0)
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	lsl     r1, r1, #24
	tst     r1, r2
	bne     branch_22487f0
	mov     r1, #0x1c
	mul     r1, r0
	mov     r0, #0xba
	add     r1, r4, r1
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_22487f8
.thumb
branch_22487f0: @ 22487f0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_22487f8: @ 22487f8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22487fc

.word 0x2db0 @ 0x22487fc
.thumb
Function_2248800: @ 2248800 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2248840
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_2248848
.thumb
branch_2248840: @ 2248840 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2248848: @ 2248848 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224884e


.align 2, 0


.thumb
Function_2248850: @ 2248850 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2257028
	str     r0, [r4, #0x6c]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224887e


.align 2, 0


.thumb
Function_2248880: @ 2248880 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_225b228
	cmp     r0, #0x0
	bne     branch_22488b0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_22488b0: @ 22488b0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22488b4

.thumb
Function_22488b4: @ 22488b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226692c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22488e0

.thumb
Function_22488e0: @ 22488e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_22669d8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224890c

.thumb
Function_224890c: @ 224890c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_224a984
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2266a18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248942


.align 2, 0


.thumb
Function_2248944: @ 2248944 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223df60
	cmp     r0, #0x6
	bne     branch_2248970
	ldr     r0, [r5, #0x64]
	bl      Function_20799a0
	cmp     r0, #0x12
	beq     branch_2248980
.thumb
branch_2248970: @ 2248970 :thumb
	ldr     r0, [pc, #0x10] @ 0x2248984, (=#0x2414)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2248980
	mov     r0, r4
	mov     r1, r6
	bl      Function_2248af0
.thumb
branch_2248980: @ 2248980 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248984

.word 0x2414 @ 0x2248984
.thumb
Function_2248988: @ 2248988 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	ldr     r2, [r4, #0x2c]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_22489b2
	ldr     r1, [pc, #0x44] @ 0x22489ec, (=#0x240c)
	ldr     r2, [r4, r1]
	mov     r1, #0x10
	tst     r1, r2
	bne     branch_22489b2
	mov     r4, #0x2
	b       branch_22489b4
@ 0x22489b2

.thumb
branch_22489b2: @ 22489b2 :thumb
	mov     r4, #0x1
.thumb
branch_22489b4: @ 22489b4 :thumb
	mov     r1, r5
	add     r1, #0xf0
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	ble     branch_22489d2
	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      Function_2248af0
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	b       branch_22489d4
@ 0x22489d2

.thumb
branch_22489d2: @ 22489d2 :thumb
	mov     r1, #0x0
.thumb
branch_22489d4: @ 22489d4 :thumb
	mov     r0, r5
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x22489f0, (=#0x3154)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22489ec

.word 0x240c @ 0x22489ec
.word 0x3154 @ 0x22489f0
.thumb
Function_22489f4: @ 22489f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r4, r0
	mov     r0, r5
	bl      Function_2248ad0
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x2248a2c, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0x14] @ 0x2248a30, (=#0x3e2)
	ldrb    r0, [r2, r0]
	cmp     r4, r0
	bne     branch_2248a26
	mov     r0, r5
	bl      Function_2248af0
.thumb
branch_2248a26: @ 2248a26 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248a2a


.align 2


.word 0x3044 @ 0x2248a2c
.word 0x3e2 @ 0x2248a30
.thumb
Function_2248a34: @ 2248a34 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r6, r0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r7, r0
	mov     r0, r4
	bl      Function_2248ad0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2248b10
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	bl      Function_20759cc
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248a7a


.align 2, 0


.thumb
Function_2248a7c: @ 2248a7c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248af0
	mov     r0, r4
	bl      Function_2248ad0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a984
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x2248ab0, (=#0x219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      Function_2251c94
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248aae


.align 2


.word 0x219c @ 0x2248ab0
.thumb
Function_2248ab4: @ 2248ab4 :thumb
	ldr     r2, [pc, #0x10] @ 0x2248ac8, (=#0x3154)
	mov     r0, #0x1
	ldr     r3, [r1, r2]
	bic     r3, r0
	mov     r0, #0x1
	orr     r0, r3
	str     r0, [r1, r2]
	ldr     r3, [pc, #0x8] @ 0x2248acc, (=#0x2251ef5)
	mov     r0, r1
	bx      r3
@ 0x2248ac8

.word 0x3154 @ 0x2248ac8
.word 0x2251ef5 @ 0x2248acc
.thumb
Function_2248ad0: @ 2248ad0 :thumb
	mov     r1, r0
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r2, r0, r1
	mov     r1, #0x27
	lsl     r1, r1, #8
	ldr     r2, [r2, r1]
	mov     r1, r0
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	add     r0, #0xb4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	mov     r0, r2
	bx      lr
@ 0x2248af0

.thumb
Function_2248af0: @ 2248af0 :thumb
	mov     r2, r0
	add     r2, #0xb4
	ldr     r2, [r2, #0x0]
	add     r0, #0xb4
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2248afe


.align 2, 0


.thumb
Function_2248b00: @ 2248b00 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248b04, (=#0x2251e1d)
	bx      r3
@ 0x2248b04

.word 0x2251e1d @ 0x2248b04
.thumb
Function_2248b08: @ 2248b08 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248b0c, (=#0x2251e5d)
	bx      r3
@ 0x2248b0c

.word 0x2251e5d @ 0x2248b0c
.thumb
Function_2248b10: @ 2248b10 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r2, #0x45
	bls     branch_2248b1a
	b       branch_2248e0c
@ 0x2248b1a

.thumb
branch_2248b1a: @ 2248b1a :thumb
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #2
	lsl     r6, r1, #2
	lsl     r4, r2, #2
	lsl     r2, r3, #2
	lsl     r0, r4, #2
	lsl     r6, r4, #2
	lsl     r4, r5, #2
	lsl     r2, r6, #2
	lsl     r2, r7, #2
	lsl     r0, r0, #3
	lsl     r0, r1, #3
	lsl     r6, r1, #3
	lsl     r0, r4, #3
	lsl     r2, r6, #3
	lsl     r0, r1, #4
	lsl     r6, r1, #4
	lsl     r4, r2, #4
	lsl     r2, r3, #4
	lsl     r0, r4, #4
	lsl     r6, r4, #4
	lsl     r4, r5, #4
	lsl     r4, r6, #4
	lsl     r0, r0, #5
	lsl     r0, r1, #5
	lsl     r0, r2, #5
	lsl     r6, r2, #5
	lsl     r6, r3, #5
	lsl     r6, r4, #5
	lsl     r6, r5, #5
	lsl     r6, r6, #5
	lsl     r4, r7, #5
	lsl     r2, r0, #6
	lsl     r0, r1, #6
	lsl     r6, r1, #6
	lsl     r4, r2, #6
	lsl     r2, r3, #6
	lsl     r2, r4, #6
	lsl     r2, r5, #6
	lsl     r2, r6, #6
	lsl     r2, r7, #6
	lsl     r0, r0, #7
	lsl     r0, r1, #7
	lsl     r6, r2, #7
	lsl     r4, r4, #7
	lsl     r4, r5, #7
	lsl     r2, r6, #7
	lsl     r0, r0, #8
	lsl     r6, r1, #8
	lsl     r6, r3, #8
	lsl     r6, r5, #8
	lsl     r0, r0, #9
	lsl     r6, r0, #9
	lsl     r4, r1, #9
	lsl     r2, r2, #9
	lsl     r6, r3, #9
	lsl     r4, r4, #9
	lsl     r2, r5, #9
	lsl     r0, r6, #9
	lsl     r6, r6, #9
	lsl     r4, r7, #9
	lsl     r2, r0, #10
	lsl     r2, r1, #10
	lsl     r0, r2, #10
	lsl     r4, r2, #10
	lsl     r2, r3, #10
	lsl     r0, r4, #10
	lsl     r0, r6, #10
	lsl     r0, r0, #11
	lsl     r6, r1, #11
	lsl     r6, r3, #11
	add     r0, #0x2c
	pop     {r4,pc}
@ 0x2248bb6


.incbin "./baserom/overlay/overlay_0016.bin", 0xda76, 0x2248e0c - 0x2248bb6


.thumb
branch_2248e0c: @ 2248e0c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248e10


.incbin "./baserom/overlay/overlay_0016.bin", 0xdcd0, 0x224a984 - 0x2248e10


.thumb
Function_224a984: @ 224a984 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r6, r1
	cmp     r2, #0x16
	bgt     branch_224a9ce
	cmp     r2, #0x0
	blt     branch_224a9d4
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r6, #0
	lsl     r2, r6, #0
	lsl     r6, r6, #0
	lsl     r2, r2, #3
	lsl     r6, r1, #1
	lsl     r2, r7, #0
	lsl     r6, r7, #0
	lsl     r2, r0, #1
	lsl     r0, r1, #1
	lsl     r0, r7, #3
	lsl     r4, r6, #1
	lsl     r0, r4, #4
	lsl     r4, r3, #2
	lsl     r2, r6, #0
	lsl     r6, r2, #5
	lsl     r6, r3, #5
	lsl     r6, r4, #5
	lsl     r2, r4, #6
	lsl     r2, r6, #0
	lsl     r6, r3, #7
	lsl     r0, r1, #8
	lsl     r2, r6, #8
	lsl     r6, r7, #0
.thumb
branch_224a9ce: @ 224a9ce :thumb
	cmp     r2, #0xff
	bne     branch_224a9d4
	b       branch_224abd4
@ 0x224a9d4

.thumb
branch_224a9d4: @ 224a9d4 :thumb
	ldr     r5, [r6, #0x64]
	b       branch_224abda
@ 0x224a9d8


.incbin "./baserom/overlay/overlay_0016.bin", 0xf898, 0x224abd4 - 0x224a9d8


.thumb
branch_224abd4: @ 224abd4 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r5, [r6, r0]
.thumb
branch_224abda: @ 224abda :thumb
	cmp     r5, #0xff
	bne     branch_224abe2
	bl      Function_2022974
.thumb
branch_224abe2: @ 224abe2 :thumb
	mov     r0, r5
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224abe8


.incbin "./baserom/overlay/overlay_0016.bin", 0xfaa8, 0x224abec - 0x224abe8


.thumb
Function_224abec: @ 224abec :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r1
	mov     r6, #0x0
	bl      Function_2248ad0
	str     r0, [r4, #0x0]
	mov     r0, r7
	bl      Function_2248ad0
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	bhi     branch_224aca0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r6, r7, #1
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r2, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r6, r0, #2
	lsl     r2, r1, #2
	b       branch_224aca0
@ 0x224ac8e


.incbin "./baserom/overlay/overlay_0016.bin", 0xfb4e, 0x224aca0 - 0x224ac8e


.thumb
branch_224aca0: @ 224aca0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224acb6
.thumb
branch_224aca6: @ 224aca6 :thumb
	mov     r0, r7
	bl      Function_2248ad0
	str     r0, [r4, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r6
	blt     branch_224aca6
.thumb
branch_224acb6: @ 224acb6 :thumb
	pop     {r3-r7,pc}
@ 0x224acb8

.thumb
Function_224acb8: @ 224acb8 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	ldr     r2, [r4, #0x0]
	mov     r5, r3
	strh    r2, [r5, #0x2]
	ldr     r2, [r4, #0x4]
	mov     r7, r0
	strb    r2, [r5, #0x1]
	ldrb    r2, [r5, #0x1]
	mov     r6, r1
	cmp     r2, #0x3c
	bls     branch_224acd2
	b       branch_224b3b4
@ 0x224acd2

.thumb
branch_224acd2: @ 224acd2 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r4, r2, #27
	lsl     r0, r7, #1
	lsl     r2, r0, #2
	lsl     r4, r1, #2
	lsl     r0, r3, #2
	lsl     r4, r4, #2
	lsl     r0, r6, #2
	lsl     r0, r6, #2
	lsl     r4, r7, #2
	lsl     r6, r0, #3
	lsl     r4, r3, #3
	lsl     r0, r6, #3
	lsl     r6, r0, #4
	lsl     r2, r3, #4
	lsl     r6, r5, #4
	lsl     r4, r0, #5
	lsl     r0, r3, #5
	lsl     r4, r5, #5
	lsl     r0, r0, #6
	lsl     r6, r2, #6
	lsl     r4, r4, #6
	lsl     r4, r7, #6
	lsl     r4, r2, #7
	lsl     r2, r5, #7
	lsl     r0, r0, #8
	lsl     r6, r2, #8
	lsl     r4, r5, #8
	lsl     r2, r0, #9
	lsl     r0, r3, #9
	lsl     r4, r5, #9
	lsl     r0, r0, #10
	lsl     r6, r2, #10
	lsl     r6, r6, #10
	lsl     r0, r3, #11
	lsl     r0, r7, #11
	lsl     r6, r2, #12
	lsl     r4, r6, #12
	lsl     r6, r2, #13
	lsl     r6, r6, #13
	lsl     r6, r2, #14
	lsl     r6, r6, #14
	lsl     r6, r2, #15
	lsl     r6, r6, #15
	lsl     r6, r2, #16
	lsl     r6, r6, #16
	lsl     r4, r2, #17
	lsl     r2, r6, #17
	lsl     r0, r2, #18
	lsl     r2, r4, #18
	lsl     r4, r0, #19
	lsl     r6, r4, #19
	lsl     r0, r1, #20
	lsl     r0, r5, #20
	lsl     r4, r2, #21
	lsl     r2, r0, #22
	lsl     r6, r5, #22
	lsl     r0, r3, #23
	lsl     r6, r0, #24
	lsl     r4, r6, #24
	lsl     r2, r4, #25
	lsl     r0, r2, #26
	ldr     r2, [r4, #0x8]
	bl      Function_224a984
	str     r0, [r5, #0x4]
	pop     {r3-r7,pc}
@ 0x224ad62


.incbin "./baserom/overlay/overlay_0016.bin", 0xfc22, 0x224b3b4 - 0x224ad62


.thumb
branch_224b3b4: @ 224b3b4 :thumb
	pop     {r3-r7,pc}
@ 0x224b3b6


.incbin "./baserom/overlay/overlay_0016.bin", 0x10276, 0x224b3e8 - 0x224b3b6


.thumb
Function_224b3e8: @ 224b3e8 :thumb
	cmp     r1, #0x1
	beq     branch_224b3f2
	cmp     r1, #0xff
	beq     branch_224b3f8
	bx      lr
@ 0x224b3f2

.thumb
branch_224b3f2: @ 224b3f2 :thumb
	ldr     r1, [pc, #0xc] @ 0x224b400, (=#0x3044)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224b3f8

.thumb
branch_224b3f8: @ 224b3f8 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224b400

.word 0x3044 @ 0x224b400

.incbin "./baserom/overlay/overlay_0016.bin", 0x102c4, 0x224b850 - 0x224b404


.thumb
Function_224b850: @ 224b850 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, r2
	mov     r5, r0
	str     r2, [sp, #0x0]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_224b91c
	mov     r0, r5
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_224b8a0
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_223e1c4
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_223e1c4
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r2, #0xc0
	mov     r0, r1
	mul     r0, r2
	mul     r2, r6
	ldr     r3, [pc, #0x90] @ 0x224b920, (=#0x2d74)
	add     r0, r4, r0
	add     r2, r4, r2
	ldrb    r0, [r0, r3]
	ldrb    r2, [r2, r3]
	cmp     r0, r2
	bls     branch_224b8ac
	mov     r6, r1
	b       branch_224b8ac
@ 0x224b8a0

.thumb
branch_224b8a0: @ 224b8a0 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_223e1c4
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_224b8ac: @ 224b8ac :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r1
	add     r3, r4, r2
	ldr     r2, [pc, #0x6c] @ 0x224b924, (=#0x219c)
	ldrb    r2, [r3, r2]
	bl      Function_223dfac
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r0, r4, r2
	ldr     r2, [pc, #0x54] @ 0x224b920, (=#0x2d74)
	mul     r1, r6
	add     r1, r4, r1
	ldrb    r0, [r0, r2]
	ldrb    r1, [r1, r2]
	cmp     r1, r0
	bls     branch_224b908
	sub     r0, r1, r0
	cmp     r0, #0x1e
	blt     branch_224b8f2
	mov     r0, r5
	bl      Function_223e24c
	mov     r2, r0
	lsl     r2, r2, #16
	mov     r0, r7
	mov     r1, #0x8
	lsr     r2, r2, #16
	bl      Function_2075c74
	pop     {r3-r7,pc}
@ 0x224b8f2

.thumb
branch_224b8f2: @ 224b8f2 :thumb
	mov     r0, r5
	bl      Function_223e24c
	mov     r2, r0
	lsl     r2, r2, #16
	mov     r0, r7
	mov     r1, #0x6
	lsr     r2, r2, #16
	bl      Function_2075c74
	pop     {r3-r7,pc}
@ 0x224b908

.thumb
branch_224b908: @ 224b908 :thumb
	mov     r0, r5
	bl      Function_223e24c
	mov     r2, r0
	lsl     r2, r2, #16
	mov     r0, r7
	mov     r1, #0x6
	lsr     r2, r2, #16
	bl      Function_2075c74
.thumb
branch_224b91c: @ 224b91c :thumb
	pop     {r3-r7,pc}
@ 0x224b91e


.align 2


.word 0x2d74 @ 0x224b920
.word 0x219c @ 0x224b924
.thumb
Function_224b928: @ 224b928 :thumb
	add     r1, r0, r1
	mov     r0, #0x39
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	bx      lr
@ 0x224b932


.incbin "./baserom/overlay/overlay_0016.bin", 0x107f2, 0x224b9f4 - 0x224b932


.thumb
Function_224b9f4: @ 224b9f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r6, [sp, #0x20]
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x4]
	str     r6, [sp, #0x0]
	bl      Function_224ef20
	ldr     r0, [sp, #0x20]
	ldr     r3, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_224f274
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224ba1c

.thumb
Function_224ba1c: @ 224ba1c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r5, r1
	bl      Function_223df1c
	mov     r7, r0
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_224ba44
.thumb
branch_224ba2e: @ 224ba2e :thumb
	ldr     r3, [pc, #0x24] @ 0x224ba54, (=#0x219c)
	add     r6, r5, r4
	ldrb    r3, [r6, r3]
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_225177c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_224ba2e
.thumb
branch_224ba44: @ 224ba44 :thumb
	ldr     r0, [pc, #0x10] @ 0x224ba58, (=#0x2e4c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x10] @ 0x224ba5c, (=#0x3122)
	strh    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	pop     {r3-r7,pc}
@ 0x224ba52


.align 2


.word 0x219c @ 0x224ba54
.word 0x2e4c @ 0x224ba58
.word 0x3122 @ 0x224ba5c
.thumb
Function_224ba60: @ 224ba60 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x224ba78

.thumb
Function_224ba78: @ 224ba78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253fcc
	cmp     r0, #0x0
	beq     branch_224ba9a
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x29
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	b       branch_224ba9e
@ 0x224ba9a

.thumb
branch_224ba9a: @ 224ba9a :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x8]
.thumb
branch_224ba9e: @ 224ba9e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255fbc
	pop     {r3-r5,pc}
@ 0x224baa8

.thumb
Function_224baa8: @ 224baa8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2256414
	mov     r2, r0
	beq     branch_224bac8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224bac8

.thumb
branch_224bac8: @ 224bac8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255fbc
	mov     r0, r5
	bl      Function_223f7e8
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224badc

.thumb
Function_224badc: @ 224badc :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r7, r1
	bl      Function_223df1c
	mov     r5, r0
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_224bb0c
	mov     r6, r7
	mov     r2, r4
.thumb
branch_224baf2: @ 224baf2 :thumb
	mov     r0, #0xb7
	strb    r2, [r7, r4]
	lsl     r0, r0, #6
	ldr     r1, [r6, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r6, r0]
	add     r3, r7, r4
	ldr     r0, [pc, #0x20] @ 0x224bb24, (=#0x314c)
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r2, [r3, r0]
	add     r6, #0xc0
	cmp     r4, r5
	blt     branch_224baf2
.thumb
branch_224bb0c: @ 224bb0c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_223f288
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_223b748
	mov     r0, #0x5
	str     r0, [r7, #0x8]
	pop     {r3-r7,pc}
@ 0x224bb22


.align 2


.word 0x314c @ 0x224bb24
.thumb
Function_224bb28: @ 224bb28 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xa0
	mov     r7, r0
	str     r1, [sp, #0x1c]
	bl      Function_223df1c
	str     r0, [sp, #0x64]
	mov     r0, r7
	bl      Function_223df0c
	str     r0, [sp, #0x28]
	mov     r4, #0x0
	ldr     r0, [sp, #0x64]
	str     r4, [sp, #0x60]
	cmp     r0, #0x0
	bgt     branch_224bb4c
	bl      Function_224c3e8
.thumb
branch_224bb4c: @ 224bb4c :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x75
	lsl     r1, r1, #2
	str     r0, [sp, #0x58]
	add     r0, r0, r1
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [pc, #0x308] @ 0x224be64, (=#0x21ac)
	str     r0, [sp, #0x50]
	str     r0, [sp, #0x4c]
	str     r0, [sp, #0x48]
	add     r0, r0, r1
	str     r0, [sp, #0x44]
	mov     r1, #0x23
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #8
	add     r0, r0, r1
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x2
	and     r0, r1
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x8
	and     r0, r1
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x28]
	lsl     r1, r1, #6
	and     r0, r1
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x20
	and     r0, r1
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x4
	and     r0, r1
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x80
	and     r0, r1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	and     r0, r1
	str     r0, [sp, #0x20]
.thumb
Function_224bba8: @ 224bba8 :thumb
	ldr     r0, [sp, #0x1c]
	add     r5, r0, r4
	ldrb    r0, [r0, r4]
	cmp     r0, #0x11
	bls     branch_224bbb4
	b       branch_224c3ae
@ 0x224bbb4

.thumb
branch_224bbb4: @ 224bbb4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r4, #0
	lsl     r2, r0, #4
	lsl     r6, r7, #2
	lsl     r4, r0, #14
	lsl     r2, r2, #14
	lsl     r0, r7, #17
	lsl     r2, r6, #18
	lsl     r0, r6, #19
	lsl     r6, r7, #19
	lsl     r4, r5, #20
	lsl     r0, r4, #22
	lsl     r6, r7, #23
	lsl     r6, r6, #27
	lsl     r6, r0, #29
	lsl     r2, r7, #29
	lsl     r2, r0, #30
	lsl     r4, r3, #30
	lsl     r0, r4, #31
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_224bc08
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	bne     branch_224bc08
	cmp     r4, #0x2
	bne     branch_224bbfc
	ldr     r0, [sp, #0x1c]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xe
	bne     branch_224bcf4
.thumb
branch_224bbfc: @ 224bbfc :thumb
	cmp     r4, #0x3
	bne     branch_224bc08
	ldr     r0, [sp, #0x1c]
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0xe
	bne     branch_224bcf4
.thumb
branch_224bc08: @ 224bc08 :thumb
	mov     r0, r4
	bl      Function_20787cc
	ldr     r2, [pc, #0x258] @ 0x224be68, (=#0x3108)
	ldr     r1, [sp, #0x1c]
	ldrb    r1, [r1, r2]
	tst     r0, r1
	beq     branch_224bc26
	mov     r0, #0xd
	strb    r0, [r5, #0x0]
	ldr     r1, [pc, #0x24c] @ 0x224be6c, (=#0x21a8)
	ldr     r0, [sp, #0x58]
	mov     r2, #0x27
	str     r2, [r0, r1]
	b       branch_224c3ae
@ 0x224bc26

.thumb
branch_224bc26: @ 224bc26 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r4
	bl      Function_2259a28
	cmp     r0, #0x0
	bne     branch_224bc4a
	ldr     r0, [sp, #0x54]
	mov     r2, #0xd
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	orr     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x228] @ 0x224be6c, (=#0x21a8)
	ldr     r0, [sp, #0x58]
	strb    r2, [r5, #0x0]
	str     r2, [r0, r1]
	b       branch_224c3ae
@ 0x224bc4a

.thumb
branch_224bc4a: @ 224bc4a :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_223df14
	bl      Function_2263af0
	cmp     r0, #0x1
	beq     branch_224bc66
	mov     r1, #0x15
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_224bc7a
.thumb
branch_224bc66: @ 224bc66 :thumb
	ldr     r3, [pc, #0x208] @ 0x224be70, (=#0x219c)
	ldr     r1, [sp, #0x1c]
	ldrb    r3, [r5, r3]
	mov     r0, r7
	mov     r2, r4
	bl      Function_2265330
	mov     r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_224c3ae
@ 0x224bc7a

.thumb
branch_224bc7a: @ 224bc7a :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0x0]
	b       branch_224c3ae
@ 0x224bc80


.incbin "./baserom/overlay/overlay_0016.bin", 0x10b40, 0x224bcf4 - 0x224bc80


.thumb
branch_224bcf4: @ 224bcf4 :thumb
	b       branch_224c3ae
@ 0x224bcf6


.incbin "./baserom/overlay/overlay_0016.bin", 0x10bb6, 0x224be64 - 0x224bcf6


.word 0x21ac @ 0x224be64
.word 0x3108 @ 0x224be68
.word 0x21a8 @ 0x224be6c
.word 0x219c @ 0x224be70

.incbin "./baserom/overlay/overlay_0016.bin", 0x10d34, 0x224c3ae - 0x224be74


.thumb
branch_224c3ae: @ 224c3ae :thumb
	ldr     r0, [sp, #0x58]
	ldr     r1, [sp, #0x50]
	add     r0, #0x10
	str     r0, [sp, #0x58]
	ldr     r0, [sp, #0x54]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x40
	str     r0, [sp, #0x54]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r1, r1, r0
	str     r1, [sp, #0x50]
	ldr     r1, [sp, #0x4c]
	add     r1, #0xc0
	str     r1, [sp, #0x4c]
	ldr     r1, [sp, #0x48]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [sp, #0x48]
	ldr     r1, [sp, #0x44]
	add     r1, #0x10
	str     r1, [sp, #0x44]
	ldr     r1, [sp, #0x40]
	add     r0, r1, r0
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x64]
	cmp     r4, r0
	bge     Function_224c3e8
	bl      Function_224bba8
.thumb
Function_224c3e8: @ 224c3e8 :thumb
	ldr     r1, [sp, #0x60]
	ldr     r0, [sp, #0x64]
	cmp     r1, r0
	bne     branch_224c434
	ldr     r1, [sp, #0x1c]
	mov     r0, r7
	bl      Function_2251694
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_223b748
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x6
	str     r1, [r0, #0x8]
	ldr     r0, [sp, #0x64]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_224c434
	ldr     r4, [sp, #0x1c]
.thumb
branch_224c410: @ 224c410 :thumb
	ldr     r0, [pc, #0x2c] @ 0x224c440, (=#0x21a8)
	ldr     r0, [r4, r0]
	cmp     r0, #0xf
	bne     branch_224c42a
	ldr     r1, [sp, #0x1c]
	mov     r0, r7
	mov     r3, r1
	add     r5, r3, r6
	ldr     r3, [pc, #0x20] @ 0x224c444, (=#0x21a0)
	mov     r2, r6
	ldrb    r3, [r5, r3]
	bl      Function_225a200
.thumb
branch_224c42a: @ 224c42a :thumb
	ldr     r0, [sp, #0x64]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	blt     branch_224c410
.thumb
branch_224c434: @ 224c434 :thumb
	add     sp, #0xa0
	pop     {r3-r7,pc}
@ 0x224c438


.incbin "./baserom/overlay/overlay_0016.bin", 0x112f8, 0x224c440 - 0x224c438


.word 0x21a8 @ 0x224c440
.word 0x21a0 @ 0x224c444
.thumb
Function_224c448: @ 224c448 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x4]
	mov     r5, r1
	bl      Function_223df1c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	bl      Function_223df0c
	mov     r2, #0x22
	lsl     r2, r2, #4
	mov     r1, #0x0
	tst     r2, r0
	beq     branch_224c47e
	ldr     r0, [sp, #0x14]
	mov     r4, r1
	cmp     r0, #0x0
	ble     branch_224c47c
	ldr     r1, [pc, #0x148] @ 0x224c5b8, (=#0x21e8)
.thumb
branch_224c470: @ 224c470 :thumb
	add     r0, r5, r4
	strb    r4, [r0, r1]
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_224c470
.thumb
branch_224c47c: @ 224c47c :thumb
	b       branch_224c5b0
@ 0x224c47e

.thumb
branch_224c47e: @ 224c47e :thumb
	mov     r2, #0x4
	tst     r0, r2
	beq     branch_224c4a6
	ldr     r0, [sp, #0x14]
	mov     r4, r1
	cmp     r0, #0x0
	ble     branch_224c4be
	ldr     r2, [pc, #0x12c] @ 0x224c5bc, (=#0x21b4)
	mov     r3, r5
.thumb
branch_224c490: @ 224c490 :thumb
	ldr     r0, [r3, r2]
	cmp     r0, #0x4
	bne     branch_224c49a
	mov     r1, #0x5
	b       branch_224c4be
@ 0x224c49a

.thumb
branch_224c49a: @ 224c49a :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x10
	cmp     r4, r0
	blt     branch_224c490
	b       branch_224c4be
@ 0x224c4a6

.thumb
branch_224c4a6: @ 224c4a6 :thumb
	ldr     r0, [pc, #0x114] @ 0x224c5bc, (=#0x21b4)
	ldr     r0, [r5, r0]
	cmp     r0, #0x4
	bne     branch_224c4b2
	mov     r4, r1
	mov     r1, #0x5
.thumb
branch_224c4b2: @ 224c4b2 :thumb
	ldr     r0, [pc, #0x10c] @ 0x224c5c0, (=#0x21d4)
	ldr     r0, [r5, r0]
	cmp     r0, #0x4
	bne     branch_224c4be
	mov     r4, #0x2
	mov     r1, #0x5
.thumb
branch_224c4be: @ 224c4be :thumb
	cmp     r1, #0x5
	bne     branch_224c4e6
	ldr     r0, [pc, #0xf4] @ 0x224c5b8, (=#0x21e8)
	ldr     r2, [sp, #0x14]
	strb    r4, [r5, r0]
	mov     r1, #0x1
	mov     r0, #0x0
	cmp     r2, #0x0
	ble     branch_224c5b0
	ldr     r3, [pc, #0xe4] @ 0x224c5b8, (=#0x21e8)
.thumb
branch_224c4d2: @ 224c4d2 :thumb
	cmp     r0, r4
	beq     branch_224c4dc
	add     r2, r5, r1
	strb    r0, [r2, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_224c4dc: @ 224c4dc :thumb
	ldr     r2, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r2
	blt     branch_224c4d2
	b       branch_224c5b0
@ 0x224c4e6

.thumb
branch_224c4e6: @ 224c4e6 :thumb
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_224c50e
	ldr     r4, [pc, #0xc8] @ 0x224c5b8, (=#0x21e8)
	mov     r0, r5
	mov     r6, r4
	sub     r6, #0x34
.thumb
branch_224c4f6: @ 224c4f6 :thumb
	ldr     r3, [r0, r6]
	.hword  0x1e9b @ sub r3, r3, #0x2
	cmp     r3, #0x1
	bhi     branch_224c504
	add     r3, r5, r1
	strb    r2, [r3, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_224c504: @ 224c504 :thumb
	ldr     r3, [sp, #0x14]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x10
	cmp     r2, r3
	blt     branch_224c4f6
.thumb
branch_224c50e: @ 224c50e :thumb
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_224c538
	ldr     r4, [pc, #0xa0] @ 0x224c5b8, (=#0x21e8)
	mov     r0, r5
	mov     r6, r4
	sub     r6, #0x34
.thumb
branch_224c51e: @ 224c51e :thumb
	ldr     r3, [r0, r6]
	cmp     r3, #0x2
	beq     branch_224c52e
	cmp     r3, #0x3
	beq     branch_224c52e
	add     r3, r5, r1
	strb    r2, [r3, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_224c52e: @ 224c52e :thumb
	ldr     r3, [sp, #0x14]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x10
	cmp     r2, r3
	blt     branch_224c51e
.thumb
branch_224c538: @ 224c538 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_224c5b0
.thumb
branch_224c546: @ 224c546 :thumb
	ldr     r0, [sp, #0x8]
	add     r7, r0, #0x1
	ldr     r0, [sp, #0x14]
	cmp     r7, r0
	bge     branch_224c5a4
	ldr     r0, [sp, #0x8]
	add     r0, r5, r0
	str     r0, [sp, #0x10]
.thumb
branch_224c556: @ 224c556 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x5c] @ 0x224c5b8, (=#0x21e8)
	ldrb    r6, [r1, r0]
	add     r1, r5, r7
	ldrb    r4, [r1, r0]
	lsl     r0, r6, #4
	str     r1, [sp, #0xc]
	add     r1, r5, r0
	ldr     r0, [pc, #0x54] @ 0x224c5bc, (=#0x21b4)
	ldr     r0, [r1, r0]
	lsl     r1, r4, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x4c] @ 0x224c5bc, (=#0x21b4)
	ldr     r1, [r2, r1]
	cmp     r0, r1
	bne     branch_224c59c
	cmp     r0, #0x1
	beq     branch_224c57e
	mov     r0, #0x1
	b       branch_224c580
@ 0x224c57e

.thumb
branch_224c57e: @ 224c57e :thumb
	mov     r0, #0x0
.thumb
branch_224c580: @ 224c580 :thumb
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_2252ec8
	cmp     r0, #0x0
	beq     branch_224c59c
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x20] @ 0x224c5b8, (=#0x21e8)
	strb    r4, [r1, r0]
	ldr     r1, [sp, #0xc]
	strb    r6, [r1, r0]
.thumb
branch_224c59c: @ 224c59c :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_224c556
.thumb
branch_224c5a4: @ 224c5a4 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_224c546
.thumb
branch_224c5b0: @ 224c5b0 :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x8]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224c5b8

.word 0x21e8 @ 0x224c5b8
.word 0x21b4 @ 0x224c5bc
.word 0x21d4 @ 0x224c5c0
.thumb
Function_224c5c4: @ 224c5c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	bl      Function_223df1c
	mov     r7, r0
.thumb
branch_224c5d6: @ 224c5d6 :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x3
	bls     branch_224c5de
	b       branch_224c6f0
@ 0x224c5de

.thumb
branch_224c5de: @ 224c5de :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r4, #2
	lsl     r6, r3, #3
	lsl     r4, r7, #3
	ldr     r0, [r4, #0x2c]
	cmp     r0, r7
	bge     branch_224c680
	mov     r6, r4
	add     r6, #0x2c
.thumb
branch_224c5fc: @ 224c5fc :thumb
	add     r1, r4, r0
	ldr     r0, [pc, #0x104] @ 0x224c704, (=#0x21e8)
	ldrb    r5, [r1, r0]
	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0xfc] @ 0x224c708, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	ldr     r0, [r6, #0x0]
	beq     branch_224c618
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_224c67a
@ 0x224c618

.thumb
branch_224c618: @ 224c618 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	mov     r0, #0xc0
	mul     r0, r5
	add     r1, r4, r0
	ldr     r0, [pc, #0xe8] @ 0x224c70c, (=#0x2dac)
	ldr     r1, [r1, r0]
	mov     r0, #0x7
	tst     r0, r1
	bne     branch_224c67a
	mov     r0, r4
	mov     r1, r5
	bl      Function_2255570
	mov     r1, #0x42
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_224c67a
	mov     r0, r4
	mov     r1, r5
	bl      Function_2255ec0
	cmp     r0, #0x0
	bne     branch_224c67a
	lsl     r0, r5, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_224c67a
	ldr     r0, [sp, #0x0]
	bl      Function_2266aa0
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe8
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x8
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224c67a

.thumb
branch_224c67a: @ 224c67a :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, r7
	blt     branch_224c5fc
.thumb
branch_224c680: @ 224c680 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	b       branch_224c6f0
@ 0x224c68c


.incbin "./baserom/overlay/overlay_0016.bin", 0x1154c, 0x224c6f0 - 0x224c68c


.thumb
branch_224c6f0: @ 224c6f0 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_224c6f8
	b       branch_224c5d6
@ 0x224c6f8

.thumb
branch_224c6f8: @ 224c6f8 :thumb
	cmp     r0, #0x2
	bne     branch_224c700
	mov     r0, #0x8
	str     r0, [r4, #0x8]
.thumb
branch_224c700: @ 224c700 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224c704

.word 0x21e8 @ 0x224c704
.word 0x3108 @ 0x224c708
.word 0x2dac @ 0x224c70c

.incbin "./baserom/overlay/overlay_0016.bin", 0x115d0, 0x224c718 - 0x224c710


.thumb
Function_224c718: @ 224c718 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r1
	bl      Function_223df1c
	mov     r5, r0
	mov     r0, r7
	mov     r1, r4
	bl      Function_225b444
	cmp     r0, #0x0
	bne     branch_224c784
	ldr     r1, [pc, #0x54] @ 0x224c788, (=#0x3150)
	mov     r0, #0x0
	str     r0, [r4, r1]
	cmp     r5, #0x0
	ble     branch_224c754
	ldr     r3, [pc, #0x4c] @ 0x224c788, (=#0x3150)
	ldr     r2, [pc, #0x4c] @ 0x224c78c, (=#0x21a8)
	mov     r1, r4
.thumb
branch_224c740: @ 224c740 :thumb
	ldr     r6, [r1, r2]
	cmp     r6, #0x27
	beq     branch_224c74c
	ldr     r6, [r4, r3]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r6, [r4, r3]
.thumb
branch_224c74c: @ 224c74c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x10
	cmp     r0, r5
	blt     branch_224c740
.thumb
branch_224c754: @ 224c754 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_2255fbc
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, r5
	bne     branch_224c774
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xec
	str     r1, [r0, #0x0]
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224c774

.thumb
branch_224c774: @ 224c774 :thumb
	add     r1, r4, r0
	ldr     r0, [pc, #0x18] @ 0x224c790, (=#0x21e8)
	ldrb    r1, [r1, r0]
	sub     r0, #0x40
	lsl     r1, r1, #4
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	str     r0, [r4, #0x8]
.thumb
branch_224c784: @ 224c784 :thumb
	pop     {r3-r7,pc}
@ 0x224c786


.align 2


.word 0x3150 @ 0x224c788
.word 0x21a8 @ 0x224c78c
.word 0x21e8 @ 0x224c790
.thumb
Function_224c794: @ 224c794 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r5, #0x0
	bl      Function_223df1c
	str     r0, [sp, #0x4]
.thumb
branch_224c7a4: @ 224c7a4 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2250ef4
	cmp     r0, #0x1
	beq     branch_224c7ce
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r1
	bl      Function_2250f98
	cmp     r0, #0x1
	beq     branch_224c7ce
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2250a48
	cmp     r0, #0x1
	bne     branch_224c7d0
.thumb
branch_224c7ce: @ 224c7ce :thumb
	b       branch_224cf76
@ 0x224c7d0

.thumb
branch_224c7d0: @ 224c7d0 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0xd
	bhi     branch_224c8aa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r3, #0
	lsl     r4, r2, #3
	lsl     r6, r7, #5
	lsl     r2, r5, #8
	lsl     r0, r3, #11
	lsl     r4, r2, #13
	lsl     r0, r2, #15
	lsl     r0, r2, #18
	lsl     r0, r4, #20
	lsl     r0, r6, #22
	lsl     r4, r0, #25
	lsl     r2, r3, #27
	lsl     r4, r3, #28
	lsl     r4, r6, #29
	ldr     r6, [r4, #0x14]
	cmp     r6, #0x2
	bge     branch_224c8a6
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x38]
	mov     r0, r4
	str     r0, [sp, #0x8]
	add     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	mov     r0, #0x1c
	str     r0, [sp, #0x18]
.thumb
branch_224c81c: @ 224c81c :thumb
	lsl     r0, r6, #2
	mov     r1, #0x6f
	add     r0, r4, r0
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_224c892
	ldr     r1, [sp, #0x38]
	lsl     r3, r6, #3
	ldr     r7, [r1, r3]
	ldr     r2, [sp, #0x18]
	mov     r1, r7
	str     r7, [sp, #0x2c]
	bic     r1, r2
	str     r1, [sp, #0x2c]
	lsl     r1, r7, #27
	lsr     r1, r1, #29
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #29
	lsr     r2, r1, #27
	ldr     r1, [sp, #0x2c]
	orr     r2, r1
	ldr     r1, [sp, #0x38]
	str     r2, [r1, r3]
	ldr     r1, [r1, r3]
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	bne     branch_224c892
	mov     r1, #0x6f
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	ldr     r1, [sp, #0x1c]
	bic     r2, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r1, #0x73
	mov     r0, r1
	add     r0, #0xb1
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x32
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	mov     r1, r4
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	bl      Function_225b120
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r5, #0x1
.thumb
branch_224c892: @ 224c892 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	cmp     r5, #0x0
	str     r1, [r0, #0x0]
	bne     branch_224c8a6
	ldr     r6, [r4, #0x14]
	cmp     r6, #0x2
	blt     branch_224c81c
.thumb
branch_224c8a6: @ 224c8a6 :thumb
	cmp     r5, #0x0
	beq     branch_224c8ac
.thumb
branch_224c8aa: @ 224c8aa :thumb
	b       branch_224cf5a
@ 0x224c8ac

.thumb
branch_224c8ac: @ 224c8ac :thumb
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	b       branch_224cf5a
@ 0x224c8b8


.incbin "./baserom/overlay/overlay_0016.bin", 0x11778, 0x224cf5a - 0x224c8b8


.thumb
branch_224cf5a: @ 224cf5a :thumb
	cmp     r5, #0x0
	bne     branch_224cf60
	b       branch_224c7a4
@ 0x224cf60

.thumb
branch_224cf60: @ 224cf60 :thumb
	cmp     r5, #0x1
	bne     branch_224cf6a
	ldr     r0, [sp, #0x0]
	bl      Function_2266aa0
.thumb
branch_224cf6a: @ 224cf6a :thumb
	cmp     r5, #0x2
	bne     branch_224cf76
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0xa
	str     r0, [r4, #0x8]
.thumb
branch_224cf76: @ 224cf76 :thumb
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x224cf7a


.align 2, 0


.thumb
Function_224cf7c: @ 224cf7c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x4]
	bl      Function_223df1c
	ldr     r1, [r4, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2250ef4
	cmp     r0, #0x1
	beq     branch_224cfb8
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r1
	bl      Function_2250f98
	cmp     r0, #0x1
	beq     branch_224cfb8
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_2250a48
	cmp     r0, #0x1
	bne     branch_224cfbc
.thumb
branch_224cfb8: @ 224cfb8 :thumb
	bl      Function_224d998
.thumb
branch_224cfbc: @ 224cfbc :thumb
	ldr     r1, [r4, #0x1c]
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	blt     branch_224cfc8
	bl      Function_224d98e
.thumb
branch_224cfc8: @ 224cfc8 :thumb
	ldr     r0, [pc, #0x32c] @ 0x224d2f8, (=#0x21ec)
	add     r1, r4, r1
	ldrb    r5, [r1, r0]
	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0x324] @ 0x224d2fc, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	beq     branch_224cfe6
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bl      Function_224d982
.thumb
branch_224cfe6: @ 224cfe6 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1a
	bls     branch_224cff0
	bl      Function_224d972
.thumb
branch_224cff0: @ 224cff0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r6, #0
	lsl     r4, r3, #2
	lsl     r6, r3, #4
	lsl     r2, r7, #4
	lsl     r6, r2, #5
	lsl     r2, r6, #5
	lsl     r4, r3, #7
	lsl     r6, r5, #8
	lsl     r6, r5, #10
	lsl     r2, r5, #11
	lsl     r0, r3, #13
	lsl     r6, r2, #14
	lsl     r6, r1, #16
	lsl     r2, r2, #18
	lsl     r2, r2, #22
	lsl     r2, r7, #23
	lsl     r6, r5, #26
	lsl     r6, r7, #28
	lsl     r4, r3, #29
	lsl     r2, r4, #30
	lsl     r6, r5, #31
	.hword 0x0838 @ lsr     r0, r7, #0
	lsr     r2, r0, #2
	lsr     r4, r1, #3
	lsr     r4, r3, #4
	lsr     r0, r2, #5
	lsr     r2, r5, #5
	mov     r6, #0xc0
	mov     r0, r5
	mul     r0, r6
	add     r3, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	mov     r1, #0x1
	ldr     r2, [r3, r0]
	lsl     r1, r1, #10
	tst     r1, r2
	beq     branch_224d090
	mov     r1, r0
	sub     r1, #0x34
	ldr     r2, [r3, r1]
	mov     r1, r0
	sub     r1, #0x30
	ldr     r1, [r3, r1]
	cmp     r2, r1
	beq     branch_224d090
	cmp     r2, #0x0
	beq     branch_224d090
	add     r0, #0xc
	ldr     r0, [r3, r0]
	lsl     r0, r0, #13
	lsr     r0, r0, #29
	beq     branch_224d076
	add     r6, #0x58
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xef
	str     r5, [r4, r6]
	bl      Function_2251e1c
	b       branch_224d084
@ 0x224d076

.thumb
branch_224d076: @ 224d076 :thumb
	add     r6, #0x58
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x89
	str     r5, [r4, r6]
	bl      Function_2251e1c
.thumb
branch_224d084: @ 224d084 :thumb
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d090: @ 224d090 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_224d972
	mov     r6, #0xc0
	mov     r0, r5
	mul     r0, r6
	add     r3, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	mov     r1, #0x1
	ldr     r2, [r3, r0]
	lsl     r1, r1, #24
	tst     r1, r2
	beq     branch_224d112
	mov     r1, r0
	sub     r1, #0x34
	ldr     r2, [r3, r1]
	mov     r1, r0
	sub     r1, #0x30
	ldr     r1, [r3, r1]
	cmp     r2, r1
	beq     branch_224d112
	cmp     r2, #0x0
	beq     branch_224d112
	mov     r1, r0
	add     r1, #0xc
	ldr     r1, [r3, r1]
	lsl     r1, r1, #13
	lsr     r1, r1, #29
	beq     branch_224d0e0
	add     r6, #0x58
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xef
	str     r5, [r4, r6]
	bl      Function_2251e1c
	b       branch_224d106
@ 0x224d0e0

.thumb
branch_224d0e0: @ 224d0e0 :thumb
	mov     r1, r6
	add     r1, #0x58
	str     r5, [r4, r1]
	mov     r1, r6
	add     r1, #0xc8
	add     r6, #0x64
	str     r1, [r4, r6]
	sub     r0, #0x30
	ldr     r0, [r3, r0]
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0x204] @ 0x224d300, (=#0x215c)
	mov     r2, #0xa9
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
.thumb
branch_224d106: @ 224d106 :thumb
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d112: @ 224d112 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_224d972
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r5
	bl      Function_22562e8
	cmp     r0, #0x1
	bne     branch_224d12e
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d12e: @ 224d12e :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_224d972
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r5
	bl      Function_22579a4
	cmp     r0, #0x1
	bne     branch_224d14a
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d14a: @ 224d14a :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_224d972
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r5
	bl      Function_2258008
	cmp     r0, #0x1
	bne     branch_224d166
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d166: @ 224d166 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_224d972
	mov     r3, #0xc0
	mov     r0, r5
	mul     r0, r3
	mov     r2, #0xb7
	add     r6, r4, r0
	lsl     r2, r2, #6
	ldr     r0, [r6, r2]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_224d1d2
	mov     r1, #0x3
	and     r0, r1
	mov     r1, r0
	mul     r1, r3
	add     r0, r4, r1
	sub     r2, #0x34
	ldr     r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_224d1d2
	mov     r0, r4
	mov     r1, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_224d1d2
	ldr     r0, [pc, #0x160] @ 0x224d304, (=#0x2d8c)
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_224d1d2
	add     r0, #0x34
	ldr     r1, [r6, r0]
	mov     r0, #0x3
	and     r1, r0
	mov     r0, #0x47
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r5, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x45
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_224d1d2: @ 224d1d2 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       Function_224d972
@ 0x224d1da


.incbin "./baserom/overlay/overlay_0016.bin", 0x1209a, 0x224d2f8 - 0x224d1da


.word 0x21ec @ 0x224d2f8
.word 0x3108 @ 0x224d2fc
.word 0x215c @ 0x224d300
.word 0x2d8c @ 0x224d304

.incbin "./baserom/overlay/overlay_0016.bin", 0x121c8, 0x224d972 - 0x224d308


.thumb
Function_224d972: @ 224d972 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     Function_224d982
	ldr     r0, [sp, #0x4]
	bl      Function_2266aa0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224d982

.thumb
Function_224d982: @ 224d982 :thumb
	ldr     r1, [r4, #0x1c]
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	bge     Function_224d98e
	bl      branch_224cfc8
.thumb
Function_224d98e: @ 224d98e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	mov     r0, #0xb
	str     r0, [r4, #0x8]
.thumb
Function_224d998: @ 224d998 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224d99c


.incbin "./baserom/overlay/overlay_0016.bin", 0x1285c, 0x224d9c4 - 0x224d99c


.thumb
Function_224d9c4: @ 224d9c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	str     r0, [sp, #0x0]
	bl      Function_223df1c
	ldr     r1, [r4, #0x8]
	mov     r7, r0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2250ef4
	cmp     r0, #0x1
	bne     branch_224d9e4
	b       branch_224dbf4
@ 0x224d9e4

.thumb
branch_224d9e4: @ 224d9e4 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2266aa0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224d9fc
	cmp     r0, #0x1
	beq     branch_224dae6
	cmp     r0, #0x2
	bne     branch_224d9fa
	b       branch_224dbac
@ 0x224d9fa

.thumb
branch_224d9fa: @ 224d9fa :thumb
	b       branch_224dbea
@ 0x224d9fc

.thumb
branch_224d9fc: @ 224d9fc :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, r7
	bge     branch_224dadc
	mov     r5, r4
	add     r5, #0x24
.thumb
branch_224da06: @ 224da06 :thumb
	add     r1, r4, r0
	ldr     r0, [pc, #0x1ec] @ 0x224dbf8, (=#0x21ec)
	ldrb    r6, [r1, r0]
	mov     r0, r6
	bl      Function_20787cc
	ldr     r1, [pc, #0x1e8] @ 0x224dbfc, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	ldr     r0, [r5, #0x0]
	beq     branch_224da22
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224dad6
@ 0x224da22

.thumb
branch_224da22: @ 224da22 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r1, #0x62
	str     r0, [r5, #0x0]
	add     r0, r4, r6
	lsl     r1, r1, #2
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_224dad6
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldrb    r1, [r0, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, #0x62
	lsl     r1, r1, #2
	strb    r2, [r0, r1]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_224dad6
	mov     r0, #0xc0
	mul     r0, r6
	add     r1, r4, r0
	ldr     r0, [pc, #0x1b0] @ 0x224dc00, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224dad6
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_223e208
	mov     r2, #0x6f
	lsl     r2, r2, #2
	add     r1, r4, r2
	lsl     r5, r0, #2
	ldr     r3, [r1, r5]
	mov     r0, #0x10
	bic     r3, r0
	mov     r0, r4
	str     r3, [r1, r5]
	add     r2, #0x1f
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2255560
	mov     r1, r4
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, #0x19
	lsl     r0, r0, #4
	mov     r1, r4
	add     r3, r4, r0
	lsl     r2, r6, #1
	ldrh    r5, [r3, r2]
	add     r1, #0xfc
	str     r5, [r1, #0x0]
	mov     r1, r0
	sub     r1, #0x78
	str     r6, [r4, r1]
	lsl     r1, r6, #2
	mov     r5, r0
	add     r1, r4, r1
	add     r5, #0x8
	ldr     r6, [r1, r5]
	mov     r5, r0
	sub     r5, #0x74
	str     r6, [r4, r5]
	ldrh    r3, [r3, r2]
	mov     r2, r0
	sub     r2, #0x6c
	str     r3, [r4, r2]
	add     r0, #0x18
	ldr     r1, [r1, r0]
	ldr     r0, [pc, #0x144] @ 0x224dc04, (=#0x215c)
	mov     r2, #0x79
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x8
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224dad6

.thumb
branch_224dad6: @ 224dad6 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, r7
	blt     branch_224da06
.thumb
branch_224dadc: @ 224dadc :thumb
	ldr     r0, [r4, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x20]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_224dae6: @ 224dae6 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, r7
	bge     branch_224dba2
	mov     r5, r4
	add     r5, #0x24
.thumb
branch_224daf0: @ 224daf0 :thumb
	add     r1, r4, r0
	ldr     r0, [pc, #0x104] @ 0x224dbf8, (=#0x21ec)
	ldrb    r6, [r1, r0]
	mov     r0, r6
	bl      Function_20787cc
	ldr     r1, [pc, #0xfc] @ 0x224dbfc, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	ldr     r0, [r5, #0x0]
	beq     branch_224db0c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224db9c
@ 0x224db0c

.thumb
branch_224db0c: @ 224db0c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0xc0
	mul     r0, r6
	mov     r1, #0xb7
	add     r3, r4, r0
	lsl     r1, r1, #6
	ldr     r2, [r3, r1]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_224db9c
	ldr     r7, [pc, #0xe4] @ 0x224dc08, (=#0x2dc8)
	add     r2, r4, r7
	ldr     r1, [r2, r0]
	lsl     r1, r1, #17
	lsr     r1, r1, #30
	bne     branch_224db66
	mov     r1, r7
	sub     r1, #0x8
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	ldr     r1, [r1, r0]
	mov     r5, #0x20
	bic     r1, r5
	ldr     r5, [sp, #0x4]
	sub     r7, #0x3c
	str     r1, [r5, r0]
	ldr     r0, [r2, r0]
	lsl     r0, r0, #17
	lsr     r1, r0, #30
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldr     r0, [r3, r7]
	ldr     r1, [pc, #0xb0] @ 0x224dc04, (=#0x215c)
	neg     r0, r0
	str     r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0x20
	ldr     r2, [r4, r0]
	mov     r0, #0x40
	orr     r0, r2
	sub     r1, #0x20
	str     r0, [r4, r1]
	b       branch_224db80
@ 0x224db66

.thumb
branch_224db66: @ 224db66 :thumb
	mov     r3, #0x13
	lsl     r3, r3, #4
	str     r1, [r4, r3]
	ldr     r3, [r2, r0]
	ldr     r1, [pc, #0x9c] @ 0x224dc0c, (=#0xffff9fff)
	and     r1, r3
	lsl     r3, r3, #17
	lsr     r3, r3, #30
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #30
	lsr     r3, r3, #17
	orr     r1, r3
	str     r1, [r2, r0]
.thumb
branch_224db80: @ 224db80 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r6, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x66
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x8
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224db9c

.thumb
branch_224db9c: @ 224db9c :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, r7
	blt     branch_224daf0
.thumb
branch_224dba2: @ 224dba2 :thumb
	ldr     r0, [r4, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x20]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_224dbac: @ 224dbac :thumb
	mov     r1, #0x6
	lsl     r1, r1, #6
	ldr     r3, [r4, r1]
	mov     r2, #0x7
	lsl     r2, r2, #16
	mov     r0, r3
	tst     r0, r2
	beq     branch_224dbe0
	mov     r0, #0x1
	lsl     r0, r0, #16
	sub     r0, r3, r0
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	tst     r0, r2
	bne     branch_224dbe0
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xfb
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x8
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224dbe0

.thumb
branch_224dbe0: @ 224dbe0 :thumb
	ldr     r0, [r4, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x20]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_224dbea: @ 224dbea :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	mov     r0, #0xc
	str     r0, [r4, #0x8]
.thumb
branch_224dbf4: @ 224dbf4 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224dbf8

.word 0x21ec @ 0x224dbf8
.word 0x3108 @ 0x224dbfc
.word 0x2d8c @ 0x224dc00
.word 0x215c @ 0x224dc04
.word 0x2dc8 @ 0x224dc08
.word 0xffff9fff @ 0x224dc0c
.thumb
Function_224dc10: @ 224dc10 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x8]
	mov     r5, r0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2250f98
	cmp     r0, #0x1
	beq     branch_224dc64
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250a48
	cmp     r0, #0x1
	beq     branch_224dc64
	mov     r0, r5
	mov     r1, r4
	bl      Function_225079c
	cmp     r0, #0x1
	beq     branch_224dc64
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x24
	ldr     r0, [r4, r0]
	add     r1, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_22541c4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2254990
	mov     r0, #0x2
	str     r0, [r4, #0x8]
.thumb
branch_224dc64: @ 224dc64 :thumb
	pop     {r3-r5,pc}
@ 0x224dc66


.align 2, 0


.thumb
Function_224dc68: @ 224dc68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	add     r1, r5, r0
	ldr     r0, [pc, #0x114] @ 0x224dd90, (=#0x21e8)
	ldrb    r2, [r1, r0]
	lsl     r0, r2, #6
	add     r1, r5, r0
	mov     r0, #0x75
	str     r2, [r5, #0x64]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_224dc9c
	mov     r0, #0xc1
	mov     r1, #0xa5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r4, #0x1
	b       branch_224dd60
@ 0x224dc9c

.thumb
branch_224dc9c: @ 224dc9c :thumb
	mov     r0, #0xc0
	mul     r0, r2
	ldr     r6, [pc, #0xf0] @ 0x224dd94, (=#0x2dec)
	add     r0, r5, r0
	ldrh    r1, [r0, r6]
	cmp     r1, #0x0
	beq     branch_224dcc4
	add     r3, r6, #0x2
	ldrh    r3, [r0, r3]
	sub     r6, #0xa0
	lsl     r3, r3, #1
	add     r0, r0, r3
	ldrh    r0, [r0, r6]
	cmp     r1, r0
	bne     branch_224dcc4
	mov     r0, #0xc1
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r4, #0x1
	b       branch_224dd60
@ 0x224dcc4

.thumb
branch_224dcc4: @ 224dcc4 :thumb
	cmp     r1, #0x0
	beq     branch_224dd16
	mov     r7, #0xc0
	mov     r0, r2
	mul     r0, r7
	ldr     r3, [pc, #0xc8] @ 0x224dd98, (=#0x2dee)
	add     r0, r5, r0
	ldrh    r6, [r0, r3]
	lsl     r6, r6, #1
	add     r6, r0, r6
	mov     r0, r3
	sub     r0, #0xa2
	ldrh    r0, [r6, r0]
	cmp     r1, r0
	beq     branch_224dd16
	mov     r1, #0xc1
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r0, #0x0
	mov     r2, r1
	mul     r2, r7
	add     r2, r5, r2
	.hword  0x1e99 @ sub r1, r3, #0x2
	strh    r0, [r2, r1]
	ldr     r1, [r5, #0x64]
	mov     r4, #0x1
	mov     r2, r1
	mul     r2, r7
	add     r1, r5, r2
	strh    r0, [r1, r3]
	ldr     r0, [r5, #0x64]
	sub     r3, #0x26
	mov     r2, r0
	add     r3, r5, r3
	mul     r2, r7
	ldr     r1, [r3, r2]
	mov     r0, #0x38
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224dd60
@ 0x224dd16

.thumb
branch_224dd16: @ 224dd16 :thumb
	mov     r0, r5
	mov     r1, r2
	bl      Function_2259a28
	cmp     r0, #0x0
	bne     branch_224dd32
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x70] @ 0x224dd9c, (=#0x304c)
	ldr     r1, [r1, r0]
	sub     r0, #0xc
	str     r1, [r5, r0]
	b       branch_224dd60
@ 0x224dd32

.thumb
branch_224dd32: @ 224dd32 :thumb
	ldr     r2, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r2
	lsl     r1, r2, #1
	add     r3, r5, r0
	add     r0, r5, r1
	ldr     r1, [pc, #0x60] @ 0x224dda0, (=#0x30bc)
	ldrh    r2, [r0, r1]
	lsl     r2, r2, #1
	add     r3, r3, r2
	ldr     r2, [pc, #0x5c] @ 0x224dda4, (=#0x2d4c)
	ldrh    r3, [r3, r2]
	mov     r2, r1
	sub     r2, #0x8
	ldrh    r0, [r0, r2]
	cmp     r0, r3
	beq     branch_224dd5c
	sub     r1, #0x7c
	str     r3, [r5, r1]
	mov     r4, #0x1
	b       branch_224dd60
@ 0x224dd5c

.thumb
branch_224dd5c: @ 224dd5c :thumb
	sub     r1, #0x7c
	str     r3, [r5, r1]
.thumb
branch_224dd60: @ 224dd60 :thumb
	mov     r3, #0xc1
	lsl     r3, r3, #6
	ldr     r1, [r5, r3]
	add     r0, r3, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x16
	str     r0, [r5, #0x8]
	str     r4, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r3, [r5, r3]
	ldr     r0, [sp, #0x8]
	lsl     r3, r3, #16
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	lsr     r3, r3, #16
	bl      Function_2253954
	str     r0, [r5, #0x6c]
	ldr     r0, [sp, #0x8]
	bl      Function_2266aa0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224dd90

.word 0x21e8 @ 0x224dd90
.word 0x2dec @ 0x224dd94
.word 0x2dee @ 0x224dd98
.word 0x304c @ 0x224dd9c
.word 0x30bc @ 0x224dda0
.word 0x2d4c @ 0x224dda4
.thumb
Function_224dda8: @ 224dda8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r2, r4
	add     r2, #0xec
	ldr     r2, [r2, #0x0]
	mov     r7, r0
	add     r3, r4, r2
	ldr     r2, [pc, #0x12c] @ 0x224dee4, (=#0x21e8)
	ldrb    r2, [r3, r2]
	str     r2, [r4, #0x64]
	bl      Function_2257028
	str     r0, [r4, #0x6c]
	ldr     r0, [pc, #0x124] @ 0x224dee8, (=#0x21b0)
	ldr     r1, [r4, #0x64]
	add     r2, r4, r0
	lsl     r0, r1, #4
	add     r6, r2, r0
	mov     r0, r7
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_224de50
	ldr     r0, [r4, #0x64]
	asr     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x10c] @ 0x224deec, (=#0x3d1)
	ldrb    r2, [r1, r0]
	cmp     r2, #0x4
	bhi     branch_224de3c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r0, r1, #0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r2, r7, #0
	lsl     r0, r1, #1
	ldr     r5, [pc, #0xf4] @ 0x224def0, (=#0x121)
	b       branch_224de3c
@ 0x224ddfe


.incbin "./baserom/overlay/overlay_0016.bin", 0x12cbe, 0x224de3c - 0x224ddfe


.thumb
branch_224de3c: @ 224de3c :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0x1
	bic     r1, r0
	ldr     r0, [pc, #0xb8] @ 0x224defc, (=#0x3d6)
	add     r1, r4, r1
	ldrh    r1, [r1, r0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_224dec2
@ 0x224de50

.thumb
branch_224de50: @ 224de50 :thumb
	ldrb    r0, [r6, #0x2]
	cmp     r0, #0x3
	bhi     branch_224deba
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r0, #0
	lsl     r4, r3, #0
	lsl     r6, r0, #0
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x90] @ 0x224df00, (=#0xffc1)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_224de7c
	mov     r5, #0xde
	b       branch_224deba
@ 0x224de7c

.thumb
branch_224de7c: @ 224de7c :thumb
	mov     r5, #0xdf
	b       branch_224deba
@ 0x224de80


.incbin "./baserom/overlay/overlay_0016.bin", 0x12d40, 0x224deba - 0x224de80


.thumb
branch_224deba: @ 224deba :thumb
	ldrh    r1, [r6, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_224dec2: @ 224dec2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	ldr     r1, [pc, #0x2c] @ 0x224df04, (=#0x216c)
	mov     r0, #0x2
	ldr     r2, [r4, r1]
	lsl     r0, r0, #30
	orr     r0, r2
	str     r0, [r4, r1]
	pop     {r3-r7,pc}
@ 0x224dee2


.align 2


.word 0x21e8 @ 0x224dee4
.word 0x21b0 @ 0x224dee8
.word 0x3d1 @ 0x224deec
.word 0x121 @ 0x224def0

.incbin "./baserom/overlay/overlay_0016.bin", 0x12db4, 0x224defc - 0x224def4


.word 0x3d6 @ 0x224defc
.word 0xffc1 @ 0x224df00
.word 0x216c @ 0x224df04
.thumb
Function_224df08: @ 224df08 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x9
	bl      Function_2251e1c
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x28] @ 0x224df48, (=#0x21e8)
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	mov     r2, #0x0
	str     r0, [r4, #0x64]
	str     r0, [r4, #0x78]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x28
	str     r0, [r4, #0xc]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	str     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x7c
	ldr     r2, [r4, r0]
	mov     r0, #0x2
	lsl     r0, r0, #30
	orr     r0, r2
	sub     r1, #0x7c
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x224df48

.word 0x21e8 @ 0x224df48
.thumb
Function_224df4c: @ 224df4c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	add     r1, #0xec
	ldr     r1, [r1, #0x0]
	mov     r5, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0xa8] @ 0x224e004, (=#0x21e8)
	ldrb    r1, [r2, r1]
	str     r1, [r4, #0x64]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_224dfbe
	mov     r0, r5
	bl      Function_223df0c
	mov     r1, #0x4
	tst     r0, r1
	bne     branch_224dfbe
	ldr     r0, [r4, #0x64]
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	ldr     r0, [pc, #0x8c] @ 0x224e008, (=#0x2db0)
	add     r1, r4, r1
	ldr     r1, [r1, r0]
	ldr     r0, [pc, #0x88] @ 0x224e00c, (=#0x400e000)
	tst     r0, r1
	beq     branch_224dfa2
	mov     r0, r4
	mov     r1, #0x1
	add     r2, #0x5e
	bl      Function_2251e1c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x224dfa2

.thumb
branch_224dfa2: @ 224dfa2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe6
	bl      Function_2251e1c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x224dfbe

.thumb
branch_224dfbe: @ 224dfbe :thumb
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255de8
	cmp     r0, #0x0
	beq     branch_224dfe8
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_2251e1c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x224dfe8

.thumb
branch_224dfe8: @ 224dfe8 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x8
	bl      Function_2251e1c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x224e004

.word 0x21e8 @ 0x224e004
.word 0x2db0 @ 0x224e008
.word 0x400e000 @ 0x224e00c
.thumb
Function_224e010: @ 224e010 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r2, [pc, #0x3c] @ 0x224e054, (=#0x113)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	mov     r0, #0x1
	str     r0, [r4, #0x6c]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	mov     r0, #0x4a
	mov     r1, #0x5
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	bl      Function_223ed8c
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	bl      Function_223ed98
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22661cc
	pop     {r3-r5,pc}
@ 0x224e052


.align 2


.word 0x113 @ 0x224e054
.thumb
Function_224e058: @ 224e058 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe3
	bl      Function_2251e1c
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	mov     r0, #0x1
	str     r0, [r4, #0x6c]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	mov     r0, #0x4e
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x24] @ 0x224e0b0, (=#0x311c)
	ldrb    r1, [r4, r0]
	cmp     r1, #0xc
	bcs     branch_224e096
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_224e096: @ 224e096 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224e0ac
	ldr     r0, [pc, #0x10] @ 0x224e0b4, (=#0x311d)
	ldrb    r1, [r4, r0]
	cmp     r1, #0xc
	bcs     branch_224e0ac
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_224e0ac: @ 224e0ac :thumb
	pop     {r3-r5,pc}
@ 0x224e0ae


.align 2


.word 0x311c @ 0x224e0b0
.word 0x311d @ 0x224e0b4
.thumb
Function_224e0b8: @ 224e0b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe4
	bl      Function_2251e1c
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	mov     r0, #0x1
	str     r0, [r4, #0x6c]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	mov     r0, #0x4e
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x28] @ 0x224e114, (=#0x311d)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_224e0f6
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_224e0f6: @ 224e0f6 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_224e112
	mov     r1, #0x1
	sub     r0, #0x8
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x224e118, (=#0x311c)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_224e112
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_224e112: @ 224e112 :thumb
	pop     {r3-r5,pc}
@ 0x224e114

.word 0x311d @ 0x224e114
.word 0x311c @ 0x224e118
.thumb
Function_224e11c: @ 224e11c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe5
	bl      Function_2251e1c
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	mov     r0, #0x1
	str     r0, [r4, #0x6c]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x224e13c


.incbin "./baserom/overlay/overlay_0016.bin", 0x12ffc, 0x224e5f4 - 0x224e13c


.thumb
Function_224e5f4: @ 224e5f4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r4, #0x0
	ldr     r0, [r5, #0x6c]
	mov     r6, r4
	cmp     r0, #0xff
	bne     branch_224e612
	ldr     r1, [pc, #0xd8] @ 0x224e6e0, (=#0x3044)
	mov     r0, r5
	ldr     r1, [r5, r1]
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224e644
.thumb
branch_224e612: @ 224e612 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0xff
	bne     branch_224e658
	ldr     r1, [pc, #0xc4] @ 0x224e6e0, (=#0x3044)
	mov     r0, r5
	ldr     r1, [r5, r1]
	bl      Function_225582c
	cmp     r0, #0x1
	bne     branch_224e658
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0xb4] @ 0x224e6e4, (=#0x2db0)
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	lsl     r1, r1, #12
	tst     r0, r1
	bne     branch_224e644
	ldr     r0, [pc, #0xac] @ 0x224e6e8, (=#0x213c)
	ldr     r2, [r5, r0]
	lsr     r0, r1, #3
	tst     r0, r2
	beq     branch_224e658
.thumb
branch_224e644: @ 224e644 :thumb
	ldr     r2, [pc, #0xa4] @ 0x224e6ec, (=#0x119)
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x26
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
	mov     r4, #0x1
.thumb
branch_224e658: @ 224e658 :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224e69e
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224e69e
	ldr     r0, [pc, #0x5c] @ 0x224e6e0, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x224e6f0, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x97
	bne     branch_224e69e
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_224e69e
	mov     r6, #0x1
.thumb
branch_224e69e: @ 224e69e :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0xff
	bne     branch_224e6dc
	ldr     r1, [pc, #0x38] @ 0x224e6e0, (=#0x3044)
	mov     r0, r5
	ldr     r1, [r5, r1]
	bl      Function_225582c
	cmp     r0, #0x1
	bne     branch_224e6dc
	cmp     r4, #0x0
	bne     branch_224e6dc
	cmp     r6, #0x0
	bne     branch_224e6dc
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2258ab8
	cmp     r0, #0x63
	beq     branch_224e6dc
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x14] @ 0x224e6e4, (=#0x2db0)
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	lsl     r1, r1, #12
	tst     r1, r2
	bne     branch_224e6dc
	str     r0, [r5, #0x6c]
.thumb
branch_224e6dc: @ 224e6dc :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224e6e0

.word 0x3044 @ 0x224e6e0
.word 0x2db0 @ 0x224e6e4
.word 0x213c @ 0x224e6e8
.word 0x119 @ 0x224e6ec
.word 0x3de @ 0x224e6f0
.thumb
Function_224e6f4: @ 224e6f4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r1, [pc, #0x78] @ 0x224e774, (=#0x3044)
	ldr     r2, [r4, r1]
	lsl     r1, r2, #4
	add     r5, r4, r1
	ldr     r1, [pc, #0x74] @ 0x224e778, (=#0x3e6)
	ldrh    r3, [r5, r1]
	cmp     r3, #0x10
	beq     branch_224e728
	cmp     r3, #0x20
	beq     branch_224e728
	.hword  0x1f49 @ sub r1, r1, #0x5
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_224e728
	ldr     r1, [pc, #0x64] @ 0x224e77c, (=#0x213c)
	ldr     r3, [r4, r1]
	mov     r1, #0x2
	lsl     r1, r1, #14
	tst     r1, r3
	bne     branch_224e728
	mov     r1, #0x20
	tst     r1, r3
	beq     branch_224e72c
.thumb
branch_224e728: @ 224e728 :thumb
	cmp     r2, #0x56
	bne     branch_224e76c
.thumb
branch_224e72c: @ 224e72c :thumb
	ldr     r1, [r4, #0x64]
	ldr     r3, [pc, #0x50] @ 0x224e780, (=#0x2144)
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x6c]
	str     r1, [sp, #0x4]
	ldr     r1, [r4, r3]
	str     r1, [sp, #0x8]
	mov     r1, r3
	add     r1, #0x28
	add     r1, r4, r1
	str     r1, [sp, #0xc]
	add     r3, #0x1c
	ldr     r3, [r4, r3]
	mov     r1, r4
	bl      Function_2254fa8
	ldr     r1, [pc, #0x30] @ 0x224e780, (=#0x2144)
	str     r0, [r4, r1]
	add     r1, #0x28
	ldr     r1, [r4, r1]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_224e76c
	mov     r0, #0xd1
	lsl     r0, r0, #2
	add     r3, r4, r0
	ldr     r0, [r4, #0x64]
	lsl     r2, r0, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_224e76c: @ 224e76c :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224e772


.align 2


.word 0x3044 @ 0x224e774
.word 0x3e6 @ 0x224e778
.word 0x213c @ 0x224e77c
.word 0x2144 @ 0x224e780

.incbin "./baserom/overlay/overlay_0016.bin", 0x13644, 0x224ee88 - 0x224e784


.thumb
Function_224ee88: @ 224ee88 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r5
	ldr     r7, [pc, #0x68] @ 0x224eef8, (=#0x216c)
	mov     r4, #0x0
	add     r6, #0x54
.thumb
branch_224ee94: @ 224ee94 :thumb
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	beq     branch_224eea0
	cmp     r0, #0x1
	beq     branch_224eee0
	b       branch_224eee6
@ 0x224eea0

.thumb
branch_224eea0: @ 224eea0 :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2256148
	mov     r2, r0
	beq     branch_224eeb8
	ldr     r0, [pc, #0x48] @ 0x224eef8, (=#0x216c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x48] @ 0x224eefc, (=#0x1fd849)
	tst     r0, r1
	beq     branch_224eebc
.thumb
branch_224eeb8: @ 224eeb8 :thumb
	cmp     r2, #0xb5
	bne     branch_224eed8
.thumb
branch_224eebc: @ 224eebc :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r5, #0x8]
	mov     r4, #0x1
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
	mov     r0, #0x2
	ldr     r1, [r5, r7]
	lsl     r0, r0, #30
	orr     r0, r1
	str     r0, [r5, r7]
.thumb
branch_224eed8: @ 224eed8 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_224eee6
@ 0x224eee0

.thumb
branch_224eee0: @ 224eee0 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x54]
	mov     r4, #0x2
.thumb
branch_224eee6: @ 224eee6 :thumb
	cmp     r4, #0x0
	beq     branch_224ee94
	cmp     r4, #0x2
	beq     branch_224eef2
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224eef2

.thumb
branch_224eef2: @ 224eef2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224eef6


.align 2


.word 0x216c @ 0x224eef8
.word 0x1fd849 @ 0x224eefc
.thumb
Function_224ef00: @ 224ef00 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r2, [pc, #0x14] @ 0x224ef1c, (=#0x116)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224ef1a


.align 2


.word 0x116 @ 0x224ef1c
.thumb
Function_224ef20: @ 224ef20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x8]
	bl      Function_223df0c
	mov     r1, #0x1
	lsl     r1, r1, #10
	tst     r0, r1
	beq     branch_224ef3e
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224ef3e

.thumb
branch_224ef3e: @ 224ef3e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0x300] @ 0x224f24c, (=#0x2d5e)
	lsl     r0, r0, #4
	str     r0, [sp, #0x10]
	add     r1, r5, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	mov     r1, r6
	str     r0, [sp, #0x18]
	mov     r0, #0xc0
	mul     r1, r0
	str     r1, [sp, #0xc]
	add     r1, r5, r1
	ldsb    r1, [r1, r2]
	.hword  0x1f89 @ sub r1, r1, #0x6
	lsl     r1, r1, #24
	asr     r7, r1, #24
	ldr     r1, [sp, #0x8]
	mul     r0, r1
	str     r0, [sp, #0x14]
	add     r1, r5, r0
	add     r0, r2, #0x1
	ldsb    r1, [r1, r0]
	mov     r0, #0x6
	sub     r0, r0, r1
	lsl     r0, r0, #24
	asr     r4, r0, #24
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x56
	bne     branch_224ef8e
	lsl     r0, r7, #25
	asr     r7, r0, #24
.thumb
branch_224ef8e: @ 224ef8e :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x56
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224efa2
	lsl     r0, r4, #25
	asr     r4, r0, #24
.thumb
branch_224efa2: @ 224efa2 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x6d
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224efb4
	mov     r7, #0x0
.thumb
branch_224efb4: @ 224efb4 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x6d
	bne     branch_224efc2
	mov     r4, #0x0
.thumb
branch_224efc2: @ 224efc2 :thumb
	ldr     r0, [pc, #0x28c] @ 0x224f250, (=#0x2db0)
	ldr     r1, [sp, #0x14]
	add     r2, r5, r0
	str     r2, [sp, #0x1c]
	ldr     r1, [r2, r1]
	mov     r2, #0x2
	lsl     r2, r2, #28
	tst     r1, r2
	bne     branch_224efe2
	ldr     r1, [sp, #0x14]
	add     r0, #0x10
	add     r1, r5, r1
	ldr     r1, [r1, r0]
	lsr     r0, r2, #7
	tst     r0, r1
	beq     branch_224efe8
.thumb
branch_224efe2: @ 224efe2 :thumb
	cmp     r4, #0x0
	bge     branch_224efe8
	mov     r4, #0x0
.thumb
branch_224efe8: @ 224efe8 :thumb
	add     r0, r4, #0x6
	add     r0, r0, r7
	lsl     r0, r0, #24
	asr     r7, r0, #24
	bpl     branch_224eff4
	mov     r7, #0x0
.thumb
branch_224eff4: @ 224eff4 :thumb
	cmp     r7, #0xc
	ble     branch_224effa
	mov     r7, #0xc
.thumb
branch_224effa: @ 224effa :thumb
	ldr     r0, [pc, #0x258] @ 0x224f254, (=#0x3e3)
	add     r1, r5, r0
	ldr     r0, [sp, #0x10]
	ldrb    r4, [r1, r0]
	cmp     r4, #0x0
	bne     branch_224f00c
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f00c

.thumb
branch_224f00c: @ 224f00c :thumb
	ldr     r0, [pc, #0x248] @ 0x224f258, (=#0x213c)
	mov     r1, #0x20
	ldr     r0, [r5, r0]
	mov     r2, r0
	tst     r2, r1
	beq     branch_224f01e
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f01e

.thumb
branch_224f01e: @ 224f01e :thumb
	lsl     r1, r1, #5
	tst     r0, r1
	beq     branch_224f02a
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f02a

.thumb
branch_224f02a: @ 224f02a :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f06c
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f06c
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_224f06c
	ldr     r0, [sp, #0x10]
	add     r1, r5, r0
	ldr     r0, [pc, #0x1f8] @ 0x224f25c, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x98
	bne     branch_224f06c
	mov     r4, #0x32
.thumb
branch_224f06c: @ 224f06c :thumb
	ldr     r0, [pc, #0x1f0] @ 0x224f260, (=#0x226ead0)
	lsl     r1, r7, #1
	ldrb    r0, [r0, r1]
	ldr     r2, [pc, #0x1f0] @ 0x224f264, (=#0x226ead1)
	ldrb    r1, [r2, r1]
	mul     r0, r4
	blx     Function_20e2178
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0xe
	bne     branch_224f09a
	mov     r0, #0x82
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f09a: @ 224f09a :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f132
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f132
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_224f0ec
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x8
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224f0ec
	mov     r0, #0x50
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f0ec: @ 224f0ec :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	tst     r0, r1
	beq     branch_224f116
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x51
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224f116
	mov     r0, #0x50
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f116: @ 224f116 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	tst     r0, r1
	beq     branch_224f132
	mov     r0, #0x6
	mul     r0, r4
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f132: @ 224f132 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x37
	bne     branch_224f152
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_224f152
	mov     r0, #0x50
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f152: @ 224f152 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x4d
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_224f17c
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	ldr     r1, [r1, r0]
	mov     r0, #0x7
	tst     r0, r1
	beq     branch_224f17c
	mov     r0, #0x32
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f17c: @ 224f17c :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2258ab8
	mov     r7, r0
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	cmp     r7, #0x30
	bne     branch_224f1a2
	mov     r1, #0x64
	sub     r0, r1, r0
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f1a2: @ 224f1a2 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2258ab8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2258acc
	mov     r6, r0
	cmp     r7, #0x5d
	bne     branch_224f1ca
	add     r0, #0x64
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f1ca: @ 224f1ca :thumb
	cmp     r7, #0x68
	bne     branch_224f1ea
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_22588a4
	cmp     r0, #0x1
	bne     branch_224f1ea
	add     r6, #0x64
	mov     r0, r4
	mul     r0, r6
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f1ea: @ 224f1ea :thumb
	ldr     r0, [pc, #0x7c] @ 0x224f268, (=#0x2dcc)
	ldr     r1, [sp, #0xc]
	add     r0, r5, r0
	ldr     r2, [r0, r1]
	lsl     r1, r2, #4
	lsr     r1, r1, #31
	beq     branch_224f20e
	ldr     r1, [pc, #0x70] @ 0x224f26c, (=#0xf7ffffff)
	and     r2, r1
	ldr     r1, [sp, #0xc]
	str     r2, [r0, r1]
	mov     r0, #0x78
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f20e: @ 224f20e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x7
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_224f22a
	mov     r0, #0xa
	mul     r0, r4
	mov     r1, #0x6
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_224f22a: @ 224f22a :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	add     r0, r1, #0x1
	cmp     r0, r4
	ble     branch_224f246
	ldr     r1, [pc, #0x30] @ 0x224f270, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_224f246: @ 224f246 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224f24c

.word 0x2d5e @ 0x224f24c
.word 0x2db0 @ 0x224f250
.word 0x3e3 @ 0x224f254
.word 0x213c @ 0x224f258
.word 0x3de @ 0x224f25c
.word 0x226ead0 @ 0x224f260
.word 0x226ead1 @ 0x224f264
.word 0x2dcc @ 0x224f268
.word 0xf7ffffff @ 0x224f26c
.word 0x216c @ 0x224f270
.thumb
Function_224f274: @ 224f274 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1d0] @ 0x224f44c, (=#0x213c)
	mov     r5, r1
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	mov     r7, r2
	mov     r4, r3
	ldr     r6, [sp, #0x20]
	tst     r0, r1
	beq     branch_224f292
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f292

.thumb
branch_224f292: @ 224f292 :thumb
	lsl     r0, r4, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	beq     branch_224f2f6
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x1a8] @ 0x224f450, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_224f2f6
	cmp     r6, #0xae
	bne     branch_224f2c2
	lsl     r1, r6, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_2255950
	cmp     r0, #0x1
	bne     branch_224f2f6
.thumb
branch_224f2c2: @ 224f2c2 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224f2da
	ldr     r0, [pc, #0x17c] @ 0x224f44c, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #8
	tst     r0, r1
	beq     branch_224f2f6
.thumb
branch_224f2da: @ 224f2da :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2253f20
	ldr     r1, [pc, #0x16c] @ 0x224f454, (=#0x216c)
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #14
	orr     r0, r2
	str     r0, [r5, r1]
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f2f6

.thumb
branch_224f2f6: @ 224f2f6 :thumb
	ldr     r0, [pc, #0x154] @ 0x224f44c, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r0, r1
	bne     branch_224f348
	mov     r0, #0xc0
	mul     r0, r4
	add     r3, r5, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r2, [r3, r0]
	mov     r1, #0x18
	tst     r1, r2
	beq     branch_224f320
	add     r0, #0xc
	ldr     r0, [r3, r0]
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	cmp     r7, r0
	beq     branch_224f338
.thumb
branch_224f320: @ 224f320 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x63
	beq     branch_224f338
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x63
	bne     branch_224f348
.thumb
branch_224f338: @ 224f338 :thumb
	ldr     r1, [pc, #0x118] @ 0x224f454, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	add     sp, #0x8
	bic     r2, r0
	str     r2, [r5, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f348

.thumb
branch_224f348: @ 224f348 :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f3b6
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_224f3b6
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224f392
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xd4] @ 0x224f458, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x98
	bne     branch_224f392
	ldr     r1, [pc, #0xc8] @ 0x224f454, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	str     r2, [r5, r1]
.thumb
branch_224f392: @ 224f392 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0xc0
	tst     r0, r1
	beq     branch_224f3b6
	lsl     r0, r6, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0xb4] @ 0x224f458, (=#0x3de)
	add     r1, #0x44
	ldrh    r0, [r2, r0]
	cmp     r0, r1
	bne     branch_224f3b6
	ldr     r1, [pc, #0xa4] @ 0x224f454, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	bic     r2, r0
	str     r2, [r5, r1]
.thumb
branch_224f3b6: @ 224f3b6 :thumb
	ldr     r1, [pc, #0x9c] @ 0x224f454, (=#0x216c)
	mov     r2, #0x1
	ldr     r0, [r5, r1]
	lsl     r2, r2, #10
	tst     r0, r2
	bne     branch_224f446
	ldr     r0, [pc, #0x98] @ 0x224f45c, (=#0x3044)
	sub     r2, #0x1a
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r0, r5, r0
	ldrh    r0, [r0, r2]
	cmp     r0, #0x80
	beq     branch_224f446
	sub     r1, #0x30
	ldr     r0, [r5, r1]
	mov     r1, #0x4
	tst     r1, r0
	bne     branch_224f3ee
	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	mov     r1, #0xb7
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	mov     r1, #0x40
	tst     r1, r2
	bne     branch_224f43a
.thumb
branch_224f3ee: @ 224f3ee :thumb
	mov     r2, #0x2
	lsl     r2, r2, #18
	mov     r1, r0
	tst     r1, r2
	bne     branch_224f40a
	mov     r1, #0xc0
	mul     r1, r4
	add     r3, r5, r1
	mov     r1, #0xb7
	lsl     r1, r1, #6
	ldr     r3, [r3, r1]
	lsl     r1, r2, #10
	tst     r1, r3
	bne     branch_224f43a
.thumb
branch_224f40a: @ 224f40a :thumb
	mov     r1, #0x8
	tst     r1, r0
	bne     branch_224f422
	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	mov     r1, #0xb7
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	mov     r1, #0x80
	tst     r1, r2
	bne     branch_224f43a
.thumb
branch_224f422: @ 224f422 :thumb
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_224f446
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r2, [r2, r0]
	lsl     r0, r1, #14
	tst     r0, r2
	beq     branch_224f446
.thumb
branch_224f43a: @ 224f43a :thumb
	ldr     r1, [pc, #0x18] @ 0x224f454, (=#0x216c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	lsl     r0, r0, #16
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_224f446: @ 224f446 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224f44c

.word 0x213c @ 0x224f44c
.word 0x3e9 @ 0x224f450
.word 0x216c @ 0x224f454
.word 0x3de @ 0x224f458
.word 0x3044 @ 0x224f45c

.incbin "./baserom/overlay/overlay_0016.bin", 0x14320, 0x224f5cc - 0x224f460


.thumb
Function_224f5cc: @ 224f5cc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_22405fc
	cmp     r0, #0x1
	bne     branch_224f5e4
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_224f5e4: @ 224f5e4 :thumb
	pop     {r4,pc}
@ 0x224f5e6


.align 2, 0


.thumb
Function_224f5e8: @ 224f5e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x48]
	mov     r5, r0
	cmp     r2, #0x6
	bhi     branch_224f6de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r4, r1, #0
	lsl     r0, r3, #0
	lsl     r0, r6, #0
	lsl     r4, r7, #1
	lsl     r0, r3, #2
	lsl     r2, r5, #2
	lsl     r6, r0, #3
	bl      Function_224ef00
	ldr     r0, [r4, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x48]
	pop     {r3-r5,pc}
@ 0x224f61a


.incbin "./baserom/overlay/overlay_0016.bin", 0x144da, 0x224f6de - 0x224f61a


.thumb
branch_224f6de: @ 224f6de :thumb
	ldr     r1, [pc, #0x4c] @ 0x224f72c, (=#0x216c)
	ldr     r0, [pc, #0x4c] @ 0x224f730, (=#0x801fda49)
	ldr     r2, [r4, r1]
	tst     r0, r2
	beq     branch_224f6ee
	mov     r0, #0x19
	str     r0, [r4, #0x8]
	b       branch_224f718
@ 0x224f6ee

.thumb
branch_224f6ee: @ 224f6ee :thumb
	mov     r0, r1
	sub     r0, #0x2c
	ldr     r2, [r4, r0]
	mov     r0, #0x40
	orr     r0, r2
	sub     r1, #0x2c
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x28] @ 0x224f728, (=#0x3044)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x17
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, r4
	bl      Function_22560b0
.thumb
branch_224f718: @ 224f718 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259868
	pop     {r3-r5,pc}
@ 0x224f722


.incbin "./baserom/overlay/overlay_0016.bin", 0x145e2, 0x224f728 - 0x224f722


.word 0x3044 @ 0x224f728
.word 0x216c @ 0x224f72c
.word 0x801fda49 @ 0x224f730
.thumb
Function_224f734: @ 224f734 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x4c]
	mov     r5, r0
	cmp     r2, #0x6
	bhi     branch_224f814
	add     r3, r2, r2
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r4, r1, #0
	lsl     r0, r3, #0
	lsl     r2, r5, #0
	lsl     r4, r2, #1
	lsl     r6, r7, #1
	lsl     r0, r4, #2
	lsl     r2, r0, #3
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r4, #0x4c]
	bl      Function_224e5f4
	cmp     r0, #0x1
	beq     branch_224f818
	ldr     r0, [r4, #0x4c]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, r5
	bl      Function_2253e3c
	cmp     r0, #0x1
	beq     branch_224f818
	ldr     r0, [pc, #0xa0] @ 0x224f81c, (=#0x2184)
	ldr     r1, [r4, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_224f79c
	ldr     r3, [r4, #0x6c]
	cmp     r3, #0xff
	beq     branch_224f79c
	ldr     r0, [pc, #0x94] @ 0x224f820, (=#0x3044)
	mov     r1, r4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	bl      Function_224ef20
	cmp     r0, #0x1
	beq     branch_224f818
.thumb
branch_224f79c: @ 224f79c :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r0, [pc, #0x78] @ 0x224f81c, (=#0x2184)
	ldr     r1, [r4, r0]
	mov     r0, #0x40
	tst     r0, r1
	bne     branch_224f7c6
	ldr     r3, [r4, #0x6c]
	cmp     r3, #0xff
	beq     branch_224f7c6
	ldr     r0, [pc, #0x6c] @ 0x224f820, (=#0x3044)
	mov     r1, r4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	bl      Function_224f274
	cmp     r0, #0x1
	beq     branch_224f818
.thumb
branch_224f7c6: @ 224f7c6 :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r0, [pc, #0x4c] @ 0x224f81c, (=#0x2184)
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_224f7e8
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0xff
	beq     branch_224f7e8
	mov     r0, r5
	mov     r1, r4
	bl      Function_224e6f4
	cmp     r0, #0x1
	beq     branch_224f818
.thumb
branch_224f7e8: @ 224f7e8 :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r0, [pc, #0x2c] @ 0x224f81c, (=#0x2184)
	ldr     r1, [r4, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_224f80a
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0xff
	beq     branch_224f80a
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ee88
	cmp     r0, #0x1
	beq     branch_224f818
.thumb
branch_224f80a: @ 224f80a :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
.thumb
branch_224f814: @ 224f814 :thumb
	mov     r0, #0x18
	str     r0, [r4, #0x8]
.thumb
branch_224f818: @ 224f818 :thumb
	pop     {r3-r5,pc}
@ 0x224f81a


.align 2


.word 0x2184 @ 0x224f81c
.word 0x3044 @ 0x224f820
.thumb
Function_224f824: @ 224f824 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	add     r2, sp, #0x0
	mov     r4, r1
	bl      Function_225366c
	cmp     r0, #0x1
	bne     branch_224f84a
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x19
	add     sp, #0x4
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x224f84a

.thumb
branch_224f84a: @ 224f84a :thumb
	mov     r0, #0x19
	str     r0, [r4, #0x8]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224f852


.align 2, 0


.thumb
Function_224f854: @ 224f854 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x74] @ 0x224f8cc, (=#0x216c)
	mov     r4, r1
	ldr     r1, [r4, r0]
	mov     r2, #0x2
	lsl     r2, r2, #30
	mov     r3, r1
	tst     r3, r2
	beq     branch_224f86c
	mov     r0, #0x22
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x224f86c

.thumb
branch_224f86c: @ 224f86c :thumb
	lsr     r2, r2, #22
	tst     r2, r1
	beq     branch_224f886
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2a
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x26
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x224f886

.thumb
branch_224f886: @ 224f886 :thumb
	mov     r2, r0
	add     r2, #0x14
	ldr     r2, [r4, r2]
	cmp     r2, #0x0
	beq     branch_224f8ac
	mov     r3, #0x1
	mov     r2, r1
	tst     r2, r3
	beq     branch_224f8ac
	mov     r2, #0x1
	bic     r1, r2
	str     r1, [r4, r0]
	ldr     r2, [r4, r0]
	lsl     r1, r3, #14
	orr     r1, r2
	str     r1, [r4, r0]
	mov     r0, #0x1c
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x224f8ac

.thumb
branch_224f8ac: @ 224f8ac :thumb
	ldr     r0, [pc, #0x20] @ 0x224f8d0, (=#0x1fd849)
	tst     r0, r1
	beq     branch_224f8c6
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x7
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x21
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x224f8c6

.thumb
branch_224f8c6: @ 224f8c6 :thumb
	mov     r0, #0x1a
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x224f8cc

.word 0x216c @ 0x224f8cc
.word 0x1fd849 @ 0x224f8d0
.thumb
Function_224f8d4: @ 224f8d4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1b
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x224f8ec

.thumb
Function_224f8ec: @ 224f8ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0x324] @ 0x224fc18, (=#0x216c)
	mov     r4, r1
	ldr     r1, [r4, r2]
	mov     r7, r0
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_224f914
	ldr     r0, [r4, #0x6c]
	mov     r1, #0xc0
	mov     r3, r0
	mul     r3, r1
	ldr     r0, [pc, #0x314] @ 0x224fc1c, (=#0x2d90)
	add     r3, r4, r3
	ldr     r0, [r3, r0]
	sub     r1, #0xc1
	mul     r1, r0
	sub     r2, #0x28
	str     r1, [r4, r2]
.thumb
branch_224f914: @ 224f914 :thumb
	ldr     r0, [pc, #0x308] @ 0x224fc20, (=#0x2144)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224f91e
	b       branch_224fcec
@ 0x224f91e

.thumb
branch_224f91e: @ 224f91e :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_2258ab8
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2258acc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2e8] @ 0x224fc20, (=#0x2144)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	blt     branch_224f940
	bl      Function_2022974
.thumb
branch_224f940: @ 224f940 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r7
	bl      Function_223e208
	mov     r5, r0
	ldr     r1, [r4, #0x6c]
	mov     r0, r7
	bl      Function_223e208
	cmp     r5, r0
	bne     branch_224f962
	ldr     r1, [r4, #0x64]
	mov     r0, r7
	mov     r2, #0x0
	mov     r3, #0x61
	bl      Function_22666bc
.thumb
branch_224f962: @ 224f962 :thumb
	ldr     r0, [r4, #0x6c]
	ldr     r2, [r4, #0x64]
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x2b8] @ 0x224fc24, (=#0x30f4)
	str     r2, [r1, r0]
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mov     r6, r1
	mul     r6, r0
	mov     r2, #0x1
	ldr     r1, [pc, #0x2ac] @ 0x224fc28, (=#0x2db0)
	add     r5, r4, r6
	ldr     r3, [r5, r1]
	lsl     r2, r2, #24
	tst     r2, r3
	beq     branch_224fa3c
	ldr     r2, [pc, #0x298] @ 0x224fc20, (=#0x2144)
	ldr     r2, [r4, r2]
	cmp     r2, #0x0
	bge     branch_224fa3c
	mov     r3, r1
	add     r3, #0x30
	ldr     r3, [r5, r3]
	add     r5, r2, r3
	cmp     r5, #0x0
	bgt     branch_224f9de
	mov     r2, #0xbb
	lsl     r2, r2, #2
	add     r6, r4, r2
	ldr     r2, [r4, #0x64]
	mov     r5, #0x1c
	mul     r5, r2
	ldr     r2, [r6, r5]
	sub     r2, r2, r3
	str     r2, [r6, r5]
	ldr     r5, [r4, #0x6c]
	add     r3, r4, r1
	mov     r2, r5
	mul     r2, r0
	ldr     r6, [r3, r2]
	ldr     r5, [pc, #0x274] @ 0x224fc2c, (=#0xfeffffff)
	and     r5, r6
	str     r5, [r3, r2]
	ldr     r2, [r4, #0x6c]
	mov     r3, r2
	mov     r2, r1
	mul     r3, r0
	add     r3, r4, r3
	add     r2, #0x30
	ldr     r2, [r3, r2]
	add     r1, #0x30
	neg     r3, r2
	ldr     r2, [pc, #0x250] @ 0x224fc20, (=#0x2144)
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r3, [r4, r2]
	ldr     r2, [r4, #0x6c]
	mov     r3, #0x0
	mul     r0, r2
	add     r0, r4, r0
	str     r3, [r0, r1]
	b       branch_224fa0a
@ 0x224f9de

.thumb
branch_224f9de: @ 224f9de :thumb
	mov     r3, #0xbb
	lsl     r3, r3, #2
	add     r6, r4, r3
	ldr     r3, [r4, #0x64]
	mov     r5, #0x1c
	mul     r5, r3
	ldr     r3, [r6, r5]
	add     r1, #0x30
	add     r2, r3, r2
	str     r2, [r6, r5]
	ldr     r2, [r4, #0x6c]
	add     r1, r4, r1
	mul     r0, r2
	ldr     r2, [pc, #0x224] @ 0x224fc20, (=#0x2144)
	ldr     r3, [r1, r0]
	ldr     r2, [r4, r2]
	add     r2, r3, r2
	str     r2, [r1, r0]
	ldr     r0, [pc, #0x21c] @ 0x224fc20, (=#0x2144)
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_224fa0a: @ 224fa0a :thumb
	mov     r0, #0xba
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x6c]
	add     r1, r4, r0
	mov     r0, r2
	mov     r3, #0x1c
	mul     r0, r3
	ldr     r5, [r1, r0]
	mov     r2, #0x8
	orr     r2, r5
	str     r2, [r1, r0]
	ldr     r0, [r4, #0x6c]
	add     r3, #0xfc
	str     r0, [r4, r3]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x5a
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1c
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x224fa3c

.thumb
branch_224fa3c: @ 224fa3c :thumb
	ldr     r0, [pc, #0x1f0] @ 0x224fc30, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x1ec] @ 0x224fc34, (=#0x3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x65
	bne     branch_224fa62
	ldr     r0, [pc, #0x1e8] @ 0x224fc38, (=#0x2d8c)
	add     r1, r4, r6
	ldr     r2, [r1, r0]
	ldr     r0, [pc, #0x1cc] @ 0x224fc20, (=#0x2144)
	ldr     r1, [r4, r0]
	add     r1, r1, r2
	cmp     r1, #0x0
	bgt     branch_224fa62
	.hword  0x1e51 @ sub r1, r2, #0x1
	neg     r1, r1
	str     r1, [r4, r0]
.thumb
branch_224fa62: @ 224fa62 :thumb
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #22
	lsr     r0, r0, #31
	bne     branch_224fad0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x41
	bne     branch_224faa2
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bge     branch_224faa2
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r2
	mul     r3, r1
	add     r0, r4, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x20
	orr     r1, r2
	str     r1, [r0, r3]
.thumb
branch_224faa2: @ 224faa2 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x67
	bne     branch_224fad0
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r4, r0
	ldr     r0, [pc, #0x184] @ 0x224fc38, (=#0x2d8c)
	ldr     r2, [r3, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r3, r0]
	cmp     r2, r0
	bne     branch_224fad0
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r3, r1
	mov     r2, #0x1c
	add     r0, r4, r0
	mul     r3, r2
	ldr     r2, [r0, r3]
	mov     r1, #0x20
	orr     r1, r2
	str     r1, [r0, r3]
.thumb
branch_224fad0: @ 224fad0 :thumb
	ldr     r0, [r4, #0x6c]
	lsl     r1, r0, #6
	add     r2, r4, r1
	mov     r1, #0x75
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #22
	lsr     r1, r1, #31
	bne     branch_224faf4
	mov     r1, #0x1c
	mul     r1, r0
	add     r2, r4, r1
	mov     r1, #0xb5
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #26
	lsr     r1, r1, #31
	beq     branch_224fb3e
.thumb
branch_224faf4: @ 224faf4 :thumb
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x13c] @ 0x224fc38, (=#0x2d8c)
	add     r1, r4, r1
	ldr     r2, [pc, #0x120] @ 0x224fc20, (=#0x2144)
	ldr     r1, [r1, r0]
	ldr     r0, [r4, r2]
	add     r0, r0, r1
	cmp     r0, #0x0
	bgt     branch_224fb3e
	.hword  0x1e48 @ sub r0, r1, #0x1
	neg     r0, r0
	str     r0, [r4, r2]
	ldr     r0, [r4, #0x6c]
	mov     r1, #0x75
	lsl     r0, r0, #6
	add     r0, r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsl     r0, r0, #22
	lsr     r0, r0, #31
	beq     branch_224fb30
	mov     r0, r2
	add     r0, #0x28
	ldr     r1, [r4, r0]
	mov     r0, #0x80
	orr     r0, r1
	add     r2, #0x28
	str     r0, [r4, r2]
	b       branch_224fb3e
@ 0x224fb30

.thumb
branch_224fb30: @ 224fb30 :thumb
	mov     r0, r2
	add     r0, #0x28
	ldr     r0, [r4, r0]
	sub     r1, #0xd4
	orr     r0, r1
	add     r2, #0x28
	str     r0, [r4, r2]
.thumb
branch_224fb3e: @ 224fb3e :thumb
	ldr     r1, [r4, #0x6c]
	ldr     r0, [pc, #0xf8] @ 0x224fc3c, (=#0x30e4)
	lsl     r3, r1, #2
	ldr     r1, [pc, #0xd8] @ 0x224fc20, (=#0x2144)
	add     r0, r4, r0
	ldr     r2, [r0, r3]
	ldr     r1, [r4, r1]
	add     r1, r2, r1
	str     r1, [r0, r3]
	ldr     r0, [pc, #0xec] @ 0x224fc40, (=#0x2dbc)
	ldr     r1, [r4, #0x6c]
	add     r3, r4, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldrb    r0, [r3, r2]
	cmp     r0, #0xff
	bcs     branch_224fb66
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r3, r2]
.thumb
branch_224fb66: @ 224fb66 :thumb
	ldr     r0, [pc, #0xc8] @ 0x224fc30, (=#0x3044)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	lsl     r1, r1, #4
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_224fbd4
	ldr     r1, [r4, #0x6c]
	ldr     r0, [pc, #0xa4] @ 0x224fc20, (=#0x2144)
	lsl     r1, r1, #6
	add     r2, r4, r1
	ldr     r1, [r4, #0x64]
	ldr     r0, [r4, r0]
	lsl     r1, r1, #2
	add     r2, r2, r1
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x6c]
	ldr     r2, [r4, #0x64]
	lsl     r0, r0, #6
	add     r0, r4, r0
	add     r1, #0x10
	str     r2, [r0, r1]
	ldr     r0, [r4, #0x64]
	bl      Function_20787cc
	mov     r1, #0x7b
	ldr     r3, [r4, #0x6c]
	lsl     r1, r1, #2
	add     r2, r4, r1
	lsl     r5, r3, #6
	ldr     r3, [r2, r5]
	orr     r0, r3
	str     r0, [r2, r5]
	ldr     r2, [r4, #0x6c]
	ldr     r0, [pc, #0x6c] @ 0x224fc20, (=#0x2144)
	mov     r5, r2
	mov     r2, r1
	mov     r3, #0x1c
	mul     r5, r3
	ldr     r0, [r4, r0]
	add     r5, r4, r5
	add     r2, #0xec
	str     r0, [r5, r2]
	ldr     r0, [r4, #0x6c]
	ldr     r5, [r4, #0x64]
	mov     r2, r0
	mul     r2, r3
	add     r0, r4, r2
	add     r1, #0xf0
	str     r5, [r0, r1]
	b       branch_224fc62
@ 0x224fbd4

.thumb
branch_224fbd4: @ 224fbd4 :thumb
	cmp     r0, #0x1
	bne     branch_224fc62
	ldr     r2, [r4, #0x6c]
	ldr     r0, [pc, #0x44] @ 0x224fc20, (=#0x2144)
	lsl     r2, r2, #6
	add     r3, r4, r2
	ldr     r2, [r4, #0x64]
	ldr     r0, [r4, r0]
	lsl     r2, r2, #2
	add     r2, r3, r2
	lsr     r1, r1, #1
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x6c]
	ldr     r2, [r4, #0x64]
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	str     r2, [r1, r0]
	ldr     r0, [r4, #0x64]
	bl      Function_20787cc
	mov     r1, #0x81
	ldr     r3, [r4, #0x6c]
	lsl     r1, r1, #2
	add     r2, r4, r1
	lsl     r5, r3, #6
	ldr     r3, [r2, r5]
	orr     r0, r3
	str     r0, [r2, r5]
	ldr     r2, [r4, #0x6c]
	ldr     r0, [pc, #0xc] @ 0x224fc20, (=#0x2144)
	b       branch_224fc44
@ 0x224fc16


.align 2


.word 0x216c @ 0x224fc18
.word 0x2d90 @ 0x224fc1c
.word 0x2144 @ 0x224fc20
.word 0x30f4 @ 0x224fc24
.word 0x2db0 @ 0x224fc28
.word 0xfeffffff @ 0x224fc2c
.word 0x3044 @ 0x224fc30
.word 0x3de @ 0x224fc34
.word 0x2d8c @ 0x224fc38
.word 0x30e4 @ 0x224fc3c
.word 0x2dbc @ 0x224fc40
.thumb
branch_224fc44: @ 224fc44 :thumb
	mov     r5, r2
	mov     r2, r1
	mov     r3, #0x1c
	mul     r5, r3
	ldr     r0, [r4, r0]
	add     r5, r4, r5
	add     r2, #0xdc
	str     r0, [r5, r2]
	ldr     r0, [r4, #0x6c]
	ldr     r5, [r4, #0x64]
	mov     r2, r0
	mul     r2, r3
	add     r0, r4, r2
	add     r1, #0xe0
	str     r5, [r0, r1]
.thumb
branch_224fc62: @ 224fc62 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x88] @ 0x224fcf4, (=#0x2d8c)
	ldr     r2, [r1, r0]
	ldr     r0, [pc, #0x88] @ 0x224fcf8, (=#0x2144)
	ldr     r1, [r4, r0]
	add     r0, r1, r2
	cmp     r0, #0x0
	bgt     branch_224fc8e
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r3, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r3, [r1, r0]
	neg     r2, r2
	add     r2, r3, r2
	str     r2, [r1, r0]
	b       branch_224fca2
@ 0x224fc8e

.thumb
branch_224fc8e: @ 224fc8e :thumb
	ldr     r3, [r4, #0x64]
	mov     r0, #0xbb
	lsl     r0, r0, #2
	mov     r2, #0x1c
	mov     r5, r3
	add     r0, r4, r0
	mul     r5, r2
	ldr     r2, [r0, r5]
	add     r1, r2, r1
	str     r1, [r0, r5]
.thumb
branch_224fca2: @ 224fca2 :thumb
	ldr     r3, [pc, #0x54] @ 0x224fcf8, (=#0x2144)
	ldr     r0, [r4, #0x6c]
	mov     r2, #0x82
	lsl     r0, r0, #6
	ldr     r1, [r4, r3]
	add     r0, r4, r0
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	ldr     r1, [r4, #0x6c]
	ldr     r0, [r4, #0x64]
	lsl     r1, r1, #6
	add     r5, r4, r1
	add     r1, r2, #0x4
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x6c]
	sub     r2, #0xf0
	str     r0, [r4, r2]
	ldr     r0, [r4, r3]
	add     r3, #0x18
	str     r0, [r4, r3]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1c
	str     r0, [r4, #0xc]
	ldr     r1, [pc, #0x1c] @ 0x224fcfc, (=#0x213c)
	mov     r0, #0x2
	ldr     r2, [r4, r1]
	lsl     r0, r0, #12
	orr     r0, r2
	add     sp, #0x8
	str     r0, [r4, r1]
	pop     {r3-r7,pc}
@ 0x224fcec

.thumb
branch_224fcec: @ 224fcec :thumb
	mov     r0, #0x1c
	str     r0, [r4, #0x8]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224fcf4

.word 0x2d8c @ 0x224fcf4
.word 0x2144 @ 0x224fcf8
.word 0x213c @ 0x224fcfc
.thumb
Function_224fd00: @ 224fd00 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r2, [r4, #0x38]
	mov     r5, r0
	cmp     r2, #0x0
	beq     branch_224fd14
	cmp     r2, #0x1
	beq     branch_224fdf2
	b       branch_224fec8
@ 0x224fd14

.thumb
branch_224fd14: @ 224fd14 :thumb
	ldr     r2, [r4, #0x3c]
	cmp     r2, #0x6
	bls     branch_224fd1c
	b       branch_224fec8
@ 0x224fd1c

.thumb
branch_224fd1c: @ 224fd1c :thumb
	add     r3, r2, r2
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r4, r1, #0
	lsl     r0, r3, #0
	lsl     r2, r5, #0
	lsl     r6, r3, #1
	lsl     r2, r7, #1
	lsl     r0, r1, #2
	lsl     r2, r6, #2
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r4, #0x3c]
	bl      Function_22511fc
	cmp     r0, #0x1
	beq     branch_224fdb0
	ldr     r0, [r4, #0x3c]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x3c]
	mov     r0, r5
	bl      Function_2251218
	cmp     r0, #0x1
	beq     branch_224fdb0
	ldr     r0, [r4, #0x3c]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x3c]
	mov     r0, r5
	add     r2, sp, #0xc
	bl      Function_2253710
	cmp     r0, #0x1
	bne     branch_224fd88
	ldr     r0, [pc, #0x168] @ 0x224fed4, (=#0x216c)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x168] @ 0x224fed8, (=#0x1fd849)
	tst     r0, r1
	bne     branch_224fd88
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224fd88

.thumb
branch_224fd88: @ 224fd88 :thumb
	ldr     r0, [r4, #0x3c]
	ldr     r2, [pc, #0x150] @ 0x224fedc, (=#0x125)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x3c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224fda4


.incbin "./baserom/overlay/overlay_0016.bin", 0x14c64, 0x224fdb0 - 0x224fda4


.thumb
branch_224fdb0: @ 224fdb0 :thumb
	b       branch_224fed0
@ 0x224fdb2


.incbin "./baserom/overlay/overlay_0016.bin", 0x14c72, 0x224fdf2 - 0x224fdb2


.thumb
branch_224fdf2: @ 224fdf2 :thumb
	ldr     r2, [r4, #0x3c]
	cmp     r2, #0x6
	bhi     branch_224fec8
	add     r3, r2, r2
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r4, r1, #0
	lsl     r0, r3, #0
	lsl     r4, r1, #1
	lsl     r0, r5, #1
	lsl     r4, r6, #1
	lsl     r6, r3, #2
	lsl     r0, r6, #2
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r4, #0x3c]
	bl      Function_22511fc
	cmp     r0, #0x1
	beq     branch_224fed0
	ldr     r0, [r4, #0x3c]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x3c]
	mov     r0, r5
	add     r2, sp, #0x4
	bl      Function_2253710
	cmp     r0, #0x1
	bne     branch_224fe52
	ldr     r0, [pc, #0xa0] @ 0x224fed4, (=#0x216c)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0xa0] @ 0x224fed8, (=#0x1fd849)
	tst     r0, r1
	bne     branch_224fe52
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224fe52

.thumb
branch_224fe52: @ 224fe52 :thumb
	ldr     r0, [r4, #0x3c]
	ldr     r2, [pc, #0x84] @ 0x224fedc, (=#0x125)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x3c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224fe6e


.incbin "./baserom/overlay/overlay_0016.bin", 0x14d2e, 0x224fec8 - 0x224fe6e


.thumb
branch_224fec8: @ 224fec8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x3c]
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
.thumb
branch_224fed0: @ 224fed0 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224fed4

.word 0x216c @ 0x224fed4
.word 0x1fd849 @ 0x224fed8
.word 0x125 @ 0x224fedc
.thumb
Function_224fee0: @ 224fee0 :thumb
	bx      lr
@ 0x224fee2


.align 2, 0


.thumb
Function_224fee4: @ 224fee4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r1, [r4, #0x40]
	mov     r6, r0
	cmp     r1, #0x7
	bls     branch_224fef4
	b       branch_225012e
@ 0x224fef4

.thumb
branch_224fef4: @ 224fef4 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r1, #0
	lsl     r0, r1, #2
	lsl     r4, r3, #2
	lsl     r2, r0, #3
	lsl     r6, r2, #3
	lsl     r0, r6, #3
	lsl     r2, r3, #4
	lsl     r6, r5, #6
	mov     r1, #0x0
	ldr     r7, [r4, #0x44]
	str     r1, [sp, #0x4]
	bl      Function_223df1c
	cmp     r7, r0
	bge     branch_224ff80
	mov     r5, r4
	add     r5, #0x44
.thumb
branch_224ff22: @ 224ff22 :thumb
	mov     r0, #0xc0
	mul     r0, r7
	mov     r1, #0xb7
	add     r0, r4, r0
	lsl     r1, r1, #6
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x20c] @ 0x225013c, (=#0x200400c0)
	tst     r1, r2
	bne     branch_224ff68
	ldr     r1, [pc, #0x208] @ 0x2250140, (=#0x2dc4)
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x200] @ 0x225013c, (=#0x200400c0)
	tst     r1, r2
	beq     branch_224ff68
	ldr     r1, [pc, #0x200] @ 0x2250140, (=#0x2dc4)
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x200] @ 0x2250144, (=#0xdffbff3f)
	and     r2, r1
	ldr     r1, [pc, #0x1f8] @ 0x2250140, (=#0x2dc4)
	str     r2, [r0, r1]
	ldr     r2, [pc, #0x1fc] @ 0x2250148, (=#0x11f)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x46
	ldr     r1, [r4, #0x44]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_224ff68: @ 224ff68 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_224fff0
	ldr     r7, [r4, #0x44]
	mov     r0, r6
	bl      Function_223df1c
	cmp     r7, r0
	blt     branch_224ff22
.thumb
branch_224ff80: @ 224ff80 :thumb
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x40]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	ldr     r2, [r4, #0x8]
	mov     r0, r6
	bl      Function_2257808
	cmp     r0, #0x1
	beq     branch_224fff0
	mov     r0, r6
	mov     r1, r4
	bl      Function_2256414
	mov     r2, r0
	beq     branch_224ffbe
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x224ffbe

.thumb
branch_224ffbe: @ 224ffbe :thumb
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x40]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	ldr     r2, [r4, #0x64]
	mov     r0, r6
	bl      Function_22579a4
	cmp     r0, #0x1
	beq     branch_224fff0
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	ldr     r2, [r4, #0x6c]
	cmp     r2, #0xff
	beq     branch_224fff2
	mov     r0, r6
	mov     r1, r4
	bl      Function_22579a4
	cmp     r0, #0x1
	bne     branch_224fff2
.thumb
branch_224fff0: @ 224fff0 :thumb
	b       branch_2250138
@ 0x224fff2

.thumb
branch_224fff2: @ 224fff2 :thumb
	ldr     r0, [r4, #0x40]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	mov     r0, r6
	add     r2, sp, #0xc
	bl      Function_22588bc
	cmp     r0, #0x1
	bne     branch_225001c
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225001c

.thumb
branch_225001c: @ 225001c :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_225002c
	mov     r2, #0x0
	b       branch_2250040
@ 0x225002c

.thumb
branch_225002c: @ 225002c :thumb
	ldr     r0, [pc, #0x11c] @ 0x225014c, (=#0x2160)
	ldr     r2, [r4, r0]
	cmp     r2, #0x0
	bne     branch_2250040
	ldr     r0, [pc, #0x118] @ 0x2250150, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x114] @ 0x2250154, (=#0x3e2)
	ldrb    r2, [r1, r0]
.thumb
branch_2250040: @ 2250040 :thumb
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	ldr     r3, [r4, #0x6c]
	cmp     r3, #0xff
	beq     branch_22500b0
	mov     r0, #0xc0
	mov     r5, r3
	mul     r5, r0
	ldr     r0, [pc, #0x104] @ 0x2250158, (=#0x2dac)
	add     r1, r4, r5
	ldr     r1, [r1, r0]
	mov     r0, #0x20
	tst     r1, r0
	beq     branch_22500b0
	ldr     r1, [pc, #0xfc] @ 0x225015c, (=#0x216c)
	lsl     r0, r0, #9
	ldr     r1, [r4, r1]
	tst     r0, r1
	bne     branch_22500b0
	ldr     r0, [r4, #0x64]
	cmp     r3, r0
	beq     branch_22500b0
	mov     r0, #0x1c
	mul     r0, r3
	add     r7, r4, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r1, [r7, r0]
	cmp     r1, #0x0
	bne     branch_2250086
	add     r0, #0x8
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_22500b0
.thumb
branch_2250086: @ 2250086 :thumb
	ldr     r0, [pc, #0xd8] @ 0x2250160, (=#0x2d8c)
	add     r1, r4, r5
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22500b0
	cmp     r2, #0xa
	bne     branch_22500b0
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r3, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1d
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x22500b0

.thumb
branch_22500b0: @ 22500b0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r7, [r4, #0x44]
	mov     r0, r6
	bl      Function_223df1c
	cmp     r7, r0
	bge     branch_225011e
	mov     r5, r4
	add     r5, #0x44
.thumb
branch_22500c4: @ 22500c4 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2250164, (=#0x21ec)
	add     r1, r4, r7
	ldrb    r7, [r1, r0]
	mov     r0, r7
	bl      Function_20787cc
	ldr     r1, [pc, #0x94] @ 0x2250168, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	ldr     r0, [r5, #0x0]
	beq     branch_22500e0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2250112
@ 0x22500e0

.thumb
branch_22500e0: @ 22500e0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	add     r3, sp, #0x8
	bl      Function_2258104
	cmp     r0, #0x1
	bne     branch_2250112
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r7, [r4, r0]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_225011e
@ 0x2250112

.thumb
branch_2250112: @ 2250112 :thumb
	ldr     r7, [r4, #0x44]
	mov     r0, r6
	bl      Function_223df1c
	cmp     r7, r0
	blt     branch_22500c4
.thumb
branch_225011e: @ 225011e :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_225012e
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [r4, #0x44]
.thumb
branch_225012e: @ 225012e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x40]
	str     r0, [r4, #0x44]
	mov     r0, #0x1f
	str     r0, [r4, #0x8]
.thumb
branch_2250138: @ 2250138 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225013c

.word 0x200400c0 @ 0x225013c
.word 0x2dc4 @ 0x2250140
.word 0xdffbff3f @ 0x2250144
.word 0x11f @ 0x2250148
.word 0x2160 @ 0x225014c
.word 0x3044 @ 0x2250150
.word 0x3e2 @ 0x2250154
.word 0x2dac @ 0x2250158
.word 0x216c @ 0x225015c
.word 0x2d8c @ 0x2250160
.word 0x21ec @ 0x2250164
.word 0x3108 @ 0x2250168
.thumb
Function_225016c: @ 225016c :thumb
	bx      lr
@ 0x225016e


.align 2, 0


.thumb
Function_2250170: @ 2250170 :thumb
	push    {r3-r7,lr}
	ldr     r6, [pc, #0xe8] @ 0x225025c, (=#0x217d)
	mov     r4, r1
	ldrb    r2, [r4, r6]
	str     r0, [sp, #0x0]
	cmp     r2, #0x0
	beq     branch_2250256
	ldr     r3, [r4, #0x74]
	mov     r12, r3
	cmp     r3, #0xff
	bne     branch_2250208
	ldr     r3, [r4, #0x64]
	mov     r7, #0xc0
	mov     r5, r3
	mul     r5, r7
	ldr     r3, [pc, #0xd0] @ 0x2250260, (=#0x2dac)
	add     r5, r4, r5
	ldr     r5, [r5, r3]
	mov     r3, #0x7
	tst     r3, r5
	bne     branch_2250208
	mov     r3, r6
	sub     r3, #0x11
	ldr     r5, [r4, r3]
	mov     r3, #0x1
	lsl     r3, r3, #14
	tst     r3, r5
	bne     branch_2250208
	.hword  0x1e72 @ sub r2, r6, #0x1
	ldrb    r2, [r4, r2]
	.hword  0x1e53 @ sub r3, r2, #0x1
	.hword  0x1e72 @ sub r2, r6, #0x1
	strb    r3, [r4, r2]
	ldrb    r2, [r4, r2]
	cmp     r2, #0x0
	beq     branch_22501ee
	mov     r3, #0x1
	add     r2, r6, #0x3
	str     r3, [r4, r2]
	bl      Function_2255f94
	mov     r1, r6
	sub     r1, #0x41
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x98] @ 0x2250264, (=#0xffffbfff)
	and     r0, r2
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x4c
	ldr     r0, [r4, r0]
	add     r1, #0x48
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x8c] @ 0x2250268, (=#0x3044)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x17
	str     r0, [r4, #0xc]
	b       branch_225024e
@ 0x22501ee

.thumb
branch_22501ee: @ 22501ee :thumb
	ldrb    r0, [r4, r6]
	add     r7, #0x70
	mov     r1, #0x1
	str     r0, [r4, r7]
	mov     r0, r4
	mov     r2, #0x11
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x21
	str     r0, [r4, #0xc]
	b       branch_225024e
@ 0x2250208

.thumb
branch_2250208: @ 2250208 :thumb
	mov     r0, r12
	cmp     r0, #0xff
	bne     branch_2250222
	ldr     r0, [r4, #0x64]
	mov     r1, #0xc0
	mov     r3, r0
	mul     r3, r1
	ldr     r0, [pc, #0x48] @ 0x2250260, (=#0x2dac)
	add     r3, r4, r3
	ldr     r3, [r3, r0]
	mov     r0, #0x7
	tst     r0, r3
	beq     branch_2250232
.thumb
branch_2250222: @ 2250222 :thumb
	ldr     r0, [pc, #0x48] @ 0x225026c, (=#0x217c)
	ldrb    r0, [r4, r0]
	sub     r0, r2, r0
	add     r1, r0, #0x1
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_225023c
@ 0x2250232

.thumb
branch_2250232: @ 2250232 :thumb
	ldr     r0, [pc, #0x38] @ 0x225026c, (=#0x217c)
	add     r1, #0x70
	ldrb    r0, [r4, r0]
	sub     r0, r2, r0
	str     r0, [r4, r1]
.thumb
branch_225023c: @ 225023c :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x11
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x21
	str     r0, [r4, #0xc]
.thumb
branch_225024e: @ 225024e :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2266aa0
	pop     {r3-r7,pc}
@ 0x2250256

.thumb
branch_2250256: @ 2250256 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225025c

.word 0x217d @ 0x225025c
.word 0x2dac @ 0x2250260
.word 0xffffbfff @ 0x2250264
.word 0x3044 @ 0x2250268
.word 0x217c @ 0x225026c
.thumb
Function_2250270: @ 2250270 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x2250294, (=#0x213c)
	ldr     r2, [r1, r0]
	mov     r0, #0xf
	lsl     r0, r0, #24
	tst     r0, r2
	beq     branch_225028c
	mov     r0, r1
	mov     r1, #0x21
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2250ef4
	pop     {r3,pc}
@ 0x225028c

.thumb
branch_225028c: @ 225028c :thumb
	mov     r0, #0x22
	str     r0, [r1, #0x8]
	pop     {r3,pc}
@ 0x2250292


.align 2


.word 0x213c @ 0x2250294
.thumb
Function_2250298: @ 2250298 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x85
	lsl     r1, r1, #6
	mov     r5, r0
	ldr     r2, [r4, r1]
	mov     r0, #0x8
	tst     r0, r2
	beq     branch_22502bc
	mov     r0, #0x8
	bic     r2, r0
	str     r2, [r4, r1]
	ldr     r0, [r4, #0x64]
	str     r0, [r4, #0x6c]
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x64]
.thumb
branch_22502bc: @ 22502bc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250ff4
	ldr     r0, [pc, #0x154] @ 0x225041c, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x150] @ 0x2250420, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x4
	bne     branch_2250388
	ldr     r0, [pc, #0x14c] @ 0x2250424, (=#0x213c)
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2250388
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [pc, #0x140] @ 0x2250428, (=#0x217e)
	ldrb    r2, [r4, r1]
	cmp     r2, r0
	bge     branch_2250388
	mov     r2, #0xd
	add     r0, r1, #0x6
	str     r2, [r4, r0]
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_223df14
	bl      Function_2263ae4
	mov     r1, #0x1
	mov     r7, r0
	and     r7, r1
.thumb
branch_225030a: @ 225030a :thumb
	ldr     r1, [pc, #0x11c] @ 0x2250428, (=#0x217e)
	ldr     r0, [pc, #0x118] @ 0x2250428, (=#0x217e)
	ldrb    r1, [r4, r1]
	ldrb    r0, [r4, r0]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x110] @ 0x2250428, (=#0x217e)
	strb    r2, [r4, r1]
	add     r1, r4, r0
	ldr     r0, [pc, #0x110] @ 0x225042c, (=#0x21ec)
	ldrb    r6, [r1, r0]
	mov     r0, r6
	bl      Function_20787cc
	ldr     r1, [pc, #0x108] @ 0x2250430, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	bne     branch_2250372
	mov     r0, #0xc0
	mul     r0, r6
	add     r1, r4, r0
	ldr     r0, [pc, #0x100] @ 0x2250434, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2250372
	mov     r0, r5
	mov     r1, r6
	bl      Function_223df14
	str     r0, [sp, #0x0]
	cmp     r7, #0x0
	beq     branch_2250352
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2250362
.thumb
branch_2250352: @ 2250352 :thumb
	cmp     r7, #0x0
	bne     branch_2250372
	ldr     r0, [sp, #0x0]
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2250372
.thumb
branch_2250362: @ 2250362 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255f94
	str     r6, [r4, #0x6c]
	mov     r0, #0x16
	str     r0, [r4, #0x8]
	b       branch_2250380
@ 0x2250372

.thumb
branch_2250372: @ 2250372 :thumb
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [pc, #0xac] @ 0x2250428, (=#0x217e)
	ldrb    r1, [r4, r1]
	cmp     r1, r0
	blt     branch_225030a
.thumb
branch_2250380: @ 2250380 :thumb
	mov     r0, r5
	bl      Function_2266aa0
	pop     {r3-r7,pc}
@ 0x2250388

.thumb
branch_2250388: @ 2250388 :thumb
	ldr     r0, [pc, #0x90] @ 0x225041c, (=#0x3044)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x8c] @ 0x2250420, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x8
	bne     branch_2250416
	ldr     r0, [pc, #0x88] @ 0x2250424, (=#0x213c)
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2250416
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [pc, #0x7c] @ 0x2250428, (=#0x217e)
	ldrb    r2, [r4, r1]
	cmp     r2, r0
	bge     branch_2250416
	mov     r2, #0xd
	add     r0, r1, #0x6
	str     r2, [r4, r0]
	mov     r0, r5
	bl      Function_223df1c
	ldr     r7, [pc, #0x68] @ 0x2250428, (=#0x217e)
.thumb
branch_22503be: @ 22503be :thumb
	ldr     r0, [pc, #0x68] @ 0x2250428, (=#0x217e)
	ldrb    r1, [r4, r0]
	ldrb    r0, [r4, r7]
	add     r1, r4, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r7]
	ldr     r0, [pc, #0x60] @ 0x225042c, (=#0x21ec)
	ldrb    r6, [r1, r0]
	mov     r0, r6
	bl      Function_20787cc
	ldr     r1, [pc, #0x58] @ 0x2250430, (=#0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	bne     branch_2250400
	mov     r0, #0xc0
	mul     r0, r6
	add     r1, r4, r0
	ldr     r0, [pc, #0x50] @ 0x2250434, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2250400
	ldr     r0, [r4, #0x64]
	cmp     r6, r0
	beq     branch_2250400
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255f94
	str     r6, [r4, #0x6c]
	mov     r0, #0x16
	str     r0, [r4, #0x8]
	b       branch_225040e
@ 0x2250400

.thumb
branch_2250400: @ 2250400 :thumb
	mov     r0, r5
	bl      Function_223df1c
	ldr     r1, [pc, #0x20] @ 0x2250428, (=#0x217e)
	ldrb    r1, [r4, r1]
	cmp     r1, r0
	blt     branch_22503be
.thumb
branch_225040e: @ 225040e :thumb
	mov     r0, r5
	bl      Function_2266aa0
	pop     {r3-r7,pc}
@ 0x2250416

.thumb
branch_2250416: @ 2250416 :thumb
	mov     r0, #0x23
	str     r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225041c

.word 0x3044 @ 0x225041c
.word 0x3e6 @ 0x2250420
.word 0x213c @ 0x2250424
.word 0x217e @ 0x2250428
.word 0x21ec @ 0x225042c
.word 0x3108 @ 0x2250430
.word 0x2d8c @ 0x2250434
.thumb
Function_2250438: @ 2250438 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x38] @ 0x2250474, (=#0x213c)
	mov     r4, r1
	ldr     r1, [r4, r0]
	mov     r0, #0xf
	lsl     r0, r0, #28
	and     r0, r1
	beq     branch_225046e
	lsr     r0, r0, #28
	bl      Function_20787ec
	str     r0, [r4, #0x74]
	ldr     r1, [pc, #0x20] @ 0x2250474, (=#0x213c)
	ldr     r0, [pc, #0x24] @ 0x2250478, (=#0xfffffff)
	ldr     r2, [r4, r1]
	and     r0, r2
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x20] @ 0x225047c, (=#0x115)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x24
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x225046e

.thumb
branch_225046e: @ 225046e :thumb
	mov     r0, #0x24
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2250474

.word 0x213c @ 0x2250474
.word 0xfffffff @ 0x2250478
.word 0x115 @ 0x225047c
.thumb
Function_2250480: @ 2250480 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_225143c
	cmp     r0, #0x1
	beq     branch_2250490
	mov     r0, #0x26
	str     r0, [r4, #0x8]
.thumb
branch_2250490: @ 2250490 :thumb
	pop     {r4,pc}
@ 0x2250492


.align 2, 0


.thumb
Function_2250494: @ 2250494 :thumb
	bx      lr
@ 0x2250496


.align 2, 0


.thumb
Function_2250498: @ 2250498 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x64]
	mov     r5, r0
	mov     r0, r4
	bl      Function_2258ab8
	ldr     r1, [pc, #0x104] @ 0x22505ac, (=#0x213c)
	lsl     r0, r0, #24
	ldr     r3, [r4, r1]
	mov     r2, #0x20
	lsr     r0, r0, #24
	tst     r2, r3
	bne     branch_22504be
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r2, [r4, r1]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_2250512
.thumb
branch_22504be: @ 22504be :thumb
	cmp     r0, #0x37
	beq     branch_22504ca
	cmp     r0, #0x73
	beq     branch_22504ca
	cmp     r0, #0x7d
	bne     branch_2250504
.thumb
branch_22504ca: @ 22504ca :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0xa5
	beq     branch_2250512
	ldr     r1, [pc, #0xd8] @ 0x22505b0, (=#0x171)
	cmp     r0, r1
	bne     branch_22504e6
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	mov     r1, #0x10
	tst     r1, r2
	bne     branch_2250512
.thumb
branch_22504e6: @ 22504e6 :thumb
	cmp     r0, #0xe2
	bne     branch_22504f6
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	mov     r1, #0x40
	tst     r1, r2
	bne     branch_2250512
.thumb
branch_22504f6: @ 22504f6 :thumb
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0xb4] @ 0x22505b4, (=#0x2df8)
	strh    r0, [r2, r1]
	b       branch_2250512
@ 0x2250504

.thumb
branch_2250504: @ 2250504 :thumb
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0xa4] @ 0x22505b4, (=#0x2df8)
	mov     r0, #0x0
	strh    r0, [r2, r1]
.thumb
branch_2250512: @ 2250512 :thumb
	ldr     r0, [pc, #0x98] @ 0x22505ac, (=#0x213c)
	mov     r1, #0x1
	ldr     r2, [r4, r0]
	lsl     r1, r1, #20
	tst     r1, r2
	bne     branch_225057a
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r4, r0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_2250540
	ldr     r2, [r4, #0x64]
	ldr     r1, [pc, #0x8c] @ 0x22505b8, (=#0x3044)
	lsl     r2, r2, #1
	add     r3, r4, r2
	mov     r2, r1
	ldr     r0, [r4, r1]
	add     r2, #0x18
	strh    r0, [r3, r2]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r2, [r4, r0]
	add     r0, r1, #0x4
	b       branch_225054e
@ 0x2250540

.thumb
branch_2250540: @ 2250540 :thumb
	ldr     r0, [r4, #0x64]
	mov     r2, #0x0
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x70] @ 0x22505bc, (=#0x305c)
	strh    r2, [r1, r0]
	sub     r0, #0x14
.thumb
branch_225054e: @ 225054e :thumb
	str     r2, [r4, r0]
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_225056e
	mov     r0, #0xc1
	ldr     r1, [r4, #0x64]
	lsl     r0, r0, #6
	ldr     r2, [r4, r0]
	lsl     r1, r1, #1
	add     r1, r4, r1
	add     r0, #0x3c
	strh    r2, [r1, r0]
	b       branch_225057a
@ 0x225056e

.thumb
branch_225056e: @ 225056e :thumb
	ldr     r0, [r4, #0x64]
	mov     r2, #0x0
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x48] @ 0x22505c0, (=#0x307c)
	strh    r2, [r1, r0]
.thumb
branch_225057a: @ 225057a :thumb
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_2250596
	mov     r0, #0xc1
	ldr     r1, [r4, #0x64]
	lsl     r0, r0, #6
	ldr     r2, [r4, r0]
	lsl     r1, r1, #1
	add     r1, r4, r1
	add     r0, #0x6c
	strh    r2, [r1, r0]
.thumb
branch_2250596: @ 2250596 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250ff4
	mov     r0, r5
	mov     r1, r4
	bl      Function_225991c
	mov     r0, #0x27
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x22505ac

.word 0x213c @ 0x22505ac
.word 0x171 @ 0x22505b0
.word 0x2df8 @ 0x22505b4
.word 0x3044 @ 0x22505b8
.word 0x305c @ 0x22505bc
.word 0x307c @ 0x22505c0
.thumb
Function_22505c4: @ 22505c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_223df0c
	mov     r1, #0x22
	lsl     r1, r1, #4
	tst     r0, r1
	bne     branch_2250646
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2257628
	cmp     r0, #0x1
	beq     branch_225069c
	ldr     r2, [r4, #0x6c]
	cmp     r2, #0xff
	beq     branch_22505fa
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2257628
	cmp     r0, #0x1
	beq     branch_225069c
.thumb
branch_22505fa: @ 22505fa :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r1
	bl      Function_2250f98
	cmp     r0, #0x1
	beq     branch_225069c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250a48
	cmp     r0, #0x1
	beq     branch_225069c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2256414
	mov     r2, r0
	beq     branch_2250632
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x2250632

.thumb
branch_2250632: @ 2250632 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22513b0
	cmp     r0, #0x1
	beq     branch_225069c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250e8c
.thumb
branch_2250646: @ 2250646 :thumb
	mov     r1, r4
	add     r1, #0xec
	ldr     r1, [r1, #0x0]
	mov     r0, #0x27
	add     r2, r4, r1
	ldr     r1, [pc, #0x4c] @ 0x22506a0, (=#0x21e8)
	ldrb    r2, [r2, r1]
	sub     r1, #0x40
	lsl     r2, r2, #4
	add     r2, r4, r2
	str     r0, [r2, r1]
	ldr     r1, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r1
	add     r1, r4, r0
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	beq     branch_2250684
	mov     r0, r5
	mov     r1, r4
	bl      Function_225b148
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255fbc
	mov     r1, #0x0
	b       branch_225068c
@ 0x2250684

.thumb
branch_2250684: @ 2250684 :thumb
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
.thumb
branch_225068c: @ 225068c :thumb
	mov     r0, r4
	add     r0, #0xec
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_22541c4
	mov     r0, #0x8
	str     r0, [r4, #0x8]
.thumb
branch_225069c: @ 225069c :thumb
	pop     {r3-r5,pc}
@ 0x225069e


.align 2


.word 0x21e8 @ 0x22506a0
.thumb
Function_22506a4: @ 22506a4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2250ef4
	cmp     r0, #0x1
	beq     branch_22506bc
	mov     r0, #0x27
	str     r0, [r4, #0x8]
.thumb
branch_22506bc: @ 22506bc :thumb
	pop     {r4,pc}
@ 0x22506be


.align 2, 0


.thumb
Function_22506c0: @ 22506c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_223f438
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_22506d6
	mov     r0, #0x2b
	str     r0, [r4, #0x8]
	b       branch_225073e
@ 0x22506d6

.thumb
branch_22506d6: @ 22506d6 :thumb
	mov     r0, r5
	bl      Function_223f438
	cmp     r0, #0x2
	beq     branch_22506ea
	mov     r0, r5
	bl      Function_223f438
	cmp     r0, #0x3
	bne     branch_22506fe
.thumb
branch_22506ea: @ 22506ea :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x5
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	b       branch_225073e
@ 0x22506fe

.thumb
branch_22506fe: @ 22506fe :thumb
	mov     r0, r5
	bl      Function_223f438
	cmp     r0, #0x1
	bne     branch_225071c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	b       branch_225073e
@ 0x225071c

.thumb
branch_225071c: @ 225071c :thumb
	mov     r0, r5
	bl      Function_223f438
	cmp     r0, #0x4
	bne     branch_2250730
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	b       branch_225073e
@ 0x2250730

.thumb
branch_2250730: @ 2250730 :thumb
	mov     r0, r5
	bl      Function_223f438
	cmp     r0, #0x5
	bne     branch_225073e
	mov     r0, #0x2b
	str     r0, [r4, #0x8]
.thumb
branch_225073e: @ 225073e :thumb
	ldr     r0, [pc, #0x8] @ 0x2250748, (=#0x311f)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2250746


.align 2


.word 0x311f @ 0x2250748
.thumb
Function_225074c: @ 225074c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225075c
	mov     r0, #0x2b
	str     r0, [r4, #0x8]
.thumb
branch_225075c: @ 225075c :thumb
	pop     {r4,pc}
@ 0x225075e


.align 2, 0


.thumb
Function_2250760: @ 2250760 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_223df0c
	mov     r1, #0x4
	mov     r4, r0
	and     r4, r1
	bne     branch_2250786
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_223df20
	mov     r6, r0
	bl      Function_20776b0
	mov     r0, r6
	bl      Function_207782c
.thumb
branch_2250786: @ 2250786 :thumb
	cmp     r4, #0x0
	beq     branch_2250790
	mov     r0, #0x16
	bl      Function_20360dc
.thumb
branch_2250790: @ 2250790 :thumb
	mov     r0, #0x2c
	str     r0, [r5, #0x8]
	pop     {r4-r6,pc}
@ 0x2250796


.align 2, 0


.thumb
Function_2250798: @ 2250798 :thumb
	bx      lr
@ 0x225079a


.align 2, 0


.thumb
Function_225079c: @ 225079c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x30]
	bl      Function_223df1c
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	bgt     branch_22507c8
	b       branch_22509ba
@ 0x22507c8

.thumb
branch_22507c8: @ 22507c8 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x2
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	and     r0, r1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x18
	and     r0, r1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x10
	and     r0, r1
	str     r0, [sp, #0xc]
.thumb
branch_22507e6: @ 22507e6 :thumb
	mov     r1, #0x4f
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	mov     r0, #0x1
	bic     r2, r0
	ldr     r0, [sp, #0x1c]
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2250802
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2250814
.thumb
branch_2250802: @ 2250802 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_22508fa
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_22508fa
.thumb
branch_2250814: @ 2250814 :thumb
	ldr     r3, [pc, #0x220] @ 0x2250a38, (=#0x2d8c)
	ldr     r0, [sp, #0x18]
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	bne     branch_225083c
	ldr     r1, [sp, #0x2c]
	mov     r2, #0x2
	mov     r4, r1
	eor     r4, r2
	mov     r1, #0xc0
	mov     r5, r4
	mul     r5, r1
	ldr     r1, [sp, #0x4]
	add     r1, r1, r5
	ldr     r1, [r1, r3]
	cmp     r1, #0x0
	bne     branch_225083c
	ldr     r1, [sp, #0x2c]
	tst     r1, r2
	bne     branch_2250840
.thumb
branch_225083c: @ 225083c :thumb
	cmp     r0, #0x0
	beq     branch_2250842
.thumb
branch_2250840: @ 2250840 :thumb
	b       branch_22509a0
@ 0x2250842

.thumb
branch_2250842: @ 2250842 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	mov     r7, #0x0
	bl      Function_223df20
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	bl      Function_223df14
	mov     r0, r6
	mov     r5, r7
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_22508ba
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x2
	eor     r1, r0
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0x8]
.thumb
branch_225086e: @ 225086e :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22508ae
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x1ac] @ 0x2250a3c, (=#0x1ee)
	cmp     r0, r1
	beq     branch_22508ae
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22508ae
	ldr     r2, [sp, #0x8]
	ldr     r1, [pc, #0x198] @ 0x2250a40, (=#0x219c)
	ldrb    r1, [r2, r1]
	cmp     r5, r1
	beq     branch_22508ae
	add     r7, r7, r0
.thumb
branch_22508ae: @ 22508ae :thumb
	mov     r0, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_207a0f8
	cmp     r5, r0
	blt     branch_225086e
.thumb
branch_22508ba: @ 22508ba :thumb
	cmp     r7, #0x0
	bne     branch_22508de
	ldr     r0, [sp, #0x2c]
	bl      Function_20787cc
	ldr     r2, [pc, #0x17c] @ 0x2250a44, (=#0x3108)
	ldr     r1, [sp, #0x4]
	ldrb    r1, [r1, r2]
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, r2]
	mov     r1, r0
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x6
	add     r1, r1, r0
	ldr     r0, [pc, #0x164] @ 0x2250a40, (=#0x219c)
	strb    r2, [r1, r0]
	b       branch_22509a0
@ 0x22508de

.thumb
branch_22508de: @ 22508de :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0xc]
	mov     r1, #0x15
	str     r1, [r0, #0x8]
	mov     r1, #0x4f
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	mov     r0, #0x1
	orr     r2, r0
	ldr     r0, [sp, #0x1c]
	str     r2, [r0, r1]
	b       branch_22509a0
@ 0x22508fa

.thumb
branch_22508fa: @ 22508fa :thumb
	ldr     r1, [pc, #0x13c] @ 0x2250a38, (=#0x2d8c)
	ldr     r0, [sp, #0x18]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_22509a0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	mov     r7, #0x0
	bl      Function_223df20
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	bl      Function_223df14
	mov     r0, r6
	mov     r5, r7
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2250962
.thumb
branch_2250924: @ 2250924 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2250956
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xf4] @ 0x2250a3c, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2250956
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r7, r7, r0
.thumb
branch_2250956: @ 2250956 :thumb
	mov     r0, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_207a0f8
	cmp     r5, r0
	blt     branch_2250924
.thumb
branch_2250962: @ 2250962 :thumb
	cmp     r7, #0x0
	bne     branch_2250986
	ldr     r0, [sp, #0x2c]
	bl      Function_20787cc
	ldr     r2, [pc, #0xd4] @ 0x2250a44, (=#0x3108)
	ldr     r1, [sp, #0x4]
	ldrb    r1, [r1, r2]
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, r2]
	mov     r1, r0
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x6
	add     r1, r1, r0
	ldr     r0, [pc, #0xbc] @ 0x2250a40, (=#0x219c)
	strb    r2, [r1, r0]
	b       branch_22509a0
@ 0x2250986

.thumb
branch_2250986: @ 2250986 :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0xc]
	mov     r1, #0x15
	str     r1, [r0, #0x8]
	mov     r1, #0x4f
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	mov     r0, #0x1
	orr     r2, r0
	ldr     r0, [sp, #0x1c]
	str     r2, [r0, r1]
.thumb
branch_22509a0: @ 22509a0 :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r0, #0xc0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x2c]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x28]
	str     r1, [sp, #0x2c]
	cmp     r1, r0
	bge     branch_22509ba
	b       branch_22507e6
@ 0x22509ba

.thumb
branch_22509ba: @ 22509ba :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x15
	bne     branch_2250a30
	ldr     r0, [sp, #0x24]
	mov     r1, #0x86
	tst     r0, r1
	bne     branch_2250a22
	ldr     r0, [sp, #0x0]
	bl      Function_223ee18
	cmp     r0, #0x0
	bne     branch_2250a22
	mov     r1, #0x4f
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r2, #0x1
	tst     r0, r2
	beq     branch_22509ec
	ldr     r0, [sp, #0x4]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r0, [r0, r1]
	tst     r0, r2
	bne     branch_2250a22
.thumb
branch_22509ec: @ 22509ec :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, #0x0
	bl      Function_2255b10
	cmp     r0, #0x0
	beq     branch_2250a22
	mov     r1, #0x4f
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r2, #0x1
	tst     r0, r2
	beq     branch_2250a10
	mov     r2, #0x0
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r0, [sp, #0x4]
	b       branch_2250a14
@ 0x2250a10

.thumb
branch_2250a10: @ 2250a10 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1f09 @ sub r1, r1, #0x4
.thumb
branch_2250a14: @ 2250a14 :thumb
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, #0xe7
	bl      Function_2251e1c
	b       branch_2250a2c
@ 0x2250a22

.thumb
branch_2250a22: @ 2250a22 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, #0xa
	bl      Function_2251e1c
.thumb
branch_2250a2c: @ 2250a2c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x30]
.thumb
branch_2250a30: @ 2250a30 :thumb
	ldr     r0, [sp, #0x30]
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2250a36


.align 2


.word 0x2d8c @ 0x2250a38
.word 0x1ee @ 0x2250a3c
.word 0x219c @ 0x2250a40
.word 0x3108 @ 0x2250a44
.thumb
Function_2250a48: @ 2250a48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	bl      Function_223df1c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	bgt     branch_2250a6c
	b       branch_2250cc6
@ 0x2250a6c

.thumb
branch_2250a6c: @ 2250a6c :thumb
	ldr     r0, [sp, #0x20]
	mov     r1, #0x8
	and     r0, r1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x10
	and     r0, r1
	str     r0, [sp, #0x8]
.thumb
branch_2250a7c: @ 2250a7c :thumb
	ldr     r0, [sp, #0x20]
	sub     r0, #0x4a
	cmp     r0, #0x1
	bhi     branch_2250b16
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_2250b16
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223e1f8
	cmp     r0, #0x2
	bne     branch_2250b38
	ldr     r1, [pc, #0x2f4] @ 0x2250d94, (=#0x2d8c)
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2250b38
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	mov     r7, #0x0
	bl      Function_223df20
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223df14
	mov     r0, r6
	mov     r4, r7
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2250b04
.thumb
branch_2250ac6: @ 2250ac6 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2250af8
	mov     r0, r5
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x2b0] @ 0x2250d98, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2250af8
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r7, r7, r0
.thumb
branch_2250af8: @ 2250af8 :thumb
	mov     r0, r6
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_2250ac6
.thumb
branch_2250b04: @ 2250b04 :thumb
	cmp     r7, #0x0
	bne     branch_2250b38
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x2
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	b       branch_2250cb2
@ 0x2250b16

.thumb
branch_2250b16: @ 2250b16 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2250b2e
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2250c20
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_2250c20
.thumb
branch_2250b2e: @ 2250b2e :thumb
	ldr     r1, [pc, #0x264] @ 0x2250d94, (=#0x2d8c)
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2250b3a
.thumb
branch_2250b38: @ 2250b38 :thumb
	b       branch_2250cb2
@ 0x2250b3a

.thumb
branch_2250b3a: @ 2250b3a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	mov     r4, #0x0
	bl      Function_223df20
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223e258
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223df20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223df14
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r5, r4
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2250bac
.thumb
branch_2250b6e: @ 2250b6e :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2250ba0
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x208] @ 0x2250d98, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2250ba0
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r4, r4, r0
.thumb
branch_2250ba0: @ 2250ba0 :thumb
	mov     r0, r7
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_207a0f8
	cmp     r5, r0
	blt     branch_2250b6e
.thumb
branch_2250bac: @ 2250bac :thumb
	ldr     r0, [sp, #0x18]
	mov     r5, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2250bf6
	ldr     r7, [pc, #0x1dc] @ 0x2250d98, (=#0x1ee)
.thumb
branch_2250bba: @ 2250bba :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2250bea
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, r7
	beq     branch_2250bea
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r4, r4, r0
.thumb
branch_2250bea: @ 2250bea :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_207a0f8
	cmp     r5, r0
	blt     branch_2250bba
.thumb
branch_2250bf6: @ 2250bf6 :thumb
	cmp     r4, #0x0
	bne     branch_2250cb2
	ldr     r0, [sp, #0x14]
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2250c12
	ldr     r0, [sp, #0x1c]
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	b       branch_2250cb2
@ 0x2250c12

.thumb
branch_2250c12: @ 2250c12 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x2
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	b       branch_2250cb2
@ 0x2250c20

.thumb
branch_2250c20: @ 2250c20 :thumb
	ldr     r1, [pc, #0x170] @ 0x2250d94, (=#0x2d8c)
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2250cb2
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	mov     r7, #0x0
	bl      Function_223df20
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	bl      Function_223df14
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r4, r7
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2250c8a
.thumb
branch_2250c4c: @ 2250c4c :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2250c7e
	mov     r0, r5
	mov     r1, #0xae
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x128] @ 0x2250d98, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2250c7e
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	add     r7, r7, r0
.thumb
branch_2250c7e: @ 2250c7e :thumb
	mov     r0, r6
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_207a0f8
	cmp     r4, r0
	blt     branch_2250c4c
.thumb
branch_2250c8a: @ 2250c8a :thumb
	cmp     r7, #0x0
	bne     branch_2250cb2
	ldr     r0, [sp, #0x10]
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2250ca6
	ldr     r0, [sp, #0x1c]
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	b       branch_2250cb2
@ 0x2250ca6

.thumb
branch_2250ca6: @ 2250ca6 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x2
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
.thumb
branch_2250cb2: @ 2250cb2 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x28]
	cmp     r1, r0
	bge     branch_2250cc6
	b       branch_2250a7c
@ 0x2250cc6

.thumb
branch_2250cc6: @ 2250cc6 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_2250cdc
	ldr     r0, [sp, #0x20]
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2250cdc
	ldr     r0, [sp, #0x20]
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2250cf2
.thumb
branch_2250cdc: @ 2250cdc :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_2250dc4
	ldr     r0, [sp, #0x20]
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_2250dc4
	ldr     r0, [sp, #0x20]
	mov     r1, #0x4
	tst     r0, r1
	bne     branch_2250dc4
.thumb
branch_2250cf2: @ 2250cf2 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_223e120
	ldrb    r0, [r0, #0x1]
	sub     r0, #0x3e
	cmp     r0, #0x28
	bhi     branch_2250d90
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r2, #1
	lsl     r0, r0, #2
	lsl     r0, r2, #1
	lsl     r0, r7, #1
	lsl     r0, r7, #1
	lsl     r0, r7, #1
	lsl     r0, r7, #1
	lsl     r0, r4, #1
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r5, #1
	lsl     r0, r5, #1
	lsl     r0, r2, #1
	lsl     r0, r2, #1
	lsl     r0, r2, #1
	lsl     r0, r2, #1
	lsl     r0, r2, #1
	lsl     r0, r2, #1
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r6, #1
	lsl     r0, r5, #1
	lsl     r0, r5, #1
	lsl     r0, r5, #1
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r0, #2
	lsl     r0, r3, #1
	lsl     r0, r0, #2
	lsl     r0, r3, #1
	lsl     r0, r3, #1
	lsl     r0, r3, #1
	lsl     r0, r3, #1
	ldr     r0, [pc, #0x38] @ 0x2250d9c, (=#0x469)
	bl      Function_200549c
	b       branch_2250dbc
@ 0x2250d68


.incbin "./baserom/overlay/overlay_0016.bin", 0x15c28, 0x2250d90 - 0x2250d68


.thumb
branch_2250d90: @ 2250d90 :thumb
	ldr     r0, [pc, #0x20] @ 0x2250db4, (=#0x468)
	b       branch_2250db8
@ 0x2250d94

.word 0x2d8c @ 0x2250d94
.word 0x1ee @ 0x2250d98
.word 0x469 @ 0x2250d9c

.incbin "./baserom/overlay/overlay_0016.bin", 0x15c60, 0x2250db4 - 0x2250da0


.word 0x468 @ 0x2250db4
.thumb
branch_2250db8: @ 2250db8 :thumb
	bl      Function_200549c
.thumb
branch_2250dbc: @ 2250dbc :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	bl      Function_223f460
.thumb
branch_2250dc4: @ 2250dc4 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2250dd2
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x1c]
	bl      Function_223f444
.thumb
branch_2250dd2: @ 2250dd2 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2250dde
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2250dde

.thumb
branch_2250dde: @ 2250dde :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2250de4


.incbin "./baserom/overlay/overlay_0016.bin", 0x15ca4, 0x2250e8c - 0x2250de4


.thumb
Function_2250e8c: @ 2250e8c :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	bl      Function_223df1c
	mov     r4, r0
	mov     r3, #0x0
	cmp     r4, #0x0
	ble     branch_2250ec6
	ldr     r5, [sp, #0x0]
	mov     r7, r3
	mov     r6, r5
.thumb
branch_2250ea2: @ 2250ea2 :thumb
	ldr     r0, [pc, #0x44] @ 0x2250ee8, (=#0x2db0)
	.hword  0x1c5b @ add r3, r3, #0x1
	ldr     r2, [r6, r0]
	ldr     r0, [pc, #0x40] @ 0x2250eec, (=#0x218c)
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	eor     r0, r1
	mov     r1, r2
	and     r1, r0
	ldr     r0, [pc, #0x30] @ 0x2250ee8, (=#0x2db0)
	str     r1, [r6, r0]
	ldr     r0, [pc, #0x30] @ 0x2250eec, (=#0x218c)
	add     r6, #0xc0
	str     r7, [r5, r0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r3, r4
	blt     branch_2250ea2
.thumb
branch_2250ec6: @ 2250ec6 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0x64]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	ldr     r2, [pc, #0x1c] @ 0x2250ef0, (=#0x3064)
	strh    r0, [r1, r2]
	ldr     r1, [sp, #0x0]
	add     r2, #0x60
	ldr     r1, [r1, #0x64]
	lsl     r3, r1, #1
	ldr     r1, [sp, #0x0]
	add     r1, r1, r3
	strh    r0, [r1, r2]
	pop     {r3-r7,pc}
@ 0x2250ee6


.align 2


.word 0x2db0 @ 0x2250ee8
.word 0x218c @ 0x2250eec
.word 0x3064 @ 0x2250ef0
.thumb
Function_2250ef4: @ 2250ef4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x90] @ 0x2250f8c, (=#0x21ec)
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, r0]
	mov     r6, r2
	str     r3, [sp, #0x4]
	mov     r4, #0x0
	bl      Function_20787cc
	ldr     r1, [pc, #0x84] @ 0x2250f90, (=#0x213c)
	lsl     r0, r0, #24
	ldr     r2, [r5, r1]
	mov     r1, #0xf
	lsl     r1, r1, #24
	tst     r1, r2
	beq     branch_2250f82
	mov     r1, r2
	tst     r1, r0
	bne     branch_2250f36
	ldr     r7, [pc, #0x6c] @ 0x2250f8c, (=#0x21ec)
	mov     r6, r7
	sub     r6, #0xb0
.thumb
branch_2250f24: @ 2250f24 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, r5, r4
	ldrb    r0, [r0, r7]
	bl      Function_20787cc
	ldr     r1, [r5, r6]
	lsl     r0, r0, #24
	tst     r1, r0
	beq     branch_2250f24
.thumb
branch_2250f36: @ 2250f36 :thumb
	ldr     r2, [pc, #0x58] @ 0x2250f90, (=#0x213c)
	mov     r1, #0x0
	mvn     r1, r1
	eor     r1, r0
	ldr     r3, [r5, r2]
	asr     r0, r0, #24
	and     r1, r3
	str     r1, [r5, r2]
	bl      Function_20787ec
	str     r0, [r5, #0x74]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2250f5e
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x6
	bl      Function_2251e1c
	b       branch_2250f68
@ 0x2250f5e

.thumb
branch_2250f5e: @ 2250f5e :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x53
	bl      Function_2251e1c
.thumb
branch_2250f68: @ 2250f68 :thumb
	mov     r0, #0x15
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x27
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x74]
	add     sp, #0x8
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x18] @ 0x2250f94, (=#0x21a8)
	str     r2, [r1, r0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2250f82

.thumb
branch_2250f82: @ 2250f82 :thumb
	str     r6, [r5, #0x8]
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2250f8a


.align 2


.word 0x21ec @ 0x2250f8c
.word 0x213c @ 0x2250f90
.word 0x21a8 @ 0x2250f94
.thumb
Function_2250f98: @ 2250f98 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x85
	lsl     r0, r0, #6
	mov     r4, r1
	ldr     r1, [r5, r0]
	mov     r0, #0xf
	lsl     r0, r0, #28
	tst     r0, r1
	beq     branch_2250fec
	mov     r0, #0x1
	lsl     r0, r0, #28
	mov     r2, r1
	tst     r2, r0
	bne     branch_2250fbe
.thumb
branch_2250fb6: @ 2250fb6 :thumb
	lsl     r0, r0, #1
	mov     r2, r1
	tst     r2, r0
	beq     branch_2250fb6
.thumb
branch_2250fbe: @ 2250fbe :thumb
	mov     r2, #0x85
	lsl     r2, r2, #6
	mov     r1, #0x0
	mvn     r1, r1
	eor     r1, r0
	ldr     r3, [r5, r2]
	asr     r0, r0, #28
	and     r1, r3
	str     r1, [r5, r2]
	bl      Function_20787ec
	mov     r2, #0x45
	str     r0, [r5, #0x74]
	mov     r0, r5
	mov     r1, #0x1
	lsl     r2, r2, #2
	bl      Function_2251e1c
	mov     r0, #0x15
	str     r0, [r5, #0x8]
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250fec

.thumb
branch_2250fec: @ 2250fec :thumb
	str     r2, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250ff2


.align 2, 0


.thumb
Function_2250ff4: @ 2250ff4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_2251008
	mov     r4, #0x0
	b       branch_225101c
@ 0x2251008

.thumb
branch_2251008: @ 2251008 :thumb
	ldr     r0, [pc, #0x1c8] @ 0x22511d4, (=#0x2160)
	ldr     r4, [r5, r0]
	cmp     r4, #0x0
	bne     branch_225101c
	ldr     r0, [pc, #0x1c4] @ 0x22511d8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x1c0] @ 0x22511dc, (=#0x3e2)
	ldrb    r4, [r1, r0]
.thumb
branch_225101c: @ 225101c :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	mov     r6, #0x10
	lsl     r1, r2, #4
	add     r3, r5, r1
	ldr     r1, [pc, #0x1b4] @ 0x22511e0, (=#0x3e9)
	ldrb    r1, [r3, r1]
	tst     r1, r6
	beq     branch_2251066
	ldr     r3, [pc, #0x1b0] @ 0x22511e4, (=#0x213c)
	lsl     r6, r6, #16
	ldr     r1, [r5, r3]
	tst     r1, r6
	bne     branch_2251066
	ldr     r1, [r5, #0x6c]
	cmp     r1, #0xff
	beq     branch_2251066
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r6, [r5, r3]
	mov     r3, #0x4
	tst     r3, r6
	beq     branch_2251066
	lsl     r1, r1, #1
	add     r3, r5, r1
	mov     r1, r0
	add     r1, #0x44
	strh    r2, [r3, r1]
	ldr     r2, [r5, #0x6c]
	ldr     r1, [r5, r0]
	lsl     r2, r2, #3
	add     r3, r5, r2
	ldr     r2, [r5, #0x64]
	add     r0, #0x4c
	lsl     r2, r2, #1
	add     r2, r3, r2
	strh    r1, [r2, r0]
.thumb
branch_2251066: @ 2251066 :thumb
	ldr     r1, [r5, #0x6c]
	cmp     r1, #0xff
	beq     branch_22510b0
	mov     r0, r5
	bl      Function_2258ab8
	ldr     r1, [pc, #0x170] @ 0x22511e4, (=#0x213c)
	lsl     r0, r0, #24
	ldr     r3, [r5, r1]
	mov     r2, #0x20
	lsr     r0, r0, #24
	tst     r2, r3
	bne     branch_225108a
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r2, [r5, r1]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_22510a4
.thumb
branch_225108a: @ 225108a :thumb
	cmp     r0, #0x37
	beq     branch_22510a4
	cmp     r0, #0x73
	beq     branch_22510a4
	cmp     r0, #0x7d
	beq     branch_22510a4
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x148] @ 0x22511e8, (=#0x2df8)
	mov     r2, #0x0
	strh    r2, [r1, r0]
.thumb
branch_22510a4: @ 22510a4 :thumb
	ldr     r0, [pc, #0x13c] @ 0x22511e4, (=#0x213c)
	mov     r1, #0x1
	ldr     r2, [r5, r0]
	lsl     r1, r1, #20
	tst     r1, r2
	beq     branch_22510b2
.thumb
branch_22510b0: @ 22510b0 :thumb
	b       branch_22511d2
@ 0x22510b2

.thumb
branch_22510b2: @ 22510b2 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r5, r0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_22510f0
	ldr     r1, [r5, #0x6c]
	ldr     r0, [pc, #0x118] @ 0x22511d8, (=#0x3044)
	lsl     r1, r1, #1
	add     r2, r5, r1
	mov     r1, r0
	ldr     r3, [r5, r0]
	add     r1, #0x20
	strh    r3, [r2, r1]
	ldr     r1, [r5, #0x6c]
	ldr     r3, [r5, #0x64]
	lsl     r1, r1, #1
	add     r2, r5, r1
	mov     r1, r0
	add     r1, #0x28
	strh    r3, [r2, r1]
	ldr     r1, [r5, #0x6c]
	lsl     r1, r1, #1
	add     r2, r5, r1
	mov     r1, r0
	add     r1, #0x30
	strh    r4, [r2, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r5, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	b       branch_225111a
@ 0x22510f0

.thumb
branch_22510f0: @ 22510f0 :thumb
	ldr     r0, [r5, #0x6c]
	ldr     r3, [pc, #0xf8] @ 0x22511ec, (=#0x3064)
	lsl     r0, r0, #1
	mov     r1, #0x0
	add     r0, r5, r0
	strh    r1, [r0, r3]
	ldr     r2, [r5, #0x6c]
	mov     r0, #0xff
	lsl     r2, r2, #1
	add     r6, r5, r2
	mov     r2, r3
	add     r2, #0x8
	strh    r0, [r6, r2]
	ldr     r0, [r5, #0x6c]
	lsl     r0, r0, #1
	add     r2, r5, r0
	mov     r0, r3
	add     r0, #0x10
	strh    r1, [r2, r0]
	sub     r3, #0x1c
	str     r1, [r5, r3]
.thumb
branch_225111a: @ 225111a :thumb
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	mov     r1, #0x40
	tst     r1, r2
	beq     branch_22511ae
	add     r0, #0x2c
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0xc4] @ 0x22511f0, (=#0x801fda49)
	tst     r0, r2
	bne     branch_22511ae
	ldr     r0, [pc, #0xa4] @ 0x22511d8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r1, r0, #4
	add     r3, r5, r1
	ldr     r1, [pc, #0xb8] @ 0x22511f4, (=#0x3e6)
	ldrh    r3, [r3, r1]
	cmp     r3, #0x40
	bgt     branch_2251150
	bge     branch_2251164
	cmp     r3, #0x10
	bgt     branch_225114a
	beq     branch_2251164
	b       branch_225118a
@ 0x225114a

.thumb
branch_225114a: @ 225114a :thumb
	cmp     r3, #0x20
	beq     branch_2251164
	b       branch_225118a
@ 0x2251150

.thumb
branch_2251150: @ 2251150 :thumb
	lsr     r1, r2, #23
	cmp     r3, r1
	bgt     branch_225115e
	bge     branch_2251164
	cmp     r3, #0x80
	beq     branch_2251164
	b       branch_225118a
@ 0x225115e

.thumb
branch_225115e: @ 225115e :thumb
	lsr     r1, r2, #22
	cmp     r3, r1
	bne     branch_225118a
.thumb
branch_2251164: @ 2251164 :thumb
	ldr     r1, [r5, #0x6c]
	ldr     r2, [pc, #0x90] @ 0x22511f8, (=#0x30c4)
	lsl     r1, r1, #1
	mov     r0, #0x0
	add     r1, r5, r1
	strh    r0, [r1, r2]
	ldr     r1, [r5, #0x6c]
	mov     r4, #0xff
	lsl     r1, r1, #1
	add     r3, r5, r1
	mov     r1, r2
	add     r1, #0x8
	strh    r4, [r3, r1]
	ldr     r1, [r5, #0x6c]
	add     r2, #0x10
	lsl     r1, r1, #1
	add     r1, r5, r1
	strh    r0, [r1, r2]
	pop     {r4-r6,pc}
@ 0x225118a

.thumb
branch_225118a: @ 225118a :thumb
	ldr     r1, [r5, #0x6c]
	lsl     r1, r1, #1
	add     r2, r5, r1
	ldr     r1, [pc, #0x64] @ 0x22511f8, (=#0x30c4)
	strh    r0, [r2, r1]
	ldr     r0, [r5, #0x6c]
	ldr     r3, [r5, #0x64]
	lsl     r0, r0, #1
	add     r2, r5, r0
	mov     r0, r1
	add     r0, #0x8
	strh    r3, [r2, r0]
	ldr     r0, [r5, #0x6c]
	add     r1, #0x10
	lsl     r0, r0, #1
	add     r0, r5, r0
	strh    r4, [r0, r1]
	pop     {r4-r6,pc}
@ 0x22511ae

.thumb
branch_22511ae: @ 22511ae :thumb
	ldr     r1, [r5, #0x6c]
	ldr     r2, [pc, #0x44] @ 0x22511f8, (=#0x30c4)
	lsl     r1, r1, #1
	mov     r0, #0x0
	add     r1, r5, r1
	strh    r0, [r1, r2]
	ldr     r1, [r5, #0x6c]
	mov     r4, #0xff
	lsl     r1, r1, #1
	add     r3, r5, r1
	mov     r1, r2
	add     r1, #0x8
	strh    r4, [r3, r1]
	ldr     r1, [r5, #0x6c]
	add     r2, #0x10
	lsl     r1, r1, #1
	add     r1, r5, r1
	strh    r0, [r1, r2]
.thumb
branch_22511d2: @ 22511d2 :thumb
	pop     {r4-r6,pc}
@ 0x22511d4

.word 0x2160 @ 0x22511d4
.word 0x3044 @ 0x22511d8
.word 0x3e2 @ 0x22511dc
.word 0x3e9 @ 0x22511e0
.word 0x213c @ 0x22511e4
.word 0x2df8 @ 0x22511e8
.word 0x3064 @ 0x22511ec
.word 0x801fda49 @ 0x22511f0
.word 0x3e6 @ 0x22511f4
.word 0x30c4 @ 0x22511f8
.thumb
Function_22511fc: @ 22511fc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x10
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2251216


.align 2, 0


.thumb
Function_2251218: @ 2251218 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x4c] @ 0x2251268, (=#0x216c)
	mov     r5, r1
	ldr     r0, [r5, r2]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_225124c
	mov     r1, r2
	add     r1, #0x11
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_225124a
	ldr     r1, [r5, #0x74]
	cmp     r1, #0xff
	bne     branch_2251246
	add     r2, #0x10
	ldrb    r1, [r5, r2]
	cmp     r1, #0x1
	beq     branch_2251246
	mov     r1, #0x1
	lsl     r1, r1, #14
	tst     r0, r1
	beq     branch_225124c
.thumb
branch_2251246: @ 2251246 :thumb
	mov     r4, #0x1
	b       branch_225124c
@ 0x225124a

.thumb
branch_225124a: @ 225124a :thumb
	mov     r4, #0x1
.thumb
branch_225124c: @ 225124c :thumb
	cmp     r4, #0x1
	bne     branch_2251262
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x15
	bl      Function_2251e1c
	ldr     r0, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
.thumb
branch_2251262: @ 2251262 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2251266


.align 2


.word 0x216c @ 0x2251268

.incbin "./baserom/overlay/overlay_0016.bin", 0x1612c, 0x22513b0 - 0x225126c


.thumb
Function_22513b0: @ 22513b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r7, [r5, #0x5c]
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	bl      Function_223df1c
	cmp     r7, r0
	bge     branch_2251420
	mov     r4, r5
	add     r4, #0x5c
.thumb
branch_22513c6: @ 22513c6 :thumb
	mov     r0, #0xc0
	mul     r0, r7
	mov     r1, #0xb7
	add     r0, r5, r0
	lsl     r1, r1, #6
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x58] @ 0x225142c, (=#0x200400c0)
	tst     r1, r2
	bne     branch_225140a
	ldr     r1, [pc, #0x54] @ 0x2251430, (=#0x2dc4)
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x4c] @ 0x225142c, (=#0x200400c0)
	tst     r1, r2
	beq     branch_225140a
	ldr     r1, [pc, #0x4c] @ 0x2251430, (=#0x2dc4)
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x4c] @ 0x2251434, (=#0xdffbff3f)
	and     r2, r1
	ldr     r1, [pc, #0x44] @ 0x2251430, (=#0x2dc4)
	str     r2, [r0, r1]
	ldr     r2, [pc, #0x48] @ 0x2251438, (=#0x11f)
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2251e1c
	mov     r0, #0x46
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x8]
	mov     r6, #0x1
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
.thumb
branch_225140a: @ 225140a :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	cmp     r6, #0x1
	beq     branch_2251420
	ldr     r0, [sp, #0x0]
	ldr     r7, [r5, #0x5c]
	bl      Function_223df1c
	cmp     r7, r0
	blt     branch_22513c6
.thumb
branch_2251420: @ 2251420 :thumb
	cmp     r6, #0x0
	bne     branch_2251428
	mov     r0, #0x0
	str     r0, [r5, #0x5c]
.thumb
branch_2251428: @ 2251428 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x225142c

.word 0x200400c0 @ 0x225142c
.word 0x2dc4 @ 0x2251430
.word 0xdffbff3f @ 0x2251434
.word 0x11f @ 0x2251438
.thumb
Function_225143c: @ 225143c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r6, #0x0
	bl      Function_223df1c
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258ab8
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, r6
	bl      Function_2258acc
	ldr     r1, [r4, #0x8]
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2250ef4
	cmp     r0, #0x1
	bne     branch_2251474
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2251474

.thumb
branch_2251474: @ 2251474 :thumb
	mov     r5, r4
	add     r5, #0x30
.thumb
branch_2251478: @ 2251478 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x3
	bls     branch_2251480
	b       branch_22515d0
@ 0x2251480

.thumb
branch_2251480: @ 2251480 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r6, #0
	lsl     r6, r6, #2
	lsl     r2, r7, #4
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x14c] @ 0x22515e8, (=#0x2db0)
	add     r0, r4, r0
	ldr     r2, [r0, r1]
	mov     r1, #0x2
	lsl     r1, r1, #22
	tst     r1, r2
	beq     branch_22514bc
	ldr     r1, [pc, #0x140] @ 0x22515ec, (=#0x3044)
	ldr     r1, [r4, r1]
	cmp     r1, #0x63
	beq     branch_22514bc
	ldr     r1, [pc, #0x134] @ 0x22515e8, (=#0x2db0)
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x138] @ 0x22515f0, (=#0xff7fffff)
	and     r2, r1
	ldr     r1, [pc, #0x12c] @ 0x22515e8, (=#0x2db0)
	str     r2, [r0, r1]
.thumb
branch_22514bc: @ 22514bc :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22515d0
@ 0x22514c4


.incbin "./baserom/overlay/overlay_0016.bin", 0x16384, 0x22515d0 - 0x22514c4


.thumb
branch_22515d0: @ 22515d0 :thumb
	cmp     r6, #0x0
	bne     branch_22515d6
	b       branch_2251478
@ 0x22515d6

.thumb
branch_22515d6: @ 22515d6 :thumb
	cmp     r6, #0x1
	bne     branch_22515e0
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22515e0

.thumb
branch_22515e0: @ 22515e0 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22515e6


.align 2


.word 0x2db0 @ 0x22515e8
.word 0x3044 @ 0x22515ec
.word 0xff7fffff @ 0x22515f0

.incbin "./baserom/overlay/overlay_0016.bin", 0x164b4, 0x2251694 - 0x22515f4


.thumb
Function_2251694: @ 2251694 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	str     r1, [sp, #0x0]
	bl      Function_223df1c
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2251768
	ldr     r5, [sp, #0x0]
.thumb
branch_22516aa: @ 22516aa :thumb
	ldr     r0, [pc, #0xc0] @ 0x225176c, (=#0x21a8)
	ldr     r2, [r5, r0]
	cmp     r2, #0x27
	beq     branch_225175e
	ldr     r0, [sp, #0x0]
	add     r7, r0, r4
	ldr     r0, [pc, #0xb8] @ 0x2251770, (=#0x314c)
	ldrb    r1, [r7, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22516ce
	sub     r2, #0xc
	lsl     r2, r2, #24
	mov     r0, r6
	mov     r1, r4
	lsr     r2, r2, #24
	bl      Function_223f500
.thumb
branch_22516ce: @ 22516ce :thumb
	ldr     r0, [pc, #0x9c] @ 0x225176c, (=#0x21a8)
	ldr     r0, [r5, r0]
	sub     r0, #0xd
	cmp     r0, #0x3
	bhi     branch_225175e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r7, #0
	lsl     r2, r3, #1
	lsl     r6, r5, #1
	ldr     r0, [pc, #0x80] @ 0x2251770, (=#0x314c)
	ldrb    r1, [r7, r0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2251706
	ldr     r2, [pc, #0x7c] @ 0x2251774, (=#0x21b0)
	mov     r0, r6
	ldr     r2, [r5, r2]
	mov     r1, r4
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_223f500
.thumb
branch_2251706: @ 2251706 :thumb
	ldr     r0, [pc, #0x68] @ 0x2251770, (=#0x314c)
	ldrb    r1, [r7, r0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_225175e
	ldr     r2, [pc, #0x64] @ 0x2251778, (=#0x21ac)
	mov     r0, r6
	ldr     r2, [r5, r2]
	mov     r1, r4
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_223f500
	b       branch_225175e
@ 0x2251724


.incbin "./baserom/overlay/overlay_0016.bin", 0x165e4, 0x225175e - 0x2251724


.thumb
branch_225175e: @ 225175e :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, r0
	blt     branch_22516aa
.thumb
branch_2251768: @ 2251768 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225176c

.word 0x21a8 @ 0x225176c
.word 0x314c @ 0x2251770
.word 0x21b0 @ 0x2251774
.word 0x21ac @ 0x2251778
.thumb
Function_225177c: @ 225177c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r7, r1
	str     r2, [sp, #0x4]
	mov     r1, r2
	mov     r2, r3
	str     r0, [sp, #0x0]
	bl      Function_223dfac
	ldr     r1, [sp, #0x4]
	mov     r2, #0xc0
	mov     r5, r1
	mov     r1, #0xb5
	lsl     r1, r1, #6
	add     r1, r7, r1
	mul     r5, r2
	str     r1, [sp, #0x18]
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	ldr     r1, [sp, #0x18]
	mov     r2, #0x0
	strh    r0, [r1, r5]
	mov     r0, r4
	mov     r1, #0xa5
	bl      Function_2074470
	ldr     r1, [pc, #0x37c] @ 0x2251b34, (=#0x2d42)
	add     r2, r7, r5
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x370] @ 0x2251b38, (=#0x2d44)
	add     r2, r7, r5
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x364] @ 0x2251b3c, (=#0x2d46)
	add     r2, r7, r5
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x358] @ 0x2251b40, (=#0x2d48)
	add     r2, r7, r5
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      Function_2074470
	add     r1, r7, r5
	ldr     r2, [pc, #0x348] @ 0x2251b44, (=#0x2d4a)
	str     r1, [sp, #0xc]
	strh    r0, [r1, r2]
	mov     r0, r1
	mov     r6, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x10]
.thumb
branch_2251806: @ 2251806 :thumb
	mov     r1, r6
	mov     r0, r4
	add     r1, #0x36
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x14]
	ldr     r1, [pc, #0x330] @ 0x2251b48, (=#0x2d4c)
	strh    r0, [r2, r1]
	mov     r1, r6
	mov     r0, r4
	add     r1, #0x3a
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x10]
	ldr     r1, [pc, #0x324] @ 0x2251b4c, (=#0x2d6c)
	strb    r0, [r2, r1]
	mov     r1, r6
	mov     r0, r4
	add     r1, #0x3e
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x10]
	ldr     r1, [pc, #0x314] @ 0x2251b50, (=#0x2d70)
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r0, [r2, r1]
	ldr     r0, [sp, #0x14]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r6, #0x4
	blt     branch_2251806
	mov     r0, r1
	sub     r0, #0x1c
	add     r6, r7, r0
	mov     r0, r4
	mov     r1, #0x46
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [r6, r5]
	mov     r2, #0x1f
	bic     r1, r2
	mov     r2, #0x1f
	and     r0, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x47
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #27
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x2d8] @ 0x2251b54, (=#0xfffffc1f)
	lsr     r0, r0, #22
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x48
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #27
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x2c4] @ 0x2251b58, (=#0xffff83ff)
	lsr     r0, r0, #17
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x49
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #27
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x2b0] @ 0x2251b5c, (=#0xfff07fff)
	lsr     r0, r0, #12
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x4a
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #27
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x29c] @ 0x2251b60, (=#0xfe0fffff)
	lsr     r0, r0, #7
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x4b
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #27
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x288] @ 0x2251b64, (=#0xc1ffffff)
	lsr     r0, r0, #2
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x274] @ 0x2251b68, (=#0xbfffffff)
	lsl     r0, r0, #31
	and     r1, r2
	lsr     r0, r0, #1
	orr     r0, r1
	str     r0, [r6, r5]
	mov     r0, r4
	mov     r1, #0x4d
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [r6, r5]
	ldr     r1, [pc, #0x260] @ 0x2251b6c, (=#0x7fffffff)
	lsl     r0, r0, #31
	and     r1, r2
	orr     r0, r1
	str     r0, [r6, r5]
	ldr     r0, [pc, #0x25c] @ 0x2251b70, (=#0x213c)
	ldr     r1, [r7, r0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	tst     r0, r1
	bne     branch_2251932
	ldr     r0, [pc, #0x254] @ 0x2251b74, (=#0x2d58)
	mov     r2, #0x0
	mov     r1, #0x6
.thumb
branch_2251924: @ 2251924 :thumb
	ldr     r3, [sp, #0xc]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r3, r0]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [sp, #0xc]
	cmp     r2, #0x8
	blt     branch_2251924
.thumb
branch_2251932: @ 2251932 :thumb
	ldr     r0, [pc, #0x244] @ 0x2251b78, (=#0x2d68)
	mov     r1, #0x1
	add     r0, r7, r0
	ldr     r2, [r0, r5]
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x2
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x4
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x8
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x10
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x20
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x40
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	mov     r1, #0x80
	bic     r2, r1
	str     r2, [r0, r5]
	ldr     r2, [r0, r5]
	ldr     r1, [pc, #0x200] @ 0x2251b7c, (=#0xfffffeff)
	and     r1, r2
	str     r1, [r0, r5]
	ldr     r2, [r0, r5]
	ldr     r1, [pc, #0x1fc] @ 0x2251b80, (=#0xfffffdff)
	and     r1, r2
	str     r1, [r0, r5]
	ldr     r2, [r0, r5]
	ldr     r1, [pc, #0x1f8] @ 0x2251b84, (=#0xfffffbff)
	and     r1, r2
	str     r1, [r0, r5]
	mov     r0, r4
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x1ec] @ 0x2251b88, (=#0x2d64)
	add     r2, r7, r5
	strb    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x1e0] @ 0x2251b8c, (=#0x2d65)
	add     r2, r7, r5
	strb    r0, [r2, r1]
	add     r1, #0x59
	add     r0, r7, r1
	str     r0, [sp, #0x1c]
	mov     r0, r4
	bl      Function_2075d6c
	ldr     r1, [sp, #0x1c]
	mov     r2, #0xf
	ldrb    r1, [r1, r5]
	bic     r1, r2
	mov     r2, #0xf
	and     r0, r2
	orr     r1, r0
	ldr     r0, [sp, #0x1c]
	strb    r1, [r0, r5]
	ldr     r0, [pc, #0x1c0] @ 0x2251b90, (=#0x2d66)
	add     r0, r7, r0
	str     r0, [sp, #0x20]
	mov     r0, r4
	bl      Function_2075e0c
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #31
	ldrb    r1, [r1, r5]
	mov     r2, #0x20
	lsr     r0, r0, #26
	bic     r1, r2
	orr     r1, r0
	ldr     r0, [sp, #0x20]
	strb    r1, [r0, r5]
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	mov     r1, #0x22
	lsl     r1, r1, #4
	tst     r0, r1
	beq     branch_2251a12
	ldr     r2, [pc, #0x198] @ 0x2251b94, (=#0x2d67)
	mov     r0, #0x0
	add     r3, r7, r5
	mov     r1, r2
	strb    r0, [r3, r2]
	add     r2, #0x51
	add     r1, #0x45
	add     r2, r7, r2
	str     r0, [r3, r1]
	add     r1, r2, r5
	str     r1, [sp, #0x8]
	strh    r0, [r2, r5]
	b       branch_2251a46
@ 0x2251a12

.thumb
branch_2251a12: @ 2251a12 :thumb
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x174] @ 0x2251b94, (=#0x2d67)
	add     r2, r7, r5
	strb    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x168] @ 0x2251b98, (=#0x2dac)
	add     r2, r7, r5
	str     r0, [r2, r1]
	add     r1, #0xc
	add     r6, r7, r1
	add     r0, r6, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2074470
	strh    r0, [r6, r5]
.thumb
branch_2251a46: @ 2251a46 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	mov     r1, #0x22
	lsl     r1, r1, #4
	tst     r0, r1
	beq     branch_2251a6e
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_2251a6e
	ldr     r0, [sp, #0x20]
	ldrb    r1, [r0, r5]
	mov     r0, #0x1f
	bic     r1, r0
	ldr     r0, [sp, #0x20]
	strb    r1, [r0, r5]
	b       branch_2251a8e
@ 0x2251a6e

.thumb
branch_2251a6e: @ 2251a6e :thumb
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [sp, #0x20]
	mov     r2, #0x1f
	ldrb    r1, [r1, r5]
	lsl     r0, r0, #24
	bic     r1, r2
	lsr     r2, r0, #24
	mov     r0, #0x1f
	and     r0, r2
	orr     r1, r0
	ldr     r0, [sp, #0x20]
	strb    r1, [r0, r5]
.thumb
branch_2251a8e: @ 2251a8e :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc0
	mov     r6, r0
	mul     r6, r1
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xf8] @ 0x2251b9c, (=#0x2d74)
	add     r2, r7, r6
	strb    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xec] @ 0x2251ba0, (=#0x2d75)
	add     r2, r7, r6
	strb    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xe0] @ 0x2251ba4, (=#0x2d8c)
	add     r2, r7, r6
	str     r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xd4] @ 0x2251ba8, (=#0x2d90)
	add     r2, r7, r6
	str     r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xc8] @ 0x2251bac, (=#0x2da4)
	add     r2, r7, r6
	str     r0, [r2, r1]
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2074470
	ldr     r1, [pc, #0xbc] @ 0x2251bb0, (=#0x2da8)
	add     r2, r7, r6
	str     r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0xb0] @ 0x2251bb4, (=#0x2db4)
	add     r2, r7, r6
	str     r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0x9d
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #28
	ldrb    r1, [r1, r5]
	mov     r2, #0xf0
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r1, r0
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x0
	strb    r1, [r0, r5]
	mov     r0, r4
	mov     r1, #0x9b
	bl      Function_2074470
	ldr     r1, [pc, #0x84] @ 0x2251bb8, (=#0x2dbf)
	b       branch_2251bbc
@ 0x2251b34

.word 0x2d42 @ 0x2251b34
.word 0x2d44 @ 0x2251b38
.word 0x2d46 @ 0x2251b3c
.word 0x2d48 @ 0x2251b40
.word 0x2d4a @ 0x2251b44
.word 0x2d4c @ 0x2251b48
.word 0x2d6c @ 0x2251b4c
.word 0x2d70 @ 0x2251b50
.word 0xfffffc1f @ 0x2251b54
.word 0xffff83ff @ 0x2251b58
.word 0xfff07fff @ 0x2251b5c
.word 0xfe0fffff @ 0x2251b60
.word 0xc1ffffff @ 0x2251b64
.word 0xbfffffff @ 0x2251b68
.word 0x7fffffff @ 0x2251b6c
.word 0x213c @ 0x2251b70
.word 0x2d58 @ 0x2251b74
.word 0x2d68 @ 0x2251b78
.word 0xfffffeff @ 0x2251b7c
.word 0xfffffdff @ 0x2251b80
.word 0xfffffbff @ 0x2251b84
.word 0x2d64 @ 0x2251b88
.word 0x2d65 @ 0x2251b8c
.word 0x2d66 @ 0x2251b90
.word 0x2d67 @ 0x2251b94
.word 0x2dac @ 0x2251b98
.word 0x2d74 @ 0x2251b9c
.word 0x2d75 @ 0x2251ba0
.word 0x2d8c @ 0x2251ba4
.word 0x2d90 @ 0x2251ba8
.word 0x2da4 @ 0x2251bac
.word 0x2da8 @ 0x2251bb0
.word 0x2db4 @ 0x2251bb4
.word 0x2dbf @ 0x2251bb8
.thumb
branch_2251bbc: @ 2251bbc :thumb
	add     r2, r7, r6
	strb    r0, [r2, r1]
	ldr     r0, [sp, #0x20]
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #27
	lsr     r0, r0, #27
	bl      Function_2098988
	mov     r0, #0x5
	bl      Function_2098700
	mov     r1, #0x0
	mov     r2, #0x5
	str     r0, [sp, #0x24]
	bl      Function_209872c
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	ldrh    r1, [r1, r5]
	bl      Function_2098828
	ldr     r1, [pc, #0x90] @ 0x2251c78, (=#0x2d60)
	add     r2, r7, r6
	str     r0, [r2, r1]
	ldr     r0, [sp, #0x24]
	bl      Function_20987bc
	ldr     r0, [sp, #0x24]
	bl      Function_2098718
	ldr     r2, [pc, #0x80] @ 0x2251c7c, (=#0x2d76)
	mov     r0, r4
	add     r2, r7, r2
	mov     r1, #0x75
	add     r2, r2, r6
	bl      Function_2074470
	ldr     r2, [pc, #0x78] @ 0x2251c80, (=#0x2d94)
	mov     r0, r4
	add     r2, r7, r2
	mov     r1, #0x90
	add     r2, r2, r6
	bl      Function_2074470
	ldr     r0, [pc, #0x6c] @ 0x2251c84, (=#0x2dbc)
	mov     r2, #0x0
	add     r1, r7, r6
	strb    r2, [r1, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r2, [r1, r0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_223e208
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	add     r1, r7, r0
	ldr     r0, [pc, #0x58] @ 0x2251c88, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	lsl     r1, r4, #3
	add     r2, r7, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	beq     branch_2251c5e
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2251c8c, (=#0x2dcc)
	add     sp, #0x28
	add     r2, r7, r0
	ldr     r1, [r2, r5]
	ldr     r0, [pc, #0x38] @ 0x2251c90, (=#0xffbfffff)
	and     r0, r1
	str     r0, [r2, r5]
	pop     {r3-r7,pc}
@ 0x2251c5e

.thumb
branch_2251c5e: @ 2251c5e :thumb
	ldr     r0, [sp, #0x8]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2251c74
	ldr     r0, [pc, #0x24] @ 0x2251c8c, (=#0x2dcc)
	add     r2, r7, r0
	mov     r0, #0x1
	ldr     r1, [r2, r5]
	lsl     r0, r0, #22
	orr     r0, r1
	str     r0, [r2, r5]
.thumb
branch_2251c74: @ 2251c74 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2251c78

.word 0x2d60 @ 0x2251c78
.word 0x2d76 @ 0x2251c7c
.word 0x2d94 @ 0x2251c80
.word 0x2dbc @ 0x2251c84
.word 0x219c @ 0x2251c88
.word 0x2dcc @ 0x2251c8c
.word 0xffbfffff @ 0x2251c90
.thumb
Function_2251c94: @ 2251c94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r2
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, r3
	bl      Function_223dfac
	mov     r1, #0xc0
	mul     r1, r5
	str     r1, [sp, #0x4]
	mov     r1, #0xa5
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0x12c] @ 0x2251de8, (=#0x2d42)
	strh    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0x11c] @ 0x2251dec, (=#0x2d44)
	strh    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0x10c] @ 0x2251df0, (=#0x2d46)
	strh    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xfc] @ 0x2251df4, (=#0x2d48)
	strh    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xec] @ 0x2251df8, (=#0x2d4a)
	strh    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xdc] @ 0x2251dfc, (=#0x2d74)
	strb    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xcc] @ 0x2251e00, (=#0x2d75)
	strb    r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xbc] @ 0x2251e04, (=#0x2d8c)
	str     r0, [r2, r1]
	mov     r0, r6
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0xac] @ 0x2251e08, (=#0x2d90)
	str     r0, [r2, r1]
	mov     r0, r1
	add     r0, #0x20
	ldr     r2, [r2, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r2
	bne     branch_2251de4
	mov     r0, #0xc0
	mul     r0, r5
	ldr     r2, [sp, #0x0]
	str     r0, [sp, #0x8]
	add     r7, r2, r0
	add     r1, #0x3c
	mov     r0, r2
	add     r0, r0, r1
	mov     r4, #0x0
	mov     r5, r7
	str     r0, [sp, #0xc]
.thumb
branch_2251d82: @ 2251d82 :thumb
	mov     r0, r4
	bl      Function_20787cc
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x8]
	ldr     r1, [r2, r1]
	lsl     r1, r1, #26
	lsr     r1, r1, #28
	tst     r0, r1
	bne     branch_2251dc6
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x36
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x68] @ 0x2251e0c, (=#0x2d4c)
	mov     r2, #0x0
	strh    r0, [r7, r1]
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x3a
	bl      Function_2074470
	ldr     r1, [pc, #0x5c] @ 0x2251e10, (=#0x2d6c)
	mov     r2, #0x0
	strb    r0, [r5, r1]
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x3e
	bl      Function_2074470
	ldr     r1, [pc, #0x50] @ 0x2251e14, (=#0x2d70)
	strb    r0, [r5, r1]
.thumb
branch_2251dc6: @ 2251dc6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x4
	blt     branch_2251d82
	mov     r0, r6
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r2, r1
	ldr     r1, [pc, #0x34] @ 0x2251e18, (=#0x2da4)
	str     r0, [r2, r1]
.thumb
branch_2251de4: @ 2251de4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2251de8

.word 0x2d42 @ 0x2251de8
.word 0x2d44 @ 0x2251dec
.word 0x2d46 @ 0x2251df0
.word 0x2d48 @ 0x2251df4
.word 0x2d4a @ 0x2251df8
.word 0x2d74 @ 0x2251dfc
.word 0x2d75 @ 0x2251e00
.word 0x2d8c @ 0x2251e04
.word 0x2d90 @ 0x2251e08
.word 0x2d4c @ 0x2251e0c
.word 0x2d6c @ 0x2251e10
.word 0x2d70 @ 0x2251e14
.word 0x2da4 @ 0x2251e18
.thumb
Function_2251e1c: @ 2251e1c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2006b58
	mov     r1, #0x19
	lsl     r1, r1, #6
	cmp     r0, r1
	bcc     branch_2251e38
	bl      Function_2022974
.thumb
branch_2251e38: @ 2251e38 :thumb
	mov     r0, r5
	add     r0, #0xac
	str     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xb0
	str     r6, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x27
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, r6
	bl      LoadFromNARC
	pop     {r4-r6,pc}
@ 0x2251e5c


.incbin "./baserom/overlay/overlay_0016.bin", 0x16d1c, 0x2251f44 - 0x2251e5c


.thumb
Function_2251f44: @ 2251f44 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	lsl     r0, r1, #6
	lsl     r6, r2, #4
	add     r1, r4, r0
	add     r5, r1, r6
	mov     r1, #0x22
	mov     r7, r3
	mov     r3, #0x0
	lsl     r1, r1, #8
.thumb
branch_2251f58: @ 2251f58 :thumb
	ldrb    r2, [r5, r1]
	cmp     r2, #0x0
	bne     branch_2251f6c
	add     r0, r4, r0
	add     r0, r0, r6
	add     r1, r0, r3
	mov     r0, #0x22
	lsl     r0, r0, #8
	strb    r7, [r1, r0]
	b       branch_2251f74
@ 0x2251f6c

.thumb
branch_2251f6c: @ 2251f6c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r3, #0x10
	blt     branch_2251f58
.thumb
branch_2251f74: @ 2251f74 :thumb
	cmp     r3, #0x10
	blt     branch_2251f7c
	bl      Function_2022974
.thumb
branch_2251f7c: @ 2251f7c :thumb
	pop     {r3-r7,pc}
@ 0x2251f7e


.incbin "./baserom/overlay/overlay_0016.bin", 0x16e3e, 0x2251fc8 - 0x2251f7e


.thumb
Function_2251fc8: @ 2251fc8 :thumb
	push    {r3-r7,lr}
	mov     r2, #0x0
	mov     r4, #0x22
	mov     lr, r0
	mov     r12, r2
	mov     r7, r0
	mov     r6, r2
	lsl     r4, r4, #8
.thumb
branch_2251fd8: @ 2251fd8 :thumb
	mov     r0, #0x0
	mov     r3, r7
.thumb
branch_2251fdc: @ 2251fdc :thumb
	mov     r1, r6
.thumb
branch_2251fde: @ 2251fde :thumb
	add     r5, r3, r1
	ldrb    r5, [r5, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, r2, r5
	cmp     r1, #0x10
	blt     branch_2251fde
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0x10
	cmp     r0, #0x4
	blt     branch_2251fdc
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x40
	mov     r12, r0
	cmp     r0, #0x4
	blt     branch_2251fd8
	cmp     r2, #0x0
	bne     branch_225200a
	ldr     r1, [pc, #0x14] @ 0x2252018, (=#0x3148)
	mov     r3, #0x0
	mov     r0, lr
	str     r3, [r0, r1]
.thumb
branch_225200a: @ 225200a :thumb
	cmp     r2, #0x0
	bne     branch_2252012
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2252012

.thumb
branch_2252012: @ 2252012 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2252016


.align 2


.word 0x3148 @ 0x2252018
.thumb
Function_225201c: @ 225201c :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x18] @ 0x2252038, (=#0x3148)
	ldr     r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x10] @ 0x225203c, (=#0x708)
	cmp     r1, r0
	ble     branch_2252034
	mov     r0, #0x1
	bl      Function_2038ae0
.thumb
branch_2252034: @ 2252034 :thumb
	pop     {r3,pc}
@ 0x2252036


.align 2


.word 0x3148 @ 0x2252038
.word 0x708 @ 0x225203c
.thumb
Function_2252040: @ 2252040 :thumb
	push    {r3,r4}
	lsl     r1, r1, #8
	add     r4, r0, r1
	mov     r3, #0x0
	mov     r0, #0x23
	mov     r1, #0x1
	mov     r2, r3
	lsl     r0, r0, #8
	lsl     r1, r1, #8
.thumb
branch_2252052: @ 2252052 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r4, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r3, r1
	blt     branch_2252052
	pop     {r3,r4}
	bx      lr
@ 0x2252060

.thumb
Function_2252060: @ 2252060 :thumb
	push    {r4-r6,lr}
	mov     r4, #0xb5
	lsl     r4, r4, #6
	add     r5, r0, r4
	mov     r6, #0xc0
	mov     r4, r1
	mul     r4, r6
	add     r4, r5, r4
	cmp     r2, #0x64
	bls     branch_2252076
	b       branch_22523de
@ 0x2252076

.thumb
branch_2252076: @ 2252076 :thumb
	add     r5, r2, r2
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
	lsl     r0, r1, #3
	lsl     r4, r1, #3
	lsl     r0, r2, #3
	lsl     r4, r2, #3
	lsl     r0, r3, #3
	lsl     r4, r3, #3
	lsl     r0, r4, #3
	lsl     r0, r4, #3
	lsl     r0, r4, #3
	lsl     r0, r4, #3
	lsl     r2, r5, #3
	lsl     r2, r6, #3
	lsl     r2, r7, #3
	lsl     r2, r0, #4
	lsl     r2, r1, #4
	lsl     r2, r2, #4
	lsl     r2, r3, #4
	lsl     r2, r4, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r0, r5, #4
	lsl     r2, r6, #4
	lsl     r0, r7, #4
	lsl     r0, r7, #4
	lsl     r6, r7, #4
	lsl     r0, r1, #5
	lsl     r2, r2, #5
	lsl     r2, r2, #5
	lsl     r2, r2, #5
	lsl     r2, r2, #5
	lsl     r4, r3, #5
	lsl     r4, r3, #5
	lsl     r4, r3, #5
	lsl     r4, r3, #5
	lsl     r6, r4, #5
	lsl     r6, r4, #5
	lsl     r6, r4, #5
	lsl     r6, r4, #5
	lsl     r2, r7, #5
	lsl     r0, r0, #6
	lsl     r6, r0, #6
	lsl     r0, r3, #6
	lsl     r4, r4, #6
	lsl     r0, r5, #6
	lsl     r4, r5, #6
	lsl     r2, r0, #7
	lsl     r6, r0, #7
	lsl     r2, r1, #7
	lsl     r6, r1, #7
	lsl     r2, r2, #7
	lsl     r6, r2, #7
	lsl     r4, r3, #7
	lsl     r2, r4, #7
	lsl     r0, r5, #7
	lsl     r2, r6, #7
	lsl     r0, r7, #7
	lsl     r6, r7, #7
	lsl     r0, r1, #8
	lsl     r2, r2, #8
	lsl     r4, r3, #8
	lsl     r6, r4, #8
	lsl     r0, r6, #8
	lsl     r2, r7, #8
	lsl     r4, r0, #9
	lsl     r6, r1, #9
	lsl     r0, r3, #9
	lsl     r2, r4, #9
	lsl     r4, r5, #9
	lsl     r6, r6, #9
	lsl     r6, r7, #9
	lsl     r0, r1, #10
	lsl     r2, r2, #10
	lsl     r4, r3, #10
	lsl     r6, r4, #10
	lsl     r0, r6, #10
	lsl     r2, r7, #10
	lsl     r4, r0, #11
	lsl     r6, r1, #11
	lsl     r0, r3, #11
	lsl     r2, r4, #11
	lsl     r4, r5, #11
	lsl     r6, r6, #11
	lsl     r0, r0, #12
	lsl     r6, r0, #12
	lsl     r4, r1, #12
	lsl     r2, r2, #12
	lsl     r0, r3, #12
	lsl     r6, r3, #12
	lsl     r4, r4, #12
	lsl     r2, r5, #12
	lsl     r0, r6, #12
	lsl     r6, r6, #12
	lsl     r6, r7, #12
	lsl     r6, r0, #13
	lsl     r2, r3, #13
	lsl     r0, r2, #13
	ldrh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2252150


.incbin "./baserom/overlay/overlay_0016.bin", 0x17010, 0x22523de - 0x2252150


.thumb
branch_22523de: @ 22523de :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22523e6


.align 2, 0


.thumb
Function_22523e8: @ 22523e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r2, #0xb5
	lsl     r2, r2, #6
	add     r4, r0, r2
	mov     r6, #0xc0
	mov     r2, r1
	mul     r2, r6
	add     r2, r4, r2
	cmp     r5, #0x64
	bls     branch_2252400
	b       branch_22529fe
@ 0x2252400

.thumb
branch_2252400: @ 2252400 :thumb
	add     r4, r5, r5
	add     r4, pc
	ldrh    r4, [r4, #0x6]
	lsl     r4, r4, #16
	asr     r4, r4, #16
	add     pc, r4
	lsl     r0, r1, #3
	lsl     r6, r1, #3
	lsl     r4, r2, #3
	lsl     r2, r3, #3
	lsl     r0, r4, #3
	lsl     r6, r4, #3
	lsl     r4, r5, #3
	lsl     r4, r5, #3
	lsl     r4, r5, #3
	lsl     r4, r5, #3
	lsl     r0, r7, #3
	lsl     r2, r1, #4
	lsl     r4, r3, #4
	lsl     r6, r5, #4
	lsl     r0, r0, #5
	lsl     r2, r2, #5
	lsl     r4, r4, #5
	lsl     r6, r6, #5
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r6, r0, #6
	lsl     r2, r2, #6
	lsl     r2, r3, #6
	lsl     r2, r4, #6
	lsl     r2, r5, #6
	lsl     r2, r0, #7
	lsl     r2, r3, #7
	lsl     r2, r3, #7
	lsl     r2, r3, #7
	lsl     r2, r3, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r2, r6, #7
	lsl     r2, r6, #7
	lsl     r2, r6, #7
	lsl     r2, r6, #7
	lsl     r0, r7, #7
	lsl     r0, r0, #8
	lsl     r0, r1, #8
	lsl     r0, r6, #23
	lsl     r2, r3, #8
	lsl     r2, r4, #8
	lsl     r0, r5, #8
	lsl     r6, r7, #8
	lsl     r4, r0, #9
	lsl     r2, r1, #9
	lsl     r0, r2, #9
	lsl     r6, r2, #9
	lsl     r4, r3, #9
	lsl     r4, r4, #9
	lsl     r4, r5, #9
	lsl     r4, r6, #9
	lsl     r4, r1, #10
	lsl     r4, r2, #10
	lsl     r4, r3, #10
	lsl     r4, r6, #10
	lsl     r4, r1, #11
	lsl     r4, r4, #11
	lsl     r4, r7, #11
	lsl     r4, r2, #12
	lsl     r4, r5, #12
	lsl     r4, r0, #13
	lsl     r4, r3, #13
	lsl     r4, r6, #13
	lsl     r4, r1, #14
	lsl     r4, r4, #14
	lsl     r4, r7, #14
	lsl     r2, r2, #15
	lsl     r2, r5, #15
	lsl     r2, r0, #16
	lsl     r2, r3, #16
	lsl     r2, r6, #16
	lsl     r2, r1, #17
	lsl     r2, r4, #17
	lsl     r2, r7, #17
	lsl     r2, r2, #18
	lsl     r2, r0, #20
	lsl     r2, r3, #20
	lsl     r2, r6, #20
	lsl     r2, r1, #21
	lsl     r2, r4, #21
	lsl     r2, r5, #21
	lsl     r2, r6, #21
	lsl     r2, r7, #21
	lsl     r2, r0, #22
	lsl     r2, r1, #22
	lsl     r2, r2, #22
	lsl     r2, r3, #22
	lsl     r2, r4, #22
	lsl     r2, r5, #22
	lsl     r4, r7, #22
	lsl     r6, r1, #23
	lsl     r0, r6, #23
	lsl     r6, r4, #23
	ldrh    r0, [r3, #0x0]
	strh    r0, [r2, #0x0]
	pop     {r4-r6,pc}
@ 0x22524dc


.incbin "./baserom/overlay/overlay_0016.bin", 0x1739c, 0x22529fe - 0x22524dc


.thumb
branch_22529fe: @ 22529fe :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2252a04


.incbin "./baserom/overlay/overlay_0016.bin", 0x178c4, 0x2252a14 - 0x2252a04


.thumb
Function_2252a14: @ 2252a14 :thumb
	push    {r4,lr}
	mov     r4, #0xb5
	lsl     r4, r4, #6
	add     r4, r0, r4
	mov     r0, #0xc0
	mul     r0, r1
	mov     r1, r2
	add     r0, r4, r0
	mov     r2, r3
	bl      Function_2252a2c
	pop     {r4,pc}
@ 0x2252a2c

.thumb
Function_2252a2c: @ 2252a2c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r5, r2
	cmp     r1, #0x62
	bls     branch_2252a38
	b       branch_2252e82
@ 0x2252a38

.thumb
branch_2252a38: @ 2252a38 :thumb
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r7, #16
	lsl     r4, r0, #3
	lsl     r4, r1, #3
	lsl     r4, r2, #3
	lsl     r4, r3, #3
	lsl     r4, r4, #3
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r5, #3
	lsl     r4, r0, #4
	lsl     r2, r3, #4
	lsl     r0, r6, #4
	lsl     r6, r0, #5
	lsl     r4, r3, #5
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r2, r6, #5
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r0, r2, #6
	lsl     r0, r2, #6
	lsl     r0, r2, #6
	lsl     r0, r2, #6
	lsl     r6, r6, #6
	lsl     r6, r6, #6
	lsl     r6, r6, #6
	lsl     r6, r6, #6
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r2, r0, #7
	lsl     r0, r2, #7
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r5, #7
	lsl     r6, r7, #7
	lsl     r4, r7, #16
	lsl     r6, r0, #8
	lsl     r6, r1, #8
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r6, r2, #8
	lsl     r4, r6, #8
	lsl     r2, r2, #9
	lsl     r0, r6, #9
	lsl     r4, r1, #10
	lsl     r0, r5, #10
	lsl     r4, r0, #11
	lsl     r0, r4, #11
	lsl     r4, r7, #11
	lsl     r0, r3, #12
	lsl     r4, r6, #12
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r0, r2, #13
	lsl     r4, r5, #13
	lsl     r0, r1, #14
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r4, #14
	lsl     r2, r6, #14
	lsl     r0, r0, #15
	lsl     r6, r1, #15
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r7, #16
	lsl     r4, r3, #15
	lsl     r2, r5, #15
	lsl     r2, r0, #16
	lsl     r2, r3, #16
	ldrh    r0, [r4, #0x2]
	add     r0, r0, r5
	strh    r0, [r4, #0x2]
	pop     {r4-r6,pc}
@ 0x2252b12


.incbin "./baserom/overlay/overlay_0016.bin", 0x179d2, 0x2252e82 - 0x2252b12


.thumb
branch_2252e82: @ 2252e82 :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2252e88


.incbin "./baserom/overlay/overlay_0016.bin", 0x17d48, 0x2252ec8 - 0x2252e88


.thumb
Function_2252ec8: @ 2252ec8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x6c
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x80]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x80]
	mov     r0, #0x0
	str     r0, [sp, #0x64]
	str     r0, [sp, #0x60]
	ldr     r0, [sp, #0x64]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x5c]
	ldr     r0, [sp, #0x64]
	ldr     r3, [pc, #0x2e0] @ 0x22531c4, (=#0x2d8c)
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x64]
	mov     r5, r1
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x64]
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x64]
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x64]
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x64]
	str     r0, [sp, #0x34]
	mov     r0, #0xc0
	mul     r2, r0
	str     r2, [sp, #0x18]
	add     r2, r5, r3
	ldr     r1, [sp, #0x18]
	str     r2, [sp, #0x68]
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2252f20
	ldr     r2, [sp, #0xc]
	mul     r0, r2
	add     r0, r5, r0
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	beq     branch_2252f20
	add     sp, #0x6c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2252f20

.thumb
branch_2252f20: @ 2252f20 :thumb
	cmp     r1, #0x0
	beq     branch_2252f3a
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x298] @ 0x22531c4, (=#0x2d8c)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2252f3a
	add     sp, #0x6c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2252f3a

.thumb
branch_2252f3a: @ 2252f3a :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2255a4c
	str     r0, [sp, #0x2c]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2255a4c
	str     r0, [sp, #0x28]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2258ab8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x58]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x54]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2258ab8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x50]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x18]
	ldr     r2, [pc, #0x238] @ 0x22531c8, (=#0x2d5b)
	add     r0, r5, r0
	ldsb    r4, [r0, r2]
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	str     r1, [sp, #0x14]
	ldsb    r7, [r0, r2]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x56
	bne     branch_2252fbc
	.hword  0x1fa0 @ sub r0, r4, #0x6
	lsl     r0, r0, #1
	add     r4, r0, #0x6
	cmp     r4, #0xc
	ble     branch_2252fb6
	mov     r4, #0xc
.thumb
branch_2252fb6: @ 2252fb6 :thumb
	cmp     r4, #0x0
	bge     branch_2252fbc
	mov     r4, #0x0
.thumb
branch_2252fbc: @ 2252fbc :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x56
	bne     branch_2252fda
	.hword  0x1fb8 @ sub r0, r7, #0x6
	lsl     r0, r0, #1
	add     r7, r0, #0x6
	cmp     r7, #0xc
	ble     branch_2252fd4
	mov     r7, #0xc
.thumb
branch_2252fd4: @ 2252fd4 :thumb
	cmp     r7, #0x0
	bge     branch_2252fda
	mov     r7, #0x0
.thumb
branch_2252fda: @ 2252fda :thumb
	ldr     r0, [sp, #0x18]
	lsl     r1, r4, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x1e8] @ 0x22531cc, (=#0x2d46)
	ldrh    r2, [r2, r0]
	ldr     r0, [pc, #0x1e8] @ 0x22531d0, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x1e8] @ 0x22531d4, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	mov     r6, r0
	ldr     r0, [sp, #0x14]
	lsl     r1, r7, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x1d0] @ 0x22531cc, (=#0x2d46)
	ldrh    r2, [r2, r0]
	ldr     r0, [pc, #0x1d0] @ 0x22531d0, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x1cc] @ 0x22531d4, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	mov     r4, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2253082
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2253082
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x21
	bne     branch_2253048
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_225305a
.thumb
branch_2253048: @ 2253048 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x22
	bne     branch_225305c
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_225305c
.thumb
branch_225305a: @ 225305a :thumb
	lsl     r6, r6, #1
.thumb
branch_225305c: @ 225305c :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x21
	bne     branch_225306e
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_2253080
.thumb
branch_225306e: @ 225306e :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x22
	bne     branch_2253082
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_2253082
.thumb
branch_2253080: @ 2253080 :thumb
	lsl     r4, r4, #1
.thumb
branch_2253082: @ 2253082 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r7, [pc, #0x14c] @ 0x22531d8, (=#0x226eba8)
	add     r0, r5, r0
	str     r0, [sp, #0x1c]
.thumb
branch_225308e: @ 225308e :thumb
	ldr     r2, [sp, #0x1c]
	ldr     r1, [pc, #0x148] @ 0x22531dc, (=#0x2db8)
	mov     r0, r5
	ldrh    r1, [r2, r1]
	mov     r2, #0x1
	bl      Function_225b0fc
	ldrb    r1, [r7, #0x0]
	cmp     r1, r0
	bne     branch_22530a6
	lsr     r6, r6, #1
	b       branch_22530b2
@ 0x22530a6

.thumb
branch_22530a6: @ 22530a6 :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x8
	bcc     branch_225308e
.thumb
branch_22530b2: @ 22530b2 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x73
	bne     branch_22530c4
	mov     r0, #0xf
	mul     r0, r6
	mov     r1, #0xa
	blx     Function_20e2178
	mov     r6, r0
.thumb
branch_22530c4: @ 22530c4 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x66
	bne     branch_22530da
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r0, [r1, r0]
	cmp     r0, #0x84
	bne     branch_22530da
	lsl     r6, r6, #1
.thumb
branch_22530da: @ 22530da :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x5f
	bne     branch_22530fc
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	ldr     r0, [pc, #0xf8] @ 0x22531e0, (=#0x2dac)
	ldr     r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_22530fc
	mov     r0, #0xf
	mul     r0, r6
	mov     r1, #0xa
	blx     Function_20e2178
	mov     r6, r0
	b       branch_225310c
@ 0x22530fc

.thumb
branch_22530fc: @ 22530fc :thumb
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	ldr     r0, [pc, #0xdc] @ 0x22531e0, (=#0x2dac)
	ldr     r1, [r1, r0]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_225310c
	lsr     r6, r6, #2
.thumb
branch_225310c: @ 225310c :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x70
	bne     branch_2253128
	ldr     r1, [sp, #0x18]
	mov     r0, #0x15
	add     r2, r5, r1
	ldr     r1, [pc, #0xc8] @ 0x22531e4, (=#0x2dd8)
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r2, r1]
	sub     r0, r0, r1
	cmp     r0, #0x5
	bge     branch_2253128
	lsr     r6, r6, #1
.thumb
branch_2253128: @ 2253128 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x54
	bne     branch_2253146
	ldr     r0, [sp, #0x18]
	add     r2, r5, r0
	ldr     r0, [pc, #0xb4] @ 0x22531e8, (=#0x2dcc)
	ldr     r1, [r2, r0]
	lsl     r1, r1, #9
	lsr     r1, r1, #31
	beq     branch_2253146
	sub     r0, #0x14
	ldrh    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2253146
	lsl     r6, r6, #1
.thumb
branch_2253146: @ 2253146 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	bl      Function_223e208
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x3
	lsl     r0, r0, #8
	tst     r0, r1
	beq     branch_2253162
	lsl     r6, r6, #1
.thumb
branch_2253162: @ 2253162 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x34
	bne     branch_22531a0
	ldr     r1, [sp, #0x54]
	mov     r0, #0x64
	blx     Division
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x70] @ 0x22531ec, (=#0x310c)
	ldrh    r0, [r2, r0]
	blx     Division
	cmp     r1, #0x0
	bne     branch_22531a0
	mov     r0, #0x1
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_22531a0
	ldr     r0, [pc, #0x58] @ 0x22531e8, (=#0x2dcc)
	ldr     r1, [sp, #0x18]
	add     r0, r5, r0
	ldr     r2, [r0, r1]
	mov     r1, #0x2
	lsl     r1, r1, #28
	orr     r2, r1
	ldr     r1, [sp, #0x18]
	str     r2, [r0, r1]
.thumb
branch_22531a0: @ 22531a0 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x2d
	bne     branch_2253224
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x52
	bne     branch_22531ba
	ldr     r0, [sp, #0x54]
	lsl     r0, r0, #23
	lsr     r0, r0, #24
	str     r0, [sp, #0x54]
.thumb
branch_22531ba: @ 22531ba :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x22531f0, (=#0x2d90)
	b       branch_22531f4
@ 0x22531c4

.word 0x2d8c @ 0x22531c4
.word 0x2d5b @ 0x22531c8
.word 0x2d46 @ 0x22531cc
.word 0x226ebe0 @ 0x22531d0
.word 0x226ebe1 @ 0x22531d4
.word 0x226eba8 @ 0x22531d8
.word 0x2db8 @ 0x22531dc
.word 0x2dac @ 0x22531e0
.word 0x2dd8 @ 0x22531e4
.word 0x2dcc @ 0x22531e8
.word 0x310c @ 0x22531ec
.word 0x2d90 @ 0x22531f0
.thumb
branch_22531f4: @ 22531f4 :thumb
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x54]
	blx     Function_20e2178
	ldr     r2, [sp, #0x68]
	ldr     r1, [sp, #0x18]
	ldr     r1, [r2, r1]
	cmp     r1, r0
	bhi     branch_2253224
	mov     r0, #0x1
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_2253224
	ldr     r0, [pc, #0x2d8] @ 0x22534ec, (=#0x2dcc)
	ldr     r1, [sp, #0x18]
	add     r0, r5, r0
	ldr     r2, [r0, r1]
	mov     r1, #0x1
	lsl     r1, r1, #28
	orr     r2, r1
	ldr     r1, [sp, #0x18]
	str     r2, [r0, r1]
.thumb
branch_2253224: @ 2253224 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x6b
	bne     branch_225322e
	mov     r0, #0x1
	str     r0, [sp, #0x38]
.thumb
branch_225322e: @ 225322e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r7, [pc, #0x2b8] @ 0x22534f0, (=#0x226eba8)
	add     r0, r5, r0
	str     r0, [sp, #0x20]
.thumb
branch_225323a: @ 225323a :thumb
	ldr     r2, [sp, #0x20]
	ldr     r1, [pc, #0x2b4] @ 0x22534f4, (=#0x2db8)
	mov     r0, r5
	ldrh    r1, [r2, r1]
	mov     r2, #0x1
	bl      Function_225b0fc
	ldrb    r1, [r7, #0x0]
	cmp     r1, r0
	bne     branch_2253252
	lsr     r4, r4, #1
	b       branch_225325e
@ 0x2253252

.thumb
branch_2253252: @ 2253252 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x8
	bcc     branch_225323a
.thumb
branch_225325e: @ 225325e :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x73
	bne     branch_2253270
	mov     r0, #0xf
	mul     r0, r4
	mov     r1, #0xa
	blx     Function_20e2178
	mov     r4, r0
.thumb
branch_2253270: @ 2253270 :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x66
	bne     branch_2253286
	ldr     r0, [sp, #0x14]
	add     r1, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r0, [r1, r0]
	cmp     r0, #0x84
	bne     branch_2253286
	lsl     r4, r4, #1
.thumb
branch_2253286: @ 2253286 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x5f
	bne     branch_22532a8
	ldr     r0, [sp, #0x14]
	add     r1, r5, r0
	ldr     r0, [pc, #0x264] @ 0x22534f8, (=#0x2dac)
	ldr     r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_22532a8
	mov     r0, #0xf
	mul     r0, r4
	mov     r1, #0xa
	blx     Function_20e2178
	mov     r4, r0
	b       branch_22532b8
@ 0x22532a8

.thumb
branch_22532a8: @ 22532a8 :thumb
	ldr     r0, [sp, #0x14]
	add     r1, r5, r0
	ldr     r0, [pc, #0x248] @ 0x22534f8, (=#0x2dac)
	ldr     r1, [r1, r0]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_22532b8
	lsr     r4, r4, #2
.thumb
branch_22532b8: @ 22532b8 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x70
	bne     branch_22532d4
	ldr     r1, [sp, #0x14]
	mov     r0, #0x15
	add     r2, r5, r1
	ldr     r1, [pc, #0x234] @ 0x22534fc, (=#0x2dd8)
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r2, r1]
	sub     r0, r0, r1
	cmp     r0, #0x5
	bge     branch_22532d4
	lsr     r4, r4, #1
.thumb
branch_22532d4: @ 22532d4 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x54
	bne     branch_22532f2
	ldr     r0, [sp, #0x14]
	add     r2, r5, r0
	ldr     r0, [pc, #0x20c] @ 0x22534ec, (=#0x2dcc)
	ldr     r1, [r2, r0]
	lsl     r1, r1, #9
	lsr     r1, r1, #31
	beq     branch_22532f2
	sub     r0, #0x14
	ldrh    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_22532f2
	lsl     r4, r4, #1
.thumb
branch_22532f2: @ 22532f2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	bl      Function_223e208
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x3
	lsl     r0, r0, #8
	tst     r0, r1
	beq     branch_225330e
	lsl     r4, r4, #1
.thumb
branch_225330e: @ 225330e :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x34
	bne     branch_225334c
	ldr     r1, [sp, #0x4c]
	mov     r0, #0x64
	blx     Division
	mov     r1, r0
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x1d8] @ 0x2253500, (=#0x310c)
	ldrh    r0, [r2, r0]
	blx     Division
	cmp     r1, #0x0
	bne     branch_225334c
	mov     r0, #0x1
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_225334c
	ldr     r0, [pc, #0x1b0] @ 0x22534ec, (=#0x2dcc)
	ldr     r1, [sp, #0x14]
	add     r0, r5, r0
	ldr     r2, [r0, r1]
	mov     r1, #0x2
	lsl     r1, r1, #28
	orr     r2, r1
	ldr     r1, [sp, #0x14]
	str     r2, [r0, r1]
.thumb
branch_225334c: @ 225334c :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x2d
	bne     branch_22533a0
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x52
	bne     branch_2253366
	ldr     r0, [sp, #0x4c]
	lsl     r0, r0, #23
	lsr     r0, r0, #24
	str     r0, [sp, #0x4c]
.thumb
branch_2253366: @ 2253366 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc0
	mov     r7, r0
	mul     r7, r1
	ldr     r0, [pc, #0x194] @ 0x2253504, (=#0x2d90)
	add     r1, r5, r7
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x4c]
	blx     Function_20e2178
	ldr     r1, [pc, #0x18c] @ 0x2253508, (=#0x2d8c)
	add     r2, r5, r7
	ldr     r2, [r2, r1]
	cmp     r2, r0
	bhi     branch_22533a0
	mov     r0, #0x1
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_22533a0
	add     r1, #0x40
	add     r0, r5, r1
	ldr     r1, [sp, #0x14]
	ldr     r2, [r0, r1]
	mov     r1, #0x1
	lsl     r1, r1, #28
	orr     r2, r1
	ldr     r1, [sp, #0x14]
	str     r2, [r0, r1]
.thumb
branch_22533a0: @ 22533a0 :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x6b
	bne     branch_22533aa
	mov     r0, #0x1
	str     r0, [sp, #0x34]
.thumb
branch_22533aa: @ 22533aa :thumb
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x158] @ 0x225350c, (=#0x21f0)
	str     r6, [r1, r0]
	ldr     r1, [sp, #0xc]
	lsl     r1, r1, #2
	add     r1, r5, r1
	str     r4, [r1, r0]
	ldr     r1, [sp, #0x80]
	cmp     r1, #0x0
	bne     branch_2253462
	ldr     r1, [sp, #0xc]
	ldr     r3, [pc, #0x148] @ 0x2253510, (=#0x30bc)
	lsl     r1, r1, #4
	add     r2, r5, r1
	mov     r1, r0
	sub     r1, #0x3c
	ldr     r1, [r2, r1]
	sub     r0, #0x3c
	str     r1, [sp, #0x30]
	ldr     r1, [sp, #0x8]
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r2, [r1, r3]
	ldr     r1, [sp, #0xc]
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r7, [r1, r3]
	ldr     r1, [sp, #0x8]
	lsl     r1, r1, #4
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_225341a
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2253408
	mov     r0, #0xa5
	str     r0, [sp, #0x60]
	b       branch_225341a
@ 0x2253408

.thumb
branch_2253408: @ 2253408 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	.hword  0x1d92 @ add r2, r2, #0x6
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x60]
.thumb
branch_225341a: @ 225341a :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	bne     branch_225344a
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2253438
	mov     r0, #0xa5
	str     r0, [sp, #0x5c]
	b       branch_225344a
@ 0x2253438

.thumb
branch_2253438: @ 2253438 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	add     r2, r7, #0x6
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x5c]
.thumb
branch_225344a: @ 225344a :thumb
	ldr     r0, [sp, #0x60]
	mov     r1, #0xfa
	lsl     r0, r0, #4
	add     r0, r5, r0
	lsl     r1, r1, #2
	ldsb    r0, [r0, r1]
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x5c]
	lsl     r0, r0, #4
	add     r0, r5, r0
	ldsb    r0, [r0, r1]
	str     r0, [sp, #0x44]
.thumb
branch_2253462: @ 2253462 :thumb
	ldr     r1, [sp, #0x48]
	ldr     r0, [sp, #0x44]
	cmp     r1, r0
	beq     branch_225346c
	b       branch_22535d2
@ 0x225346c

.thumb
branch_225346c: @ 225346c :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	beq     branch_2253498
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_2253498
	cmp     r6, r4
	bcs     branch_2253482
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253482

.thumb
branch_2253482: @ 2253482 :thumb
	cmp     r6, r4
	bne     branch_22534d6
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22534d6
	mov     r0, #0x2
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253498

.thumb
branch_2253498: @ 2253498 :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	bne     branch_22534aa
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_22534aa
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22534aa

.thumb
branch_22534aa: @ 22534aa :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	beq     branch_22534bc
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	bne     branch_22534bc
	mov     r0, #0x0
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22534bc

.thumb
branch_22534bc: @ 22534bc :thumb
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	beq     branch_2253514
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2253514
	cmp     r6, r4
	bls     branch_22534d2
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22534d2

.thumb
branch_22534d2: @ 22534d2 :thumb
	cmp     r6, r4
	beq     branch_22534d8
.thumb
branch_22534d6: @ 22534d6 :thumb
	b       branch_22535da
@ 0x22534d8

.thumb
branch_22534d8: @ 22534d8 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22535da
	mov     r0, #0x2
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22534ea


.align 2


.word 0x2dcc @ 0x22534ec
.word 0x226eba8 @ 0x22534f0
.word 0x2db8 @ 0x22534f4
.word 0x2dac @ 0x22534f8
.word 0x2dd8 @ 0x22534fc
.word 0x310c @ 0x2253500
.word 0x2d90 @ 0x2253504
.word 0x2d8c @ 0x2253508
.word 0x21f0 @ 0x225350c
.word 0x30bc @ 0x2253510
.thumb
branch_2253514: @ 2253514 :thumb
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	beq     branch_2253526
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	bne     branch_2253526
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253526

.thumb
branch_2253526: @ 2253526 :thumb
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	bne     branch_2253538
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2253538
	mov     r0, #0x0
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253538

.thumb
branch_2253538: @ 2253538 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x64
	bne     branch_2253564
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x64
	bne     branch_2253564
	cmp     r6, r4
	bls     branch_225354e
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x225354e

.thumb
branch_225354e: @ 225354e :thumb
	cmp     r6, r4
	bne     branch_22535da
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22535da
	mov     r0, #0x2
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253564

.thumb
branch_2253564: @ 2253564 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x64
	bne     branch_2253576
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x64
	beq     branch_2253576
	mov     r0, #0x1
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253576

.thumb
branch_2253576: @ 2253576 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x64
	beq     branch_2253588
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x64
	bne     branch_2253588
	mov     r0, #0x0
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x2253588

.thumb
branch_2253588: @ 2253588 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x7
	lsl     r0, r0, #16
	tst     r0, r1
	beq     branch_22535b4
	cmp     r6, r4
	bls     branch_225359e
	mov     r0, #0x1
	str     r0, [sp, #0x64]
.thumb
branch_225359e: @ 225359e :thumb
	cmp     r6, r4
	bne     branch_22535da
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22535da
	mov     r0, #0x2
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22535b4

.thumb
branch_22535b4: @ 22535b4 :thumb
	cmp     r6, r4
	bcs     branch_22535bc
	mov     r0, #0x1
	str     r0, [sp, #0x64]
.thumb
branch_22535bc: @ 22535bc :thumb
	cmp     r6, r4
	bne     branch_22535da
	ldr     r0, [sp, #0x4]
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22535da
	mov     r0, #0x2
	str     r0, [sp, #0x64]
	b       branch_22535da
@ 0x22535d2

.thumb
branch_22535d2: @ 22535d2 :thumb
	cmp     r1, r0
	bge     branch_22535da
	mov     r0, #0x1
	str     r0, [sp, #0x64]
.thumb
branch_22535da: @ 22535da :thumb
	ldr     r0, [sp, #0x64]
	add     sp, #0x6c
	pop     {r4-r7,pc}
@ 0x22535e0


.incbin "./baserom/overlay/overlay_0016.bin", 0x184a0, 0x225366c - 0x22535e0


.thumb
Function_225366c: @ 225366c :thumb
	push    {r4-r6,lr}
	ldr     r0, [pc, #0x88] @ 0x22536f8, (=#0x2170)
	mov     r5, r1
	mov     r4, r2
	ldr     r2, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #28
	mov     r6, #0x0
	tst     r0, r2
	beq     branch_225369e
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x22536f8, (=#0x2170)
	mov     r1, r6
	str     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x64] @ 0x22536fc, (=#0x801fda49)
	tst     r0, r1
	bne     branch_22536f2
	mov     r6, #0x1
	b       branch_22536f2
@ 0x225369e

.thumb
branch_225369e: @ 225369e :thumb
	cmp     r2, #0x0
	beq     branch_22536f2
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x44] @ 0x2253700, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22536ec
	ldr     r1, [pc, #0x40] @ 0x2253704, (=#0x216c)
	ldr     r2, [pc, #0x38] @ 0x22536fc, (=#0x801fda49)
	ldr     r0, [r5, r1]
	tst     r2, r0
	beq     branch_22536ea
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r2, #0x2
	ldr     r1, [r5, r1]
	lsl     r2, r2, #22
	tst     r2, r1
	beq     branch_22536dc
	ldr     r2, [pc, #0x30] @ 0x2253708, (=#0x40008)
	tst     r2, r0
	bne     branch_22536ea
.thumb
branch_22536dc: @ 22536dc :thumb
	mov     r2, #0x1
	lsl     r2, r2, #28
	tst     r1, r2
	beq     branch_22536ec
	ldr     r1, [pc, #0x24] @ 0x225370c, (=#0x10001)
	tst     r0, r1
	beq     branch_22536ec
.thumb
branch_22536ea: @ 22536ea :thumb
	mov     r6, #0x1
.thumb
branch_22536ec: @ 22536ec :thumb
	ldr     r0, [pc, #0x8] @ 0x22536f8, (=#0x2170)
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_22536f2: @ 22536f2 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x22536f6


.align 2


.word 0x2170 @ 0x22536f8
.word 0x801fda49 @ 0x22536fc
.word 0x2d8c @ 0x2253700
.word 0x216c @ 0x2253704
.word 0x40008 @ 0x2253708
.word 0x10001 @ 0x225370c
.thumb
Function_2253710: @ 2253710 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [pc, #0x218] @ 0x2253930, (=#0x2174)
	mov     r4, r2
	ldr     r2, [r5, r0]
	mov     r1, #0x2
	lsl     r1, r1, #28
	mov     r3, r2
	mov     r6, #0x0
	tst     r3, r1
	beq     branch_2253746
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1fc] @ 0x2253930, (=#0x2174)
	mov     r1, r6
	str     r1, [r5, r0]
	sub     r0, #0x8
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1f4] @ 0x2253934, (=#0x801fda49)
	tst     r0, r1
	bne     branch_22537e6
	mov     r6, #0x1
	b       branch_225392a
@ 0x2253746

.thumb
branch_2253746: @ 2253746 :thumb
	lsr     r3, r1, #5
	tst     r3, r2
	beq     branch_225377a
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1d8] @ 0x2253930, (=#0x2174)
	mov     r1, r6
	str     r1, [r5, r0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2259ac0
	cmp     r0, #0x0
	bne     branch_22537e6
	ldr     r0, [pc, #0x1c8] @ 0x2253938, (=#0x216c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1c0] @ 0x2253934, (=#0x801fda49)
	tst     r0, r1
	bne     branch_22537e6
	mov     r6, #0x1
	b       branch_225392a
@ 0x225377a

.thumb
branch_225377a: @ 225377a :thumb
	lsr     r3, r1, #4
	tst     r3, r2
	beq     branch_22537bc
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1a4] @ 0x2253930, (=#0x2174)
	mov     r1, r6
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x19c] @ 0x225393c, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22537e6
	mov     r0, r5
	bl      Function_2259ac0
	cmp     r0, #0x0
	bne     branch_22537e6
	ldr     r0, [pc, #0x188] @ 0x2253938, (=#0x216c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x180] @ 0x2253934, (=#0x801fda49)
	tst     r0, r1
	bne     branch_22537e6
	mov     r6, #0x1
	b       branch_225392a
@ 0x22537bc

.thumb
branch_22537bc: @ 22537bc :thumb
	lsr     r3, r1, #1
	tst     r3, r2
	beq     branch_22537ec
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x160] @ 0x2253930, (=#0x2174)
	mov     r1, r6
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x15c] @ 0x225393c, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22537e8
.thumb
branch_22537e6: @ 22537e6 :thumb
	b       branch_225392a
@ 0x22537e8

.thumb
branch_22537e8: @ 22537e8 :thumb
	mov     r6, #0x1
	b       branch_225392a
@ 0x22537ec

.thumb
branch_22537ec: @ 22537ec :thumb
	lsr     r1, r1, #3
	tst     r1, r2
	beq     branch_2253878
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x20
	ldr     r0, [pc, #0x140] @ 0x2253940, (=#0x3044)
	bne     branch_2253810
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x13c] @ 0x2253944, (=#0x3e5)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #17
	lsr     r6, r0, #16
	b       branch_225381a
@ 0x2253810

.thumb
branch_2253810: @ 2253810 :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x12c] @ 0x2253944, (=#0x3e5)
	ldrb    r6, [r1, r0]
.thumb
branch_225381a: @ 225381a :thumb
	cmp     r6, #0x0
	bne     branch_2253822
	bl      Function_2022974
.thumb
branch_2253822: @ 2253822 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r6
	bge     branch_225383e
	ldr     r1, [pc, #0x114] @ 0x2253948, (=#0x213c)
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	lsl     r0, r0, #22
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_225383e: @ 225383e :thumb
	ldr     r2, [pc, #0xf0] @ 0x2253930, (=#0x2174)
	mov     r0, r5
	ldr     r2, [r5, r2]
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xe0] @ 0x2253930, (=#0x2174)
	mov     r0, #0x0
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x94
	ldr     r2, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0xdc] @ 0x225393c, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2253874
	mov     r0, r1
	sub     r0, #0x38
	ldr     r2, [r5, r0]
	ldr     r0, [pc, #0xdc] @ 0x225394c, (=#0xffbfffff)
	sub     r1, #0x38
	and     r0, r2
	str     r0, [r5, r1]
.thumb
branch_2253874: @ 2253874 :thumb
	mov     r6, #0x1
	b       branch_225392a
@ 0x2253878

.thumb
branch_2253878: @ 2253878 :thumb
	cmp     r2, #0x0
	beq     branch_22538fc
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x20
	ldr     r0, [pc, #0xb8] @ 0x2253940, (=#0x3044)
	bne     branch_225389a
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xb0] @ 0x2253944, (=#0x3e5)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #17
	lsr     r7, r0, #16
	b       branch_22538a4
@ 0x225389a

.thumb
branch_225389a: @ 225389a :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2253944, (=#0x3e5)
	ldrb    r7, [r1, r0]
.thumb
branch_22538a4: @ 22538a4 :thumb
	cmp     r7, #0x0
	bne     branch_22538ac
	bl      Function_2022974
.thumb
branch_22538ac: @ 22538ac :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, #0x64
	blx     Division
	cmp     r1, r7
	bge     branch_225392a
	ldr     r2, [pc, #0x70] @ 0x2253930, (=#0x2174)
	mov     r0, r5
	ldr     r2, [r5, r2]
	mov     r1, #0x2
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x64] @ 0x2253930, (=#0x2174)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x225393c, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225392a
	mov     r0, r5
	bl      Function_2259ac0
	cmp     r0, #0x0
	bne     branch_225392a
	ldr     r0, [pc, #0x48] @ 0x2253938, (=#0x216c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x40] @ 0x2253934, (=#0x801fda49)
	tst     r0, r1
	bne     branch_225392a
	mov     r6, #0x1
	b       branch_225392a
@ 0x22538fc

.thumb
branch_22538fc: @ 22538fc :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r2, [r5, r0]
	cmp     r2, #0x0
	beq     branch_225392a
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_225b5d0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x40] @ 0x2253950, (=#0x2178)
	mov     r1, r6
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x18] @ 0x225393c, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225392a
	mov     r6, #0x1
.thumb
branch_225392a: @ 225392a :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x225392e


.align 2


.word 0x2174 @ 0x2253930
.word 0x801fda49 @ 0x2253934
.word 0x216c @ 0x2253938
.word 0x2d8c @ 0x225393c
.word 0x3044 @ 0x2253940
.word 0x3e5 @ 0x2253944
.word 0x213c @ 0x2253948
.word 0xffbfffff @ 0x225394c
.word 0x2178 @ 0x2253950
.thumb
Function_2253954: @ 2253954 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	mov     r0, #0xff
	mov     r4, r1
	mov     r5, r2
	str     r0, [sp, #0xc]
	cmp     r3, #0x0
	beq     branch_2253970
	lsl     r0, r3, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x2b0] @ 0x2253c1c, (=#0x3e6)
	ldrh    r0, [r1, r0]
	b       branch_2253972
@ 0x2253970

.thumb
branch_2253970: @ 2253970 :thumb
	ldr     r0, [sp, #0x34]
.thumb
branch_2253972: @ 2253972 :thumb
	cmp     r0, #0x4
	bne     branch_2253a02
	mov     r0, r6
	bl      Function_223df1c
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	bl      Function_223df14
	bl      Function_2263ae4
	ldr     r1, [pc, #0x294] @ 0x2253c20, (=#0x217e)
	mov     r2, #0x0
	strb    r2, [r4, r1]
	ldrb    r1, [r4, r1]
	ldr     r2, [sp, #0x8]
	cmp     r1, r2
	bge     branch_22539f0
	mov     r2, #0x1
	mov     r5, r0
	and     r5, r2
.thumb
branch_225399e: @ 225399e :thumb
	ldr     r0, [pc, #0x284] @ 0x2253c24, (=#0x21ec)
	add     r1, r4, r1
	ldrb    r7, [r1, r0]
	mov     r0, #0xc0
	mul     r0, r7
	add     r1, r4, r0
	ldr     r0, [pc, #0x27c] @ 0x2253c28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22539de
	mov     r0, r6
	mov     r1, r7
	bl      Function_223df14
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	beq     branch_22539ca
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22539da
.thumb
branch_22539ca: @ 22539ca :thumb
	cmp     r5, #0x0
	bne     branch_22539de
	ldr     r0, [sp, #0x0]
	bl      Function_2263ae4
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22539de
.thumb
branch_22539da: @ 22539da :thumb
	str     r7, [sp, #0xc]
	b       branch_22539f0
@ 0x22539de

.thumb
branch_22539de: @ 22539de :thumb
	ldr     r0, [pc, #0x240] @ 0x2253c20, (=#0x217e)
	ldrb    r0, [r4, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x238] @ 0x2253c20, (=#0x217e)
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	blt     branch_225399e
.thumb
branch_22539f0: @ 22539f0 :thumb
	ldr     r1, [pc, #0x22c] @ 0x2253c20, (=#0x217e)
	ldr     r0, [sp, #0x8]
	ldrb    r2, [r4, r1]
	cmp     r2, r0
	bne     branch_22539fc
	b       branch_2253c8c
@ 0x22539fc

.thumb
branch_22539fc: @ 22539fc :thumb
	add     r0, r2, #0x1
	strb    r0, [r4, r1]
	b       branch_2253c8c
@ 0x2253a02

.thumb
branch_2253a02: @ 2253a02 :thumb
	cmp     r0, #0x8
	bne     branch_2253a52
	mov     r0, r6
	bl      Function_223df1c
	mov     r2, r0
	ldr     r0, [pc, #0x210] @ 0x2253c20, (=#0x217e)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	ldrb    r3, [r4, r0]
	cmp     r3, r2
	bge     branch_2253a44
	ldr     r7, [pc, #0x20c] @ 0x2253c28, (=#0x2d8c)
.thumb
branch_2253a1c: @ 2253a1c :thumb
	ldr     r1, [pc, #0x204] @ 0x2253c24, (=#0x21ec)
	add     r6, r4, r3
	ldrb    r1, [r6, r1]
	mov     r6, #0xc0
	mul     r6, r1
	add     r6, r4, r6
	ldr     r6, [r6, r7]
	cmp     r6, #0x0
	beq     branch_2253a36
	cmp     r1, r5
	beq     branch_2253a36
	str     r1, [sp, #0xc]
	b       branch_2253a44
@ 0x2253a36

.thumb
branch_2253a36: @ 2253a36 :thumb
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	ldr     r1, [pc, #0x1e0] @ 0x2253c20, (=#0x217e)
	ldrb    r3, [r4, r1]
	cmp     r3, r2
	blt     branch_2253a1c
.thumb
branch_2253a44: @ 2253a44 :thumb
	cmp     r3, r2
	beq     branch_2253b30
	ldr     r0, [pc, #0x1d4] @ 0x2253c20, (=#0x217e)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2253c8c
@ 0x2253a52

.thumb
branch_2253a52: @ 2253a52 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #8
	cmp     r0, r1
	bne     branch_2253aa0
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x1
	bne     branch_2253aa0
	mov     r0, r6
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2253a9c
	mov     r0, r6
	bl      Function_223f4bc
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	bne     branch_2253a9c
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e258
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x198] @ 0x2253c28, (=#0x2d8c)
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2253b30
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253a9c

.thumb
branch_2253a9c: @ 2253a9c :thumb
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253aa0

.thumb
branch_2253aa0: @ 2253aa0 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #10
	cmp     r0, r1
	bne     branch_2253abc
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x1
	bne     branch_2253abc
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_2257028
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253abc

.thumb
branch_2253abc: @ 2253abc :thumb
	cmp     r0, #0x80
	bne     branch_2253ace
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_2257028
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253ace

.thumb
branch_2253ace: @ 2253ace :thumb
	cmp     r0, #0x10
	beq     branch_2253ade
	cmp     r0, #0x20
	beq     branch_2253ade
	cmp     r0, #0x1
	beq     branch_2253ade
	cmp     r0, #0x40
	bne     branch_2253ae2
.thumb
branch_2253ade: @ 2253ade :thumb
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253ae2

.thumb
branch_2253ae2: @ 2253ae2 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r0, r1
	bne     branch_2253b06
	mov     r0, r6
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2253b02
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e258
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253b02

.thumb
branch_2253b02: @ 2253b02 :thumb
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253b06

.thumb
branch_2253b06: @ 2253b06 :thumb
	lsl     r1, r1, #1
	cmp     r0, r1
	bne     branch_2253b3a
	mov     r0, r6
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2253b36
	lsl     r0, r5, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x10c] @ 0x2253c2c, (=#0x21ac)
	ldr     r0, [r1, r0]
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x100] @ 0x2253c28, (=#0x2d8c)
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253b32
.thumb
branch_2253b30: @ 2253b30 :thumb
	b       branch_2253c8c
@ 0x2253b32

.thumb
branch_2253b32: @ 2253b32 :thumb
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253b36

.thumb
branch_2253b36: @ 2253b36 :thumb
	str     r5, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253b3a

.thumb
branch_2253b3a: @ 2253b3a :thumb
	cmp     r0, #0x2
	beq     branch_2253b44
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	bne     branch_2253c06
.thumb
branch_2253b44: @ 2253b44 :thumb
	mov     r0, r6
	bl      Function_223df0c
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e208
	mov     r7, r0
	mov     r1, #0x1
	eor     r7, r1
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_223e2a4
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_223e2a4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2253bee
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r1, r4, r0
	lsl     r0, r7, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2253ba0
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x90] @ 0x2253c28, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2253ba0
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253ba0

.thumb
branch_2253ba0: @ 2253ba0 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r0, r4, r2
	ldr     r2, [pc, #0x7c] @ 0x2253c28, (=#0x2d8c)
	ldr     r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_2253bd0
	ldr     r3, [sp, #0x18]
	mul     r1, r3
	add     r1, r4, r1
	ldr     r1, [r1, r2]
	cmp     r1, #0x0
	beq     branch_2253bd0
	mov     r0, r6
	bl      Function_223f4bc
	lsl     r0, r0, #31
	lsr     r1, r0, #29
	add     r0, sp, #0x14
	ldr     r0, [r0, r1]
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253bd0

.thumb
branch_2253bd0: @ 2253bd0 :thumb
	cmp     r0, #0x0
	beq     branch_2253bda
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253bda

.thumb
branch_2253bda: @ 2253bda :thumb
	ldr     r2, [sp, #0x18]
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r4, r0
	ldr     r0, [pc, #0x44] @ 0x2253c28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253c8c
	str     r2, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253bee

.thumb
branch_2253bee: @ 2253bee :thumb
	mov     r0, #0x1
	mov     r2, r5
	eor     r2, r0
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2253c28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253c8c
	str     r2, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253c06

.thumb
branch_2253c06: @ 2253c06 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_223e208
	mov     r1, #0x1
	eor     r0, r1
	str     r0, [sp, #0x4]
	lsl     r0, r5, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2253c2c, (=#0x21ac)
	b       branch_2253c30
@ 0x2253c1c

.word 0x3e6 @ 0x2253c1c
.word 0x217e @ 0x2253c20
.word 0x21ec @ 0x2253c24
.word 0x2d8c @ 0x2253c28
.word 0x21ac @ 0x2253c2c
.thumb
branch_2253c30: @ 2253c30 :thumb
	ldr     r7, [r1, r0]
	mov     r0, r6
	bl      Function_223df1c
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2253c60
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x3c] @ 0x2253c94, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2253c60
	str     r0, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253c60

.thumb
branch_2253c60: @ 2253c60 :thumb
	mov     r0, #0xc0
	mul     r0, r7
	add     r1, r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2253c94, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253c72
	str     r7, [sp, #0xc]
	b       branch_2253c8c
@ 0x2253c72

.thumb
branch_2253c72: @ 2253c72 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_2257028
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x10] @ 0x2253c94, (=#0x2d8c)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2253c8c
	str     r0, [sp, #0xc]
.thumb
branch_2253c8c: @ 2253c8c :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2253c92


.align 2


.word 0x2d8c @ 0x2253c94
.thumb
Function_2253c98: @ 2253c98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x6c]
	mov     r7, r2
	mov     r6, r3
	cmp     r0, #0xff
	beq     branch_2253cf2
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x60
	beq     branch_2253cf2
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x68
	beq     branch_2253cf2
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223e208
	mov     r2, r0
	mov     r1, #0x1
	mov     r0, #0x71
	eor     r2, r1
	lsl     r0, r0, #2
	add     r1, r5, r0
	lsl     r0, r2, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2253cf4
	lsl     r0, r0, #9
	lsr     r1, r0, #30
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x13c] @ 0x2253e28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253cf4
.thumb
branch_2253cf2: @ 2253cf2 :thumb
	b       branch_2253e24
@ 0x2253cf4

.thumb
branch_2253cf4: @ 2253cf4 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r7
	mov     r3, r6
	bl      Function_225b910
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2253d10
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x120] @ 0x2253e2c, (=#0x3e2)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
.thumb
branch_2253d10: @ 2253d10 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_223df1c
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0xd
	bne     branch_2253da0
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x10c] @ 0x2253e30, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253d2e
	cmp     r0, #0x2
	bne     branch_2253da0
.thumb
branch_2253d2e: @ 2253d2e :thumb
	ldr     r0, [pc, #0x104] @ 0x2253e34, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_2253da0
	mov     r0, #0x1f
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x9
	mov     r3, r7
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_2253da0
	ldr     r0, [sp, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2253d80
.thumb
branch_2253d54: @ 2253d54 :thumb
	ldr     r0, [pc, #0xe0] @ 0x2253e38, (=#0x21ec)
	add     r1, r5, r6
	ldrb    r4, [r1, r0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x1f
	bne     branch_2253d78
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xb8] @ 0x2253e28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253d78
	cmp     r7, r4
	bne     branch_2253d80
.thumb
branch_2253d78: @ 2253d78 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2253d54
.thumb
branch_2253d80: @ 2253d80 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r4, r0
	beq     branch_2253e24
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r3, r5, r0
	mov     r0, #0x1c
	mov     r2, r4
	mul     r2, r0
	ldr     r1, [r3, r2]
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r3, r2]
	add     sp, #0x10
	str     r4, [r5, #0x6c]
	pop     {r3-r7,pc}
@ 0x2253da0

.thumb
branch_2253da0: @ 2253da0 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0xb
	bne     branch_2253e24
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x84] @ 0x2253e30, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253db6
	cmp     r0, #0x2
	bne     branch_2253e24
.thumb
branch_2253db6: @ 2253db6 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2253e34, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_2253e24
	mov     r0, #0x72
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x9
	mov     r3, r7
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_2253e24
	ldr     r0, [sp, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2253e08
.thumb
branch_2253ddc: @ 2253ddc :thumb
	ldr     r0, [pc, #0x58] @ 0x2253e38, (=#0x21ec)
	add     r1, r5, r6
	ldrb    r4, [r1, r0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x72
	bne     branch_2253e00
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x30] @ 0x2253e28, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2253e00
	cmp     r7, r4
	bne     branch_2253e08
.thumb
branch_2253e00: @ 2253e00 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2253ddc
.thumb
branch_2253e08: @ 2253e08 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r4, r0
	beq     branch_2253e24
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r3, r5, r0
	mov     r0, #0x1c
	mov     r2, r4
	mul     r2, r0
	ldr     r1, [r3, r2]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r3, r2]
	str     r4, [r5, #0x6c]
.thumb
branch_2253e24: @ 2253e24 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2253e28

.word 0x2d8c @ 0x2253e28
.word 0x3e2 @ 0x2253e2c
.word 0x3e6 @ 0x2253e30
.word 0x213c @ 0x2253e34
.word 0x21ec @ 0x2253e38
.thumb
Function_2253e3c: @ 2253e3c :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x78] @ 0x2253eb8, (=#0x216c)
	mov     r4, r1
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x74] @ 0x2253ebc, (=#0x801fda49)
	mov     r2, #0x0
	tst     r0, r1
	bne     branch_2253e7a
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r3, [r4, #0x6c]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r3, [r1, r0]
	lsl     r5, r3, #30
	lsr     r5, r5, #31
	beq     branch_2253e7a
	mov     r2, #0x2
	bic     r3, r2
	str     r3, [r1, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xb4
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	mov     r2, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
.thumb
branch_2253e7a: @ 2253e7a :thumb
	ldr     r0, [pc, #0x3c] @ 0x2253eb8, (=#0x216c)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x3c] @ 0x2253ebc, (=#0x801fda49)
	tst     r0, r1
	bne     branch_2253eb2
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r3, [r4, #0x6c]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r3, [r1, r0]
	lsl     r5, r3, #29
	lsr     r5, r5, #31
	beq     branch_2253eb2
	mov     r2, #0x4
	bic     r3, r2
	str     r3, [r1, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xb4
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	mov     r2, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
.thumb
branch_2253eb2: @ 2253eb2 :thumb
	mov     r0, r2
	pop     {r3-r5,pc}
@ 0x2253eb6


.align 2


.word 0x216c @ 0x2253eb8
.word 0x801fda49 @ 0x2253ebc
.thumb
Function_2253ec0: @ 2253ec0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, r2
	mov     r0, #0xc0
	mov     r5, r1
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2253eec, (=#0x2db8)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2253ee0
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225b830
.thumb
branch_2253ee0: @ 2253ee0 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_22662fc
	pop     {r4-r6,pc}
@ 0x2253eec

.word 0x2db8 @ 0x2253eec
.thumb
Function_2253ef0: @ 2253ef0 :thumb
	push    {r4,r5}
	ldr     r0, [pc, #0x24] @ 0x2253f18, (=#0x2db0)
	mov     r4, r2
	add     r5, r1, r0
	mov     r0, #0xc0
	mul     r4, r0
	mov     r0, #0x1
	ldr     r3, [r5, r4]
	lsl     r0, r0, #12
	orr     r0, r3
	str     r0, [r5, r4]
	ldr     r0, [pc, #0x14] @ 0x2253f1c, (=#0x3044)
	lsl     r2, r2, #2
	ldr     r3, [r1, r0]
	add     r1, r1, r2
	add     r0, #0x8
	str     r3, [r1, r0]
	pop     {r4,r5}
	bx      lr
@ 0x2253f16


.align 2


.word 0x2db0 @ 0x2253f18
.word 0x3044 @ 0x2253f1c
.thumb
Function_2253f20: @ 2253f20 :thumb
	push    {r4,r5}
	ldr     r4, [pc, #0x40] @ 0x2253f64, (=#0x2db0)
	mov     r3, r2
	mov     r0, #0xc0
	mul     r3, r0
	add     r0, r1, r4
	ldr     r5, [r0, r3]
	ldr     r2, [pc, #0x38] @ 0x2253f68, (=#0xffffefff)
	and     r2, r5
	str     r2, [r0, r3]
	ldr     r5, [r0, r3]
	ldr     r2, [pc, #0x34] @ 0x2253f6c, (=#0xfffffcff)
	and     r2, r5
	str     r2, [r0, r3]
	mov     r0, r4
	add     r0, #0x10
	add     r5, r1, r0
	ldr     r2, [r5, r3]
	ldr     r0, [pc, #0x28] @ 0x2253f70, (=#0xdffbff3f)
	add     r4, #0x18
	and     r0, r2
	str     r0, [r5, r3]
	add     r2, r1, r4
	ldr     r1, [r2, r3]
	ldr     r0, [pc, #0x20] @ 0x2253f74, (=#0xfffc7fff)
	and     r0, r1
	str     r0, [r2, r3]
	ldr     r1, [r2, r3]
	ldr     r0, [pc, #0x1c] @ 0x2253f78, (=#0xffe3ffff)
	and     r0, r1
	str     r0, [r2, r3]
	pop     {r4,r5}
	bx      lr
@ 0x2253f62


.align 2


.word 0x2db0 @ 0x2253f64
.word 0xffffefff @ 0x2253f68
.word 0xfffffcff @ 0x2253f6c
.word 0xdffbff3f @ 0x2253f70
.word 0xfffc7fff @ 0x2253f74
.word 0xffe3ffff @ 0x2253f78
.thumb
Function_2253f7c: @ 2253f7c :thumb
	mov     r2, #0xc0
	mul     r2, r1
	add     r1, r0, r2
	ldr     r0, [pc, #0x44] @ 0x2253fc8, (=#0x2dac)
	ldr     r0, [r1, r0]
	mov     r1, #0x7
	tst     r1, r0
	beq     branch_2253f90
	mov     r0, #0x1
	bx      lr
@ 0x2253f90

.thumb
branch_2253f90: @ 2253f90 :thumb
	mov     r1, #0x8
	tst     r1, r0
	beq     branch_2253f9a
	mov     r0, #0x2
	bx      lr
@ 0x2253f9a

.thumb
branch_2253f9a: @ 2253f9a :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_2253fa4
	mov     r0, #0x3
	bx      lr
@ 0x2253fa4

.thumb
branch_2253fa4: @ 2253fa4 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_2253fae
	mov     r0, #0x4
	bx      lr
@ 0x2253fae

.thumb
branch_2253fae: @ 2253fae :thumb
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_2253fb8
	mov     r0, #0x5
	bx      lr
@ 0x2253fb8

.thumb
branch_2253fb8: @ 2253fb8 :thumb
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_2253fc2
	mov     r0, #0x2
	bx      lr
@ 0x2253fc2

.thumb
branch_2253fc2: @ 2253fc2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2253fc6


.align 2


.word 0x2dac @ 0x2253fc8
.thumb
Function_2253fcc: @ 2253fcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r7, r1
	bl      Function_223df0c
	mov     r1, #0x84
	tst     r1, r0
	beq     branch_2253fe4
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2253fe4

.thumb
branch_2253fe4: @ 2253fe4 :thumb
	mov     r1, #0x1
	mov     r2, r0
	tst     r2, r1
	bne     branch_2253ff2
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2253ff2

.thumb
branch_2253ff2: @ 2253ff2 :thumb
	mov     r2, #0x2
	tst     r0, r2
	beq     branch_2253ffe
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2253ffe

.thumb
branch_2253ffe: @ 2253ffe :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223e0d8
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_225400a: @ 225400a :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x4
	bls     branch_2254012
	b       branch_22541a8
@ 0x2254012

.thumb
branch_2254012: @ 2254012 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r1, #1
	lsl     r4, r2, #2
	lsl     r0, r1, #4
	lsl     r0, r1, #6
	ldr     r0, [pc, #0x18c] @ 0x22541b8, (=#0x2e7c)
	ldrb    r0, [r7, r0]
	cmp     r0, #0x1
	bne     branch_2254064
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r1, [r7, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_2254064
	ldr     r0, [sp, #0x8]
	mov     r1, #0xd
	mov     r2, #0x5
	bl      Function_2079280
	cmp     r0, #0x0
	beq     branch_2254064
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r7, r1]
	mov     r0, #0x20
	orr     r0, r2
	str     r0, [r7, r1]
	mov     r0, #0x13
	mov     r1, #0xd
	lsl     r0, r0, #4
	str     r1, [r7, r0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2254064

.thumb
branch_2254064: @ 2254064 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_22541a8
@ 0x225406c


.incbin "./baserom/overlay/overlay_0016.bin", 0x18f2c, 0x22541a8 - 0x225406c


.thumb
branch_22541a8: @ 22541a8 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x4
	beq     branch_22541b0
	b       branch_225400a
@ 0x22541b0

.thumb
branch_22541b0: @ 22541b0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22541b6


.align 2


.word 0x2e7c @ 0x22541b8

.incbin "./baserom/overlay/overlay_0016.bin", 0x1907c, 0x22541c4 - 0x22541bc


.thumb
Function_22541c4: @ 22541c4 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0xdc] @ 0x22542a4, (=#0x2144)
	mov     r5, r0
	mov     r4, #0x0
	mov     r0, r1
	str     r4, [r5, r1]
	mov     r2, #0x1
	add     r0, #0xc
	str     r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x8
	str     r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r4, [r5, r0]
	mov     r0, r1
	mov     r2, #0xa
	add     r0, #0x14
	str     r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x1c
	str     r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x20
	str     r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x28
	str     r4, [r5, r0]
	mov     r0, #0xff
	mov     r2, r1
	str     r0, [r5, #0x74]
	add     r2, #0x2c
	str     r4, [r5, r2]
	mov     r2, r1
	add     r2, #0x30
	str     r4, [r5, r2]
	mov     r2, r1
	add     r2, #0x34
	str     r4, [r5, r2]
	mov     r2, r5
	add     r2, #0x88
	str     r4, [r2, #0x0]
	mov     r2, r5
	add     r2, #0x8c
	str     r4, [r2, #0x0]
	mov     r2, r5
	add     r2, #0x94
	str     r0, [r2, #0x0]
	mov     r0, r1
	add     r0, #0x38
	strb    r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x39
	strb    r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x3a
	strb    r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x3c
	str     r4, [r5, r0]
	mov     r0, r1
	str     r4, [r5, #0x38]
	add     r0, #0x40
	str     r4, [r5, r0]
	mov     r0, r1
	add     r0, #0x44
	str     r4, [r5, r0]
	str     r4, [r5, #0x10]
	str     r4, [r5, #0x18]
	str     r4, [r5, #0x20]
	str     r4, [r5, #0x28]
	str     r4, [r5, #0x30]
	str     r4, [r5, #0x3c]
	str     r4, [r5, #0x40]
	str     r4, [r5, #0x48]
	str     r4, [r5, #0x4c]
	str     r4, [r5, #0x50]
	mov     r0, r1
	str     r4, [r5, #0x54]
	sub     r0, #0x8
	ldr     r2, [r5, r0]
	ldr     r0, [pc, #0x40] @ 0x22542a8, (=#0xff800000)
	mov     r7, #0x6
	and     r2, r0
	mov     r0, r1
	sub     r0, #0x8
	str     r2, [r5, r0]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r2, [r5, r0]
	ldr     r0, [pc, #0x34] @ 0x22542ac, (=#0xfffffea1)
	and     r2, r0
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r5, r0]
	ldr     r0, [pc, #0x30] @ 0x22542b0, (=#0x3120)
	strb    r4, [r5, r0]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r6, r5, r0
.thumb
branch_2254288: @ 2254288 :thumb
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, #0x1c
	blx     Function_20c4bb8
	add     r1, r5, r4
	ldr     r0, [pc, #0x1c] @ 0x22542b4, (=#0x21a4)
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x1c
	strb    r7, [r1, r0]
	cmp     r4, #0x4
	blt     branch_2254288
	pop     {r3-r7,pc}
@ 0x22542a2


.align 2


.word 0x2144 @ 0x22542a4
.word 0xff800000 @ 0x22542a8
.word 0xfffffea1 @ 0x22542ac
.word 0x3120 @ 0x22542b0
.word 0x21a4 @ 0x22542b4

.incbin "./baserom/overlay/overlay_0016.bin", 0x19178, 0x225433c - 0x22542b8


.thumb
Function_225433c: @ 225433c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x338] @ 0x2254680, (=#0x2dc8)
	ldr     r0, [sp, #0x4]
	mov     r4, r2
	add     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r4
	add     r5, r1, r0
	str     r5, [sp, #0x14]
	add     r3, sp, #0x20
	mov     r2, #0x7
.thumb
branch_2254358: @ 2254358 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2254358
	ldr     r0, [sp, #0x0]
	bl      Function_223df1c
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	ldr     r1, [sp, #0x4]
	lsl     r2, r4, #4
	add     r1, r1, r2
	ldr     r2, [pc, #0x30c] @ 0x2254684, (=#0x21a8)
	mov     r0, #0x27
	str     r0, [r1, r2]
	ldr     r1, [sp, #0x4]
	sub     r2, #0x6c
	ldr     r1, [r1, r2]
	add     r0, #0xd9
	tst     r0, r1
	bne     branch_2254416
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22543f2
	ldr     r1, [sp, #0x4]
	ldr     r2, [pc, #0x2f8] @ 0x2254688, (=#0x2dcc)
	mov     r0, r1
	add     r2, r0, r2
	mov     r0, #0x18
	mov     r12, r0
	mov     r7, #0x3
.thumb
branch_225439a: @ 225439a :thumb
	ldr     r0, [pc, #0x2f0] @ 0x225468c, (=#0x2db0)
	ldr     r3, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #26
	tst     r0, r3
	beq     branch_22543bc
	ldr     r0, [r2, #0x0]
	lsl     r0, r0, #22
	lsr     r0, r0, #30
	cmp     r4, r0
	bne     branch_22543bc
	ldr     r0, [pc, #0x2d8] @ 0x225468c, (=#0x2db0)
	ldr     r3, [r1, r0]
	ldr     r0, [pc, #0x2d8] @ 0x2254690, (=#0xfbffffff)
	and     r3, r0
	ldr     r0, [pc, #0x2d0] @ 0x225468c, (=#0x2db0)
	str     r3, [r1, r0]
.thumb
branch_22543bc: @ 22543bc :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r3, [r1, r0]
	mov     r0, #0x18
	tst     r0, r3
	beq     branch_22543e8
	ldr     r0, [r2, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	cmp     r4, r0
	bne     branch_22543e8
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r3, r12
	bic     r0, r3
	mov     r3, #0xb7
	lsl     r3, r3, #6
	str     r0, [r1, r3]
	ldr     r0, [r2, #0x0]
	bic     r0, r7
	str     r0, [r2, #0x0]
.thumb
branch_22543e8: @ 22543e8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r1, #0xc0
	add     r2, #0xc0
	cmp     r5, r6
	blt     branch_225439a
.thumb
branch_22543f2: @ 22543f2 :thumb
	mov     r0, #0xc0
	mul     r0, r4
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	mov     r0, #0x0
	add     r1, r2, r1
	ldr     r2, [pc, #0x288] @ 0x225468c, (=#0x2db0)
	str     r0, [r1, r2]
	ldr     r1, [sp, #0x4]
	add     r2, #0x10
	add     r2, r1, r2
	ldr     r1, [sp, #0xc]
	add     r1, r2, r1
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	str     r0, [r2, r1]
	b       branch_225448e
@ 0x2254416

.thumb
branch_2254416: @ 2254416 :thumb
	mov     r0, #0xc0
	mul     r0, r4
	str     r0, [sp, #0xc]
	ldr     r1, [pc, #0x26c] @ 0x225468c, (=#0x2db0)
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	add     r0, r0, r1
	ldr     r3, [r0, r2]
	ldr     r2, [pc, #0x26c] @ 0x2254694, (=#0x15100007)
	and     r3, r2
	ldr     r2, [sp, #0xc]
	str     r3, [r0, r2]
	mov     r2, r1
	ldr     r0, [sp, #0x4]
	add     r2, #0x10
	add     r0, r0, r2
	ldr     r2, [sp, #0xc]
	add     r2, r0, r2
	str     r2, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r0, r2]
	ldr     r2, [pc, #0x254] @ 0x2254698, (=#0xfa3843f)
	and     r3, r2
	ldr     r2, [sp, #0xc]
	str     r3, [r0, r2]
	mov     r2, #0x0
	cmp     r6, #0x0
	ble     branch_225448e
	ldr     r0, [sp, #0x4]
	add     r1, #0x1c
	mov     r3, r0
	add     r1, r3, r1
	mov     r7, #0x18
.thumb
branch_2254458: @ 2254458 :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #6
	ldr     r5, [r0, r3]
	mov     r3, #0x18
	tst     r3, r5
	beq     branch_2254484
	ldr     r3, [r1, #0x0]
	lsl     r3, r3, #30
	lsr     r3, r3, #30
	cmp     r4, r3
	bne     branch_2254484
	mov     r3, #0xb7
	lsl     r3, r3, #6
	ldr     r5, [r0, r3]
	bic     r5, r7
	str     r5, [r0, r3]
	ldr     r5, [r0, r3]
	mov     r3, #0x10
	orr     r5, r3
	mov     r3, #0xb7
	lsl     r3, r3, #6
	str     r5, [r0, r3]
.thumb
branch_2254484: @ 2254484 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0xc0
	add     r1, #0xc0
	cmp     r2, r6
	blt     branch_2254458
.thumb
branch_225448e: @ 225448e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r6, #0x0
	ble     branch_22544f6
	ldr     r5, [sp, #0x4]
	ldr     r1, [pc, #0x1ec] @ 0x2254688, (=#0x2dcc)
	mov     r0, r5
	add     r7, r0, r1
.thumb
branch_225449e: @ 225449e :thumb
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [pc, #0x1e4] @ 0x225468c, (=#0x2db0)
	lsl     r0, r0, #16
	ldr     r1, [r5, r1]
	tst     r0, r1
	beq     branch_22544c6
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [pc, #0x1d4] @ 0x225468c, (=#0x2db0)
	lsl     r2, r0, #16
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r1, [r5, r1]
	eor     r0, r2
	and     r1, r0
	ldr     r0, [pc, #0x1c8] @ 0x225468c, (=#0x2db0)
	str     r1, [r5, r0]
.thumb
branch_22544c6: @ 22544c6 :thumb
	ldr     r0, [pc, #0x1c4] @ 0x225468c, (=#0x2db0)
	ldr     r1, [r5, r0]
	mov     r0, #0xe
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_22544e8
	ldr     r0, [r7, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	cmp     r4, r0
	bne     branch_22544e8
	ldr     r0, [pc, #0x1ac] @ 0x225468c, (=#0x2db0)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1b8] @ 0x225469c, (=#0xffff1fff)
	and     r1, r0
	ldr     r0, [pc, #0x1a4] @ 0x225468c, (=#0x2db0)
	str     r1, [r5, r0]
.thumb
branch_22544e8: @ 22544e8 :thumb
	ldr     r0, [sp, #0x8]
	add     r5, #0xc0
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0xc0
	str     r0, [sp, #0x8]
	cmp     r0, r6
	blt     branch_225449e
.thumb
branch_22544f6: @ 22544f6 :thumb
	mov     r2, #0x0
	mov     r1, r2
.thumb
branch_22544fa: @ 22544fa :thumb
	ldr     r0, [sp, #0x14]
	strb    r1, [r0, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x38
	bcc     branch_22544fa
	ldr     r1, [pc, #0x198] @ 0x22546a0, (=#0x213c)
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, r1]
	mov     r0, #0x1
	lsl     r0, r0, #8
	tst     r0, r1
	beq     branch_22545ae
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x38]
	add     r0, r1, r0
	ldr     r1, [pc, #0x188] @ 0x22546a4, (=#0x2de0)
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x4]
	sub     r1, #0x14
	add     r0, r0, r1
	ldr     r1, [sp, #0xc]
	mov     r2, #0x3
	ldr     r1, [r0, r1]
	bic     r1, r2
	ldr     r2, [sp, #0x24]
	lsl     r2, r2, #30
	lsr     r3, r2, #30
	mov     r2, #0x3
	and     r2, r3
	orr     r2, r1
	ldr     r1, [sp, #0xc]
	str     r2, [r0, r1]
	ldr     r3, [sp, #0x20]
	ldr     r1, [sp, #0x14]
	lsl     r3, r3, #17
	lsr     r3, r3, #30
	lsl     r3, r3, #30
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0x15c] @ 0x22546a8, (=#0xffff9fff)
	lsr     r3, r3, #17
	and     r1, r2
	orr     r3, r1
	ldr     r1, [sp, #0x14]
	str     r3, [r1, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r3, [r0, r1]
	asr     r1, r2, #5
	ldr     r2, [sp, #0x24]
	and     r1, r3
	lsl     r2, r2, #22
	lsr     r2, r2, #30
	lsl     r2, r2, #30
	lsr     r2, r2, #22
	orr     r2, r1
	ldr     r1, [sp, #0xc]
	str     r2, [r0, r1]
	ldr     r2, [r0, r1]
	ldr     r1, [pc, #0x12c] @ 0x225469c, (=#0xffff1fff)
	and     r1, r2
	ldr     r2, [sp, #0x24]
	lsl     r2, r2, #16
	lsr     r2, r2, #29
	lsl     r2, r2, #29
	lsr     r2, r2, #16
	orr     r2, r1
	ldr     r1, [sp, #0xc]
	str     r2, [r0, r1]
	ldr     r3, [sp, #0x24]
	ldr     r1, [r0, r1]
	lsl     r3, r3, #10
	ldr     r2, [pc, #0x120] @ 0x22546ac, (=#0xffc7ffff)
	lsr     r3, r3, #29
	lsl     r3, r3, #29
	and     r1, r2
	lsr     r3, r3, #10
	orr     r3, r1
	ldr     r1, [sp, #0xc]
	str     r3, [r0, r1]
	ldr     r3, [r0, r1]
	asr     r1, r2, #3
	ldr     r2, [sp, #0x24]
	and     r1, r3
	lsl     r2, r2, #13
	lsr     r2, r2, #29
	lsl     r2, r2, #29
	lsr     r2, r2, #13
	orr     r2, r1
	ldr     r1, [sp, #0xc]
	str     r2, [r0, r1]
.thumb
branch_22545ae: @ 22545ae :thumb
	mov     r0, #0xc0
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r3, #0x90
	ldr     r2, [r2, r3]
	mov     r1, r4
	ldr     r3, [sp, #0x4]
	mul     r1, r0
	mov     r5, r0
	add     r1, r3, r1
	ldr     r3, [pc, #0xec] @ 0x22546b0, (=#0x2dd4)
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, r3]
	ldr     r2, [sp, #0x4]
	add     r5, #0x90
	ldr     r2, [r2, r5]
	add     r0, #0x90
	add     r5, r2, #0x1
	add     r2, r3, #0x4
	str     r5, [r1, r2]
	ldr     r1, [sp, #0x14]
	lsl     r7, r4, #1
	ldr     r2, [r1, #0x0]
	ldr     r1, [pc, #0xd4] @ 0x22546b4, (=#0xbfffffff)
	mov     r3, #0x0
	and     r1, r2
	ldr     r2, [sp, #0x4]
	mov     r5, #0xff
	ldr     r0, [r2, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #31
	lsr     r0, r0, #1
	orr     r1, r0
	ldr     r0, [sp, #0x14]
	str     r1, [r0, #0x0]
	mov     r0, r2
	add     r2, r0, r7
	ldr     r0, [pc, #0xbc] @ 0x22546b8, (=#0x305c)
	mov     r1, r0
	strh    r3, [r2, r0]
	add     r1, #0x8
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x10
	strh    r5, [r2, r1]
	mov     r1, r0
	add     r1, #0x18
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x20
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x28
	strh    r3, [r2, r1]
	ldr     r1, [sp, #0x4]
	lsl     r5, r4, #3
	add     r1, r1, r5
	mov     r5, r0
	add     r5, #0x30
	strh    r3, [r1, r5]
	mov     r5, r0
	add     r5, #0x32
	strh    r3, [r1, r5]
	mov     r5, r0
	add     r5, #0x34
	strh    r3, [r1, r5]
	mov     r5, r0
	add     r5, #0x36
	strh    r3, [r1, r5]
	mov     r1, r0
	add     r1, #0x50
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x68
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x70
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x78
	strh    r3, [r2, r1]
	add     r0, #0x80
	strh    r3, [r2, r0]
	mov     r0, r4
	bl      Function_20787cc
	mov     r1, #0x6
	lsl     r3, r0, #8
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r2, [sp, #0x4]
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	eor     r0, r3
	and     r2, r0
	ldr     r0, [sp, #0x4]
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #22
	tst     r0, r1
	beq     branch_22546d6
	ldr     r0, [pc, #0x3c] @ 0x22546bc, (=#0x2d42)
	b       branch_22546c0
@ 0x2254680

.word 0x2dc8 @ 0x2254680
.word 0x21a8 @ 0x2254684
.word 0x2dcc @ 0x2254688
.word 0x2db0 @ 0x225468c
.word 0xfbffffff @ 0x2254690
.word 0x15100007 @ 0x2254694
.word 0xfa3843f @ 0x2254698
.word 0xffff1fff @ 0x225469c
.word 0x213c @ 0x22546a0
.word 0x2de0 @ 0x22546a4
.word 0xffff9fff @ 0x22546a8
.word 0xffc7ffff @ 0x22546ac
.word 0x2dd4 @ 0x22546b0
.word 0xbfffffff @ 0x22546b4
.word 0x305c @ 0x22546b8
.word 0x2d42 @ 0x22546bc
.thumb
branch_22546c0: @ 22546c0 :thumb
	ldr     r1, [sp, #0x4]
	add     r5, r1, r0
	ldr     r1, [sp, #0xc]
	ldrh    r3, [r5, r1]
	add     r1, r0, #0x2
	ldr     r0, [sp, #0x4]
	add     r2, r0, r1
	ldr     r0, [sp, #0xc]
	ldrh    r1, [r2, r0]
	strh    r1, [r5, r0]
	strh    r3, [r2, r0]
.thumb
branch_22546d6: @ 22546d6 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_225471a
	ldr     r0, [sp, #0x4]
	str     r0, [sp, #0x18]
	add     r7, r0, r7
.thumb
branch_22546e2: @ 22546e2 :thumb
	cmp     r5, r4
	beq     branch_2254706
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_223e208
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e208
	ldr     r1, [sp, #0x1c]
	cmp     r1, r0
	beq     branch_2254706
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x38] @ 0x225473c, (=#0x3084)
	mov     r2, #0x0
	strh    r2, [r1, r0]
.thumb
branch_2254706: @ 2254706 :thumb
	ldr     r0, [pc, #0x38] @ 0x2254740, (=#0x308c)
	mov     r1, #0x0
	strh    r1, [r7, r0]
	ldr     r0, [sp, #0x18]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x18]
	add     r7, #0x8
	cmp     r5, r6
	blt     branch_22546e2
.thumb
branch_225471a: @ 225471a :thumb
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b80c
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b824
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b830
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x225473c

.word 0x3084 @ 0x225473c
.word 0x308c @ 0x2254740
.thumb
Function_2254744: @ 2254744 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r5, r2
	bl      Function_223df1c
	str     r0, [sp, #0xc]
	mov     r0, #0xc0
	mul     r0, r5
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r3, r1, r0
	ldr     r0, [pc, #0x208] @ 0x2254968, (=#0x2d58)
	mov     r2, #0x0
	mov     r1, #0x6
.thumb
branch_2254764: @ 2254764 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r3, r0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x8
	blt     branch_2254764
	mov     r0, #0xc0
	mov     r1, r5
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	add     r2, r0, r1
	ldr     r1, [pc, #0x1f0] @ 0x225496c, (=#0x2db0)
	mov     r0, r1
	str     r7, [r2, r1]
	add     r0, #0x10
	str     r7, [r2, r0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_225480a
	ldr     r4, [sp, #0x4]
	add     r1, #0x1c
	mov     r0, r4
	add     r6, r0, r1
.thumb
branch_2254792: @ 2254792 :thumb
	ldr     r0, [pc, #0x1d8] @ 0x225496c, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #26
	tst     r0, r1
	beq     branch_22547b4
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #22
	lsr     r0, r0, #30
	cmp     r5, r0
	bne     branch_22547b4
	ldr     r0, [pc, #0x1c0] @ 0x225496c, (=#0x2db0)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x1c0] @ 0x2254970, (=#0xfbffffff)
	and     r1, r0
	ldr     r0, [pc, #0x1b8] @ 0x225496c, (=#0x2db0)
	str     r1, [r4, r0]
.thumb
branch_22547b4: @ 22547b4 :thumb
	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0x1b0] @ 0x225496c, (=#0x2db0)
	lsl     r0, r0, #16
	ldr     r1, [r4, r1]
	tst     r0, r1
	beq     branch_22547dc
	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0x1a0] @ 0x225496c, (=#0x2db0)
	lsl     r2, r0, #16
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r1, [r4, r1]
	eor     r0, r2
	and     r1, r0
	ldr     r0, [pc, #0x190] @ 0x225496c, (=#0x2db0)
	str     r1, [r4, r0]
.thumb
branch_22547dc: @ 22547dc :thumb
	ldr     r0, [pc, #0x18c] @ 0x225496c, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0xe
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_22547fe
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	cmp     r5, r0
	bne     branch_22547fe
	ldr     r0, [pc, #0x178] @ 0x225496c, (=#0x2db0)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x17c] @ 0x2254974, (=#0xffff1fff)
	and     r1, r0
	ldr     r0, [pc, #0x170] @ 0x225496c, (=#0x2db0)
	str     r1, [r4, r0]
.thumb
branch_22547fe: @ 22547fe :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0xc0
	add     r6, #0xc0
	cmp     r7, r0
	blt     branch_2254792
.thumb
branch_225480a: @ 225480a :thumb
	ldr     r1, [pc, #0x16c] @ 0x2254978, (=#0x2dc8)
	ldr     r0, [sp, #0x4]
	add     r1, r0, r1
	ldr     r0, [sp, #0x8]
	add     r6, r1, r0
	mov     r1, #0x0
	mov     r0, r1
.thumb
branch_2254818: @ 2254818 :thumb
	strb    r0, [r6, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x38
	bcc     branch_2254818
	mov     r2, #0x75
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	add     r2, r1, r2
	lsl     r1, r5, #6
	add     r1, r2, r1
	mov     r4, #0x0
.thumb
branch_225482e: @ 225482e :thumb
	strb    r4, [r1, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x40
	bcc     branch_225482e
	mov     r2, #0xc0
	mov     r3, r2
	ldr     r0, [sp, #0x4]
	add     r3, #0x90
	ldr     r0, [r0, r3]
	mov     r1, r5
	ldr     r3, [sp, #0x4]
	mul     r1, r2
	add     r3, r3, r1
	mov     r1, r2
	ldr     r7, [pc, #0x130] @ 0x225497c, (=#0x2dd4)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r3, r7]
	ldr     r0, [sp, #0x4]
	add     r1, #0x90
	ldr     r0, [r0, r1]
	add     r1, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r3, r1]
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x120] @ 0x2254980, (=#0xbfffffff)
	add     r2, #0x90
	and     r0, r1
	ldr     r1, [sp, #0x4]
	mov     r3, #0xff
	ldr     r1, [r1, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #31
	lsr     r1, r1, #1
	orr     r0, r1
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x4]
	lsl     r6, r5, #1
	add     r2, r0, r6
	ldr     r0, [pc, #0x108] @ 0x2254984, (=#0x305c)
	mov     r1, r0
	strh    r4, [r2, r0]
	add     r1, #0x8
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x10
	strh    r3, [r2, r1]
	mov     r1, r0
	add     r1, #0x18
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x20
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x28
	strh    r4, [r2, r1]
	ldr     r1, [sp, #0x4]
	lsl     r3, r5, #3
	add     r1, r1, r3
	mov     r3, r0
	add     r3, #0x30
	strh    r4, [r1, r3]
	mov     r3, r0
	add     r3, #0x32
	strh    r4, [r1, r3]
	mov     r3, r0
	add     r3, #0x34
	strh    r4, [r1, r3]
	mov     r3, r0
	add     r3, #0x36
	strh    r4, [r1, r3]
	mov     r1, r0
	add     r1, #0x50
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x68
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x70
	strh    r4, [r2, r1]
	mov     r1, r0
	add     r1, #0x78
	strh    r4, [r2, r1]
	add     r0, #0x80
	strh    r4, [r2, r0]
	mov     r0, r5
	bl      Function_20787cc
	mov     r1, #0x6
	lsl     r3, r0, #8
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r2, [sp, #0x4]
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	eor     r0, r3
	and     r2, r0
	ldr     r0, [sp, #0x4]
	mov     r4, #0x0
	str     r2, [r0, r1]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_2254934
	ldr     r7, [sp, #0x4]
	mov     r0, r7
	add     r6, r0, r6
.thumb
branch_2254900: @ 2254900 :thumb
	cmp     r4, r5
	beq     branch_2254922
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e208
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_223e208
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	beq     branch_2254922
	ldr     r0, [pc, #0x68] @ 0x2254988, (=#0x3084)
	mov     r1, #0x0
	strh    r1, [r7, r0]
.thumb
branch_2254922: @ 2254922 :thumb
	ldr     r0, [pc, #0x68] @ 0x225498c, (=#0x308c)
	mov     r1, #0x0
	strh    r1, [r6, r0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r6, #0x8
	cmp     r4, r0
	blt     branch_2254900
.thumb
branch_2254934: @ 2254934 :thumb
	mov     r1, #0x4f
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	add     r3, r0, r1
	lsl     r2, r5, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	bic     r1, r0
	str     r1, [r3, r2]
	lsl     r1, r5, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b80c
	lsl     r1, r5, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b824
	lsl     r1, r5, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      Function_225b830
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2254968

.word 0x2d58 @ 0x2254968
.word 0x2db0 @ 0x225496c
.word 0xfbffffff @ 0x2254970
.word 0xffff1fff @ 0x2254974
.word 0x2dc8 @ 0x2254978
.word 0x2dd4 @ 0x225497c
.word 0xbfffffff @ 0x2254980
.word 0x305c @ 0x2254984
.word 0x3084 @ 0x2254988
.word 0x308c @ 0x225498c
.thumb
Function_2254990: @ 2254990 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x75
	mov     r5, r1
	lsl     r0, r0, #2
	add     r7, r5, r0
	mov     r0, #0xd1
	lsl     r0, r0, #2
	add     r6, r5, r0
	mov     r0, #0x8
	mov     r4, r5
	str     r0, [sp, #0x8]
.thumb
branch_22549ae: @ 22549ae :thumb
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, #0x40
	blx     Function_20c4bb8
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, #0x4
	blx     Function_20c4bb8
	ldr     r0, [pc, #0x94] @ 0x2254a58, (=#0x2db0)
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x8]
	bic     r1, r0
	ldr     r0, [pc, #0x8c] @ 0x2254a58, (=#0x2db0)
	str     r1, [r4, r0]
	add     r0, #0x20
	ldr     r0, [r4, r0]
	add     r1, r0, #0x1
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r1, r0
	bge     branch_22549ea
	ldr     r0, [pc, #0x78] @ 0x2254a58, (=#0x2db0)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x78] @ 0x2254a5c, (=#0xffbfffff)
	and     r1, r0
	ldr     r0, [pc, #0x70] @ 0x2254a58, (=#0x2db0)
	str     r1, [r4, r0]
.thumb
branch_22549ea: @ 22549ea :thumb
	ldr     r0, [pc, #0x74] @ 0x2254a60, (=#0x2dac)
	ldr     r1, [r4, r0]
	mov     r0, #0x7
	tst     r0, r1
	beq     branch_2254a0a
	ldr     r0, [pc, #0x60] @ 0x2254a58, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_2254a0a
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	bl      Function_2253f20
.thumb
branch_2254a0a: @ 2254a0a :thumb
	ldr     r0, [pc, #0x54] @ 0x2254a60, (=#0x2dac)
	ldr     r1, [r4, r0]
	mov     r0, #0x7
	tst     r0, r1
	beq     branch_2254a2c
	ldr     r0, [pc, #0x40] @ 0x2254a58, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0x3
	lsl     r0, r0, #10
	tst     r0, r1
	beq     branch_2254a2c
	ldr     r0, [pc, #0x34] @ 0x2254a58, (=#0x2db0)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x3c] @ 0x2254a64, (=#0xfffff3ff)
	and     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x2254a58, (=#0x2db0)
	str     r1, [r4, r0]
.thumb
branch_2254a2c: @ 2254a2c :thumb
	ldr     r0, [sp, #0x4]
	add     r7, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0xc0
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_22549ae
	mov     r2, #0x71
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x24] @ 0x2254a68, (=#0xffefffff)
	and     r0, r1
	str     r0, [r5, r2]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r2, #0x8
	and     r0, r1
	str     r0, [r5, r2]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2254a58

.word 0x2db0 @ 0x2254a58
.word 0xffbfffff @ 0x2254a5c
.word 0x2dac @ 0x2254a60
.word 0xfffff3ff @ 0x2254a64
.word 0xffefffff @ 0x2254a68
.thumb
Function_2254a6c: @ 2254a6c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x70]
	mov     r7, r1
	str     r0, [sp, #0x70]
	str     r2, [sp, #0x4]
	mov     r0, r7
	mov     r1, r2
	mov     r5, r3
	bl      Function_2258ab8
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc0
	mul     r1, r0
	add     r4, r7, r1
	str     r1, [sp, #0x38]
	ldr     r0, [sp, #0x70]
	mov     r1, #0x1
	and     r0, r1
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x70]
	mov     r1, #0x2
	and     r0, r1
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x70]
	mov     r1, #0x4
	and     r0, r1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x8
	lsl     r0, r0, #1
	add     r0, r7, r0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x70]
	mov     r2, #0x10
	and     r0, r1
	ldr     r1, [pc, #0x1c8] @ 0x2254c84, (=#0x2dc8)
	str     r0, [sp, #0x1c]
	add     r0, r7, r1
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x70]
	sub     r1, #0x88
	and     r0, r2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x70]
	mov     r2, #0x20
	and     r0, r2
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x70]
	mov     r2, #0x40
	and     r0, r2
	str     r0, [sp, #0x10]
	ldr     r2, [sp, #0x70]
	mov     r0, #0x80
	and     r2, r0
	str     r2, [sp, #0xc]
	lsl     r2, r0, #2
	ldr     r0, [sp, #0x70]
	mov     r6, #0x0
	and     r0, r2
	str     r0, [sp, #0x8]
	add     r0, r7, r1
	str     r0, [sp, #0x40]
	ldr     r0, [pc, #0x198] @ 0x2254c88, (=#0x2de8)
	str     r4, [sp, #0x30]
	add     r0, r4, r0
	str     r0, [sp, #0x44]
	ldr     r0, [pc, #0x194] @ 0x2254c8c, (=#0x2db0)
	add     r0, r4, r0
	str     r0, [sp, #0x48]
	ldr     r0, [pc, #0x190] @ 0x2254c90, (=#0x2dec)
	add     r0, r4, r0
	str     r0, [sp, #0x4c]
	ldr     r0, [pc, #0x190] @ 0x2254c94, (=#0x2df8)
	add     r0, r4, r0
	str     r0, [sp, #0x50]
	ldr     r0, [pc, #0x188] @ 0x2254c94, (=#0x2df8)
	add     r0, r4, r0
	str     r0, [sp, #0x58]
	ldr     r0, [pc, #0x184] @ 0x2254c94, (=#0x2df8)
	add     r0, r4, r0
	str     r0, [sp, #0x54]
.thumb
branch_2254b14: @ 2254b14 :thumb
	ldr     r0, [pc, #0x180] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2254b2a
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	beq     branch_2254b2a
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254b2a: @ 2254b2a :thumb
	ldr     r1, [sp, #0x30]
	ldr     r0, [pc, #0x16c] @ 0x2254c9c, (=#0x2d6c)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2254b42
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_2254b42
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254b42: @ 2254b42 :thumb
	ldr     r0, [sp, #0x44]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x150] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r1, r0
	bne     branch_2254b5c
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2254b5c
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254b5c: @ 2254b5c :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [pc, #0x140] @ 0x2254ca0, (=#0x307c)
	ldrh    r1, [r1, r0]
	ldr     r0, [pc, #0x134] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r1, r0
	bne     branch_2254b84
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2254b84
	ldr     r0, [sp, #0x48]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #30
	tst     r0, r1
	beq     branch_2254b84
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254b84: @ 2254b84 :thumb
	ldr     r1, [sp, #0x3c]
	ldr     r0, [sp, #0x38]
	ldr     r0, [r1, r0]
	lsl     r0, r0, #21
	lsr     r0, r0, #29
	beq     branch_2254bae
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2254bae
	ldr     r0, [pc, #0x100] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r7, r0
	ldr     r0, [pc, #0x104] @ 0x2254ca4, (=#0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2254bae
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254bae: @ 2254bae :thumb
	ldr     r3, [pc, #0xe8] @ 0x2254c98, (=#0x2d4c)
	ldr     r0, [sp, #0x0]
	ldrh    r3, [r4, r3]
	ldr     r2, [sp, #0x4]
	mov     r1, r7
	bl      Function_2255ef4
	cmp     r0, #0x0
	beq     branch_2254bce
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2254bce
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254bce: @ 2254bce :thumb
	ldr     r3, [pc, #0xc8] @ 0x2254c98, (=#0x2d4c)
	ldr     r0, [sp, #0x0]
	ldrh    r3, [r4, r3]
	ldr     r2, [sp, #0x4]
	mov     r1, r7
	bl      Function_2256044
	cmp     r0, #0x0
	beq     branch_2254bee
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2254bee
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254bee: @ 2254bee :thumb
	ldr     r3, [pc, #0xa8] @ 0x2254c98, (=#0x2d4c)
	ldr     r0, [sp, #0x0]
	ldrh    r3, [r4, r3]
	ldr     r2, [sp, #0x4]
	mov     r1, r7
	bl      Function_2256078
	cmp     r0, #0x0
	beq     branch_2254c0e
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2254c0e
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254c0e: @ 2254c0e :thumb
	ldr     r0, [sp, #0x4c]
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2254c26
	ldr     r0, [pc, #0x80] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_2254c26
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254c26: @ 2254c26 :thumb
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x37
	beq     branch_2254c34
	cmp     r0, #0x73
	beq     branch_2254c34
	cmp     r0, #0x7d
	bne     branch_2254c6c
.thumb
branch_2254c34: @ 2254c34 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2254c6c
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x38]
	add     r0, r1, r0
	ldr     r1, [sp, #0x50]
	ldrh    r1, [r1, #0x0]
	bl      Function_2254ee0
	cmp     r0, #0x4
	bne     branch_2254c54
	ldr     r0, [sp, #0x54]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	b       branch_2254c6c
@ 0x2254c54

.thumb
branch_2254c54: @ 2254c54 :thumb
	ldr     r0, [sp, #0x58]
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2254c6c
	ldr     r0, [pc, #0x38] @ 0x2254c98, (=#0x2d4c)
	ldrh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_2254c6c
	mov     r0, r6
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2254c6c: @ 2254c6c :thumb
	ldr     r0, [sp, #0x30]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	str     r0, [sp, #0x30]
	cmp     r6, #0x4
	bge     branch_2254c7c
	b       branch_2254b14
@ 0x2254c7c

.thumb
branch_2254c7c: @ 2254c7c :thumb
	mov     r0, r5
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x2254c82


.align 2


.word 0x2dc8 @ 0x2254c84
.word 0x2de8 @ 0x2254c88
.word 0x2db0 @ 0x2254c8c
.word 0x2dec @ 0x2254c90
.word 0x2df8 @ 0x2254c94
.word 0x2d4c @ 0x2254c98
.word 0x2d6c @ 0x2254c9c
.word 0x307c @ 0x2254ca0
.word 0x3e1 @ 0x2254ca4

.incbin "./baserom/overlay/overlay_0016.bin", 0x19b68, 0x2254ee0 - 0x2254ca8


.thumb
Function_2254ee0: @ 2254ee0 :thumb
	mov     r3, #0x0
.thumb
branch_2254ee2: @ 2254ee2 :thumb
	ldrh    r2, [r0, #0xc]
	cmp     r1, r2
	beq     branch_2254ef0
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, #0x4
	blt     branch_2254ee2
.thumb
branch_2254ef0: @ 2254ef0 :thumb
	mov     r0, r3
	bx      lr
@ 0x2254ef4

.thumb
Function_2254ef4: @ 2254ef4 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r1, r6
	mov     r5, r0
	mov     r4, r3
	bl      Function_2258ab8
	mov     r1, #0x1
	cmp     r0, #0x6a
	beq     branch_2254f1a
	mov     r0, #0xc0
	mul     r0, r6
	add     r2, r5, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r2, [r2, r0]
	lsl     r0, r1, #10
	tst     r0, r2
	beq     branch_2254f30
.thumb
branch_2254f1a: @ 2254f1a :thumb
	lsl     r0, r4, #1
	add     r2, r4, r0
	ldr     r0, [pc, #0x80] @ 0x2254fa0, (=#0x226ecd5)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x2
	bne     branch_2254f30
	ldr     r0, [pc, #0x7c] @ 0x2254fa4, (=#0x226ecd6)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x0
	bne     branch_2254f30
	mov     r1, #0x0
.thumb
branch_2254f30: @ 2254f30 :thumb
	lsl     r0, r6, #6
	add     r2, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	beq     branch_2254f4e
	lsl     r0, r4, #1
	add     r2, r4, r0
	ldr     r0, [pc, #0x58] @ 0x2254fa0, (=#0x226ecd5)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x2
	bne     branch_2254f4e
	mov     r1, #0x0
.thumb
branch_2254f4e: @ 2254f4e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	mov     r0, #0x7
	lsl     r0, r0, #12
	tst     r0, r2
	beq     branch_2254f72
	lsl     r0, r4, #1
	add     r2, r4, r0
	ldr     r0, [pc, #0x3c] @ 0x2254fa0, (=#0x226ecd5)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x2
	bne     branch_2254f72
	ldr     r0, [pc, #0x38] @ 0x2254fa4, (=#0x226ecd6)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x0
	bne     branch_2254f72
	mov     r1, #0x0
.thumb
branch_2254f72: @ 2254f72 :thumb
	mov     r0, #0xc0
	mul     r0, r6
	add     r2, r5, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r2, [r2, r0]
	mov     r0, #0x1
	lsl     r0, r0, #22
	tst     r0, r2
	beq     branch_2254f9c
	lsl     r0, r4, #1
	add     r2, r4, r0
	ldr     r0, [pc, #0x14] @ 0x2254fa0, (=#0x226ecd5)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x11
	bne     branch_2254f9c
	ldr     r0, [pc, #0x10] @ 0x2254fa4, (=#0x226ecd6)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x0
	bne     branch_2254f9c
	mov     r1, #0x0
.thumb
branch_2254f9c: @ 2254f9c :thumb
	mov     r0, r1
	pop     {r4-r6,pc}
@ 0x2254fa0

.word 0x226ecd5 @ 0x2254fa0
.word 0x226ecd6 @ 0x2254fa4
.thumb
Function_2254fa8: @ 2254fa8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r0, [sp, #0x50]
	mov     r5, r1
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x54]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x54]
	mov     r0, r2
	mov     r4, r3
	ldr     r7, [sp, #0x48]
	ldr     r6, [sp, #0x4c]
	cmp     r0, #0xa5
	bne     branch_2254fca
	ldr     r0, [sp, #0x50]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2254fca

.thumb
branch_2254fca: @ 2254fca :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2258ab8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x24]
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2258acc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2258ab8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x20]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2258acc
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_2255012
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	b       branch_225502a
@ 0x2255012

.thumb
branch_2255012: @ 2255012 :thumb
	cmp     r4, #0x0
	beq     branch_225501e
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x28]
	b       branch_225502a
@ 0x225501e

.thumb
branch_225501e: @ 225501e :thumb
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x294] @ 0x22552bc, (=#0x3e2)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x28]
.thumb
branch_225502a: @ 225502a :thumb
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x28c] @ 0x22552c0, (=#0x3e1)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x28c] @ 0x22552c4, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #10
	tst     r0, r1
	bne     branch_2255088
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x28]
	cmp     r1, r0
	beq     branch_2255066
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x28]
	cmp     r1, r0
	bne     branch_2255088
.thumb
branch_2255066: @ 2255066 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x5b
	bne     branch_225507a
	ldr     r0, [sp, #0x50]
	lsl     r0, r0, #1
	str     r0, [sp, #0x50]
	b       branch_2255088
@ 0x225507a

.thumb
branch_225507a: @ 225507a :thumb
	ldr     r1, [sp, #0x50]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	str     r0, [sp, #0x50]
.thumb
branch_2255088: @ 2255088 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x1a
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22550b4
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x4
	bne     branch_22550b4
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x6a
	beq     branch_22550b4
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #10
	orr     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	b       branch_22551d0
@ 0x22550b4

.thumb
branch_22550b4: @ 22550b4 :thumb
	mov     r0, #0xc0
	mov     r1, r6
	mul     r1, r0
	ldr     r0, [pc, #0x20c] @ 0x22552c8, (=#0x2dcc)
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	lsl     r2, r2, #16
	lsr     r2, r2, #29
	beq     branch_22550ec
	sub     r0, #0xc
	ldr     r2, [r3, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r2, r0
	bne     branch_22550ec
	ldr     r2, [sp, #0x28]
	cmp     r2, #0x4
	bne     branch_22550ec
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x6a
	beq     branch_22550ec
	ldr     r1, [sp, #0x54]
	lsl     r0, r0, #10
	ldr     r1, [r1, #0x0]
	orr     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	b       branch_22551d0
@ 0x22550ec

.thumb
branch_22550ec: @ 22550ec :thumb
	add     r0, r5, r1
	mov     r4, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_22550f2: @ 22550f2 :thumb
	lsl     r0, r4, #1
	ldr     r1, [pc, #0x1d4] @ 0x22552cc, (=#0x226ecd4)
	add     r0, r4, r0
	add     r1, r1, r0
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x1cc] @ 0x22552cc, (=#0x226ecd4)
	ldrb    r1, [r1, r0]
	cmp     r1, #0xfe
	bne     branch_2255122
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x1c8] @ 0x22552d0, (=#0x2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x2
	lsl     r0, r0, #28
	tst     r0, r1
	bne     branch_22551d0
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x71
	beq     branch_22551d0
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_22551c4
@ 0x2255122

.thumb
branch_2255122: @ 2255122 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	bne     branch_22551c2
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	ldrb    r0, [r0, #0x1]
	mov     r2, #0x1b
	mov     r3, #0x0
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_2252060
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	bne     branch_2255168
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, r4
	bl      Function_2254ef4
	cmp     r0, #0x1
	bne     branch_2255168
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x54]
	ldr     r3, [sp, #0x50]
	str     r0, [sp, #0x4]
	ldrb    r2, [r2, #0x2]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225b63c
	str     r0, [sp, #0x50]
.thumb
branch_2255168: @ 2255168 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	bne     branch_22551c2
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	str     r0, [sp, #0x2c]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x2c]
	cmp     r1, r0
	beq     branch_22551c2
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, r4
	bl      Function_2254ef4
	cmp     r0, #0x1
	bne     branch_22551c2
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x54]
	ldr     r3, [sp, #0x50]
	str     r0, [sp, #0x4]
	ldrb    r2, [r2, #0x2]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225b63c
	str     r0, [sp, #0x50]
.thumb
branch_22551c2: @ 22551c2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_22551c4: @ 22551c4 :thumb
	lsl     r0, r4, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x100] @ 0x22552cc, (=#0x226ecd4)
	ldrb    r0, [r0, r1]
	cmp     r0, #0xff
	bne     branch_22550f2
.thumb
branch_22551d0: @ 22551d0 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x19
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2255214
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_225b6c8
	cmp     r0, #0x0
	beq     branch_2255214
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22551fe
	mov     r0, #0x6
	and     r0, r1
	cmp     r0, #0x6
	bne     branch_2255214
.thumb
branch_22551fe: @ 22551fe :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2255214
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #18
	orr     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	b       branch_22552b6
@ 0x2255214

.thumb
branch_2255214: @ 2255214 :thumb
	ldr     r0, [pc, #0xac] @ 0x22552c4, (=#0x213c)
	ldr     r2, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #10
	mov     r1, r2
	tst     r1, r0
	bne     branch_22552a2
	lsl     r0, r0, #4
	tst     r0, r2
	bne     branch_22552a2
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_225527e
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_225527e
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x6f
	bl      Function_2255ab4
	cmp     r0, #0x1
	beq     branch_2255258
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x74
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2255266
.thumb
branch_2255258: @ 2255258 :thumb
	ldr     r0, [sp, #0x50]
	lsl     r1, r0, #1
	add     r0, r0, r1
	mov     r1, #0x4
	bl      Function_22563f8
	str     r0, [sp, #0x50]
.thumb
branch_2255266: @ 2255266 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x60
	bne     branch_225527e
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x50]
	add     r0, #0x64
	str     r0, [sp, #0x1c]
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	str     r0, [sp, #0x50]
.thumb
branch_225527e: @ 225527e :thumb
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_22552b6
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_22552b6
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x6e
	bne     branch_22552b6
	ldr     r0, [sp, #0x50]
	lsl     r0, r0, #1
	str     r0, [sp, #0x50]
	b       branch_22552b6
@ 0x22552a2

.thumb
branch_22552a2: @ 22552a2 :thumb
	ldr     r0, [sp, #0x54]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	bic     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	mov     r0, #0x4
	bic     r1, r0
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
.thumb
branch_22552b6: @ 22552b6 :thumb
	ldr     r0, [sp, #0x50]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x22552bc

.word 0x3e2 @ 0x22552bc
.word 0x3e1 @ 0x22552c0
.word 0x213c @ 0x22552c4
.word 0x2dcc @ 0x22552c8
.word 0x226ecd4 @ 0x22552cc
.word 0x2db0 @ 0x22552d0

.incbin "./baserom/overlay/overlay_0016.bin", 0x1a194, 0x22554e0 - 0x22552d4


.thumb
Function_22554e0: @ 22554e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x4]
	mov     r4, #0x0
	bl      Function_223df1c
	mov     r7, r0
	cmp     r6, #0x0
	beq     branch_22554fe
	cmp     r6, #0x1
	beq     branch_2255522
	b       branch_2255556
@ 0x22554fe

.thumb
branch_22554fe: @ 22554fe :thumb
	mov     r0, r4
	cmp     r7, #0x0
	ble     branch_2255556
	ldr     r2, [pc, #0x54] @ 0x225555c, (=#0x2d8c)
.thumb
branch_2255506: @ 2255506 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r0, r1
	beq     branch_2255518
	ldr     r1, [r5, r2]
	cmp     r1, #0x0
	beq     branch_2255518
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	lsr     r4, r1, #24
.thumb
branch_2255518: @ 2255518 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0xc0
	cmp     r0, r7
	blt     branch_2255506
	b       branch_2255556
@ 0x2255522

.thumb
branch_2255522: @ 2255522 :thumb
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_2255556
.thumb
branch_2255528: @ 2255528 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_223e208
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_223e208
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	bne     branch_225554e
	ldr     r0, [pc, #0x18] @ 0x225555c, (=#0x2d8c)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_225554e
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_225554e: @ 225554e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xc0
	cmp     r6, r7
	blt     branch_2255528
.thumb
branch_2255556: @ 2255556 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225555c

.word 0x2d8c @ 0x225555c
.thumb
Function_2255560: @ 2255560 :thumb
	add     r2, r0, r1
	ldr     r0, [pc, #0x8] @ 0x225556c, (=#0x219c)
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #8
	orr     r0, r1
	bx      lr
@ 0x225556c

.word 0x219c @ 0x225556c
.thumb
Function_2255570: @ 2255570 :thumb
	push    {r4,r5}
	lsl     r3, r1, #4
	add     r5, r0, r3
	ldr     r3, [pc, #0x24] @ 0x225559c, (=#0x21b4)
	mov     r2, #0x0
	ldr     r4, [r5, r3]
	cmp     r4, #0x1
	bne     branch_2255596
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r5, r3]
	cmp     r3, #0x0
	beq     branch_2255596
	mov     r2, #0xc0
	mul     r2, r1
	add     r1, r0, r2
	lsl     r0, r3, #1
	add     r1, r1, r0
	ldr     r0, [pc, #0xc] @ 0x22555a0, (=#0x2d4a)
	ldrh    r2, [r1, r0]
.thumb
branch_2255596: @ 2255596 :thumb
	mov     r0, r2
	pop     {r4,r5}
	bx      lr
@ 0x225559c

.word 0x21b4 @ 0x225559c
.word 0x2d4a @ 0x22555a0
.thumb
Function_22555a4: @ 22555a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r7, r1
	str     r3, [sp, #0x8]
	ldr     r6, [sp, #0x70]
	mov     r4, #0x0
	bl      Function_223df1c
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x9
	bhi     branch_2255618
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r4, r1, #1
	lsl     r0, r3, #2
	lsl     r2, r2, #3
	lsl     r6, r3, #4
	lsl     r0, r6, #5
	lsl     r2, r2, #6
	lsl     r2, r7, #6
	lsl     r6, r4, #7
	lsl     r2, r3, #8
	mov     r0, r4
	str     r0, [sp, #0x44]
	cmp     r5, #0x0
	ble     branch_2255618
.thumb
branch_22555e8: @ 22555e8 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x44]
	bl      Function_223e208
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      Function_223e208
	ldr     r1, [sp, #0x48]
	cmp     r1, r0
	bne     branch_225560e
	ldr     r1, [sp, #0x44]
	mov     r0, r7
	bl      Function_2255a4c
	cmp     r6, r0
	bne     branch_225560e
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_225560e: @ 225560e :thumb
	ldr     r0, [sp, #0x44]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x44]
	cmp     r0, r5
	blt     branch_22555e8
.thumb
branch_2255618: @ 2255618 :thumb
	b       branch_2255820
@ 0x225561a


.incbin "./baserom/overlay/overlay_0016.bin", 0x1a4da, 0x2255820 - 0x225561a


.thumb
branch_2255820: @ 2255820 :thumb
	mov     r0, r4
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x2255826


.incbin "./baserom/overlay/overlay_0016.bin", 0x1a6e6, 0x225582c - 0x2255826


.thumb
Function_225582c: @ 225582c :thumb
	lsl     r1, r1, #4
	add     r1, r0, r1
	ldr     r0, [pc, #0x54] @ 0x2255888, (=#0x3de)
	ldrh    r2, [r1, r0]
	cmp     r2, #0x9b
	bgt     branch_225585e
	cmp     r2, #0x97
	blt     branch_2255844
	beq     branch_225587e
	cmp     r2, #0x9b
	beq     branch_225587e
	b       branch_2255882
@ 0x2255844

.thumb
branch_2255844: @ 2255844 :thumb
	cmp     r2, #0x27
	bgt     branch_2255850
	bge     branch_225587e
	cmp     r2, #0x1a
	beq     branch_225587e
	b       branch_2255882
@ 0x2255850

.thumb
branch_2255850: @ 2255850 :thumb
	cmp     r2, #0x4b
	bgt     branch_2255858
	beq     branch_225587e
	b       branch_2255882
@ 0x2255858

.thumb
branch_2255858: @ 2255858 :thumb
	cmp     r2, #0x91
	beq     branch_225587e
	b       branch_2255882
@ 0x225585e

.thumb
branch_225585e: @ 225585e :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r2, r1
	bgt     branch_225586e
	bge     branch_225587e
	cmp     r2, #0xff
	beq     branch_225587e
	b       branch_2255882
@ 0x225586e

.thumb
branch_225586e: @ 225586e :thumb
	add     r0, r1, #0x7
	cmp     r2, r0
	bgt     branch_2255878
	beq     branch_225587e
	b       branch_2255882
@ 0x2255878

.thumb
branch_2255878: @ 2255878 :thumb
	add     r1, #0x10
	cmp     r2, r1
	bne     branch_2255882
.thumb
branch_225587e: @ 225587e :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2255882

.thumb
branch_2255882: @ 2255882 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2255886


.align 2


.word 0x3de @ 0x2255888
.thumb
Function_225588c: @ 225588c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	mov     r2, #0x1
	cmp     r1, #0x70
	bcc     branch_22558a4
	bl      Function_223f4bc
	mov     r1, #0x70
	blx     Function_20e2178
	mov     r2, #0x0
.thumb
branch_22558a4: @ 22558a4 :thumb
	lsl     r0, r1, #1
	add     r0, r1, r0
	ldr     r1, [pc, #0x14] @ 0x22558c0, (=#0x226ecd4)
	ldrb    r1, [r1, r0]
	strb    r1, [r5, #0x0]
	ldr     r1, [pc, #0x14] @ 0x22558c4, (=#0x226ecd5)
	ldrb    r1, [r1, r0]
	strb    r1, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x22558c8, (=#0x226ecd6)
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x10]
	strb    r1, [r0, #0x0]
	mov     r0, r2
	pop     {r3-r5,pc}
@ 0x22558c0

.word 0x226ecd4 @ 0x22558c0
.word 0x226ecd5 @ 0x22558c4
.word 0x226ecd6 @ 0x22558c8
.thumb
Function_22558cc: @ 22558cc :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x44] @ 0x2255914, (=#0x226ecd4)
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r6, r2
	mov     r1, #0x28
.thumb
branch_22558d8: @ 22558d8 :thumb
	ldrb    r2, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r2
	bne     branch_2255906
	ldrb    r7, [r4, #0x1]
	cmp     r5, r7
	bne     branch_22558f2
	ldrb    r0, [r4, #0x2]
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	mov     r1, r0
.thumb
branch_22558f2: @ 22558f2 :thumb
	cmp     r6, r7
	bne     branch_2255906
	cmp     r5, r6
	beq     branch_2255906
	ldrb    r0, [r4, #0x2]
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	mov     r1, r0
.thumb
branch_2255906: @ 2255906 :thumb
	.hword  0x1ce4 @ add r4, r4, #0x3
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0xff
	bne     branch_22558d8
	mov     r0, r1
	pop     {r3-r7,pc}
@ 0x2255912


.align 2


.word 0x226ecd4 @ 0x2255914
.thumb
Function_2255918: @ 2255918 :thumb
	cmp     r0, #0x0
	beq     branch_2255940
	cmp     r0, #0xd6
	beq     branch_2255940
	ldr     r2, [pc, #0x24] @ 0x2255948, (=#0x17f)
	cmp     r0, r2
	beq     branch_2255940
	mov     r1, r2
	sub     r1, #0x6d
	cmp     r0, r1
	beq     branch_2255940
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	beq     branch_2255940
	ldr     r1, [pc, #0x14] @ 0x225594c, (=#0xff8a)
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_2255944
.thumb
branch_2255940: @ 2255940 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2255944

.thumb
branch_2255944: @ 2255944 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2255948

.word 0x17f @ 0x2255948
.word 0xff8a @ 0x225594c
.thumb
Function_2255950: @ 2255950 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0xae
	bne     branch_225597c
	mov     r1, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	beq     branch_2255978
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x7
	bne     branch_225597c
.thumb
branch_2255978: @ 2255978 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225597c

.thumb
branch_225597c: @ 225597c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2255980

.thumb
Function_2255980: @ 2255980 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r2
	mov     r5, r1
	mov     r1, r6
	mov     r7, #0x0
	bl      Function_223e208
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x22559d4, (=#0x2db8)
	add     r4, r5, r0
	mov     r0, #0xc0
	mul     r0, r6
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22559ce
	ldr     r0, [pc, #0x34] @ 0x22559d8, (=#0x219c)
	add     r1, r5, r6
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #3
	add     r2, r5, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	bne     branch_22559ce
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r4, r0]
	bl      Function_207d2d0
	cmp     r0, #0x0
	bne     branch_22559ce
	mov     r7, #0x1
.thumb
branch_22559ce: @ 22559ce :thumb
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22559d4

.word 0x2db8 @ 0x22559d4
.word 0x219c @ 0x22559d8
.thumb
Function_22559dc: @ 22559dc :thumb
	push    {r3,lr}
	mov     r2, #0xc0
	mul     r2, r1
	add     r1, r0, r2
	ldr     r0, [pc, #0x10] @ 0x22559f8, (=#0x2db8)
	ldrh    r0, [r1, r0]
	bl      Function_207d2d0
	cmp     r0, #0x0
	bne     branch_22559f4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22559f4

.thumb
branch_22559f4: @ 22559f4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22559f8

.word 0x2db8 @ 0x22559f8
.thumb
Function_22559fc: @ 22559fc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r2, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r4, r2
	ldr     r2, [pc, #0x40] @ 0x2255a48, (=#0x2d74)
	mul     r4, r1
	add     r3, r5, r2
	ldrb    r4, [r3, r4]
	ldr     r3, [r5, #0x64]
	mov     r6, #0x0
	mul     r1, r3
	add     r1, r5, r1
	ldrb    r1, [r1, r2]
	cmp     r1, r4
	bcc     branch_2255a20
	mov     r6, #0x1
	b       branch_2255a44
@ 0x2255a20

.thumb
branch_2255a20: @ 2255a20 :thumb
	bl      Function_223f4bc
	ldr     r2, [r5, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0x18] @ 0x2255a48, (=#0x2d74)
	lsl     r0, r0, #24
	ldrb    r1, [r2, r1]
	lsr     r0, r0, #24
	add     r1, r1, r4
	mul     r0, r1
	asr     r0, r0, #8
	add     r1, r0, #0x1
	lsr     r0, r4, #2
	cmp     r1, r0
	ble     branch_2255a44
	mov     r6, #0x1
.thumb
branch_2255a44: @ 2255a44 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2255a48

.word 0x2d74 @ 0x2255a48
.thumb
Function_2255a4c: @ 2255a4c :thumb
	push    {r4,r5}
	mov     r2, #0xc0
	mul     r2, r1
	mov     r3, #0xb7
	mov     r4, #0x2
	add     r5, r0, r2
	lsl     r3, r3, #6
	ldr     r1, [r5, r3]
	lsl     r4, r4, #20
	tst     r4, r1
	beq     branch_2255a70
	sub     r3, #0x59
	ldrb    r3, [r5, r3]
	cmp     r3, #0x79
	beq     branch_2255a70
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2255a70

.thumb
branch_2255a70: @ 2255a70 :thumb
	mov     r3, #0x6
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x7
	lsl     r3, r3, #12
	tst     r3, r4
	beq     branch_2255a8e
	ldr     r3, [pc, #0x30] @ 0x2255ab0, (=#0x2d67)
	add     r4, r0, r2
	ldrb    r3, [r4, r3]
	cmp     r3, #0x1a
	bne     branch_2255a8e
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2255a8e

.thumb
branch_2255a8e: @ 2255a8e :thumb
	mov     r3, #0x1
	lsl     r3, r3, #10
	tst     r1, r3
	beq     branch_2255aa6
	ldr     r1, [pc, #0x18] @ 0x2255ab0, (=#0x2d67)
	add     r3, r0, r2
	ldrb    r1, [r3, r1]
	cmp     r1, #0x1a
	bne     branch_2255aa6
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2255aa6

.thumb
branch_2255aa6: @ 2255aa6 :thumb
	add     r1, r0, r2
	ldr     r0, [pc, #0x4] @ 0x2255ab0, (=#0x2d67)
	ldrb    r0, [r1, r0]
	pop     {r4,r5}
	bx      lr
@ 0x2255ab0

.word 0x2d67 @ 0x2255ab0
.thumb
Function_2255ab4: @ 2255ab4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r4, r3
	mov     r6, #0x0
	bl      Function_2255a4c
	cmp     r0, #0x68
	beq     branch_2255ad8
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r4, r0
	bne     branch_2255b06
	mov     r6, #0x1
	b       branch_2255b06
@ 0x2255ad8

.thumb
branch_2255ad8: @ 2255ad8 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r4, r0
	bne     branch_2255b06
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x1c
	mul     r0, r7
	ldr     r3, [r1, r0]
	lsl     r2, r3, #28
	lsr     r2, r2, #31
	bne     branch_2255b06
	mov     r2, #0x8
	orr     r3, r2
	str     r3, [r1, r0]
	ldr     r1, [pc, #0xc] @ 0x2255b0c, (=#0x213c)
	lsl     r0, r2, #20
	ldr     r3, [r5, r1]
	orr     r0, r3
	str     r0, [r5, r1]
.thumb
branch_2255b06: @ 2255b06 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2255b0a


.align 2


.word 0x213c @ 0x2255b0c
.thumb
Function_2255b10: @ 2255b10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	str     r6, [sp, #0x18]
	bl      Function_223df0c
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223df20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223df60
	mov     r7, r0
	mov     r0, #0x8
	tst     r0, r5
	bne     branch_2255b52
	mov     r0, #0x10
	tst     r0, r5
	beq     branch_2255b66
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2255b66
.thumb
branch_2255b52: @ 2255b52 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r5, #0x0
	add     r1, r0, r4
	ldr     r0, [pc, #0x9c] @ 0x2255bfc, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	b       branch_2255ba2
@ 0x2255b66

.thumb
branch_2255b66: @ 2255b66 :thumb
	mov     r0, #0x2
	tst     r0, r5
	beq     branch_2255b90
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r5, #0x0
	add     r1, r0, r4
	ldr     r0, [pc, #0x84] @ 0x2255bfc, (=#0x219c)
	ldrb    r0, [r1, r0]
	mov     r1, r4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	bl      Function_223e258
	ldr     r1, [sp, #0x4]
	add     r1, r1, r0
	ldr     r0, [pc, #0x70] @ 0x2255bfc, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x8]
	b       branch_2255ba2
@ 0x2255b90

.thumb
branch_2255b90: @ 2255b90 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r5, #0x0
	add     r1, r0, r4
	ldr     r0, [pc, #0x60] @ 0x2255bfc, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
.thumb
branch_2255ba2: @ 2255ba2 :thumb
	cmp     r5, r7
	bge     branch_2255bec
.thumb
branch_2255ba6: @ 2255ba6 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2255be6
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	bne     branch_2255be6
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2255be6
	ldr     r0, [sp, #0xc]
	cmp     r0, r5
	beq     branch_2255be6
	ldr     r0, [sp, #0x8]
	cmp     r0, r5
	beq     branch_2255be6
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2255be6: @ 2255be6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2255ba6
.thumb
branch_2255bec: @ 2255bec :thumb
	ldr     r0, [sp, #0x10]
	cmp     r6, r0
	blt     branch_2255bf6
	mov     r0, #0x1
	str     r0, [sp, #0x18]
.thumb
branch_2255bf6: @ 2255bf6 :thumb
	ldr     r0, [sp, #0x18]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2255bfc

.word 0x219c @ 0x2255bfc
.thumb
Function_2255c00: @ 2255c00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r2
	mov     r7, r0
	mov     r4, r3
	bl      Function_223df0c
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2258ab8
	str     r0, [sp, #0x8]
	cmp     r0, #0x3f
	beq     branch_2255c36
	mov     r1, #0xa9
	ldr     r0, [sp, #0xc]
	lsl     r1, r1, #2
	tst     r0, r1
	bne     branch_2255c36
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x32
	bne     branch_2255c3c
.thumb
branch_2255c36: @ 2255c36 :thumb
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2255c3c

.thumb
branch_2255c3c: @ 2255c3c :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_223e208
	mov     r0, r7
	bl      Function_223df1c
	mov     r0, #0x17
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_22555a4
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2255c92
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x17
	beq     branch_2255c92
	cmp     r4, #0x0
	bne     branch_2255c76
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255c76

.thumb
branch_2255c76: @ 2255c76 :thumb
	mov     r0, #0xb
	strb    r0, [r4, #0x1]
	mov     r0, #0x27
	strh    r0, [r4, #0x2]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2255560
	str     r0, [r4, #0x4]
	mov     r0, #0x17
	str     r0, [r4, #0x8]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255c92

.thumb
branch_2255c92: @ 2255c92 :thumb
	mov     r0, #0x47
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_22555a4
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2255d44
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x7
	lsl     r0, r0, #12
	tst     r0, r1
	bne     branch_2255d1e
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x6a
	beq     branch_2255d1e
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x1a
	beq     branch_2255d44
	mov     r0, #0xc0
	mul     r0, r6
	add     r1, r5, r0
	ldr     r0, [pc, #0x108] @ 0x2255dd8, (=#0x2dcc)
	ldr     r0, [r1, r0]
	lsl     r0, r0, #16
	lsr     r0, r0, #29
	bne     branch_2255d44
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x2
	beq     branch_2255d44
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x2
	beq     branch_2255d44
	cmp     r4, #0x0
	bne     branch_2255d02
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d02

.thumb
branch_2255d02: @ 2255d02 :thumb
	mov     r0, #0xb
	strb    r0, [r4, #0x1]
	mov     r0, #0x27
	strh    r0, [r4, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2255560
	str     r0, [r4, #0x4]
	mov     r0, #0x47
	str     r0, [r4, #0x8]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d1e

.thumb
branch_2255d1e: @ 2255d1e :thumb
	cmp     r4, #0x0
	bne     branch_2255d28
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d28

.thumb
branch_2255d28: @ 2255d28 :thumb
	mov     r0, #0xb
	strb    r0, [r4, #0x1]
	mov     r0, #0x27
	strh    r0, [r4, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2255560
	str     r0, [r4, #0x4]
	mov     r0, #0x47
	str     r0, [r4, #0x8]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d44

.thumb
branch_2255d44: @ 2255d44 :thumb
	mov     r0, #0x2a
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_22555a4
	mov     r7, r0
	beq     branch_2255d9e
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x8
	beq     branch_2255d78
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x8
	bne     branch_2255d9e
.thumb
branch_2255d78: @ 2255d78 :thumb
	cmp     r4, #0x0
	bne     branch_2255d82
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d82

.thumb
branch_2255d82: @ 2255d82 :thumb
	mov     r0, #0xb
	strb    r0, [r4, #0x1]
	mov     r0, #0x27
	strh    r0, [r4, #0x2]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255560
	str     r0, [r4, #0x4]
	mov     r0, #0x2a
	str     r0, [r4, #0x8]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255d9e

.thumb
branch_2255d9e: @ 2255d9e :thumb
	mov     r0, #0xc0
	mul     r0, r6
	add     r3, r5, r0
	ldr     r0, [pc, #0x34] @ 0x2255ddc, (=#0x2db0)
	ldr     r1, [pc, #0x38] @ 0x2255de0, (=#0x400e000)
	ldr     r2, [r3, r0]
	tst     r2, r1
	bne     branch_2255db8
	add     r0, #0x10
	ldr     r2, [r3, r0]
	lsr     r0, r1, #16
	tst     r0, r2
	beq     branch_2255dd0
.thumb
branch_2255db8: @ 2255db8 :thumb
	cmp     r4, #0x0
	bne     branch_2255dc2
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255dc2

.thumb
branch_2255dc2: @ 2255dc2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	ldr     r0, [pc, #0x1c] @ 0x2255de4, (=#0x31a)
	add     sp, #0x14
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2255dd0

.thumb
branch_2255dd0: @ 2255dd0 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2255dd6


.align 2


.word 0x2dcc @ 0x2255dd8
.word 0x2db0 @ 0x2255ddc
.word 0x400e000 @ 0x2255de0
.word 0x31a @ 0x2255de4
.thumb
Function_2255de8: @ 2255de8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r2
	str     r0, [sp, #0x0]
	bl      Function_223df0c
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2258ab8
	mov     r6, #0x0
	cmp     r0, #0x3f
	bne     branch_2255e1c
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r4, #6
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0xa4] @ 0x2255eb4, (=#0xfffffe7f)
	mov     r6, #0x1
	and     r1, r0
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r3, r2]
	b       branch_2255eb0
@ 0x2255e1c

.thumb
branch_2255e1c: @ 2255e1c :thumb
	mov     r0, #0xa9
	lsl     r0, r0, #2
	tst     r0, r7
	beq     branch_2255e28
	mov     r6, #0x1
	b       branch_2255eb0
@ 0x2255e28

.thumb
branch_2255e28: @ 2255e28 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x32
	bne     branch_2255e4c
	mov     r1, #0x75
	lsl     r1, r1, #2
	add     r5, r5, r1
	lsl     r3, r4, #6
	ldr     r2, [r5, r3]
	ldr     r0, [pc, #0x74] @ 0x2255eb4, (=#0xfffffe7f)
	sub     r1, #0xd4
	and     r0, r2
	orr     r0, r1
	str     r0, [r5, r3]
	mov     r6, #0x1
	b       branch_2255eb0
@ 0x2255e4c

.thumb
branch_2255e4c: @ 2255e4c :thumb
	mov     r0, #0x1
	mov     r1, r4
	eor     r1, r0
	mov     r2, #0xc0
	mov     r3, r1
	mul     r3, r2
	add     r1, r5, r3
	ldr     r3, [pc, #0x5c] @ 0x2255eb8, (=#0x2d46)
	mul     r2, r4
	add     r2, r5, r2
	ldrh    r1, [r1, r3]
	ldrh    r2, [r2, r3]
	cmp     r2, r1
	bcs     branch_2255e96
	lsl     r0, r2, #7
	blx     Division
	ldr     r1, [pc, #0x4c] @ 0x2255ebc, (=#0x311e)
	ldrb    r2, [r5, r1]
	mov     r1, #0x1e
	mul     r1, r2
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	lsr     r1, r0, #31
	lsl     r2, r0, #24
	sub     r2, r2, r1
	mov     r0, #0x18
	ror     r2, r0
	add     r0, r1, r2
	cmp     r7, r0
	ble     branch_2255e98
	mov     r6, #0x1
	b       branch_2255e98
@ 0x2255e96

.thumb
branch_2255e96: @ 2255e96 :thumb
	mov     r6, r0
.thumb
branch_2255e98: @ 2255e98 :thumb
	cmp     r6, #0x0
	bne     branch_2255ea8
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x62
	bl      Function_22666bc
.thumb
branch_2255ea8: @ 2255ea8 :thumb
	ldr     r0, [pc, #0x10] @ 0x2255ebc, (=#0x311e)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
.thumb
branch_2255eb0: @ 2255eb0 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2255eb4

.word 0xfffffe7f @ 0x2255eb4
.word 0x2d46 @ 0x2255eb8
.word 0x311e @ 0x2255ebc
.thumb
Function_2255ec0: @ 2255ec0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2255a4c
	cmp     r0, #0x36
	bne     branch_2255eea
	mov     r2, #0xc0
	mul     r2, r4
	add     r3, r5, r2
	ldr     r2, [pc, #0x18] @ 0x2255ef0, (=#0x2dc8)
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r2, [r3, r2]
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r2, r2, #1
	and     r1, r0
	lsr     r2, r2, #31
	cmp     r1, r2
	bne     branch_2255eec
.thumb
branch_2255eea: @ 2255eea :thumb
	mov     r0, #0x0
.thumb
branch_2255eec: @ 2255eec :thumb
	pop     {r3-r5,pc}
@ 0x2255eee


.align 2


.word 0x2dc8 @ 0x2255ef0
.thumb
Function_2255ef4: @ 2255ef4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r4, r2
	mov     r5, r3
	str     r1, [sp, #0x4]
	bl      Function_223df1c
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223e208
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_2255f5e
	ldr     r4, [pc, #0x44] @ 0x2255f64, (=#0x2d4c)
.thumb
branch_2255f1e: @ 2255f1e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_223e208
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	beq     branch_2255f54
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r6, r0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_2255f54
	mov     r1, #0x0
	mov     r2, r6
.thumb
branch_2255f3e: @ 2255f3e :thumb
	ldrh    r0, [r2, r4]
	cmp     r5, r0
	beq     branch_2255f4c
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x4
	blt     branch_2255f3e
.thumb
branch_2255f4c: @ 2255f4c :thumb
	cmp     r1, #0x4
	beq     branch_2255f54
	mov     r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_2255f54: @ 2255f54 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0xc0
	cmp     r7, r0
	blt     branch_2255f1e
.thumb
branch_2255f5e: @ 2255f5e :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2255f64

.word 0x2d4c @ 0x2255f64
.thumb
Function_2255f68: @ 2255f68 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, #0x0
	bl      Function_223df1c
	mov     r3, r6
	cmp     r0, #0x0
	ble     branch_2255f90
	mov     r1, #0xb7
	lsl     r1, r1, #6
.thumb
branch_2255f7e: @ 2255f7e :thumb
	ldr     r2, [r5, r1]
	tst     r2, r4
	beq     branch_2255f88
	mov     r6, #0x1
	b       branch_2255f90
@ 0x2255f88

.thumb
branch_2255f88: @ 2255f88 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r5, #0xc0
	cmp     r3, r0
	blt     branch_2255f7e
.thumb
branch_2255f90: @ 2255f90 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2255f94

.thumb
Function_2255f94: @ 2255f94 :thumb
	ldr     r2, [pc, #0x1c] @ 0x2255fb4, (=#0x216c)
	mov     r0, #0x0
	str     r0, [r1, r2]
	mov     r0, r2
	mov     r3, #0x1
	sub     r0, #0x1c
	str     r3, [r1, r0]
	mov     r0, r2
	sub     r0, #0x30
	ldr     r3, [r1, r0]
	ldr     r0, [pc, #0xc] @ 0x2255fb8, (=#0xffefffff)
	sub     r2, #0x30
	and     r0, r3
	str     r0, [r1, r2]
	bx      lr
@ 0x2255fb2


.align 2


.word 0x216c @ 0x2255fb4
.word 0xffefffff @ 0x2255fb8
.thumb
Function_2255fbc: @ 2255fbc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	bl      Function_223df1c
	mov     r2, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_2255fe0
	ldr     r1, [pc, #0x6c] @ 0x2256040, (=#0x21ec)
.thumb
branch_2255fd2: @ 2255fd2 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, r0, r2
	strb    r2, [r0, r1]
	ldr     r0, [sp, #0x14]
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, r0
	blt     branch_2255fd2
.thumb
branch_2255fe0: @ 2255fe0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_225603c
.thumb
branch_2255fee: @ 2255fee :thumb
	ldr     r0, [sp, #0x10]
	add     r4, r0, #0x1
	ldr     r0, [sp, #0x14]
	cmp     r4, r0
	bge     branch_2256030
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	add     r6, r1, r0
.thumb
branch_2255ffe: @ 2255ffe :thumb
	ldr     r0, [pc, #0x40] @ 0x2256040, (=#0x21ec)
	ldr     r1, [sp, #0x8]
	ldrb    r0, [r6, r0]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	add     r7, r0, r4
	ldr     r0, [pc, #0x30] @ 0x2256040, (=#0x21ec)
	ldrb    r5, [r7, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r3, r5
	bl      Function_2252ec8
	cmp     r0, #0x0
	beq     branch_2256028
	ldr     r0, [pc, #0x1c] @ 0x2256040, (=#0x21ec)
	ldr     r1, [sp, #0xc]
	strb    r5, [r6, r0]
	strb    r1, [r7, r0]
.thumb
branch_2256028: @ 2256028 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2255ffe
.thumb
branch_2256030: @ 2256030 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_2255fee
.thumb
branch_225603c: @ 225603c :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2256040

.word 0x21ec @ 0x2256040
.thumb
Function_2256044: @ 2256044 :thumb
	push    {r3,r4}
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r2, [r1, r2]
	mov     r1, #0x7
	lsl     r1, r1, #12
	mov     r0, #0x0
	tst     r1, r2
	beq     branch_225606e
	ldr     r4, [pc, #0x1c] @ 0x2256074, (=#0x226ebd4)
	mov     r2, r0
.thumb
branch_225605a: @ 225605a :thumb
	ldrh    r1, [r4, #0x0]
	cmp     r3, r1
	bne     branch_2256066
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2256066

.thumb
branch_2256066: @ 2256066 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x6
	bcc     branch_225605a
.thumb
branch_225606e: @ 225606e :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2256072


.align 2


.word 0x226ebd4 @ 0x2256074
.thumb
Function_2256078: @ 2256078 :thumb
	push    {r3,r4}
	mov     r4, #0xc0
	mul     r4, r2
	add     r2, r1, r4
	ldr     r1, [pc, #0x24] @ 0x22560a8, (=#0x2dcc)
	mov     r0, #0x0
	ldr     r1, [r2, r1]
	lsl     r1, r1, #13
	lsr     r1, r1, #29
	beq     branch_22560a4
	ldr     r4, [pc, #0x1c] @ 0x22560ac, (=#0x226ebfa)
	mov     r2, r0
.thumb
branch_2256090: @ 2256090 :thumb
	ldrh    r1, [r4, #0x0]
	cmp     r3, r1
	bne     branch_225609c
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x225609c

.thumb
branch_225609c: @ 225609c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0xe
	bcc     branch_2256090
.thumb
branch_22560a4: @ 22560a4 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x22560a8

.word 0x2dcc @ 0x22560a8
.word 0x226ebfa @ 0x22560ac
.thumb
Function_22560b0: @ 22560b0 :thumb
	push    {r4-r7}
	mov     r0, #0xc1
	lsl     r0, r0, #6
	ldr     r3, [r1, r0]
	ldr     r0, [pc, #0x5c] @ 0x2256118, (=#0x183)
	cmp     r3, r0
	beq     branch_2256114
	ldr     r4, [r1, #0x64]
	mov     r0, #0xc0
	mov     r2, r4
	mul     r2, r0
	ldr     r4, [pc, #0x54] @ 0x225611c, (=#0x2dcc)
	add     r0, r1, r2
	ldr     r4, [r0, r4]
	lsl     r4, r4, #19
	lsr     r7, r4, #29
	cmp     r7, #0x4
	beq     branch_2256114
	mov     r6, #0x0
	cmp     r7, #0x0
	bls     branch_22560ea
	ldr     r4, [pc, #0x44] @ 0x2256120, (=#0x2df0)
.thumb
branch_22560dc: @ 22560dc :thumb
	ldrh    r5, [r0, r4]
	cmp     r3, r5
	beq     branch_2256114
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r6, r7
	bcc     branch_22560dc
.thumb
branch_22560ea: @ 22560ea :thumb
	add     r2, r1, r2
	lsl     r0, r6, #1
	add     r2, r2, r0
	ldr     r0, [pc, #0x2c] @ 0x2256120, (=#0x2df0)
	strh    r3, [r2, r0]
	sub     r0, #0x24
	add     r2, r1, r0
	ldr     r3, [r1, #0x64]
	mov     r0, #0xc0
	mov     r1, r3
	mul     r1, r0
	ldr     r3, [r2, r1]
	ldr     r0, [pc, #0x20] @ 0x2256124, (=#0xffffe3ff)
	and     r0, r3
	lsl     r3, r3, #19
	lsr     r3, r3, #29
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #29
	lsr     r3, r3, #19
	orr     r0, r3
	str     r0, [r2, r1]
.thumb
branch_2256114: @ 2256114 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2256118

.word 0x183 @ 0x2256118
.word 0x2dcc @ 0x225611c
.word 0x2df0 @ 0x2256120
.word 0xffffe3ff @ 0x2256124
.thumb
Function_2256128: @ 2256128 :thumb
	mov     r3, #0xc0
	mul     r3, r2
	add     r3, r1, r3
	ldr     r1, [pc, #0x14] @ 0x2256144, (=#0x2d4c)
	mov     r0, #0x0
.thumb
branch_2256132: @ 2256132 :thumb
	ldrh    r2, [r3, r1]
	cmp     r2, #0x0
	beq     branch_2256140
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r0, #0x4
	blt     branch_2256132
.thumb
branch_2256140: @ 2256140 :thumb
	bx      lr
@ 0x2256142


.align 2


.word 0x2d4c @ 0x2256144
.thumb
Function_2256148: @ 2256148 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r2, #0x0
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_2256160
	mov     r6, #0x0
	b       branch_2256174
@ 0x2256160

.thumb
branch_2256160: @ 2256160 :thumb
	ldr     r0, [pc, #0x160] @ 0x22562c4, (=#0x2160)
	ldr     r6, [r5, r0]
	cmp     r6, #0x0
	bne     branch_2256174
	ldr     r0, [pc, #0x15c] @ 0x22562c8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x158] @ 0x22562cc, (=#0x3e2)
	ldrb    r6, [r1, r0]
.thumb
branch_2256174: @ 2256174 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0xa
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22561a4
	cmp     r6, #0xd
	bne     branch_22561a4
	cmp     r7, r4
	beq     branch_22561a4
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x13c] @ 0x22562d0, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0x134] @ 0x22562d4, (=#0x215c)
	str     r0, [r5, r1]
	mov     r0, #0xb2
	str     r0, [sp, #0x0]
.thumb
branch_22561a4: @ 22561a4 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0xb
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22561ea
	cmp     r6, #0xb
	bne     branch_22561ea
	ldr     r0, [pc, #0x11c] @ 0x22562d8, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_22561ea
	ldr     r0, [pc, #0x104] @ 0x22562c8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x110] @ 0x22562dc, (=#0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22561ea
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xf4] @ 0x22562d0, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0xf0] @ 0x22562d4, (=#0x215c)
	str     r0, [r5, r1]
	mov     r0, #0xb2
	str     r0, [sp, #0x0]
.thumb
branch_22561ea: @ 22561ea :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0x12
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2256230
	cmp     r6, #0xa
	bne     branch_2256230
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xd8] @ 0x22562e0, (=#0x2dac)
	ldr     r0, [r1, r0]
	mov     r1, #0x20
	tst     r0, r1
	bne     branch_2256230
	ldr     r0, [pc, #0xc8] @ 0x22562d8, (=#0x213c)
	ldr     r0, [r5, r0]
	tst     r0, r1
	bne     branch_2256230
	ldr     r0, [pc, #0xb0] @ 0x22562c8, (=#0x3044)
	ldr     r3, [r5, r0]
	lsl     r0, r3, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0xbc] @ 0x22562dc, (=#0x3e1)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_225622c
	add     r1, #0xe5
	cmp     r3, r1
	bne     branch_2256230
.thumb
branch_225622c: @ 225622c :thumb
	mov     r0, #0xb3
	str     r0, [sp, #0x0]
.thumb
branch_2256230: @ 2256230 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0x2b
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225625c
	ldr     r0, [pc, #0x84] @ 0x22562c8, (=#0x3044)
	ldr     r2, [pc, #0xa0] @ 0x22562e4, (=#0x2270b8c)
	ldr     r3, [r5, r0]
	mov     r1, #0x0
.thumb
branch_2256248: @ 2256248 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	bne     branch_2256254
	mov     r0, #0xb5
	str     r0, [sp, #0x0]
	b       branch_225625c
@ 0x2256254

.thumb
branch_2256254: @ 2256254 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0xc
	bcc     branch_2256248
.thumb
branch_225625c: @ 225625c :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0x4e
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_2256278
	cmp     r6, #0xd
	bne     branch_2256278
	cmp     r7, r4
	beq     branch_2256278
	mov     r0, #0xb6
	str     r0, [sp, #0x0]
.thumb
branch_2256278: @ 2256278 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, #0x57
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_22562be
	cmp     r6, #0xb
	bne     branch_22562be
	ldr     r0, [pc, #0x48] @ 0x22562d8, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_22562be
	ldr     r0, [pc, #0x30] @ 0x22562c8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x3c] @ 0x22562dc, (=#0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22562be
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x20] @ 0x22562d0, (=#0x2d90)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0x1c] @ 0x22562d4, (=#0x215c)
	str     r0, [r5, r1]
	mov     r0, #0xb2
	str     r0, [sp, #0x0]
.thumb
branch_22562be: @ 22562be :thumb
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x22562c2


.align 2


.word 0x2160 @ 0x22562c4
.word 0x3044 @ 0x22562c8
.word 0x3e2 @ 0x22562cc
.word 0x2d90 @ 0x22562d0
.word 0x215c @ 0x22562d4
.word 0x213c @ 0x22562d8
.word 0x3e1 @ 0x22562dc
.word 0x2dac @ 0x22562e0
.word 0x2270b8c @ 0x22562e4
.thumb
Function_22562e8: @ 22562e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r6, #0x0
	bl      Function_2255a4c
	cmp     r0, #0x3
	beq     branch_2256306
	cmp     r0, #0x3d
	beq     branch_225634c
	b       branch_22563ce
@ 0x2256306

.thumb
branch_2256306: @ 2256306 :thumb
	mov     r2, #0xc0
	mov     r0, r4
	mul     r0, r2
	ldr     r3, [pc, #0xdc] @ 0x22563ec, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22563ce
	mov     r1, r3
	sub     r1, #0x31
	ldsb    r1, [r0, r1]
	cmp     r1, #0xc
	bge     branch_22563ce
	add     r2, #0x90
	ldr     r1, [r5, r2]
	add     r3, #0x48
	ldr     r0, [r0, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r0
	beq     branch_22563ce
	mov     r0, r5
	mov     r1, #0x11
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	str     r4, [r0, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r6, #0x1
	b       branch_22563ce
@ 0x225634c

.thumb
branch_225634c: @ 225634c :thumb
	ldr     r1, [pc, #0xa0] @ 0x22563f0, (=#0x2dac)
	mov     r0, #0xc0
	mov     r7, r4
	mul     r7, r0
	add     r0, r5, r1
	str     r0, [sp, #0x8]
	ldr     r0, [r0, r7]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_22563ce
	add     r0, r5, r7
	sub     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22563ce
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_22563ce
	ldr     r0, [sp, #0x8]
	mov     r1, #0x7
	ldr     r0, [r0, r7]
	tst     r1, r0
	beq     branch_225638e
	mov     r0, #0x13
	mov     r1, r6
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_22563c2
@ 0x225638e

.thumb
branch_225638e: @ 225638e :thumb
	ldr     r1, [pc, #0x64] @ 0x22563f4, (=#0xf88)
	tst     r1, r0
	beq     branch_225639e
	mov     r0, #0x13
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_22563c2
@ 0x225639e

.thumb
branch_225639e: @ 225639e :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_22563ae
	mov     r0, #0x13
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_22563c2
@ 0x22563ae

.thumb
branch_22563ae: @ 22563ae :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_22563bc
	mov     r0, #0x3
	add     r1, #0xf0
	str     r0, [r5, r1]
	b       branch_22563c2
@ 0x22563bc

.thumb
branch_22563bc: @ 22563bc :thumb
	mov     r0, #0x4
	add     r1, #0xf0
	str     r0, [r5, r1]
.thumb
branch_22563c2: @ 22563c2 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	mov     r0, #0xbe
	str     r0, [sp, #0x4]
	mov     r6, #0x1
.thumb
branch_22563ce: @ 22563ce :thumb
	cmp     r6, #0x1
	bne     branch_22563e4
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
.thumb
branch_22563e4: @ 22563e4 :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22563ea


.align 2


.word 0x2d8c @ 0x22563ec
.word 0x2dac @ 0x22563f0
.word 0xf88 @ 0x22563f4
.thumb
Function_22563f8: @ 22563f8 :thumb
	push    {r4,lr}
	cmp     r0, #0x0
	beq     branch_2256412
	bge     branch_2256406
	mov     r4, #0x0
	mvn     r4, r4
	b       branch_2256408
@ 0x2256406

.thumb
branch_2256406: @ 2256406 :thumb
	mov     r4, #0x1
.thumb
branch_2256408: @ 2256408 :thumb
	blx     Division
	cmp     r0, #0x0
	bne     branch_2256412
	mov     r0, r4
.thumb
branch_2256412: @ 2256412 :thumb
	pop     {r4,pc}
@ 0x2256414

.thumb
Function_2256414: @ 2256414 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xd0
	mov     r6, r0
	mov     r5, r1
	bl      Function_223df1c
	str     r0, [sp, #0x80]
	mov     r0, #0x0
	str     r0, [sp, #0x84]
	str     r0, [sp, #0xcc]
.thumb
Function_2256428: @ 2256428 :thumb
	ldr     r0, [r5, #0x58]
	cmp     r0, #0xf
	bls     branch_2256432
	bl      Function_2257008
.thumb
branch_2256432: @ 2256432 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r3, #0
	lsl     r6, r7, #2
	lsl     r2, r0, #6
	lsl     r2, r2, #10
	lsl     r0, r7, #12
	lsl     r2, r5, #17
	lsl     r2, r5, #22
	lsl     r4, r7, #30
	lsr     r4, r2, #4
	lsr     r4, r5, #7
	lsr     r0, r4, #9
	lsr     r6, r5, #11
	lsr     r2, r1, #12
	lsr     r4, r0, #13
	lsr     r0, r0, #14
	lsr     r0, r0, #15
	ldr     r0, [pc, #0x2e8] @ 0x2256748, (=#0x3121)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_22564f4
	mov     r0, r6
	bl      Function_223f21c
	ldr     r1, [pc, #0x2dc] @ 0x225674c, (=#0x3e9)
	cmp     r0, r1
	bgt     branch_22564a4
	bge     branch_22564d6
	cmp     r0, #0xf
	bhi     branch_22564e8
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r4, #1
	lsl     r2, r4, #1
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r0, r6, #0
	lsl     r0, r6, #0
	lsl     r0, r6, #0
	lsl     r2, r4, #1
	lsl     r2, r4, #1
	lsl     r4, r7, #0
	lsl     r2, r4, #1
	lsl     r2, r4, #1
	lsl     r2, r4, #1
	lsl     r6, r0, #1
	lsl     r6, r0, #1
.thumb
branch_22564a4: @ 22564a4 :thumb
	ldr     r1, [pc, #0x2a8] @ 0x2256750, (=#0x3ea)
	cmp     r0, r1
	beq     branch_22564e0
	b       branch_22564e8
@ 0x22564ac


.incbin "./baserom/overlay/overlay_0016.bin", 0x1b36c, 0x22564d6 - 0x22564ac


.thumb
branch_22564d6: @ 22564d6 :thumb
	ldr     r0, [pc, #0x288] @ 0x2256760, (=#0x126)
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_22564e8
@ 0x22564e0

.thumb
branch_22564e0: @ 22564e0 :thumb
	ldr     r0, [pc, #0x280] @ 0x2256764, (=#0x127)
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
.thumb
branch_22564e8: @ 22564e8 :thumb
	ldr     r0, [sp, #0x84]
	cmp     r0, #0x1
	bne     branch_22564f4
	ldr     r0, [pc, #0x258] @ 0x2256748, (=#0x3121)
	mov     r1, #0x1
	strb    r1, [r5, r0]
.thumb
branch_22564f4: @ 22564f4 :thumb
	ldr     r0, [r5, #0x58]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
	bl      Function_2257008
	ldr     r0, [sp, #0x80]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_22565ae
	ldr     r0, [pc, #0x260] @ 0x2256768, (=#0x2d68)
	add     r0, r5, r0
	str     r0, [sp, #0x90]
.thumb
branch_225650c: @ 225650c :thumb
	ldr     r0, [pc, #0x25c] @ 0x225676c, (=#0x21ec)
	add     r1, r5, r7
	ldrb    r4, [r1, r0]
	mov     r0, r6
	mov     r2, #0x0
	mov     r1, r4
	bl      Function_223e2a4
	str     r0, [sp, #0x88]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_223e2a4
	mov     r3, r0
	ldr     r2, [sp, #0x88]
	mov     r0, r6
	mov     r1, r5
	bl      Function_225b840
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [sp, #0x90]
	str     r0, [sp, #0x8c]
	ldr     r0, [r1, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_22565a6
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	cmp     r1, #0xff
	beq     branch_22565a6
	ldr     r0, [sp, #0x8c]
	ldr     r2, [pc, #0x218] @ 0x2256770, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_22565a6
	ldr     r2, [pc, #0x210] @ 0x2256774, (=#0x2db8)
	ldrh    r0, [r0, r2]
	cmp     r0, #0x70
	beq     branch_22565a6
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, r2
	sub     r0, #0x2c
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22565a6
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a4c
	cmp     r0, #0x24
	bne     branch_22565a6
	ldr     r1, [sp, #0x90]
	ldr     r0, [sp, #0x8c]
	ldr     r1, [r1, r0]
	mov     r0, #0x4
	mov     r2, r1
	orr     r2, r0
	ldr     r1, [sp, #0x90]
	ldr     r0, [sp, #0x8c]
	str     r2, [r1, r0]
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	mov     r0, #0xbb
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_22565ae
@ 0x22565a6

.thumb
branch_22565a6: @ 22565a6 :thumb
	ldr     r0, [sp, #0x80]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_225650c
.thumb
branch_22565ae: @ 22565ae :thumb
	ldr     r0, [sp, #0x80]
	cmp     r7, r0
	beq     branch_22565b8
	bl      Function_2257008
.thumb
branch_22565b8: @ 22565b8 :thumb
	ldr     r0, [r5, #0x58]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
	bl      Function_2257008
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	ble     branch_22566c0
	ldr     r0, [pc, #0x198] @ 0x2256768, (=#0x2d68)
	add     r7, r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0xbc]
	str     r0, [sp, #0xb8]
	str     r0, [sp, #0xb4]
	str     r0, [sp, #0xb0]
.thumb
branch_22565da: @ 22565da :thumb
	ldr     r0, [sp, #0x2c]
	add     r1, r5, r0
	ldr     r0, [pc, #0x18c] @ 0x225676c, (=#0x21ec)
	ldrb    r1, [r1, r0]
	mov     r0, #0xc0
	mov     r4, r1
	mul     r4, r0
	ldr     r0, [r7, r4]
	str     r1, [sp, #0x10]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_22566a4
	ldr     r0, [pc, #0x17c] @ 0x2256770, (=#0x2d8c)
	add     r1, r5, r4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22566a4
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x2d
	bgt     branch_2256610
	bge     branch_2256640
	cmp     r0, #0x2
	beq     branch_225661e
	b       branch_22566a4
@ 0x2256610

.thumb
branch_2256610: @ 2256610 :thumb
	cmp     r0, #0x46
	bgt     branch_2256618
	beq     branch_2256662
	b       branch_22566a4
@ 0x2256618

.thumb
branch_2256618: @ 2256618 :thumb
	cmp     r0, #0x75
	beq     branch_2256684
	b       branch_22566a4
@ 0x225661e

.thumb
branch_225661e: @ 225661e :thumb
	ldr     r0, [r7, r4]
	ldr     r1, [sp, #0xb0]
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	str     r0, [r7, r4]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_22566a4
	mov     r0, #0xb7
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_22566a4
@ 0x2256640

.thumb
branch_2256640: @ 2256640 :thumb
	ldr     r0, [r7, r4]
	ldr     r1, [sp, #0xb4]
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	str     r0, [r7, r4]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x8
	tst     r0, r1
	bne     branch_22566a4
	mov     r0, #0xb8
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_22566a4
@ 0x2256662

.thumb
branch_2256662: @ 2256662 :thumb
	ldr     r0, [r7, r4]
	ldr     r1, [sp, #0xb8]
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	str     r0, [r7, r4]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_22566a4
	mov     r0, #0xb9
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_22566a4
@ 0x2256684

.thumb
branch_2256684: @ 2256684 :thumb
	ldr     r0, [r7, r4]
	ldr     r1, [sp, #0xbc]
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	str     r0, [r7, r4]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x80
	tst     r0, r1
	bne     branch_22566a4
	mov     r0, #0xfc
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
.thumb
branch_22566a4: @ 22566a4 :thumb
	ldr     r0, [sp, #0x84]
	cmp     r0, #0x1
	bne     branch_22566b4
	mov     r1, #0x46
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_22566c0
@ 0x22566b4

.thumb
branch_22566b4: @ 22566b4 :thumb
	ldr     r0, [sp, #0x2c]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x80]
	str     r1, [sp, #0x2c]
	cmp     r1, r0
	blt     branch_22565da
.thumb
branch_22566c0: @ 22566c0 :thumb
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x80]
	cmp     r1, r0
	bne     branch_225673a
	ldr     r0, [r5, #0x58]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
	bl      Function_2257008
	ldr     r0, [sp, #0x80]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2256734
	ldr     r0, [pc, #0x8c] @ 0x2256768, (=#0x2d68)
	add     r0, r5, r0
	str     r0, [sp, #0x94]
.thumb
branch_22566e0: @ 22566e0 :thumb
	ldr     r0, [pc, #0x88] @ 0x225676c, (=#0x21ec)
	add     r1, r5, r4
	ldrb    r1, [r1, r0]
	mov     r0, #0xc0
	mov     r7, r1
	mul     r7, r0
	ldr     r0, [sp, #0x94]
	str     r1, [sp, #0x14]
	ldr     r0, [r0, r7]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_225672c
	ldr     r0, [pc, #0x74] @ 0x2256770, (=#0x2d8c)
	add     r1, r5, r7
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225672c
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x16
	bne     branch_225672c
	ldr     r0, [sp, #0x94]
	ldr     r1, [r0, r7]
	mov     r0, #0x2
	orr     r1, r0
	ldr     r0, [sp, #0x94]
	str     r1, [r0, r7]
	mov     r1, #0x46
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xba
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_2256734
@ 0x225672c

.thumb
branch_225672c: @ 225672c :thumb
	ldr     r0, [sp, #0x80]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_22566e0
.thumb
branch_2256734: @ 2256734 :thumb
	ldr     r0, [sp, #0x80]
	cmp     r4, r0
	beq     branch_225673e
.thumb
branch_225673a: @ 225673a :thumb
	bl      Function_2257008
.thumb
branch_225673e: @ 225673e :thumb
	ldr     r0, [r5, #0x58]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
	bl      Function_2257008
	add     r1, #0x21
	lsl     r0, r0, #0
	lsl     r1, r5, #15
	lsl     r0, r0, #0
	lsl     r2, r5, #15
	lsl     r0, r0, #0
	lsl     r7, r1, #4
	lsl     r0, r0, #0
	lsl     r1, r2, #4
	lsl     r0, r0, #0
	lsl     r2, r2, #4
	lsl     r0, r0, #0
	lsl     r6, r4, #4
	lsl     r0, r0, #0
	lsl     r7, r4, #4
	lsl     r0, r0, #0
	cmp     r5, #0x68
	lsl     r0, r0, #0
	mov     r1, #0xec
	lsl     r0, r0, #0
	cmp     r5, #0x8c
	lsl     r0, r0, #0
	cmp     r5, #0xb8
	lsl     r0, r0, #0
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bgt     branch_2256784
	b       branch_2256898
@ 0x2256784

.thumb
branch_2256784: @ 2256784 :thumb
	ldr     r0, [pc, #0x304] @ 0x2256a8c, (=#0x2d68)
	add     r0, r5, r0
	str     r0, [sp, #0x9c]
.thumb
branch_225678a: @ 225678a :thumb
	ldr     r0, [sp, #0x30]
	add     r1, r5, r0
	ldr     r0, [pc, #0x300] @ 0x2256a90, (=#0x21ec)
	ldrb    r1, [r1, r0]
	mov     r0, #0xc0
	mul     r0, r1
	str     r1, [sp, #0x18]
	ldr     r1, [sp, #0x9c]
	str     r0, [sp, #0x98]
	ldr     r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_225688a
	ldr     r0, [sp, #0x98]
	add     r1, r5, r0
	ldr     r0, [pc, #0x2e8] @ 0x2256a94, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225688a
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x58
	bne     branch_225688a
	mov     r0, #0x0
	str     r0, [sp, #0x78]
	str     r0, [sp, #0x74]
	str     r0, [sp, #0x7c]
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	ble     branch_2256844
	mov     r4, r5
.thumb
branch_22567cc: @ 22567cc :thumb
	ldr     r1, [sp, #0x18]
	mov     r0, r6
	bl      Function_223e208
	mov     r7, r0
	ldr     r1, [sp, #0x7c]
	mov     r0, r6
	bl      Function_223e208
	cmp     r7, r0
	beq     branch_2256836
	ldr     r0, [pc, #0x2b4] @ 0x2256a98, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r1
	bne     branch_2256836
	ldr     r0, [pc, #0x2a4] @ 0x2256a94, (=#0x2d8c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2256836
	ldr     r0, [pc, #0x2a4] @ 0x2256a9c, (=#0x2d5a)
	ldsb    r0, [r4, r0]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x2a0] @ 0x2256aa0, (=#0x226ebe0)
	add     r1, r0, r2
	ldr     r0, [pc, #0x2a0] @ 0x2256aa4, (=#0x2d44)
	ldrb    r1, [r1, #0x1]
	ldrh    r3, [r4, r0]
	ldr     r0, [pc, #0x298] @ 0x2256aa0, (=#0x226ebe0)
	ldrb    r0, [r0, r2]
	mul     r0, r3
	blx     Division
	ldr     r1, [sp, #0x78]
	add     r0, r1, r0
	str     r0, [sp, #0x78]
	ldr     r0, [pc, #0x290] @ 0x2256aa8, (=#0x2d5d)
	ldsb    r0, [r4, r0]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x280] @ 0x2256aa0, (=#0x226ebe0)
	add     r1, r0, r2
	ldr     r0, [pc, #0x288] @ 0x2256aac, (=#0x2d4a)
	ldrb    r1, [r1, #0x1]
	ldrh    r3, [r4, r0]
	ldr     r0, [pc, #0x278] @ 0x2256aa0, (=#0x226ebe0)
	ldrb    r0, [r0, r2]
	mul     r0, r3
	blx     Division
	ldr     r1, [sp, #0x74]
	add     r0, r1, r0
	str     r0, [sp, #0x74]
.thumb
branch_2256836: @ 2256836 :thumb
	ldr     r0, [sp, #0x7c]
	add     r4, #0xc0
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x80]
	str     r1, [sp, #0x7c]
	cmp     r1, r0
	blt     branch_22567cc
.thumb
branch_2256844: @ 2256844 :thumb
	ldr     r1, [sp, #0x9c]
	ldr     r0, [sp, #0x98]
	ldr     r1, [r1, r0]
	mov     r0, #0x8
	mov     r2, r1
	orr     r2, r0
	ldr     r1, [sp, #0x9c]
	ldr     r0, [sp, #0x98]
	str     r2, [r1, r0]
	ldr     r1, [sp, #0x78]
	ldr     r0, [sp, #0x74]
	add     r0, r1, r0
	beq     branch_225688a
	ldr     r0, [sp, #0x74]
	cmp     r1, r0
	blt     branch_2256868
	mov     r1, #0x12
	b       branch_225686a
@ 0x2256868

.thumb
branch_2256868: @ 2256868 :thumb
	mov     r1, #0xf
.thumb
branch_225686a: @ 225686a :thumb
	mov     r0, r5
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r1, r5
	ldr     r0, [sp, #0x18]
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0xcc]
	mov     r0, #0x1
	str     r0, [sp, #0x84]
	b       branch_2256898
@ 0x225688a

.thumb
branch_225688a: @ 225688a :thumb
	ldr     r0, [sp, #0x30]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x80]
	str     r1, [sp, #0x30]
	cmp     r1, r0
	bge     branch_2256898
	b       branch_225678a
@ 0x2256898

.thumb
branch_2256898: @ 2256898 :thumb
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x80]
	cmp     r1, r0
	beq     branch_22568a2
	b       Function_2257008
@ 0x22568a2

.thumb
branch_22568a2: @ 22568a2 :thumb
	ldr     r0, [r5, #0x58]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
	b       Function_2257008
@ 0x22568aa


.incbin "./baserom/overlay/overlay_0016.bin", 0x1b76a, 0x2256a8c - 0x22568aa


.word 0x2d68 @ 0x2256a8c
.word 0x21ec @ 0x2256a90
.word 0x2d8c @ 0x2256a94
.word 0x2db0 @ 0x2256a98
.word 0x2d5a @ 0x2256a9c
.word 0x226ebe0 @ 0x2256aa0
.word 0x2d44 @ 0x2256aa4
.word 0x2d5d @ 0x2256aa8
.word 0x2d4a @ 0x2256aac

.incbin "./baserom/overlay/overlay_0016.bin", 0x1b970, 0x2257008 - 0x2256ab0


.thumb
Function_2257008: @ 2257008 :thumb
	ldr     r0, [sp, #0x84]
	cmp     r0, #0x0
	bne     branch_2257012
	bl      Function_2256428
.thumb
branch_2257012: @ 2257012 :thumb
	ldr     r0, [sp, #0xcc]
	add     sp, #0xd0
	pop     {r3-r7,pc}
@ 0x2257018


.incbin "./baserom/overlay/overlay_0016.bin", 0x1bed8, 0x2257028 - 0x2257018


.thumb
Function_2257028: @ 2257028 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2257080
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223e2a4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_223e2a4
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_223f4bc
	mov     r3, #0x1
	mov     r2, r0
	and     r2, r3
	lsl     r0, r2, #2
	add     r1, sp, #0x0
	ldr     r0, [r1, r0]
	mov     r4, #0xc0
	mul     r4, r0
	add     r5, r6, r4
	ldr     r4, [pc, #0x18] @ 0x2257088, (=#0x2d8c)
	ldr     r4, [r5, r4]
	cmp     r4, #0x0
	bne     branch_2257084
	mov     r0, r2
	eor     r0, r3
	lsl     r0, r0, #2
	add     sp, #0x8
	ldr     r0, [r1, r0]
	pop     {r4-r6,pc}
@ 0x2257080

.thumb
branch_2257080: @ 2257080 :thumb
	mov     r0, #0x1
	eor     r0, r4
.thumb
branch_2257084: @ 2257084 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2257088

.word 0x2d8c @ 0x2257088
.thumb
Function_225708c: @ 225708c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x6c]
	mov     r7, r0
	mov     r4, r2
	mov     r6, #0x0
	cmp     r1, #0xff
	bne     branch_22570a0
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22570a0

.thumb
branch_22570a0: @ 22570a0 :thumb
	mov     r0, r5
	bl      Function_2259ac0
	cmp     r0, #0x1
	bne     branch_22570ae
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22570ae

.thumb
branch_22570ae: @ 22570ae :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x26
	bgt     branch_22570de
	blt     branch_22570be
	b       branch_2257386
@ 0x22570be

.thumb
branch_22570be: @ 22570be :thumb
	cmp     r0, #0x10
	bgt     branch_22570ca
	bge     branch_225718c
	cmp     r0, #0x9
	beq     branch_22570f6
	b       branch_225760a
@ 0x22570ca

.thumb
branch_22570ca: @ 22570ca :thumb
	cmp     r0, #0x1b
	bgt     branch_22570dc
	cmp     r0, #0x18
	blt     branch_22570dc
	bne     branch_22570d6
	b       branch_2257236
@ 0x22570d6

.thumb
branch_22570d6: @ 22570d6 :thumb
	cmp     r0, #0x1b
	bne     branch_22570dc
	b       branch_22572ca
@ 0x22570dc

.thumb
branch_22570dc: @ 22570dc :thumb
	b       branch_225760a
@ 0x22570de

.thumb
branch_22570de: @ 22570de :thumb
	cmp     r0, #0x38
	bgt     branch_22570ee
	blt     branch_22570e6
	b       branch_22574e0
@ 0x22570e6

.thumb
branch_22570e6: @ 22570e6 :thumb
	cmp     r0, #0x31
	bne     branch_22570ec
	b       branch_225744a
@ 0x22570ec

.thumb
branch_22570ec: @ 22570ec :thumb
	b       branch_225760a
@ 0x22570ee

.thumb
branch_22570ee: @ 22570ee :thumb
	cmp     r0, #0x6a
	bne     branch_22570f4
	b       branch_225758a
@ 0x22570f4

.thumb
branch_22570f4: @ 22570f4 :thumb
	b       branch_225760a
@ 0x22570f6

.thumb
branch_22570f6: @ 22570f6 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x2a8] @ 0x22573a8, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22571d8
	mov     r1, r3
	add     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_22571d8
	ldr     r1, [pc, #0x298] @ 0x22573ac, (=#0x216c)
	ldr     r0, [pc, #0x29c] @ 0x22573b0, (=#0x801fda49)
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_22571d8
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_22571d8
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22571d8
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r5, r0
	lsr     r1, r3, #4
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_225714a
	mov     r1, #0x2e
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22571d8
.thumb
branch_225714a: @ 225714a :thumb
	ldr     r0, [pc, #0x268] @ 0x22573b4, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x264] @ 0x22573b8, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22571d8
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_22571d8
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x46
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x1f
	str     r0, [r4, #0x0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x225718c

.thumb
branch_225718c: @ 225718c :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x60
	bne     branch_225719c
	mov     r7, r6
	b       branch_22571b6
@ 0x225719c

.thumb
branch_225719c: @ 225719c :thumb
	ldr     r0, [pc, #0x21c] @ 0x22573bc, (=#0x2160)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_22571aa
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	b       branch_22571b6
@ 0x22571aa

.thumb
branch_22571aa: @ 22571aa :thumb
	ldr     r0, [pc, #0x208] @ 0x22573b4, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x20c] @ 0x22573c0, (=#0x3e2)
	ldrb    r7, [r1, r0]
.thumb
branch_22571b6: @ 22571b6 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x1e8] @ 0x22573a8, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22571d8
	ldr     r0, [pc, #0x1e4] @ 0x22573ac, (=#0x216c)
	ldr     r2, [r5, r0]
	ldr     r0, [pc, #0x1e4] @ 0x22573b0, (=#0x801fda49)
	tst     r0, r2
	bne     branch_22571d8
	ldr     r0, [pc, #0x1e0] @ 0x22573b4, (=#0x3044)
	ldr     r3, [r5, r0]
	cmp     r3, #0xa5
	bne     branch_22571da
.thumb
branch_22571d8: @ 22571d8 :thumb
	b       branch_225760a
@ 0x22571da

.thumb
branch_22571da: @ 22571da :thumb
	mov     r0, #0x1c
	ldr     r2, [pc, #0x1c8] @ 0x22573a8, (=#0x2d8c)
	mul     r0, r1
	add     r0, r5, r0
	lsr     r2, r2, #4
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	bne     branch_22571f4
	mov     r2, #0x2e
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_22572e4
.thumb
branch_22571f4: @ 22571f4 :thumb
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	mov     r0, #0x10
	tst     r0, r2
	bne     branch_22572e4
	lsl     r0, r3, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0x1bc] @ 0x22573c4, (=#0x3e1)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22572e4
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r7, r0
	beq     branch_22572e4
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r7, r0
	beq     branch_22572e4
	mov     r0, #0xbc
	str     r0, [r4, #0x0]
	add     r0, #0x74
	str     r7, [r5, r0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x2257236

.thumb
branch_2257236: @ 2257236 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x168] @ 0x22573a8, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22572e4
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_22572e4
	ldr     r1, [pc, #0x158] @ 0x22573ac, (=#0x216c)
	ldr     r0, [pc, #0x15c] @ 0x22573b0, (=#0x801fda49)
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_22572e4
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_22572e4
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22572e4
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r2, r5, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_225728a
	add     r0, #0x8
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22572e4
.thumb
branch_225728a: @ 225728a :thumb
	ldr     r0, [pc, #0x128] @ 0x22573b4, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x124] @ 0x22573b8, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22572e4
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x120] @ 0x22573c8, (=#0x2d90)
	add     r2, r5, r2
	ldr     r2, [r2, r0]
	sub     r1, #0xc1
	mov     r0, r2
	mul     r0, r1
	mov     r1, #0x8
	bl      Function_22563f8
	ldr     r1, [pc, #0x114] @ 0x22573cc, (=#0x215c)
	mov     r6, #0x1
	str     r0, [r5, r1]
	mov     r0, #0x46
	ldr     r1, [r5, #0x64]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0xbd
	str     r0, [r4, #0x0]
	b       branch_225760a
@ 0x22572ca

.thumb
branch_22572ca: @ 22572ca :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0xd4] @ 0x22573a8, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22572e4
	mov     r1, r3
	add     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22572e6
.thumb
branch_22572e4: @ 22572e4 :thumb
	b       branch_225760a
@ 0x22572e6

.thumb
branch_22572e6: @ 22572e6 :thumb
	ldr     r1, [pc, #0xc4] @ 0x22573ac, (=#0x216c)
	ldr     r0, [pc, #0xc4] @ 0x22573b0, (=#0x801fda49)
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_22573ec
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_22573ec
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22573ec
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r5, r0
	lsr     r1, r3, #4
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_2257320
	mov     r1, #0x2e
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22573ec
.thumb
branch_2257320: @ 2257320 :thumb
	ldr     r0, [pc, #0x90] @ 0x22573b4, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x22573b8, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22573ec
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_22573ec
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0x3
	blx     Division
	cmp     r1, #0x0
	beq     branch_225735a
	cmp     r1, #0x1
	beq     branch_2257360
	cmp     r1, #0x2
	beq     branch_2257366
.thumb
branch_225735a: @ 225735a :thumb
	mov     r0, #0x16
	str     r0, [r4, #0x0]
	b       branch_225736a
@ 0x2257360

.thumb
branch_2257360: @ 2257360 :thumb
	mov     r0, #0x1f
	str     r0, [r4, #0x0]
	b       branch_225736a
@ 0x2257366

.thumb
branch_2257366: @ 2257366 :thumb
	mov     r0, #0x12
	str     r0, [r4, #0x0]
.thumb
branch_225736a: @ 225736a :thumb
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x46
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x2257386

.thumb
branch_2257386: @ 2257386 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x18] @ 0x22573a8, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22573ec
	mov     r1, r3
	add     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_22573ec
	ldr     r1, [pc, #0x8] @ 0x22573ac, (=#0x216c)
	ldr     r0, [pc, #0xc] @ 0x22573b0, (=#0x801fda49)
	b       branch_22573d0
@ 0x22573a6


.align 2


.word 0x2d8c @ 0x22573a8
.word 0x216c @ 0x22573ac
.word 0x801fda49 @ 0x22573b0
.word 0x3044 @ 0x22573b4
.word 0x3e9 @ 0x22573b8
.word 0x2160 @ 0x22573bc
.word 0x3e2 @ 0x22573c0
.word 0x3e1 @ 0x22573c4
.word 0x2d90 @ 0x22573c8
.word 0x215c @ 0x22573cc
.thumb
branch_22573d0: @ 22573d0 :thumb
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_22573ec
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_22573ec
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_22573ee
.thumb
branch_22573ec: @ 22573ec :thumb
	b       branch_225760a
@ 0x22573ee

.thumb
branch_22573ee: @ 22573ee :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r5, r0
	lsr     r1, r3, #4
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_2257408
	mov     r1, #0x2e
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22574fe
.thumb
branch_2257408: @ 2257408 :thumb
	ldr     r0, [pc, #0x204] @ 0x2257610, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x200] @ 0x2257614, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22574fe
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_22574fe
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x46
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x16
	str     r0, [r4, #0x0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x225744a

.thumb
branch_225744a: @ 225744a :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x1c4] @ 0x2257618, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22574fe
	mov     r1, r3
	add     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_22574fe
	ldr     r1, [pc, #0x1b4] @ 0x225761c, (=#0x216c)
	ldr     r0, [pc, #0x1b8] @ 0x2257620, (=#0x801fda49)
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_22574fe
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_22574fe
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22574fe
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r5, r0
	lsr     r1, r3, #4
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_225749e
	mov     r1, #0x2e
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_22574fe
.thumb
branch_225749e: @ 225749e :thumb
	ldr     r0, [pc, #0x170] @ 0x2257610, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x16c] @ 0x2257614, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22574fe
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_22574fe
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x46
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x19
	str     r0, [r4, #0x0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x22574e0

.thumb
branch_22574e0: @ 22574e0 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x130] @ 0x2257618, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r3]
	cmp     r1, #0x0
	beq     branch_22574fe
	mov     r1, r3
	add     r1, #0x24
	ldr     r1, [r0, r1]
	mov     r0, #0xf
	lsl     r0, r0, #16
	tst     r0, r1
	beq     branch_2257500
.thumb
branch_22574fe: @ 22574fe :thumb
	b       branch_225760a
@ 0x2257500

.thumb
branch_2257500: @ 2257500 :thumb
	ldr     r1, [pc, #0x118] @ 0x225761c, (=#0x216c)
	ldr     r0, [pc, #0x11c] @ 0x2257620, (=#0x801fda49)
	ldr     r2, [r5, r1]
	tst     r0, r2
	bne     branch_225760a
	mov     r0, r1
	sub     r0, #0x30
	ldr     r2, [r5, r0]
	mov     r0, #0x20
	tst     r0, r2
	bne     branch_225760a
	sub     r1, #0x2c
	ldr     r1, [r5, r1]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_225760a
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r5, r0
	lsr     r2, r3, #4
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	bne     branch_225753a
	mov     r2, #0x2e
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_225760a
.thumb
branch_225753a: @ 225753a :thumb
	ldr     r0, [pc, #0xd4] @ 0x2257610, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0xd0] @ 0x2257614, (=#0x3e9)
	ldrb    r2, [r2, r0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_225760a
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0xc4] @ 0x2257618, (=#0x2d8c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225760a
	mov     r0, r7
	bl      Function_223f4bc
	mov     r1, #0xa
	blx     Division
	cmp     r1, #0x3
	bge     branch_225760a
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x46
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x6a
	str     r0, [r4, #0x0]
	mov     r6, #0x1
	b       branch_225760a
@ 0x225758a

.thumb
branch_225758a: @ 225758a :thumb
	ldr     r1, [r5, #0x6c]
	ldr     r0, [r5, #0x74]
	cmp     r1, r0
	bne     branch_225760a
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_225760a
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, r6
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225760a
	mov     r2, #0x85
	lsl     r2, r2, #6
	ldr     r1, [r5, r2]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_225760a
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x50] @ 0x2257618, (=#0x2d8c)
	ldr     r3, [r1, r0]
	cmp     r3, #0x0
	beq     branch_225760a
	add     r2, #0x2c
	ldr     r3, [r5, r2]
	ldr     r2, [pc, #0x4c] @ 0x2257620, (=#0x801fda49)
	tst     r2, r3
	bne     branch_225760a
	ldr     r2, [pc, #0x34] @ 0x2257610, (=#0x3044)
	ldr     r2, [r5, r2]
	lsl     r2, r2, #4
	add     r3, r5, r2
	ldr     r2, [pc, #0x30] @ 0x2257614, (=#0x3e9)
	ldrb    r3, [r3, r2]
	mov     r2, #0x1
	tst     r3, r2
	beq     branch_225760a
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r1, r0]
	.hword  0x1e90 @ sub r0, r2, #0x2
	mul     r0, r1
	mov     r1, #0x4
	bl      Function_22563f8
	ldr     r1, [pc, #0x28] @ 0x2257624, (=#0x215c)
	mov     r6, #0x1
	str     r0, [r5, r1]
	mov     r0, #0x46
	ldr     r1, [r5, #0x64]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0xc1
	str     r0, [r4, #0x0]
.thumb
branch_225760a: @ 225760a :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x225760e


.align 2


.word 0x3044 @ 0x2257610
.word 0x3e9 @ 0x2257614
.word 0x2d8c @ 0x2257618
.word 0x216c @ 0x225761c
.word 0x801fda49 @ 0x2257620
.word 0x215c @ 0x2257624
.thumb
Function_2257628: @ 2257628 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r2
	mov     r0, r4
	mov     r1, r5
	mov     r7, r3
	mov     r6, #0x0
	bl      Function_2255a4c
	cmp     r0, #0x28
	bgt     branch_225766e
	bge     branch_2257708
	cmp     r0, #0x7
	bgt     branch_2257648
	beq     branch_22576b6
	b       branch_2257760
@ 0x2257648

.thumb
branch_2257648: @ 2257648 :thumb
	mov     r1, r0
	sub     r1, #0xc
	cmp     r1, #0x8
	bhi     branch_2257678
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #3
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r6, #1
	lsl     r2, r0, #4
	lsl     r2, r4, #0
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r4, r7, #0
.thumb
branch_225766e: @ 225766e :thumb
	cmp     r0, #0x48
	bgt     branch_225767a
	bge     branch_22576d0
	cmp     r0, #0x29
	beq     branch_22576ec
.thumb
branch_2257678: @ 2257678 :thumb
	b       branch_2257760
@ 0x225767a

.thumb
branch_225767a: @ 225767a :thumb
	cmp     r0, #0x54
	beq     branch_2257742
	b       branch_2257760
@ 0x2257680


.incbin "./baserom/overlay/overlay_0016.bin", 0x1c540, 0x22576b6 - 0x2257680


.thumb
branch_22576b6: @ 22576b6 :thumb
	mov     r0, #0xc0
	mul     r0, r5
	add     r1, r4, r0
	ldr     r0, [pc, #0xd4] @ 0x2257794, (=#0x2dac)
	ldr     r1, [r1, r0]
	mov     r0, #0x40
	tst     r1, r0
	beq     branch_2257760
	mov     r1, #0x3
	add     r0, #0xf0
	str     r1, [r4, r0]
	mov     r6, #0x1
	b       branch_2257760
@ 0x22576d0

.thumb
branch_22576d0: @ 22576d0 :thumb
	mov     r0, #0xc0
	mov     r1, r5
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0xb8] @ 0x2257794, (=#0x2dac)
	ldr     r2, [r2, r1]
	mov     r1, #0x7
	tst     r1, r2
	beq     branch_2257760
	mov     r1, #0x0
	add     r0, #0x70
	str     r1, [r4, r0]
	mov     r6, #0x1
	b       branch_2257760
@ 0x22576ec

.thumb
branch_22576ec: @ 22576ec :thumb
	mov     r0, #0xc0
	mov     r1, r5
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x9c] @ 0x2257794, (=#0x2dac)
	ldr     r2, [r2, r1]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2257760
	mov     r1, #0x2
	add     r0, #0x70
	str     r1, [r4, r0]
	mov     r6, #0x1
	b       branch_2257760
@ 0x2257708

.thumb
branch_2257708: @ 2257708 :thumb
	mov     r0, #0xc0
	mov     r1, r5
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x80] @ 0x2257794, (=#0x2dac)
	ldr     r2, [r2, r1]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_2257760
	mov     r1, #0x4
	add     r0, #0x70
	str     r1, [r4, r0]
	mov     r6, #0x1
	b       branch_2257760
@ 0x2257724


.incbin "./baserom/overlay/overlay_0016.bin", 0x1c5e4, 0x2257742 - 0x2257724


.thumb
branch_2257742: @ 2257742 :thumb
	mov     r0, #0xc0
	mov     r3, r5
	mul     r3, r0
	ldr     r0, [pc, #0x54] @ 0x22577a0, (=#0x2db8)
	add     r1, r4, r3
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2257760
	add     r0, #0x14
	add     r2, r4, r0
	mov     r0, #0x1
	ldr     r1, [r2, r3]
	lsl     r0, r0, #22
	orr     r0, r1
	str     r0, [r2, r3]
.thumb
branch_2257760: @ 2257760 :thumb
	cmp     r6, #0x1
	bne     branch_225778e
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2255a4c
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	cmp     r7, #0x0
	bne     branch_225778e
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xdd
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
.thumb
branch_225778e: @ 225778e :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2257792


.align 2


.word 0x2dac @ 0x2257794

.incbin "./baserom/overlay/overlay_0016.bin", 0x1c658, 0x22577a0 - 0x2257798


.word 0x2db8 @ 0x22577a0
.thumb
Function_22577a4: @ 22577a4 :thumb
	mov     r0, #0x0
	cmp     r1, #0x28
	bgt     branch_22577c4
	bge     branch_22577fa
	cmp     r1, #0x7
	bgt     branch_22577b4
	beq     branch_22577dc
	bx      lr
@ 0x22577b4

.thumb
branch_22577b4: @ 22577b4 :thumb
	cmp     r1, #0x11
	bgt     branch_2257802
	cmp     r1, #0xf
	blt     branch_2257802
	beq     branch_22577e6
	cmp     r1, #0x11
	beq     branch_22577d2
	bx      lr
@ 0x22577c4

.thumb
branch_22577c4: @ 22577c4 :thumb
	cmp     r1, #0x29
	bgt     branch_22577cc
	beq     branch_22577f0
	bx      lr
@ 0x22577cc

.thumb
branch_22577cc: @ 22577cc :thumb
	cmp     r1, #0x48
	beq     branch_22577e6
	bx      lr
@ 0x22577d2

.thumb
branch_22577d2: @ 22577d2 :thumb
	ldr     r1, [pc, #0x30] @ 0x2257804, (=#0xf88)
	tst     r1, r2
	beq     branch_2257802
	mov     r0, #0x1
	bx      lr
@ 0x22577dc

.thumb
branch_22577dc: @ 22577dc :thumb
	mov     r1, #0x40
	tst     r1, r2
	beq     branch_2257802
	mov     r0, #0x1
	bx      lr
@ 0x22577e6

.thumb
branch_22577e6: @ 22577e6 :thumb
	mov     r1, #0x7
	tst     r1, r2
	beq     branch_2257802
	mov     r0, #0x1
	bx      lr
@ 0x22577f0

.thumb
branch_22577f0: @ 22577f0 :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2257802
	mov     r0, #0x1
	bx      lr
@ 0x22577fa

.thumb
branch_22577fa: @ 22577fa :thumb
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_2257802
	mov     r0, #0x1
.thumb
branch_2257802: @ 2257802 :thumb
	bx      lr
@ 0x2257804

.word 0xf88 @ 0x2257804
.thumb
Function_2257808: @ 2257808 :thumb
	push    {r3-r7,lr}
	mov     r5, #0x0
	mov     r4, r1
	str     r5, [sp, #0x0]
	ldr     r1, [r4, #0x6c]
	mov     r7, r0
	mov     r6, r2
	cmp     r1, #0xff
	beq     branch_225784a
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x1c
	bne     branch_225784a
	mov     r1, r4
	add     r1, #0x94
	ldr     r0, [r4, #0x6c]
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_225784a
	ldr     r1, [pc, #0x164] @ 0x2257998, (=#0x213c)
	ldr     r2, [r4, r1]
	mov     r1, #0x80
	tst     r2, r1
	beq     branch_225784a
	add     r1, #0x98
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r5, #0x1
	b       branch_225787a
@ 0x225784a

.thumb
branch_225784a: @ 225784a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x1c
	bne     branch_225787a
	mov     r1, r4
	add     r1, #0x94
	ldr     r0, [r4, #0x64]
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_225787a
	ldr     r1, [pc, #0x134] @ 0x2257998, (=#0x213c)
	ldr     r2, [r4, r1]
	mov     r1, #0x80
	tst     r2, r1
	beq     branch_225787a
	add     r1, #0x98
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, #0x6c]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r5, #0x1
.thumb
branch_225787a: @ 225787a :thumb
	cmp     r5, #0x1
	bne     branch_22578d2
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x110] @ 0x225799c, (=#0x2dac)
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x110] @ 0x22579a0, (=#0xf88)
	tst     r1, r0
	beq     branch_225789a
	mov     r0, #0x16
	str     r0, [sp, #0x0]
	b       branch_22578b0
@ 0x225789a

.thumb
branch_225789a: @ 225789a :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_22578a6
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	b       branch_22578b0
@ 0x22578a6

.thumb
branch_22578a6: @ 22578a6 :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_22578b0
	mov     r0, #0x1f
	str     r0, [sp, #0x0]
.thumb
branch_22578b0: @ 22578b0 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_22578d2
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	str     r6, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22578d2

.thumb
branch_22578d2: @ 22578d2 :thumb
	mov     r0, r7
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2259b9c
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_22578f6
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	str     r6, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22578f6

.thumb
branch_22578f6: @ 22578f6 :thumb
	ldr     r1, [r4, #0x6c]
	cmp     r1, #0xff
	beq     branch_2257936
	mov     r0, r4
	bl      Function_2258ab8
	cmp     r0, #0x6c
	bne     branch_2257936
	mov     r1, r4
	add     r1, #0x94
	ldr     r0, [r4, #0x6c]
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_2257936
	mov     r1, #0x1c
	mov     r2, r0
	mul     r2, r1
	add     r3, r4, r2
	mov     r2, #0xba
	lsl     r2, r2, #2
	ldr     r3, [r3, r2]
	mov     r2, #0x4
	tst     r2, r3
	beq     branch_2257936
	add     r1, #0xfc
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r5, #0x1
	b       branch_2257970
@ 0x2257936

.thumb
branch_2257936: @ 2257936 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258ab8
	cmp     r0, #0x6c
	bne     branch_2257970
	mov     r1, r4
	add     r1, #0x94
	ldr     r0, [r4, #0x64]
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_2257970
	mov     r1, #0x1c
	mov     r2, r0
	mul     r2, r1
	add     r3, r4, r2
	mov     r2, #0xba
	lsl     r2, r2, #2
	ldr     r3, [r3, r2]
	mov     r2, #0x4
	tst     r2, r3
	beq     branch_2257970
	add     r1, #0xfc
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, #0x6c]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r5, #0x1
.thumb
branch_2257970: @ 2257970 :thumb
	cmp     r5, #0x1
	bne     branch_2257994
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2251e1c
	str     r6, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2257994

.thumb
branch_2257994: @ 2257994 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2257998

.word 0x213c @ 0x2257998
.word 0x2dac @ 0x225799c
.word 0xf88 @ 0x22579a0
.thumb
Function_22579a4: @ 22579a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	bl      Function_2258ab8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2258acc
	mov     r6, r0
	ldr     r0, [sp, #0x4]
	mov     r3, #0xc0
	mov     r5, r0
	ldr     r0, [pc, #0x2f8] @ 0x2257cc8, (=#0x2d8c)
	mul     r5, r3
	add     r1, r4, r0
	ldr     r2, [r1, r5]
	str     r1, [sp, #0x14]
	cmp     r2, #0x0
	bne     branch_22579de
	b       branch_2257fd4
@ 0x22579de

.thumb
branch_22579de: @ 22579de :thumb
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x36
	bls     branch_22579e6
	b       branch_2257fa6
@ 0x22579e6

.thumb
branch_22579e6: @ 22579e6 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r6, #22
	lsl     r4, r5, #1
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r6, r4, #2
	lsl     r2, r7, #2
	lsl     r6, r1, #3
	lsl     r2, r4, #3
	lsl     r6, r6, #3
	lsl     r4, r1, #4
	lsl     r6, r5, #5
	lsl     r2, r0, #6
	lsl     r4, r0, #2
	lsl     r0, r4, #7
	lsl     r4, r3, #8
	lsl     r2, r3, #9
	lsl     r6, r2, #10
	lsl     r0, r6, #11
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r4, r5, #12
	lsl     r2, r6, #13
	lsl     r0, r7, #14
	lsl     r6, r7, #15
	lsl     r4, r0, #17
	lsl     r4, r1, #18
	lsl     r6, r1, #19
	lsl     r2, r6, #22
	lsl     r0, r0, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r4, r7, #20
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r2, r6, #22
	lsl     r4, r4, #21
	add     r1, r4, r5
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r1, r0]
	lsr     r0, r0, #1
	cmp     r2, r0
	bhi     branch_2257af6
	ldr     r0, [pc, #0x25c] @ 0x2257ccc, (=#0x215c)
	mov     r7, #0xc6
	str     r6, [r4, r0]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_2257fa6
@ 0x2257a78


.incbin "./baserom/overlay/overlay_0016.bin", 0x1c938, 0x2257af6 - 0x2257a78


.thumb
branch_2257af6: @ 2257af6 :thumb
	b       branch_2257fa6
@ 0x2257af8


.incbin "./baserom/overlay/overlay_0016.bin", 0x1c9b8, 0x2257cc8 - 0x2257af8


.word 0x2d8c @ 0x2257cc8
.word 0x215c @ 0x2257ccc

.incbin "./baserom/overlay/overlay_0016.bin", 0x1cb90, 0x2257fa6 - 0x2257cd0


.thumb
branch_2257fa6: @ 2257fa6 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_2257fd4
	mov     r1, #0x46
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2258874
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2251e1c
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x15
	str     r0, [r4, #0x8]
.thumb
branch_2257fd4: @ 2257fd4 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2257fda


.incbin "./baserom/overlay/overlay_0016.bin", 0x1ce9a, 0x2258008 - 0x2257fda


.thumb
Function_2258008: @ 2258008 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r2
	mov     r7, #0x0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2258ab8
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2258acc
	mov     r0, #0xc0
	mov     r4, r6
	mul     r4, r0
	ldr     r0, [pc, #0xc8] @ 0x22580f8, (=#0x2d8c)
	add     r1, r5, r0
	str     r1, [sp, #0x8]
	ldr     r1, [r1, r4]
	cmp     r1, #0x0
	beq     branch_22580f2
	ldr     r2, [sp, #0x4]
	cmp     r2, #0x45
	beq     branch_2258046
	mov     r0, r2
	cmp     r0, #0x6d
	beq     branch_2258062
	b       branch_22580c8
@ 0x2258046

.thumb
branch_2258046: @ 2258046 :thumb
	add     r2, r5, r4
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	cmp     r1, r0
	bcs     branch_22580c8
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0xa4] @ 0x22580fc, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	mov     r0, #0xd5
	str     r0, [sp, #0x0]
	b       branch_22580c8
@ 0x2258062

.thumb
branch_2258062: @ 2258062 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1b
	mov     r3, r7
	bl      Function_2252060
	cmp     r0, #0x3
	beq     branch_2258082
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1c
	mov     r3, r7
	bl      Function_2252060
	cmp     r0, #0x3
	bne     branch_22580a2
.thumb
branch_2258082: @ 2258082 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2258100, (=#0x2d90)
	add     r1, r5, r4
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x8]
	ldr     r1, [r1, r4]
	cmp     r1, r0
	bcs     branch_22580c8
	mov     r1, #0x10
	bl      Function_22563f8
	ldr     r1, [pc, #0x64] @ 0x22580fc, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	mov     r0, #0xd5
	str     r0, [sp, #0x0]
	b       branch_22580c8
@ 0x22580a2

.thumb
branch_22580a2: @ 22580a2 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_22580c8
	ldr     r0, [pc, #0x50] @ 0x2258100, (=#0x2d90)
	add     r1, r5, r4
	ldr     r1, [r1, r0]
	.hword  0x1e78 @ sub r0, r7, #0x1
	mul     r0, r1
	mov     r1, #0x8
	bl      Function_22563f8
	ldr     r1, [pc, #0x3c] @ 0x22580fc, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	mov     r0, #0xd7
	str     r0, [sp, #0x0]
.thumb
branch_22580c8: @ 22580c8 :thumb
	cmp     r7, #0x1
	bne     branch_22580f2
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r6, [r5, r0]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2258874
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2251e1c
	ldr     r0, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
.thumb
branch_22580f2: @ 22580f2 :thumb
	mov     r0, r7
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22580f8

.word 0x2d8c @ 0x22580f8
.word 0x215c @ 0x22580fc
.word 0x2d90 @ 0x2258100
.thumb
Function_2258104: @ 2258104 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	mov     r6, r3
	bl      Function_2258ab8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2258acc
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r3, #0xc0
	mov     r5, r0
	ldr     r0, [pc, #0x2f4] @ 0x2258428, (=#0x2d8c)
	mul     r5, r3
	add     r1, r4, r0
	ldr     r2, [r1, r5]
	str     r1, [sp, #0x14]
	cmp     r2, #0x0
	bne     branch_2258140
	b       branch_225879e
@ 0x2258140

.thumb
branch_2258140: @ 2258140 :thumb
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x36
	bhi     branch_22581cc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r6, #24
	lsl     r4, r5, #1
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r4, r5, #2
	lsl     r2, r0, #3
	lsl     r0, r3, #3
	lsl     r6, r5, #3
	lsl     r4, r0, #4
	lsl     r2, r3, #4
	lsl     r6, r7, #5
	lsl     r6, r2, #6
	lsl     r0, r1, #2
	lsl     r2, r2, #10
	lsl     r4, r7, #11
	lsl     r2, r7, #12
	lsl     r0, r7, #13
	lsl     r6, r6, #14
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #15
	lsl     r4, r7, #16
	lsl     r4, r0, #18
	lsl     r4, r1, #19
	lsl     r6, r2, #20
	lsl     r6, r3, #21
	lsl     r2, r4, #22
	lsl     r6, r6, #24
	lsl     r4, r3, #9
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r4, r2, #8
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r6, #24
	lsl     r6, r7, #8
	add     r1, r4, r5
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r1, r0]
	lsr     r0, r0, #1
	cmp     r2, r0
	bls     branch_22581ce
.thumb
branch_22581cc: @ 22581cc :thumb
	b       branch_225878a
@ 0x22581ce

.thumb
branch_22581ce: @ 22581ce :thumb
	ldr     r0, [pc, #0x25c] @ 0x225842c, (=#0x215c)
	str     r7, [r4, r0]
	mov     r0, #0xc6
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_225878a
@ 0x22581dc


.incbin "./baserom/overlay/overlay_0016.bin", 0x1d09c, 0x2258428 - 0x22581dc


.word 0x2d8c @ 0x2258428
.word 0x215c @ 0x225842c

.incbin "./baserom/overlay/overlay_0016.bin", 0x1d2f0, 0x225878a - 0x2258430


.thumb
branch_225878a: @ 225878a :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_225879e
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2258874
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_225879e: @ 225879e :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22587a4


.incbin "./baserom/overlay/overlay_0016.bin", 0x1d664, 0x2258874 - 0x22587a4


.thumb
Function_2258874: @ 2258874 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2255a4c
	cmp     r0, #0x67
	bne     branch_2258886
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2258886

.thumb
branch_2258886: @ 2258886 :thumb
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0x10] @ 0x22588a0, (=#0x2dcc)
	ldr     r1, [r2, r0]
	lsl     r1, r1, #10
	lsr     r1, r1, #29
	beq     branch_225889a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225889a

.thumb
branch_225889a: @ 225889a :thumb
	sub     r0, #0x14
	ldrh    r0, [r2, r0]
	pop     {r3-r5,pc}
@ 0x22588a0

.word 0x2dcc @ 0x22588a0
.thumb
Function_22588a4: @ 22588a4 :thumb
	lsl     r1, r1, #4
	add     r1, r0, r1
	ldr     r0, [pc, #0xc] @ 0x22588b8, (=#0x21a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x27
	bne     branch_22588b4
	mov     r0, #0x1
	bx      lr
@ 0x22588b4

.thumb
branch_22588b4: @ 22588b4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22588b8

.word 0x21a8 @ 0x22588b8
.thumb
Function_22588bc: @ 22588bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x6c]
	str     r0, [sp, #0x0]
	mov     r6, r2
	mov     r7, #0x0
	cmp     r1, #0xff
	bne     branch_22588d4
	add     sp, #0xc
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x22588d4

.thumb
branch_22588d4: @ 22588d4 :thumb
	mov     r0, r5
	bl      Function_2259ac0
	cmp     r0, #0x1
	bne     branch_22588e4
	add     sp, #0xc
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x22588e4

.thumb
branch_22588e4: @ 22588e4 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2258ab8
	mov     r4, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	mov     r2, r7
	bl      Function_2258acc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x64]
	bl      Function_223e208
	str     r0, [sp, #0x8]
	cmp     r4, #0x2f
	bgt     branch_225891a
	cmp     r4, #0x2b
	blt     branch_2258918
	bne     branch_2258910
	b       branch_2258a4c
@ 0x2258910

.thumb
branch_2258910: @ 2258910 :thumb
	cmp     r4, #0x2e
	beq     branch_225899c
	cmp     r4, #0x2f
	beq     branch_22589fa
.thumb
branch_2258918: @ 2258918 :thumb
	b       branch_2258a92
@ 0x225891a

.thumb
branch_225891a: @ 225891a :thumb
	cmp     r4, #0x74
	bne     branch_2258984
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	add     r3, r5, r1
	ldr     r1, [pc, #0x170] @ 0x2258a98, (=#0x2d8c)
	ldr     r2, [r3, r1]
	cmp     r2, #0x0
	beq     branch_2258984
	add     r1, #0x2c
	ldrh    r1, [r3, r1]
	cmp     r1, #0x0
	bne     branch_2258984
	add     r1, r5, r0
	ldr     r0, [pc, #0x160] @ 0x2258a9c, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	ldr     r1, [sp, #0x8]
	lsl     r1, r1, #3
	add     r2, r5, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r2, [r2, r1]
	lsl     r2, r2, #3
	lsr     r2, r2, #26
	tst     r0, r2
	bne     branch_2258984
	ldr     r0, [pc, #0x148] @ 0x2258aa0, (=#0x3044)
	sub     r1, #0xaa
	ldr     r0, [r5, r0]
	cmp     r0, r1
	beq     branch_2258984
	ldr     r2, [r5, #0x6c]
	mov     r1, #0x1c
	mul     r1, r2
	add     r3, r5, r1
	mov     r1, #0xb6
	lsl     r1, r1, #2
	ldr     r2, [r3, r1]
	cmp     r2, #0x0
	bne     branch_2258978
	add     r1, #0x8
	ldr     r1, [r3, r1]
	cmp     r1, #0x0
	beq     branch_2258984
.thumb
branch_2258978: @ 2258978 :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2258986
.thumb
branch_2258984: @ 2258984 :thumb
	b       branch_2258a92
@ 0x2258986

.thumb
branch_2258986: @ 2258986 :thumb
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x118] @ 0x2258aa4, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r1, r0
	beq     branch_2258a92
	mov     r1, #0xd8
	str     r1, [r6, #0x0]
	mov     r7, r0
	b       branch_2258a92
@ 0x225899c

.thumb
branch_225899c: @ 225899c :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0xf0] @ 0x2258a98, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2258a92
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_2258a92
	mov     r0, #0x85
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_2258a92
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2258a92
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0xc8] @ 0x2258aa8, (=#0x2d90)
	add     r2, r5, r2
	ldr     r2, [r2, r0]
	sub     r1, #0xc1
	mov     r0, r2
	mul     r0, r1
	ldr     r1, [sp, #0x4]
	bl      Function_22563f8
	ldr     r1, [pc, #0xbc] @ 0x2258aac, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	lsr     r0, r1, #5
	str     r0, [r6, #0x0]
	b       branch_2258a92
@ 0x22589fa

.thumb
branch_22589fa: @ 22589fa :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x94] @ 0x2258a98, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2258a92
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_2258a92
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, #0x2e
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2258a92
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x78] @ 0x2258aa8, (=#0x2d90)
	add     r2, r5, r2
	ldr     r2, [r2, r0]
	sub     r1, #0xc1
	mov     r0, r2
	mul     r0, r1
	ldr     r1, [sp, #0x4]
	bl      Function_22563f8
	ldr     r1, [pc, #0x68] @ 0x2258aac, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	lsr     r0, r1, #5
	str     r0, [r6, #0x0]
	b       branch_2258a92
@ 0x2258a4c

.thumb
branch_2258a4c: @ 2258a4c :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r2, [pc, #0x44] @ 0x2258a98, (=#0x2d8c)
	add     r0, r5, r0
	ldr     r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_2258a92
	ldr     r1, [pc, #0x50] @ 0x2258ab0, (=#0x216c)
	ldr     r3, [r5, r1]
	mov     r1, #0x2
	tst     r1, r3
	beq     branch_2258a92
	add     r1, r2, #0x4
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x4]
	bl      Function_22563f8
	ldr     r1, [pc, #0x38] @ 0x2258aac, (=#0x215c)
	mov     r7, #0x1
	str     r0, [r5, r1]
	mov     r1, #0xc6
	str     r1, [r6, #0x0]
	ldr     r0, [r5, #0x6c]
	add     r1, #0x52
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x28] @ 0x2258ab4, (=#0x2db8)
	add     r2, r5, r2
	ldrh    r0, [r2, r0]
	add     r1, #0x68
	str     r0, [r5, r1]
.thumb
branch_2258a92: @ 2258a92 :thumb
	mov     r0, r7
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2258a98

.word 0x2d8c @ 0x2258a98
.word 0x219c @ 0x2258a9c
.word 0x3044 @ 0x2258aa0
.word 0x3e9 @ 0x2258aa4
.word 0x2d90 @ 0x2258aa8
.word 0x215c @ 0x2258aac
.word 0x216c @ 0x2258ab0
.word 0x2db8 @ 0x2258ab4
.thumb
Function_2258ab8: @ 2258ab8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225b0fc
	pop     {r4,pc}
@ 0x2258acc

.thumb
Function_2258acc: @ 2258acc :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r2, #0x0
	beq     branch_2258ade
	cmp     r2, #0x1
	beq     branch_2258afa
	cmp     r2, #0x2
	beq     branch_2258ae6
	b       branch_2258b04
@ 0x2258ade

.thumb
branch_2258ade: @ 2258ade :thumb
	bl      Function_2258874
	mov     r1, r0
	b       branch_2258b04
@ 0x2258ae6

.thumb
branch_2258ae6: @ 2258ae6 :thumb
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	ldr     r0, [pc, #0x20] @ 0x2258b10, (=#0x2dcc)
	ldr     r0, [r2, r0]
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	beq     branch_2258afa
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2258afa

.thumb
branch_2258afa: @ 2258afa :thumb
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2258b14, (=#0x2db8)
	ldrh    r1, [r1, r0]
.thumb
branch_2258b04: @ 2258b04 :thumb
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_225b0fc
	pop     {r4,pc}
@ 0x2258b0e


.align 2


.word 0x2dcc @ 0x2258b10
.word 0x2db8 @ 0x2258b14
.thumb
Function_2258b18: @ 2258b18 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xb
	bl      Function_225b0fc
	pop     {r4,pc}
@ 0x2258b2c

.thumb
Function_2258b2c: @ 2258b2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xc
	bl      Function_225b0fc
	pop     {r4,pc}
@ 0x2258b40

.thumb
Function_2258b40: @ 2258b40 :thumb
	mov     r2, #0xc0
	mul     r2, r1
	ldr     r1, [pc, #0x8] @ 0x2258b50, (=#0x2db8)
	add     r2, r0, r2
	ldrh    r1, [r2, r1]
	ldr     r3, [pc, #0x8] @ 0x2258b54, (=#0x225b0fd)
	mov     r2, #0x8
	bx      r3
@ 0x2258b50

.word 0x2db8 @ 0x2258b50
.word Function_225b0fc+1 @ =0x225b0fd, 0x2258b54
.thumb
Function_2258b58: @ 2258b58 :thumb
	push    {r3,lr}
	mov     r2, #0xc0
	mul     r2, r1
	ldr     r1, [pc, #0x1c] @ 0x2258b7c, (=#0x2dcc)
	add     r3, r0, r2
	ldr     r2, [r3, r1]
	lsl     r2, r2, #10
	lsr     r2, r2, #29
	beq     branch_2258b6e
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2258b6e

.thumb
branch_2258b6e: @ 2258b6e :thumb
	sub     r1, #0x14
	ldrh    r1, [r3, r1]
	mov     r2, #0x9
	bl      Function_225b0fc
	pop     {r3,pc}
@ 0x2258b7a


.align 2


.word 0x2dcc @ 0x2258b7c
.thumb
Function_2258b80: @ 2258b80 :thumb
	push    {r3,lr}
	mov     r2, #0xc0
	mul     r2, r1
	ldr     r1, [pc, #0x1c] @ 0x2258ba4, (=#0x2dcc)
	add     r3, r0, r2
	ldr     r2, [r3, r1]
	lsl     r2, r2, #10
	lsr     r2, r2, #29
	beq     branch_2258b96
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2258b96

.thumb
branch_2258b96: @ 2258b96 :thumb
	sub     r1, #0x14
	ldrh    r1, [r3, r1]
	mov     r2, #0xa
	bl      Function_225b0fc
	pop     {r3,pc}
@ 0x2258ba2


.align 2


.word 0x2dcc @ 0x2258ba4

.incbin "./baserom/overlay/overlay_0016.bin", 0x1da68, 0x2258cb4 - 0x2258ba8


.thumb
Function_2258cb4: @ 2258cb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	str     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	mov     r5, r6
	bl      Function_2258b40
	mov     r7, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2258acc
	str     r0, [sp, #0x10]
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_2259ac0
	cmp     r0, #0x1
	bne     branch_2258cea
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x2258cea

.thumb
branch_2258cea: @ 2258cea :thumb
	cmp     r7, #0x17
	bls     branch_2258cf0
	b       branch_225916a
@ 0x2258cf0

.thumb
branch_2258cf0: @ 2258cf0 :thumb
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r5, #17
	lsl     r0, r7, #1
	lsl     r0, r2, #2
	lsl     r0, r5, #2
	lsl     r0, r0, #3
	lsl     r0, r3, #3
	lsl     r0, r6, #3
	lsl     r6, r5, #0
	lsl     r6, r4, #5
	lsl     r6, r7, #5
	lsl     r6, r1, #1
	lsl     r0, r4, #7
	lsl     r6, r4, #8
	lsl     r4, r5, #9
	lsl     r2, r6, #10
	lsl     r0, r7, #11
	lsl     r0, r5, #13
	lsl     r6, r0, #14
	lsl     r4, r4, #14
	lsl     r2, r0, #15
	lsl     r0, r4, #15
	lsl     r4, r1, #17
	lsl     r6, r7, #15
	lsl     r6, r4, #17
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	ldr     r0, [pc, #0x2f0] @ 0x2259028, (=#0x2d8c)
	ldr     r1, [r2, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	cmp     r1, r0
	beq     branch_2258d48
	ldr     r1, [pc, #0x2e8] @ 0x225902c, (=#0x215c)
	ldr     r0, [sp, #0x10]
	mov     r5, #0xc6
	str     r0, [r4, r1]
.thumb
branch_2258d48: @ 2258d48 :thumb
	mov     r6, #0x1
	b       branch_2259180
@ 0x2258d4c


.incbin "./baserom/overlay/overlay_0016.bin", 0x1dc0c, 0x2259028 - 0x2258d4c


.word 0x2d8c @ 0x2259028
.word 0x215c @ 0x225902c

.incbin "./baserom/overlay/overlay_0016.bin", 0x1def0, 0x225916a - 0x2259030


.thumb
branch_225916a: @ 225916a :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x8c] @ 0x2259200, (=#0x2db8)
	add     r1, r4, r1
	ldrh    r0, [r1, r0]
	bl      Function_207d324
	cmp     r0, #0x1
	bne     branch_2259180
	mov     r6, #0x1
.thumb
branch_2259180: @ 2259180 :thumb
	cmp     r6, #0x1
	bne     branch_22591de
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2255a4c
	cmp     r0, #0x67
	beq     branch_22591a8
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	mov     r1, #0xb7
	add     r2, r4, r2
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	lsl     r1, r1, #26
	tst     r1, r2
	beq     branch_22591b2
.thumb
branch_22591a8: @ 22591a8 :thumb
	mov     r0, #0x4e
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_22591b6
@ 0x22591b2

.thumb
branch_22591b2: @ 22591b2 :thumb
	add     r0, #0x78
	str     r5, [r4, r0]
.thumb
branch_22591b6: @ 22591b6 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x40] @ 0x2259200, (=#0x2db8)
	add     r2, r4, r2
	ldrh    r0, [r2, r0]
	add     r1, #0x68
	str     r0, [r4, r1]
	ldr     r2, [r4, #0x64]
	mov     r0, #0xba
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r2
	mul     r3, r1
	add     r0, r4, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x2
	orr     r1, r2
	str     r1, [r0, r3]
.thumb
branch_22591de: @ 22591de :thumb
	mov     r0, r6
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22591e4


.incbin "./baserom/overlay/overlay_0016.bin", 0x1e0a4, 0x2259200 - 0x22591e4


.word 0x2db8 @ 0x2259200
.thumb
Function_2259204: @ 2259204 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	bl      Function_2258b58
	mov     r6, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_2258acc
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2258b80
	ldr     r1, [pc, #0x328] @ 0x2259558, (=#0x2154)
	mov     r2, r4
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x328] @ 0x225955c, (=#0x3118)
	mov     r5, #0x0
	str     r5, [r4, r0]
	add     r2, #0x88
	str     r5, [r2, #0x0]
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_2259248
	add     sp, #0x14
	mov     r0, r5
	pop     {r4-r7,pc}
@ 0x2259248

.thumb
branch_2259248: @ 2259248 :thumb
	cmp     r6, #0x1e
	bls     branch_225924e
	b       branch_22597d2
@ 0x225924e

.thumb
branch_225924e: @ 225924e :thumb
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r6, #21
	lsl     r2, r5, #1
	lsl     r2, r0, #2
	lsl     r2, r3, #2
	lsl     r2, r6, #2
	lsl     r2, r1, #3
	lsl     r2, r4, #3
	lsl     r4, r7, #0
	lsl     r4, r4, #5
	lsl     r4, r7, #5
	lsl     r0, r1, #1
	lsl     r2, r0, #9
	lsl     r4, r0, #10
	lsl     r6, r0, #11
	lsl     r6, r6, #12
	lsl     r0, r7, #13
	lsl     r4, r6, #17
	lsl     r2, r2, #18
	lsl     r0, r6, #18
	lsl     r6, r1, #19
	lsl     r4, r5, #19
	lsl     r0, r3, #21
	lsl     r2, r1, #20
	lsl     r2, r6, #21
	lsl     r2, r7, #14
	lsl     r2, r4, #15
	lsl     r6, r0, #16
	lsl     r4, r3, #16
	lsl     r2, r6, #16
	lsl     r0, r1, #17
	lsl     r6, r3, #17
	ldr     r1, [sp, #0x10]
	.hword  0x1f02 @ sub r2, r0, #0x4
	str     r1, [r4, r2]
	mov     r1, #0xc6
	str     r1, [r4, r0]
	b       branch_22597d2
@ 0x22592a4


.incbin "./baserom/overlay/overlay_0016.bin", 0x1e164, 0x2259558 - 0x22592a4


.word 0x2154 @ 0x2259558
.word 0x3118 @ 0x225955c

.incbin "./baserom/overlay/overlay_0016.bin", 0x1e420, 0x22597d2 - 0x2259560


.thumb
branch_22597d2: @ 22597d2 :thumb
	ldr     r0, [r4, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r0, r4, r2
	mov     r2, #0xb7
	lsl     r2, r2, #6
	ldr     r3, [r0, r2]
	mov     r0, #0x1
	lsl     r0, r0, #26
	tst     r0, r3
	beq     branch_22597f2
	ldr     r0, [pc, #0x58] @ 0x2259844, (=#0x3118)
	mov     r1, #0x0
	str     r1, [r4, r0]
	b       branch_2259832
@ 0x22597f2

.thumb
branch_22597f2: @ 22597f2 :thumb
	ldr     r0, [sp, #0x4]
	sub     r2, #0x8
	mov     r3, r0
	mul     r3, r1
	add     r0, r4, r3
	ldrh    r0, [r0, r2]
	add     r1, #0x68
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225982a
	ldr     r0, [pc, #0x34] @ 0x2259844, (=#0x3118)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225982a
	mov     r0, #0xba
	ldr     r1, [r4, #0x64]
	lsl     r0, r0, #2
	add     r3, r4, r0
	mov     r0, #0x1c
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r3, r2]
.thumb
branch_225982a: @ 225982a :thumb
	mov     r0, #0x46
	ldr     r1, [r4, #0x6c]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2259832: @ 2259832 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2259838


.incbin "./baserom/overlay/overlay_0016.bin", 0x1e6f8, 0x2259844 - 0x2259838


.word 0x3118 @ 0x2259844

.incbin "./baserom/overlay/overlay_0016.bin", 0x1e708, 0x2259868 - 0x2259848


.thumb
Function_2259868: @ 2259868 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258ab8
	cmp     r0, #0x69
	bne     branch_22598f6
	ldr     r5, [r4, #0x64]
	mov     r6, #0xc0
	mov     r3, r5
	mul     r3, r6
	ldr     r0, [pc, #0x88] @ 0x225990c, (=#0x2db0)
	add     r2, r4, r3
	ldr     r1, [r2, r0]
	lsl     r6, r6, #4
	tst     r6, r1
	bne     branch_225990a
	mov     r6, #0x70
	tst     r6, r1
	bne     branch_225990a
	ldr     r6, [pc, #0x7c] @ 0x2259910, (=#0x213c)
	ldr     r7, [r4, r6]
	mov     r6, #0x2
	lsl     r6, r6, #8
	tst     r7, r6
	bne     branch_225990a
	lsl     r6, r6, #3
	tst     r1, r6
	bne     branch_225990a
	mov     r6, #0xc1
	lsl     r6, r6, #6
	lsl     r5, r5, #1
	add     r7, r4, r5
	mov     r5, r6
	add     r5, #0x9c
	ldrh    r5, [r7, r5]
	ldr     r1, [r4, r6]
	cmp     r1, r5
	bne     branch_22598dc
	mov     r1, r0
	add     r1, #0x1c
	ldr     r1, [r2, r1]
	lsl     r1, r1, #5
	lsr     r5, r1, #28
	cmp     r5, #0xa
	bcs     branch_225990a
	add     r0, #0x1c
	add     r0, r4, r0
	ldr     r2, [r0, r3]
	ldr     r1, [pc, #0x44] @ 0x2259914, (=#0xf87fffff)
	and     r2, r1
	add     r1, r5, #0x1
	lsl     r1, r1, #28
	lsr     r1, r1, #5
	orr     r1, r2
	str     r1, [r0, r3]
	pop     {r3-r7,pc}
@ 0x22598dc

.thumb
branch_22598dc: @ 22598dc :thumb
	add     r0, #0x1c
	add     r2, r4, r0
	ldr     r1, [r2, r3]
	ldr     r0, [pc, #0x30] @ 0x2259914, (=#0xf87fffff)
	and     r0, r1
	str     r0, [r2, r3]
	ldr     r0, [r4, #0x64]
	ldr     r1, [r4, r6]
	lsl     r0, r0, #1
	add     r0, r4, r0
	add     r6, #0x9c
	strh    r1, [r0, r6]
	pop     {r3-r7,pc}
@ 0x22598f6

.thumb
branch_22598f6: @ 22598f6 :thumb
	ldr     r0, [pc, #0x20] @ 0x2259918, (=#0x2dcc)
	ldr     r1, [r4, #0x64]
	add     r3, r4, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0xc] @ 0x2259914, (=#0xf87fffff)
	and     r0, r1
	str     r0, [r3, r2]
.thumb
branch_225990a: @ 225990a :thumb
	pop     {r3-r7,pc}
@ 0x225990c

.word 0x2db0 @ 0x225990c
.word 0x213c @ 0x2259910
.word 0xf87fffff @ 0x2259914
.word 0x2dcc @ 0x2259918
.thumb
Function_225991c: @ 225991c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258ab8
	cmp     r0, #0x69
	bne     branch_22599a8
	ldr     r5, [pc, #0x90] @ 0x22599c0, (=#0x216c)
	ldr     r0, [pc, #0x94] @ 0x22599c4, (=#0x801fda49)
	ldr     r1, [r4, r5]
	tst     r0, r1
	beq     branch_22599bc
	ldr     r2, [r4, #0x64]
	mov     r0, #0xc1
	lsl     r0, r0, #6
	lsl     r1, r2, #1
	ldr     r3, [r4, r0]
	add     r1, r4, r1
	add     r0, #0x9c
	ldrh    r0, [r1, r0]
	cmp     r3, r0
	bne     branch_22599bc
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r3, [pc, #0x74] @ 0x22599c8, (=#0x2dcc)
	add     r6, r4, r1
	ldr     r0, [r6, r3]
	lsl     r0, r0, #5
	lsr     r0, r0, #28
	beq     branch_22599bc
	mov     r7, #0x1c
	mul     r7, r2
	mov     r2, #0xb5
	add     r7, r4, r7
	lsl     r2, r2, #2
	ldr     r7, [r7, r2]
	lsl     r7, r7, #23
	lsr     r7, r7, #29
	bne     branch_22599bc
	mov     r7, r3
	sub     r7, #0x1c
	ldr     r6, [r6, r7]
	mov     r7, #0xc0
	lsl     r7, r7, #4
	tst     r7, r6
	bne     branch_22599bc
	mov     r7, #0x70
	tst     r7, r6
	bne     branch_22599bc
	sub     r5, #0x30
	ldr     r5, [r4, r5]
	sub     r2, #0xd4
	tst     r2, r5
	bne     branch_22599bc
	mov     r2, #0x1
	lsl     r2, r2, #12
	tst     r2, r6
	bne     branch_22599bc
	add     r2, r4, r3
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #28
	ldr     r4, [r2, r1]
	ldr     r3, [pc, #0x2c] @ 0x22599cc, (=#0xf87fffff)
	lsr     r0, r0, #5
	and     r3, r4
	orr     r0, r3
	str     r0, [r2, r1]
	pop     {r3-r7,pc}
@ 0x22599a8

.thumb
branch_22599a8: @ 22599a8 :thumb
	ldr     r0, [pc, #0x1c] @ 0x22599c8, (=#0x2dcc)
	ldr     r1, [r4, #0x64]
	add     r3, r4, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x14] @ 0x22599cc, (=#0xf87fffff)
	and     r0, r1
	str     r0, [r3, r2]
.thumb
branch_22599bc: @ 22599bc :thumb
	pop     {r3-r7,pc}
@ 0x22599be


.align 2


.word 0x216c @ 0x22599c0
.word 0x801fda49 @ 0x22599c4
.word 0x2dcc @ 0x22599c8
.word 0xf87fffff @ 0x22599cc
.thumb
Function_22599d0: @ 22599d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	cmp     r3, #0x1
	bne     branch_22599e2
	.hword  0x1e90 @ sub r0, r2, #0x2
	cmp     r0, #0x1
	bhi     branch_22599e2
	mov     r0, #0x1
	b       branch_22599e4
@ 0x22599e2

.thumb
branch_22599e2: @ 22599e2 :thumb
	mov     r0, #0x0
.thumb
branch_22599e4: @ 22599e4 :thumb
	cmp     r0, #0x1
	mov     r0, #0xc0
	mov     r4, r1
	mul     r4, r0
	ldr     r2, [pc, #0x30] @ 0x2259a20, (=#0x2d8c)
	add     r1, r5, r4
	ldr     r0, [r1, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r1, [r1, r2]
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	mov     r2, #0x30
	mov     r6, #0x0
	bl      Function_208c104
	ldr     r1, [pc, #0x1c] @ 0x2259a24, (=#0x2dac)
	add     r2, r5, r4
	ldr     r1, [r2, r1]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bne     branch_2259a1a
	cmp     r0, #0x4
	beq     branch_2259a1c
	cmp     r0, #0x3
	beq     branch_2259a1c
.thumb
branch_2259a1a: @ 2259a1a :thumb
	mov     r6, #0xb
.thumb
branch_2259a1c: @ 2259a1c :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2259a20

.word 0x2d8c @ 0x2259a20
.word 0x2dac @ 0x2259a24
.thumb
Function_2259a28: @ 2259a28 :thumb
	push    {r3,r4}
	mov     r3, #0xc0
	mov     r4, r1
	mul     r4, r3
	add     r1, r0, r4
	ldr     r0, [pc, #0x24] @ 0x2259a58, (=#0x2db0)
	mov     r2, #0x1
	ldr     r0, [r1, r0]
	lsl     r1, r2, #22
	tst     r1, r0
	bne     branch_2259a50
	lsl     r1, r3, #4
	tst     r1, r0
	bne     branch_2259a50
	mov     r1, #0x70
	tst     r1, r0
	bne     branch_2259a50
	lsl     r1, r2, #12
	tst     r0, r1
	beq     branch_2259a52
.thumb
branch_2259a50: @ 2259a50 :thumb
	mov     r2, #0x0
.thumb
branch_2259a52: @ 2259a52 :thumb
	mov     r0, r2
	pop     {r3,r4}
	bx      lr
@ 0x2259a58

.word 0x2db0 @ 0x2259a58

.incbin "./baserom/overlay/overlay_0016.bin", 0x1e91c, 0x2259ab4 - 0x2259a5c


.thumb
Function_2259ab4: @ 2259ab4 :thumb
	lsl     r1, r1, #8
	add     r1, r0, r1
	mov     r0, #0x23
	lsl     r0, r0, #8
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x2259ac0

.thumb
Function_2259ac0: @ 2259ac0 :thumb
	mov     r3, #0x1c
	mul     r3, r1
	add     r1, r0, r3
	mov     r0, #0xba
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x8
	mov     r2, #0x0
	tst     r0, r1
	beq     branch_2259ad6
	mov     r2, #0x1
.thumb
branch_2259ad6: @ 2259ad6 :thumb
	mov     r0, r2
	bx      lr
@ 0x2259ada


.incbin "./baserom/overlay/overlay_0016.bin", 0x1e99a, 0x2259b9c - 0x2259ada


.thumb
Function_2259b9c: @ 2259b9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, #0x0
	mov     r7, r0
	mov     r5, r1
	str     r2, [sp, #0x4]
	str     r4, [sp, #0x8]
	bl      Function_223df1c
	cmp     r0, #0x0
	bgt     branch_2259bb4
	b       branch_225a16c
@ 0x2259bb4

.thumb
branch_2259bb4: @ 2259bb4 :thumb
	ldr     r0, [pc, #0x2fc] @ 0x2259eb4, (=#0x2d66)
	add     r6, r5, r0
.thumb
branch_2259bb8: @ 2259bb8 :thumb
	ldr     r0, [pc, #0x2fc] @ 0x2259eb8, (=#0x21ec)
	add     r1, r5, r4
	ldrb    r1, [r1, r0]
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r3, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r3
	add     r2, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r1, [r2, r0]
	ldr     r0, [pc, #0x2e8] @ 0x2259ebc, (=#0x15f)
	cmp     r1, r0
	bne     branch_2259bec
	ldr     r0, [pc, #0x2e4] @ 0x2259ec0, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2259bec
	mov     r0, r5
	mov     r1, r3
	bl      Function_2255a4c
	cmp     r0, #0x3b
	beq     branch_2259bee
.thumb
branch_2259bec: @ 2259bec :thumb
	b       branch_2259dda
@ 0x2259bee

.thumb
branch_2259bee: @ 2259bee :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2259c16
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_2259c18
.thumb
branch_2259c16: @ 2259c16 :thumb
	b       branch_2259d88
@ 0x2259c18

.thumb
branch_2259c18: @ 2259c18 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0xf3
	tst     r1, r0
	bne     branch_2259c76
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	ldr     r2, [pc, #0x294] @ 0x2259ec4, (=#0x2d64)
	add     r1, r5, r1
	ldrb    r2, [r1, r2]
	cmp     r2, #0x0
	beq     branch_2259c76
	ldr     r2, [pc, #0x28c] @ 0x2259ec8, (=#0x2d65)
	ldrb    r2, [r1, r2]
	cmp     r2, #0x0
	beq     branch_2259c76
	ldr     r3, [pc, #0x280] @ 0x2259ec4, (=#0x2d64)
	mov     r2, #0x0
	mov     r0, #0x46
	strb    r2, [r1, r3]
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r1, #0xc0
	mov     r6, r4
	mul     r6, r1
	add     r6, r5, r6
	add     r4, r3, #0x1
	strb    r2, [r6, r4]
	ldr     r0, [r5, r0]
	add     r2, r3, #0x2
	mov     r4, r0
	mul     r4, r1
	add     r2, r5, r2
	ldrb    r3, [r2, r4]
	mov     r0, #0x1f
	add     r1, #0x46
	bic     r3, r0
	ldr     r0, [sp, #0x4]
	strb    r3, [r2, r4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259c76

.thumb
branch_2259c76: @ 2259c76 :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_2259cd0
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	ldr     r2, [pc, #0x23c] @ 0x2259ec4, (=#0x2d64)
	add     r1, r5, r1
	ldrb    r2, [r1, r2]
	cmp     r2, #0xa
	beq     branch_2259cd0
	ldr     r2, [pc, #0x234] @ 0x2259ec8, (=#0x2d65)
	ldrb    r2, [r1, r2]
	cmp     r2, #0xa
	beq     branch_2259cd0
	ldr     r3, [pc, #0x228] @ 0x2259ec4, (=#0x2d64)
	mov     r2, #0xa
	mov     r0, #0x46
	strb    r2, [r1, r3]
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r1, #0xc0
	mov     r6, r4
	mul     r6, r1
	add     r6, r5, r6
	add     r4, r3, #0x1
	strb    r2, [r6, r4]
	add     r2, r3, #0x2
	ldr     r3, [r5, r0]
	add     r2, r5, r2
	mov     r0, r3
	mul     r0, r1
	ldrb    r4, [r2, r0]
	mov     r3, #0x1f
	add     r1, #0x46
	bic     r4, r3
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	orr     r3, r4
	strb    r3, [r2, r0]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_225a16c
@ 0x2259cd0

.thumb
branch_2259cd0: @ 2259cd0 :thumb
	mov     r1, #0x3
	tst     r1, r0
	beq     branch_2259d2c
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	ldr     r2, [pc, #0x1e0] @ 0x2259ec4, (=#0x2d64)
	add     r1, r5, r1
	ldrb    r2, [r1, r2]
	cmp     r2, #0xb
	beq     branch_2259d2c
	ldr     r2, [pc, #0x1dc] @ 0x2259ec8, (=#0x2d65)
	ldrb    r2, [r1, r2]
	cmp     r2, #0xb
	beq     branch_2259d2c
	ldr     r3, [pc, #0x1d0] @ 0x2259ec4, (=#0x2d64)
	mov     r2, #0xb
	mov     r0, #0x46
	strb    r2, [r1, r3]
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r1, #0xc0
	mov     r6, r4
	mul     r6, r1
	add     r6, r5, r6
	add     r4, r3, #0x1
	strb    r2, [r6, r4]
	add     r2, r3, #0x2
	ldr     r3, [r5, r0]
	add     r2, r5, r2
	mov     r0, r3
	mul     r0, r1
	ldrb    r4, [r2, r0]
	mov     r3, #0x1f
	add     r1, #0x46
	bic     r4, r3
	mov     r3, #0x2
	orr     r3, r4
	strb    r3, [r2, r0]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259d2c

.thumb
branch_2259d2c: @ 2259d2c :thumb
	mov     r1, #0xc0
	tst     r0, r1
	beq     branch_2259dda
	mov     r0, r1
	add     r0, #0x58
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x184] @ 0x2259ec4, (=#0x2d64)
	add     r0, r5, r0
	ldrb    r1, [r0, r1]
	cmp     r1, #0xf
	beq     branch_2259dda
	ldr     r1, [pc, #0x180] @ 0x2259ec8, (=#0x2d65)
	ldrb    r1, [r0, r1]
	cmp     r1, #0xf
	beq     branch_2259dda
	ldr     r3, [pc, #0x174] @ 0x2259ec4, (=#0x2d64)
	mov     r2, #0xf
	strb    r2, [r0, r3]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r1, #0xc0
	mov     r6, r4
	mul     r6, r1
	add     r6, r5, r6
	add     r4, r3, #0x1
	strb    r2, [r6, r4]
	add     r2, r3, #0x2
	ldr     r3, [r5, r0]
	add     r2, r5, r2
	mov     r0, r3
	mul     r0, r1
	ldrb    r4, [r2, r0]
	mov     r3, #0x1f
	add     r1, #0x46
	bic     r4, r3
	mov     r3, #0x3
	orr     r3, r4
	strb    r3, [r2, r0]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259d88

.thumb
branch_2259d88: @ 2259d88 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x130] @ 0x2259ec4, (=#0x2d64)
	add     r0, r5, r0
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2259dda
	ldr     r1, [pc, #0x128] @ 0x2259ec8, (=#0x2d65)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2259dda
	ldr     r3, [pc, #0x11c] @ 0x2259ec4, (=#0x2d64)
	mov     r2, #0x0
	strb    r2, [r0, r3]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r1, #0xc0
	mov     r6, r4
	mul     r6, r1
	add     r6, r5, r6
	add     r4, r3, #0x1
	strb    r2, [r6, r4]
	ldr     r0, [r5, r0]
	add     r2, r3, #0x2
	mov     r4, r0
	mul     r4, r1
	add     r2, r5, r2
	ldrb    r3, [r2, r4]
	mov     r0, #0x1f
	add     r1, #0x46
	bic     r3, r0
	ldr     r0, [sp, #0x4]
	strb    r3, [r2, r4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259dda

.thumb
branch_2259dda: @ 2259dda :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	mov     r1, #0xb5
	add     r0, r5, r0
	lsl     r1, r1, #6
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0xdc] @ 0x2259ecc, (=#0x1a5)
	cmp     r2, r1
	bne     branch_2259dfa
	ldr     r1, [pc, #0xcc] @ 0x2259ec0, (=#0x2d8c)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2259dfc
.thumb
branch_2259dfa: @ 2259dfa :thumb
	b       branch_2259f26
@ 0x2259dfc

.thumb
branch_2259dfc: @ 2259dfc :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2259f00
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2259f00
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	mov     r0, #0xf3
	tst     r0, r2
	bne     branch_2259e58
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xc0
	mov     r3, r0
	mul     r3, r1
	ldrb    r0, [r6, r3]
	lsl     r1, r0, #27
	lsr     r1, r1, #27
	cmp     r1, #0x1
	bne     branch_2259e58
	mov     r1, #0x1f
	bic     r0, r1
	strb    r0, [r6, r3]
	ldr     r1, [pc, #0x80] @ 0x2259ed0, (=#0x106)
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259e58

.thumb
branch_2259e58: @ 2259e58 :thumb
	mov     r0, #0x30
	tst     r0, r2
	beq     branch_2259e86
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xc0
	mov     r3, r0
	mul     r3, r1
	ldrb    r0, [r6, r3]
	lsl     r1, r0, #27
	lsr     r1, r1, #27
	bne     branch_2259e86
	mov     r1, #0x1f
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	str     r1, [sp, #0x8]
	strb    r0, [r6, r3]
	ldr     r1, [pc, #0x50] @ 0x2259ed0, (=#0x106)
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_225a16c
@ 0x2259e86

.thumb
branch_2259e86: @ 2259e86 :thumb
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_2259ed4
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xc0
	mov     r3, r0
	mul     r3, r1
	ldrb    r0, [r6, r3]
	lsl     r1, r0, #27
	lsr     r1, r1, #27
	cmp     r1, #0x1
	bne     branch_2259ed4
	mov     r1, #0x1f
	bic     r0, r1
	strb    r0, [r6, r3]
	ldr     r1, [pc, #0x24] @ 0x2259ed0, (=#0x106)
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259eb4

.word 0x2d66 @ 0x2259eb4
.word 0x21ec @ 0x2259eb8
.word 0x15f @ 0x2259ebc
.word 0x2d8c @ 0x2259ec0
.word 0x2d64 @ 0x2259ec4
.word 0x2d65 @ 0x2259ec8
.word 0x1a5 @ 0x2259ecc
.word 0x106 @ 0x2259ed0
.thumb
branch_2259ed4: @ 2259ed4 :thumb
	mov     r0, #0xc0
	tst     r0, r2
	beq     branch_2259f26
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	ldrb    r2, [r6, r0]
	lsl     r1, r2, #27
	lsr     r1, r1, #27
	cmp     r1, #0x1
	bne     branch_2259f26
	mov     r1, #0x1f
	bic     r2, r1
	strb    r2, [r6, r0]
	ldr     r1, [pc, #0x27c] @ 0x225a174, (=#0x106)
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259f00

.thumb
branch_2259f00: @ 2259f00 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	ldrb    r2, [r6, r0]
	lsl     r1, r2, #27
	lsr     r1, r1, #27
	cmp     r1, #0x1
	bne     branch_2259f26
	mov     r1, #0x1f
	bic     r2, r1
	strb    r2, [r6, r0]
	ldr     r1, [pc, #0x258] @ 0x225a174, (=#0x106)
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259f26

.thumb
branch_2259f26: @ 2259f26 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r3, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r3
	add     r2, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r1, [r2, r0]
	ldr     r0, [pc, #0x23c] @ 0x225a178, (=#0x1ed)
	cmp     r1, r0
	bne     branch_2259fa4
	ldr     r0, [pc, #0x23c] @ 0x225a17c, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2259fa4
	mov     r0, r5
	mov     r1, r3
	bl      Function_2255a4c
	cmp     r0, #0x79
	bne     branch_2259fa4
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x220] @ 0x225a180, (=#0x2db8)
	mov     r2, #0x5
	ldrh    r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_207cff0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2077988
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r2, #0xc0
	mov     r3, r1
	mul     r3, r2
	ldrb    r1, [r6, r3]
	lsl     r2, r1, #27
	lsr     r2, r2, #27
	cmp     r0, r2
	beq     branch_2259fa4
	mov     r2, #0x1f
	lsl     r0, r0, #24
	bic     r1, r2
	lsr     r0, r0, #24
	mov     r2, #0x1f
	and     r0, r2
	orr     r0, r1
	strb    r0, [r6, r3]
	ldr     r0, [sp, #0x4]
	add     r2, #0xe7
	str     r2, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x2259fa4

.thumb
branch_2259fa4: @ 2259fa4 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mov     r3, r1
	mul     r3, r0
	mov     r0, #0xb5
	add     r2, r5, r3
	lsl     r0, r0, #6
	ldrh    r1, [r2, r0]
	ldr     r0, [pc, #0x1c8] @ 0x225a184, (=#0x1e7)
	cmp     r1, r0
	bne     branch_225a000
	ldr     r0, [pc, #0x1bc] @ 0x225a17c, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225a000
	ldr     r0, [pc, #0x1c0] @ 0x225a188, (=#0x2d66)
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #27
	lsr     r0, r0, #27
	cmp     r0, #0x1
	bne     branch_225a000
	ldr     r0, [pc, #0x1b8] @ 0x225a18c, (=#0x2db0)
	ldr     r1, [r2, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_225a002
	mov     r0, r7
	bl      Function_223ebec
	mov     r1, #0x80
	tst     r0, r1
	bne     branch_225a000
	mov     r0, r1
	add     r0, #0x98
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	mov     r3, r1
	mul     r3, r0
	ldr     r0, [pc, #0x188] @ 0x225a180, (=#0x2db8)
	add     r1, r5, r3
	ldrh    r0, [r1, r0]
	cmp     r0, #0x70
	bne     branch_225a002
.thumb
branch_225a000: @ 225a000 :thumb
	b       branch_225a15e
@ 0x225a002

.thumb
branch_225a002: @ 225a002 :thumb
	ldr     r0, [pc, #0x188] @ 0x225a18c, (=#0x2db0)
	add     r1, r5, r3
	ldr     r1, [r1, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_225a012
	b       branch_225a150
@ 0x225a012

.thumb
branch_225a012: @ 225a012 :thumb
	mov     r0, #0x5
	bl      Function_2073c74
	mov     r4, r0
	mov     r0, r7
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_225a036
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x15c] @ 0x225a190, (=#0x21ac)
	ldr     r1, [r1, r0]
	b       branch_225a040
@ 0x225a036

.thumb
branch_225a036: @ 225a036 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	eor     r1, r0
.thumb
branch_225a040: @ 225a040 :thumb
	ldr     r2, [pc, #0x150] @ 0x225a194, (=#0x219c)
	add     r3, r5, r1
	ldrb    r2, [r3, r2]
	mov     r0, r7
	bl      Function_223dfac
	mov     r1, r4
	bl      Function_20775ec
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0xc
	bl      Function_2074b30
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x70
	add     r2, sp, #0xc
	bl      Function_2074b30
	mov     r0, r4
	bl      Function_2077a00
	mov     r0, r4
	mov     r1, #0xa5
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0x10c] @ 0x225a198, (=#0x2d42)
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0xf4] @ 0x225a19c, (=#0x2d44)
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0xe0] @ 0x225a1a0, (=#0x2d46)
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0xc8] @ 0x225a1a4, (=#0x2d48)
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0xb4] @ 0x225a1a8, (=#0x2d4a)
	strh    r0, [r2, r1]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2074470
	mov     r6, #0x46
	lsl     r6, r6, #2
	ldr     r2, [r5, r6]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r5, r1
	ldr     r1, [pc, #0x9c] @ 0x225a1ac, (=#0x2d67)
	strb    r0, [r2, r1]
	.hword  0x1e48 @ sub r0, r1, #0x1
	add     r3, r5, r0
	ldr     r0, [r5, r6]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldrb    r1, [r3, r2]
	mov     r0, #0x1f
	bic     r1, r0
	strb    r1, [r3, r2]
	mov     r1, #0x85
	lsl     r1, r1, #6
	mov     r0, #0x1
	ldr     r2, [r5, r1]
	lsl     r0, r0, #26
	orr     r0, r2
	str     r0, [r5, r1]
	ldr     r2, [r5, r6]
	mov     r0, r7
	mov     r1, r5
	bl      Function_22662fc
	mov     r0, r4
	bl      Function_20181c4
	mov     r1, r6
	ldr     r0, [sp, #0x4]
	sub     r1, #0x12
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x225a150

.thumb
branch_225a150: @ 225a150 :thumb
	mov     r1, #0x4a
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225a16c
@ 0x225a15e

.thumb
branch_225a15e: @ 225a15e :thumb
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	bge     branch_225a16c
	b       branch_2259bb8
@ 0x225a16c

.thumb
branch_225a16c: @ 225a16c :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225a172


.align 2


.word 0x106 @ 0x225a174
.word 0x1ed @ 0x225a178
.word 0x2d8c @ 0x225a17c
.word 0x2db8 @ 0x225a180
.word 0x1e7 @ 0x225a184
.word 0x2d66 @ 0x225a188
.word 0x2db0 @ 0x225a18c
.word 0x21ac @ 0x225a190
.word 0x219c @ 0x225a194
.word 0x2d42 @ 0x225a198
.word 0x2d44 @ 0x225a19c
.word 0x2d46 @ 0x225a1a0
.word 0x2d48 @ 0x225a1a4
.word 0x2d4a @ 0x225a1a8
.word 0x2d67 @ 0x225a1ac

.incbin "./baserom/overlay/overlay_0016.bin", 0x1f070, 0x225a200 - 0x225a1b0


.thumb
Function_225a200: @ 225a200 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_223df0c
	mov     r1, #0x2
	tst     r1, r0
	beq     branch_225a21a
	mov     r1, #0x18
	tst     r1, r0
	beq     branch_225a22e
.thumb
branch_225a21a: @ 225a21a :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_225a252
	mov     r0, r7
	mov     r1, r5
	bl      Function_223e1f8
	mov     r1, #0x1
	tst     r0, r1
	bne     branch_225a252
.thumb
branch_225a22e: @ 225a22e :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_223e1f8
	cmp     r0, #0x4
	beq     branch_225a246
	mov     r0, r7
	mov     r1, r5
	bl      Function_223e1f8
	cmp     r0, #0x5
	bne     branch_225a24a
.thumb
branch_225a246: @ 225a246 :thumb
	mov     r1, #0x1
	b       branch_225a24c
@ 0x225a24a

.thumb
branch_225a24a: @ 225a24a :thumb
	mov     r1, #0x0
.thumb
branch_225a24c: @ 225a24c :thumb
	mov     r0, #0x1
	and     r5, r0
	b       branch_225a254
@ 0x225a252

.thumb
branch_225a252: @ 225a252 :thumb
	mov     r1, #0x0
.thumb
branch_225a254: @ 225a254 :thumb
	mov     r2, #0x6
	mul     r2, r5
	ldr     r3, [pc, #0x20] @ 0x225a27c, (=#0x312c)
	mov     r0, #0x0
	add     r7, r6, r2
.thumb
branch_225a25e: @ 225a25e :thumb
	ldrb    r5, [r7, r3]
	cmp     r4, r5
	beq     branch_225a26c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r0, #0x6
	blt     branch_225a25e
.thumb
branch_225a26c: @ 225a26c :thumb
	ldr     r3, [pc, #0xc] @ 0x225a27c, (=#0x312c)
	add     r3, r6, r3
	add     r4, r3, r2
	ldrb    r3, [r4, r1]
	ldrb    r2, [r4, r0]
	strb    r2, [r4, r1]
	strb    r3, [r4, r0]
	pop     {r3-r7,pc}
@ 0x225a27c

.word 0x312c @ 0x225a27c
.thumb
Function_225a280: @ 225a280 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x8c
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xa0]
	mov     r5, r1
	str     r0, [sp, #0xa0]
	ldr     r0, [sp, #0xb4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0xb4]
	mov     r0, #0x0
	str     r0, [sp, #0x84]
	ldr     r0, [sp, #0xb4]
	str     r3, [sp, #0xc]
	cmp     r0, #0x1
	beq     branch_225a2a4
	bhi     branch_225a2a4
	bl      Function_2022974
.thumb
branch_225a2a4: @ 225a2a4 :thumb
	add     r0, sp, #0x90
	ldrb    r0, [r0, #0x1c]
	mov     r2, #0x1
	mov     r3, #0x0
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
	add     r0, sp, #0xb0
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x2
	mov     r3, #0x0
	str     r0, [sp, #0x20]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x78]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x13
	mov     r3, #0x0
	bl      Function_2252060
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x70]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x14
	mov     r3, #0x0
	bl      Function_2252060
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x6c]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x16
	mov     r3, #0x0
	bl      Function_2252060
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x68]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x17
	mov     r3, #0x0
	bl      Function_2252060
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x64]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x2b
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	str     r0, [sp, #0x60]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r3, r2
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x0
	str     r0, [sp, #0x58]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r3, r2
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x54]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x2f
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x50]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x2f
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x30
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4c]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x30
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	str     r0, [sp, #0x48]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x34
	mov     r3, #0x0
	bl      Function_2252060
	str     r0, [sp, #0x44]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_2255a4c
	mov     r7, r0
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_2255a4c
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x1d
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x40]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x1d
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x3c]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x38]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, #0x1c
	mov     r3, #0x0
	bl      Function_2252060
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x34]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_2258874
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_225b0fc
	str     r0, [sp, #0x30]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_225b0fc
	str     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_2258874
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_225b0fc
	str     r0, [sp, #0x28]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_225b0fc
	ldr     r0, [sp, #0x4]
	bl      Function_223df0c
	str     r0, [sp, #0x5c]
	add     r0, sp, #0x90
	ldrh    r4, [r0, #0x14]
	cmp     r4, #0x0
	bne     branch_225a4a4
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x280] @ 0x225a724, (=#0x3e1)
	ldrb    r4, [r1, r0]
.thumb
branch_225a4a4: @ 225a4a4 :thumb
	cmp     r7, #0x60
	bne     branch_225a4ac
	mov     r6, #0x0
	b       branch_225a4c8
@ 0x225a4ac

.thumb
branch_225a4ac: @ 225a4ac :thumb
	add     r0, sp, #0x90
	ldrb    r1, [r0, #0x18]
	cmp     r1, #0x0
	bne     branch_225a4c0
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x26c] @ 0x225a728, (=#0x3e2)
	ldrb    r6, [r1, r0]
	b       branch_225a4c8
@ 0x225a4c0

.thumb
branch_225a4c0: @ 225a4c0 :thumb
	mov     r0, #0x3f
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_225a4c8: @ 225a4c8 :thumb
	ldr     r0, [pc, #0x260] @ 0x225a72c, (=#0x2158)
	ldr     r0, [r5, r0]
	cmp     r0, #0xa
	bge     branch_225a4d4
	bl      Function_2022974
.thumb
branch_225a4d4: @ 225a4d4 :thumb
	ldr     r0, [pc, #0x254] @ 0x225a72c, (=#0x2158)
	mov     r1, #0xa
	ldr     r0, [r5, r0]
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	add     r0, sp, #0x90
	ldrb    r0, [r0, #0x1c]
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	mov     r1, #0xb7
	lsl     r1, r1, #6
	ldr     r2, [r2, r1]
	mov     r1, #0x2
	lsl     r1, r1, #8
	tst     r1, r2
	beq     branch_225a504
	cmp     r6, #0xd
	bne     branch_225a504
	lsl     r1, r4, #17
	lsr     r4, r1, #16
.thumb
branch_225a504: @ 225a504 :thumb
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_225a522
	mov     r0, #0xf
	mul     r0, r4
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a522: @ 225a522 :thumb
	cmp     r7, #0x65
	bne     branch_225a53e
	ldr     r0, [sp, #0x8]
	cmp     r0, #0xa5
	beq     branch_225a53e
	cmp     r4, #0x3c
	bhi     branch_225a53e
	mov     r0, #0xf
	mul     r0, r4
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a53e: @ 225a53e :thumb
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	str     r0, [sp, #0x18]
	add     r1, r5, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	cmp     r7, #0x25
	str     r0, [sp, #0x80]
	beq     branch_225a556
	cmp     r7, #0x4a
	bne     branch_225a55e
.thumb
branch_225a556: @ 225a556 :thumb
	ldr     r0, [sp, #0x7c]
	lsl     r0, r0, #17
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a55e: @ 225a55e :thumb
	cmp     r7, #0x70
	bne     branch_225a58c
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_225b45c
	str     r0, [sp, #0x88]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x59
	mov     r3, #0x0
	bl      Function_2252060
	ldr     r1, [sp, #0x88]
	sub     r0, r1, r0
	cmp     r0, #0x5
	bge     branch_225a58c
	ldr     r0, [sp, #0x7c]
	lsl     r0, r0, #15
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a58c: @ 225a58c :thumb
	ldr     r3, [pc, #0x1a0] @ 0x225a730, (=#0x226ec92)
	mov     r2, #0x0
.thumb
branch_225a590: @ 225a590 :thumb
	ldrb    r1, [r3, #0x0]
	ldr     r0, [sp, #0x30]
	cmp     r0, r1
	bne     branch_225a5b0
	ldrb    r0, [r3, #0x1]
	cmp     r6, r0
	bne     branch_225a5b0
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_225a5b8
@ 0x225a5b0

.thumb
branch_225a5b0: @ 225a5b0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x21
	bcc     branch_225a590
.thumb
branch_225a5b8: @ 225a5b8 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x37
	bne     branch_225a5d0
	ldr     r1, [sp, #0x7c]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a5d0: @ 225a5d0 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x7d
	bne     branch_225a5e8
	ldr     r1, [sp, #0x74]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225a5e8: @ 225a5e8 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x3c
	bne     branch_225a616
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x80
	tst     r0, r1
	bne     branch_225a616
	ldr     r1, [pc, #0x13c] @ 0x225a734, (=#0xfe84)
	ldr     r0, [sp, #0x58]
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_225a616
	ldr     r1, [sp, #0x74]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225a616: @ 225a616 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x3c
	bne     branch_225a644
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x80
	tst     r0, r1
	bne     branch_225a644
	ldr     r1, [pc, #0x10c] @ 0x225a734, (=#0xfe84)
	ldr     r0, [sp, #0x54]
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_225a644
	ldr     r1, [sp, #0x10]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
.thumb
branch_225a644: @ 225a644 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x3d
	bne     branch_225a65a
	ldr     r1, [pc, #0xec] @ 0x225a738, (=#0x16e)
	ldr     r0, [sp, #0x58]
	cmp     r0, r1
	bne     branch_225a65a
	ldr     r0, [sp, #0x74]
	lsl     r0, r0, #17
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225a65a: @ 225a65a :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x3e
	bne     branch_225a670
	ldr     r1, [pc, #0xd4] @ 0x225a738, (=#0x16e)
	ldr     r0, [sp, #0x54]
	cmp     r0, r1
	bne     branch_225a670
	ldr     r0, [sp, #0x10]
	lsl     r0, r0, #17
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
.thumb
branch_225a670: @ 225a670 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x47
	bne     branch_225a680
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x19
	bne     branch_225a680
	lsl     r0, r4, #17
	lsr     r4, r0, #16
.thumb
branch_225a680: @ 225a680 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x5a
	bne     branch_225a694
	ldr     r0, [sp, #0x54]
	cmp     r0, #0x84
	bne     branch_225a694
	ldr     r0, [sp, #0x78]
	lsl     r0, r0, #17
	lsr     r0, r0, #16
	str     r0, [sp, #0x78]
.thumb
branch_225a694: @ 225a694 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x5b
	bne     branch_225a6b0
	ldr     r1, [pc, #0xa0] @ 0x225a73c, (=#0xff98)
	ldr     r0, [sp, #0x58]
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_225a6b0
	ldr     r0, [sp, #0x7c]
	lsl     r0, r0, #17
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a6b0: @ 225a6b0 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x3
	bne     branch_225a6d6
	cmp     r6, #0x10
	beq     branch_225a6be
	cmp     r6, #0x8
	bne     branch_225a6d6
.thumb
branch_225a6be: @ 225a6be :thumb
	ldr     r1, [pc, #0x80] @ 0x225a740, (=#0x1e3)
	ldr     r0, [sp, #0x58]
	cmp     r0, r1
	bne     branch_225a6d6
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a6d6: @ 225a6d6 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x4
	bne     branch_225a6fe
	cmp     r6, #0x10
	beq     branch_225a6e4
	cmp     r6, #0xb
	bne     branch_225a6fe
.thumb
branch_225a6e4: @ 225a6e4 :thumb
	mov     r1, #0x79
	ldr     r0, [sp, #0x58]
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_225a6fe
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a6fe: @ 225a6fe :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x2
	bne     branch_225a75e
	cmp     r6, #0x10
	beq     branch_225a70c
	cmp     r6, #0x7
	bne     branch_225a75e
.thumb
branch_225a70c: @ 225a70c :thumb
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x35
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, #0x2
	lsl     r1, r1, #20
	tst     r0, r1
	bne     branch_225a75e
	ldr     r1, [pc, #0x20] @ 0x225a744, (=#0x1e7)
	b       branch_225a748
@ 0x225a724

.word 0x3e1 @ 0x225a724
.word 0x3e2 @ 0x225a728
.word 0x2158 @ 0x225a72c
.word 0x226ec92 @ 0x225a730
.word 0xfe84 @ 0x225a734
.word 0x16e @ 0x225a738
.word 0xff98 @ 0x225a73c
.word 0x1e3 @ 0x225a740
.word 0x1e7 @ 0x225a744
.thumb
branch_225a748: @ 225a748 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r0, r1
	bne     branch_225a75e
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a75e: @ 225a75e :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x5e
	bne     branch_225a77a
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_225a77a
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a77a: @ 225a77a :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x5f
	bne     branch_225a798
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x1
	bne     branch_225a798
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x64
	add     r0, #0x64
	str     r0, [sp, #0x2c]
	mul     r0, r4
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a798: @ 225a798 :thumb
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x2f
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a7b4
	cmp     r6, #0xa
	beq     branch_225a7b0
	cmp     r6, #0xf
	bne     branch_225a7b4
.thumb
branch_225a7b0: @ 225a7b0 :thumb
	lsl     r0, r4, #15
	lsr     r4, r0, #16
.thumb
branch_225a7b4: @ 225a7b4 :thumb
	cmp     r7, #0x37
	bne     branch_225a7ca
	ldr     r1, [sp, #0x7c]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a7ca: @ 225a7ca :thumb
	cmp     r7, #0x3e
	bne     branch_225a7e6
	ldr     r0, [sp, #0x48]
	cmp     r0, #0x0
	beq     branch_225a7e6
	ldr     r1, [sp, #0x7c]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225a7e6: @ 225a7e6 :thumb
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x3f
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a80e
	ldr     r0, [sp, #0x44]
	cmp     r0, #0x0
	beq     branch_225a80e
	ldr     r1, [sp, #0x78]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x78]
.thumb
branch_225a80e: @ 225a80e :thumb
	cmp     r7, #0x39
	bne     branch_225a838
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_225a838
	ldr     r1, [sp, #0x74]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225a838: @ 225a838 :thumb
	cmp     r7, #0x3a
	bne     branch_225a862
	mov     r0, #0x39
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_225a862
	ldr     r1, [sp, #0x74]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225a862: @ 225a862 :thumb
	cmp     r6, #0xd
	bne     branch_225a87a
	mov     r2, #0x1
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	lsl     r2, r2, #16
	bl      Function_2255f68
	cmp     r0, #0x0
	beq     branch_225a87a
	lsl     r0, r4, #15
	lsr     r4, r0, #16
.thumb
branch_225a87a: @ 225a87a :thumb
	cmp     r6, #0xa
	bne     branch_225a892
	mov     r2, #0x2
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	lsl     r2, r2, #16
	bl      Function_2255f68
	cmp     r0, #0x0
	beq     branch_225a892
	lsl     r0, r4, #15
	lsr     r4, r0, #16
.thumb
branch_225a892: @ 225a892 :thumb
	cmp     r6, #0xc
	bne     branch_225a8b6
	cmp     r7, #0x41
	bne     branch_225a8b6
	ldr     r0, [sp, #0x4c]
	mov     r1, #0x3
	blx     Division
	ldr     r1, [sp, #0x50]
	cmp     r1, r0
	bgt     branch_225a8b6
	mov     r0, #0x96
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a8b6: @ 225a8b6 :thumb
	cmp     r6, #0xa
	bne     branch_225a8da
	cmp     r7, #0x42
	bne     branch_225a8da
	ldr     r0, [sp, #0x4c]
	mov     r1, #0x3
	blx     Division
	ldr     r1, [sp, #0x50]
	cmp     r1, r0
	bgt     branch_225a8da
	mov     r0, #0x96
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a8da: @ 225a8da :thumb
	cmp     r6, #0xb
	bne     branch_225a8fe
	cmp     r7, #0x43
	bne     branch_225a8fe
	ldr     r0, [sp, #0x4c]
	mov     r1, #0x3
	blx     Division
	ldr     r1, [sp, #0x50]
	cmp     r1, r0
	bgt     branch_225a8fe
	mov     r0, #0x96
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a8fe: @ 225a8fe :thumb
	cmp     r6, #0x6
	bne     branch_225a922
	cmp     r7, #0x44
	bne     branch_225a922
	ldr     r0, [sp, #0x4c]
	mov     r1, #0x3
	blx     Division
	ldr     r1, [sp, #0x50]
	cmp     r1, r0
	bgt     branch_225a922
	mov     r0, #0x96
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a922: @ 225a922 :thumb
	cmp     r6, #0xa
	bne     branch_225a93a
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x55
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a93a
	lsl     r0, r4, #15
	lsr     r4, r0, #16
.thumb
branch_225a93a: @ 225a93a :thumb
	cmp     r6, #0xa
	bne     branch_225a95c
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x57
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a95c
	mov     r0, #0x7d
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225a95c: @ 225a95c :thumb
	cmp     r7, #0x56
	bne     branch_225a99c
	ldr     r0, [sp, #0x70]
	mov     r1, #0x5
	lsl     r0, r0, #25
	asr     r0, r0, #24
	str     r0, [sp, #0x70]
	ldr     r0, [sp, #0x70]
	mvn     r1, r1
	cmp     r0, r1
	bge     branch_225a974
	str     r1, [sp, #0x70]
.thumb
branch_225a974: @ 225a974 :thumb
	ldr     r0, [sp, #0x70]
	cmp     r0, #0x6
	ble     branch_225a97e
	mov     r0, #0x6
	str     r0, [sp, #0x70]
.thumb
branch_225a97e: @ 225a97e :thumb
	ldr     r0, [sp, #0x68]
	mov     r1, #0x5
	lsl     r0, r0, #25
	asr     r0, r0, #24
	str     r0, [sp, #0x68]
	ldr     r0, [sp, #0x68]
	mvn     r1, r1
	cmp     r0, r1
	bge     branch_225a992
	str     r1, [sp, #0x68]
.thumb
branch_225a992: @ 225a992 :thumb
	ldr     r0, [sp, #0x68]
	cmp     r0, #0x6
	ble     branch_225a99c
	mov     r0, #0x6
	str     r0, [sp, #0x68]
.thumb
branch_225a99c: @ 225a99c :thumb
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x56
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a9e8
	ldr     r0, [sp, #0x6c]
	mov     r1, #0x5
	lsl     r0, r0, #25
	asr     r0, r0, #24
	str     r0, [sp, #0x6c]
	ldr     r0, [sp, #0x6c]
	mvn     r1, r1
	cmp     r0, r1
	bge     branch_225a9c0
	str     r1, [sp, #0x6c]
.thumb
branch_225a9c0: @ 225a9c0 :thumb
	ldr     r0, [sp, #0x6c]
	cmp     r0, #0x6
	ble     branch_225a9ca
	mov     r0, #0x6
	str     r0, [sp, #0x6c]
.thumb
branch_225a9ca: @ 225a9ca :thumb
	ldr     r0, [sp, #0x64]
	mov     r1, #0x5
	lsl     r0, r0, #25
	asr     r0, r0, #24
	str     r0, [sp, #0x64]
	ldr     r0, [sp, #0x64]
	mvn     r1, r1
	cmp     r0, r1
	bge     branch_225a9de
	str     r1, [sp, #0x64]
.thumb
branch_225a9de: @ 225a9de :thumb
	ldr     r0, [sp, #0x64]
	cmp     r0, #0x6
	ble     branch_225a9e8
	mov     r0, #0x6
	str     r0, [sp, #0x64]
.thumb
branch_225a9e8: @ 225a9e8 :thumb
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r3, #0x6d
	bl      Function_2255ab4
	cmp     r0, #0x1
	bne     branch_225a9fe
	mov     r0, #0x0
	str     r0, [sp, #0x70]
	str     r0, [sp, #0x68]
.thumb
branch_225a9fe: @ 225a9fe :thumb
	cmp     r7, #0x6d
	bne     branch_225aa08
	mov     r0, #0x0
	str     r0, [sp, #0x6c]
	str     r0, [sp, #0x64]
.thumb
branch_225aa08: @ 225aa08 :thumb
	ldr     r0, [sp, #0x70]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x70]
	ldr     r0, [sp, #0x6c]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x6c]
	ldr     r0, [sp, #0x68]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x68]
	ldr     r0, [sp, #0x64]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x64]
	cmp     r7, #0x4f
	bne     branch_225aa56
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x3c]
	cmp     r1, r0
	bne     branch_225aa56
	mov     r0, r1
	cmp     r0, #0x2
	beq     branch_225aa56
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x2
	beq     branch_225aa56
	mov     r0, #0x7d
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225aa56: @ 225aa56 :thumb
	cmp     r7, #0x4f
	bne     branch_225aa7c
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x3c]
	cmp     r1, r0
	beq     branch_225aa7c
	mov     r0, r1
	cmp     r0, #0x2
	beq     branch_225aa7c
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x2
	beq     branch_225aa7c
	mov     r0, #0x4b
	mul     r0, r4
	mov     r1, #0x64
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_225aa7c: @ 225aa7c :thumb
	ldr     r2, [pc, #0x2ec] @ 0x225ad6c, (=#0x226ec16)
	mov     r3, #0x0
.thumb
branch_225aa80: @ 225aa80 :thumb
	ldrh    r1, [r2, #0x0]
	ldr     r0, [sp, #0x8]
	cmp     r0, r1
	bne     branch_225aa9c
	cmp     r7, #0x59
	bne     branch_225aa9c
	mov     r0, #0xc
	mul     r0, r4
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_225aaa4
@ 0x225aa9c

.thumb
branch_225aa9c: @ 225aa9c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0xf
	bcc     branch_225aa80
.thumb
branch_225aaa4: @ 225aaa4 :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ab76
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ab76
	ldr     r0, [sp, #0xa0]
	mov     r1, #0x30
	and     r0, r1
	str     r0, [sp, #0x1c]
	beq     branch_225aaec
	cmp     r7, #0x5e
	bne     branch_225aaec
	ldr     r1, [sp, #0x74]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x74]
.thumb
branch_225aaec: @ 225aaec :thumb
	ldr     r0, [sp, #0xa0]
	mov     r1, #0xc
	tst     r0, r1
	beq     branch_225ab12
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x5
	beq     branch_225ab00
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x5
	bne     branch_225ab12
.thumb
branch_225ab00: @ 225ab00 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
.thumb
branch_225ab12: @ 225ab12 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_225ab3e
	mov     r0, #0x7a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_225ab3e
	ldr     r1, [sp, #0x7c]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x7c]
.thumb
branch_225ab3e: @ 225ab3e :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_225ab76
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x68
	beq     branch_225ab76
	mov     r0, #0x7a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22555a4
	cmp     r0, #0x0
	beq     branch_225ab76
	ldr     r1, [sp, #0x10]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
.thumb
branch_225ab76: @ 225ab76 :thumb
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	ldr     r0, [pc, #0x1f4] @ 0x225ad70, (=#0x3de)
	ldrh    r0, [r1, r0]
	str     r0, [sp, #0x14]
	cmp     r0, #0x7
	bne     branch_225ab8c
	ldr     r0, [sp, #0x78]
	lsl     r0, r0, #15
	lsr     r0, r0, #16
	str     r0, [sp, #0x78]
.thumb
branch_225ab8c: @ 225ab8c :thumb
	ldr     r0, [sp, #0x80]
	cmp     r0, #0x0
	bne     branch_225ac8e
	ldr     r0, [sp, #0xb4]
	cmp     r0, #0x1
	bls     branch_225abba
	ldr     r0, [sp, #0x70]
	cmp     r0, #0x6
	ble     branch_225abb4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x1d0] @ 0x225ad74, (=#0x226ebe0)
	ldr     r2, [sp, #0x7c]
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x1cc] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x84]
	b       branch_225abd0
@ 0x225abb4

.thumb
branch_225abb4: @ 225abb4 :thumb
	ldr     r0, [sp, #0x7c]
	str     r0, [sp, #0x84]
	b       branch_225abd0
@ 0x225abba

.thumb
branch_225abba: @ 225abba :thumb
	ldr     r0, [sp, #0x70]
	ldr     r2, [sp, #0x7c]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x1b0] @ 0x225ad74, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x1b0] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x84]
.thumb
branch_225abd0: @ 225abd0 :thumb
	ldr     r0, [sp, #0x84]
	mov     r1, r0
	ldr     r0, [sp, #0x60]
	mul     r1, r4
	str     r1, [sp, #0x84]
	lsl     r0, r0, #1
	mov     r1, #0x5
	blx     Division
	add     r1, r0, #0x2
	ldr     r0, [sp, #0x84]
	mul     r1, r0
	ldr     r0, [sp, #0xb4]
	str     r1, [sp, #0x84]
	cmp     r0, #0x1
	bls     branch_225ac0c
	ldr     r0, [sp, #0x6c]
	cmp     r0, #0x6
	bge     branch_225ac22
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x178] @ 0x225ad74, (=#0x226ebe0)
	ldr     r2, [sp, #0x78]
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x174] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x78]
	b       branch_225ac22
@ 0x225ac0c

.thumb
branch_225ac0c: @ 225ac0c :thumb
	ldr     r0, [sp, #0x6c]
	ldr     r2, [sp, #0x78]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x160] @ 0x225ad74, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x15c] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x78]
.thumb
branch_225ac22: @ 225ac22 :thumb
	ldr     r0, [sp, #0x84]
	ldr     r1, [sp, #0x78]
	blx     Division
	mov     r1, #0x32
	blx     Division
	str     r0, [sp, #0x84]
	ldr     r0, [sp, #0x48]
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_225ac48
	cmp     r7, #0x3e
	beq     branch_225ac48
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
.thumb
branch_225ac48: @ 225ac48 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	tst     r0, r2
	beq     branch_225ac5c
	ldr     r0, [sp, #0xb4]
	cmp     r0, #0x1
	bne     branch_225ac5c
	ldr     r0, [sp, #0x14]
	cmp     r0, #0xba
	bne     branch_225ac5e
.thumb
branch_225ac5c: @ 225ac5c :thumb
	b       branch_225ad86
@ 0x225ac5e

.thumb
branch_225ac5e: @ 225ac5e :thumb
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_225ac82
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_225ac82
	ldr     r0, [sp, #0x84]
	mov     r1, #0x3
	lsl     r0, r0, #1
	blx     Division
	str     r0, [sp, #0x84]
	b       branch_225ad86
@ 0x225ac82

.thumb
branch_225ac82: @ 225ac82 :thumb
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
	b       branch_225ad86
@ 0x225ac8e

.thumb
branch_225ac8e: @ 225ac8e :thumb
	cmp     r0, #0x1
	bne     branch_225ad86
	ldr     r0, [sp, #0xb4]
	cmp     r0, #0x1
	bls     branch_225acba
	ldr     r0, [sp, #0x68]
	cmp     r0, #0x6
	ble     branch_225acb4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xd0] @ 0x225ad74, (=#0x226ebe0)
	ldr     r2, [sp, #0x74]
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0xcc] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x84]
	b       branch_225acd0
@ 0x225acb4

.thumb
branch_225acb4: @ 225acb4 :thumb
	ldr     r0, [sp, #0x74]
	str     r0, [sp, #0x84]
	b       branch_225acd0
@ 0x225acba

.thumb
branch_225acba: @ 225acba :thumb
	ldr     r0, [sp, #0x68]
	ldr     r2, [sp, #0x74]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xb0] @ 0x225ad74, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0xb0] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x84]
.thumb
branch_225acd0: @ 225acd0 :thumb
	ldr     r0, [sp, #0x84]
	mov     r1, r0
	ldr     r0, [sp, #0x60]
	mul     r1, r4
	str     r1, [sp, #0x84]
	lsl     r0, r0, #1
	mov     r1, #0x5
	blx     Division
	add     r1, r0, #0x2
	ldr     r0, [sp, #0x84]
	mul     r1, r0
	ldr     r0, [sp, #0xb4]
	str     r1, [sp, #0x84]
	cmp     r0, #0x1
	bls     branch_225ad0c
	ldr     r0, [sp, #0x64]
	cmp     r0, #0x6
	bge     branch_225ad22
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x78] @ 0x225ad74, (=#0x226ebe0)
	ldr     r2, [sp, #0x10]
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x74] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x10]
	b       branch_225ad22
@ 0x225ad0c

.thumb
branch_225ad0c: @ 225ad0c :thumb
	ldr     r0, [sp, #0x64]
	ldr     r2, [sp, #0x10]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x60] @ 0x225ad74, (=#0x226ebe0)
	ldrb    r0, [r0, r1]
	mul     r0, r2
	ldr     r2, [pc, #0x5c] @ 0x225ad78, (=#0x226ebe1)
	ldrb    r1, [r2, r1]
	blx     Division
	str     r0, [sp, #0x10]
.thumb
branch_225ad22: @ 225ad22 :thumb
	ldr     r0, [sp, #0x84]
	ldr     r1, [sp, #0x10]
	blx     Division
	mov     r1, #0x32
	blx     Division
	str     r0, [sp, #0x84]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_225ad86
	ldr     r0, [sp, #0xb4]
	cmp     r0, #0x1
	bne     branch_225ad86
	ldr     r0, [sp, #0x14]
	cmp     r0, #0xba
	beq     branch_225ad86
	ldr     r0, [sp, #0x5c]
	tst     r0, r1
	beq     branch_225ad7c
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_225ad7c
	ldr     r0, [sp, #0x84]
	mov     r1, #0x3
	lsl     r0, r0, #1
	blx     Division
	str     r0, [sp, #0x84]
	b       branch_225ad86
@ 0x225ad6a


.align 2


.word 0x226ec16 @ 0x225ad6c
.word 0x3de @ 0x225ad70
.word 0x226ebe0 @ 0x225ad74
.word 0x226ebe1 @ 0x225ad78
.thumb
branch_225ad7c: @ 225ad7c :thumb
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
.thumb
branch_225ad86: @ 225ad86 :thumb
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x2
	mov     r4, r0
	and     r4, r1
	beq     branch_225adbc
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	ldr     r0, [pc, #0x118] @ 0x225aeb0, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x4
	bne     branch_225adbc
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_225adbc
	ldr     r0, [sp, #0x84]
	lsl     r1, r0, #1
	add     r1, r0, r1
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	str     r0, [sp, #0x84]
.thumb
branch_225adbc: @ 225adbc :thumb
	cmp     r4, #0x0
	beq     branch_225adec
	ldr     r0, [sp, #0x18]
	add     r1, r5, r0
	ldr     r0, [pc, #0xe8] @ 0x225aeb0, (=#0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x8
	bne     branch_225adec
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_22554e0
	cmp     r0, #0x2
	bcc     branch_225adec
	ldr     r0, [sp, #0x84]
	lsl     r1, r0, #1
	add     r1, r0, r1
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	str     r0, [sp, #0x84]
.thumb
branch_225adec: @ 225adec :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ae84
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ae84
	ldr     r0, [sp, #0xa0]
	mov     r1, #0x3
	tst     r0, r1
	beq     branch_225ae40
	cmp     r6, #0xa
	beq     branch_225ae26
	cmp     r6, #0xb
	beq     branch_225ae32
	b       branch_225ae40
@ 0x225ae26

.thumb
branch_225ae26: @ 225ae26 :thumb
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
	b       branch_225ae40
@ 0x225ae32

.thumb
branch_225ae32: @ 225ae32 :thumb
	ldr     r1, [sp, #0x84]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	str     r0, [sp, #0x84]
.thumb
branch_225ae40: @ 225ae40 :thumb
	ldr     r1, [pc, #0x70] @ 0x225aeb4, (=#0x80cf)
	ldr     r0, [sp, #0xa0]
	tst     r0, r1
	beq     branch_225ae58
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x4c
	bne     branch_225ae58
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
.thumb
branch_225ae58: @ 225ae58 :thumb
	ldr     r0, [sp, #0xa0]
	mov     r1, #0x30
	tst     r0, r1
	beq     branch_225ae84
	cmp     r6, #0xa
	beq     branch_225ae6a
	cmp     r6, #0xb
	beq     branch_225ae7a
	b       branch_225ae84
@ 0x225ae6a

.thumb
branch_225ae6a: @ 225ae6a :thumb
	ldr     r1, [sp, #0x84]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	str     r0, [sp, #0x84]
	b       branch_225ae84
@ 0x225ae7a

.thumb
branch_225ae7a: @ 225ae7a :thumb
	ldr     r0, [sp, #0x84]
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x84]
.thumb
branch_225ae84: @ 225ae84 :thumb
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	mov     r2, #0x49
	mov     r3, #0x0
	bl      Function_2252060
	cmp     r0, #0x0
	beq     branch_225aea6
	cmp     r6, #0xa
	bne     branch_225aea6
	ldr     r1, [sp, #0x84]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     Division
	str     r0, [sp, #0x84]
.thumb
branch_225aea6: @ 225aea6 :thumb
	ldr     r0, [sp, #0x84]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     sp, #0x8c
	pop     {r4-r7,pc}
@ 0x225aeae


.align 2


.word 0x3e6 @ 0x225aeb0
.word 0x80cf @ 0x225aeb4
.thumb
Function_225aeb8: @ 225aeb8 :thumb
	push    {r4,lr}
	mov     r4, r2
	beq     branch_225aede
	bl      Function_223f4bc
	lsr     r2, r0, #31
	lsl     r1, r0, #28
	sub     r1, r1, r2
	mov     r0, #0x1c
	ror     r1, r0
	add     r0, r2, r1
	mov     r1, #0x64
	sub     r0, r1, r0
	mul     r0, r4
	blx     Division
	mov     r4, r0
	bne     branch_225aede
	mov     r4, #0x1
.thumb
branch_225aede: @ 225aede :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x225aee2


.align 2, 0


.thumb
Function_225aee4: @ 225aee4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r4, r1
	mov     r7, r2
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, r7
	str     r3, [sp, #0x4]
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225b0fc
	mov     r3, #0xb5
	lsl     r3, r3, #6
	mov     r2, r3
	mov     r5, #0xc0
	mov     r1, r7
	mul     r1, r5
	add     r6, r4, r1
	add     r2, #0x70
	ldr     r2, [r6, r2]
	ldrh    r1, [r6, r3]
	mov     r12, r2
	ldr     r2, [sp, #0x4]
	mul     r5, r2
	mov     r2, r3
	add     r5, r4, r5
	add     r2, #0x80
	ldr     r2, [r5, r2]
	add     r3, #0x27
	str     r2, [sp, #0xc]
	ldrb    r2, [r6, r3]
	cmp     r2, #0x69
	bne     branch_225af36
	mov     r2, #0x1
	b       branch_225af38
@ 0x225af36

.thumb
branch_225af36: @ 225af36 :thumb
	mov     r2, #0x0
.thumb
branch_225af38: @ 225af38 :thumb
	cmp     r0, #0x43
	bne     branch_225af40
	mov     r3, #0x1
	b       branch_225af42
@ 0x225af40

.thumb
branch_225af40: @ 225af40 :thumb
	mov     r3, #0x0
.thumb
branch_225af42: @ 225af42 :thumb
	mov     r6, #0x1
	lsl     r6, r6, #20
	mov     r5, r12
	tst     r5, r6
	beq     branch_225af50
	mov     r5, #0x1
	b       branch_225af52
@ 0x225af50

.thumb
branch_225af50: @ 225af50 :thumb
	mov     r5, #0x0
.thumb
branch_225af52: @ 225af52 :thumb
	cmp     r0, #0x59
	bne     branch_225af5e
	cmp     r1, #0x71
	bne     branch_225af5e
	mov     r6, #0x1
	b       branch_225af60
@ 0x225af5e

.thumb
branch_225af5e: @ 225af5e :thumb
	mov     r6, #0x0
.thumb
branch_225af60: @ 225af60 :thumb
	cmp     r0, #0x5c
	bne     branch_225af6c
	cmp     r1, #0x53
	bne     branch_225af6c
	mov     r1, #0x1
	b       branch_225af6e
@ 0x225af6c

.thumb
branch_225af6c: @ 225af6c :thumb
	mov     r1, #0x0
.thumb
branch_225af6e: @ 225af6e :thumb
	lsl     r5, r5, #1
	ldr     r0, [sp, #0x28]
	add     r3, r3, r5
	add     r0, r0, r3
	add     r2, r2, r0
	lsl     r0, r6, #1
	add     r2, r2, r0
	lsl     r0, r1, #1
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x4
	bls     branch_225af8a
	mov     r5, #0x4
.thumb
branch_225af8a: @ 225af8a :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223f4bc
	ldr     r1, [pc, #0x5c] @ 0x225aff0, (=#0x226eba0)
	ldrb    r1, [r1, r5]
	blx     Division
	cmp     r1, #0x0
	bne     branch_225afd4
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x4
	bl      Function_2255ab4
	cmp     r0, #0x0
	bne     branch_225afd4
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x4b
	bl      Function_2255ab4
	cmp     r0, #0x0
	bne     branch_225afd4
	mov     r0, #0x7
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #12
	tst     r0, r1
	bne     branch_225afd4
	mov     r1, #0x2
	ldr     r0, [sp, #0xc]
	lsl     r1, r1, #14
	tst     r0, r1
	bne     branch_225afd4
	mov     r0, #0x2
	str     r0, [sp, #0x8]
.thumb
branch_225afd4: @ 225afd4 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_225afea
	mov     r0, r4
	mov     r1, r7
	bl      Function_2255a4c
	cmp     r0, #0x61
	bne     branch_225afea
	mov     r0, #0x3
	str     r0, [sp, #0x8]
.thumb
branch_225afea: @ 225afea :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225aff0

.word 0x226eba0 @ 0x225aff0
.thumb
Function_225aff4: @ 225aff4 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x2c] @ 0x225b024, (=#0x226ec5c)
	ldr     r1, [pc, #0x2c] @ 0x225b028, (=#0xfffe)
	mov     r3, #0x0
.thumb
branch_225affc: @ 225affc :thumb
	ldrh    r2, [r4, #0x0]
	cmp     r0, r2
	beq     branch_225b00c
	.hword  0x1ca4 @ add r4, r4, #0x2
	ldrh    r2, [r4, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r1
	bne     branch_225affc
.thumb
branch_225b00c: @ 225b00c :thumb
	ldr     r0, [pc, #0x14] @ 0x225b024, (=#0x226ec5c)
	lsl     r1, r3, #1
	ldrh    r1, [r0, r1]
	ldr     r0, [pc, #0x14] @ 0x225b028, (=#0xfffe)
	cmp     r1, r0
	bne     branch_225b01e
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x225b01e

.thumb
branch_225b01e: @ 225b01e :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225b024

.word 0x226ec5c @ 0x225b024
.word 0xfffe @ 0x225b028
.thumb
Function_225b02c: @ 225b02c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r5, r3
	mov     r4, #0x0
	bl      Function_2256044
	cmp     r0, #0x1
	beq     branch_225b050
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	bl      Function_2256078
	cmp     r0, #0x1
	bne     branch_225b054
.thumb
branch_225b050: @ 225b050 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225b054

.thumb
branch_225b054: @ 225b054 :thumb
	ldr     r2, [pc, #0x24] @ 0x225b07c, (=#0x226ec5c)
	ldr     r0, [pc, #0x28] @ 0x225b080, (=#0xffff)
.thumb
branch_225b058: @ 225b058 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r5, r1
	beq     branch_225b068
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r1, [r2, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r1, r0
	bne     branch_225b058
.thumb
branch_225b068: @ 225b068 :thumb
	ldr     r0, [pc, #0x10] @ 0x225b07c, (=#0x226ec5c)
	lsl     r1, r4, #1
	ldrh    r1, [r0, r1]
	ldr     r0, [pc, #0x10] @ 0x225b080, (=#0xffff)
	cmp     r1, r0
	bne     branch_225b078
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225b078

.thumb
branch_225b078: @ 225b078 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225b07c

.word 0x226ec5c @ 0x225b07c
.word 0xffff @ 0x225b080
.thumb
Function_225b084: @ 225b084 :thumb
	push    {r4,r5}
	lsl     r1, r1, #4
	add     r4, r0, r1
	ldr     r1, [pc, #0x2c] @ 0x225b0b8, (=#0x3de)
	ldr     r3, [pc, #0x2c] @ 0x225b0bc, (=#0x226ebb0)
	ldrh    r1, [r4, r1]
	ldr     r4, [pc, #0x24] @ 0x225b0b8, (=#0x3de)
	mov     r2, #0x0
.thumb
branch_225b094: @ 225b094 :thumb
	ldrh    r5, [r3, #0x0]
	lsl     r5, r5, #4
	add     r5, r0, r5
	ldrh    r5, [r5, r4]
	cmp     r1, r5
	beq     branch_225b0a8
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x6
	bcc     branch_225b094
.thumb
branch_225b0a8: @ 225b0a8 :thumb
	cmp     r2, #0x6
	bne     branch_225b0b2
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x225b0b2

.thumb
branch_225b0b2: @ 225b0b2 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225b0b8

.word 0x3de @ 0x225b0b8
.word 0x226ebb0 @ 0x225b0bc
.thumb
Function_225b0c0: @ 225b0c0 :thumb
	push    {r4,r5}
	lsl     r1, r1, #4
	add     r4, r0, r1
	ldr     r1, [pc, #0x2c] @ 0x225b0f4, (=#0x3de)
	ldr     r3, [pc, #0x2c] @ 0x225b0f8, (=#0x226ebc8)
	ldrh    r1, [r4, r1]
	ldr     r4, [pc, #0x24] @ 0x225b0f4, (=#0x3de)
	mov     r2, #0x0
.thumb
branch_225b0d0: @ 225b0d0 :thumb
	ldrh    r5, [r3, #0x0]
	lsl     r5, r5, #4
	add     r5, r0, r5
	ldrh    r5, [r5, r4]
	cmp     r1, r5
	beq     branch_225b0e4
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x6
	bcc     branch_225b0d0
.thumb
branch_225b0e4: @ 225b0e4 :thumb
	cmp     r2, #0x6
	bne     branch_225b0ee
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x225b0ee

.thumb
branch_225b0ee: @ 225b0ee :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225b0f4

.word 0x3de @ 0x225b0f4
.word 0x226ebc8 @ 0x225b0f8
.thumb
Function_225b0fc: @ 225b0fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x0
	mov     r4, r2
	bl      Function_207ce78
	mov     r1, r0
	ldr     r0, [pc, #0xc] @ 0x225b11c, (=#0x2120)
	ldr     r0, [r5, r0]
	bl      Function_207d3b0
	mov     r1, r4
	bl      Function_207d014
	pop     {r3-r5,pc}
@ 0x225b11c

.word 0x2120 @ 0x225b11c
.thumb
Function_225b120: @ 225b120 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r2
	bl      Function_223df1c
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_225b144
.thumb
branch_225b132: @ 225b132 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_223e208
	cmp     r5, r0
	beq     branch_225b144
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_225b132
.thumb
branch_225b144: @ 225b144 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x225b148

.thumb
Function_225b148: @ 225b148 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x4]
	mov     r5, r1
	bl      Function_223df1c
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_225b1ce
.thumb
branch_225b164: @ 225b164 :thumb
	ldr     r0, [sp, #0x14]
	add     r7, r0, #0x1
	ldr     r0, [sp, #0x10]
	cmp     r7, r0
	bge     branch_225b1c2
	ldr     r0, [sp, #0x14]
	add     r0, r5, r0
	str     r0, [sp, #0xc]
.thumb
branch_225b174: @ 225b174 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x5c] @ 0x225b1d4, (=#0x21e8)
	ldrb    r6, [r1, r0]
	add     r1, r5, r7
	ldrb    r4, [r1, r0]
	lsl     r0, r6, #4
	str     r1, [sp, #0x8]
	add     r1, r5, r0
	ldr     r0, [pc, #0x50] @ 0x225b1d8, (=#0x21b4)
	ldr     r0, [r1, r0]
	lsl     r1, r4, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x48] @ 0x225b1d8, (=#0x21b4)
	ldr     r1, [r2, r1]
	cmp     r0, r1
	bne     branch_225b1ba
	cmp     r0, #0x1
	beq     branch_225b19c
	mov     r0, #0x1
	b       branch_225b19e
@ 0x225b19c

.thumb
branch_225b19c: @ 225b19c :thumb
	mov     r0, #0x0
.thumb
branch_225b19e: @ 225b19e :thumb
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_2252ec8
	cmp     r0, #0x0
	beq     branch_225b1ba
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x20] @ 0x225b1d4, (=#0x21e8)
	strb    r4, [r1, r0]
	ldr     r1, [sp, #0x8]
	strb    r6, [r1, r0]
.thumb
branch_225b1ba: @ 225b1ba :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_225b174
.thumb
branch_225b1c2: @ 225b1c2 :thumb
	ldr     r0, [sp, #0x14]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x14]
	cmp     r1, r0
	blt     branch_225b164
.thumb
branch_225b1ce: @ 225b1ce :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225b1d2


.align 2


.word 0x21e8 @ 0x225b1d4
.word 0x21b4 @ 0x225b1d8
.thumb
Function_225b1dc: @ 225b1dc :thumb
	push    {r4,r5}
	mov     r4, #0xc0
	mul     r4, r1
	add     r5, r0, r4
	ldr     r0, [pc, #0x34] @ 0x225b21c, (=#0x2db0)
	mov     r1, #0x1
	ldr     r4, [r5, r0]
	lsl     r1, r1, #24
	mov     r3, #0x0
	tst     r1, r4
	bne     branch_225b1fc
	add     r0, #0x10
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x28] @ 0x225b220, (=#0x200400c0)
	tst     r0, r1
	beq     branch_225b214
.thumb
branch_225b1fc: @ 225b1fc :thumb
	ldr     r4, [pc, #0x24] @ 0x225b224, (=#0x226ec34)
	mov     r1, #0x0
.thumb
branch_225b200: @ 225b200 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r2, r0
	bne     branch_225b20a
	mov     r3, #0x1
	b       branch_225b216
@ 0x225b20a

.thumb
branch_225b20a: @ 225b20a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0xa
	bcc     branch_225b200
	b       branch_225b216
@ 0x225b214

.thumb
branch_225b214: @ 225b214 :thumb
	mov     r3, #0x1
.thumb
branch_225b216: @ 225b216 :thumb
	mov     r0, r3
	pop     {r4,r5}
	bx      lr
@ 0x225b21c

.word 0x2db0 @ 0x225b21c
.word 0x200400c0 @ 0x225b220
.word 0x226ec34 @ 0x225b224
.thumb
Function_225b228: @ 225b228 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	ldr     r1, [r5, #0x64]
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r4, r2
	mov     r6, #0x0
	bl      Function_2258ab8
	str     r0, [sp, #0xc]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r6
	bl      Function_2258acc
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2258ab8
	mov     r7, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	mov     r2, r6
	bl      Function_2258acc
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x64]
	bl      Function_223e208
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x58
	bne     branch_225b2c4
	ldr     r0, [pc, #0x178] @ 0x225b3ec, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_225b2c4
	ldr     r0, [r5, #0x64]
	mov     r1, #0x1c
	mul     r1, r0
	add     r2, r5, r1
	mov     r1, #0xbb
	lsl     r1, r1, #2
	ldr     r2, [r2, r1]
	cmp     r2, #0x0
	beq     branch_225b2c4
	ldr     r1, [r5, #0x6c]
	cmp     r0, r1
	beq     branch_225b2c4
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r3, [pc, #0x154] @ 0x225b3f0, (=#0x2d8c)
	add     r1, r5, r1
	ldr     r0, [r1, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r1, [r1, r3]
	cmp     r0, r1
	bcs     branch_225b2c4
	cmp     r0, #0x0
	beq     branch_225b2c4
	ldr     r1, [sp, #0x10]
	neg     r0, r2
	bl      Function_22563f8
	ldr     r1, [pc, #0x140] @ 0x225b3f4, (=#0x215c)
	mov     r6, #0x1
	str     r0, [r5, r1]
	mov     r0, #0x46
	ldr     r1, [r5, #0x64]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0xd5
	str     r0, [r4, #0x0]
.thumb
branch_225b2c4: @ 225b2c4 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x62
	bne     branch_225b326
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_225b326
	ldr     r0, [pc, #0x114] @ 0x225b3ec, (=#0x213c)
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_225b326
	ldr     r0, [pc, #0x114] @ 0x225b3f8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	beq     branch_225b326
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r3, [pc, #0xf0] @ 0x225b3f0, (=#0x2d8c)
	add     r2, r5, r2
	ldr     r1, [r2, r3]
	cmp     r1, #0x0
	beq     branch_225b326
	add     r1, r3, #0x4
	ldr     r1, [r2, r1]
	sub     r0, #0xc1
	mul     r0, r1
	mov     r1, #0xa
	bl      Function_22563f8
	ldr     r1, [pc, #0xdc] @ 0x225b3f4, (=#0x215c)
	mov     r6, #0x1
	str     r0, [r5, r1]
	mov     r0, #0x46
	ldr     r1, [r5, #0x64]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0xd6
	str     r0, [r4, #0x0]
.thumb
branch_225b326: @ 225b326 :thumb
	cmp     r7, #0x2e
	bne     branch_225b37a
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0xbc] @ 0x225b3f0, (=#0x2d8c)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225b37a
	mov     r0, r5
	bl      Function_2255a4c
	cmp     r0, #0x62
	beq     branch_225b37a
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225b37a
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x9c] @ 0x225b3fc, (=#0x2d90)
	add     r2, r5, r2
	ldr     r2, [r2, r0]
	sub     r1, #0xc1
	mov     r0, r2
	mul     r0, r1
	ldr     r1, [sp, #0x8]
	bl      Function_22563f8
	ldr     r1, [pc, #0x80] @ 0x225b3f4, (=#0x215c)
	mov     r6, #0x1
	str     r0, [r5, r1]
	lsr     r0, r1, #5
	str     r0, [r4, #0x0]
.thumb
branch_225b37a: @ 225b37a :thumb
	cmp     r7, #0x74
	bne     branch_225b3e6
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	add     r3, r5, r1
	ldr     r1, [pc, #0x68] @ 0x225b3f0, (=#0x2d8c)
	ldr     r2, [r3, r1]
	cmp     r2, #0x0
	beq     branch_225b3e6
	add     r1, #0x2c
	ldrh    r1, [r3, r1]
	cmp     r1, #0x0
	bne     branch_225b3e6
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x225b400, (=#0x219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	ldr     r1, [sp, #0x4]
	lsl     r1, r1, #3
	add     r2, r5, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	bne     branch_225b3e6
	ldr     r1, [r5, #0x6c]
	mov     r0, #0x1c
	mul     r0, r1
	add     r2, r5, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_225b3ce
	add     r0, #0x8
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225b3e6
.thumb
branch_225b3ce: @ 225b3ce :thumb
	ldr     r0, [pc, #0x28] @ 0x225b3f8, (=#0x3044)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x2c] @ 0x225b404, (=#0x3e9)
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r1, r0
	beq     branch_225b3e6
	mov     r1, #0xd8
	str     r1, [r4, #0x0]
	mov     r6, r0
.thumb
branch_225b3e6: @ 225b3e6 :thumb
	mov     r0, r6
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225b3ec

.word 0x213c @ 0x225b3ec
.word 0x2d8c @ 0x225b3f0
.word 0x215c @ 0x225b3f4
.word 0x3044 @ 0x225b3f8
.word 0x2d90 @ 0x225b3fc
.word 0x219c @ 0x225b400
.word 0x3e9 @ 0x225b404
.thumb
Function_225b408: @ 225b408 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r2, #0xff
	beq     branch_225b438
	mov     r1, r2
	bl      Function_2255a4c
	cmp     r0, #0x2e
	bne     branch_225b438
	ldr     r0, [pc, #0x1c] @ 0x225b43c, (=#0x2d6c)
	add     r1, r5, r0
	mov     r0, #0xc0
	mul     r0, r4
	add     r0, r1, r0
	lsl     r1, r4, #1
	add     r2, r5, r1
	ldr     r1, [pc, #0x14] @ 0x225b440, (=#0x30bc)
	ldrh    r2, [r2, r1]
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_225b438
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, r2]
.thumb
branch_225b438: @ 225b438 :thumb
	pop     {r3-r5,pc}
@ 0x225b43a


.align 2


.word 0x2d6c @ 0x225b43c
.word 0x30bc @ 0x225b440
.thumb
Function_225b444: @ 225b444 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_223f710
	cmp     r0, #0x0
	beq     branch_225b458
	mov     r0, #0x2a
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225b458

.thumb
branch_225b458: @ 225b458 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225b45c

.thumb
Function_225b45c: @ 225b45c :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r2, #0xe
	bhi     branch_225b51c
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r3, #0
	lsl     r6, r5, #0
	lsl     r4, r0, #1
	lsl     r4, r1, #1
	lsl     r4, r2, #1
	lsl     r2, r3, #1
	lsl     r0, r4, #1
	lsl     r4, r5, #1
	lsl     r0, r7, #1
	lsl     r2, r0, #2
	lsl     r2, r1, #2
	lsl     r0, r2, #2
	lsl     r0, r3, #2
	lsl     r2, r4, #2
	lsl     r6, r4, #2
	mov     r1, r3
	bl      Function_223e208
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	pop     {r4,pc}
@ 0x225b4a0


.incbin "./baserom/overlay/overlay_0016.bin", 0x20360, 0x225b51c - 0x225b4a0


.thumb
branch_225b51c: @ 225b51c :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225b524


.incbin "./baserom/overlay/overlay_0016.bin", 0x203e4, 0x225b540 - 0x225b524


.thumb
Function_225b540: @ 225b540 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [sp, #0x10]
	cmp     r2, #0xb
	bhi     branch_225b5be
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r2, #0
	lsl     r0, r5, #0
	lsl     r6, r0, #1
	lsl     r6, r1, #1
	lsl     r6, r4, #1
	lsl     r6, r4, #1
	lsl     r6, r4, #1
	lsl     r6, r4, #1
	lsl     r6, r4, #1
	lsl     r6, r2, #1
	lsl     r6, r4, #1
	lsl     r6, r3, #1
	mov     r1, r3
	bl      Function_223e208
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	str     r4, [r1, r0]
	pop     {r3-r5,pc}
@ 0x225b580


.incbin "./baserom/overlay/overlay_0016.bin", 0x20440, 0x225b5be - 0x225b580


.thumb
branch_225b5be: @ 225b5be :thumb
	bl      Function_2022974
	pop     {r3-r5,pc}
@ 0x225b5c4


.incbin "./baserom/overlay/overlay_0016.bin", 0x20484, 0x225b5d0 - 0x225b5c4


.thumb
Function_225b5d0: @ 225b5d0 :thumb
	push    {r4,lr}
	mov     r3, r0
	add     r3, #0x88
	str     r1, [r3, #0x0]
	mov     r3, r0
	ldr     r1, [pc, #0x58] @ 0x225b634, (=#0x7fffff)
	mov     r4, r2
	and     r4, r1
	add     r3, #0x8c
	str     r4, [r3, #0x0]
	lsl     r1, r1, #23
	mov     r3, r2
	and     r3, r1
	mov     r1, r0
	add     r1, #0x90
	str     r3, [r1, #0x0]
	mov     r3, #0x1
	lsl     r3, r3, #30
	mov     r1, r2
	tst     r1, r3
	beq     branch_225b602
	ldr     r1, [r0, #0x64]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	b       branch_225b622
@ 0x225b602

.thumb
branch_225b602: @ 225b602 :thumb
	lsl     r1, r3, #1
	tst     r1, r2
	beq     branch_225b610
	ldr     r1, [r0, #0x6c]
	add     r0, #0x94
	str     r1, [r0, #0x0]
	b       branch_225b622
@ 0x225b610

.thumb
branch_225b610: @ 225b610 :thumb
	lsr     r1, r3, #1
	tst     r1, r2
	bne     branch_225b61c
	lsr     r1, r3, #2
	tst     r1, r2
	beq     branch_225b622
.thumb
branch_225b61c: @ 225b61c :thumb
	mov     r1, #0x0
	add     r0, #0x94
	str     r1, [r0, #0x0]
.thumb
branch_225b622: @ 225b622 :thumb
	cmp     r4, #0x91
	bcc     branch_225b62a
	bl      Function_2022974
.thumb
branch_225b62a: @ 225b62a :thumb
	ldr     r0, [pc, #0xc] @ 0x225b638, (=#0x226ee24)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x225b632


.align 2


.word 0x7fffff @ 0x225b634
.word 0x226ee24 @ 0x225b638
.thumb
Function_225b63c: @ 225b63c :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x84] @ 0x225b6c4, (=#0x213c)
	mov     r5, r2
	ldr     r2, [r0, r1]
	mov     r0, #0x2
	lsl     r0, r0, #10
	mov     r1, r2
	ldr     r4, [sp, #0x14]
	tst     r1, r0
	bne     branch_225b666
	lsl     r0, r0, #4
	tst     r0, r2
	bne     branch_225b666
	cmp     r3, #0x0
	beq     branch_225b666
	mov     r0, r3
	mul     r0, r5
	mov     r1, #0xa
	bl      Function_22563f8
	mov     r3, r0
.thumb
branch_225b666: @ 225b666 :thumb
	cmp     r5, #0x0
	beq     branch_225b674
	cmp     r5, #0x5
	beq     branch_225b686
	cmp     r5, #0x14
	beq     branch_225b6a4
	b       branch_225b6c0
@ 0x225b674

.thumb
branch_225b674: @ 225b674 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, #0x8
	orr     r1, r0
	mov     r0, #0x4
	bic     r1, r0
	mov     r0, #0x2
	bic     r1, r0
	str     r1, [r4, #0x0]
	b       branch_225b6c0
@ 0x225b686

.thumb
branch_225b686: @ 225b686 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_225b6c0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_225b69c
	mov     r0, #0x2
	bic     r1, r0
	str     r1, [r4, #0x0]
	b       branch_225b6c0
@ 0x225b69c

.thumb
branch_225b69c: @ 225b69c :thumb
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r4, #0x0]
	b       branch_225b6c0
@ 0x225b6a4

.thumb
branch_225b6a4: @ 225b6a4 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_225b6c0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_225b6ba
	mov     r0, #0x4
	bic     r1, r0
	str     r1, [r4, #0x0]
	b       branch_225b6c0
@ 0x225b6ba

.thumb
branch_225b6ba: @ 225b6ba :thumb
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_225b6c0: @ 225b6c0 :thumb
	mov     r0, r3
	pop     {r3-r5,pc}
@ 0x225b6c4

.word 0x213c @ 0x225b6c4
.thumb
Function_225b6c8: @ 225b6c8 :thumb
	lsl     r1, r1, #4
	add     r2, r0, r1
	ldr     r1, [pc, #0x5c] @ 0x225b72c, (=#0x3de)
	ldrh    r3, [r2, r1]
	cmp     r3, #0x9b
	bgt     branch_225b6fa
	cmp     r3, #0x97
	blt     branch_225b6e0
	beq     branch_225b71a
	cmp     r3, #0x9b
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b6e0

.thumb
branch_225b6e0: @ 225b6e0 :thumb
	cmp     r3, #0x27
	bgt     branch_225b6ec
	bge     branch_225b71a
	cmp     r3, #0x1a
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b6ec

.thumb
branch_225b6ec: @ 225b6ec :thumb
	cmp     r3, #0x4b
	bgt     branch_225b6f4
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b6f4

.thumb
branch_225b6f4: @ 225b6f4 :thumb
	cmp     r3, #0x91
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b6fa

.thumb
branch_225b6fa: @ 225b6fa :thumb
	mov     r2, #0x1
	lsl     r2, r2, #8
	cmp     r3, r2
	bgt     branch_225b70a
	bge     branch_225b71a
	cmp     r3, #0xff
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b70a

.thumb
branch_225b70a: @ 225b70a :thumb
	add     r1, r2, #0x7
	cmp     r3, r1
	bgt     branch_225b714
	beq     branch_225b71a
	b       branch_225b726
@ 0x225b714

.thumb
branch_225b714: @ 225b714 :thumb
	add     r2, #0x11
	cmp     r3, r2
	bne     branch_225b726
.thumb
branch_225b71a: @ 225b71a :thumb
	ldr     r1, [pc, #0x14] @ 0x225b730, (=#0x213c)
	ldr     r1, [r0, r1]
	mov     r0, #0x2
	lsl     r0, r0, #8
	and     r0, r1
	bx      lr
@ 0x225b726

.thumb
branch_225b726: @ 225b726 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x225b72a


.align 2


.word 0x3de @ 0x225b72c
.word 0x213c @ 0x225b730

.incbin "./baserom/overlay/overlay_0016.bin", 0x205f4, 0x225b80c - 0x225b734


.thumb
Function_225b80c: @ 225b80c :thumb
	lsl     r1, r1, #3
	add     r3, r0, r1
	mov     r2, #0x0
	mov     r0, #0x37
	mov     r1, r2
	lsl     r0, r0, #4
.thumb
branch_225b818: @ 225b818 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x4
	blt     branch_225b818
	bx      lr
@ 0x225b824

.thumb
Function_225b824: @ 225b824 :thumb
	add     r1, r0, r1
	mov     r0, #0x39
	mov     r2, #0x0
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	bx      lr
@ 0x225b830

.thumb
Function_225b830: @ 225b830 :thumb
	lsl     r1, r1, #1
	add     r1, r0, r1
	mov     r0, #0xe5
	mov     r2, #0x0
	lsl     r0, r0, #2
	strh    r2, [r1, r0]
	bx      lr
@ 0x225b83e


.align 2, 0


.thumb
Function_225b840: @ 225b840 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r2, #0xff
	mov     r12, r2
	mov     r2, #0xc0
	mov     r7, r5
	mul     r7, r2
	ldr     r2, [pc, #0x8c] @ 0x225b8dc, (=#0x2d67)
	add     r6, r1, r7
	mov     r4, r3
	ldrb    r3, [r6, r2]
	cmp     r3, #0x3b
	beq     branch_225b89c
	cmp     r3, #0x24
	beq     branch_225b89c
	cmp     r3, #0x79
	beq     branch_225b89c
	add     r2, #0x25
	ldr     r2, [r6, r2]
	cmp     r2, #0x0
	beq     branch_225b89c
	mov     r2, #0xc0
	mul     r2, r4
	add     r6, r1, r2
	ldr     r2, [pc, #0x68] @ 0x225b8dc, (=#0x2d67)
	add     r2, #0x25
	ldr     r2, [r6, r2]
	cmp     r2, #0x0
	beq     branch_225b89c
	ldr     r2, [pc, #0x60] @ 0x225b8dc, (=#0x2d67)
	ldrb    r2, [r6, r2]
	cmp     r2, #0x3b
	beq     branch_225b89c
	cmp     r2, #0x24
	beq     branch_225b89c
	cmp     r2, #0x79
	beq     branch_225b89c
	bl      Function_223f4bc
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_225b898
	mov     r12, r4
	b       branch_225b8d6
@ 0x225b898

.thumb
branch_225b898: @ 225b898 :thumb
	mov     r12, r5
	b       branch_225b8d6
@ 0x225b89c

.thumb
branch_225b89c: @ 225b89c :thumb
	cmp     r3, #0x3b
	beq     branch_225b8b6
	cmp     r3, #0x24
	beq     branch_225b8b6
	ldr     r0, [pc, #0x38] @ 0x225b8e0, (=#0x2d8c)
	add     r2, r1, r7
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225b8b6
	cmp     r3, #0x79
	beq     branch_225b8b6
	mov     r12, r5
	b       branch_225b8d6
@ 0x225b8b6

.thumb
branch_225b8b6: @ 225b8b6 :thumb
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r1, r0
	ldr     r0, [pc, #0x1c] @ 0x225b8dc, (=#0x2d67)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x3b
	beq     branch_225b8d6
	cmp     r1, #0x24
	beq     branch_225b8d6
	add     r0, #0x25
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_225b8d6
	cmp     r1, #0x79
	beq     branch_225b8d6
	mov     r12, r4
.thumb
branch_225b8d6: @ 225b8d6 :thumb
	mov     r0, r12
	pop     {r3-r7,pc}
@ 0x225b8da


.align 2


.word 0x2d67 @ 0x225b8dc
.word 0x2d8c @ 0x225b8e0

.incbin "./baserom/overlay/overlay_0016.bin", 0x207a4, 0x225b910 - 0x225b8e4


.thumb
Function_225b910: @ 225b910 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	ldr     r2, [pc, #0x164] @ 0x225ba7c, (=#0x137)
	mov     r7, r0
	mov     r4, r1
	cmp     r3, r2
	bgt     branch_225b928
	blt     branch_225b922
	b       branch_225ba24
@ 0x225b922

.thumb
branch_225b922: @ 225b922 :thumb
	cmp     r3, #0xed
	beq     branch_225b9ca
	b       branch_225ba76
@ 0x225b928

.thumb
branch_225b928: @ 225b928 :thumb
	mov     r0, r2
	add     r0, #0x34
	cmp     r3, r0
	bgt     branch_225b938
	add     r2, #0x34
	cmp     r3, r2
	beq     branch_225b940
	b       branch_225ba76
@ 0x225b938

.thumb
branch_225b938: @ 225b938 :thumb
	add     r2, #0x8a
	cmp     r3, r2
	beq     branch_225b94c
	b       branch_225ba76
@ 0x225b940

.thumb
branch_225b940: @ 225b940 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2258b2c
	mov     r5, r0
	b       branch_225ba78
@ 0x225b94c

.thumb
branch_225b94c: @ 225b94c :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2258ab8
	sub     r0, #0x7e
	cmp     r0, #0xf
	bhi     branch_225b9c6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r7, #0
	lsl     r2, r0, #1
	lsl     r2, r1, #1
	lsl     r6, r0, #1
	lsl     r2, r2, #1
	lsl     r6, r3, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r2, r4, #0
	lsl     r6, r1, #1
	lsl     r2, r6, #0
	lsl     r6, r5, #0
	lsl     r6, r6, #0
	lsl     r6, r2, #1
	lsl     r2, r3, #1
	lsl     r2, r7, #0
	mov     r5, #0x1
	b       branch_225ba78
@ 0x225b98a


.incbin "./baserom/overlay/overlay_0016.bin", 0x2084a, 0x225b9c6 - 0x225b98a


.thumb
branch_225b9c6: @ 225b9c6 :thumb
	mov     r5, #0x0
	b       branch_225ba78
@ 0x225b9ca

.thumb
branch_225b9ca: @ 225b9ca :thumb
	ldr     r0, [pc, #0xb4] @ 0x225ba80, (=#0x2d54)
	add     r1, r4, r0
	mov     r0, #0xc0
	mul     r0, r6
	ldr     r4, [r1, r0]
	lsl     r0, r4, #2
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r5, r0, #26
	lsl     r0, r4, #7
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r3, r0, #27
	lsl     r0, r4, #12
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r2, r0, #28
	lsl     r0, r4, #17
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r1, r0, #29
	lsl     r0, r4, #27
	lsl     r4, r4, #22
	lsr     r4, r4, #27
	lsr     r6, r0, #27
	mov     r0, #0x1
	lsl     r4, r4, #31
	and     r0, r6
	lsr     r4, r4, #30
	orr     r0, r4
	orr     r0, r1
	orr     r0, r2
	orr     r0, r3
	mov     r1, r5
	orr     r1, r0
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0x3f
	blx     Division
	add     r5, r0, #0x1
	cmp     r5, #0x9
	blt     branch_225ba78
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_225ba78
@ 0x225ba24

.thumb
branch_225ba24: @ 225ba24 :thumb
	mov     r2, #0xd
	str     r2, [sp, #0x0]
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ba78
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_225ba78
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x34] @ 0x225ba84, (=#0x80ff)
	tst     r1, r0
	beq     branch_225ba78
	mov     r1, #0x3
	tst     r1, r0
	beq     branch_225ba5c
	mov     r5, #0xb
.thumb
branch_225ba5c: @ 225ba5c :thumb
	mov     r1, #0xc
	tst     r1, r0
	beq     branch_225ba64
	mov     r5, #0x5
.thumb
branch_225ba64: @ 225ba64 :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_225ba6c
	mov     r5, #0xa
.thumb
branch_225ba6c: @ 225ba6c :thumb
	mov     r1, #0xc0
	tst     r0, r1
	beq     branch_225ba78
	mov     r5, #0xf
	b       branch_225ba78
@ 0x225ba76

.thumb
branch_225ba76: @ 225ba76 :thumb
	mov     r5, #0x0
.thumb
branch_225ba78: @ 225ba78 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x225ba7c

.word 0x137 @ 0x225ba7c
.word 0x2d54 @ 0x225ba80
.word 0x80ff @ 0x225ba84

.incbin "./baserom/overlay/overlay_0016.bin", 0x20948, 0x2260228 - 0x225ba88


.thumb
Function_2260228: @ 2260228 :thumb
	ldr     r0, [r4, #0x4]
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      0x22377f8
	cmp     r0, #0x1
	beq     branch_2260266
	ldr     r0, [r4, #0x4]
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      0x223783c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, #0x6
	add     sp, #0x120
	strb    r0, [r4, #0xa]
	pop     {r3-r7,pc}
@ 0x2260250


.incbin "./baserom/overlay/overlay_0016.bin", 0x25110, 0x2260266 - 0x2260250


.thumb
branch_2260266: @ 2260266 :thumb
	add     sp, #0x120
	pop     {r3-r7,pc}
@ 0x226026a


.incbin "./baserom/overlay/overlay_0016.bin", 0x2512a, 0x2263ae4 - 0x226026a


.thumb
Function_2263ae4: @ 2263ae4 :thumb
	ldr     r1, [pc, #0x4] @ 0x2263aec, (=#0x195)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x2263aea


.align 2


.word 0x195 @ 0x2263aec
.thumb
Function_2263af0: @ 2263af0 :thumb
	ldr     r1, [pc, #0x4] @ 0x2263af8, (=#0x196)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x2263af6


.align 2


.word 0x196 @ 0x2263af8

.incbin "./baserom/overlay/overlay_0016.bin", 0x289bc, 0x226485c - 0x2263afc


.thumb
Function_226485c: @ 226485c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r6, r3
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	cmp     r1, #0x1
	bne     branch_2264882
	bl      Function_223e074
	mov     r4, r0
	mov     r0, r7
	bl      Function_223e0b0
	mov     r5, r0
	mov     r0, r7
	bl      Function_223e0bc
	b       branch_2264896
@ 0x2264882

.thumb
branch_2264882: @ 2264882 :thumb
	bl      Function_223e06c
	mov     r4, r0
	mov     r0, r7
	bl      Function_223e08c
	mov     r5, r0
	mov     r0, r7
	bl      Function_223e098
.thumb
branch_2264896: @ 2264896 :thumb
	mov     r7, r0
	add     r0, sp, #0x10
	ldrh    r2, [r5, #0x0]
	ldrb    r3, [r0, #0x10]
	add     r0, r2, #0x5
	add     r1, r0, r3
	mov     r0, #0x1
	lsl     r0, r0, #12
	cmp     r1, r0
	bls     branch_22648b0
	strh    r2, [r7, #0x0]
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_22648b0: @ 22648b0 :thumb
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x8
	strb    r1, [r0, #0x0]
	ldr     r1, [sp, #0x4]
	strb    r1, [r0, #0x1]
	add     r1, sp, #0x10
	ldrb    r1, [r1, #0x10]
	strh    r1, [r0, #0x2]
	add     r1, sp, #0x8
	mov     r0, #0x0
.thumb
branch_22648c4: @ 22648c4 :thumb
	ldrb    r7, [r1, r0]
	ldrh    r2, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r7, [r4, r2]
	ldrh    r2, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r5, #0x0]
	cmp     r0, #0x4
	bcc     branch_22648c4
	mov     r0, #0x0
	cmp     r3, #0x0
	ble     branch_22648ee
.thumb
branch_22648dc: @ 22648dc :thumb
	ldrb    r2, [r6, r0]
	ldrh    r1, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r2, [r4, r1]
	ldrh    r1, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, #0x0]
	cmp     r0, r3
	blt     branch_22648dc
.thumb
branch_22648ee: @ 22648ee :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22648f2


.incbin "./baserom/overlay/overlay_0016.bin", 0x297b2, 0x2264a04 - 0x22648f2


.thumb
Function_2264a04: @ 2264a04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x4]
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x4
	mov     r7, r2
	mov     r6, r3
	tst     r0, r1
	beq     branch_2264a5e
	ldr     r0, [pc, #0x6c] @ 0x2264a88, (=#0x240c)
	ldr     r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_2264a5e
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2264a48
	mov     r4, #0x0
	bl      Function_2035e18
	cmp     r0, #0x0
	ble     branch_2264a48
.thumb
branch_2264a32: @ 2264a32 :thumb
	ldrb    r3, [r6, #0x0]
	ldr     r0, [r5, #0x30]
	mov     r1, r4
	mov     r2, r7
	bl      Function_2251f44
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_2035e18
	cmp     r4, r0
	blt     branch_2264a32
.thumb
branch_2264a48: @ 2264a48 :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r3, r6
	bl      Function_207a81c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2264a5e

.thumb
branch_2264a5e: @ 2264a5e :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2264a70
	ldrb    r3, [r6, #0x0]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x0
	mov     r2, r7
	bl      Function_2251f44
.thumb
branch_2264a70: @ 2264a70 :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r3, r6
	bl      Function_226485c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2264a86


.align 2


.word 0x240c @ 0x2264a88
.thumb
Function_2264a8c: @ 2264a8c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0x1
	mov     r5, r0
	str     r1, [sp, #0x4]
	bl      Function_223f4e8
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2264ab2


.align 2, 0


.thumb
Function_2264ab4: @ 2264ab4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r7, r1
	mov     r3, #0x2
	add     r2, sp, #0x4
	strb    r3, [r2, #0x0]
	mov     r2, #0xc0
	mov     r4, r7
	mul     r4, r2
	add     r2, sp, #0x4
	ldrb    r5, [r2, #0x1]
	mov     r2, #0x3
	mov     r6, r0
	bic     r5, r2
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	ldr     r2, [pc, #0xd4] @ 0x2264bac, (=#0x2dbe)
	mov     r12, r2
	ldrb    r2, [r3, r2]
	lsl     r2, r2, #28
	lsr     r3, r2, #28
	mov     r2, #0x3
	and     r2, r3
	mov     r3, r5
	orr     r3, r2
	add     r2, sp, #0x4
	strb    r3, [r2, #0x1]
	ldrb    r5, [r2, #0x1]
	mov     r2, #0x4
	bic     r5, r2
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x58
	ldrb    r2, [r3, r2]
	mov     r3, r5
	lsl     r2, r2, #26
	lsr     r2, r2, #31
	lsl     r2, r2, #31
	lsr     r2, r2, #29
	orr     r3, r2
	add     r2, sp, #0x4
	strb    r3, [r2, #0x1]
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x7e
	ldrh    r3, [r3, r2]
	add     r2, sp, #0x4
	strh    r3, [r2, #0x2]
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x16
	ldr     r2, [r3, r2]
	str     r2, [sp, #0x8]
	bl      Function_223e1f8
	mov     r2, r0
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_22599d0
	add     r2, sp, #0x4
	str     r0, [sp, #0xc]
	ldrb    r0, [r2, #0x1]
	mov     r1, #0xf8
	add     r5, sp, #0x4
	bic     r0, r1
	ldr     r1, [r6, #0x30]
	add     r3, r1, r4
	ldr     r1, [pc, #0x68] @ 0x2264bb0, (=#0x2d66)
	mov     r4, #0x0
	ldrb    r1, [r3, r1]
	lsl     r1, r1, #27
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #24
	orr     r0, r1
	strb    r0, [r2, #0x1]
.thumb
branch_2264b56: @ 2264b56 :thumb
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, r4, #0x6
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0xc]
	mov     r2, r4
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, #0x1f
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x14]
	mov     r2, r4
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, #0x27
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_2264b56
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	mov     r2, #0x2d
	add     r3, sp, #0x28
	bl      Function_2252060
	mov     r0, #0x3c
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, r7
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2264bac

.word 0x2dbe @ 0x2264bac
.word 0x2d66 @ 0x2264bb0
.thumb
Function_2264bb4: @ 2264bb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	mov     r7, r1
	add     r3, sp, #0x4
	mov     r2, #0x3
	strb    r2, [r3, #0x0]
	mov     r2, #0xc0
	mov     r4, r7
	mul     r4, r2
	mov     r2, r3
	ldrb    r5, [r2, #0x1]
	mov     r2, #0x3
	mov     r6, r0
	bic     r5, r2
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	ldr     r2, [pc, #0x104] @ 0x2264cdc, (=#0x2dbe)
	mov     r12, r2
	ldrb    r2, [r3, r2]
	lsl     r2, r2, #28
	lsr     r3, r2, #28
	mov     r2, #0x3
	and     r2, r3
	mov     r3, r5
	orr     r3, r2
	add     r2, sp, #0x4
	strb    r3, [r2, #0x1]
	ldrb    r5, [r2, #0x1]
	mov     r2, #0x4
	bic     r5, r2
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x58
	ldrb    r2, [r3, r2]
	mov     r3, r5
	lsl     r2, r2, #26
	lsr     r2, r2, #31
	lsl     r2, r2, #31
	lsr     r2, r2, #29
	orr     r3, r2
	add     r2, sp, #0x4
	strb    r3, [r2, #0x1]
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x7e
	ldrh    r3, [r3, r2]
	add     r2, sp, #0x4
	strh    r3, [r2, #0x2]
	ldr     r2, [r6, #0x30]
	add     r3, r2, r4
	mov     r2, r12
	sub     r2, #0x16
	ldr     r2, [r3, r2]
	str     r2, [sp, #0x8]
	bl      Function_223e1f8
	mov     r2, r0
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_22599d0
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x30]
	add     r2, sp, #0x4
	add     r1, r0, r7
	ldr     r0, [pc, #0xa0] @ 0x2264ce0, (=#0x219c)
	ldrb    r0, [r1, r0]
	mov     r1, #0xf8
	str     r0, [sp, #0x10]
	ldrb    r0, [r2, #0x1]
	bic     r0, r1
	ldr     r1, [r6, #0x30]
	add     r3, r1, r4
	ldr     r1, [pc, #0x94] @ 0x2264ce4, (=#0x2d66)
	ldrb    r3, [r3, r1]
	add     r1, #0x59
	lsl     r3, r3, #27
	lsr     r3, r3, #27
	lsl     r3, r3, #27
	lsr     r3, r3, #24
	orr     r0, r3
	strb    r0, [r2, #0x1]
	ldr     r0, [r6, #0x30]
	add     r0, r0, r4
	ldrb    r0, [r0, r1]
	mov     r1, r7
	str     r0, [sp, #0x14]
	mov     r0, r6
	bl      Function_223e258
	ldr     r1, [r6, #0x30]
	ldr     r2, [sp, #0x10]
	add     r1, r1, r0
	ldr     r0, [pc, #0x68] @ 0x2264ce0, (=#0x219c)
	ldrb    r0, [r1, r0]
	mov     r1, r7
	str     r0, [sp, #0x4c]
	mov     r0, r6
	bl      Function_223ef2c
	mov     r4, #0x0
	add     r5, sp, #0x4
.thumb
branch_2264c86: @ 2264c86 :thumb
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, r4, #0x6
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x18]
	mov     r2, r4
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, #0x1f
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x20]
	mov     r2, r4
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	add     r2, #0x27
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x28]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_2264c86
	ldr     r0, [r6, #0x30]
	mov     r1, r7
	mov     r2, #0x2d
	add     r3, sp, #0x34
	bl      Function_2252060
	mov     r0, #0x74
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, r7
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x2264cdc

.word 0x2dbe @ 0x2264cdc
.word 0x219c @ 0x2264ce0
.word 0x2d66 @ 0x2264ce4
.thumb
Function_2264ce8: @ 2264ce8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	mov     r7, r1
	mov     r4, r0
	mov     r1, #0x4
	add     r6, sp, #0x10
	strb    r1, [r6, #0x0]
	mov     r0, #0xc0
	mov     r5, r7
	mul     r5, r0
	ldr     r0, [r4, #0x30]
	str     r2, [sp, #0x4]
	add     r2, r0, r5
	ldr     r0, [pc, #0x1d8] @ 0x2264edc, (=#0x2db0)
	str     r3, [sp, #0x8]
	ldr     r3, [r2, r0]
	lsl     r1, r1, #19
	tst     r1, r3
	ldrb    r1, [r6, #0x1]
	beq     branch_2264d32
	mov     r3, #0x3
	bic     r1, r3
	mov     r3, r0
	add     r3, #0x4a
	ldrh    r2, [r2, r3]
	add     r0, #0x34
	lsl     r2, r2, #24
	lsr     r3, r2, #24
	mov     r2, #0x3
	and     r2, r3
	orr     r1, r2
	strb    r1, [r6, #0x1]
	ldr     r1, [r4, #0x30]
	add     r1, r1, r5
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x14]
	b       branch_2264d52
@ 0x2264d32

.thumb
branch_2264d32: @ 2264d32 :thumb
	mov     r3, #0x3
	bic     r1, r3
	mov     r3, r0
	add     r3, #0xe
	ldrb    r2, [r2, r3]
	sub     r0, #0x8
	lsl     r2, r2, #28
	lsr     r3, r2, #28
	mov     r2, #0x3
	and     r2, r3
	orr     r1, r2
	strb    r1, [r6, #0x1]
	ldr     r1, [r4, #0x30]
	add     r1, r1, r5
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x14]
.thumb
branch_2264d52: @ 2264d52 :thumb
	mov     r0, #0xc0
	mov     r6, r7
	add     r3, sp, #0x10
	mul     r6, r0
	ldrb    r0, [r3, #0x1]
	mov     r1, #0x4
	bic     r0, r1
	ldr     r1, [r4, #0x30]
	add     r2, r1, r6
	ldr     r1, [pc, #0x178] @ 0x2264ee0, (=#0x2d66)
	ldrb    r2, [r2, r1]
	sub     r1, #0x26
	lsl     r2, r2, #26
	lsr     r2, r2, #31
	lsl     r2, r2, #31
	lsr     r2, r2, #29
	orr     r0, r2
	strb    r0, [r3, #0x1]
	ldr     r0, [r4, #0x30]
	add     r0, r0, r6
	ldrh    r0, [r0, r1]
	mov     r1, r7
	strh    r0, [r3, #0x2]
	mov     r0, r4
	bl      Function_223e1f8
	mov     r2, r0
	ldr     r0, [r4, #0x30]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_22599d0
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x30]
	mov     r2, #0xf8
	add     r1, r0, r7
	ldr     r0, [pc, #0x148] @ 0x2264ee4, (=#0x219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x1]
	bic     r1, r2
	ldr     r2, [r4, #0x30]
	add     r3, r2, r6
	ldr     r2, [pc, #0x134] @ 0x2264ee0, (=#0x2d66)
	ldrb    r3, [r3, r2]
	lsl     r3, r3, #27
	lsr     r3, r3, #27
	lsl     r3, r3, #27
	lsr     r3, r3, #24
	orr     r1, r3
	strb    r1, [r0, #0x1]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2264dc4
	str     r0, [sp, #0x20]
	b       branch_2264dce
@ 0x2264dc4

.thumb
branch_2264dc4: @ 2264dc4 :thumb
	ldr     r0, [r4, #0x30]
	add     r2, #0x59
	add     r0, r0, r5
	ldrb    r0, [r0, r2]
	str     r0, [sp, #0x20]
.thumb
branch_2264dce: @ 2264dce :thumb
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x30]
	add     r1, r0, r5
	ldr     r0, [pc, #0x104] @ 0x2264edc, (=#0x2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r1
	beq     branch_2264de6
	mov     r0, #0x1
	b       branch_2264de8
@ 0x2264de6

.thumb
branch_2264de6: @ 2264de6 :thumb
	mov     r0, #0x0
.thumb
branch_2264de8: @ 2264de8 :thumb
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x5c]
	mov     r0, r4
	mov     r1, r7
	bl      Function_223ef2c
	mov     r6, #0x0
	add     r5, sp, #0x10
.thumb
branch_2264df8: @ 2264df8 :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, r7
	add     r2, r6, #0x6
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x18]
	mov     r2, r6
	ldr     r0, [r4, #0x30]
	mov     r1, r7
	add     r2, #0x1f
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x20]
	mov     r2, r6
	ldr     r0, [r4, #0x30]
	mov     r1, r7
	add     r2, #0x27
	mov     r3, #0x0
	bl      Function_2252060
	strh    r0, [r5, #0x28]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x4
	blt     branch_2264df8
	ldr     r0, [r4, #0x30]
	mov     r1, r7
	mov     r2, #0x2d
	add     r3, sp, #0x40
	bl      Function_2252060
	add     r3, sp, #0x10
	mov     r2, #0x0
	mov     r12, r2
	str     r3, [sp, #0xc]
	mov     r5, r3
.thumb
branch_2264e44: @ 2264e44 :thumb
	ldr     r0, [r4, #0x30]
	add     r1, r0, r2
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r1, [r1, r0]
	ldr     r0, [sp, #0xc]
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	add     r1, r0, r2
	ldr     r0, [pc, #0x84] @ 0x2264ee0, (=#0x2d66)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #26
	lsr     r1, r0, #31
	mov     r0, r3
	add     r0, #0x5c
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	add     r1, r0, r2
	ldr     r0, [pc, #0x74] @ 0x2264ee0, (=#0x2d66)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r1, r0, #27
	mov     r0, r3
	add     r0, #0x60
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	add     r6, r0, r2
	ldr     r0, [pc, #0x5c] @ 0x2264edc, (=#0x2db0)
	ldr     r1, [r6, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	beq     branch_2264e9a
	ldr     r0, [pc, #0x5c] @ 0x2264ee8, (=#0x2dfa)
	ldrh    r1, [r6, r0]
	mov     r0, r3
	add     r0, #0x58
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	add     r1, r0, r2
	ldr     r0, [pc, #0x54] @ 0x2264eec, (=#0x2de4)
	b       branch_2264eae
@ 0x2264e9a

.thumb
branch_2264e9a: @ 2264e9a :thumb
	ldr     r0, [pc, #0x54] @ 0x2264ef0, (=#0x2dbe)
	ldrb    r0, [r6, r0]
	lsl     r0, r0, #28
	lsr     r1, r0, #28
	mov     r0, r3
	add     r0, #0x58
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	add     r1, r0, r2
	ldr     r0, [pc, #0x44] @ 0x2264ef4, (=#0x2da8)
.thumb
branch_2264eae: @ 2264eae :thumb
	ldr     r0, [r1, r0]
	add     r2, #0xc0
	str     r0, [r5, #0x64]
	ldr     r0, [sp, #0xc]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	mov     r12, r0
	cmp     r0, #0x4
	blt     branch_2264e44
	mov     r0, #0x74
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r7
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x2264edc

.word 0x2db0 @ 0x2264edc
.word 0x2d66 @ 0x2264ee0
.word 0x219c @ 0x2264ee4
.word 0x2dfa @ 0x2264ee8
.word 0x2de4 @ 0x2264eec
.word 0x2dbe @ 0x2264ef0
.word 0x2da8 @ 0x2264ef4
.thumb
Function_2264ef8: @ 2264ef8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r4, r1
	lsl     r1, r2, #2
	str     r0, [sp, #0x4]
	add     r0, r0, r1
	ldr     r1, [r0, #0x34]
	ldr     r0, [pc, #0x12c] @ 0x2265034, (=#0x195)
	str     r2, [sp, #0x8]
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2264f16
	mov     r2, #0x2
	b       branch_2264f18
@ 0x2264f16

.thumb
branch_2264f16: @ 2264f16 :thumb
	mov     r2, #0x0
.thumb
branch_2264f18: @ 2264f18 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0xc0
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	mul     r5, r1
	ldr     r0, [r0, #0x30]
	ldr     r3, [pc, #0x110] @ 0x2265038, (=#0x2d66)
	add     r0, r0, r5
	ldrb    r0, [r0, r3]
	mov     r1, #0x5
	lsl     r0, r0, #27
	lsr     r7, r0, #27
	add     r0, sp, #0xc
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x30]
	add     r1, r0, r5
	mov     r0, r3
	add     r0, #0x4a
	ldr     r6, [r1, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r6
	beq     branch_2264f6c
	mov     r0, r3
	add     r0, #0x7e
	ldr     r0, [r1, r0]
	lsl     r2, r2, #24
	str     r0, [sp, #0x0]
	mov     r0, r3
	sub     r0, #0x26
	add     r3, #0x94
	ldrh    r0, [r1, r0]
	ldrh    r1, [r1, r3]
	lsl     r3, r7, #24
	lsr     r2, r2, #24
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsr     r3, r3, #24
	bl      Function_2076648
	b       branch_2264f8e
@ 0x2264f6c

.thumb
branch_2264f6c: @ 2264f6c :thumb
	mov     r0, r3
	add     r0, #0x42
	ldr     r0, [r1, r0]
	lsl     r2, r2, #24
	str     r0, [sp, #0x0]
	mov     r0, r3
	sub     r0, #0x26
	add     r3, #0x58
	ldrh    r0, [r1, r0]
	ldrb    r1, [r1, r3]
	lsl     r3, r7, #24
	lsr     r2, r2, #24
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	lsr     r3, r3, #24
	bl      Function_2076648
.thumb
branch_2264f8e: @ 2264f8e :thumb
	add     r1, sp, #0xc
	strb    r0, [r1, #0x1]
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0xa4] @ 0x226503c, (=#0x2dbf)
	ldr     r0, [r0, #0x30]
	add     r0, r0, r5
	ldrb    r2, [r0, r1]
	add     r0, sp, #0xc
	sub     r1, #0xf
	strh    r2, [r0, #0x2]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x30]
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r1
	beq     branch_2264fb6
	mov     r0, #0x1
	b       branch_2264fb8
@ 0x2264fb6

.thumb
branch_2264fb6: @ 2264fb6 :thumb
	mov     r0, #0x0
.thumb
branch_2264fb8: @ 2264fb8 :thumb
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	mov     r12, r0
	add     r7, sp, #0xc
	ldr     r0, [pc, #0x74] @ 0x2265038, (=#0x2d66)
	mov     r3, r7
	add     r2, r4, r0
	add     r0, #0x58
	mov     r5, r7
	add     r6, r4, r0
.thumb
branch_2264fcc: @ 2264fcc :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #6
	ldrh    r0, [r4, r0]
	strh    r0, [r7, #0x8]
	ldrb    r0, [r2, #0x0]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	strb    r0, [r3, #0x14]
	ldrb    r0, [r2, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #27
	strb    r0, [r3, #0x18]
	ldr     r0, [pc, #0x58] @ 0x2265040, (=#0x2db0)
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	beq     branch_2264ffa
	ldr     r0, [pc, #0x50] @ 0x2265044, (=#0x2dfa)
	ldrh    r0, [r4, r0]
	strb    r0, [r3, #0x10]
	ldr     r0, [pc, #0x50] @ 0x2265048, (=#0x2de4)
	b       branch_2265004
@ 0x2264ffa

.thumb
branch_2264ffa: @ 2264ffa :thumb
	ldrb    r0, [r6, #0x0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	strb    r0, [r3, #0x10]
	ldr     r0, [pc, #0x48] @ 0x226504c, (=#0x2da8)
.thumb
branch_2265004: @ 2265004 :thumb
	ldr     r0, [r4, r0]
	add     r4, #0xc0
	str     r0, [r5, #0x1c]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r2, #0xc0
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0xc0
	mov     r12, r0
	cmp     r0, #0x4
	blt     branch_2264fcc
	mov     r0, #0x2c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x1
	add     r3, sp, #0xc
	bl      Function_2264a04
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2265032


.align 2


.word 0x195 @ 0x2265034
.word 0x2d66 @ 0x2265038
.word 0x2dbf @ 0x226503c
.word 0x2db0 @ 0x2265040
.word 0x2dfa @ 0x2265044
.word 0x2de4 @ 0x2265048
.word 0x2da8 @ 0x226504c

.incbin "./baserom/overlay/overlay_0016.bin", 0x29f10, 0x2265108 - 0x2265050


.thumb
Function_2265108: @ 2265108 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2265122


.align 2, 0


.thumb
Function_2265124: @ 2265124 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x8
	add     r3, sp, #0x4
	strb    r1, [r3, #0x0]
	mov     r1, #0x34
	mul     r1, r2
	add     r1, r0, r1
	add     r1, #0xad
	ldrb    r1, [r1, #0x0]
	strh    r1, [r3, #0x2]
	add     r1, r0, r2
	add     r1, #0xa8
	ldrb    r1, [r1, #0x0]
	strb    r1, [r3, #0x1]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2265154

.thumb
Function_2265154: @ 2265154 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, #0x9
	add     r3, sp, #0x4
	strb    r6, [r3, #0x0]
	mov     r5, r0
	strb    r2, [r3, #0x1]
	mov     r4, r1
	bl      Function_223e258
	ldr     r1, [r5, #0x30]
	mov     r2, r4
	add     r1, r1, r0
	ldr     r0, [pc, #0x18] @ 0x2265188, (=#0x219c)
	add     r3, sp, #0x4
	ldrb    r1, [r1, r0]
	add     r0, sp, #0x4
	strh    r1, [r0, #0x2]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2265188

.word 0x219c @ 0x2265188
.thumb
Function_226518c: @ 226518c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22651a6


.align 2, 0


.thumb
Function_22651a8: @ 22651a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r3, r1
	mov     r1, #0xb
	add     r4, sp, #0x4
	strb    r1, [r4, #0x0]
	mov     r1, #0x34
	mul     r1, r3
	add     r1, r0, r1
	add     r1, #0xad
	ldrb    r1, [r1, #0x0]
	strh    r1, [r4, #0x2]
	add     r1, r0, r3
	add     r1, #0xa8
	ldrb    r1, [r1, #0x0]
	strb    r1, [r4, #0x1]
	str     r2, [sp, #0x8]
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	mov     r2, r3
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22651dc

.thumb
Function_22651dc: @ 22651dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r1
	ldr     r1, [pc, #0x11c] @ 0x2265300, (=#0x219c)
	mov     r4, r2
	add     r7, r5, r1
	ldrb    r2, [r7, r4]
	mov     r1, r4
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      Function_223dfac
	mov     r6, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	add     r3, sp, #0x14
	strb    r0, [r3, #0x0]
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r2, [pc, #0xe8] @ 0x2265304, (=#0x2d74)
	add     r0, r5, r6
	ldrb    r1, [r0, r2]
	strb    r1, [r3, #0x1]
	mov     r1, r2
	add     r1, #0x18
	ldr     r1, [r0, r1]
	add     r2, #0x1c
	strh    r1, [r3, #0x2]
	ldr     r0, [r0, r2]
	mov     r1, r4
	strh    r0, [r3, #0x4]
	ldrb    r0, [r7, r4]
	strb    r0, [r3, #0x6]
	mov     r0, r5
	bl      Function_2253f7c
	add     r1, sp, #0x14
	ldrb    r2, [r1, #0x7]
	mov     r3, #0x1f
	lsl     r0, r0, #24
	bic     r2, r3
	lsr     r3, r0, #24
	mov     r0, #0x1f
	and     r0, r3
	orr     r0, r2
	strb    r0, [r1, #0x7]
	mov     r0, #0xb5
	lsl     r0, r0, #6
	add     r7, r5, r0
	ldrh    r0, [r7, r6]
	cmp     r0, #0x1d
	beq     branch_226525e
	cmp     r0, #0x20
	bne     branch_2265278
.thumb
branch_226525e: @ 226525e :thumb
	ldr     r0, [pc, #0xa8] @ 0x2265308, (=#0x2d54)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	lsr     r0, r0, #31
	bne     branch_2265278
	add     r0, sp, #0x14
	ldrb    r1, [r0, #0x7]
	mov     r2, #0x60
	bic     r1, r2
	mov     r2, #0x40
	orr     r1, r2
	strb    r1, [r0, #0x7]
	b       branch_2265292
@ 0x2265278

.thumb
branch_2265278: @ 2265278 :thumb
	add     r3, sp, #0x14
	ldrb    r2, [r3, #0x7]
	mov     r0, #0x60
	add     r1, r5, r6
	bic     r2, r0
	ldr     r0, [pc, #0x88] @ 0x226530c, (=#0x2dbe)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	lsl     r0, r0, #30
	lsr     r0, r0, #25
	orr     r0, r2
	strb    r0, [r3, #0x7]
.thumb
branch_2265292: @ 2265292 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	bl      Function_2075ad0
	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	ldr     r1, [pc, #0x6c] @ 0x2265310, (=#0x2da4)
	ldr     r1, [r2, r1]
	sub     r0, r1, r0
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_2075ad0
	mov     r5, r0
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	bl      Function_2075ad0
	sub     r0, r5, r0
	str     r0, [sp, #0x20]
	ldrh    r1, [r7, r6]
	ldr     r0, [sp, #0x4]
	bl      Function_223f9e0
	add     r3, sp, #0x14
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #31
	ldrb    r1, [r3, #0x7]
	mov     r2, #0x80
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r3, #0x7]
	ldr     r0, [sp, #0x4]
	bl      Function_223ed8c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x14
	strb    r0, [r1, #0x14]
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x14
	bl      Function_2264a04
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x22652fe


.align 2


.word 0x219c @ 0x2265300
.word 0x2d74 @ 0x2265304
.word 0x2d54 @ 0x2265308
.word 0x2dbe @ 0x226530c
.word 0x2da4 @ 0x2265310
.thumb
Function_2265314: @ 2265314 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0xd
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x226532e


.align 2, 0


.thumb
Function_2265330: @ 2265330 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	add     r1, sp, #0x28
	mov     r2, #0x2c
	mov     r6, r3
	blx     Function_20c4bb8
	ldr     r0, [sp, #0x4]
	bl      Function_223df10
	ldr     r1, [sp, #0xc]
	bl      Function_2252040
	mov     r5, #0x0
	ldr     r0, [sp, #0x4]
	mov     r4, r5
	bl      Function_223df1c
	cmp     r0, #0x0
	ble     branch_2265380
.thumb
branch_2265360: @ 2265360 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      Function_2259a28
	cmp     r0, #0x0
	bne     branch_2265374
	mov     r0, r4
	bl      Function_20787cc
	orr     r5, r0
.thumb
branch_2265374: @ 2265374 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	blt     branch_2265360
.thumb
branch_2265380: @ 2265380 :thumb
	mov     r1, #0xe
	add     r0, sp, #0x28
	strb    r1, [r0, #0x0]
	strb    r6, [r0, #0x1]
	ldr     r1, [pc, #0x2f4] @ 0x2265680, (=#0x3108)
	ldr     r0, [sp, #0x8]
	ldrb    r0, [r0, r1]
	mov     r1, r0
	orr     r1, r5
	add     r0, sp, #0x48
	strb    r1, [r0, #0x9]
	ldr     r0, [sp, #0x4]
	bl      Function_223df0c
	mov     r1, #0x2
	str     r0, [sp, #0x20]
	tst     r0, r1
	beq     branch_22653b6
	ldr     r0, [sp, #0x20]
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_22653b6
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	mov     r4, r0
	and     r4, r1
	b       branch_22653b8
@ 0x22653b6

.thumb
branch_22653b6: @ 22653b6 :thumb
	ldr     r4, [sp, #0xc]
.thumb
branch_22653b8: @ 22653b8 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_223df20
	str     r0, [sp, #0x24]
	mov     r7, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_226544e
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r5, sp, #0x28
	add     r6, r0, r1
	mov     r1, #0xa9
	ldr     r0, [sp, #0x20]
	lsl     r1, r1, #2
	and     r0, r1
	str     r0, [sp, #0x1c]
.thumb
branch_22653e2: @ 22653e2 :thumb
	ldr     r1, [pc, #0x2a0] @ 0x2265684, (=#0x312c)
	ldr     r0, [sp, #0x24]
	ldrb    r1, [r6, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265440
	ldr     r1, [pc, #0x28c] @ 0x2265688, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2265440
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265428
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265422
	mov     r0, #0x3
	strb    r0, [r5, #0x8]
	b       branch_226542c
@ 0x2265422

.thumb
branch_2265422: @ 2265422 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_226542c
@ 0x2265428

.thumb
branch_2265428: @ 2265428 :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0x8]
.thumb
branch_226542c: @ 226542c :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2265436
	mov     r0, #0x0
	b       branch_226543c
@ 0x2265436

.thumb
branch_2265436: @ 2265436 :thumb
	mov     r0, r4
	bl      Function_2075a10
.thumb
branch_226543c: @ 226543c :thumb
	strb    r0, [r5, #0x2]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2265440: @ 2265440 :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_22653e2
.thumb
branch_226544e: @ 226544e :thumb
	ldr     r0, [sp, #0x20]
	mov     r1, #0xc
	and     r0, r1
	cmp     r0, #0xc
	beq     branch_226546c
	ldr     r0, [sp, #0x20]
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_226546c
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4b
	beq     branch_226546c
	cmp     r0, #0xcb
	beq     branch_226546c
	b       branch_22655a4
@ 0x226546c

.thumb
branch_226546c: @ 226546c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_2265482
	ldr     r0, [sp, #0x4]
	mov     r1, #0x2
	bl      Function_223e1c4
	b       branch_226548a
@ 0x2265482

.thumb
branch_2265482: @ 2265482 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x3
	bl      Function_223e1c4
.thumb
branch_226548a: @ 226548a :thumb
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_223df20
	str     r0, [sp, #0x10]
	mov     r7, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2265506
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r5, sp, #0x28
	add     r4, r0, r1
.thumb
branch_22654ac: @ 22654ac :thumb
	ldr     r1, [pc, #0x1d4] @ 0x2265684, (=#0x312c)
	ldr     r0, [sp, #0x10]
	ldrb    r1, [r4, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22654f8
	ldr     r1, [pc, #0x1c0] @ 0x2265688, (=#0x1ee)
	cmp     r0, r1
	beq     branch_22654f8
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22654f2
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_22654ec
	mov     r0, #0x3
	strb    r0, [r5, #0xe]
	b       branch_22654f6
@ 0x22654ec

.thumb
branch_22654ec: @ 22654ec :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0xe]
	b       branch_22654f6
@ 0x22654f2

.thumb
branch_22654f2: @ 22654f2 :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0xe]
.thumb
branch_22654f6: @ 22654f6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22654f8: @ 22654f8 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_22654ac
.thumb
branch_2265506: @ 2265506 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	bl      Function_223e208
	cmp     r0, #0x0
	beq     branch_226551c
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	bl      Function_223e1c4
	b       branch_2265524
@ 0x226551c

.thumb
branch_226551c: @ 226551c :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x5
	bl      Function_223e1c4
.thumb
branch_2265524: @ 2265524 :thumb
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_223df20
	str     r0, [sp, #0x14]
	mov     r7, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_226562a
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r5, sp, #0x28
	add     r4, r0, r1
	add     r5, #0x3
.thumb
branch_2265548: @ 2265548 :thumb
	ldr     r1, [pc, #0x138] @ 0x2265684, (=#0x312c)
	ldr     r0, [sp, #0x14]
	ldrb    r1, [r4, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265594
	ldr     r1, [pc, #0x124] @ 0x2265688, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2265594
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_226558e
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265588
	mov     r0, #0x3
	strb    r0, [r5, #0xe]
	b       branch_2265592
@ 0x2265588

.thumb
branch_2265588: @ 2265588 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0xe]
	b       branch_2265592
@ 0x226558e

.thumb
branch_226558e: @ 226558e :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0xe]
.thumb
branch_2265592: @ 2265592 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2265594: @ 2265594 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_2265548
	b       branch_226562a
@ 0x22655a4

.thumb
branch_22655a4: @ 22655a4 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	mov     r2, #0x2
	bl      Function_223e2a4
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_223df20
	str     r0, [sp, #0x18]
	mov     r7, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_226562a
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r5, sp, #0x28
	add     r4, r0, r1
.thumb
branch_22655d0: @ 22655d0 :thumb
	ldr     r1, [pc, #0xb0] @ 0x2265684, (=#0x312c)
	ldr     r0, [sp, #0x18]
	ldrb    r1, [r4, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_226561c
	ldr     r1, [pc, #0x9c] @ 0x2265688, (=#0x1ee)
	cmp     r0, r1
	beq     branch_226561c
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265616
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2265610
	mov     r0, #0x3
	strb    r0, [r5, #0xe]
	b       branch_226561a
@ 0x2265610

.thumb
branch_2265610: @ 2265610 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0xe]
	b       branch_226561a
@ 0x2265616

.thumb
branch_2265616: @ 2265616 :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0xe]
.thumb
branch_226561a: @ 226561a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_226561c: @ 226561c :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_22655d0
.thumb
branch_226562a: @ 226562a :thumb
	mov     r5, #0x0
	add     r6, sp, #0x28
	mov     r4, r6
	mov     r7, r5
.thumb
branch_2265632: @ 2265632 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	add     r2, r5, #0x6
	mov     r3, r7
	bl      Function_2252060
	strh    r0, [r6, #0x14]
	mov     r2, r5
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	add     r2, #0x1f
	mov     r3, #0x0
	bl      Function_2252060
	strb    r0, [r4, #0x1c]
	mov     r2, r5
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	add     r2, #0x27
	mov     r3, #0x0
	bl      Function_2252060
	mov     r1, r4
	add     r1, #0x20
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r0, [r1, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r5, #0x4
	blt     branch_2265632
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r3, sp, #0x28
	add     r0, r0, r1
	ldr     r1, [pc, #0x10] @ 0x226568c, (=#0x2d8c)
	b       branch_2265690
@ 0x226567e


.align 2


.word 0x3108 @ 0x2265680
.word 0x312c @ 0x2265684
.word 0x1ee @ 0x2265688
.word 0x2d8c @ 0x226568c
.thumb
branch_2265690: @ 2265690 :thumb
	ldr     r2, [r0, r1]
	strh    r2, [r3, #0x24]
	add     r2, r1, #0x4
	ldr     r2, [r0, r2]
	strh    r2, [r3, #0x26]
	mov     r2, #0x24
	ldsh    r2, [r3, r2]
	cmp     r2, #0x0
	beq     branch_22656b8
	add     r1, #0x20
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	add     r0, sp, #0x48
	beq     branch_22656b2
	mov     r1, #0x3
	strb    r1, [r0, #0x8]
	b       branch_22656be
@ 0x22656b2

.thumb
branch_22656b2: @ 22656b2 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x8]
	b       branch_22656be
@ 0x22656b8

.thumb
branch_22656b8: @ 22656b8 :thumb
	mov     r1, #0x2
	add     r0, sp, #0x48
	strb    r1, [r0, #0x8]
.thumb
branch_22656be: @ 22656be :thumb
	mov     r0, #0x2c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	mov     r1, #0x1
	add     r3, sp, #0x28
	bl      Function_2264a04
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x22656d2


.incbin "./baserom/overlay/overlay_0016.bin", 0x2a592, 0x2265a8c - 0x22656d2


.thumb
Function_2265a8c: @ 2265a8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r1
	mov     r1, r2
	str     r2, [sp, #0xc]
	mov     r4, r3
	bl      Function_2252040
	mov     r0, #0x12
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0xc]
	add     r7, sp, #0x10
	strb    r0, [r1, #0x1]
	ldr     r0, [sp, #0x50]
	strb    r4, [r1, #0x2]
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x54]
	ldr     r5, [sp, #0x8]
	strb    r0, [r1, #0x3]
	ldr     r1, [pc, #0x48] @ 0x2265b04, (=#0x3108)
	ldr     r0, [sp, #0x8]
	mov     r3, #0x0
	ldrb    r1, [r0, r1]
	add     r0, sp, #0x30
	mov     r6, r7
	strb    r1, [r0, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2265b08, (=#0x312c)
.thumb
branch_2265ac8: @ 2265ac8 :thumb
	ldr     r1, [sp, #0x8]
	mov     r4, #0x0
	add     r2, r1, r3
	ldr     r1, [pc, #0x3c] @ 0x2265b0c, (=#0x219c)
	ldrb    r1, [r2, r1]
	strb    r1, [r7, #0x4]
.thumb
branch_2265ad4: @ 2265ad4 :thumb
	add     r1, r5, r4
	ldrb    r2, [r1, r0]
	add     r1, r6, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r2, [r1, #0x8]
	cmp     r4, #0x6
	blt     branch_2265ad4
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1dad @ add r5, r5, #0x6
	.hword  0x1db6 @ add r6, r6, #0x6
	cmp     r3, #0x4
	blt     branch_2265ac8
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	mov     r1, #0x1
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2265b02


.align 2


.word 0x3108 @ 0x2265b04
.word 0x312c @ 0x2265b08
.word 0x219c @ 0x2265b0c

.incbin "./baserom/overlay/overlay_0016.bin", 0x2a9d0, 0x2265b2c - 0x2265b10


.thumb
Function_2265b2c: @ 2265b2c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r2
	mov     r6, r0
	mov     r0, r1
	mov     r1, r5
	mov     r4, r3
	bl      Function_2252040
	mov     r1, #0x13
	add     r0, sp, #0x4
	strb    r1, [r0, #0x0]
	ldr     r1, [sp, #0x20]
	strh    r4, [r0, #0x2]
	strb    r1, [r0, #0x1]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	mov     r2, r5
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2265b66


.align 2, 0


.thumb
Function_2265b68: @ 2265b68 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x14
	add     r3, sp, #0x4
	strb    r1, [r3, #0x0]
	ldr     r1, [r2, #0x64]
	add     r4, r2, r1
	ldr     r1, [pc, #0x1c] @ 0x2265b98, (=#0x219c)
	ldrb    r1, [r4, r1]
	strb    r1, [r3, #0x1]
	ldr     r1, [pc, #0x1c] @ 0x2265b9c, (=#0x3044)
	ldr     r1, [r2, r1]
	strh    r1, [r3, #0x2]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	ldr     r2, [r2, #0x64]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2265b96


.align 2


.word 0x219c @ 0x2265b98
.word 0x3044 @ 0x2265b9c
.thumb
Function_2265ba0: @ 2265ba0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r3, r2
	mov     r1, #0x15
	strb    r1, [r3, #0x0]
	mov     r1, #0x24
	str     r1, [sp, #0x0]
	ldr     r2, [r4, #0x64]
	mov     r1, #0x1
	bl      Function_2264a04
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2265bbc

.thumb
Function_2265bbc: @ 2265bbc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x68
	mov     r3, #0x0
	mov     r4, r1
	str     r3, [sp, #0x0]
	ldr     r6, [r4, #0x64]
	mov     r5, r0
	str     r6, [sp, #0x4]
	ldr     r6, [r4, #0x6c]
	str     r6, [sp, #0x8]
	str     r2, [sp, #0xc]
	add     r2, sp, #0x10
	bl      Function_2266b78
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, #0x1
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x68
	pop     {r4-r6,pc}
@ 0x2265bec

.thumb
Function_2265bec: @ 2265bec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x68
	mov     r4, r3
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r6, [sp, #0x78]
	str     r4, [sp, #0x4]
	str     r6, [sp, #0x8]
	str     r2, [sp, #0xc]
	add     r2, sp, #0x10
	mov     r5, r0
	bl      Function_2266b78
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x68
	pop     {r4-r6,pc}
@ 0x2265c1a


.align 2, 0


.thumb
Function_2265c1c: @ 2265c1c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x17
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2265c36


.align 2, 0


.thumb
Function_2265c38: @ 2265c38 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	str     r2, [sp, #0x8]
	mov     r1, r2
	add     r3, r5, r2
	ldr     r2, [pc, #0xb4] @ 0x2265cfc, (=#0x219c)
	str     r0, [sp, #0x4]
	ldrb    r2, [r3, r2]
	bl      Function_223dfac
	mov     r4, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	mov     r6, r0
	mov     r0, #0x18
	add     r3, sp, #0xc
	strb    r0, [r3, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xc0
	mov     r4, r0
	mul     r4, r1
	ldr     r0, [pc, #0x88] @ 0x2265d00, (=#0x2d74)
	add     r1, r5, r4
	ldrb    r2, [r1, r0]
	strb    r2, [r3, #0x1]
	mov     r2, r0
	add     r2, #0x18
	ldr     r2, [r1, r2]
	strh    r2, [r3, #0x2]
	mov     r2, r0
	add     r2, #0x1c
	ldr     r2, [r1, r2]
	sub     r0, #0x34
	strh    r2, [r3, #0x4]
	ldr     r2, [pc, #0x74] @ 0x2265d04, (=#0x215c)
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x14]
	ldrh    r0, [r1, r0]
	cmp     r0, #0x1d
	beq     branch_2265c9e
	cmp     r0, #0x20
	bne     branch_2265cb0
.thumb
branch_2265c9e: @ 2265c9e :thumb
	ldr     r0, [pc, #0x68] @ 0x2265d08, (=#0x2d54)
	add     r1, r5, r4
	ldr     r0, [r1, r0]
	lsr     r0, r0, #31
	bne     branch_2265cb0
	mov     r1, #0x2
	add     r0, sp, #0xc
	strb    r1, [r0, #0x7]
	b       branch_2265cbe
@ 0x2265cb0

.thumb
branch_2265cb0: @ 2265cb0 :thumb
	ldr     r0, [pc, #0x58] @ 0x2265d0c, (=#0x2dbe)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r1, r0, #28
	add     r0, sp, #0xc
	strb    r1, [r0, #0x7]
.thumb
branch_2265cbe: @ 2265cbe :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_2075ad0
	ldr     r1, [pc, #0x48] @ 0x2265d10, (=#0x2da4)
	add     r2, r5, r4
	ldr     r1, [r2, r1]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, r7
	add     r1, r6, #0x1
	bl      Function_2075ad0
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2075ad0
	sub     r0, r4, r0
	str     r0, [sp, #0x1c]
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x1
	add     r3, sp, #0xc
	bl      Function_2264a04
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2265cfa


.align 2


.word 0x219c @ 0x2265cfc
.word 0x2d74 @ 0x2265d00
.word 0x215c @ 0x2265d04
.word 0x2d54 @ 0x2265d08
.word 0x2dbe @ 0x2265d0c
.word 0x2da4 @ 0x2265d10

.incbin "./baserom/overlay/overlay_0016.bin", 0x2abd4, 0x2265d98 - 0x2265d14


.thumb
Function_2265d98: @ 2265d98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x4]
	mov     r0, r1
	mov     r12, r2
	mov     r5, #0xb5
	mov     r2, #0x1a
	add     r1, sp, #0xc
	strb    r2, [r1, #0x0]
	mov     r3, #0xc0
	mov     r2, r12
	mul     r3, r2
	add     r2, r0, r3
	lsl     r5, r5, #6
	ldrh    r4, [r2, r5]
	strh    r4, [r1, #0x2]
	mov     r4, r5
	add     r4, #0x26
	ldrb    r2, [r2, r4]
	add     r5, #0x70
	lsl     r2, r2, #27
	lsr     r2, r2, #27
	strb    r2, [r1, #0x8]
	add     r2, r0, r5
	mov     r1, #0x1
	ldr     r4, [r2, r3]
	lsl     r1, r1, #24
	tst     r1, r4
	beq     branch_2265dd6
	mov     r4, #0x1
	b       branch_2265dd8
@ 0x2265dd6

.thumb
branch_2265dd6: @ 2265dd6 :thumb
	mov     r4, #0x0
.thumb
branch_2265dd8: @ 2265dd8 :thumb
	add     r1, sp, #0xc
	strb    r4, [r1, #0x9]
	mov     r1, #0x2
	ldr     r4, [r2, r3]
	lsl     r1, r1, #20
	tst     r1, r4
	beq     branch_2265dea
	mov     r4, #0x1
	b       branch_2265dec
@ 0x2265dea

.thumb
branch_2265dea: @ 2265dea :thumb
	mov     r4, #0x0
.thumb
branch_2265dec: @ 2265dec :thumb
	add     r1, sp, #0xc
	strb    r4, [r1, #0xa]
	ldr     r4, [r2, r3]
	mov     r2, #0x2
	lsl     r2, r2, #20
	tst     r2, r4
	beq     branch_2265e0a
	ldr     r2, [pc, #0x98] @ 0x2265e94, (=#0x2dfa)
	add     r4, r0, r3
	ldrh    r3, [r4, r2]
	sub     r2, #0x16
	strb    r3, [r1, #0x1]
	ldr     r1, [r4, r2]
	str     r1, [sp, #0x10]
	b       branch_2265e1c
@ 0x2265e0a

.thumb
branch_2265e0a: @ 2265e0a :thumb
	ldr     r2, [pc, #0x8c] @ 0x2265e98, (=#0x2dbe)
	add     r4, r0, r3
	ldrb    r3, [r4, r2]
	sub     r2, #0x16
	lsl     r3, r3, #28
	lsr     r3, r3, #28
	strb    r3, [r1, #0x1]
	ldr     r1, [r4, r2]
	str     r1, [sp, #0x10]
.thumb
branch_2265e1c: @ 2265e1c :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x78] @ 0x2265e9c, (=#0x2d66)
	add     r7, sp, #0xc
	add     r3, r0, r1
	add     r1, #0x58
	mov     r4, r7
	mov     r5, r7
	add     r6, r0, r1
.thumb
branch_2265e2e: @ 2265e2e :thumb
	mov     r1, #0xb5
	lsl     r1, r1, #6
	ldrh    r1, [r0, r1]
	strh    r1, [r7, #0xc]
	ldrb    r1, [r3, #0x0]
	lsl     r1, r1, #26
	lsr     r1, r1, #31
	strb    r1, [r4, #0x18]
	ldrb    r1, [r3, #0x0]
	lsl     r1, r1, #27
	lsr     r1, r1, #27
	strb    r1, [r4, #0x1c]
	ldr     r1, [pc, #0x58] @ 0x2265ea0, (=#0x2db0)
	ldr     r2, [r0, r1]
	mov     r1, #0x2
	lsl     r1, r1, #20
	tst     r1, r2
	beq     branch_2265e5c
	ldr     r1, [pc, #0x40] @ 0x2265e94, (=#0x2dfa)
	ldrh    r1, [r0, r1]
	strb    r1, [r4, #0x14]
	ldr     r1, [pc, #0x48] @ 0x2265ea4, (=#0x2de4)
	b       branch_2265e66
@ 0x2265e5c

.thumb
branch_2265e5c: @ 2265e5c :thumb
	ldrb    r1, [r6, #0x0]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	strb    r1, [r4, #0x14]
	ldr     r1, [pc, #0x40] @ 0x2265ea8, (=#0x2da8)
.thumb
branch_2265e66: @ 2265e66 :thumb
	ldr     r1, [r0, r1]
	add     r0, #0xc0
	str     r1, [r5, #0x20]
	ldr     r1, [sp, #0x8]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0xc0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0xc0
	str     r1, [sp, #0x8]
	cmp     r1, #0x4
	blt     branch_2265e2e
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, r12
	add     r3, sp, #0xc
	bl      Function_2264a04
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2265e94

.word 0x2dfa @ 0x2265e94
.word 0x2dbe @ 0x2265e98
.word 0x2d66 @ 0x2265e9c
.word 0x2db0 @ 0x2265ea0
.word 0x2de4 @ 0x2265ea4
.word 0x2da8 @ 0x2265ea8
.thumb
Function_2265eac: @ 2265eac :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, #0x1b
	add     r1, sp, #0x4
	strb    r4, [r1, #0x0]
	strh    r2, [r1, #0x2]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r2, r3
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2265eca


.align 2, 0


.thumb
Function_2265ecc: @ 2265ecc :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x1c
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2265ee6


.align 2, 0


.thumb
Function_2265ee8: @ 2265ee8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r12, r1
	mov     r3, #0x1d
	add     r1, sp, #0x8
	strb    r3, [r1, #0x0]
	strb    r2, [r1, #0x1]
	ldr     r3, [r0, #0x30]
	mov     r2, #0xc0
	mov     r1, r12
	mul     r2, r1
	ldr     r1, [pc, #0xa0] @ 0x2265fa0, (=#0x2db0)
	add     r2, r3, r2
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	lsl     r1, r1, #24
	tst     r1, r2
	beq     branch_2265f10
	mov     r2, #0x1
	b       branch_2265f12
@ 0x2265f10

.thumb
branch_2265f10: @ 2265f10 :thumb
	mov     r2, #0x0
.thumb
branch_2265f12: @ 2265f12 :thumb
	add     r7, sp, #0x8
	add     r1, sp, #0x8
	mov     r3, #0x0
	strb    r2, [r1, #0x2]
	str     r3, [sp, #0x4]
	mov     r4, r7
	mov     r5, r7
.thumb
branch_2265f20: @ 2265f20 :thumb
	ldr     r1, [r0, #0x30]
	add     r2, r1, r3
	mov     r1, #0xb5
	lsl     r1, r1, #6
	ldrh    r1, [r2, r1]
	strh    r1, [r7, #0x4]
	ldr     r1, [r0, #0x30]
	add     r2, r1, r3
	ldr     r1, [pc, #0x70] @ 0x2265fa4, (=#0x2d66)
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #26
	lsr     r1, r1, #31
	strb    r1, [r4, #0x10]
	ldr     r1, [r0, #0x30]
	add     r2, r1, r3
	ldr     r1, [pc, #0x64] @ 0x2265fa4, (=#0x2d66)
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #27
	lsr     r1, r1, #27
	strb    r1, [r4, #0x14]
	ldr     r1, [r0, #0x30]
	add     r6, r1, r3
	ldr     r1, [pc, #0x50] @ 0x2265fa0, (=#0x2db0)
	ldr     r2, [r6, r1]
	mov     r1, #0x2
	lsl     r1, r1, #20
	tst     r1, r2
	beq     branch_2265f66
	ldr     r1, [pc, #0x4c] @ 0x2265fa8, (=#0x2dfa)
	ldrh    r1, [r6, r1]
	strb    r1, [r4, #0xc]
	ldr     r1, [r0, #0x30]
	add     r2, r1, r3
	ldr     r1, [pc, #0x48] @ 0x2265fac, (=#0x2de4)
	b       branch_2265f76
@ 0x2265f66

.thumb
branch_2265f66: @ 2265f66 :thumb
	ldr     r1, [pc, #0x48] @ 0x2265fb0, (=#0x2dbe)
	ldrb    r1, [r6, r1]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	strb    r1, [r4, #0xc]
	ldr     r1, [r0, #0x30]
	add     r2, r1, r3
	ldr     r1, [pc, #0x3c] @ 0x2265fb4, (=#0x2da8)
.thumb
branch_2265f76: @ 2265f76 :thumb
	ldr     r1, [r2, r1]
	add     r3, #0xc0
	str     r1, [r5, #0x18]
	ldr     r1, [sp, #0x4]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r1, [sp, #0x4]
	cmp     r1, #0x4
	blt     branch_2265f20
	mov     r1, #0x28
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r12
	add     r3, sp, #0x8
	bl      Function_2264a04
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2265f9e


.align 2


.word 0x2db0 @ 0x2265fa0
.word 0x2d66 @ 0x2265fa4
.word 0x2dfa @ 0x2265fa8
.word 0x2de4 @ 0x2265fac
.word 0x2dbe @ 0x2265fb0
.word 0x2da8 @ 0x2265fb4
.thumb
Function_2265fb8: @ 2265fb8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r3, #0x1e
	add     r1, sp, #0x4
	strb    r3, [r1, #0x0]
	strb    r2, [r1, #0x1]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2265fd8

.thumb
Function_2265fd8: @ 2265fd8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r3, #0x1f
	add     r1, sp, #0x4
	strb    r3, [r1, #0x0]
	strb    r2, [r1, #0x1]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2265ff8

.thumb
Function_2265ff8: @ 2265ff8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x68
	mov     r4, r2
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	add     r2, sp, #0x10
	mov     r3, #0x1
	mov     r5, r0
	bl      Function_2266b78
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x68
	pop     {r3-r5,pc}
@ 0x2266026


.align 2, 0


.thumb
Function_2266028: @ 2266028 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x68
	mov     r4, r2
	ldr     r2, [sp, #0x78]
	mov     r5, r0
	str     r2, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	add     r2, sp, #0x10
	mov     r3, #0x1
	bl      Function_2266b78
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x68
	pop     {r3-r5,pc}
@ 0x2266058

.thumb
Function_2266058: @ 2266058 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	mov     r2, #0x20
	add     r0, sp, #0x4
	strb    r2, [r0, #0x0]
	strb    r3, [r0, #0x1]
	ldr     r0, [pc, #0x28] @ 0x2266094, (=#0x3122)
	ldsh    r2, [r1, r0]
	ldr     r0, [pc, #0x28] @ 0x2266098, (=#0x2e4c)
	ldr     r0, [r1, r0]
	sub     r1, r2, r0
	mov     r0, #0x64
	mul     r0, r1
	mov     r1, r2
	blx     Division
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2266094

.word 0x3122 @ 0x2266094
.word 0x2e4c @ 0x2266098
.thumb
Function_226609c: @ 226609c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	mov     r1, #0x21
	add     r0, sp, #0x4
	strb    r1, [r0, #0x0]
	ldr     r2, [pc, #0x34] @ 0x22660e4, (=#0x2e4c)
	strb    r3, [r0, #0x1]
	ldr     r1, [r6, r2]
	cmp     r1, #0x0
	bne     branch_22660be
	mov     r1, #0xfa
	lsl     r1, r1, #2
	strh    r1, [r0, #0x2]
	b       branch_22660d0
@ 0x22660be

.thumb
branch_22660be: @ 22660be :thumb
	mov     r0, #0xfa
	lsl     r0, r0, #2
	mul     r0, r1
	add     r1, r2, #0x4
	ldr     r1, [r6, r1]
	blx     Function_20e2178
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
.thumb
branch_22660d0: @ 22660d0 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22660e4

.word 0x2e4c @ 0x22660e4
.thumb
Function_22660e8: @ 22660e8 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x22
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2266100

.thumb
Function_2266100: @ 2266100 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	str     r2, [sp, #0x4]
	mov     r2, #0x23
	add     r1, sp, #0x8
	mov     r6, r0
	strb    r2, [r1, #0x0]
	mov     r4, #0x0
	bl      Function_223df1c
	cmp     r0, #0x0
	ble     branch_2266132
	add     r5, sp, #0x8
.thumb
branch_226611c: @ 226611c :thumb
	ldr     r0, [pc, #0x28] @ 0x2266148, (=#0x219c)
	add     r1, r7, r4
	ldrb    r0, [r1, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r5, #0x4]
	mov     r0, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	blt     branch_226611c
.thumb
branch_2266132: @ 2266132 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x1
	add     r3, sp, #0x8
	bl      Function_2264a04
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2266146


.align 2


.word 0x219c @ 0x2266148

.incbin "./baserom/overlay/overlay_0016.bin", 0x2b00c, 0x22661cc - 0x226614c


.thumb
Function_22661cc: @ 22661cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	ldr     r1, [pc, #0x114] @ 0x22662e8, (=#0x219c)
	mov     r4, r2
	add     r7, r5, r1
	ldrb    r2, [r7, r4]
	mov     r1, r4
	str     r0, [sp, #0x4]
	bl      Function_223dfac
	mov     r6, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x8]
	mov     r0, #0x26
	add     r3, sp, #0x10
	strb    r0, [r3, #0x0]
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r2, [pc, #0xe4] @ 0x22662ec, (=#0x2d74)
	add     r0, r5, r6
	ldrb    r1, [r0, r2]
	strb    r1, [r3, #0x1]
	mov     r1, r2
	add     r1, #0x18
	ldr     r1, [r0, r1]
	add     r2, #0x1c
	strh    r1, [r3, #0x2]
	ldr     r0, [r0, r2]
	mov     r1, r4
	strh    r0, [r3, #0x4]
	ldrb    r0, [r7, r4]
	strb    r0, [r3, #0x6]
	mov     r0, r5
	bl      Function_2253f7c
	add     r1, sp, #0x10
	ldrb    r2, [r1, #0x7]
	mov     r3, #0x1f
	lsl     r0, r0, #24
	bic     r2, r3
	lsr     r3, r0, #24
	mov     r0, #0x1f
	and     r0, r3
	orr     r0, r2
	strb    r0, [r1, #0x7]
	mov     r0, #0xb5
	lsl     r0, r0, #6
	add     r7, r5, r0
	ldrh    r0, [r7, r6]
	cmp     r0, #0x1d
	beq     branch_226624c
	cmp     r0, #0x20
	bne     branch_2266266
.thumb
branch_226624c: @ 226624c :thumb
	ldr     r0, [pc, #0xa0] @ 0x22662f0, (=#0x2d54)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	lsr     r0, r0, #31
	bne     branch_2266266
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x7]
	mov     r2, #0x60
	bic     r1, r2
	mov     r2, #0x40
	orr     r1, r2
	strb    r1, [r0, #0x7]
	b       branch_2266280
@ 0x2266266

.thumb
branch_2266266: @ 2266266 :thumb
	add     r3, sp, #0x10
	ldrb    r2, [r3, #0x7]
	mov     r0, #0x60
	add     r1, r5, r6
	bic     r2, r0
	ldr     r0, [pc, #0x80] @ 0x22662f4, (=#0x2dbe)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	lsl     r0, r0, #30
	lsr     r0, r0, #25
	orr     r0, r2
	strb    r0, [r3, #0x7]
.thumb
branch_2266280: @ 2266280 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x8]
	bl      Function_2075ad0
	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	ldr     r1, [pc, #0x68] @ 0x22662f8, (=#0x2da4)
	ldr     r1, [r2, r1]
	sub     r0, r1, r0
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_2075ad0
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x8]
	bl      Function_2075ad0
	sub     r0, r5, r0
	str     r0, [sp, #0x1c]
	ldrh    r1, [r7, r6]
	ldr     r0, [sp, #0x4]
	bl      Function_223f9e0
	add     r3, sp, #0x10
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #31
	ldrb    r1, [r3, #0x7]
	mov     r2, #0x80
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r3, #0x7]
	ldr     r0, [sp, #0x4]
	bl      Function_223ed8c
	str     r0, [sp, #0x20]
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22662e6


.align 2


.word 0x219c @ 0x22662e8
.word 0x2d74 @ 0x22662ec
.word 0x2d54 @ 0x22662f0
.word 0x2dbe @ 0x22662f4
.word 0x2da4 @ 0x22662f8
.thumb
Function_22662fc: @ 22662fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r6, r1
	str     r2, [sp, #0x8]
	mov     r1, #0x27
	add     r2, sp, #0x10
	strb    r1, [r2, #0x0]
	ldrb    r1, [r2, #0x1]
	mov     r3, #0xf
	str     r0, [sp, #0x4]
	bic     r1, r3
	ldr     r3, [sp, #0x8]
	add     r4, r6, r3
	ldr     r3, [pc, #0x120] @ 0x2266438, (=#0x219c)
	ldrb    r4, [r4, r3]
	mov     r3, #0xf
	and     r3, r4
	orr     r1, r3
	strb    r1, [r2, #0x1]
	ldr     r1, [sp, #0x8]
	mov     r3, #0xc0
	mul     r3, r1
	ldrb    r4, [r2, #0x1]
	mov     r1, #0xf0
	str     r3, [sp, #0xc]
	bic     r4, r1
	mov     r1, r3
	add     r3, r6, r1
	ldr     r1, [pc, #0x104] @ 0x226643c, (=#0x2dcc)
	ldr     r5, [r3, r1]
	lsl     r5, r5, #26
	lsr     r5, r5, #28
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	lsl     r5, r5, #28
	lsr     r5, r5, #24
	orr     r4, r5
	strb    r4, [r2, #0x1]
	mov     r4, r1
	sub     r4, #0x40
	ldr     r4, [r3, r4]
	sub     r1, #0x14
	strh    r4, [r2, #0x2]
	ldrh    r1, [r3, r1]
	strh    r1, [r2, #0xc]
	ldr     r1, [sp, #0x8]
	bl      Function_223e208
	lsl     r0, r0, #3
	add     r1, r6, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r7, [pc, #0xd8] @ 0x2266440, (=#0x2d6c)
	lsl     r0, r0, #3
	lsr     r0, r0, #26
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	add     r2, r6, r0
	ldr     r0, [pc, #0xd0] @ 0x2266444, (=#0x2d66)
	ldrb    r1, [r2, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r1, #27
	lsr     r3, r1, #27
	add     r1, sp, #0x10
	strh    r3, [r1, #0x20]
	ldrb    r0, [r2, r0]
	ldr     r1, [sp, #0x8]
	mov     r2, #0xc0
	mul     r2, r1
	add     r1, r6, r2
	mov     r12, r2
	add     r2, sp, #0x10
	str     r0, [sp, #0x34]
	mov     r0, #0x0
	mov     r3, r1
	mov     r4, r2
.thumb
branch_2266396: @ 2266396 :thumb
	ldr     r5, [pc, #0xb0] @ 0x2266448, (=#0x2d4c)
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrh    r5, [r1, r5]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r5, [r2, #0xe]
	ldrb    r5, [r3, r7]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r5, [r4, #0x16]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r0, #0x4
	blt     branch_2266396
	add     r1, sp, #0x10
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22663ce
	mov     r0, r12
	add     r3, r6, r0
	ldr     r0, [pc, #0x8c] @ 0x226644c, (=#0x2dac)
	ldr     r1, [pc, #0x90] @ 0x2266450, (=#0xfffff0ff)
	ldr     r2, [r3, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	and     r1, r2
	str     r1, [sp, #0x14]
	ldr     r0, [r3, r0]
	str     r0, [sp, #0x2c]
	b       branch_22663dc
@ 0x22663ce

.thumb
branch_22663ce: @ 22663ce :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	add     r1, r6, r0
	ldr     r0, [pc, #0x7c] @ 0x2266454, (=#0x2db0)
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x2c]
.thumb
branch_22663dc: @ 22663dc :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	mov     r0, #0x1
	ldr     r2, [r6, r1]
	lsl     r0, r0, #26
	tst     r0, r2
	add     r0, sp, #0x10
	beq     branch_22663fa
	mov     r2, #0x1
	strh    r2, [r0, #0x2a]
	ldr     r2, [r6, r1]
	ldr     r0, [pc, #0x64] @ 0x2266458, (=#0xfbffffff)
	and     r0, r2
	str     r0, [r6, r1]
	b       branch_22663fe
@ 0x22663fa

.thumb
branch_22663fa: @ 22663fa :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x2a]
.thumb
branch_22663fe: @ 22663fe :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	mov     r0, #0x2
	ldr     r2, [r6, r1]
	lsl     r0, r0, #26
	tst     r0, r2
	add     r0, sp, #0x10
	beq     branch_226641e
	mov     r2, #0x1
	strh    r2, [r0, #0x28]
	strh    r2, [r0, #0x2a]
	ldr     r2, [r6, r1]
	ldr     r0, [pc, #0x44] @ 0x226645c, (=#0xf7ffffff)
	and     r0, r2
	str     r0, [r6, r1]
	b       branch_2266422
@ 0x226641e

.thumb
branch_226641e: @ 226641e :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x28]
.thumb
branch_2266422: @ 2266422 :thumb
	mov     r0, #0x2c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x1
	add     r3, sp, #0x10
	bl      Function_2264a04
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2266436


.align 2


.word 0x219c @ 0x2266438
.word 0x2dcc @ 0x226643c
.word 0x2d6c @ 0x2266440
.word 0x2d66 @ 0x2266444
.word 0x2d4c @ 0x2266448
.word 0x2dac @ 0x226644c
.word 0xfffff0ff @ 0x2266450
.word 0x2db0 @ 0x2266454
.word 0xfbffffff @ 0x2266458
.word 0xf7ffffff @ 0x226645c
.thumb
Function_2266460: @ 2266460 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x28
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x226647a


.incbin "./baserom/overlay/overlay_0016.bin", 0x2b33a, 0x2266498 - 0x226647a


.thumb
Function_2266498: @ 2266498 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, #0x2a
	add     r4, sp, #0x4
	strb    r5, [r4, #0x0]
	strh    r3, [r4, #0x2]
	mov     r3, #0xc0
	mul     r3, r2
	add     r3, r1, r3
	ldr     r1, [pc, #0x14] @ 0x22664c0, (=#0x2d67)
	ldrb    r1, [r3, r1]
	add     r3, sp, #0x4
	strb    r1, [r4, #0x1]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22664c0

.word 0x2d67 @ 0x22664c0

.incbin "./baserom/overlay/overlay_0016.bin", 0x2b384, 0x22664f8 - 0x22664c4


.thumb
Function_22664f8: @ 22664f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, #0x2c
	add     r1, sp, #0x4
	strb    r5, [r1, #0x0]
	strb    r2, [r1, #0x1]
	strb    r3, [r1, #0x2]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x226651a


.align 2, 0


.thumb
Function_226651c: @ 226651c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	mov     r1, #0x2d
	add     r3, sp, #0x4
	strb    r1, [r3, #0x0]
	mov     r1, #0xc0
	mov     r6, r7
	mul     r6, r1
	ldr     r1, [r0, #0x30]
	add     r2, r1, r6
	mov     r1, #0xb5
	lsl     r1, r1, #6
	ldrh    r2, [r2, r1]
	strh    r2, [r3, #0x2]
	ldr     r2, [r0, #0x30]
	add     r4, r2, r6
	mov     r2, r1
	add     r2, #0x26
	ldrb    r2, [r4, r2]
	lsl     r2, r2, #26
	lsr     r2, r2, #31
	strb    r2, [r3, #0x5]
	ldr     r2, [r0, #0x30]
	add     r5, r2, r6
	mov     r2, r1
	add     r2, #0x70
	ldr     r4, [r5, r2]
	mov     r2, #0x2
	lsl     r2, r2, #20
	tst     r2, r4
	beq     branch_2266570
	mov     r2, r1
	add     r2, #0xba
	ldrh    r2, [r5, r2]
	add     r1, #0xa4
	strb    r2, [r3, #0x4]
	ldr     r2, [r0, #0x30]
	add     r2, r2, r6
	ldr     r1, [r2, r1]
	str     r1, [sp, #0xc]
	b       branch_2266586
@ 0x2266570

.thumb
branch_2266570: @ 2266570 :thumb
	mov     r2, r1
	add     r2, #0x7e
	ldrb    r2, [r5, r2]
	add     r1, #0x68
	lsl     r2, r2, #28
	lsr     r2, r2, #28
	strb    r2, [r3, #0x4]
	ldr     r2, [r0, #0x30]
	add     r2, r2, r6
	ldr     r1, [r2, r1]
	str     r1, [sp, #0xc]
.thumb
branch_2266586: @ 2266586 :thumb
	ldr     r1, [r0, #0x30]
	add     r3, sp, #0x4
	add     r2, r1, r6
	ldr     r1, [pc, #0x18] @ 0x22665a8, (=#0x2d66)
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #27
	lsr     r2, r1, #27
	add     r1, sp, #0x4
	strb    r2, [r1, #0x1]
	mov     r1, #0xc
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2264a04
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22665a8

.word 0x2d66 @ 0x22665a8
.thumb
Function_22665ac: @ 22665ac :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x2e
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22665c6


.incbin "./baserom/overlay/overlay_0016.bin", 0x2b486, 0x22665e4 - 0x22665c6


.thumb
Function_22665e4: @ 22665e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	ldr     r1, [r5, #0x30]
	add     r2, sp, #0x4
	mov     r3, #0x30
	bl      Function_2266cf0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x226660c

.thumb
Function_226660c: @ 226660c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	ldr     r1, [r5, #0x30]
	add     r2, sp, #0x4
	mov     r3, #0x31
	bl      Function_2266cf0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2266634

.thumb
Function_2266634: @ 2266634 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	ldr     r1, [r5, #0x30]
	add     r2, sp, #0x4
	mov     r3, #0x32
	bl      Function_2266cf0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x226665c

.thumb
Function_226665c: @ 226665c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	ldr     r1, [r5, #0x30]
	add     r2, sp, #0x4
	mov     r3, #0x33
	bl      Function_2266cf0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2266684

.thumb
Function_2266684: @ 2266684 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x34
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x226669e


.align 2, 0


.thumb
Function_22666a0: @ 22666a0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x35
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22666ba


.align 2, 0


.thumb
Function_22666bc: @ 22666bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, #0x36
	add     r1, sp, #0x4
	strb    r5, [r1, #0x0]
	strb    r2, [r1, #0x1]
	strh    r3, [r1, #0x2]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22666de


.align 2, 0


.thumb
Function_22666e0: @ 22666e0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r4, r1
	bl      Function_223df0c
	mov     r2, #0x37
	add     r1, sp, #0x4
	strb    r2, [r1, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x2]
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2266734
	bl      Function_202f250
	cmp     r0, #0x1
	bne     branch_2266734
	ldr     r0, [pc, #0x30] @ 0x2266738, (=#0x240c)
	ldr     r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_2266734
	mov     r0, r5
	add     r1, sp, #0x8
	bl      Function_223f58c
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x1c
	bcc     branch_2266724
	bl      Function_2022974
.thumb
branch_2266724: @ 2266724 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
.thumb
branch_2266734: @ 2266734 :thumb
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x2266738

.word 0x240c @ 0x2266738
.thumb
Function_226673c: @ 226673c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	str     r0, [sp, #0x4]
	mov     r3, r1
	mov     r1, #0x38
	add     r0, sp, #0xc
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	add     r7, sp, #0xc
	str     r2, [sp, #0x8]
	ldr     r4, [pc, #0x80] @ 0x22667d4, (=#0x2d66)
	mov     r12, r0
	add     r0, r3, r4
	add     r4, #0x58
	mov     r1, r7
	mov     r2, r7
	add     r6, r3, r4
.thumb
branch_226675e: @ 226675e :thumb
	mov     r4, #0xb5
	lsl     r4, r4, #6
	ldrh    r4, [r3, r4]
	strh    r4, [r7, #0x18]
	ldrb    r4, [r0, #0x0]
	lsl     r4, r4, #26
	lsr     r5, r4, #31
	mov     r4, r1
	add     r4, #0x24
	strb    r5, [r4, #0x0]
	ldrb    r4, [r0, #0x0]
	lsl     r4, r4, #27
	lsr     r5, r4, #27
	mov     r4, r1
	add     r4, #0x28
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x58] @ 0x22667d8, (=#0x2db0)
	ldr     r5, [r3, r4]
	mov     r4, #0x2
	lsl     r4, r4, #20
	tst     r4, r5
	beq     branch_2266798
	ldr     r4, [pc, #0x50] @ 0x22667dc, (=#0x2dfa)
	ldrh    r5, [r3, r4]
	mov     r4, r1
	add     r4, #0x20
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x48] @ 0x22667e0, (=#0x2de4)
	b       branch_22667a6
@ 0x2266798

.thumb
branch_2266798: @ 2266798 :thumb
	ldrb    r4, [r6, #0x0]
	lsl     r4, r4, #28
	lsr     r5, r4, #28
	mov     r4, r1
	add     r4, #0x20
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x3c] @ 0x22667e4, (=#0x2da8)
.thumb
branch_22667a6: @ 22667a6 :thumb
	ldr     r4, [r3, r4]
	add     r3, #0xc0
	str     r4, [r2, #0x2c]
	mov     r4, r12
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r0, #0xc0
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r6, #0xc0
	mov     r12, r4
	cmp     r4, #0x4
	blt     branch_226675e
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x1
	add     r3, sp, #0xc
	bl      Function_2264a04
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x22667d4

.word 0x2d66 @ 0x22667d4
.word 0x2db0 @ 0x22667d8
.word 0x2dfa @ 0x22667dc
.word 0x2de4 @ 0x22667e0
.word 0x2da8 @ 0x22667e4
.thumb
Function_22667e8: @ 22667e8 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x39
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2266802


.align 2, 0


.thumb
Function_2266804: @ 2266804 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x3a
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x226681e


.align 2, 0


.thumb
Function_2266820: @ 2266820 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x3b
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x226683a


.align 2, 0


.thumb
Function_226683c: @ 226683c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r0
	mov     r5, r1
	bl      Function_223df0c
	str     r0, [sp, #0x4]
	mov     r1, #0x3c
	add     r0, sp, #0x8
	strb    r1, [r0, #0x0]
	mov     r4, #0x0
	strb    r4, [r0, #0x1]
	strh    r4, [r0, #0x2]
	mov     r0, r6
	bl      Function_223df1c
	cmp     r0, #0x0
	ble     branch_2266884
	add     r7, sp, #0x8
.thumb
branch_2266862: @ 2266862 :thumb
	ldr     r0, [pc, #0x64] @ 0x22668c8, (=#0x21a8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x10
	bne     branch_2266876
	mov     r0, r4
	bl      Function_20787cc
	ldrb    r1, [r7, #0x1]
	orr     r0, r1
	strb    r0, [r7, #0x1]
.thumb
branch_2266876: @ 2266876 :thumb
	mov     r0, r6
	add     r5, #0x10
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_223df1c
	cmp     r4, r0
	blt     branch_2266862
.thumb
branch_2266884: @ 2266884 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_22668b4
	bl      Function_202f250
	cmp     r0, #0x1
	bne     branch_22668b4
	ldr     r0, [pc, #0x34] @ 0x22668cc, (=#0x240c)
	ldr     r1, [r6, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22668b4
	mov     r0, r6
	add     r1, sp, #0xc
	bl      Function_223f58c
	add     r1, sp, #0x8
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x1c
	bcc     branch_22668b4
	bl      Function_2022974
.thumb
branch_22668b4: @ 22668b4 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x8
	bl      Function_2264a04
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22668c8

.word 0x21a8 @ 0x22668c8
.word 0x240c @ 0x22668cc
.thumb
Function_22668d0: @ 22668d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x24
	mov     r4, r0
	bl      Function_223df0c
	mov     r2, #0x3d
	add     r1, sp, #0x4
	strb    r2, [r1, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x2]
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2266912
	bl      Function_202f250
	cmp     r0, #0x1
	bne     branch_2266912
	ldr     r0, [pc, #0x34] @ 0x2266928, (=#0x240c)
	ldr     r1, [r4, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_2266912
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_223f58c
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x1c
	bcc     branch_2266912
	bl      Function_2022974
.thumb
branch_2266912: @ 2266912 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x24
	pop     {r3,r4,pc}
@ 0x2266926


.align 2


.word 0x240c @ 0x2266928
.thumb
Function_226692c: @ 226692c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	str     r0, [sp, #0x4]
	mov     r3, r1
	mov     r1, #0x3e
	add     r0, sp, #0xc
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	add     r7, sp, #0xc
	str     r2, [sp, #0x8]
	ldr     r4, [pc, #0x80] @ 0x22669c4, (=#0x2d66)
	mov     r12, r0
	add     r0, r3, r4
	add     r4, #0x58
	mov     r1, r7
	mov     r2, r7
	add     r6, r3, r4
.thumb
branch_226694e: @ 226694e :thumb
	mov     r4, #0xb5
	lsl     r4, r4, #6
	ldrh    r4, [r3, r4]
	strh    r4, [r7, #0x18]
	ldrb    r4, [r0, #0x0]
	lsl     r4, r4, #26
	lsr     r5, r4, #31
	mov     r4, r1
	add     r4, #0x24
	strb    r5, [r4, #0x0]
	ldrb    r4, [r0, #0x0]
	lsl     r4, r4, #27
	lsr     r5, r4, #27
	mov     r4, r1
	add     r4, #0x28
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x58] @ 0x22669c8, (=#0x2db0)
	ldr     r5, [r3, r4]
	mov     r4, #0x2
	lsl     r4, r4, #20
	tst     r4, r5
	beq     branch_2266988
	ldr     r4, [pc, #0x50] @ 0x22669cc, (=#0x2dfa)
	ldrh    r5, [r3, r4]
	mov     r4, r1
	add     r4, #0x20
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x48] @ 0x22669d0, (=#0x2de4)
	b       branch_2266996
@ 0x2266988

.thumb
branch_2266988: @ 2266988 :thumb
	ldrb    r4, [r6, #0x0]
	lsl     r4, r4, #28
	lsr     r5, r4, #28
	mov     r4, r1
	add     r4, #0x20
	strb    r5, [r4, #0x0]
	ldr     r4, [pc, #0x3c] @ 0x22669d4, (=#0x2da8)
.thumb
branch_2266996: @ 2266996 :thumb
	ldr     r4, [r3, r4]
	add     r3, #0xc0
	str     r4, [r2, #0x2c]
	mov     r4, r12
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r0, #0xc0
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r6, #0xc0
	mov     r12, r4
	cmp     r4, #0x4
	blt     branch_226694e
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x1
	add     r3, sp, #0xc
	bl      Function_2264a04
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x22669c4

.word 0x2d66 @ 0x22669c4
.word 0x2db0 @ 0x22669c8
.word 0x2dfa @ 0x22669cc
.word 0x2de4 @ 0x22669d0
.word 0x2da8 @ 0x22669d4
.thumb
Function_22669d8: @ 22669d8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r3, #0x3f
	add     r4, sp, #0x4
	strb    r3, [r4, #0x0]
	ldr     r3, [pc, #0x30] @ 0x2266a14, (=#0x216c)
	ldr     r5, [r1, r3]
	mov     r1, #0x2
	mov     r3, r5
	tst     r3, r1
	beq     branch_22669f2
	strb    r1, [r4, #0x1]
	b       branch_2266a02
@ 0x22669f2

.thumb
branch_22669f2: @ 22669f2 :thumb
	mov     r1, #0x4
	tst     r1, r5
	beq     branch_22669fe
	mov     r1, #0x1
	strb    r1, [r4, #0x1]
	b       branch_2266a02
@ 0x22669fe

.thumb
branch_22669fe: @ 22669fe :thumb
	mov     r1, #0x0
	strb    r1, [r4, #0x1]
.thumb
branch_2266a02: @ 2266a02 :thumb
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2266a12


.align 2


.word 0x216c @ 0x2266a14
.thumb
Function_2266a18: @ 2266a18 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r3, #0x40
	add     r1, sp, #0x4
	strb    r3, [r1, #0x0]
	strh    r2, [r1, #0x2]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, r4
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2266a38

.thumb
Function_2266a38: @ 2266a38 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	bl      Function_223df0c
	mov     r4, r0
	mov     r1, #0x41
	add     r0, sp, #0x4
	strb    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_223f438
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, sp, #0x4
	strh    r1, [r0, #0x2]
	mov     r0, #0x4
	tst     r0, r4
	beq     branch_2266a86
	bl      Function_202f250
	cmp     r0, #0x1
	bne     branch_2266a86
	ldr     r0, [pc, #0x34] @ 0x2266a9c, (=#0x240c)
	ldr     r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_2266a86
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_223f58c
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x1c
	bls     branch_2266a86
	bl      Function_2022974
.thumb
branch_2266a86: @ 2266a86 :thumb
	mov     r0, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x2266a9a


.align 2


.word 0x240c @ 0x2266a9c
.thumb
Function_2266aa0: @ 2266aa0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x42
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_2264a04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2266aba


.incbin "./baserom/overlay/overlay_0016.bin", 0x2b97a, 0x2266b78 - 0x2266aba


.thumb
Function_2266b78: @ 2266b78 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r2
	mov     r1, #0x16
	strb    r1, [r5, #0x0]
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x1c]
	mov     r7, r0
	strh    r1, [r5, #0x2]
	ldr     r1, [sp, #0x1c]
	strh    r1, [r5, #0x14]
	ldr     r1, [sp, #0x20]
	strh    r1, [r5, #0x16]
	ldr     r1, [sp, #0x18]
	str     r3, [r5, #0x4c]
	str     r1, [r5, #0x50]
	bl      Function_223e22c
	str     r0, [r5, #0x54]
	cmp     r4, #0x0
	bne     branch_2266ba4
	b       branch_2266cc8
@ 0x2266ba4

.thumb
branch_2266ba4: @ 2266ba4 :thumb
	ldr     r0, [pc, #0x124] @ 0x2266ccc, (=#0x2144)
	ldr     r1, [r4, r0]
	add     r0, #0x10
	str     r1, [r5, #0x4]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2266bb4
	b       branch_2266bc0
@ 0x2266bb4

.thumb
branch_2266bb4: @ 2266bb4 :thumb
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x1c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x110] @ 0x2266cd0, (=#0x3e1)
	ldrb    r0, [r1, r0]
.thumb
branch_2266bc0: @ 2266bc0 :thumb
	ldr     r1, [sp, #0x1c]
	strh    r0, [r5, #0x8]
	mov     r0, #0xc0
	mov     r6, r1
	mul     r6, r0
	ldr     r0, [pc, #0x108] @ 0x2266cd4, (=#0x2d75)
	add     r1, r4, r6
	ldrb    r0, [r1, r0]
	mov     r1, r4
	mov     r2, #0x8
	strh    r0, [r5, #0xc]
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2266c04
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_22555a4
	cmp     r0, #0x0
	bne     branch_2266c04
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	str     r0, [r5, #0x10]
	b       branch_2266c08
@ 0x2266c04

.thumb
branch_2266c04: @ 2266c04 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x10]
.thumb
branch_2266c08: @ 2266c08 :thumb
	ldr     r0, [pc, #0xcc] @ 0x2266cd8, (=#0x2164)
	ldr     r0, [r4, r0]
	strh    r0, [r5, #0xa]
	ldr     r0, [pc, #0xcc] @ 0x2266cdc, (=#0x2db0)
	add     r1, r4, r0
	mov     r0, #0x1
	ldr     r2, [r1, r6]
	lsl     r0, r0, #24
	tst     r0, r2
	beq     branch_2266c20
	mov     r3, #0x1
	b       branch_2266c22
@ 0x2266c20

.thumb
branch_2266c20: @ 2266c20 :thumb
	mov     r3, #0x0
.thumb
branch_2266c22: @ 2266c22 :thumb
	ldrh    r0, [r5, #0xe]
	mov     r2, #0x1
	bic     r0, r2
	lsl     r2, r3, #16
	lsr     r3, r2, #16
	mov     r2, #0x1
	and     r3, r2
	orr     r0, r3
	strh    r0, [r5, #0xe]
	ldr     r1, [r1, r6]
	lsl     r0, r2, #21
	tst     r0, r1
	bne     branch_2266c3e
	mov     r2, #0x0
.thumb
branch_2266c3e: @ 2266c3e :thumb
	ldrh    r0, [r5, #0xe]
	mov     r1, #0x2
	ldr     r3, [pc, #0x9c] @ 0x2266ce0, (=#0x2d66)
	bic     r0, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #31
	lsr     r1, r1, #30
	orr     r0, r1
	add     r1, r4, r3
	add     r3, #0x58
	strh    r0, [r5, #0xe]
	mov     r0, #0x0
	mov     r12, r5
	mov     r2, r5
	add     r7, r4, r3
.thumb
branch_2266c5e: @ 2266c5e :thumb
	mov     r3, #0xb5
	lsl     r3, r3, #6
	ldrh    r6, [r4, r3]
	mov     r3, r12
	strh    r6, [r3, #0x18]
	ldrb    r3, [r1, #0x0]
	lsl     r3, r3, #26
	lsr     r6, r3, #31
	add     r3, r5, r0
	add     r3, #0x24
	strb    r6, [r3, #0x0]
	ldrb    r3, [r1, #0x0]
	lsl     r3, r3, #27
	lsr     r6, r3, #27
	add     r3, r5, r0
	add     r3, #0x28
	strb    r6, [r3, #0x0]
	mov     r3, #0xb7
	lsl     r3, r3, #6
	ldr     r3, [r4, r3]
	str     r3, [r2, #0x3c]
	ldr     r3, [pc, #0x50] @ 0x2266cdc, (=#0x2db0)
	ldr     r6, [r4, r3]
	mov     r3, #0x2
	lsl     r3, r3, #20
	tst     r3, r6
	beq     branch_2266ca2
	ldr     r3, [pc, #0x4c] @ 0x2266ce4, (=#0x2dfa)
	ldrh    r6, [r4, r3]
	add     r3, r5, r0
	add     r3, #0x20
	strb    r6, [r3, #0x0]
	ldr     r3, [pc, #0x48] @ 0x2266ce8, (=#0x2de4)
	b       branch_2266cb0
@ 0x2266ca2

.thumb
branch_2266ca2: @ 2266ca2 :thumb
	ldrb    r3, [r7, #0x0]
	lsl     r3, r3, #28
	lsr     r6, r3, #28
	add     r3, r5, r0
	add     r3, #0x20
	strb    r6, [r3, #0x0]
	ldr     r3, [pc, #0x3c] @ 0x2266cec, (=#0x2da8)
.thumb
branch_2266cb0: @ 2266cb0 :thumb
	ldr     r3, [r4, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r3, [r2, #0x2c]
	mov     r3, r12
	.hword  0x1c9b @ add r3, r3, #0x2
	add     r4, #0xc0
	mov     r12, r3
	add     r1, #0xc0
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r7, #0xc0
	cmp     r0, #0x4
	blt     branch_2266c5e
.thumb
branch_2266cc8: @ 2266cc8 :thumb
	pop     {r3-r7,pc}
@ 0x2266cca


.align 2


.word 0x2144 @ 0x2266ccc
.word 0x3e1 @ 0x2266cd0
.word 0x2d75 @ 0x2266cd4
.word 0x2164 @ 0x2266cd8
.word 0x2db0 @ 0x2266cdc
.word 0x2d66 @ 0x2266ce0
.word 0x2dfa @ 0x2266ce4
.word 0x2de4 @ 0x2266ce8
.word 0x2da8 @ 0x2266cec
.thumb
Function_2266cf0: @ 2266cf0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x38]
	mov     r5, r2
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, #0x8
	mov     r6, r3
	blx     Function_20c4bb8
	ldr     r0, [sp, #0x0]
	bl      Function_223df0c
	mov     r4, r0
	mov     r0, #0xc
	and     r0, r4
	strb    r6, [r5, #0x0]
	cmp     r0, #0xc
	beq     branch_2266d44
	mov     r0, #0x10
	tst     r0, r4
	beq     branch_2266d2e
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_2266d44
.thumb
branch_2266d2e: @ 2266d2e :thumb
	cmp     r4, #0x4b
	bne     branch_2266d3e
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223e208
	cmp     r0, #0x0
	bne     branch_2266d44
.thumb
branch_2266d3e: @ 2266d3e :thumb
	cmp     r4, #0xcb
	beq     branch_2266d44
	b       branch_2266e7a
@ 0x2266d44

.thumb
branch_2266d44: @ 2266d44 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223e1f8
	cmp     r0, #0x2
	beq     branch_2266d5c
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223e1f8
	cmp     r0, #0x3
	bne     branch_2266d6a
.thumb
branch_2266d5c: @ 2266d5c :thumb
	ldr     r6, [sp, #0x38]
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_223e258
	str     r0, [sp, #0x38]
	b       branch_2266d74
@ 0x2266d6a

.thumb
branch_2266d6a: @ 2266d6a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223e258
	mov     r6, r0
.thumb
branch_2266d74: @ 2266d74 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_223df20
	mov     r4, #0x0
	str     r0, [sp, #0x10]
	mov     r7, r4
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2266df4
	mov     r0, #0x6
	mov     r1, r6
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	add     r6, r0, r1
.thumb
branch_2266d94: @ 2266d94 :thumb
	ldr     r1, [pc, #0x17c] @ 0x2266f14, (=#0x312c)
	ldr     r0, [sp, #0x10]
	ldrb    r1, [r6, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	str     r0, [sp, #0x14]
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266de6
	ldr     r1, [pc, #0x168] @ 0x2266f18, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2266de6
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266dde
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266dd6
	add     r1, r5, r4
	mov     r0, #0x3
	strb    r0, [r1, #0x2]
	b       branch_2266de4
@ 0x2266dd6

.thumb
branch_2266dd6: @ 2266dd6 :thumb
	add     r1, r5, r4
	mov     r0, #0x1
	strb    r0, [r1, #0x2]
	b       branch_2266de4
@ 0x2266dde

.thumb
branch_2266dde: @ 2266dde :thumb
	add     r1, r5, r4
	mov     r0, #0x2
	strb    r0, [r1, #0x2]
.thumb
branch_2266de4: @ 2266de4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2266de6: @ 2266de6 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_2266d94
.thumb
branch_2266df4: @ 2266df4 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223df20
	str     r0, [sp, #0x8]
	mov     r4, #0x3
	mov     r7, #0x0
	bl      Function_207a0f8
	cmp     r0, #0x0
	bgt     branch_2266e0c
	b       branch_2266f0e
@ 0x2266e0c

.thumb
branch_2266e0c: @ 2266e0c :thumb
	ldr     r0, [sp, #0x38]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	add     r6, r0, r1
.thumb
branch_2266e16: @ 2266e16 :thumb
	ldr     r1, [pc, #0xfc] @ 0x2266f14, (=#0x312c)
	ldr     r0, [sp, #0x8]
	ldrb    r1, [r6, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266e68
	ldr     r1, [pc, #0xe8] @ 0x2266f18, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2266e68
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266e60
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266e58
	add     r1, r5, r4
	mov     r0, #0x3
	strb    r0, [r1, #0x2]
	b       branch_2266e66
@ 0x2266e58

.thumb
branch_2266e58: @ 2266e58 :thumb
	add     r1, r5, r4
	mov     r0, #0x1
	strb    r0, [r1, #0x2]
	b       branch_2266e66
@ 0x2266e60

.thumb
branch_2266e60: @ 2266e60 :thumb
	add     r1, r5, r4
	mov     r0, #0x2
	strb    r0, [r1, #0x2]
.thumb
branch_2266e66: @ 2266e66 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2266e68: @ 2266e68 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_2266e16
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2266e7a

.thumb
branch_2266e7a: @ 2266e7a :thumb
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_2266e8e
	mov     r0, #0x8
	tst     r0, r4
	bne     branch_2266e8e
	ldr     r0, [sp, #0x38]
	mov     r1, #0x1
	and     r0, r1
	str     r0, [sp, #0x38]
.thumb
branch_2266e8e: @ 2266e8e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	bl      Function_223df20
	mov     r4, #0x0
	str     r0, [sp, #0xc]
	mov     r7, r4
	bl      Function_207a0f8
	cmp     r0, #0x0
	ble     branch_2266f0e
	ldr     r0, [sp, #0x38]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	add     r6, r0, r1
.thumb
branch_2266eae: @ 2266eae :thumb
	ldr     r1, [pc, #0x64] @ 0x2266f14, (=#0x312c)
	ldr     r0, [sp, #0xc]
	ldrb    r1, [r6, r1]
	bl      Function_207a0fc
	mov     r1, #0xae
	mov     r2, #0x0
	str     r0, [sp, #0x1c]
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266f00
	ldr     r1, [pc, #0x50] @ 0x2266f18, (=#0x1ee)
	cmp     r0, r1
	beq     branch_2266f00
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266ef8
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_2266ef0
	add     r1, r5, r4
	mov     r0, #0x3
	strb    r0, [r1, #0x2]
	b       branch_2266efe
@ 0x2266ef0

.thumb
branch_2266ef0: @ 2266ef0 :thumb
	add     r1, r5, r4
	mov     r0, #0x1
	strb    r0, [r1, #0x2]
	b       branch_2266efe
@ 0x2266ef8

.thumb
branch_2266ef8: @ 2266ef8 :thumb
	add     r1, r5, r4
	mov     r0, #0x2
	strb    r0, [r1, #0x2]
.thumb
branch_2266efe: @ 2266efe :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2266f00: @ 2266f00 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_207a0f8
	cmp     r7, r0
	blt     branch_2266eae
.thumb
branch_2266f0e: @ 2266f0e :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2266f12


.align 2


.word 0x312c @ 0x2266f14
.word 0x1ee @ 0x2266f18

.incbin "./baserom/overlay/overlay_0016.bin", 0x2bddc, 0x2269e94 - 0x2266f1c


.thumb
Function_2269e94: @ 2269e94 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x2269f58, (=#0x4001050)
	mov     r1, #0x2
	mov     r2, #0xf
	mov     r3, #0x1f
	blx     Function_20bf55c
	ldr     r0, [r5, #0x0]
	bl      Function_223e05c
	ldr     r1, [pc, #0xa8] @ 0x2269f5c, (=#0x4ec)
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	mov     r1, #0x2e
	mov     r2, #0x1
	add     r3, sp, #0x1c
	bl      Function_2006f6c
	mov     r6, r0
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x2
	ldr     r1, [r5, #0x58]
	add     r0, #0xc
	lsl     r2, r2, #10
	blx     Function_20c4b68
	mov     r0, r6
	bl      Function_20181c4
	ldr     r0, [r5, #0x0]
	bl      Function_223df00
	mov     r1, #0x4
	ldr     r2, [r5, #0x58]
	mov     r6, r0
	lsl     r3, r1, #9
	bl      Function_2019574
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_201c3c0
	ldr     r0, [r5, #0x0]
	bl      Function_223df00
	mov     r2, #0x2
	mov     r6, r0
	ldr     r1, [r5, #0x50]
	mov     r0, #0x0
	lsl     r2, r2, #10
	blx     Function_20c4b4c
	mov     r3, #0x2
	ldr     r2, [r5, #0x50]
	mov     r0, r6
	mov     r1, #0x5
	lsl     r3, r3, #10
	bl      Function_2019574
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_201c3c0
	ldr     r0, [pc, #0x3c] @ 0x2269f60, (=#0x10203)
	mov     r1, #0x4d
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	lsl     r1, r1, #4
	ldr     r0, [pc, #0x34] @ 0x2269f64, (=#0x4e37)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x80
	str     r0, [sp, #0xc]
	mov     r0, #0xb2
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, r4
	bl      Function_226a98c
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2269f56


.align 2


.word 0x4001050 @ 0x2269f58
.word 0x4ec @ 0x2269f5c
.word 0x10203 @ 0x2269f60
.word 0x4e37 @ 0x2269f64

.incbin "./baserom/overlay/overlay_0016.bin", 0x2ee28, 0x226a04c - 0x2269f68


.thumb
Function_226a04c: @ 226a04c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_223e05c
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	bl      Function_223e0d0
	mov     r4, r0
	ldr     r1, [pc, #0xb4] @ 0x226a118, (=#0x4bf)
	mov     r0, r6
	bl      Function_200b1ec
	mov     r1, #0x13
	str     r0, [sp, #0x1c]
	mov     r0, r6
	lsl     r1, r1, #6
	bl      Function_200b1ec
	str     r0, [sp, #0x20]
	mov     r0, #0x64
	mov     r1, #0x5
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x64
	mov     r1, #0x5
	bl      Function_2023790
	mov     r7, r0
	ldrh    r2, [r5, #0x1c]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200b630
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, r6
	bl      Function_200c388
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	mov     r1, r7
	bl      Function_200c388





