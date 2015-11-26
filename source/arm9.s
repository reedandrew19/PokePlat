.include "baserom/macros_asm.s"


.text



.incbin "baserom/arm9.bin", 0x0, 0x522 - 0x0


.thumb
Function_2000522: @ 2000522 :thumb
	swi     0x3
	bx      lr
@ 0x2000526


.incbin "baserom/arm9.bin", 0x526, 0x2000570 - 0x2000526


.thumb
Function_2000570: @ 2000570 :thumb
	swi     0xb
	bx      lr
@ 0x2000574


.incbin "baserom/arm9.bin", 0x574, 0x2000800 - 0x2000574


.arm
entry_point: @ 2000800 :arm
	mov     r12, #1, 6 @ #0x4000000
	str     r12, [r12, #0x208]
.arm
branch_2000808: @ 2000808 :arm
	ldrh    r0, [r12, #0x6]
	cmp     r0, #0x0
	bne     branch_2000808
	bl      Function_2000ab0
	mov     r0, #0x13
	msr     CPSR_c, r0
	ldr     r0,  [pc, #0x108] @ [0x2000930] (=#0x27e0000)
	add     r0, r0, #255, 26 @ #0x3fc0
	mov     sp, r0
	mov     r0, #0x12
	msr     CPSR_c, r0
	ldr     r0,  [pc, #0xf4] @ [0x2000930] (=#0x27e0000)
	add     r0, r0, #255, 26 @ #0x3fc0
	sub     r0, r0, #0x40
	sub     sp, r0, #0x4
	tst     sp, #0x4
	beq     branch_2000850
	b       branch_2000854
@ 0x2000850

.arm
branch_2000850: @ 2000850 :arm
	sub     sp, sp, #0x4
.arm
branch_2000854: @ 2000854 :arm
	ldr     r1,  [pc, #0xd8] @ [0x2000934] (=#0x800)
	sub     r1, r0, r1
	mov     r0, #0x1f
	msr     CPSR_fsxc, r0
	sub     sp, r1, #0x4
	mov     r0, #0x0
	ldr     r1,  [pc, #0xbc] @ [0x2000930] (=#0x27e0000)
	mov     r2, #1, 18 @ #0x4000
	bl      Function_2000954
	mov     r0, #0x0
	ldr     r1,  [pc, #0xb4] @ [0x2000938] (=#0x5000000)
	mov     r2, #1, 22 @ #0x400
	bl      Function_2000954
	mov     r0, #2, 24 @ #0x200
	ldr     r1,  [pc, #0xa8] @ [0x200093c] (=#0x7000000)
	mov     r2, #1, 22 @ #0x400
	bl      Function_2000954
	ldr     r1,  [pc, #0xa0] @ [0x2000940] (=#0x2000ba0)
	ldr     r0, [r1, #0x14]
	bl      Function_2000970
	bl      Function_2000a1c
	ldr     r0,  [pc, #0x90] @ [0x2000940] (=#0x2000ba0)
	ldr     r1, [r0, #0xc]
	ldr     r2, [r0, #0x10]
	mov     r3, r1
	mov     r0, #0x0
.arm
branch_20008bc: @ 20008bc :arm
	cmp     r1, r2
	bcc     branch_20008c8
	b       branch_20008cc
@ 0x20008c8

.arm
branch_20008c8: @ 20008c8 :arm
	str     r0, [r1], #0x4
.arm
branch_20008cc: @ 20008cc :arm
	bcc     branch_20008bc
	bic     r1, r3, #0x1f
.arm
branch_20008d4: @ 20008d4 :arm
	mcr     p15, 0, r0, c7, c10, 4
	mcr     p15, 0, r1, c7, c5, 1
	mcr     p15, 0, r1, c7, c14, 1
	add     r1, r1, #0x20
	cmp     r1, r2
	blt     branch_20008d4
	ldr     r1,  [pc, #0x50] @ [0x2000944] (=#0x27fff9c)
	str     r0, [r1]
	ldr     r1,  [pc, #0x34] @ [0x2000930] (=#0x27e0000)
	add     r1, r1, #255, 26 @ #0x3fc0
	add     r1, r1, #0x3c
	ldr     r0,  [pc, #0x40] @ [0x2000948] (=#0x1ff8000)
	str     r0, [r1]
	bl      Function_20e28b8
	bl      Function_2000b98
	bl      Function_20e402c
	ldr     r1,  [pc, #0x30] @ [0x200094c] (=#0x2000c89)
	ldr     lr,  [pc, #0x30] @ [0x2000950] (=#0xffff0000)
	tst     sp, #0x4
	bne     branch_2000928
	b       branch_200092c
@ 0x2000928

.arm
branch_2000928: @ 2000928 :arm
	sub     sp, sp, #0x4
.arm
branch_200092c: @ 200092c :arm
	bx      r1
@ 0x2000930

.word 0x27e0000 @ 0x2000930
.word 0x800 @ 0x2000934
.word 0x5000000 @ 0x2000938
.word 0x7000000 @ 0x200093c
.word 0x2000ba0 @ 0x2000940
.word 0x27fff9c @ 0x2000944
.word 0x1ff8000 @ 0x2000948
.word 0x2000c89 @ 0x200094c
.word 0xffff0000 @ 0x2000950
.arm
Function_2000954: @ 2000954 :arm
	add     r12, r1, r2
.arm
branch_2000958: @ 2000958 :arm
	cmp     r1, r12
	blt     branch_2000964
	b       branch_2000968
@ 0x2000964

.arm
branch_2000964: @ 2000964 :arm
	stmia   r1!, {r0}
.arm
branch_2000968: @ 2000968 :arm
	blt     branch_2000958
	bx      lr
@ 0x2000970

.arm
Function_2000970: @ 2000970 :arm
	cmp     r0, #0x0
	beq     branch_2000a18
	stmfd   sp!, {r4-r7}
	ldmdb   r0, {r1,r2}
	add     r2, r0, r2
	sub     r3, r0, r1, lsr #24
	bic     r1, r1, #255, 8 @ #0xff000000
	sub     r1, r0, r1
	mov     r4, r2
.arm
branch_2000994: @ 2000994 :arm
	cmp     r3, r1
	ble     branch_20009f4
	ldrb    r5, [r3, #-0x1]!
	mov     r6, #0x8
.arm
branch_20009a4: @ 20009a4 :arm
	subs    r6, r6, #0x1
	blt     branch_2000994
	tst     r5, #0x80
	bne     branch_20009c0
	ldrb    r0, [r3, #-0x1]!
	strb    r0, [r2, #-0x1]!
	b       branch_20009e8
@ 0x20009c0

.arm
branch_20009c0: @ 20009c0 :arm
	ldrb    r12, [r3, #-0x1]!
	ldrb    r7, [r3, #-0x1]!
	orr     r7, r7, r12, lsl #8
	bic     r7, r7, #15, 20 @ #0xf000
	add     r7, r7, #0x2
	add     r12, r12, #0x20
.arm
branch_20009d8: @ 20009d8 :arm
	ldrb    r0, [r2, r7]
	strb    r0, [r2, #-0x1]!
	subs    r12, r12, #0x10
	bge     branch_20009d8
.arm
branch_20009e8: @ 20009e8 :arm
	cmp     r3, r1
	mov     r5, r5, lsl #1
	bgt     branch_20009a4
.arm
branch_20009f4: @ 20009f4 :arm
	mov     r0, #0x0
	bic     r3, r1, #0x1f
.arm
branch_20009fc: @ 20009fc :arm
	mcr     p15, 0, r0, c7, c10, 4
	mcr     p15, 0, r3, c7, c5, 1
	mcr     p15, 0, r3, c7, c14, 1
	add     r3, r3, #0x20
	cmp     r3, r4
	blt     branch_20009fc
	ldmfd   sp!, {r4-r7}
.arm
branch_2000a18: @ 2000a18 :arm
	bx      lr
@ 0x2000a1c

.arm
Function_2000a1c: @ 2000a1c :arm
	ldr     r0,  [pc, #0x84] @ [0x2000aa8] (=#0x2000ba0)
	ldr     r1, [r0]
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0, #0x8]
.arm
branch_2000a2c: @ 2000a2c :arm
	cmp     r1, r2
	beq     branch_2000aa4
	ldr     r5, [r1], #0x4
	ldr     r7, [r1], #0x4
	add     r6, r5, r7
	mov     r4, r5
.arm
branch_2000a44: @ 2000a44 :arm
	cmp     r4, r6
	bmi     branch_2000a50
	b       branch_2000a54
@ 0x2000a50

.arm
branch_2000a50: @ 2000a50 :arm
	ldr     r7, [r3], #0x4
.arm
branch_2000a54: @ 2000a54 :arm
	bmi     branch_2000a5c
	b       branch_2000a60
@ 0x2000a5c

.arm
branch_2000a5c: @ 2000a5c :arm
	str     r7, [r4], #0x4
.arm
branch_2000a60: @ 2000a60 :arm
	bmi     branch_2000a44
	ldr     r7, [r1], #0x4
	add     r6, r4, r7
	mov     r7, #0x0
.arm
branch_2000a70: @ 2000a70 :arm
	cmp     r4, r6
	bcc     branch_2000a7c
	b       branch_2000a80
@ 0x2000a7c

.arm
branch_2000a7c: @ 2000a7c :arm
	str     r7, [r4], #0x4
.arm
branch_2000a80: @ 2000a80 :arm
	bcc     branch_2000a70
	bic     r4, r5, #0x1f
.arm
branch_2000a88: @ 2000a88 :arm
	mcr     p15, 0, r7, c7, c10, 4
	mcr     p15, 0, r4, c7, c5, 1
	mcr     p15, 0, r4, c7, c14, 1
	add     r4, r4, #0x20
	cmp     r4, r6
	blt     branch_2000a88
	b       branch_2000a2c
@ 0x2000aa4

.arm
branch_2000aa4: @ 2000aa4 :arm
	b       branch_2000aac
@ 0x2000aa8

.word 0x2000ba0 @ 0x2000aa8
.arm
branch_2000aac: @ 2000aac :arm
	bx      lr
@ 0x2000ab0

.arm
Function_2000ab0: @ 2000ab0 :arm
	mrc     p15, 0, r0, c1, c0, 0
	ldr     r1,  [pc, #0xac] @ [0x2000b68] (=#0xf9005)
	bic     r0, r0, r1
	mcr     p15, 0, r0, c1, c0, 0
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c5, 0
	mcr     p15, 0, r0, c7, c6, 0
	mcr     p15, 0, r0, c7, c10, 4
	ldr     r0,  [pc, #0x94] @ [0x2000b6c] (=#0x4000033)
	mcr     p15, 0, r0, c6, c0, 0
	ldr     r0,  [pc, #0x90] @ [0x2000b70] (=#0x200002d)
	mcr     p15, 0, r0, c6, c1, 0
	ldr     r0,  [pc, #0x8c] @ [0x2000b74] (=#0x27e0021)
	mcr     p15, 0, r0, c6, c2, 0
	ldr     r0,  [pc, #0x88] @ [0x2000b78] (=#0x8000035)
	mcr     p15, 0, r0, c6, c3, 0
	ldr     r0,  [pc, #0x84] @ [0x2000b7c] (=#0x27e0000)
	orr     r0, r0, #0x1a
	orr     r0, r0, #0x1
	mcr     p15, 0, r0, c6, c4, 0
	ldr     r0,  [pc, #0x78] @ [0x2000b80] (=#0x100002f)
	mcr     p15, 0, r0, c6, c5, 0
	ldr     r0,  [pc, #0x74] @ [0x2000b84] (=#0xffff001d)
	mcr     p15, 0, r0, c6, c6, 0
	ldr     r0,  [pc, #0x70] @ [0x2000b88] (=#0x27ff017)
	mcr     p15, 0, r0, c6, c7, 0
	mov     r0, #0x20
	mcr     p15, 0, r0, c9, c1, 1
	ldr     r0,  [pc, #0x54] @ [0x2000b7c] (=#0x27e0000)
	orr     r0, r0, #0xa
	mcr     p15, 0, r0, c9, c1, 0
	mov     r0, #0x42
	mcr     p15, 0, r0, c2, c0, 1
	mov     r0, #0x42
	mcr     p15, 0, r0, c2, c0, 0
	mov     r0, #0x2
	mcr     p15, 0, r0, c3, c0, 0
	ldr     r0,  [pc, #0x40] @ [0x2000b8c] (=#0x5100011)
	mcr     p15, 0, r0, c5, c0, 3
	ldr     r0,  [pc, #0x3c] @ [0x2000b90] (=#0x15111011)
	mcr     p15, 0, r0, c5, c0, 2
	mrc     p15, 0, r0, c1, c0, 0
	ldr     r1,  [pc, #0x34] @ [0x2000b94] (=#0x5707d)
	orr     r0, r0, r1
	mcr     p15, 0, r0, c1, c0, 0
	bx      lr
@ 0x2000b68

.word 0xf9005 @ 0x2000b68
.word 0x4000033 @ 0x2000b6c
.word 0x200002d @ 0x2000b70
.word 0x27e0021 @ 0x2000b74
.word 0x8000035 @ 0x2000b78
.word 0x27e0000 @ 0x2000b7c
.word 0x100002f @ 0x2000b80
.word 0xffff001d @ 0x2000b84
.word 0x27ff017 @ 0x2000b88
.word 0x5100011 @ 0x2000b8c
.word 0x15111011 @ 0x2000b90
.word 0x5707d @ 0x2000b94
.arm
Function_2000b98: @ 2000b98 :arm
	bx      lr
@ 0x2000b9c

.arm
Function_2000b9c: @ 2000b9c :arm
	bx      lr
@ 0x2000ba0


.incbin "baserom/arm9.bin", 0xba0, 0x2000c88 - 0x2000ba0


.thumb
_start: @ 2000c88 :thumb
	push    {r3-r7,lr}
	bl      Function_201789c
	bl      Function_20179e4
	bl      Function_2017af4
	mov     r0, #0x0
	bl      Function_2017b70
	ldr     r0, [pc, #0x178] @ 0x2000e18, (=#0x2101d20)
	mov     r1, #0x0
	blx     Function_20cb29c
	bl      Function_202419c
	bl      Function_201378c
	bl      Function_2000e3c
	bl      Function_2002b7c
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2002bb8
	mov     r0, #0x1
	mov     r1, #0x3
	bl      Function_2002bb8
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2002bb8
	mov     r1, #0x0
	ldr     r0, [pc, #0x14c] @ 0x2000e1c, (=#0x2101d20)
	mvn     r1, r1
	str     r1, [r0, #0x18]
	bl      Function_20244ac
	ldr     r1, [pc, #0x140] @ 0x2000e1c, (=#0x2101d20)
	str     r0, [r1, #0x20]
	bl      Function_202cc98
	mov     r4, r0
	ldr     r0, [pc, #0x138] @ 0x2000e1c, (=#0x2101d20)
	ldr     r0, [r0, #0x20]
	bl      Function_2025e44
	mov     r1, r0
	mov     r0, r4
	bl      Function_2003b60
	bl      Function_2022844
	mov     r0, #0x3
	bl      Function_2038ffc
	cmp     r0, #0x3
	bne     branch_2000d08
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2039a64
.thumb
branch_2000d08: @ 2000d08 :thumb
	ldr     r0, [pc, #0x110] @ 0x2000e1c, (=#0x2101d20)
	ldr     r0, [r0, #0x20]
	bl      Function_20247b8
	cmp     r0, #0x0
	bne     branch_2000d1c
	mov     r0, #0x0
	bl      Function_209a74c
	b       branch_2000d5e
@ 0x2000d1c

.thumb
branch_2000d1c: @ 2000d1c :thumb
	ldr     r0, [pc, #0x100] @ 0x2000e20, (=#0x27ffc20)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2000d2a
	cmp     r0, #0x1
	beq     branch_2000d3a
	b       branch_2000d5a
@ 0x2000d2a

.thumb
branch_2000d2a: @ 2000d2a :thumb
	ldr     r0, [pc, #0xf0] @ 0x2000e1c, (=#0x2101d20)
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	ldr     r0, [pc, #0xf0] @ 0x2000e24, (=#0x4d)
	ldr     r1, [pc, #0xf4] @ 0x2000e28, (=#0x21d788c)
	bl      Function_2000ec4
	b       branch_2000d5e
@ 0x2000d3a

.thumb
branch_2000d3a: @ 2000d3a :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_200f344
	ldr     r0, [pc, #0xd0] @ 0x2000e1c, (=#0x2101d20)
	mov     r1, #0x1
	str     r1, [r0, #0x1c]
	ldr     r0, [pc, #0xd8] @ 0x2000e2c, (=#0x39)
	ldr     r1, [pc, #0xdc] @ 0x2000e30, (=#0x21d0f70)
	bl      Function_2000ec4
	b       branch_2000d5e
@ 0x2000d5a

.thumb
branch_2000d5a: @ 2000d5a :thumb
	bl      Function_2022974
.thumb
branch_2000d5e: @ 2000d5e :thumb
	ldr     r0, [pc, #0xd4] @ 0x2000e34, (=#0x21bf67c)
	mov     r1, #0x1
	str     r1, [r0, #0x6c]
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bl      Function_2001028
	bl      Function_200ab84
	bl      Function_2017428
	mov     r1, #0x0
	ldr     r0, [pc, #0xa4] @ 0x2000e1c, (=#0x2101d20)
	mov     r7, #0xc3
	ldr     r6, [pc, #0xbc] @ 0x2000e38, (=#0x21bf6dc)
	ldr     r4, [pc, #0xb4] @ 0x2000e34, (=#0x21bf67c)
	str     r1, [r0, #0x4]
	mov     r5, r1
	lsl     r7, r7, #2
.thumb
branch_2000d84: @ 2000d84 :thumb
	bl      Function_2000f30
	bl      Function_200106c
	bl      Function_2017b9c
	mov     r0, #0xc3
	ldr     r1, [r4, #0x38]
	lsl     r0, r0, #2
	and     r0, r1
	cmp     r0, r7
	bne     branch_2000da8
	ldrb    r0, [r6, #0x8]
	cmp     r0, #0x0
	bne     branch_2000da8
	mov     r0, #0x0
	bl      Function_2000f60
.thumb
branch_2000da8: @ 2000da8 :thumb
	bl      Function_20349ec
	cmp     r0, #0x0
	beq     branch_2000dd8
	bl      Function_2000f30
	bl      Function_2000e54
	ldr     r0, [r4, #0x18]
	bl      Function_201cdd4
	ldr     r0, [r4, #0x24]
	bl      Function_201cdd4
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	bne     branch_2000dd8
	mov     r0, #0x1
	mov     r1, r0
	blx     Function_20c12b4
	ldr     r0, [r4, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x2c]
.thumb
branch_2000dd8: @ 2000dd8 :thumb
	bl      Function_20137c4
	bl      Function_2017458
	bl      Function_20241cc
	ldr     r0, [r4, #0x24]
	bl      Function_201cdd4
	mov     r0, #0x1
	mov     r1, r0
	blx     Function_20c12b4
	ldr     r0, [r4, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x2c]
	str     r5, [r4, #0x30]
	bl      Function_200abf0
	bl      Function_200f27c
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2000e0c
	ldr     r0, [r4, #0x4]
	blx     r1
.thumb
branch_2000e0c: @ 2000e0c :thumb
	bl      Function_2003bd8
	ldr     r0, [r4, #0x20]
	bl      Function_201cdd4
	b       branch_2000d84
@ 0x2000e18

.word 0x2101d20 @ 0x2000e18
.word 0x2101d20 @ 0x2000e1c
.word 0x27ffc20 @ 0x2000e20
.word 0x4d @ 0x2000e24
.word 0x21d788c @ 0x2000e28
.word 0x39 @ 0x2000e2c
.word 0x21d0f70 @ 0x2000e30
.word 0x21bf67c @ 0x2000e34
.word 0x21bf6dc @ 0x2000e38
.thumb
Function_2000e3c: @ 2000e3c :thumb
	mov     r2, #0x0
	ldr     r0, [pc, #0x10] @ 0x2000e50, (=#0x2101d20)
	mvn     r2, r2
	str     r2, [r0, #0x8]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r2, [r0, #0x10]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2000e4e


.incbin "baserom/arm9.bin", 0xe4e, 0x2000e50 - 0x2000e4e


.word 0x2101d20 @ 0x2000e50
.thumb
Function_2000e54: @ 2000e54 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x64] @ 0x2000ebc, (=#0x2101d20)
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	bne     branch_2000e92
	ldr     r1, [r0, #0x14]
	cmp     r1, #0x0
	beq     branch_2000eb8
	mov     r1, #0x0
	ldr     r0, [r0, #0x10]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2000e74
	mov     r1, #0x0
	bl      LoadOverlay
.thumb
branch_2000e74: @ 2000e74 :thumb
	ldr     r0, [pc, #0x44] @ 0x2000ebc, (=#0x2101d20)
	mov     r2, #0x0
	ldr     r1, [r0, #0x10]
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0x14]
	ldr     r1, [pc, #0x40] @ 0x2000ec0, (=#0x2101d38)
	bl      Function_20067e8
	ldr     r1, [pc, #0x34] @ 0x2000ebc, (=#0x2101d20)
	str     r0, [r1, #0xc]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r1, #0x10]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
.thumb
branch_2000e92: @ 2000e92 :thumb
	ldr     r0, [pc, #0x28] @ 0x2000ebc, (=#0x2101d20)
	ldr     r0, [r0, #0xc]
	bl      Function_2006844
	cmp     r0, #0x0
	beq     branch_2000eb8
	ldr     r0, [pc, #0x1c] @ 0x2000ebc, (=#0x2101d20)
	ldr     r0, [r0, #0xc]
	bl      Function_2006814
	ldr     r0, [pc, #0x14] @ 0x2000ebc, (=#0x2101d20)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	ldr     r0, [r0, #0x8]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	beq     branch_2000eb8
	bl      Function_2006514
.thumb
branch_2000eb8: @ 2000eb8 :thumb
	pop     {r3,pc}
@ 0x2000eba


.incbin "baserom/arm9.bin", 0xeba, 0x2000ebc - 0x2000eba


.word 0x2101d20 @ 0x2000ebc
.word 0x2101d38 @ 0x2000ec0
.thumb
Function_2000ec4: @ 2000ec4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x14] @ 0x2000ee0, (=#0x2101d20)
	mov     r4, r1
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	beq     branch_2000ed6
	bl      Function_2022974
.thumb
branch_2000ed6: @ 2000ed6 :thumb
	ldr     r0, [pc, #0x8] @ 0x2000ee0, (=#0x2101d20)
	str     r5, [r0, #0x10]
	str     r4, [r0, #0x14]
	pop     {r3-r5,pc}
@ 0x2000ede


.incbin "baserom/arm9.bin", 0xede, 0x2000ee0 - 0x2000ede


.word 0x2101d20 @ 0x2000ee0
.thumb
Function_2000ee4: @ 2000ee4 :thumb
	push    {r3,lr}
	bl      Function_20349ec
	mov     r0, #0x1
	mov     r1, r0
	blx     Function_20c12b4
	ldr     r0, [pc, #0x18] @ 0x2000f0c, (=#0x21bf67c)
	ldr     r1, [r0, #0x2c]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x2c]
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2000f08
	ldr     r0, [r0, #0x4]
	blx     r1
.thumb
branch_2000f08: @ 2000f08 :thumb
	pop     {r3,pc}
@ 0x2000f0a


.incbin "baserom/arm9.bin", 0xf0a, 0x2000f0c - 0x2000f0a


.word 0x21bf67c @ 0x2000f0c
.thumb
Function_2000f10: @ 2000f10 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2038ab8
	cmp     r0, #0x0
	beq     branch_2000f2a
	blx     Function_20cd050
	cmp     r0, #0x1
	bne     branch_2000f2a
	mov     r0, r4
	blx     Function_20c3ee4
.thumb
branch_2000f2a: @ 2000f2a :thumb
	bl      Function_2000ee4
	pop     {r4,pc}
@ 0x2000f30

.thumb
Function_2000f30: @ 2000f30 :thumb
	push    {r3,lr}
	bl      Function_20389d8
	mov     r1, r0
	cmp     r1, #0x1
	beq     branch_2000f46
	cmp     r1, #0x2
	beq     branch_2000f4e
	cmp     r1, #0x3
	beq     branch_2000f56
	pop     {r3,pc}
@ 0x2000f46

.thumb
branch_2000f46: @ 2000f46 :thumb
	mov     r0, #0x1
	bl      Function_2000f94
	pop     {r3,pc}
@ 0x2000f4e

.thumb
branch_2000f4e: @ 2000f4e :thumb
	mov     r0, #0x0
	bl      Function_2000f94
	pop     {r3,pc}
@ 0x2000f56

.thumb
branch_2000f56: @ 2000f56 :thumb
	mov     r0, #0x1
	bl      Function_2000f94
	pop     {r3,pc}
@ 0x2000f5e


.incbin "baserom/arm9.bin", 0xf5e, 0x2000f60 - 0x2000f5e


.thumb
Function_2000f60: @ 2000f60 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x2c] @ 0x2000f90, (=#0x7fff)
	mov     r4, r0
	mov     r0, #0x0
	bl      Function_200f344
	ldr     r1, [pc, #0x20] @ 0x2000f90, (=#0x7fff)
	mov     r0, #0x1
	bl      Function_200f344
	bl      Function_2037db0
	cmp     r0, #0x0
	beq     branch_2000f84
	bl      Function_20245a4
	bl      Function_2024850
.thumb
branch_2000f84: @ 2000f84 :thumb
	bl      Function_200106c
	mov     r0, r4
	bl      Function_2000f10
	b       branch_2000f84
@ 0x2000f90

.word 0x7fff @ 0x2000f90
.thumb
Function_2000f94: @ 2000f94 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	cmp     r1, #0x3
	bne     branch_2000fa8
	mov     r0, #0x0
	mov     r1, #0x3
	mov     r2, r0
	bl      Function_2039834
	b       branch_2000fea
@ 0x2000fa8

.thumb
branch_2000fa8: @ 2000fa8 :thumb
	cmp     r7, #0x0
	bne     branch_2000fcc
	bl      Function_20389b8
	cmp     r0, #0x1
	bne     branch_2000fc0
	mov     r0, #0x0
	mov     r1, #0x6
	mov     r2, r0
	bl      Function_2039834
	b       branch_2000fea
@ 0x2000fc0

.thumb
branch_2000fc0: @ 2000fc0 :thumb
	mov     r0, #0x0
	mov     r1, #0x2
	mov     r2, r0
	bl      Function_2039834
	b       branch_2000fea
@ 0x2000fcc

.thumb
branch_2000fcc: @ 2000fcc :thumb
	bl      Function_20389b8
	cmp     r0, #0x1
	bne     branch_2000fe0
	mov     r0, #0x0
	mov     r1, #0x5
	mov     r2, r0
	bl      Function_2039834
	b       branch_2000fea
@ 0x2000fe0

.thumb
branch_2000fe0: @ 2000fe0 :thumb
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      Function_2039834
.thumb
branch_2000fea: @ 2000fea :thumb
	bl      Function_2037db0
	bl      Function_2000ee4
	bl      Function_2003bd8
	ldr     r4, [pc, #0x2c] @ 0x2001024, (=#0x21bf67c)
	mov     r5, #0x0
	mov     r6, #0x1
.thumb
branch_2000ffc: @ 2000ffc :thumb
	bl      Function_200106c
	bl      Function_2017b9c
	cmp     r5, #0x1e
	blt     branch_200100e
	ldr     r0, [r4, #0x48]
	tst     r0, r6
	bne     branch_200101a
.thumb
branch_200100e: @ 200100e :thumb
	bl      Function_2000ee4
	cmp     r5, #0x1e
	bge     branch_2000ffc
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_2000ffc
@ 0x200101a

.thumb
branch_200101a: @ 200101a :thumb
	mov     r0, r7
	bl      Function_2000f60
	pop     {r3-r7,pc}
@ 0x2001022


.incbin "baserom/arm9.bin", 0x1022, 0x2001024 - 0x2001022


.word 0x21bf67c @ 0x2001024
.thumb
Function_2001028: @ 2001028 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	bl      Function_201384c
	ldr     r0, [pc, #0x30] @ 0x2001068, (=#0x21bf67c)
	ldr     r3, [sp, #0x10]
	ldr     r4, [r0, #0x2c]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r5, [sp, #0x14]
	add     r0, r1, r0
	lsl     r2, r0, #24
	ldr     r0, [sp, #0x0]
	lsl     r3, r3, #8
	lsl     r1, r0, #16
	mul     r3, r5
	ldr     r0, [sp, #0xc]
	lsl     r3, r3, #16
	add     r0, r0, r3
	add     r0, r1, r0
	add     r5, r2, r0
	add     r0, r4, r5
	bl      SetIRNGSeed
	add     r0, r4, r5
	bl      SetPRNGSeed
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2001066


.incbin "baserom/arm9.bin", 0x1066, 0x2001068 - 0x2001066


.word 0x21bf67c @ 0x2001068
.thumb
Function_200106c: @ 200106c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0xac] @ 0x2001120, (=#0x27fffa8)
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	and     r0, r1
	asr     r0, r0, #15
	beq     branch_2001102
	ldr     r0, [pc, #0xa4] @ 0x2001124, (=#0x21bf6dc)
	ldrb    r0, [r0, #0x7]
	cmp     r0, #0x0
	bne     branch_20010e8
	bl      Function_201e630
	blx     Function_20d09b8
	cmp     r0, #0x1
	bne     branch_2001098
	ldr     r0, [pc, #0x94] @ 0x2001128, (=#0x2101d20)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
.thumb
branch_2001098: @ 2001098 :thumb
	ldr     r6, [pc, #0x8c] @ 0x2001128, (=#0x2101d20)
	mov     r0, #0xc
	ldr     r1, [r6, #0x4]
	ldr     r4, [pc, #0x80] @ 0x2001120, (=#0x27fffa8)
	mov     r2, #0x10
	mov     r5, r0
	ldr     r7, [pc, #0x7c] @ 0x2001124, (=#0x21bf6dc)
	orr     r5, r2
.thumb
branch_20010a8: @ 20010a8 :thumb
	ldrb    r2, [r7, #0x6]
	mov     r0, #0xc
	cmp     r2, #0x0
	beq     branch_20010b6
	cmp     r1, #0x0
	bne     branch_20010b6
	mov     r0, r5
.thumb
branch_20010b6: @ 20010b6 :thumb
	mov     r1, #0x0
	mov     r2, r1
	blx     Function_20cb324
	blx     Function_20cd9cc
	cmp     r0, #0x0
	beq     branch_20010cc
	blx     Function_20cb218
	b       branch_20010e0
@ 0x20010cc

.thumb
branch_20010cc: @ 20010cc :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	and     r0, r1
	asr     r0, r0, #15
	beq     branch_20010e0
	mov     r0, #0x1
	str     r0, [r6, #0x4]
	mov     r1, r0
	b       branch_20010a8
@ 0x20010e0

.thumb
branch_20010e0: @ 20010e0 :thumb
	bl      Function_201e5fc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20010e8

.thumb
branch_20010e8: @ 20010e8 :thumb
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     Function_20cb29c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_200111a
	mov     r0, #0x2
	mov     r1, #0x0
	blx     Function_20cb144
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2001102

.thumb
branch_2001102: @ 2001102 :thumb
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     Function_20cb29c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_200111a
	ldr     r1, [pc, #0x14] @ 0x2001128, (=#0x2101d20)
	mov     r0, #0x2
	ldr     r1, [r1, #0x0]
	blx     Function_20cb144
.thumb
branch_200111a: @ 200111a :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200111e


.incbin "baserom/arm9.bin", 0x111e, 0x2001120 - 0x200111e


.word 0x27fffa8 @ 0x2001120
.word 0x21bf6dc @ 0x2001124
.word 0x2101d20 @ 0x2001128
.thumb
Startpoint_200112c: @ 200112c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r3
	mov     r1, #0x38
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r3, r5
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0x0]
	bl      Function_20149f0
	str     r0, [r4, #0x28]
	strh    r6, [r4, #0x2c]
	mov     r1, r4
	strh    r7, [r4, #0x2e]
	mov     r0, #0x0
	add     r1, #0x30
	strb    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x31
	strb    r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0xff
	add     r1, #0x32
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x33
	strb    r0, [r1, #0x0]
	mov     r1, r4
	ldr     r0, [sp, #0x0]
	add     r1, #0x34
	strb    r0, [r1, #0x0]
	mov     r0, r4
	ldrb    r1, [r4, #0x17]
	add     r0, #0x20
	ldrb    r2, [r0, #0x0]
	lsl     r1, r1, #24
	mov     r0, #0xf
	lsr     r3, r1, #28
	mov     r1, #0xf
	bic     r2, r0
	and     r3, r1
	orr     r3, r2
	mov     r2, r4
	add     r2, #0x20
	strb    r3, [r2, #0x0]
	mov     r2, r4
	add     r2, #0x20
	ldrb    r2, [r2, #0x0]
	mov     r3, #0xf0
	bic     r2, r3
	ldrb    r3, [r4, #0x18]
	lsl     r3, r3, #28
	lsr     r3, r3, #28
	lsl     r3, r3, #28
	lsr     r3, r3, #24
	orr     r3, r2
	mov     r2, r4
	add     r2, #0x20
	strb    r3, [r2, #0x0]
	mov     r2, r4
	add     r2, #0x21
	ldrb    r2, [r2, #0x0]
	bic     r2, r0
	ldrb    r0, [r4, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	and     r0, r1
	mov     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x3f
	bic     r0, r1
	ldrh    r1, [r4, #0x1a]
	lsl     r1, r1, #29
	lsr     r1, r1, #29
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	mov     r1, #0x3f
	and     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x7f
	bic     r0, r1
	ldrh    r1, [r4, #0x1a]
	lsl     r1, r1, #17
	lsr     r1, r1, #26
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	mov     r1, #0x7f
	and     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x80
	bic     r1, r0
	mov     r0, r4
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	ldrh    r1, [r4, #0x10]
	ldrh    r0, [r4, #0x12]
	cmp     r1, r0
	bcs     branch_2001230
	strh    r1, [r4, #0x12]
.thumb
branch_2001230: @ 2001230 :thumb
	ldrb    r2, [r4, #0x18]
	ldr     r0, [r4, #0x28]
	lsl     r1, r2, #28
	lsr     r1, r1, #28
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	ldrb    r1, [r4, #0x17]
	lsl     r2, r2, #24
	lsr     r2, r2, #28
	lsl     r1, r1, #24
	lsr     r1, r1, #28
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	lsr     r1, r1, #8
	lsr     r2, r2, #16
	orr     r1, r2
	orr     r1, r3
	bl      Function_2014a40
	ldrb    r1, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bl      Function_201ada4
	ldrh    r1, [r4, #0x2c]
	ldrh    r3, [r4, #0x12]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2001688
	mov     r0, r4
	bl      Function_2001720
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2001ad8
	ldr     r0, [r5, #0xc]
	bl      Function_201a954
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2001286


.incbin "baserom/arm9.bin", 0x1286, 0x2001288 - 0x2001286


.thumb
Startpoint_2001288: @ 2001288 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r6, [pc, #0xf0] @ 0x2001380, (=#0x21bf67c)
	mov     r3, #0x0
	add     r1, #0x33
	strb    r3, [r1, #0x0]
	ldr     r1, [r6, #0x48]
	mov     r2, #0x1
	mov     r5, r1
	tst     r5, r2
	beq     branch_20012b0
	ldrh    r1, [r4, #0x2c]
	ldrh    r0, [r4, #0x2e]
	ldr     r2, [r4, #0x0]
	add     r0, r1, r0
	lsl     r0, r0, #3
	add     r0, r2, r0
	ldr     r0, [r0, #0x4]
	pop     {r4-r6,pc}
@ 0x20012b0

.thumb
branch_20012b0: @ 20012b0 :thumb
	mov     r5, #0x2
	tst     r1, r5
	beq     branch_20012ba
	.hword  0x1f28 @ sub r0, r5, #0x4
	pop     {r4-r6,pc}
@ 0x20012ba

.thumb
branch_20012ba: @ 20012ba :thumb
	ldr     r5, [r6, #0x4c]
	mov     r1, #0x40
	tst     r1, r5
	beq     branch_20012d8
	mov     r1, r2
	bl      Function_2001a18
	cmp     r0, #0x0
	bne     branch_20012d2
	mov     r0, #0x1
	add     r4, #0x33
	strb    r0, [r4, #0x0]
.thumb
branch_20012d2: @ 20012d2 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x20012d8

.thumb
branch_20012d8: @ 20012d8 :thumb
	mov     r1, #0x80
	mov     r3, r5
	tst     r3, r1
	beq     branch_20012f8
	mov     r1, r2
	mov     r3, r2
	bl      Function_2001a18
	cmp     r0, #0x0
	bne     branch_20012f2
	mov     r0, #0x2
	add     r4, #0x33
	strb    r0, [r4, #0x0]
.thumb
branch_20012f2: @ 20012f2 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x20012f8

.thumb
branch_20012f8: @ 20012f8 :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #23
	lsr     r0, r0, #30
	beq     branch_2001308
	cmp     r0, #0x1
	beq     branch_200130e
	cmp     r0, #0x2
	beq     branch_2001320
.thumb
branch_2001308: @ 2001308 :thumb
	mov     r0, #0x0
	mov     r1, r0
	b       branch_2001330
@ 0x200130e

.thumb
branch_200130e: @ 200130e :thumb
	mov     r0, #0x20
	mov     r1, #0x10
	and     r0, r5
	and     r1, r5
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	b       branch_2001330
@ 0x2001320

.thumb
branch_2001320: @ 2001320 :thumb
	lsl     r0, r1, #2
	add     r1, #0x80
	and     r0, r5
	and     r1, r5
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
.thumb
branch_2001330: @ 2001330 :thumb
	cmp     r0, #0x0
	beq     branch_2001354
	ldrh    r2, [r4, #0x12]
	mov     r0, r4
	mov     r1, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2001a18
	cmp     r0, #0x0
	bne     branch_200134e
	mov     r0, #0x3
	add     r4, #0x33
	strb    r0, [r4, #0x0]
.thumb
branch_200134e: @ 200134e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001354

.thumb
branch_2001354: @ 2001354 :thumb
	cmp     r1, #0x0
	beq     branch_2001378
	ldrh    r2, [r4, #0x12]
	mov     r1, #0x1
	mov     r0, r4
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r3, r1
	bl      Function_2001a18
	cmp     r0, #0x0
	bne     branch_2001372
	mov     r0, #0x4
	add     r4, #0x33
	strb    r0, [r4, #0x0]
.thumb
branch_2001372: @ 2001372 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001378

.thumb
branch_2001378: @ 2001378 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x200137e


.incbin "baserom/arm9.bin", 0x137e, 0x2001380 - 0x200137e


.word 0x21bf67c @ 0x2001380
.thumb
Startpoint_2001384: @ 2001384 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_2001390
	ldrh    r0, [r4, #0x2c]
	strh    r0, [r1, #0x0]
.thumb
branch_2001390: @ 2001390 :thumb
	cmp     r2, #0x0
	beq     branch_2001398
	ldrh    r0, [r4, #0x2e]
	strh    r0, [r2, #0x0]
.thumb
branch_2001398: @ 2001398 :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_2014a20
	mov     r0, r4
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_2018238
	pop     {r4,pc}
@ 0x20013ac

.thumb
Startpoint_20013ac: @ 20013ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bl      Function_201ada4
	ldrh    r1, [r4, #0x2c]
	ldrh    r3, [r4, #0x12]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2001688
	mov     r0, r4
	bl      Function_2001720
	ldr     r0, [r4, #0xc]
	bl      Function_201a954
	pop     {r4,pc}
@ 0x20013d6


.incbin "baserom/arm9.bin", 0x13d6, 0x20013d8 - 0x20013d6


.thumb
Startpoint_20013d8: @ 20013d8 :thumb
	push    {r4,r5}
	ldrb    r5, [r0, #0x17]
	mov     r4, #0xf0
	lsl     r1, r1, #28
	bic     r5, r4
	lsr     r1, r1, #24
	orr     r1, r5
	strb    r1, [r0, #0x17]
	ldrb    r5, [r0, #0x18]
	mov     r1, #0xf
	bic     r5, r1
	mov     r1, #0xf
	and     r1, r2
	orr     r1, r5
	strb    r1, [r0, #0x18]
	ldrb    r2, [r0, #0x18]
	lsl     r1, r3, #28
	lsr     r1, r1, #24
	bic     r2, r4
	orr     r1, r2
	strb    r1, [r0, #0x18]
	pop     {r4,r5}
	bx      lr
@ 0x2001406


.incbin "baserom/arm9.bin", 0x1406, 0x2001408 - 0x2001406


.thumb
Startpoint_2001408: @ 2001408 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	beq     branch_2001422
	mov     r5, r4
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
.thumb
branch_2001422: @ 2001422 :thumb
	strh    r2, [r4, #0x2c]
	mov     r0, r4
	strh    r3, [r4, #0x2e]
	mov     r3, #0x0
	add     r0, #0x30
	strb    r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x31
	add     r1, sp, #0x0
	strb    r3, [r0, #0x0]
	ldrh    r0, [r1, #0x14]
	cmp     r0, #0x40
	bne     branch_200144c
	ldrh    r1, [r1, #0x10]
	mov     r0, r4
	mov     r2, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2001a18
	b       branch_2001460
@ 0x200144c

.thumb
branch_200144c: @ 200144c :thumb
	cmp     r0, #0x80
	bne     branch_2001460
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2001a18
.thumb
branch_2001460: @ 2001460 :thumb
	ldr     r1, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_200146a
	ldrh    r0, [r4, #0x2c]
	strh    r0, [r1, #0x0]
.thumb
branch_200146a: @ 200146a :thumb
	ldr     r1, [sp, #0x1c]
	cmp     r1, #0x0
	beq     branch_2001474
	ldrh    r0, [r4, #0x2e]
	strh    r0, [r1, #0x0]
.thumb
branch_2001474: @ 2001474 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x200147a


.incbin "baserom/arm9.bin", 0x147a, 0x200147c - 0x200147a


.thumb
Startpoint_200147c: @ 200147c :thumb
	push    {r3-r6}
	mov     r4, r0
	add     r4, #0x20
	ldrb    r6, [r4, #0x0]
	mov     r4, #0xf
	mov     r5, #0xf
	bic     r6, r4
	and     r1, r5
	orr     r6, r1
	mov     r1, r0
	add     r1, #0x20
	strb    r6, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x20
	lsl     r2, r2, #28
	ldrb    r1, [r1, #0x0]
	mov     r6, #0xf0
	lsr     r2, r2, #24
	bic     r1, r6
	orr     r2, r1
	mov     r1, r0
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x21
	ldrb    r2, [r1, #0x0]
	mov     r1, r3
	and     r1, r5
	bic     r2, r4
	orr     r2, r1
	mov     r1, r0
	add     r1, #0x21
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x24
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x80
	add     r0, #0x24
	orr     r1, r2
	strb    r1, [r0, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x20014d0

.thumb
Startpoint_20014d0: @ 20014d0 :thumb
	ldrh    r2, [r0, #0x2c]
	ldrh    r0, [r0, #0x2e]
	add     r0, r2, r0
	strh    r0, [r1, #0x0]
	bx      lr
@ 0x20014da


.incbin "baserom/arm9.bin", 0x14da, 0x20014dc - 0x20014da


.thumb
Startpoint_20014dc: @ 20014dc :thumb
	cmp     r1, #0x0
	beq     branch_20014e4
	ldrh    r3, [r0, #0x2c]
	strh    r3, [r1, #0x0]
.thumb
branch_20014e4: @ 20014e4 :thumb
	cmp     r2, #0x0
	beq     branch_20014ec
	ldrh    r0, [r0, #0x2e]
	strh    r0, [r2, #0x0]
.thumb
branch_20014ec: @ 20014ec :thumb
	bx      lr
@ 0x20014ee


.incbin "baserom/arm9.bin", 0x14ee, 0x20014f0 - 0x20014ee


.thumb
Startpoint_20014f0: @ 20014f0 :thumb
	add     r0, #0x33
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x20014f6


.incbin "baserom/arm9.bin", 0x14f6, 0x20014f8 - 0x20014f6


.thumb
Startpoint_20014f8: @ 20014f8 :thumb
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #3
	add     r0, r2, r0
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2001502


.incbin "baserom/arm9.bin", 0x1502, 0x2001504 - 0x2001502


.thumb
Startpoint_2001504: @ 2001504 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x13
	bhi     branch_20015c6
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	lsl     r6, r5, #0
	lsl     r2, r6, #0
	lsl     r4, r5, #2
	lsl     r6, r6, #0
	lsl     r2, r7, #0
	lsl     r6, r7, #0
	lsl     r2, r0, #1
	lsl     r2, r1, #1
	lsl     r4, r4, #1
	lsl     r4, r5, #1
	lsl     r4, r6, #1
	lsl     r4, r7, #1
	lsl     r4, r0, #2
	lsl     r4, r1, #2
	lsl     r4, r2, #2
	lsl     r4, r3, #2
	lsl     r4, r4, #2
	lsl     r0, r5, #2
	ldr     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2001544

.thumb
Startpoint_2001544: @ 2001544 :thumb
	ldr     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2001548

.thumb
Startpoint_2001548: @ 2001548 :thumb
	ldrh    r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x200154c

.thumb
Startpoint_200154c: @ 200154c :thumb
	ldrh    r0, [r4, #0x12]
	pop     {r4,pc}
@ 0x2001550

.thumb
Startpoint_2001550: @ 2001550 :thumb
	ldrb    r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x2001554

.thumb
Startpoint_2001554: @ 2001554 :thumb
	ldrb    r0, [r4, #0x15]
	pop     {r4,pc}
@ 0x2001558

.thumb
Startpoint_2001558: @ 2001558 :thumb
	ldrb    r0, [r4, #0x16]
	pop     {r4,pc}
@ 0x200155c

.thumb
Startpoint_200155c: @ 200155c :thumb
	ldrb    r0, [r4, #0x17]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	pop     {r4,pc}
@ 0x2001564

.thumb
Startpoint_2001564: @ 2001564 :thumb
	ldrh    r0, [r4, #0x1a]
	mov     r1, #0x1
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2002df8
	ldrh    r1, [r4, #0x1a]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	add     r0, r1, r0
	pop     {r4,pc}
@ 0x200157e

.thumb
Startpoint_200157e: @ 200157e :thumb
	ldrb    r0, [r4, #0x17]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	pop     {r4,pc}
@ 0x2001586

.thumb
Startpoint_2001586: @ 2001586 :thumb
	ldrb    r0, [r4, #0x18]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	pop     {r4,pc}
@ 0x200158e

.thumb
Startpoint_200158e: @ 200158e :thumb
	ldrb    r0, [r4, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	pop     {r4,pc}
@ 0x2001596

.thumb
Startpoint_2001596: @ 2001596 :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	pop     {r4,pc}
@ 0x200159e

.thumb
Startpoint_200159e: @ 200159e :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #25
	lsr     r0, r0, #28
	pop     {r4,pc}
@ 0x20015a6

.thumb
Startpoint_20015a6: @ 20015a6 :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #23
	lsr     r0, r0, #30
	pop     {r4,pc}
@ 0x20015ae

.thumb
Startpoint_20015ae: @ 20015ae :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	pop     {r4,pc}
@ 0x20015b6

.thumb
Startpoint_20015b6: @ 20015b6 :thumb
	ldrh    r0, [r4, #0x1a]
	lsl     r0, r0, #16
	lsr     r0, r0, #31
	pop     {r4,pc}
@ 0x20015be

.thumb
Startpoint_20015be: @ 20015be :thumb
	ldr     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x20015c2

.thumb
Startpoint_20015c2: @ 20015c2 :thumb
	ldr     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x20015c6

.thumb
branch_20015c6: @ 20015c6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,pc}
@ 0x20015cc

.thumb
Startpoint_20015cc: @ 20015cc :thumb
	str     r1, [r0, #0x0]
	bx      lr
@ 0x20015d0

.thumb
Function_20015d0: @ 20015d0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	cmp     r5, #0x0
	beq     branch_2001684
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	str     r3, [sp, #0x0]
	beq     branch_2001640
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0x20
	ldrb    r2, [r0, #0x0]
	mov     r3, r4
	lsl     r0, r2, #24
	lsr     r0, r0, #28
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	lsl     r0, r2, #28
	mov     r2, r6
	add     r2, #0x21
	ldrb    r2, [r2, #0x0]
	lsr     r0, r0, #28
	lsl     r0, r0, #24
	lsl     r2, r2, #28
	lsr     r2, r2, #28
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	mov     r2, r5
	lsl     r0, r0, #26
	lsr     r0, r0, #26
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r6, #0xc]
	add     r6, #0x24
	ldrb    r1, [r6, #0x0]
	lsl     r1, r1, #25
	lsr     r1, r1, #25
	bl      Function_201d7e0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2001640

.thumb
branch_2001640: @ 2001640 :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldrb    r1, [r6, #0x18]
	mov     r3, r4
	lsl     r0, r1, #28
	lsr     r0, r0, #28
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	ldrb    r0, [r6, #0x17]
	lsl     r1, r1, #24
	lsr     r1, r1, #28
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #8
	lsr     r1, r1, #16
	orr     r0, r1
	orr     r0, r2
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x1a]
	mov     r2, r5
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldrh    r1, [r6, #0x1a]
	ldr     r0, [r6, #0xc]
	lsl     r1, r1, #17
	lsr     r1, r1, #26
	bl      Function_201d7e0
.thumb
branch_2001684: @ 2001684 :thumb
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2001688

.thumb
Function_2001688: @ 2001688 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r3, [sp, #0x0]
	ldrh    r0, [r5, #0x1a]
	mov     r4, r1
	mov     r1, #0x1
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r6, r2
	bl      Function_2002df8
	ldrh    r1, [r5, #0x1a]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_200171a
.thumb
branch_20016bc: @ 20016bc :thumb
	ldr     r1, [r5, #0x0]
	lsl     r0, r4, #3
	str     r0, [sp, #0x8]
	add     r0, r1, r0
	ldr     r1, [r0, #0x4]
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_20016d4
	ldrb    r0, [r5, #0x15]
	str     r0, [sp, #0x4]
	b       branch_20016d8
@ 0x20016d4

.thumb
branch_20016d4: @ 20016d4 :thumb
	ldrb    r0, [r5, #0x14]
	str     r0, [sp, #0x4]
.thumb
branch_20016d8: @ 20016d8 :thumb
	ldrb    r0, [r5, #0x17]
	lsl     r0, r0, #28
	lsr     r3, r0, #28
	ldr     r0, [sp, #0xc]
	mov     r2, r0
	mul     r2, r6
	add     r0, r3, r2
	lsl     r0, r0, #24
	ldr     r3, [r5, #0x8]
	lsr     r7, r0, #24
	cmp     r3, #0x0
	beq     branch_20016f6
	mov     r0, r5
	mov     r2, r7
	blx     r3
.thumb
branch_20016f6: @ 20016f6 :thumb
	ldr     r2, [r5, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	ldr     r1, [r2, r1]
	ldr     r2, [sp, #0x4]
	mov     r3, r7
	bl      Function_20015d0
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_20016bc
.thumb
branch_200171a: @ 200171a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x200171e


.incbin "baserom/arm9.bin", 0x171e, 0x2001720 - 0x200171e


.thumb
Function_2001720: @ 2001720 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x1a]
	mov     r1, #0x1
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2002df8
	ldrh    r1, [r4, #0x1a]
	ldrh    r5, [r4, #0x2e]
	lsl     r2, r1, #25
	lsr     r2, r2, #28
	add     r0, r2, r0
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	ldrb    r0, [r4, #0x17]
	mul     r3, r5
	ldrb    r2, [r4, #0x16]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	add     r0, r0, r3
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	lsl     r0, r1, #16
	lsr     r0, r0, #31
	cmp     r0, #0x3
	bhi     branch_2001776
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r1, #0
	lsl     r6, r1, #0
	lsl     r6, r1, #0
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0xc]
	bl      Function_2014a58
.thumb
branch_2001776: @ 2001776 :thumb
	pop     {r3-r5,pc}
@ 0x2001778

.thumb
Function_2001778: @ 2001778 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrh    r0, [r4, #0x1a]
	mov     r5, r1
	lsl     r1, r0, #16
	lsr     r1, r1, #31
	cmp     r1, #0x3
	bhi     branch_20017dc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r0, #1
	lsl     r4, r0, #1
	lsl     r4, r0, #1
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, #0x1
	bl      Function_2002df8
	ldrh    r1, [r4, #0x1a]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldrb    r1, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	ldrb    r2, [r4, #0x16]
	ldrb    r4, [r4, #0x17]
	lsl     r1, r1, #28
	mul     r3, r5
	lsl     r4, r4, #28
	lsr     r4, r4, #28
	add     r3, r4, r3
	lsl     r3, r3, #16
	lsr     r1, r1, #28
	lsr     r3, r3, #16
	bl      Function_201ae78
.thumb
branch_20017dc: @ 20017dc :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x20017e0

.thumb
Function_20017e0: @ 20017e0 :thumb
	push    {r4-r7}
	ldrh    r4, [r0, #0x2e]
	ldrh    r3, [r0, #0x2c]
	cmp     r1, #0x0
	ldrh    r2, [r0, #0x12]
	bne     branch_2001872
	cmp     r2, #0x1
	bne     branch_20017f4
	mov     r1, #0x0
	b       branch_200180c
@ 0x20017f4

.thumb
branch_20017f4: @ 20017f4 :thumb
	lsr     r7, r2, #31
	lsl     r6, r2, #31
	sub     r6, r6, r7
	mov     r5, #0x1f
	ror     r6, r5
	lsr     r1, r2, #1
	add     r5, r7, r6
	add     r1, r1, r5
	sub     r1, r2, r1
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
.thumb
branch_200180c: @ 200180c :thumb
	cmp     r3, #0x0
	bne     branch_2001840
	cmp     r4, #0x0
	beq     branch_200183a
	ldr     r2, [r0, #0x0]
	lsl     r1, r3, #3
	mov     r3, #0x2
	add     r1, r2, r1
	mvn     r3, r3
.thumb
branch_200181e: @ 200181e :thumb
	.hword  0x1e62 @ sub r2, r4, #0x1
	lsl     r2, r2, #16
	lsr     r4, r2, #16
	lsl     r2, r4, #3
	add     r2, r1, r2
	ldr     r2, [r2, #0x4]
	cmp     r2, r3
	beq     branch_2001836
	strh    r4, [r0, #0x2e]
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x2001836

.thumb
branch_2001836: @ 2001836 :thumb
	cmp     r4, #0x0
	bne     branch_200181e
.thumb
branch_200183a: @ 200183a :thumb
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x2001840

.thumb
branch_2001840: @ 2001840 :thumb
	cmp     r4, r1
	bls     branch_200186a
	ldr     r5, [r0, #0x0]
	lsl     r2, r3, #3
	add     r2, r5, r2
	mov     r5, #0x2
	mvn     r5, r5
.thumb
branch_200184e: @ 200184e :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	lsl     r4, r4, #16
	lsr     r4, r4, #16
	lsl     r6, r4, #3
	add     r6, r2, r6
	ldr     r6, [r6, #0x4]
	cmp     r6, r5
	beq     branch_2001866
	strh    r4, [r0, #0x2e]
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x2001866

.thumb
branch_2001866: @ 2001866 :thumb
	cmp     r4, r1
	bhi     branch_200184e
.thumb
branch_200186a: @ 200186a :thumb
	strh    r1, [r0, #0x2e]
	.hword  0x1e59 @ sub r1, r3, #0x1
	strh    r1, [r0, #0x2c]
	b       branch_20018f8
@ 0x2001872

.thumb
branch_2001872: @ 2001872 :thumb
	cmp     r2, #0x1
	bne     branch_200187a
	mov     r5, #0x0
	b       branch_200188e
@ 0x200187a

.thumb
branch_200187a: @ 200187a :thumb
	lsr     r7, r2, #31
	lsl     r6, r2, #31
	sub     r6, r6, r7
	mov     r5, #0x1f
	ror     r6, r5
	lsr     r1, r2, #1
	add     r5, r7, r6
	add     r1, r1, r5
	lsl     r1, r1, #16
	lsr     r5, r1, #16
.thumb
branch_200188e: @ 200188e :thumb
	ldrh    r1, [r0, #0x10]
	sub     r1, r1, r2
	cmp     r3, r1
	bne     branch_20018c8
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r4, r2
	bge     branch_20018c2
	ldr     r5, [r0, #0x0]
	lsl     r1, r3, #3
	add     r1, r5, r1
	mov     r5, #0x2
	mvn     r5, r5
.thumb
branch_20018a6: @ 20018a6 :thumb
	add     r3, r4, #0x1
	lsl     r3, r3, #16
	lsr     r4, r3, #16
	lsl     r3, r4, #3
	add     r3, r1, r3
	ldr     r3, [r3, #0x4]
	cmp     r3, r5
	beq     branch_20018be
	strh    r4, [r0, #0x2e]
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x20018be

.thumb
branch_20018be: @ 20018be :thumb
	cmp     r4, r2
	blt     branch_20018a6
.thumb
branch_20018c2: @ 20018c2 :thumb
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x20018c8

.thumb
branch_20018c8: @ 20018c8 :thumb
	cmp     r4, r5
	bcs     branch_20018f2
	ldr     r2, [r0, #0x0]
	lsl     r1, r3, #3
	mov     r6, #0x2
	add     r1, r2, r1
	mvn     r6, r6
.thumb
branch_20018d6: @ 20018d6 :thumb
	add     r2, r4, #0x1
	lsl     r2, r2, #16
	lsr     r4, r2, #16
	lsl     r2, r4, #3
	add     r2, r1, r2
	ldr     r2, [r2, #0x4]
	cmp     r2, r6
	beq     branch_20018ee
	strh    r4, [r0, #0x2e]
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x20018ee

.thumb
branch_20018ee: @ 20018ee :thumb
	cmp     r4, r5
	bcc     branch_20018d6
.thumb
branch_20018f2: @ 20018f2 :thumb
	strh    r5, [r0, #0x2e]
	add     r1, r3, #0x1
	strh    r1, [r0, #0x2c]
.thumb
branch_20018f8: @ 20018f8 :thumb
	mov     r0, #0x2
	pop     {r4-r7}
	bx      lr
@ 0x20018fe


.incbin "baserom/arm9.bin", 0x18fe, 0x2001900 - 0x20018fe


.thumb
Startpoint_2001900: @ 2001900 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrh    r0, [r5, #0x12]
	mov     r4, r1
	mov     r7, r2
	cmp     r4, r0
	blt     branch_200192c
	ldrb    r1, [r5, #0x18]
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bl      Function_201ada4
	ldrh    r1, [r5, #0x2c]
	ldrh    r3, [r5, #0x12]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2001688
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200192c

.thumb
branch_200192c: @ 200192c :thumb
	ldrh    r0, [r5, #0x1a]
	mov     r1, #0x1
	lsl     r0, r0, #17
	lsr     r0, r0, #26
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2002df8
	ldrh    r1, [r5, #0x1a]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r7, #0x0
	ldrb    r0, [r5, #0x18]
	bne     branch_20019ba
	lsl     r0, r0, #28
	lsr     r7, r0, #28
	mov     r2, r4
	lsl     r3, r7, #4
	mul     r2, r6
	orr     r3, r7
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_201c04c
	ldrh    r1, [r5, #0x2c]
	mov     r0, r5
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2001688
	ldrb    r0, [r5, #0x17]
	lsl     r0, r0, #28
	lsr     r2, r0, #28
	ldrh    r0, [r5, #0x12]
	mov     r1, r0
	mul     r1, r6
	add     r0, r2, r1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [r5, #0xc]
	bl      Function_201c294
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_201c298
	lsl     r0, r0, #3
	lsl     r1, r4, #19
	sub     r0, r0, r6
	lsr     r1, r1, #16
	lsl     r0, r0, #16
	str     r1, [sp, #0x0]
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldrb    r1, [r5, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x0
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r3, r6
	bl      Function_201ae78
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20019ba

.thumb
branch_20019ba: @ 20019ba :thumb
	lsl     r0, r0, #28
	lsr     r3, r0, #28
	mov     r2, r4
	mul     r2, r6
	lsl     r6, r3, #4
	orr     r3, r6
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_201c04c
	ldrh    r0, [r5, #0x12]
	ldrh    r1, [r5, #0x2c]
	mov     r3, r4
	sub     r2, r0, r4
	add     r1, r1, r2
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	mov     r0, r5
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2001688
	ldr     r0, [r5, #0xc]
	bl      Function_201c294
	lsl     r0, r0, #19
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x17]
	mov     r2, #0x0
	mov     r3, r2
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	str     r0, [sp, #0x4]
	ldrb    r1, [r5, #0x18]
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bl      Function_201ae78
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2001a16


.incbin "baserom/arm9.bin", 0x1a16, 0x2001a18 - 0x2001a16


.thumb
Function_2001a18: @ 2001a18 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r4, r0
	str     r3, [sp, #0x8]
	ldrh    r0, [r4, #0x2e]
	mov     r6, #0x0
	mov     r5, r6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	mov     r7, r6
	cmp     r0, #0x0
	bls     branch_2001a6a
.thumb
branch_2001a34: @ 2001a34 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_20017e0
	orr     r5, r0
	cmp     r0, #0x2
	bne     branch_2001a5e
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldrh    r1, [r4, #0x2c]
	ldrh    r0, [r4, #0x2e]
	ldr     r2, [r4, #0x0]
	add     r0, r1, r0
	lsl     r0, r0, #3
	add     r0, r2, r0
	ldr     r1, [r0, #0x4]
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2001a34
.thumb
branch_2001a5e: @ 2001a5e :thumb
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x4]
	cmp     r7, r0
	bcc     branch_2001a34
.thumb
branch_2001a6a: @ 2001a6a :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2001ad2
	cmp     r5, #0x3
	bhi     branch_2001a88
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r1, #0
	lsl     r2, r5, #0
	lsl     r2, r5, #0
.thumb
branch_2001a88: @ 2001a88 :thumb
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2001a8e

.thumb
Startpoint_2001a8e: @ 2001a8e :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      Function_2001778
	mov     r0, r4
	bl      Function_2001720
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2001ad8
	ldr     r0, [r4, #0xc]
	bl      Function_201a954
	b       branch_2001ad2
@ 0x2001aac

.thumb
Startpoint_2001aac: @ 2001aac :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      Function_2001778
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r1, r6
	bl      Startpoint_2001900
	mov     r0, r4
	bl      Function_2001720
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2001ad8
	ldr     r0, [r4, #0xc]
	bl      Function_201a954
.thumb
branch_2001ad2: @ 2001ad2 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2001ad8

.thumb
Function_2001ad8: @ 2001ad8 :thumb
	push    {r3-r5,lr}
	ldr     r3, [r0, #0x4]
	mov     r2, r1
	cmp     r3, #0x0
	beq     branch_2001af2
	ldrh    r5, [r0, #0x2c]
	ldrh    r4, [r0, #0x2e]
	ldr     r1, [r0, #0x0]
	add     r4, r5, r4
	lsl     r4, r4, #3
	add     r1, r1, r4
	ldr     r1, [r1, #0x4]
	blx     r3
.thumb
branch_2001af2: @ 2001af2 :thumb
	pop     {r3-r5,pc}
@ 0x2001af4

.thumb
Startpoint_2001af4: @ 2001af4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r3, [sp, #0x0]
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r6, r1
	mov     r1, #0x20
	mov     r7, r2
	str     r0, [sp, #0x4]
	bl      Function_2018144
	mov     r4, r0
	mov     r3, r5
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_20149f0
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x24]
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x0]
	strb    r0, [r4, #0x15]
	mov     r0, r4
	bl      Function_2001f1c
	strb    r0, [r4, #0x16]
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r1, #0x0
	strb    r0, [r4, #0x1c]
	strb    r6, [r4, #0x17]
	strb    r7, [r4, #0x18]
	ldrb    r0, [r5, #0x8]
	bl      Function_2002df8
	mov     r6, r0
	ldrb    r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_2002df8
	add     r0, r6, r0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2002df8
	mov     r6, r0
	ldrb    r0, [r5, #0x8]
	mov     r1, #0x3
	bl      Function_2002df8
	add     r0, r6, r0
	strb    r0, [r4, #0x1a]
	mov     r0, r4
	bl      Function_2001f5c
	mov     r0, r4
	bl      Function_2001fe8
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2001b7a


.incbin "baserom/arm9.bin", 0x1b7a, 0x2001b7c - 0x2001b7a


.thumb
Startpoint_2001b7c: @ 2001b7c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	add     r4, sp, #0x0
	ldrb    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Startpoint_2001af4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_201a954
	mov     r0, r4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2001b9c

.thumb
Startpoint_2001b9c: @ 2001b9c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	mov     r6, r1
	mov     r4, r2
	mov     r1, #0x0
	bl      Function_2002df8
	mov     r1, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x0
	mov     r3, r6
	bl      Startpoint_2001b7c
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2001bc4

.thumb
Startpoint_2001bc4: @ 2001bc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_2001bd0
	ldrb    r0, [r4, #0x15]
	strb    r0, [r1, #0x0]
.thumb
branch_2001bd0: @ 2001bd0 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2014a20
	ldrb    r0, [r4, #0x1c]
	mov     r1, r4
	bl      Function_2018238
	pop     {r4,pc}
@ 0x2001be0

.thumb
Startpoint_2001be0: @ 2001be0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, #0x0
	ldr     r2, [pc, #0xa4] @ 0x2001c8c, (=#0x21bf67c)
	strb    r1, [r4, #0x1b]
	ldr     r2, [r2, #0x48]
	mov     r5, #0x1
	mov     r3, r2
	tst     r3, r5
	beq     branch_2001c06
	ldr     r0, [pc, #0x98] @ 0x2001c90, (=#0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #3
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	pop     {r3-r5,pc}
@ 0x2001c06

.thumb
branch_2001c06: @ 2001c06 :thumb
	ldr     r3, [r4, #0x10]
	tst     r3, r2
	beq     branch_2001c16
	ldr     r0, [pc, #0x80] @ 0x2001c90, (=#0x5dc)
	bl      Function_2005748
	.hword  0x1ee8 @ sub r0, r5, #0x3
	pop     {r3-r5,pc}
@ 0x2001c16

.thumb
branch_2001c16: @ 2001c16 :thumb
	mov     r3, #0x40
	tst     r3, r2
	beq     branch_2001c30
	ldr     r2, [pc, #0x70] @ 0x2001c90, (=#0x5dc)
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001c2a
	mov     r0, r5
	strb    r0, [r4, #0x1b]
.thumb
branch_2001c2a: @ 2001c2a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x2001c30

.thumb
branch_2001c30: @ 2001c30 :thumb
	mov     r1, #0x80
	tst     r1, r2
	beq     branch_2001c4c
	ldr     r2, [pc, #0x58] @ 0x2001c90, (=#0x5dc)
	mov     r1, r5
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001c46
	mov     r0, #0x2
	strb    r0, [r4, #0x1b]
.thumb
branch_2001c46: @ 2001c46 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x2001c4c

.thumb
branch_2001c4c: @ 2001c4c :thumb
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_2001c68
	ldr     r2, [pc, #0x3c] @ 0x2001c90, (=#0x5dc)
	mov     r1, #0x2
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001c62
	mov     r0, #0x3
	strb    r0, [r4, #0x1b]
.thumb
branch_2001c62: @ 2001c62 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x2001c68

.thumb
branch_2001c68: @ 2001c68 :thumb
	mov     r1, #0x10
	tst     r2, r1
	beq     branch_2001c84
	ldr     r2, [pc, #0x20] @ 0x2001c90, (=#0x5dc)
	mov     r1, #0x3
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001c7e
	mov     r0, #0x4
	strb    r0, [r4, #0x1b]
.thumb
branch_2001c7e: @ 2001c7e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x2001c84

.thumb
branch_2001c84: @ 2001c84 :thumb
	sub     r1, #0x11
	mov     r0, r1
	pop     {r3-r5,pc}
@ 0x2001c8a


.incbin "baserom/arm9.bin", 0x1c8a, 0x2001c8c - 0x2001c8a


.word 0x21bf67c @ 0x2001c8c
.word 0x5dc @ 0x2001c90
.thumb
Startpoint_2001c94: @ 2001c94 :thumb
	push    {r4-r6,lr}
	mov     r2, r1
	mov     r4, r0
	mov     r1, #0x0
	ldr     r3, [pc, #0x9c] @ 0x2001d3c, (=#0x21bf67c)
	strb    r1, [r4, #0x1b]
	ldr     r5, [r3, #0x48]
	mov     r3, #0x1
	mov     r6, r5
	tst     r6, r3
	beq     branch_2001cbc
	ldr     r0, [pc, #0x94] @ 0x2001d40, (=#0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #3
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	pop     {r4-r6,pc}
@ 0x2001cbc

.thumb
branch_2001cbc: @ 2001cbc :thumb
	ldr     r6, [r4, #0x10]
	tst     r6, r5
	beq     branch_2001cce
	ldr     r0, [pc, #0x7c] @ 0x2001d40, (=#0x5dc)
	bl      Function_2005748
	mov     r0, #0x1
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001cce

.thumb
branch_2001cce: @ 2001cce :thumb
	mov     r6, #0x40
	tst     r6, r5
	beq     branch_2001ce6
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001ce0
	mov     r0, #0x1
	strb    r0, [r4, #0x1b]
.thumb
branch_2001ce0: @ 2001ce0 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001ce6

.thumb
branch_2001ce6: @ 2001ce6 :thumb
	mov     r1, #0x80
	tst     r1, r5
	beq     branch_2001d00
	mov     r1, r3
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001cfa
	mov     r0, #0x2
	strb    r0, [r4, #0x1b]
.thumb
branch_2001cfa: @ 2001cfa :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001d00

.thumb
branch_2001d00: @ 2001d00 :thumb
	mov     r1, #0x20
	tst     r1, r5
	beq     branch_2001d1a
	mov     r1, #0x2
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001d14
	mov     r0, #0x3
	strb    r0, [r4, #0x1b]
.thumb
branch_2001d14: @ 2001d14 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001d1a

.thumb
branch_2001d1a: @ 2001d1a :thumb
	mov     r1, #0x10
	mov     r3, r5
	tst     r3, r1
	beq     branch_2001d36
	mov     r1, #0x3
	bl      Function_2001dcc
	cmp     r0, #0x1
	bne     branch_2001d30
	mov     r0, #0x4
	strb    r0, [r4, #0x1b]
.thumb
branch_2001d30: @ 2001d30 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x2001d36

.thumb
branch_2001d36: @ 2001d36 :thumb
	sub     r1, #0x11
	mov     r0, r1
	pop     {r4-r6,pc}
@ 0x2001d3c

.word 0x21bf67c @ 0x2001d3c
.word 0x5dc @ 0x2001d40
.thumb
Startpoint_2001d44: @ 2001d44 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x5
	bhi     branch_2001dba
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r4, r3, #0
	lsl     r0, r5, #0
	lsl     r6, r6, #0
	lsl     r4, r0, #1
	lsl     r2, r2, #1
	ldr     r0, [pc, #0x58] @ 0x2001dc0, (=#0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #3
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	pop     {r4,pc}
@ 0x2001d76

.thumb
Startpoint_2001d76: @ 2001d76 :thumb
	ldr     r0, [pc, #0x48] @ 0x2001dc0, (=#0x5dc)
	bl      Function_2005748
	mov     r0, #0x1
	mvn     r0, r0
	pop     {r4,pc}
@ 0x2001d82


.incbin "baserom/arm9.bin", 0x1d82, 0x2001dba - 0x2001d82


.thumb
branch_2001dba: @ 2001dba :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,pc}
@ 0x2001dc0

.word 0x5dc @ 0x2001dc0

.incbin "baserom/arm9.bin", 0x1dc4, 0x2001dcc - 0x2001dc4


.thumb
Function_2001dcc: @ 2001dcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r2
	ldrb    r4, [r5, #0x15]
	bl      Function_2001e24
	cmp     r0, #0x0
	bne     branch_2001de4
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2001de4

.thumb
branch_2001de4: @ 2001de4 :thumb
	ldrb    r0, [r5, #0x8]
	mov     r1, #0x6
	bl      Function_2002df8
	add     r1, sp, #0x8
	mov     r7, r0
	mov     r0, r5
	add     r1, #0x1
	add     r2, sp, #0x8
	mov     r3, r4
	bl      Function_2002018
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x1a]
	add     r3, sp, #0x8
	mov     r1, r7
	str     r0, [sp, #0x4]
	ldrb    r2, [r3, #0x1]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r5, #0x4]
	bl      Function_201ae78
	mov     r0, r5
	bl      Function_2001fe8
	mov     r0, r6
	bl      Function_2005748
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2001e24

.thumb
Function_2001e24: @ 2001e24 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	cmp     r1, #0x0
	bne     branch_2001e62
	ldrb    r6, [r5, #0xa]
	cmp     r6, #0x1
	bhi     branch_2001e36
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001e36

.thumb
branch_2001e36: @ 2001e36 :thumb
	ldrb    r4, [r5, #0x15]
	mov     r1, r6
	mov     r0, r4
	blx     Division
	cmp     r1, #0x0
	bne     branch_2001e5a
	ldrb    r0, [r5, #0xb]
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	bne     branch_2001e50
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001e50

.thumb
branch_2001e50: @ 2001e50 :thumb
	.hword  0x1e70 @ sub r0, r6, #0x1
	add     r0, r4, r0
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001e5a

.thumb
branch_2001e5a: @ 2001e5a :thumb
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001e62

.thumb
branch_2001e62: @ 2001e62 :thumb
	cmp     r1, #0x1
	bne     branch_2001e9a
	ldrb    r1, [r5, #0xa]
	cmp     r1, #0x1
	bhi     branch_2001e70
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001e70

.thumb
branch_2001e70: @ 2001e70 :thumb
	ldrb    r6, [r5, #0x15]
	.hword  0x1e4c @ sub r4, r1, #0x1
	mov     r0, r6
	blx     Division
	cmp     r4, r1
	bne     branch_2001e92
	ldrb    r0, [r5, #0xb]
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	bne     branch_2001e8a
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001e8a

.thumb
branch_2001e8a: @ 2001e8a :thumb
	sub     r0, r6, r4
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001e92

.thumb
branch_2001e92: @ 2001e92 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001e9a

.thumb
branch_2001e9a: @ 2001e9a :thumb
	cmp     r1, #0x2
	bne     branch_2001ed0
	ldrb    r3, [r5, #0x9]
	cmp     r3, #0x1
	bhi     branch_2001ea8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001ea8

.thumb
branch_2001ea8: @ 2001ea8 :thumb
	ldrb    r2, [r5, #0xa]
	ldrb    r1, [r5, #0x15]
	cmp     r1, r2
	bcs     branch_2001ec8
	ldrb    r0, [r5, #0xb]
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	bne     branch_2001ebc
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001ebc

.thumb
branch_2001ebc: @ 2001ebc :thumb
	.hword  0x1e58 @ sub r0, r3, #0x1
	mul     r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001ec8

.thumb
branch_2001ec8: @ 2001ec8 :thumb
	sub     r0, r1, r2
	lsl     r0, r0, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001ed0

.thumb
branch_2001ed0: @ 2001ed0 :thumb
	ldrb    r2, [r5, #0x9]
	cmp     r2, #0x1
	bhi     branch_2001eda
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001eda

.thumb
branch_2001eda: @ 2001eda :thumb
	ldrb    r1, [r5, #0xa]
	ldrb    r0, [r5, #0x15]
	.hword  0x1e52 @ sub r2, r2, #0x1
	mul     r2, r1
	cmp     r0, r2
	blt     branch_2001efc
	ldrb    r2, [r5, #0xb]
	lsl     r2, r2, #24
	lsr     r2, r2, #30
	bne     branch_2001ef2
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001ef2

.thumb
branch_2001ef2: @ 2001ef2 :thumb
	blx     Division
	lsl     r0, r1, #24
	asr     r2, r0, #24
	b       branch_2001f02
@ 0x2001efc

.thumb
branch_2001efc: @ 2001efc :thumb
	add     r0, r0, r1
	lsl     r0, r0, #24
	asr     r2, r0, #24
.thumb
branch_2001f02: @ 2001f02 :thumb
	ldr     r1, [r5, #0x0]
	lsl     r0, r2, #3
	add     r0, r1, r0
	ldr     r1, [r0, #0x4]
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2001f16
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2001f16

.thumb
branch_2001f16: @ 2001f16 :thumb
	strb    r2, [r5, #0x15]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2001f1c

.thumb
Function_2001f1c: @ 2001f1c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x9]
	ldrb    r0, [r5, #0xa]
	mov     r6, #0x0
	mov     r4, r6
	mul     r0, r1
	cmp     r0, #0x0
	ble     branch_2001f58
	mov     r7, r6
.thumb
branch_2001f30: @ 2001f30 :thumb
	ldr     r2, [r5, #0x0]
	lsl     r1, r4, #3
	ldr     r1, [r2, r1]
	ldrb    r0, [r5, #0x8]
	mov     r2, r7
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r6, r0
	bcs     branch_2001f48
	mov     r6, r0
.thumb
branch_2001f48: @ 2001f48 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldrb    r1, [r5, #0x9]
	ldrb    r0, [r5, #0xa]
	mul     r0, r1
	cmp     r4, r0
	blt     branch_2001f30
.thumb
branch_2001f58: @ 2001f58 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2001f5c

.thumb
Function_2001f5c: @ 2001f5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	mov     r1, #0x6
	bl      Function_2002df8
	mov     r1, r0
	ldr     r0, [r5, #0x4]
	bl      Function_201ada4
	ldrb    r0, [r5, #0x19]
	ldrb    r1, [r5, #0x16]
	ldrb    r7, [r5, #0x17]
	lsl     r0, r0, #1
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #0x9]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_2001fe4
.thumb
branch_2001f8a: @ 2001f8a :thumb
	ldrb    r2, [r5, #0xa]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_2001fd0
.thumb
branch_2001f92: @ 2001f92 :thumb
	ldrb    r3, [r5, #0xb]
	mul     r2, r6
	ldrb    r0, [r5, #0x1a]
	lsl     r3, r3, #28
	lsr     r3, r3, #28
	add     r0, r0, r3
	ldrb    r1, [r5, #0x18]
	mul     r0, r4
	add     r2, r4, r2
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	lsl     r2, r2, #3
	ldr     r2, [r3, r2]
	ldrb    r1, [r5, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r3, r7
	bl      Function_201d738
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	ldrb    r2, [r5, #0xa]
	lsr     r4, r0, #24
	cmp     r4, r2
	bcc     branch_2001f92
.thumb
branch_2001fd0: @ 2001fd0 :thumb
	ldr     r0, [sp, #0xc]
	add     r0, r7, r0
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldrb    r0, [r5, #0x9]
	cmp     r6, r0
	bcc     branch_2001f8a
.thumb
branch_2001fe4: @ 2001fe4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2001fe8

.thumb
Function_2001fe8: @ 2001fe8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r1, [r4, #0xb]
	lsl     r1, r1, #26
	lsr     r1, r1, #30
	cmp     r1, #0x1
	beq     branch_2002012
	ldrb    r3, [r4, #0x15]
	add     r1, sp, #0x0
	add     r1, #0x1
	add     r2, sp, #0x0
	bl      Function_2002018
	add     r3, sp, #0x0
	ldrb    r2, [r3, #0x1]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x4]
	bl      Function_2014a58
.thumb
branch_2002012: @ 2002012 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2002016


.incbin "baserom/arm9.bin", 0x2016, 0x2002018 - 0x2002016


.thumb
Function_2002018: @ 2002018 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r3
	ldrb    r1, [r5, #0xa]
	mov     r0, r7
	mov     r6, r2
	blx     Division
	ldrb    r2, [r5, #0x19]
	ldrb    r1, [r5, #0x16]
	lsl     r2, r2, #1
	add     r1, r1, r2
	mul     r1, r0
	strb    r1, [r4, #0x0]
	ldrb    r1, [r5, #0xa]
	mov     r0, r7
	blx     Division
	ldrb    r2, [r5, #0xb]
	ldrb    r3, [r5, #0x1a]
	ldrb    r0, [r5, #0x18]
	lsl     r2, r2, #28
	lsr     r2, r2, #28
	add     r2, r3, r2
	mul     r2, r1
	add     r0, r0, r2
	strb    r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2002052


.incbin "baserom/arm9.bin", 0x2052, 0x2002054 - 0x2002052


.thumb
Function_2002054: @ 2002054 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r5, [sp, #0x3c]
	str     r2, [sp, #0xc]
	mov     r7, r0
	str     r1, [sp, #0x8]
	str     r3, [sp, #0x10]
	ldr     r2, [pc, #0x98] @ 0x20020fc, (=#0x169)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r5
	bl      Function_200b144
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, r5
	bl      Function_2013a04
	mov     r1, r4
	mov     r2, #0x29
	mov     r3, #0x0
	mov     r6, r0
	bl      Function_2013a4c
	mov     r3, #0x2a
	mov     r2, r3
	mov     r0, r6
	mov     r1, r4
	sub     r3, #0x2c
	bl      Function_2013a4c
	mov     r0, r4
	bl      Function_200b190
	mov     r0, r5
	mov     r1, #0x1
	str     r6, [sp, #0x14]
	bl      Function_201a778
	mov     r1, r0
	str     r1, [sp, #0x18]
	mov     r0, #0x0
	add     r2, sp, #0x14
	strb    r0, [r2, #0x8]
	mov     r0, #0x1
	strb    r0, [r2, #0x9]
	mov     r0, #0x2
	strb    r0, [r2, #0xa]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0xf
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0x30
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0xc0
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	bl      Function_201a8d4
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r1, #0x1
	bl      Function_200dc48
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	add     r3, sp, #0x28
	ldrb    r3, [r3, #0x10]
	add     r0, sp, #0x14
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Startpoint_2001b7c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x20020fc

.word 0x169 @ 0x20020fc
.thumb
Function_2002100: @ 2002100 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x4]
	bl      Function_2002054
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2002114


.incbin "baserom/arm9.bin", 0x2114, 0x20021b0 - 0x2002114


.thumb
Function_20021b0: @ 20021b0 :thumb
	ldrh    r3, [r1, #0x0]
	ldr     r2, [pc, #0x18] @ 0x20021cc, (=#0xffff)
	cmp     r3, r2
	beq     branch_20021c4
.thumb
branch_20021b8: @ 20021b8 :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r1, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, r2
	bne     branch_20021b8
.thumb
branch_20021c4: @ 20021c4 :thumb
	ldr     r1, [pc, #0x4] @ 0x20021cc, (=#0xffff)
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x20021ca


.incbin "baserom/arm9.bin", 0x21ca, 0x20021cc - 0x20021ca


.word 0xffff @ 0x20021cc
.thumb
Function_20021d0: @ 20021d0 :thumb
	push    {r4,r5}
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_20021e8
	mov     r5, r0
.thumb
branch_20021da: @ 20021da :thumb
	ldrh    r3, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r3, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r2
	bcc     branch_20021da
.thumb
branch_20021e8: @ 20021e8 :thumb
	lsl     r1, r2, #1
	add     r0, r0, r1
	pop     {r4,r5}
	bx      lr
@ 0x20021f0

.thumb
Function_20021f0: @ 20021f0 :thumb
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2002208, (=#0xffff)
	mov     r3, #0x0
	cmp     r2, r1
	beq     branch_2002204
.thumb
branch_20021fa: @ 20021fa :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r2, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r1
	bne     branch_20021fa
.thumb
branch_2002204: @ 2002204 :thumb
	mov     r0, r3
	bx      lr
@ 0x2002208

.word 0xffff @ 0x2002208

.incbin "baserom/arm9.bin", 0x220c, 0x2002294 - 0x200220c


.thumb
Function_2002294: @ 2002294 :thumb
	ldr     r3, [pc, #0x4] @ 0x200229c, (=#0x2002279)
	mov     r2, r1
	ldr     r1, [pc, #0x4] @ 0x20022a0, (=#0xffff)
	bx      r3
@ 0x200229c

.word 0x2002279 @ 0x200229c
.word 0xffff @ 0x20022a0

.incbin "baserom/arm9.bin", 0x22a4, 0x2002328 - 0x20022a4


.thumb
Function_2002328: @ 2002328 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	mov     r6, r4
	add     r6, #0x20
	cmp     r1, #0x6
	bls     branch_200233e
	b       branch_20027a0
@ 0x200233e

.thumb
branch_200233e: @ 200233e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r6, r3, #13
	lsl     r0, r7, #13
	lsl     r2, r4, #14
	lsl     r2, r2, #15
	lsl     r0, r5, #16
	lsl     r4, r6, #16
	ldr     r0, [pc, #0x264] @ 0x20025c0, (=#0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_200236a
	ldrb    r0, [r6, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	bne     branch_200237c
.thumb
branch_200236a: @ 200236a :thumb
	ldr     r0, [pc, #0x258] @ 0x20025c4, (=#0x21bf6bc)
	ldrh    r0, [r0, #0x22]
	cmp     r0, #0x0
	beq     branch_200239a
	ldr     r0, [pc, #0x254] @ 0x20025c8, (=#0x2101d44)
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	beq     branch_200239a
.thumb
branch_200237c: @ 200237c :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #25
	beq     branch_200239a
	ldr     r1, [pc, #0x234] @ 0x20025c8, (=#0x2101d44)
	mov     r0, #0x40
	ldrb    r2, [r1, #0x0]
	orr     r0, r2
	strb    r0, [r1, #0x0]
.thumb
branch_200239a: @ 200239a :thumb
	mov     r0, r4
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_20023f4
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #25
	beq     branch_20023f4
	mov     r0, r4
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x208] @ 0x20025c8, (=#0x2101d44)
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #31
	lsr     r1, r1, #31
	beq     branch_20023ee
	ldr     r1, [pc, #0x1f4] @ 0x20025c0, (=#0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	bne     branch_20023e0
	ldr     r1, [pc, #0x1f0] @ 0x20025c4, (=#0x21bf6bc)
	ldrh    r1, [r1, #0x20]
	cmp     r1, #0x0
	beq     branch_20023ee
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	beq     branch_20023ee
.thumb
branch_20023e0: @ 20023e0 :thumb
	ldrb    r1, [r6, #0x0]
	mov     r0, #0x10
	add     r4, #0x2a
	orr     r0, r1
	strb    r0, [r6, #0x0]
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_20023ee: @ 20023ee :thumb
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x20023f4

.thumb
branch_20023f4: @ 20023f4 :thumb
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r1, r0, #25
	mov     r0, r4
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	ldrh    r5, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #8
	cmp     r5, r0
	bne     branch_2002418
	bl      Function_2022974
.thumb
branch_2002418: @ 2002418 :thumb
	ldr     r0, [pc, #0x1b0] @ 0x20025cc, (=#0xf0fd)
	cmp     r5, r0
	bgt     branch_2002442
	bge     branch_2002476
	ldr     r1, [pc, #0x1ac] @ 0x20025d0, (=#0x25bd)
	cmp     r5, r1
	bgt     branch_2002438
	.hword  0x1e48 @ sub r0, r1, #0x1
	cmp     r5, r0
	blt     branch_2002436
	bne     branch_2002430
	b       branch_2002640
@ 0x2002430

.thumb
branch_2002430: @ 2002430 :thumb
	cmp     r5, r1
	bne     branch_2002436
	b       branch_2002654
@ 0x2002436

.thumb
branch_2002436: @ 2002436 :thumb
	b       branch_2002668
@ 0x2002438

.thumb
branch_2002438: @ 2002438 :thumb
	mov     r0, #0xe
	lsl     r0, r0, #12
	cmp     r5, r0
	beq     branch_200245a
	b       branch_2002668
@ 0x2002442

.thumb
branch_2002442: @ 2002442 :thumb
	ldr     r0, [pc, #0x190] @ 0x20025d4, (=#0xfffe)
	cmp     r5, r0
	bgt     branch_200244c
	beq     branch_2002482
	b       branch_2002668
@ 0x200244c

.thumb
branch_200244c: @ 200244c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_2002454
	b       branch_2002668
@ 0x2002454

.thumb
branch_2002454: @ 2002454 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x200245a

.thumb
branch_200245a: @ 200245a :thumb
	ldrb    r0, [r4, #0xa]
	mov     r1, #0x1
	strh    r0, [r4, #0xc]
	ldrb    r0, [r4, #0x9]
	bl      Function_2002df8
	ldrh    r1, [r4, #0x12]
	ldrh    r2, [r4, #0xe]
	add     sp, #0xc
	add     r0, r1, r0
	add     r0, r2, r0
	strh    r0, [r4, #0xe]
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2002476

.thumb
branch_2002476: @ 2002476 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2002482

.thumb
branch_2002482: @ 2002482 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	str     r0, [r4, #0x0]
	bl      Function_201d0f0
	lsl     r0, r0, #16
	ldr     r1, [pc, #0x148] @ 0x20025d8, (=#0xfe06)
	lsr     r0, r0, #16
	cmp     r0, r1
	bgt     branch_20024ba
	blt     branch_200249a
	b       branch_20025e0
@ 0x200249a

.thumb
branch_200249a: @ 200249a :thumb
	mov     r1, #0x2
	lsl     r1, r1, #8
	sub     r1, r0, r1
	cmp     r1, #0x4
	bhi     branch_20024c4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r5, #1
	lsl     r4, r2, #2
	lsl     r6, r6, #2
	lsl     r6, r1, #3
	lsl     r2, r3, #3
.thumb
branch_20024ba: @ 20024ba :thumb
	mov     r1, #0xff
	lsl     r1, r1, #8
	cmp     r0, r1
	bgt     branch_20024c6
	beq     branch_20024ce
.thumb
branch_20024c4: @ 20024c4 :thumb
	b       branch_2002632
@ 0x20024c6

.thumb
branch_20024c6: @ 20024c6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_2002598
	b       branch_2002632
@ 0x20024ce

.thumb
branch_20024ce: @ 20024ce :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_201d134
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0xff
	bne     branch_20024fe
	ldrb    r0, [r4, #0x15]
	ldrb    r2, [r4, #0x1b]
	.hword  0x1e41 @ sub r1, r0, #0x1
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	add     r0, #0x64
	strb    r0, [r4, #0x1b]
	cmp     r2, #0x64
	bcc     branch_20025ac
	cmp     r2, #0x6b
	bcs     branch_20025ac
	sub     r2, #0x64
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	b       branch_2002506
@ 0x20024fe

.thumb
branch_20024fe: @ 20024fe :thumb
	cmp     r0, #0x64
	bcc     branch_2002506
	strb    r0, [r4, #0x1b]
	b       branch_2002632
@ 0x2002506

.thumb
branch_2002506: @ 2002506 :thumb
	lsl     r1, r0, #1
	add     r0, r1, #0x1
	strb    r0, [r4, #0x15]
	add     r0, r1, #0x2
	strb    r0, [r4, #0x17]
	ldrb    r0, [r4, #0x15]
	ldrb    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x17]
	bl      Function_201d9fc
	b       branch_2002632
@ 0x200251c


.incbin "baserom/arm9.bin", 0x251c, 0x2002598 - 0x200251c


.thumb
branch_2002598: @ 2002598 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_201d134
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x64
	beq     branch_20025ae
	cmp     r0, #0xc8
	beq     branch_20025b6
.thumb
branch_20025ac: @ 20025ac :thumb
	b       branch_2002632
@ 0x20025ae

.thumb
branch_20025ae: @ 20025ae :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	strb    r0, [r4, #0x1a]
	b       branch_2002632
@ 0x20025b6

.thumb
branch_20025b6: @ 20025b6 :thumb
	ldr     r0, [pc, #0x24] @ 0x20025dc, (=#0xfffc)
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	strb    r0, [r4, #0x1a]
	b       branch_2002632
@ 0x20025c0

.word 0x21bf67c @ 0x20025c0
.word 0x21bf6bc @ 0x20025c4
.word 0x2101d44 @ 0x20025c8
.word 0xf0fd @ 0x20025cc
.word 0x25bd @ 0x20025d0
.word 0xfffe @ 0x20025d4
.word 0xfe06 @ 0x20025d8
.word 0xfffc @ 0x20025dc
.thumb
branch_20025e0: @ 20025e0 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_201d134
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0xfe
	lsl     r0, r0, #8
	cmp     r1, r0
	beq     branch_2002616
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_2002632
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_20027b4
	ldr     r0, [r4, #0x0]
	bl      Function_201d0c8
	str     r0, [r4, #0x0]
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2002616

.thumb
branch_2002616: @ 2002616 :thumb
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_20027b4
	ldr     r0, [r4, #0x0]
	bl      Function_201d0c8
	str     r0, [r4, #0x0]
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2002632

.thumb
branch_2002632: @ 2002632 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_201d0c8
	str     r0, [r4, #0x0]
	add     sp, #0xc
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2002640

.thumb
branch_2002640: @ 2002640 :thumb
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_20027b4
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2002654

.thumb
branch_2002654: @ 2002654 :thumb
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_20027b4
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2002668

.thumb
branch_2002668: @ 2002668 :thumb
	ldrb    r0, [r6, #0x0]
	mov     r1, r5
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bl      Function_2002cfc
	mov     r5, r0
	ldrh    r0, [r4, #0xc]
	mov     r2, r5
	mov     r3, r5
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0xe]
	add     r2, #0x80
	add     r3, #0x81
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #0x18]
	mov     r1, r5
	str     r0, [sp, #0x8]
	ldrb    r2, [r2, #0x0]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_201aed0
	add     r5, #0x80
	ldrb    r1, [r5, #0x0]
	ldrh    r0, [r4, #0x10]
	ldrh    r2, [r4, #0xc]
	add     sp, #0xc
	add     r0, r1, r0
	add     r0, r2, r0
	strh    r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x20026aa


.incbin "baserom/arm9.bin", 0x26aa, 0x20027a0 - 0x20026aa


.thumb
branch_20027a0: @ 20027a0 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x20027a6


.incbin "baserom/arm9.bin", 0x27a6, 0x20027a8 - 0x20027a6


.thumb
Function_20027a8: @ 20027a8 :thumb
	ldr     r1, [pc, #0x4] @ 0x20027b0, (=#0x2101d44)
	strh    r0, [r1, #0x2]
	bx      lr
@ 0x20027ae


.incbin "baserom/arm9.bin", 0x27ae, 0x20027b0 - 0x20027ae


.word 0x2101d44 @ 0x20027b0
.thumb
Function_20027b4: @ 20027b4 :thumb
	ldr     r1, [pc, #0x24] @ 0x20027dc, (=#0x2101d44)
	add     r0, #0x20
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	beq     branch_20027ca
	ldrb    r2, [r0, #0x2]
	mov     r1, #0xff
	bic     r2, r1
	strb    r2, [r0, #0x2]
	bx      lr
@ 0x20027ca

.thumb
branch_20027ca: @ 20027ca :thumb
	ldrb    r2, [r0, #0x1]
	mov     r1, #0x60
	bic     r2, r1
	strb    r2, [r0, #0x1]
	ldrb    r2, [r0, #0x1]
	mov     r1, #0x1f
	bic     r2, r1
	strb    r2, [r0, #0x1]
	bx      lr
@ 0x20027dc

.word 0x2101d44 @ 0x20027dc

.incbin "baserom/arm9.bin", 0x27e0, 0x2002ac8 - 0x20027e0


.thumb
Function_2002ac8: @ 2002ac8 :thumb
	ldr     r2, [pc, #0x14] @ 0x2002ae0, (=#0x2101d44)
	mov     r1, #0x1
	ldrb    r3, [r2, #0x0]
	lsl     r0, r0, #24
	bic     r3, r1
	lsr     r1, r0, #24
	mov     r0, #0x1
	and     r0, r1
	orr     r0, r3
	strb    r0, [r2, #0x0]
	bx      lr
@ 0x2002ade


.incbin "baserom/arm9.bin", 0x2ade, 0x2002ae0 - 0x2002ade


.word 0x2101d44 @ 0x2002ae0
.thumb
Function_2002ae4: @ 2002ae4 :thumb
	push    {r3,r4}
	ldr     r1, [pc, #0x34] @ 0x2002b1c, (=#0x2101d44)
	mov     r3, #0x4
	ldrb    r2, [r1, #0x0]
	mov     r4, #0x1
	bic     r2, r3
	mov     r3, r0
	and     r3, r4
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #31
	lsr     r3, r3, #29
	orr     r2, r3
	asr     r0, r0, #1
	and     r0, r4
	strb    r2, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #31
	ldrb    r2, [r1, #0x0]
	mov     r3, #0x20
	lsr     r0, r0, #26
	bic     r2, r3
	orr     r0, r2
	strb    r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2002b1a


.incbin "baserom/arm9.bin", 0x2b1a, 0x2002b1c - 0x2002b1a


.word 0x2101d44 @ 0x2002b1c
.thumb
Function_2002b20: @ 2002b20 :thumb
	ldr     r2, [pc, #0x14] @ 0x2002b38, (=#0x2101d44)
	lsl     r0, r0, #24
	ldrb    r3, [r2, #0x0]
	lsr     r0, r0, #24
	mov     r1, #0x10
	lsl     r0, r0, #31
	bic     r3, r1
	lsr     r0, r0, #27
	orr     r0, r3
	strb    r0, [r2, #0x0]
	bx      lr
@ 0x2002b36


.incbin "baserom/arm9.bin", 0x2b36, 0x2002b38 - 0x2002b36


.word 0x2101d44 @ 0x2002b38

.incbin "baserom/arm9.bin", 0x2b3c, 0x2002b7c - 0x2002b3c


.thumb
Function_2002b7c: @ 2002b7c :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x2c] @ 0x2002bac, (=#0x2101d4c)
	ldr     r4, [pc, #0x2c] @ 0x2002bb0, (=#0x2101d48)
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	mov     r2, r1
	mov     r0, r1
.thumb
branch_2002b8a: @ 2002b8a :thumb
	ldr     r3, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, r3, r2
	add     r3, #0x84
	str     r0, [r3, #0x0]
	ldr     r3, [r4, #0x0]
	add     r3, r3, r2
	add     r3, #0x94
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r0, [r3, #0x0]
	cmp     r1, #0x4
	bcc     branch_2002b8a
	ldr     r0, [pc, #0x10] @ 0x2002bb4, (=#0x20e4ce4)
	bl      Function_201d670
	pop     {r4,pc}
@ 0x2002baa


.incbin "baserom/arm9.bin", 0x2baa, 0x2002bac - 0x2002baa


.word 0x2101d4c @ 0x2002bac
.word 0x2101d48 @ 0x2002bb0
.word 0x20e4ce4 @ 0x2002bb4
.thumb
Function_2002bb8: @ 2002bb8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	str     r1, [sp, #0x0]
	lsl     r4, r0, #2
	ldr     r1, [pc, #0x1c] @ 0x2002be0, (=#0x20e4cd4)
	ldr     r3, [pc, #0x20] @ 0x2002be4, (=#0x20e4cd6)
	ldrh    r1, [r1, r4]
	ldrh    r3, [r3, r4]
	mov     r0, #0xe
	mov     r2, #0x1
	bl      Function_20232e0
	ldr     r1, [pc, #0x14] @ 0x2002be8, (=#0x2101d48)
	ldr     r1, [r1, #0x0]
	add     r1, r1, r4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2002bde


.incbin "baserom/arm9.bin", 0x2bde, 0x2002be0 - 0x2002bde


.word 0x20e4cd4 @ 0x2002be0
.word 0x20e4cd6 @ 0x2002be4
.word 0x2101d48 @ 0x2002be8

.incbin "baserom/arm9.bin", 0x2bec, 0x2002cfc - 0x2002bec


.thumb
Function_2002cfc: @ 2002cfc :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x14] @ 0x2002d14, (=#0x2101d48)
	lsl     r0, r0, #2
	ldr     r2, [r2, #0x0]
	add     r0, r2, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_20234a0
	ldr     r0, [pc, #0x4] @ 0x2002d14, (=#0x2101d48)
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2002d14

.word 0x2101d48 @ 0x2002d14
.thumb
Function_2002d18: @ 2002d18 :thumb
	push    {r4,lr}
	mov     r3, r1
	add     r3, #0x20
	ldrb    r2, [r3, #0x1]
	lsl     r2, r2, #24
	lsr     r2, r2, #31
	bne     branch_2002d40
	ldrb    r2, [r3, #0x0]
	mov     r4, #0xf
	lsl     r0, r0, #24
	bic     r2, r4
	lsr     r4, r0, #24
	mov     r0, #0xf
	and     r0, r4
	orr     r0, r2
	strb    r0, [r3, #0x0]
	ldrb    r2, [r3, #0x1]
	mov     r0, #0x80
	orr     r0, r2
	strb    r0, [r3, #0x1]
.thumb
branch_2002d40: @ 2002d40 :thumb
	mov     r0, r1
	bl      Function_2002328
	pop     {r4,pc}
@ 0x2002d48


.incbin "baserom/arm9.bin", 0x2d48, 0x2002d7c - 0x2002d48


.thumb
Function_2002d7c: @ 2002d7c :thumb
	push    {r4-r6,lr}
	lsl     r4, r0, #2
	ldr     r0, [pc, #0x2c] @ 0x2002db0, (=#0x2101d48)
	mov     r5, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	add     r0, r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2002d96
	bl      Function_2022974
.thumb
branch_2002d96: @ 2002d96 :thumb
	mov     r0, r5
	bl      Function_2023e2c
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x2002db0, (=#0x2101d48)
	mov     r2, r6
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_2023620
	pop     {r4-r6,pc}
@ 0x2002db0

.word 0x2101d48 @ 0x2002db0

.incbin "baserom/arm9.bin", 0x2db4, 0x2002df8 - 0x2002db4


.thumb
Function_2002df8: @ 2002df8 :thumb
	mov     r2, #0x0
	cmp     r1, #0x7
	bhi     branch_2002e58
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	lsl     r6, r4, #0
	lsl     r6, r5, #0
	lsl     r6, r6, #0
	lsl     r6, r7, #0
	lsl     r6, r0, #1
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x3c] @ 0x2002e5c, (=#0x20e4ce4)
	ldrb    r2, [r0, r1]
	b       branch_2002e58
@ 0x2002e22


.incbin "baserom/arm9.bin", 0x2e22, 0x2002e58 - 0x2002e22


.thumb
branch_2002e58: @ 2002e58 :thumb
	mov     r0, r2
	bx      lr
@ 0x2002e5c

.word 0x20e4ce4 @ 0x2002e5c

.incbin "baserom/arm9.bin", 0x2e60, 0x2002e7c - 0x2002e60


.thumb
Function_2002e7c: @ 2002e7c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r3, r1
	str     r2, [sp, #0x4]
	mov     r0, #0xe
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_2006e84
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2002e98


.incbin "baserom/arm9.bin", 0x2e98, 0x2003b60 - 0x2002e98


.thumb
Function_2003b60: @ 2003b60 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_2003d54
	mov     r4, r0
	blx     Function_20b799c
	bl      Function_20041a0
	mov     r0, r4
	bl      Function_200413c
	mov     r0, r4
	ldr     r1, [pc, #0x48] @ 0x2003bc8, (=#0xbbc00)
	add     r0, #0x98
	blx     Function_20b9ed4
	mov     r1, r4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r2, r4
	add     r2, #0x94
	ldr     r1, [pc, #0x3c] @ 0x2003bcc, (=#0x20fece0)
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	blx     Function_20b97c8
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	blx     Function_20bacdc
	mov     r0, r4
	bl      Function_2004160
	mov     r0, r4
	bl      Function_200417c
	ldr     r0, [pc, #0x1c] @ 0x2003bd0, (=#0x2101df0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2003bd4, (=#0xbcd4c)
	str     r5, [r4, r0]
	ldrh    r0, [r6, #0x0]
	lsl     r0, r0, #26
	lsr     r0, r0, #30
	bl      Function_2004fb8
	pop     {r4-r6,pc}
@ 0x2003bc6


.incbin "baserom/arm9.bin", 0x3bc6, 0x2003bc8 - 0x2003bc6


.word 0xbbc00 @ 0x2003bc8
.word 0x20fece0 @ 0x2003bcc
.word 0x2101df0 @ 0x2003bd0
.word 0xbcd4c @ 0x2003bd4
.thumb
Function_2003bd8: @ 2003bd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	bl      Function_2003d54
	mov     r7, r0
	bl      Function_2003d28
	cmp     r0, #0x0
	bne     branch_2003bfa
	ldr     r0, [pc, #0x68] @ 0x2003c54, (=#0xbcd00)
	ldr     r1, [r7, r0]
	cmp     r1, #0x0
	ble     branch_2003bf6
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r7, r0]
.thumb
branch_2003bf6: @ 2003bf6 :thumb
	bl      Function_2003c64
.thumb
branch_2003bfa: @ 2003bfa :thumb
	bl      Function_2006224
	mov     r4, #0x0
	mov     r5, r7
	mov     r6, r7
.thumb
branch_2003c04: @ 2003c04 :thumb
	ldr     r1, [pc, #0x50] @ 0x2003c58, (=#0xbcd84)
	add     r0, r7, r4
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2003c40
	ldr     r1, [pc, #0x48] @ 0x2003c58, (=#0xbcd84)
	ldrb    r1, [r0, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldr     r1, [pc, #0x40] @ 0x2003c58, (=#0xbcd84)
	strb    r2, [r0, r1]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2003c40
	mov     r0, r1
	sub     r0, #0xc
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x34] @ 0x2003c5c, (=#0xbcd68)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r1
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r3, [pc, #0x2c] @ 0x2003c60, (=#0xbcd70)
	sub     r0, #0x24
	ldrh    r1, [r6, r1]
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	bl      Function_20059d0
.thumb
branch_2003c40: @ 2003c40 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x2
	blt     branch_2003c04
	blx     Function_20b7a24
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2003c52


.incbin "baserom/arm9.bin", 0x3c52, 0x2003c54 - 0x2003c52


.word 0xbcd00 @ 0x2003c54
.word 0xbcd84 @ 0x2003c58
.word 0xbcd68 @ 0x2003c5c
.word 0xbcd70 @ 0x2003c60
.thumb
Function_2003c64: @ 2003c64 :thumb
	push    {r4,lr}
	bl      Function_2003d54
	mov     r4, r0
	ldr     r0, [pc, #0x90] @ 0x2003d00, (=#0x2101df0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6
	bhi     branch_2003cfc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r7, #1
	lsl     r4, r1, #0
	lsl     r2, r7, #1
	lsl     r4, r2, #0
	lsl     r4, r4, #0
	lsl     r4, r6, #0
	lsl     r2, r2, #1
	mov     r0, #0x2
	bl      Function_2003d0c
	pop     {r4,pc}
@ 0x2003c96


.incbin "baserom/arm9.bin", 0x3c96, 0x2003cfc - 0x2003c96


.thumb
branch_2003cfc: @ 2003cfc :thumb
	pop     {r4,pc}
@ 0x2003cfe


.incbin "baserom/arm9.bin", 0x3cfe, 0x2003d00 - 0x2003cfe


.word 0x2101df0 @ 0x2003d00

.incbin "baserom/arm9.bin", 0x3d04, 0x2003d0c - 0x2003d04


.thumb
Function_2003d0c: @ 2003d0c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	ldr     r1, [pc, #0x8] @ 0x2003d20, (=#0xbccfc)
	mov     r2, #0x0
	strh    r2, [r0, r1]
	ldr     r0, [pc, #0x8] @ 0x2003d24, (=#0x2101df0)
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2003d20

.word 0xbccfc @ 0x2003d20
.word 0x2101df0 @ 0x2003d24
.thumb
Function_2003d28: @ 2003d28 :thumb
	push    {r4,lr}
	bl      Function_2003d54
	mov     r4, r0
	mov     r0, #0x2
	bl      Function_2004b04
	cmp     r0, #0x0
	beq     branch_2003d3e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2003d3e

.thumb
branch_2003d3e: @ 2003d3e :thumb
	ldr     r0, [pc, #0x10] @ 0x2003d50, (=#0xbcd12)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2003d4a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2003d4a

.thumb
branch_2003d4a: @ 2003d4a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2003d4e


.incbin "baserom/arm9.bin", 0x3d4e, 0x2003d50 - 0x2003d4e


.word 0xbcd12 @ 0x2003d50
.thumb
Function_2003d54: @ 2003d54 :thumb
	ldr     r0, [pc, #0x0] @ 0x2003d58, (=#0x2101df8)
	bx      lr
@ 0x2003d58

.word 0x2101df8 @ 0x2003d58
.thumb
Function_2003d5c: @ 2003d5c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	cmp     r4, #0x36
	bls     branch_2003d6a
	b       branch_2003f2e
@ 0x2003d6a

.thumb
branch_2003d6a: @ 2003d6a :thumb
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r7, #1
	lsl     r6, r7, #1
	lsl     r4, r0, #2
	lsl     r2, r1, #2
	lsl     r0, r2, #2
	lsl     r4, r5, #1
	lsl     r2, r6, #1
	lsl     r6, r2, #2
	lsl     r4, r3, #2
	lsl     r2, r4, #2
	lsl     r0, r5, #2
	lsl     r6, r5, #2
	lsl     r4, r6, #2
	lsl     r2, r7, #2
	lsl     r0, r0, #3
	lsl     r6, r0, #3
	lsl     r4, r1, #3
	lsl     r2, r2, #3
	lsl     r0, r3, #3
	lsl     r6, r3, #3
	lsl     r4, r4, #3
	lsl     r2, r5, #3
	lsl     r0, r6, #3
	lsl     r6, r6, #3
	lsl     r4, r7, #3
	lsl     r2, r0, #4
	lsl     r0, r1, #4
	lsl     r6, r1, #4
	lsl     r4, r2, #4
	lsl     r2, r3, #4
	lsl     r0, r4, #4
	lsl     r6, r4, #4
	lsl     r4, r5, #4
	lsl     r2, r6, #4
	lsl     r0, r7, #4
	lsl     r6, r7, #4
	lsl     r4, r0, #5
	lsl     r2, r1, #5
	lsl     r0, r2, #5
	lsl     r6, r2, #5
	lsl     r4, r3, #5
	lsl     r2, r4, #5
	lsl     r0, r5, #5
	lsl     r6, r5, #5
	lsl     r4, r6, #5
	lsl     r2, r7, #5
	lsl     r0, r0, #6
	lsl     r6, r0, #6
	lsl     r4, r1, #6
	lsl     r2, r2, #6
	lsl     r0, r3, #6
	lsl     r6, r3, #6
	lsl     r4, r4, #6
	lsl     r2, r5, #6
	lsl     r0, r6, #6
	ldr     r1, [pc, #0x150] @ 0x2003f38, (=#0xbccfe)
	add     r0, r0, r1
	pop     {r4,pc}
@ 0x2003dea


.incbin "baserom/arm9.bin", 0x3dea, 0x2003f2e - 0x2003dea


.thumb
branch_2003f2e: @ 2003f2e :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2003f36


.incbin "baserom/arm9.bin", 0x3f36, 0x2003f38 - 0x2003f36


.word 0xbccfe @ 0x2003f38

.incbin "baserom/arm9.bin", 0x3f3c, 0x2004014 - 0x2003f3c


.thumb
Function_2004014: @ 2004014 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2003d54
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	blx     Function_20ba080
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2004032
	bl      Function_2022974
.thumb
branch_2004032: @ 2004032 :thumb
	cmp     r5, #0x0
	beq     branch_2004038
	str     r4, [r5, #0x0]
.thumb
branch_2004038: @ 2004038 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x200403c

.thumb
Function_200403c: @ 200403c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	blx     Function_20ba0cc
	pop     {r4,pc}
@ 0x2004050

.thumb
Function_2004050: @ 2004050 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	mov     r1, r0
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	blx     Function_20ba240
	pop     {r4,pc}
@ 0x2004066


.incbin "baserom/arm9.bin", 0x4066, 0x2004068 - 0x2004066


.thumb
Function_2004068: @ 2004068 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	mov     r1, r0
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	blx     Function_20ba258
	pop     {r4,pc}
@ 0x200407e


.incbin "baserom/arm9.bin", 0x407e, 0x2004080 - 0x200407e


.thumb
Function_2004080: @ 2004080 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2003d54
	mov     r2, r0
	add     r2, #0x94
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, r4
	blx     Function_20ba2dc
	pop     {r3-r5,pc}
@ 0x200409a


.incbin "baserom/arm9.bin", 0x409a, 0x20040cc - 0x200409a


.thumb
Function_20040cc: @ 20040cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2003d54
	mov     r4, r0
	cmp     r5, #0x9
	blt     branch_20040e0
	bl      Function_2022974
	mov     r5, #0x0
.thumb
branch_20040e0: @ 20040e0 :thumb
	ldr     r0, [pc, #0x8] @ 0x20040ec, (=#0xbbc98)
	add     r1, r4, r0
	lsl     r0, r5, #2
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x20040ea


.incbin "baserom/arm9.bin", 0x40ea, 0x20040ec - 0x20040ea


.word 0xbbc98 @ 0x20040ec
.thumb
Function_20040f0: @ 20040f0 :thumb
	push    {r3,lr}
	cmp     r0, #0x7
	bhi     branch_2004132
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r5, #0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2004116


.incbin "baserom/arm9.bin", 0x4116, 0x2004132 - 0x2004116


.thumb
branch_2004132: @ 2004132 :thumb
	bl      Function_2022974
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x200413a


.incbin "baserom/arm9.bin", 0x413a, 0x200413c - 0x200413a


.thumb
Function_200413c: @ 200413c :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x18] @ 0x2004158, (=#0xbcd88)
	mov     r1, #0x0
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [pc, #0x10] @ 0x200415c, (=#0xbcd1c)
	mov     r1, #0x0
.thumb
branch_200414c: @ 200414c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x7
	blt     branch_200414c
	pop     {r4,pc}
@ 0x2004158

.word 0xbcd88 @ 0x2004158
.word 0xbcd1c @ 0x200415c
.thumb
Function_2004160: @ 2004160 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x14] @ 0x2004178, (=#0xbbc98)
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_2004168: @ 2004168 :thumb
	mov     r0, r5
	blx     Function_20b80dc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x9
	blt     branch_2004168
	pop     {r3-r5,pc}
@ 0x2004178

.word 0xbbc98 @ 0x2004178
.thumb
Function_200417c: @ 200417c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2004198, (=#0xbcd1c)
	add     r0, r4, r0
	bl      Function_2004014
	mov     r0, #0x0
	bl      Function_2004050
	ldr     r0, [pc, #0xc] @ 0x200419c, (=#0xbcd20)
	add     r0, r4, r0
	bl      Function_2004014
	pop     {r4,pc}
@ 0x2004198

.word 0xbcd1c @ 0x2004198
.word 0xbcd20 @ 0x200419c
.thumb
Function_20041a0: @ 20041a0 :thumb
	push    {r3,lr}
	blx     Function_20ca638
	mov     r0, #0x1
	blx     Function_20cb240
	mov     r0, #0x2
	blx     Function_20cb284
	pop     {r3,pc}
@ 0x20041b4


.incbin "baserom/arm9.bin", 0x41b4, 0x20041cc - 0x20041b4


.thumb
Function_20041cc: @ 20041cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	bl      Function_2003d5c
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x20041da


.incbin "baserom/arm9.bin", 0x41da, 0x20041dc - 0x20041da


.thumb
Function_20041dc: @ 20041dc :thumb
	push    {r3,lr}
	mov     r0, #0x5
	bl      Function_2003d5c
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20041e8

.thumb
Function_20041e8: @ 20041e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xa
	bl      Function_2003d5c
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	bl      Function_2004208
	pop     {r4,pc}
@ 0x20041fc

.thumb
Function_20041fc: @ 20041fc :thumb
	push    {r3,lr}
	mov     r0, #0xa
	bl      Function_2003d5c
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2004208

.thumb
Function_2004208: @ 2004208 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb
	bl      Function_2003d5c
	strh    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2004216


.incbin "baserom/arm9.bin", 0x4216, 0x2004218 - 0x2004216


.thumb
Function_2004218: @ 2004218 :thumb
	push    {r3,lr}
	mov     r0, #0xb
	bl      Function_2003d5c
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2004224


.incbin "baserom/arm9.bin", 0x4224, 0x2004234 - 0x2004224


.thumb
Function_2004234: @ 2004234 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x15
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x16
	bl      Function_2003d5c
	cmp     r5, #0x33
	bcs     branch_2004252
	strb    r5, [r4, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2004252

.thumb
branch_2004252: @ 2004252 :thumb
	strb    r5, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2004256


.incbin "baserom/arm9.bin", 0x4256, 0x2004258 - 0x2004256


.thumb
Function_2004258: @ 2004258 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x15
	bl      Function_2003d5c
	mov     r0, #0x16
	bl      Function_2003d5c
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x200426c

.thumb
Function_200426c: @ 200426c :thumb
	push    {r4,lr}
	cmp     r0, #0x44
	bls     branch_2004274
	b       branch_20044f6
@ 0x2004274

.thumb
branch_2004274: @ 2004274 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r6, #9
	lsl     r0, r1, #2
	lsl     r0, r6, #4
	lsl     r4, r2, #5
	lsl     r6, r3, #5
	lsl     r0, r5, #5
	lsl     r4, r7, #5
	lsl     r2, r2, #7
	lsl     r6, r0, #6
	lsl     r0, r1, #2
	lsl     r0, r1, #2
	lsl     r2, r6, #5
	lsl     r0, r2, #6
	lsl     r0, r6, #4
	lsl     r6, r4, #4
	lsl     r2, r5, #6
	lsl     r2, r3, #6
	lsl     r0, r1, #2
	lsl     r2, r7, #4
	lsl     r2, r2, #2
	lsl     r0, r1, #2
	lsl     r4, r0, #5
	lsl     r6, r3, #5
	lsl     r0, r1, #2
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #9
	lsl     r4, r6, #6
	lsl     r0, r1, #7
	lsl     r2, r2, #7
	lsl     r4, r3, #7
	lsl     r6, r4, #7
	lsl     r6, r6, #7
	lsl     r0, r0, #8
	lsl     r2, r1, #8
	lsl     r4, r2, #8
	lsl     r6, r3, #8
	lsl     r0, r5, #8
	lsl     r2, r6, #8
	lsl     r4, r7, #8
	lsl     r6, r0, #9
	lsl     r6, r2, #9
	lsl     r6, r7, #6
	lsl     r6, r4, #7
	lsl     r6, r4, #9
	mov     r0, #0x1
	bl      Function_2004050
	mov     r4, r0
	b       branch_20044f6
@ 0x2004314


.incbin "baserom/arm9.bin", 0x4314, 0x20044f6 - 0x2004314


.thumb
branch_20044f6: @ 20044f6 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x20044fa


.incbin "baserom/arm9.bin", 0x44fa, 0x2004550 - 0x20044fa


.thumb
Function_2004550: @ 2004550 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x15
	mov     r5, r1
	mov     r6, r2
	bl      Function_2003d5c
	str     r0, [sp, #0x0]
	mov     r0, #0x16
	bl      Function_2003d5c
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	bl      Function_2003d5c
	mov     r7, r0
	cmp     r4, #0x33
	bcs     branch_2004584
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_2004592
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2004584

.thumb
branch_2004584: @ 2004584 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_2004592
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2004592

.thumb
branch_2004592: @ 2004592 :thumb
	mov     r0, r4
	bl      Function_2004234
	cmp     r4, #0x44
	bls     branch_200459e
	b       branch_20046c4
@ 0x200459e

.thumb
branch_200459e: @ 200459e :thumb
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #4
	lsl     r4, r1, #3
	lsl     r0, r6, #3
	lsl     r2, r0, #4
	lsl     r0, r1, #2
	lsl     r4, r3, #2
	lsl     r0, r6, #2
	lsl     r2, r7, #2
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r6, r4, #2
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r6, r3, #3
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r2, r0, #4
	lsl     r6, r1, #4
	lsl     r2, r0, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r0, r3, #4
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	lsl     r4, r0, #3
	mov     r0, #0x0
	bl      Function_20053cc
	mov     r0, r5
	mov     r1, r6
	bl      Function_20046f8
	mov     r0, #0x0
	strh    r0, [r7, #0x0]
	b       branch_20046c4
@ 0x2004648


.incbin "baserom/arm9.bin", 0x4648, 0x20046c4 - 0x2004648


.thumb
branch_20046c4: @ 20046c4 :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20046ca


.incbin "baserom/arm9.bin", 0x46ca, 0x20046f8 - 0x20046ca


.thumb
Function_20046f8: @ 20046f8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xc
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x18
	bl      Function_2003d5c
	mov     r0, #0x20
	bl      Function_2003d5c
	mov     r0, #0x0
	bl      Function_20040cc
	bl      Function_2004b34
	mov     r4, r0
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2004732
	cmp     r4, r5
	bne     branch_2004732
	bl      Function_2004218
	mov     r1, #0x12
	lsl     r1, r1, #6
	cmp     r0, r1
	bne     branch_200478a
.thumb
branch_2004732: @ 2004732 :thumb
	mov     r0, #0x1
	bl      Function_200501c
	bl      Function_20056d4
	cmp     r4, r5
	beq     branch_200474c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20049f4
	bl      Function_200569c
.thumb
branch_200474c: @ 200474c :thumb
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_2004784
	mov     r0, #0x2
	bl      Function_2004974
	bl      Function_200403c
	mov     r0, #0x4
	bl      Function_200426c
	mov     r0, #0x1a
	bl      Function_2003d5c
	bl      Function_2004014
	cmp     r4, r5
	beq     branch_2004778
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20049f4
.thumb
branch_2004778: @ 2004778 :thumb
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_200478c
	pop     {r4-r6,pc}
@ 0x2004784

.thumb
branch_2004784: @ 2004784 :thumb
	mov     r0, r5
	bl      Function_200549c
.thumb
branch_200478a: @ 200478a :thumb
	pop     {r4-r6,pc}
@ 0x200478c

.thumb
Function_200478c: @ 200478c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x20
	bl      Function_2003d5c
	mov     r4, r0
	ldrh    r0, [r4, #0x0]
	bl      Function_2004b48
	ldr     r1, [pc, #0x44] @ 0x20047e4, (=#0x2bd)
	cmp     r0, r1
	beq     branch_20047b8
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r0, r1
	beq     branch_20047b8
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2004080
	bl      Function_2022974
	b       branch_20047c0
@ 0x20047b8

.thumb
branch_20047b8: @ 20047b8 :thumb
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_2004080
.thumb
branch_20047c0: @ 20047c0 :thumb
	mov     r0, #0x1b
	bl      Function_2003d5c
	bl      Function_2004014
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20049f4
	mov     r0, #0x7f
	mov     r1, #0x28
	mov     r2, #0x0
	bl      Function_200560c
	mov     r0, #0x0
	bl      Function_200501c
	pop     {r3-r5,pc}
@ 0x20047e4

.word 0x2bd @ 0x20047e4
.thumb
Function_20047e8: @ 20047e8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x13
	mov     r5, r1
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x20
	bl      Function_2003d5c
	mov     r4, r0
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	beq     branch_2004808
	cmp     r5, #0x0
	bne     branch_200486c
.thumb
branch_2004808: @ 2004808 :thumb
	mov     r0, #0x1
	bl      Function_2004974
	bl      Function_200403c
	mov     r0, #0x0
	bl      Function_2004258
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2004080
	mov     r0, #0x19
	bl      Function_2003d5c
	bl      Function_2004014
	mov     r0, #0x4
	bl      Function_200426c
	mov     r0, #0x1a
	bl      Function_2003d5c
	bl      Function_2004014
	ldrh    r0, [r4, #0x0]
	bl      Function_2004b48
	ldr     r1, [pc, #0x2c] @ 0x2004870, (=#0x2bd)
	cmp     r0, r1
	beq     branch_200485a
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r0, r1
	beq     branch_200485a
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2004080
	bl      Function_2022974
	b       branch_2004862
@ 0x200485a

.thumb
branch_200485a: @ 200485a :thumb
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2004080
.thumb
branch_2004862: @ 2004862 :thumb
	mov     r0, #0x1b
	bl      Function_2003d5c
	bl      Function_2004014
.thumb
branch_200486c: @ 200486c :thumb
	pop     {r3-r7,pc}
@ 0x200486e


.incbin "baserom/arm9.bin", 0x486e, 0x2004870 - 0x200486e


.word 0x2bd @ 0x2004870

.incbin "baserom/arm9.bin", 0x4874, 0x2004950 - 0x2004874


.thumb
Function_2004950: @ 2004950 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2003d54
	bl      Function_200540c
	mov     r0, r4
	bl      Function_200549c
	pop     {r4,pc}
@ 0x2004964


.incbin "baserom/arm9.bin", 0x4964, 0x2004974 - 0x2004964


.thumb
Function_2004974: @ 2004974 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2003d54
	cmp     r4, #0x7
	blt     branch_200498e
	bl      Function_2022974
	mov     r0, #0x1b
	bl      Function_2003d5c
	ldr     r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x200498e

.thumb
branch_200498e: @ 200498e :thumb
	cmp     r4, #0x6
	bhi     branch_20049f0
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r6, r2, #0
	lsl     r0, r4, #0
	lsl     r2, r5, #0
	lsl     r4, r6, #0
	lsl     r6, r7, #0
	lsl     r0, r1, #1
	mov     r0, #0x17
	bl      Function_2003d5c
	mov     r5, r0
	b       branch_20049f0
@ 0x20049b6


.incbin "baserom/arm9.bin", 0x49b6, 0x20049f0 - 0x20049b6


.thumb
branch_20049f0: @ 20049f0 :thumb
	ldr     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x20049f4

.thumb
Function_20049f4: @ 20049f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	cmp     r0, #0x1
	bne     branch_2004a08
	mov     r0, #0xc
	bl      Function_2003d5c
	mov     r6, r0
	mov     r4, #0x0
	b       branch_2004a16
@ 0x2004a08

.thumb
branch_2004a08: @ 2004a08 :thumb
	cmp     r0, #0x7
	bne     branch_2004a3a
	mov     r0, #0xd
	bl      Function_2003d5c
	mov     r6, r0
	mov     r4, #0x7
.thumb
branch_2004a16: @ 2004a16 :thumb
	cmp     r5, #0x0
	bne     branch_2004a2c
	mov     r0, r4
	bl      Function_20040cc
	bl      Function_2004b34
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_20041e8
.thumb
branch_2004a2c: @ 2004a2c :thumb
	mov     r0, r4
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20b80cc
	strb    r5, [r6, #0x0]
.thumb
branch_2004a3a: @ 2004a3a :thumb
	pop     {r4-r6,pc}
@ 0x2004a3c

.thumb
Function_2004a3c: @ 2004a3c :thumb
	push    {r4,lr}
	mov     r0, #0xc
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0xd
	bl      Function_2003d5c
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x2004a54

.thumb
Function_2004a54: @ 2004a54 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_20040cc
	mov     r1, r5
	mov     r2, r4
	blx     Function_20b8148
	pop     {r3-r5,pc}
@ 0x2004a68

.thumb
Function_2004a68: @ 2004a68 :thumb
	push    {r4,lr}
	mov     r4, r1
	bpl     branch_2004a70
	mov     r4, #0x0
.thumb
branch_2004a70: @ 2004a70 :thumb
	cmp     r4, #0x7f
	ble     branch_2004a76
	mov     r4, #0x7f
.thumb
branch_2004a76: @ 2004a76 :thumb
	bl      Function_20040cc
	mov     r1, r4
	blx     Function_20b8134
	pop     {r4,pc}
@ 0x2004a82


.incbin "baserom/arm9.bin", 0x4a82, 0x2004aa0 - 0x2004a82


.thumb
Function_2004aa0: @ 2004aa0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	blx     Function_20b9b0c
	cmp     r5, #0x1
	beq     branch_2004ab0
	cmp     r5, #0x8
	bne     branch_2004ab4
.thumb
branch_2004ab0: @ 2004ab0 :thumb
	mov     r4, #0x7f
	b       branch_2004aba
@ 0x2004ab4

.thumb
branch_2004ab4: @ 2004ab4 :thumb
	cmp     r0, #0x0
	beq     branch_2004ad2
	ldrb    r4, [r0, #0x2]
.thumb
branch_2004aba: @ 2004aba :thumb
	bl      Function_2036314
	cmp     r0, #0x1
	bne     branch_2004ad2
	mov     r0, r4
	mov     r1, #0x5
	blx     Division
	mov     r1, r0
	mov     r0, r5
	bl      Function_2004a68
.thumb
branch_2004ad2: @ 2004ad2 :thumb
	pop     {r3-r5,pc}
@ 0x2004ad4

.thumb
Function_2004ad4: @ 2004ad4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2004b18
	bl      Function_20040f0
	mov     r1, r4
	bl      Function_2004a68
	pop     {r4,pc}
@ 0x2004ae8


.incbin "baserom/arm9.bin", 0x4ae8, 0x2004b04 - 0x2004ae8


.thumb
Function_2004b04: @ 2004b04 :thumb
	push    {r4,lr}
	mov     r4, r0
	bpl     branch_2004b0e
	bl      Function_2022974
.thumb
branch_2004b0e: @ 2004b0e :thumb
	mov     r0, r4
	blx     Function_20b8108
	pop     {r4,pc}
@ 0x2004b16


.incbin "baserom/arm9.bin", 0x4b16, 0x2004b18 - 0x2004b16


.thumb
Function_2004b18: @ 2004b18 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	bne     branch_2004b22
	mov     r0, #0xff
	pop     {r3,pc}
@ 0x2004b22

.thumb
branch_2004b22: @ 2004b22 :thumb
	blx     Function_20b9b0c
	cmp     r0, #0x0
	bne     branch_2004b2e
	mov     r0, #0xff
	pop     {r3,pc}
@ 0x2004b2e

.thumb
branch_2004b2e: @ 2004b2e :thumb
	ldrb    r0, [r0, #0x5]
	pop     {r3,pc}
@ 0x2004b32


.incbin "baserom/arm9.bin", 0x4b32, 0x2004b34 - 0x2004b32


.thumb
Function_2004b34: @ 2004b34 :thumb
	ldr     r3, [pc, #0x0] @ 0x2004b38, (=#0x20b8244)
	bx      r3
@ 0x2004b38

.word 0x20b8244 @ 0x2004b38
.thumb
Function_2004b3c: @ 2004b3c :thumb
	push    {r3,lr}
	bl      Function_2004b48
	blx     Function_20b9bec
	pop     {r3,pc}
@ 0x2004b48

.thumb
Function_2004b48: @ 2004b48 :thumb
	push    {r3,lr}
	blx     Function_20b9b0c
	cmp     r0, #0x0
	bne     branch_2004b56
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2004b56

.thumb
branch_2004b56: @ 2004b56 :thumb
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2004b5a


.incbin "baserom/arm9.bin", 0x4b5a, 0x2004b5c - 0x2004b5a


.thumb
Function_2004b5c: @ 2004b5c :thumb
	ldr     r3, [pc, #0x0] @ 0x2004b60, (=#0x20ca88c)
	bx      r3
@ 0x2004b60

.word 0x20ca88c @ 0x2004b60

.incbin "baserom/arm9.bin", 0x4b64, 0x2004b78 - 0x2004b64


.thumb
Function_2004b78: @ 2004b78 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2003d54
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r4, r0
	cmp     r5, #0xe
	beq     branch_2004b9c
	cmp     r5, #0xf
	beq     branch_2004b9c
	bl      Function_2022974
.thumb
branch_2004b9c: @ 2004b9c :thumb
	cmp     r5, #0xe
	bne     branch_2004baa
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2004baa
	bl      Function_2022974
.thumb
branch_2004baa: @ 2004baa :thumb
	cmp     r5, #0xf
	bne     branch_2004bb8
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2004bb8
	bl      Function_2022974
.thumb
branch_2004bb8: @ 2004bb8 :thumb
	cmp     r5, #0xe
	bne     branch_2004bc4
	mov     r0, #0x0
	bl      Function_2003d5c
	pop     {r4-r6,pc}
@ 0x2004bc4

.thumb
branch_2004bc4: @ 2004bc4 :thumb
	mov     r0, #0x1
	bl      Function_2003d5c
	pop     {r4-r6,pc}
@ 0x2004bcc

.thumb
Function_2004bcc: @ 2004bcc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2003d54
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r4, r0
	cmp     r5, #0xe
	beq     branch_2004bf0
	cmp     r5, #0xf
	beq     branch_2004bf0
	bl      Function_2022974
.thumb
branch_2004bf0: @ 2004bf0 :thumb
	cmp     r5, #0xe
	bne     branch_2004c1e
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2004c18
	mov     r0, #0x0
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, r5
	blx     Function_20b7c00
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2004c12
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2004c12

.thumb
branch_2004c12: @ 2004c12 :thumb
	mov     r0, #0x1
	strb    r0, [r6, #0x0]
	b       branch_2004c46
@ 0x2004c18

.thumb
branch_2004c18: @ 2004c18 :thumb
	bl      Function_2022974
	b       branch_2004c46
@ 0x2004c1e

.thumb
branch_2004c1e: @ 2004c1e :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2004c42
	mov     r0, #0x1
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, r5
	blx     Function_20b7c00
	str     r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2004c3c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2004c3c

.thumb
branch_2004c3c: @ 2004c3c :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_2004c46
@ 0x2004c42

.thumb
branch_2004c42: @ 2004c42 :thumb
	bl      Function_2022974
.thumb
branch_2004c46: @ 2004c46 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2004c4a


.incbin "baserom/arm9.bin", 0x4c4a, 0x2004c4c - 0x2004c4a


.thumb
Function_2004c4c: @ 2004c4c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2003d54
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r4, r0
	cmp     r5, #0xe
	beq     branch_2004c72
	cmp     r5, #0xf
	beq     branch_2004c72
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2004c72

.thumb
branch_2004c72: @ 2004c72 :thumb
	cmp     r5, #0xe
	bne     branch_2004c94
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_2004c8e
	mov     r0, r5
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	blx     Function_20b7c44
	mov     r0, #0x0
	strb    r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2004c8e

.thumb
branch_2004c8e: @ 2004c8e :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2004c94

.thumb
branch_2004c94: @ 2004c94 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2004cac
	mov     r0, r5
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	blx     Function_20b7c44
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2004cac

.thumb
branch_2004cac: @ 2004cac :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2004cb2


.incbin "baserom/arm9.bin", 0x4cb2, 0x2004cb4 - 0x2004cb2


.thumb
Function_2004cb4: @ 2004cb4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r3, r0
	ldr     r0, [r3, #0x10]
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [r3, #0x18]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x1c]
	str     r0, [sp, #0xc]
	ldr     r0, [r3, #0x20]
	str     r0, [sp, #0x10]
	ldr     r0, [r3, #0x24]
	str     r0, [sp, #0x14]
	ldr     r0, [r3, #0x0]
	ldr     r1, [r3, #0x4]
	ldr     r2, [r3, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r3, [r3, #0xc]
	blx     Function_20b7c5c
	mov     r5, r0
	bne     branch_2004cec
	mov     r0, r4
	bl      Function_2004c4c
.thumb
branch_2004cec: @ 2004cec :thumb
	mov     r0, r5
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2004cf2


.incbin "baserom/arm9.bin", 0x4cf2, 0x2004cf4 - 0x2004cf2


.thumb
Function_2004cf4: @ 2004cf4 :thumb
	push    {r3,lr}
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	blx     Function_20b7d7c
	pop     {r3,pc}
@ 0x2004d02


.incbin "baserom/arm9.bin", 0x4d02, 0x2004d04 - 0x2004d02


.thumb
Function_2004d04: @ 2004d04 :thumb
	push    {r3,lr}
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	blx     Function_20b7e88
	pop     {r3,pc}
@ 0x2004d12


.incbin "baserom/arm9.bin", 0x4d12, 0x2004d14 - 0x2004d12


.thumb
Function_2004d14: @ 2004d14 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r4, #0x7f
	bls     branch_2004d1e
	mov     r4, #0x7f
.thumb
branch_2004d1e: @ 2004d1e :thumb
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	blx     Function_20b7e64
	pop     {r4,pc}
@ 0x2004d2c


.incbin "baserom/arm9.bin", 0x4d2c, 0x2004d40 - 0x2004d2c


.thumb
Function_2004d40: @ 2004d40 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_2036314
	cmp     r0, #0x1
	bne     branch_2004d68
	mov     r0, r4
	bl      Function_2004b78
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x5
	blx     Division
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	blx     Function_20b7db8
	pop     {r3-r5,pc}
@ 0x2004d68

.thumb
branch_2004d68: @ 2004d68 :thumb
	mov     r0, r4
	bl      Function_2004b78
	ldr     r0, [r0, #0x0]
	mov     r1, r5
	blx     Function_20b7db8
	pop     {r3-r5,pc}
@ 0x2004d78


.incbin "baserom/arm9.bin", 0x4d78, 0x2004e84 - 0x2004d78


.thumb
Function_2004e84: @ 2004e84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2003d54
	mov     r0, #0xf
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x22
	bl      Function_2003d5c
	mov     r6, r0
	cmp     r5, #0xe
	beq     branch_2004ea8
	cmp     r5, #0xf
	beq     branch_2004ea8
	bl      Function_2022974
.thumb
branch_2004ea8: @ 2004ea8 :thumb
	mov     r0, r5
	bl      Function_2004cf4
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2004ebe
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	ldr     r0, [r6, #0x0]
	bl      Function_20181c4
.thumb
branch_2004ebe: @ 2004ebe :thumb
	pop     {r4-r6,pc}
@ 0x2004ec0

.thumb
Function_2004ec0: @ 2004ec0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2004ec4, (=#0x20b90ec)
	bx      r3
@ 0x2004ec4

.word 0x20b90ec @ 0x2004ec4
.thumb
Function_2004ec8: @ 2004ec8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_2003d54
	mov     r0, #0x3
	bl      Function_2003d5c
	mov     r1, #0x1
	mov     r3, #0xfa
	lsl     r1, r1, #12
	mov     r2, #0x0
	lsl     r3, r3, #6
	str     r4, [sp, #0x0]
	blx     Function_20b8ed0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2004eec

.thumb
Function_2004eec: @ 2004eec :thumb
	ldr     r3, [pc, #0x0] @ 0x2004ef0, (=#0x20b8fbc)
	bx      r3
@ 0x2004ef0

.word 0x20b8fbc @ 0x2004ef0

.incbin "baserom/arm9.bin", 0x4ef4, 0x2004f94 - 0x2004ef4


.thumb
Function_2004f94: @ 2004f94 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_20040cc
	mov     r1, r5
	mov     r2, r4
	blx     Function_20b81b4
	pop     {r3-r5,pc}
@ 0x2004fa8


.incbin "baserom/arm9.bin", 0x4fa8, 0x2004fb8 - 0x2004fa8


.thumb
Function_2004fb8: @ 2004fb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_20b7a60
	ldr     r0, [pc, #0x4] @ 0x2004fc8, (=#0x21beb80)
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2004fc6


.incbin "baserom/arm9.bin", 0x4fc6, 0x2004fc8 - 0x2004fc6


.word 0x21beb80 @ 0x2004fc8
.thumb
Function_2004fcc: @ 2004fcc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x7
	bl      Function_2003d5c
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2004fda


.incbin "baserom/arm9.bin", 0x4fda, 0x2004fdc - 0x2004fda


.thumb
Function_2004fdc: @ 2004fdc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_2003d5c
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2004fea


.incbin "baserom/arm9.bin", 0x4fea, 0x2005014 - 0x2004fea


.thumb
Function_2005014: @ 2005014 :thumb
	ldr     r0, [pc, #0x0] @ 0x2005018, (=#0x21beba0)
	bx      lr
@ 0x2005018

.word 0x21beba0 @ 0x2005018
.thumb
Function_200501c: @ 200501c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	bl      Function_2003d5c
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x200502a


.incbin "baserom/arm9.bin", 0x502a, 0x200502c - 0x200502a


.thumb
Function_200502c: @ 200502c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x16
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x8]
	bl      Function_2003d5c
	mov     r4, r0
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	ldr     r3, [sp, #0x8]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, r7
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20050a4
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	mov     r0, #0x5
	bl      Function_2003d0c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2005066


.incbin "baserom/arm9.bin", 0x5066, 0x2005068 - 0x2005066


.thumb
Function_2005068: @ 2005068 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x9
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x8]
	bl      Function_2003d5c
	mov     r4, r0
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x14]
	ldr     r3, [sp, #0x8]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	mov     r2, r7
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20050a4
	ldr     r0, [sp, #0x20]
	str     r0, [r4, #0x0]
	mov     r0, #0x6
	bl      Function_2003d0c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20050a2


.incbin "baserom/arm9.bin", 0x50a2, 0x20050a4 - 0x20050a2


.thumb
Function_20050a4: @ 20050a4 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r0, #0x2
	mov     r5, r1
	mov     r7, r3
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r6
	bl      Function_200564c
	mov     r0, #0x0
	bl      Function_20041e8
	mov     r0, r5
	bl      Function_2004208
	mov     r0, r7
	bl      Function_2004fdc
	mov     r0, r5
	bl      Function_2004b3c
	str     r0, [r4, #0x0]
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x10]
	bl      Function_200501c
	pop     {r3-r7,pc}
@ 0x20050e0


.incbin "baserom/arm9.bin", 0x50e0, 0x20053c0 - 0x20050e0


.thumb
Function_20053c0: @ 20053c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x20053c8, (=#0x20b7f1c)
	mov     r1, r0
	mov     r0, #0x7
	bx      r3
@ 0x20053c8

.word 0x20b7f1c @ 0x20053c8
.thumb
Function_20053cc: @ 20053cc :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	bne     branch_20053e0
	ldr     r0, [pc, #0x30] @ 0x2005404, (=#0x7ff)
	bl      Function_20053c0
	mov     r0, #0x0
	bl      Function_2004eec
	b       branch_20053fc
@ 0x20053e0

.thumb
branch_20053e0: @ 20053e0 :thumb
	cmp     r0, #0x1
	ldr     r0, [pc, #0x24] @ 0x2005408, (=#0x7fff)
	bne     branch_20053f2
	bl      Function_20053c0
	mov     r0, #0x1e
	bl      Function_2004ec8
	b       branch_20053fc
@ 0x20053f2

.thumb
branch_20053f2: @ 20053f2 :thumb
	bl      Function_20053c0
	mov     r0, #0xf
	bl      Function_2004ec8
.thumb
branch_20053fc: @ 20053fc :thumb
	bl      Function_2004ec0
	pop     {r3,pc}
@ 0x2005402


.incbin "baserom/arm9.bin", 0x5402, 0x2005404 - 0x2005402


.word 0x7ff @ 0x2005404
.word 0x7fff @ 0x2005408
.thumb
Function_200540c: @ 200540c :thumb
	push    {r3,lr}
	bl      Function_2005684
	cmp     r0, #0x0
	bne     branch_2005440
	mov     r0, #0x0
	bl      Function_20040cc
	bl      Function_2004b34
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2005440
	bl      Function_20041fc
	ldr     r1, [pc, #0x18] @ 0x2005448, (=#0x47e)
	cmp     r0, r1
	beq     branch_2005440
	bl      Function_20056d4
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20049f4
	pop     {r3,pc}
@ 0x2005440

.thumb
branch_2005440: @ 2005440 :thumb
	bl      Function_200569c
	pop     {r3,pc}
@ 0x2005446


.incbin "baserom/arm9.bin", 0x5446, 0x2005448 - 0x2005446


.word 0x47e @ 0x2005448

.incbin "baserom/arm9.bin", 0x544c, 0x200549c - 0x200544c


.thumb
Function_200549c: @ 200549c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2004b18
	mov     r4, r0
	bl      Function_20040f0
	mov     r6, r0
	cmp     r4, #0x7
	bne     branch_20054be
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2005508
	mov     r4, r0
	b       branch_20054d8
@ 0x20054be

.thumb
branch_20054be: @ 20054be :thumb
	cmp     r4, #0x1
	bne     branch_20054d0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2005538
	mov     r4, r0
	b       branch_20054d8
@ 0x20054d0

.thumb
branch_20054d0: @ 20054d0 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20054d8

.thumb
branch_20054d8: @ 20054d8 :thumb
	mov     r0, #0x0
	bl      Function_200501c
	mov     r0, r5
	mov     r1, r6
	bl      Function_20054ec
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x20054ea


.incbin "baserom/arm9.bin", 0x54ea, 0x20054ec - 0x20054ea


.thumb
Function_20054ec: @ 20054ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20041e8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2004aa0
	mov     r0, #0x1
	bl      Function_2003d0c
	pop     {r3-r5,pc}
@ 0x2005506


.incbin "baserom/arm9.bin", 0x5506, 0x2005508 - 0x2005506


.thumb
Function_2005508: @ 2005508 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3
	mov     r4, r2
	bl      Function_2004974
	bl      Function_200403c
	mov     r0, r5
	bl      Function_2004068
	mov     r0, #0x1b
	bl      Function_2003d5c
	bl      Function_2004014
	mov     r0, r4
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20bad78
	pop     {r3-r5,pc}
@ 0x2005536


.incbin "baserom/arm9.bin", 0x5536, 0x2005538 - 0x2005536


.thumb
Function_2005538: @ 2005538 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x13
	mov     r6, r2
	bl      Function_2003d5c
	mov     r0, #0x20
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x0
	bl      Function_20040cc
	bl      Function_2004b34
	bl      Function_2004b48
	mov     r1, r0
	mov     r0, r5
	bl      Function_20047e8
	mov     r0, r6
	bl      Function_20040cc
	mov     r6, r0
	ldrh    r0, [r4, #0x0]
	bl      Function_2004b48
	mov     r1, #0x0
	mvn     r1, r1
	mov     r2, r0
	mov     r0, r6
	mov     r3, r1
	str     r5, [sp, #0x0]
	blx     Function_20badc0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2005586


.incbin "baserom/arm9.bin", 0x5586, 0x2005588 - 0x2005586


.thumb
Function_2005588: @ 2005588 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	cmp     r0, #0x4
	beq     branch_2005598
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2005598

.thumb
branch_2005598: @ 2005598 :thumb
	mov     r0, r5
	bl      Function_2004b18
	cmp     r0, #0x7
	beq     branch_20055aa
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20055aa

.thumb
branch_20055aa: @ 20055aa :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2004080
	mov     r0, #0x7
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20bad78
	mov     r4, r0
	mov     r0, r5
	bl      Function_20041e8
	mov     r0, #0x1
	bl      Function_2003d0c
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20055d0

.thumb
Function_20055d0: @ 20055d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_20b8034
	mov     r0, r4
	bl      Function_2004b18
	cmp     r0, #0xff
	beq     branch_20055ee
	bl      Function_20040f0
	bl      Function_20040cc
	blx     Function_20b80e8
.thumb
branch_20055ee: @ 20055ee :thumb
	bl      Function_20055f4
	pop     {r4,pc}
@ 0x20055f4

.thumb
Function_20055f4: @ 20055f4 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	bl      Function_20041e8
	mov     r0, #0x0
	bl      Function_2004208
	mov     r0, #0x0
	bl      Function_2003d0c
	pop     {r3,pc}
@ 0x200560a


.incbin "baserom/arm9.bin", 0x560a, 0x200560c - 0x200560a


.thumb
Function_200560c: @ 200560c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      Function_20041fc
	bl      Function_2004b18
	cmp     r0, #0xff
	beq     branch_2005648
	bl      Function_20040f0
	mov     r7, r0
	cmp     r4, #0x0
	bne     branch_2005632
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_2004a54
.thumb
branch_2005632: @ 2005632 :thumb
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_2004a54
	mov     r0, r5
	bl      Function_2004fcc
	mov     r0, #0x3
	bl      Function_2003d0c
.thumb
branch_2005648: @ 2005648 :thumb
	pop     {r3-r7,pc}
@ 0x200564a


.incbin "baserom/arm9.bin", 0x564a, 0x200564c - 0x200564a


.thumb
Function_200564c: @ 200564c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20041fc
	bl      Function_2004b18
	mov     r6, r0
	cmp     r6, #0xff
	beq     branch_2005682
	bl      Function_2005684
	cmp     r0, #0x0
	bne     branch_200567c
	mov     r0, r6
	bl      Function_20040f0
	mov     r1, r5
	mov     r2, r4
	bl      Function_2004a54
	mov     r0, r4
	bl      Function_2004fcc
.thumb
branch_200567c: @ 200567c :thumb
	mov     r0, #0x4
	bl      Function_2003d0c
.thumb
branch_2005682: @ 2005682 :thumb
	pop     {r4-r6,pc}
@ 0x2005684

.thumb
Function_2005684: @ 2005684 :thumb
	push    {r3,lr}
	mov     r0, #0x7
	bl      Function_2003d5c
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2005690

.thumb
Function_2005690: @ 2005690 :thumb
	push    {r3,lr}
	bl      Function_2004b18
	bl      Function_2004b04
	pop     {r3,pc}
@ 0x200569c

.thumb
Function_200569c: @ 200569c :thumb
	push    {r3-r5,lr}
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r5, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x0
	blx     Function_20b808c
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_20056c0
	mov     r0, #0xe
	bl      Function_2004cf4
.thumb
branch_20056c0: @ 20056c0 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_20056cc
	mov     r0, #0xf
	bl      Function_2004cf4
.thumb
branch_20056cc: @ 20056cc :thumb
	mov     r0, #0x0
	bl      Function_2003d0c
	pop     {r3-r5,pc}
@ 0x20056d4

.thumb
Function_20056d4: @ 20056d4 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r7, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x7
	bl      Function_20040cc
	mov     r1, #0x0
	blx     Function_20b7fc8
	bl      Function_20055f4
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_20056fa: @ 20056fa :thumb
	add     r0, r5, #0x3
	mov     r1, r4
	bl      Function_20057ac
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_20056fa
	mov     r0, #0x0
	bl      Function_200592c
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0x1
	bne     branch_200571a
	mov     r0, #0xe
	bl      Function_2004cf4
.thumb
branch_200571a: @ 200571a :thumb
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_2005726
	mov     r0, #0xf
	bl      Function_2004cf4
.thumb
branch_2005726: @ 2005726 :thumb
	pop     {r3-r7,pc}
@ 0x2005728


.incbin "baserom/arm9.bin", 0x5728, 0x2005748 - 0x2005728


.thumb
Function_2005748: @ 2005748 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2004b18
	bl      Function_20040f0
	mov     r5, r0
	bl      Function_20040cc
	mov     r1, r6
	blx     Function_20bad78
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_2004aa0
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x200576e


.incbin "baserom/arm9.bin", 0x576e, 0x20057a4 - 0x200576e


.thumb
Function_20057a4: @ 20057a4 :thumb
	ldr     r3, [pc, #0x0] @ 0x20057a8, (=#0x20b8034)
	bx      r3
@ 0x20057a8

.word 0x20b8034 @ 0x20057a8
.thumb
Function_20057ac: @ 20057ac :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20040cc
	mov     r1, r4
	blx     Function_20b7fc8
	pop     {r4,pc}
@ 0x20057bc


.incbin "baserom/arm9.bin", 0x57bc, 0x2005844 - 0x20057bc


.thumb
Function_2005844: @ 2005844 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x12
	str     r1, [sp, #0x4]
	bl      Function_2003d5c
	mov     r7, r0
	mov     r0, #0x24
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x35
	bl      Function_2003d5c
	mov     r4, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_2006038
	cmp     r0, #0x1
	bne     branch_2005872
	ldr     r5, [pc, #0x90] @ 0x2005904, (=#0x1ee)
.thumb
branch_2005872: @ 2005872 :thumb
	ldr     r0, [pc, #0x90] @ 0x2005904, (=#0x1ee)
	cmp     r5, r0
	beq     branch_2005884
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bhi     branch_2005882
	cmp     r5, #0x0
	bne     branch_2005884
.thumb
branch_2005882: @ 2005882 :thumb
	mov     r5, #0x1
.thumb
branch_2005884: @ 2005884 :thumb
	ldr     r0, [pc, #0x80] @ 0x2005908, (=#0x1b9)
	cmp     r5, r0
	bne     branch_20058a6
	mov     r1, #0x0
	ldr     r0, [r6, #0x0]
	mov     r2, #0x7f
	mov     r3, r1
	bl      Function_200629c
	cmp     r0, #0x1
	bne     branch_20058a6
	mov     r0, #0x0
	bl      Function_20063d4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20058a6

.thumb
branch_20058a6: @ 20058a6 :thumb
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0x0
	bne     branch_20058d8
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_20058b8
	mov     r0, #0x0
	bl      Function_200592c
.thumb
branch_20058b8: @ 20058b8 :thumb
	mov     r0, #0x1
	bl      Function_20040cc
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	mov     r2, r5
	mov     r3, r1
	blx     Function_20badc0
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2004aa0
	b       branch_20058f6
@ 0x20058d8

.thumb
branch_20058d8: @ 20058d8 :thumb
	mov     r0, #0x8
	bl      Function_20040cc
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	mov     r2, r5
	mov     r3, r1
	blx     Function_20badc0
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8
	bl      Function_2004aa0
.thumb
branch_20058f6: @ 20058f6 :thumb
	mov     r0, #0x0
	bl      Function_20063d4
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2005902


.incbin "baserom/arm9.bin", 0x5902, 0x2005904 - 0x2005902


.word 0x1ee @ 0x2005904
.word 0x1b9 @ 0x2005908

.incbin "baserom/arm9.bin", 0x590c, 0x200592c - 0x200590c


.thumb
Function_200592c: @ 200592c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x11
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0xf
	bl      Function_2003d5c
	mov     r0, #0x1
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20b7fc8
	mov     r0, #0x8
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20b7fc8
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_2005970
	mov     r0, #0xe
	bl      Function_2004e84
	mov     r0, #0xe
	bl      Function_2004c4c
.thumb
branch_2005970: @ 2005970 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2005982
	mov     r0, #0xf
	bl      Function_2004e84
	mov     r0, #0xf
	bl      Function_2004c4c
.thumb
branch_2005982: @ 2005982 :thumb
	bl      Function_2006350
	bl      Function_200605c
	pop     {r4-r6,pc}
@ 0x200598c


.incbin "baserom/arm9.bin", 0x598c, 0x20059d0 - 0x200598c


.thumb
Function_20059d0: @ 20059d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	mov     r4, r1
	str     r0, [sp, #0x38]
	mov     r0, #0x10
	mov     r6, r2
	mov     r7, r3
	ldr     r5, [sp, #0x3c]
	bl      Function_2003d5c
	str     r0, [sp, #0x14]
	mov     r0, #0x11
	bl      Function_2003d5c
	str     r0, [sp, #0x10]
	mov     r0, #0x12
	bl      Function_2003d5c
	str     r0, [sp, #0xc]
	mov     r0, #0x1e
	bl      Function_2003d5c
	str     r0, [sp, #0x8]
	mov     r0, #0x24
	bl      Function_2003d5c
	mov     r0, r4
	mov     r1, r5
	bl      Function_2006038
	cmp     r0, #0x1
	bne     branch_2005a16
	ldr     r4, [pc, #0x354] @ 0x2005d6c, (=#0x1ee)
.thumb
branch_2005a16: @ 2005a16 :thumb
	ldr     r0, [pc, #0x354] @ 0x2005d6c, (=#0x1ee)
	cmp     r4, r0
	beq     branch_2005a28
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bhi     branch_2005a26
	cmp     r4, #0x0
	bne     branch_2005a28
.thumb
branch_2005a26: @ 2005a26 :thumb
	mov     r4, #0x1
.thumb
branch_2005a28: @ 2005a28 :thumb
	lsr     r0, r6, #31
	add     r0, r6, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x1c]
	add     r0, #0x40
	str     r0, [sp, #0x1c]
	mov     r0, r7
	str     r0, [sp, #0x18]
	sub     r0, #0x1e
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	bgt     branch_2005a44
	mov     r0, #0x1
	str     r0, [sp, #0x18]
.thumb
branch_2005a44: @ 2005a44 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2005a5e
	mov     r0, #0xe
	bl      Function_2004e84
	mov     r0, #0xe
	bl      Function_2004c4c
.thumb
branch_2005a5e: @ 2005a5e :thumb
	ldr     r0, [sp, #0x10]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2005a72
	mov     r0, #0xf
	bl      Function_2004e84
	mov     r0, #0xf
	bl      Function_2004c4c
.thumb
branch_2005a72: @ 2005a72 :thumb
	ldr     r0, [pc, #0x2fc] @ 0x2005d70, (=#0x1b9)
	cmp     r4, r0
	bne     branch_2005b06
	ldr     r1, [sp, #0x4]
	cmp     r1, #0xc
	bhi     branch_2005b00
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	lsl     r0, r3, #0
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	lsl     r0, r3, #0
	lsl     r0, r3, #0
	mov     r1, r5
	bl      Function_2005844
	ldr     r0, [sp, #0x8]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2005ac8
	ldr     r1, [pc, #0x2c0] @ 0x2005d74, (=#0xffff)
	mov     r0, #0x1
	mov     r2, r6
	bl      Function_2004f94
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2005e4c
	b       branch_2005afa
@ 0x2005ac8

.thumb
branch_2005ac8: @ 2005ac8 :thumb
	ldr     r0, [sp, #0x14]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2005ae6
	ldr     r1, [sp, #0x1c]
	mov     r0, #0xe
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2004d14
	mov     r0, #0xe
	mov     r1, r7
	bl      Function_2004d40
	b       branch_2005afa
@ 0x2005ae6

.thumb
branch_2005ae6: @ 2005ae6 :thumb
	ldr     r1, [pc, #0x28c] @ 0x2005d74, (=#0xffff)
	mov     r0, #0x1
	mov     r2, r6
	bl      Function_2004f94
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2005e4c
.thumb
branch_2005afa: @ 2005afa :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2005b00

.thumb
branch_2005b00: @ 2005b00 :thumb
	mov     r0, #0x1
	bl      Function_20063d4
.thumb
branch_2005b06: @ 2005b06 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0xe
	bls     branch_2005b0e
	b       branch_2005e40
@ 0x2005b0e

.thumb
branch_2005b0e: @ 2005b0e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r3, #0
	lsl     r2, r7, #0
	lsl     r0, r4, #1
	lsl     r6, r4, #2
	lsl     r4, r6, #3
	lsl     r6, r0, #5
	lsl     r0, r6, #5
	lsl     r0, r7, #6
	lsl     r2, r5, #7
	lsl     r2, r3, #8
	lsl     r4, r3, #9
	lsl     r6, r1, #10
	lsl     r0, r7, #10
	lsl     r2, r5, #11
	lsl     r4, r3, #12
	mov     r0, r4
	mov     r1, r5
	bl      Function_2005844
	ldr     r1, [pc, #0x230] @ 0x2005d74, (=#0xffff)
	mov     r0, #0x1
	mov     r2, r6
	bl      Function_2004f94
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_2005e4c
	b       branch_2005e40
@ 0x2005b56


.incbin "baserom/arm9.bin", 0x5b56, 0x2005d6c - 0x2005b56


.word 0x1ee @ 0x2005d6c
.word 0x1b9 @ 0x2005d70
.word 0xffff @ 0x2005d74

.incbin "baserom/arm9.bin", 0x5d78, 0x2005e40 - 0x2005d78


.thumb
branch_2005e40: @ 2005e40 :thumb
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2005e46


.incbin "baserom/arm9.bin", 0x5e46, 0x2005e4c - 0x2005e46


.thumb
Function_2005e4c: @ 2005e4c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, r2
	bl      Function_2004a68
	mov     r0, r5
	mov     r1, r4
	bl      Function_2004aa0
	pop     {r3-r5,pc}
@ 0x2005e64


.incbin "baserom/arm9.bin", 0x5e64, 0x2006038 - 0x2005e64


.thumb
Function_2006038: @ 2006038 :thumb
	mov     r2, #0x7b
	lsl     r2, r2, #2
	cmp     r0, r2
	bne     branch_2006048
	cmp     r1, #0x1
	bne     branch_2006048
	mov     r0, #0x1
	bx      lr
@ 0x2006048

.thumb
branch_2006048: @ 2006048 :thumb
	ldr     r1, [pc, #0xc] @ 0x2006058, (=#0x1ee)
	cmp     r0, r1
	bne     branch_2006052
	mov     r0, #0x1
	bx      lr
@ 0x2006052

.thumb
branch_2006052: @ 2006052 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2006056


.incbin "baserom/arm9.bin", 0x6056, 0x2006058 - 0x2006056


.word 0x1ee @ 0x2006058
.thumb
Function_200605c: @ 200605c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r0, #0x29
	bl      Function_2003d5c
	mov     r5, r0
	mov     r0, #0x2d
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x2a
	bl      Function_2003d5c
	mov     r6, r0
	mov     r0, #0x2b
	bl      Function_2003d5c
	mov     r7, r0
	mov     r0, #0x2c
	bl      Function_2003d5c
	str     r0, [sp, #0x0]
	mov     r0, #0x2e
	bl      Function_2003d5c
	str     r0, [sp, #0x4]
	mov     r0, #0x2f
	bl      Function_2003d5c
	str     r0, [sp, #0x8]
	mov     r0, #0x33
	bl      Function_2003d5c
	str     r0, [sp, #0xc]
	mov     r0, #0x30
	bl      Function_2003d5c
	str     r0, [sp, #0x10]
	mov     r0, #0x31
	bl      Function_2003d5c
	str     r0, [sp, #0x14]
	mov     r0, #0x32
	bl      Function_2003d5c
	str     r0, [sp, #0x18]
	mov     r0, #0x34
	bl      Function_2003d5c
	mov     r1, #0x0
	str     r1, [r5, #0x0]
	strh    r1, [r4, #0x0]
	str     r1, [r6, #0x0]
	ldr     r2, [sp, #0x0]
	str     r1, [r7, #0x0]
	str     r1, [r2, #0x0]
	ldr     r2, [sp, #0x4]
	strb    r1, [r2, #0x0]
	ldr     r2, [sp, #0x8]
	str     r1, [r2, #0x0]
	ldr     r2, [sp, #0xc]
	strh    r1, [r2, #0x0]
	ldr     r2, [sp, #0x10]
	str     r1, [r2, #0x0]
	ldr     r2, [sp, #0x14]
	str     r1, [r2, #0x0]
	ldr     r2, [sp, #0x18]
	str     r1, [r2, #0x0]
	strb    r1, [r0, #0x0]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x20060ea


.incbin "baserom/arm9.bin", 0x60ea, 0x2006150 - 0x20060ea


.thumb
Function_2006150: @ 2006150 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2004b3c
	mov     r0, r5
	bl      Function_2006214
	bl      Function_20041fc
	bl      Function_2004b18
	cmp     r0, #0xff
	beq     branch_2006170
	mov     r1, #0x1
	bl      Function_20049f4
.thumb
branch_2006170: @ 2006170 :thumb
	mov     r0, #0x1d
	bl      Function_2003d5c
	bl      Function_2004014
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2004080
	mov     r0, #0x2
	bl      Function_20040cc
	mov     r1, r5
	blx     Function_20bad78
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2004aa0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x200619c


.incbin "baserom/arm9.bin", 0x619c, 0x2006214 - 0x200619c


.thumb
Function_2006214: @ 2006214 :thumb
	push    {r3,lr}
	mov     r0, #0xe
	bl      Function_2003d5c
	mov     r1, #0xf
	strh    r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2006222


.incbin "baserom/arm9.bin", 0x6222, 0x2006224 - 0x2006222


.thumb
Function_2006224: @ 2006224 :thumb
	push    {r4,lr}
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, #0x1e
	bl      Function_2003d5c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_200625a
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2006252
	mov     r0, #0xe
	bl      Function_2004d04
	cmp     r0, #0x0
	bne     branch_200625a
	bl      Function_2006350
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2006252

.thumb
branch_2006252: @ 2006252 :thumb
	bl      Function_2006350
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x200625a

.thumb
branch_200625a: @ 200625a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x200625e


.incbin "baserom/arm9.bin", 0x625e, 0x2006260 - 0x200625e


.thumb
Function_2006260: @ 2006260 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x1f
	bl      Function_2003d5c
	mov     r5, r0
	mov     r0, #0x36
	bl      Function_2003d5c
	mov     r4, r0
	mov     r0, r6
	bl      Function_202cca4
	cmp     r0, #0x0
	bne     branch_2006282
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2006282

.thumb
branch_2006282: @ 2006282 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_200628c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x200628c

.thumb
branch_200628c: @ 200628c :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	beq     branch_2006296
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2006296

.thumb
branch_2006296: @ 2006296 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x200629a


.incbin "baserom/arm9.bin", 0x629a, 0x200629c - 0x200629a


.thumb
Function_200629c: @ 200629c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r6, r0
	mov     r5, r2
	mov     r7, r3
	bl      Function_2005014
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	bl      Function_2003d5c
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2006260
	cmp     r0, #0x0
	bne     branch_20062c4
	add     sp, #0x30
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20062c4

.thumb
branch_20062c4: @ 20062c4 :thumb
	mov     r0, #0x0
	bl      Function_200592c
	bl      Function_2006350
	mov     r0, #0xe
	bl      Function_2004bcc
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #19
	sub     r1, r1, r2
	mov     r0, #0x13
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r6
	bl      Function_202ccb0
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_202ccb4
	mov     r0, #0xe
	bl      Function_2004b78
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	bl      Function_2005014
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x20]
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r0, r4, r0
	str     r0, [sp, #0x28]
	lsr     r0, r7, #31
	add     r0, r7, r0
	asr     r0, r0, #1
	add     r0, #0x40
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x8
	mov     r1, #0xe
	str     r5, [sp, #0x24]
	bl      Function_2004cb4
	mov     r4, r0
	mov     r0, #0xe
	mov     r1, r5
	bl      Function_2004d40
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	bl      Function_20063d4
	mov     r0, r4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x200634e


.incbin "baserom/arm9.bin", 0x634e, 0x2006350 - 0x200634e


.thumb
Function_2006350: @ 2006350 :thumb
	push    {r3-r5,lr}
	mov     r0, #0x10
	bl      Function_2003d5c
	mov     r5, r0
	mov     r0, #0x1e
	bl      Function_2003d5c
	mov     r4, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2006374
	mov     r0, #0xe
	bl      Function_2004e84
	mov     r0, #0xe
	bl      Function_2004c4c
.thumb
branch_2006374: @ 2006374 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x200637a


.incbin "baserom/arm9.bin", 0x637a, 0x200637c - 0x200637a


.thumb
Function_200637c: @ 200637c :thumb
	push    {lr}
	add     sp, #-0x1c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	bl      Function_2005014
	mov     r1, #0x7d
	str     r0, [sp, #0x4]
	lsl     r1, r1, #4
	mov     r0, #0x1f
	str     r1, [sp, #0x8]
	tst     r0, r1
	beq     branch_200639c
	mov     r0, #0x1f
	bic     r1, r0
	str     r1, [sp, #0x8]
.thumb
branch_200639c: @ 200639c :thumb
	ldr     r0, [pc, #0x14] @ 0x20063b4, (=#0x4174)
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	add     r0, sp, #0x0
	bl      Function_2004b5c
	add     sp, #0x1c
	pop     {pc}
@ 0x20063b2


.incbin "baserom/arm9.bin", 0x63b2, 0x20063b4 - 0x20063b2


.word 0x4174 @ 0x20063b4
.thumb
Function_20063b8: @ 20063b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x20063bc, (=#0x2004b65)
	bx      r3
@ 0x20063bc

.word 0x2004b65 @ 0x20063bc
.thumb
Function_20063c0: @ 20063c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2005014
	mov     r1, r0
	mov     r0, r4
	bl      Function_202ccec
	pop     {r4,pc}
@ 0x20063d2


.incbin "baserom/arm9.bin", 0x63d2, 0x20063d4 - 0x20063d2


.thumb
Function_20063d4: @ 20063d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	bl      Function_2003d5c
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x20063e2


.incbin "baserom/arm9.bin", 0x63e2, 0x20064f0 - 0x20063e2


.thumb
Function_20064f0: @ 20064f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	beq     branch_20064fe
	bl      Function_2022974
.thumb
branch_20064fe: @ 20064fe :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	blx     Function_20c8bbc
	cmp     r0, #0x1
	beq     branch_200650e
	bl      Function_2022974
.thumb
branch_200650e: @ 200650e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2006514

.thumb
Function_2006514: @ 2006514 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2006544
	bl      Function_20066c0
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_2006524: @ 2006524 :thumb
	ldr     r1, [r3, #0x4]
	cmp     r1, #0x1
	bne     branch_200653a
	ldr     r1, [r3, #0x0]
	cmp     r4, r1
	bne     branch_200653a
	lsl     r1, r2, #3
	add     r0, r0, r1
	bl      Function_20064f0
	pop     {r4,pc}
@ 0x200653a

.thumb
branch_200653a: @ 200653a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, #0x8
	blt     branch_2006524
	pop     {r4,pc}
@ 0x2006544

.thumb
Function_2006544: @ 2006544 :thumb
	push    {lr}
	add     sp, #-0x2c
	mov     r2, r0
	add     r0, sp, #0x0
	mov     r1, #0x0
	blx     Function_20c86c8
	cmp     r0, #0x1
	beq     branch_200655a
	bl      Function_2022974
.thumb
branch_200655a: @ 200655a :thumb
	mov     r0, #0x2
	ldr     r2, [sp, #0x4]
	lsl     r0, r0, #24
	cmp     r2, r0
	bhi     branch_2006570
	lsr     r0, r0, #1
	cmp     r2, r0
	bcc     branch_2006570
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {pc}
@ 0x2006570

.thumb
branch_2006570: @ 2006570 :thumb
	mov     r0, #0x1
	ldr     r1, [pc, #0x18] @ 0x200658c, (=#0x27e0000)
	lsl     r0, r0, #14
	add     r0, r1, r0
	cmp     r2, r0
	bhi     branch_2006586
	cmp     r2, r1
	bcc     branch_2006586
	add     sp, #0x2c
	mov     r0, #0x2
	pop     {pc}
@ 0x2006586

.thumb
branch_2006586: @ 2006586 :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {pc}
@ 0x200658c

.word 0x27e0000 @ 0x200658c
.thumb
LoadOverlay: @ 2006590 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0
	str     r1, [sp, #0x0]
	bl      Function_2006644
	cmp     r0, #0x0
	bne     branch_20065a8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20065a8

.thumb
branch_20065a8: @ 20065a8 :thumb
	mov     r0, r5
	bl      Function_2006544
	mov     r7, r0
	bl      Function_20066c0
	mov     r3, r0
	mov     r6, #0x0
	mov     r1, r3
.thumb
branch_20065ba: @ 20065ba :thumb
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	bne     branch_20065cc
	lsl     r1, r6, #3
	add     r2, r3, r1
	mov     r0, #0x1
	str     r0, [r2, #0x4]
	str     r5, [r3, r1]
	b       branch_20065d4
@ 0x20065cc

.thumb
branch_20065cc: @ 20065cc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, #0x8
	cmp     r6, #0x8
	blt     branch_20065ba
.thumb
branch_20065d4: @ 20065d4 :thumb
	cmp     r6, #0x8
	blt     branch_20065e0
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20065e0

.thumb
branch_20065e0: @ 20065e0 :thumb
	.hword  0x1e7e @ sub r6, r7, #0x1
	cmp     r6, #0x1
	bhi     branch_20065f0
	mov     r0, #0x0
	mvn     r0, r0
	blx     Function_20c84e0
	str     r0, [sp, #0x0]
.thumb
branch_20065f0: @ 20065f0 :thumb
	cmp     r4, #0x0
	beq     branch_20065fe
	cmp     r4, #0x1
	beq     branch_200660a
	cmp     r4, #0x2
	beq     branch_2006616
	b       branch_2006622
@ 0x20065fe

.thumb
branch_20065fe: @ 20065fe :thumb
	mov     r0, #0x0
	mov     r1, r5
	bl      Function_200671c
	mov     r4, r0
	b       branch_200662a
@ 0x200660a

.thumb
branch_200660a: @ 200660a :thumb
	mov     r0, #0x0
	mov     r1, r5
	bl      Function_2006724
	mov     r4, r0
	b       branch_200662a
@ 0x2006616

.thumb
branch_2006616: @ 2006616 :thumb
	mov     r0, #0x0
	mov     r1, r5
	bl      Function_200675c
	mov     r4, r0
	b       branch_200662a
@ 0x2006622

.thumb
branch_2006622: @ 2006622 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x200662a

.thumb
branch_200662a: @ 200662a :thumb
	cmp     r6, #0x1
	bhi     branch_2006634
	ldr     r0, [sp, #0x0]
	blx     Function_20c84e0
.thumb
branch_2006634: @ 2006634 :thumb
	cmp     r4, #0x0
	bne     branch_2006640
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2006640

.thumb
branch_2006640: @ 2006640 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2006644

.thumb
Function_2006644: @ 2006644 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	mov     r4, r0
	bl      Function_20066e4
	cmp     r0, #0x0
	bne     branch_200665c
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x200665c

.thumb
branch_200665c: @ 200665c :thumb
	mov     r0, r4
	bl      Function_2006544
	bl      Function_20066c0
	mov     r5, r0
	mov     r4, #0x0
	add     r6, sp, #0x4
	add     r7, sp, #0x0
.thumb
branch_200666e: @ 200666e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_20066b0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_20066e4
	cmp     r0, #0x1
	bne     branch_20066b0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	cmp     r2, r1
	bcc     branch_2006690
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	bcc     branch_20066a6
.thumb
branch_2006690: @ 2006690 :thumb
	ldr     r3, [sp, #0x8]
	cmp     r3, r1
	bls     branch_200669c
	ldr     r0, [sp, #0x0]
	cmp     r3, r0
	bls     branch_20066a6
.thumb
branch_200669c: @ 200669c :thumb
	cmp     r2, r1
	bhi     branch_20066b0
	ldr     r0, [sp, #0x0]
	cmp     r3, r0
	bcc     branch_20066b0
.thumb
branch_20066a6: @ 20066a6 :thumb
	bl      Function_2022974
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20066b0

.thumb
branch_20066b0: @ 20066b0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x8
	blt     branch_200666e
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x20066be


.incbin "baserom/arm9.bin", 0x66be, 0x20066c0 - 0x20066be


.thumb
Function_20066c0: @ 20066c0 :thumb
	cmp     r0, #0x0
	beq     branch_20066cc
	cmp     r0, #0x1
	beq     branch_20066d0
	cmp     r0, #0x2
	beq     branch_20066d4
.thumb
branch_20066cc: @ 20066cc :thumb
	ldr     r0, [pc, #0x8] @ 0x20066d8, (=#0x21bf370)
	bx      lr
@ 0x20066d0

.thumb
branch_20066d0: @ 20066d0 :thumb
	ldr     r0, [pc, #0x8] @ 0x20066dc, (=#0x21bf3b0)
	bx      lr
@ 0x20066d4

.thumb
branch_20066d4: @ 20066d4 :thumb
	ldr     r0, [pc, #0x8] @ 0x20066e0, (=#0x21bf3f0)
	bx      lr
@ 0x20066d8

.word 0x21bf370 @ 0x20066d8
.word 0x21bf3b0 @ 0x20066dc
.word 0x21bf3f0 @ 0x20066e0
.thumb
Function_20066e4: @ 20066e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	mov     r3, r0
	mov     r5, r1
	mov     r4, r2
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, r3
	blx     Function_20c86c8
	cmp     r0, #0x0
	bne     branch_2006706
	bl      Function_2022974
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x2006706

.thumb
branch_2006706: @ 2006706 :thumb
	ldr     r2, [sp, #0x4]
	str     r2, [r5, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	add     r0, r2, r0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x200671a


.incbin "baserom/arm9.bin", 0x671a, 0x200671c - 0x200671a


.thumb
Function_200671c: @ 200671c :thumb
	ldr     r3, [pc, #0x0] @ 0x2006720, (=#0x20c8b68)
	bx      r3
@ 0x2006720

.word 0x20c8b68 @ 0x2006720
.thumb
Function_2006724: @ 2006724 :thumb
	push    {lr}
	add     sp, #-0x2c
	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	blx     Function_20c86c8
	cmp     r0, #0x0
	bne     branch_200673e
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {pc}
@ 0x200673e

.thumb
branch_200673e: @ 200673e :thumb
	add     r0, sp, #0x0
	blx     Function_20c8850
	cmp     r0, #0x0
	bne     branch_200674e
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {pc}
@ 0x200674e

.thumb
branch_200674e: @ 200674e :thumb
	add     r0, sp, #0x0
	blx     Function_20c8974
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {pc}
@ 0x200675a


.incbin "baserom/arm9.bin", 0x675a, 0x200675c - 0x200675a


.thumb
Function_200675c: @ 200675c :thumb
	push    {lr}
	add     sp, #-0x74
	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	blx     Function_20c86c8
	cmp     r0, #0x0
	bne     branch_2006776
	add     sp, #0x74
	mov     r0, #0x0
	pop     {pc}
@ 0x2006776

.thumb
branch_2006776: @ 2006776 :thumb
	add     r0, sp, #0x2c
	blx     Function_20c7da0
	add     r0, sp, #0x0
	add     r1, sp, #0x2c
	blx     Function_20c87c4
	add     r0, sp, #0x2c
	blx     Function_20c8104
	add     r0, sp, #0x2c
	blx     Function_20c80c8
	add     r0, sp, #0x0
	blx     Function_20c8974
	mov     r0, #0x1
	add     sp, #0x74
	pop     {pc}
@ 0x200679c

.thumb
Function_200679c: @ 200679c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r7, r2
	cmp     r5, #0x0
	beq     branch_20067c0
	mov     r0, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_20067b6
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20067b6

.thumb
branch_20067b6: @ 20067b6 :thumb
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	b       branch_20067c2
@ 0x20067c0

.thumb
branch_20067c0: @ 20067c0 :thumb
	mov     r4, #0x0
.thumb
branch_20067c2: @ 20067c2 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x20067ce


.incbin "baserom/arm9.bin", 0x67ce, 0x20067e8 - 0x20067ce


.thumb
Function_20067e8: @ 20067e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, r2
	mov     r1, #0x28
	bl      Function_2018144
	mov     r3, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x0
	str     r0, [r3, #0x10]
	str     r0, [r3, #0x14]
	str     r4, [r3, #0x18]
	str     r0, [r3, #0x1c]
	str     r0, [r3, #0x20]
	str     r0, [r3, #0x24]
	mov     r0, r3
	pop     {r3-r5,pc}
@ 0x2006814

.thumb
Function_2006814: @ 2006814 :thumb
	ldr     r3, [pc, #0x0] @ 0x2006818, (=#0x20181c5)
	bx      r3
@ 0x2006818

.word 0x20181c5 @ 0x2006818
.thumb
Function_200681c: @ 200681c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r2
	bl      Function_2018144
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x200682a


.incbin "baserom/arm9.bin", 0x682a, 0x200682c - 0x200682a


.thumb
Function_200682c: @ 200682c :thumb
	ldr     r0, [r0, #0x1c]
	bx      lr
@ 0x2006830

.thumb
Function_2006830: @ 2006830 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x2006840

.thumb
Function_2006840: @ 2006840 :thumb
	ldr     r0, [r0, #0x18]
	bx      lr
@ 0x2006844

.thumb
Function_2006844: @ 2006844 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x3
	bhi     branch_20068c2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r2, r3, #0
	lsl     r2, r6, #0
	lsl     r0, r1, #1
	mov     r1, #0x0
	ldr     r0, [r4, #0xc]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2006872
	mov     r1, #0x2
	bl      LoadOverlay
.thumb
branch_2006872: @ 2006872 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	mov     r1, r4
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	add     r1, #0x14
	blx     r2
	cmp     r0, #0x1
	bne     branch_20068c2
	mov     r0, #0x2
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	b       branch_20068c2
@ 0x200688e


.incbin "baserom/arm9.bin", 0x688e, 0x20068c2 - 0x200688e


.thumb
branch_20068c2: @ 20068c2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20068c6


.incbin "baserom/arm9.bin", 0x68c6, 0x20068c8 - 0x20068c6


.thumb
Function_20068c8: @ 20068c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r4, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0xc]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x18
	mov     r5, r2
	str     r3, [sp, #0x4]
	blx     Function_20c7da0
	add     r0, sp, #0x18
	mov     r1, r4
	blx     Function_20c8080
	add     r0, sp, #0x18
	mov     r1, #0xc
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x2
	blx     Function_20c81d4
	ldr     r4, [sp, #0x14]
	add     r0, sp, #0x18
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x18
	add     r1, sp, #0x8
	mov     r2, #0x2
	blx     Function_20c81d4
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_200692e
	bl      Function_2022974
.thumb
branch_200692e: @ 200692e :thumb
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x18
	add     r1, r6, #0x4
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x18
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0x14]
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x10
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x18
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r2, r6, r7
	ldr     r1, [sp, #0x10]
	add     r2, #0x8
	add     r2, r2, r1
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x18
	add     r1, r1, r2
	mov     r2, #0x0
	blx     Function_20c81e4
	ldr     r0, [sp, #0x78]
	cmp     r0, #0x0
	bne     branch_200698a
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r0, r1, r0
.thumb
branch_200698a: @ 200698a :thumb
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2006994
	bl      Function_2022974
.thumb
branch_2006994: @ 2006994 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x14]
	add     r0, sp, #0x18
	blx     Function_20c81d4
	add     r0, sp, #0x18
	blx     Function_20c80c8
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x20069a8

.thumb
Function_20069a8: @ 20069a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0xc]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x18
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	blx     Function_20c7da0
	add     r0, sp, #0x18
	mov     r1, r4
	blx     Function_20c8080
	add     r0, sp, #0x18
	mov     r1, #0xc
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x2
	blx     Function_20c81d4
	ldr     r4, [sp, #0x14]
	add     r0, sp, #0x18
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x18
	add     r1, sp, #0x8
	mov     r2, #0x2
	blx     Function_20c81d4
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_2006a0e
	bl      Function_2022974
.thumb
branch_2006a0e: @ 2006a0e :thumb
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x18
	add     r1, r6, #0x4
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x18
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0x14]
	blx     Function_20c81e4
	add     r0, sp, #0x18
	add     r1, sp, #0x10
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x18
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r2, r6, r7
	ldr     r1, [sp, #0x10]
	add     r2, #0x8
	add     r2, r2, r1
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x18
	add     r1, r1, r2
	mov     r2, #0x0
	blx     Function_20c81e4
	ldr     r0, [sp, #0x78]
	cmp     r0, #0x0
	bne     branch_2006a6a
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r0, r1, r0
.thumb
branch_2006a6a: @ 2006a6a :thumb
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2006a74
	bl      Function_2022974
.thumb
branch_2006a74: @ 2006a74 :thumb
	ldr     r0, [sp, #0x7c]
	cmp     r0, #0x0
	bne     branch_2006a84
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	bl      Function_2018144
	b       branch_2006a8c
@ 0x2006a84

.thumb
branch_2006a84: @ 2006a84 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	bl      Function_2018184
.thumb
branch_2006a8c: @ 2006a8c :thumb
	mov     r4, r0
	ldr     r2, [sp, #0x14]
	add     r0, sp, #0x18
	mov     r1, r4
	blx     Function_20c81d4
	add     r0, sp, #0x18
	blx     Function_20c80c8
	mov     r0, r4
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x2006aa4

.thumb
LoadFromNARC: @ 2006aa4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, #0x0
	lsl     r4, r1, #2
	ldr     r1, [pc, #0xc] @ 0x2006abc, (=#0x2100498)
	str     r3, [sp, #0x0]
	ldr     r1, [r1, r4]
	bl      Function_20068c8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2006aba


.incbin "baserom/arm9.bin", 0x6aba, 0x2006abc - 0x2006aba


.word 0x2100498 @ 0x2006abc
.thumb
Function_2006ac0: @ 2006ac0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	lsl     r4, r0, #2
	ldr     r0, [pc, #0xc] @ 0x2006ad8, (=#0x2100498)
	str     r3, [sp, #0x4]
	ldr     r0, [r0, r4]
	bl      Function_20069a8
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2006ad8

.word 0x2100498 @ 0x2006ad8

.incbin "baserom/arm9.bin", 0x6adc, 0x2006afc - 0x2006adc


.thumb
Function_2006afc: @ 2006afc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	lsl     r4, r1, #2
	ldr     r1, [pc, #0xc] @ 0x2006b14, (=#0x2100498)
	ldr     r1, [r1, r4]
	bl      Function_20068c8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2006b12


.incbin "baserom/arm9.bin", 0x6b12, 0x2006b14 - 0x2006b12


.word 0x2100498 @ 0x2006b14

.incbin "baserom/arm9.bin", 0x6b18, 0x2006b58 - 0x2006b18


.thumb
Function_2006b58: @ 2006b58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0x4]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x10
	blx     Function_20c7da0
	ldr     r1, [pc, #0xac] @ 0x2006c20, (=#0x2100498)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	add     r0, sp, #0x10
	blx     Function_20c8080
	add     r0, sp, #0x10
	mov     r1, #0xc
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x2
	blx     Function_20c81d4
	ldr     r4, [sp, #0xc]
	add     r0, sp, #0x10
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     Function_20c81e4
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x10
	add     r1, sp, #0x0
	mov     r2, #0x2
	blx     Function_20c81d4
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_2006bbe
	bl      Function_2022974
.thumb
branch_2006bbe: @ 2006bbe :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x10
	add     r1, r6, #0x4
	blx     Function_20c81e4
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x10
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0xc]
	blx     Function_20c81e4
	add     r0, sp, #0x10
	add     r1, sp, #0x8
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r0, sp, #0x10
	add     r1, sp, #0x4
	mov     r2, #0x4
	blx     Function_20c81d4
	add     r2, r6, r7
	ldr     r1, [sp, #0x8]
	add     r2, #0x8
	add     r1, r2, r1
	add     r0, sp, #0x10
	mov     r2, #0x0
	blx     Function_20c81e4
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	bne     branch_2006c18
	bl      Function_2022974
.thumb
branch_2006c18: @ 2006c18 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2006c1e


.incbin "baserom/arm9.bin", 0x6c1e, 0x2006c20 - 0x2006c1e


.word 0x2100498 @ 0x2006c20
.thumb
Function_2006c24: @ 2006c24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x54
	bl      Function_2018144
	mov     r4, r0
	beq     branch_2006ca0
	mov     r1, #0x0
	str     r1, [r4, #0x48]
	blx     Function_20c7da0
	ldr     r1, [pc, #0x64] @ 0x2006ca4, (=#0x2100498)
	lsl     r2, r5, #2
	ldr     r1, [r1, r2]
	mov     r0, r4
	blx     Function_20c8080
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x0
	blx     Function_20c81e4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x48
	mov     r2, #0x2
	blx     Function_20c81d4
	ldr     r1, [r4, #0x48]
	mov     r0, r4
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r2, #0x0
	blx     Function_20c81e4
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     Function_20c81d4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	mov     r2, #0x2
	blx     Function_20c81d4
	ldr     r1, [r4, #0x48]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	add     r5, r1, r0
	mov     r0, r4
	add     r1, r5, #0x4
	blx     Function_20c81e4
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     Function_20c81d4
	ldr     r0, [sp, #0x0]
	add     r0, r5, r0
	str     r0, [r4, #0x4c]
.thumb
branch_2006ca0: @ 2006ca0 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2006ca4

.word 0x2100498 @ 0x2006ca4
.thumb
Function_2006ca8: @ 2006ca8 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_20c80c8
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2006cb8


.incbin "baserom/arm9.bin", 0x6cb8, 0x2006dc8 - 0x2006cb8


.thumb
Function_2006dc8: @ 2006dc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, r4
	bhi     branch_2006dde
	bl      Function_2022974
.thumb
branch_2006dde: @ 2006dde :thumb
	ldr     r2, [r5, #0x48]
	lsl     r1, r4, #3
	add     r2, #0xc
	add     r1, r2, r1
	mov     r0, r5
	mov     r2, #0x0
	blx     Function_20c81e4
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     Function_20c81d4
	ldr     r2, [r5, #0x4c]
	ldr     r1, [sp, #0x0]
	add     r2, #0x8
	add     r1, r2, r1
	mov     r0, r5
	add     r1, r6, r1
	mov     r2, #0x0
	blx     Function_20c81e4
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r7
	blx     Function_20c81d4
	pop     {r3-r7,pc}
@ 0x2006e16


.incbin "baserom/arm9.bin", 0x6e16, 0x2006e3c - 0x2006e16


.thumb
Function_2006e3c: @ 2006e3c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, #0x0
	mov     r4, r3
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	bl      Function_2006fe8
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_20072d0
	pop     {r3-r5,pc}
@ 0x2006e5e


.incbin "baserom/arm9.bin", 0x6e5e, 0x2006e84 - 0x2006e5e


.thumb
Function_2006e84: @ 2006e84 :thumb
	push    {lr}
	add     sp, #-0xc
	str     r3, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	str     r3, [sp, #0x4]
	ldr     r3, [sp, #0x14]
	str     r3, [sp, #0x8]
	mov     r3, #0x0
	bl      Function_2006e9c
	add     sp, #0xc
	pop     {pc}
@ 0x2006e9c

.thumb
Function_2006e9c: @ 2006e9c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	ldr     r3, [sp, #0x18]
	mov     r2, #0x0
	bl      Function_2006fe8
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_20073bc
	pop     {r3-r5,pc}
@ 0x2006ebe


.incbin "baserom/arm9.bin", 0x6ebe, 0x2006f50 - 0x2006ebe


.thumb
Function_2006f50: @ 2006f50 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r3
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	bl      Function_2006fe8
	mov     r1, r4
	bl      Function_20075a0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2006f6a


.incbin "baserom/arm9.bin", 0x6f6a, 0x2006fe8 - 0x2006f6a


.thumb
Function_2006fe8: @ 2006fe8 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r7, r0
	mov     r6, r3
	str     r1, [sp, #0x0]
	cmp     r5, #0x0
	bne     branch_2006ffc
	ldr     r2, [sp, #0x18]
	cmp     r2, #0x1
	bne     branch_2007010
.thumb
branch_2006ffc: @ 2006ffc :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2006b58
	mov     r1, r0
	mov     r0, r6
	bl      Function_2018184
	mov     r4, r0
	b       branch_200701e
@ 0x2007010

.thumb
branch_2007010: @ 2007010 :thumb
	bl      Function_2006b58
	mov     r1, r0
	mov     r0, r6
	bl      Function_2018144
	mov     r4, r0
.thumb
branch_200701e: @ 200701e :thumb
	cmp     r4, #0x0
	beq     branch_2007062
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	bl      LoadFromNARC
	cmp     r5, #0x0
	beq     branch_2007062
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_2007042
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	lsr     r1, r1, #8
	bl      Function_2018144
	b       branch_200704c
@ 0x2007042

.thumb
branch_2007042: @ 2007042 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	lsr     r1, r1, #8
	bl      Function_2018184
.thumb
branch_200704c: @ 200704c :thumb
	mov     r5, r0
	cmp     r5, #0x0
	beq     branch_2007060
	mov     r0, r4
	mov     r1, r5
	blx     Function_20c4f48
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_2007060: @ 2007060 :thumb
	mov     r4, r5
.thumb
branch_2007062: @ 2007062 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2007066


.incbin "baserom/arm9.bin", 0x7066, 0x20072d0 - 0x2007066


.thumb
Function_20072d0: @ 20072d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r1, [sp, #0x4]
	mov     r6, r2
	mov     r7, r3
	ldr     r4, [sp, #0x20]
	cmp     r5, #0x0
	beq     branch_200730c
	add     r1, sp, #0x8
	blx     Function_20a7164
	cmp     r0, #0x0
	beq     branch_2007306
	cmp     r4, #0x0
	bne     branch_20072f4
	ldr     r0, [sp, #0x8]
	ldr     r4, [r0, #0x10]
.thumb
branch_20072f4: @ 20072f4 :thumb
	str     r7, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	lsl     r1, r6, #24
	ldr     r0, [sp, #0x4]
	ldr     r2, [r2, #0x14]
	lsr     r1, r1, #24
	mov     r3, r4
	bl      Function_201958c
.thumb
branch_2007306: @ 2007306 :thumb
	mov     r0, r5
	bl      Function_20181c4
.thumb
branch_200730c: @ 200730c :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2007312


.incbin "baserom/arm9.bin", 0x7312, 0x20073bc - 0x2007312


.thumb
Function_20073bc: @ 20073bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	ldr     r5, [sp, #0x20]
	mov     r1, r0
	beq     branch_2007492
	add     r1, sp, #0x4
	blx     Function_20a71b0
	cmp     r0, #0x0
	beq     branch_200748c
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0xc]
	add     r1, r1, r7
	str     r1, [r0, #0xc]
	cmp     r5, #0x0
	bne     branch_20073ea
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	sub     r5, r0, r7
.thumb
branch_20073ea: @ 20073ea :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	ldr     r0, [r0, #0xc]
	blx     Function_20c2c54
	cmp     r4, #0x7
	bhi     branch_200747c
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r6, #1
	lsl     r6, r6, #1
	lsl     r6, r1, #0
	lsl     r2, r0, #1
	lsl     r6, r6, #1
	lsl     r6, r6, #1
	lsl     r0, r5, #0
	lsl     r4, r3, #1
	blx     Function_20c096c
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x7c] @ 0x2007498, (=#0x20e4d30)
	lsl     r4, r4, #2
	ldr     r0, [r0, #0xc]
	ldr     r3, [r3, r4]
	mov     r1, r6
	mov     r2, r5
	blx     r3
	blx     Function_20c0a7c
	b       branch_200748c
@ 0x200742e


.incbin "baserom/arm9.bin", 0x742e, 0x200747c - 0x200742e


.thumb
branch_200747c: @ 200747c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x18] @ 0x2007498, (=#0x20e4d30)
	lsl     r4, r4, #2
	ldr     r0, [r0, #0xc]
	ldr     r3, [r3, r4]
	mov     r1, r6
	mov     r2, r5
	blx     r3
.thumb
branch_200748c: @ 200748c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_20181c4
.thumb
branch_2007492: @ 2007492 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2007496


.incbin "baserom/arm9.bin", 0x7496, 0x2007498 - 0x2007496


.word 0x20e4d30 @ 0x2007498

.incbin "baserom/arm9.bin", 0x749c, 0x20075a0 - 0x200749c


.thumb
Function_20075a0: @ 20075a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_20075b8
	blx     Function_20a7164
	cmp     r0, #0x0
	bne     branch_20075b8
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20075b8

.thumb
branch_20075b8: @ 20075b8 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x20075bc


.incbin "baserom/arm9.bin", 0x75bc, 0x200762c - 0x20075bc


.thumb
Function_200762c: @ 200762c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0xce
	lsl     r1, r1, #2
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0xba
	lsl     r0, r0, #2
	mov     r1, r0
	mov     r3, r0
	str     r5, [r4, r0]
	mov     r2, #0x0
	add     r1, #0x48
	strb    r2, [r4, r1]
	add     r1, r0, #0x4
	str     r2, [r4, r1]
	mov     r1, #0x2
	lsl     r1, r1, #14
	add     r3, #0x8
	str     r1, [r4, r3]
	mov     r3, r0
	add     r3, #0xc
	str     r2, [r4, r3]
	mov     r2, #0x80
	add     r0, #0x10
	str     r2, [r4, r0]
	mov     r0, r5
	bl      Function_2018144
	mov     r1, #0xbf
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r5
	mov     r1, #0xc0
	bl      Function_2018144
	mov     r1, #0x3
	lsl     r1, r1, #8
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c4bb8
	mov     r0, r5
	mov     r1, #0xc0
	bl      Function_2018144
	mov     r1, #0xc1
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c4bb8
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
.thumb
branch_20076a6: @ 20076a6 :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0xac
	blx     Function_20c4bb8
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xac
	cmp     r6, #0x4
	blt     branch_20076a6
	blx     Function_20a73c0
	ldr     r2, [pc, #0x9c] @ 0x200775c, (=#0x333)
	mov     r0, #0x0
	strb    r0, [r4, r2]
	sub     r2, #0x4b
	ldr     r2, [r4, r2]
	mov     r0, #0x75
	mov     r1, #0xfb
	bl      Function_2006ac0
	add     r1, sp, #0xc
	str     r0, [sp, #0x4]
	blx     Function_20a7118
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc3
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r0, #0x8]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [sp, #0xc]
	add     r1, #0x8
	ldr     r0, [r0, #0xc]
	str     r0, [r4, r1]
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x14]
	str     r0, [sp, #0x8]
	bl      Function_2009348
	ldr     r1, [sp, #0x8]
	mov     r0, #0xbf
	lsl     r0, r0, #2
	mov     r2, #0x2
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, r0]
	lsl     r2, r2, #14
	blx     Function_20c4cf4
	mov     r0, #0x0
	mov     r7, #0xbf
	ldr     r6, [pc, #0x4c] @ 0x2007760, (=#0x5050)
	mov     r12, r0
	str     r0, [sp, #0x0]
	mov     r3, r0
	lsl     r7, r7, #2
.thumb
branch_200771a: @ 200771a :thumb
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r2, r0
.thumb
branch_2007722: @ 2007722 :thumb
	ldr     r5, [r4, r7]
	ldrb    r0, [r2, #0x0]
	add     r5, r3, r5
	add     r5, r1, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r5, r6]
	cmp     r1, #0x28
	blt     branch_2007722
	ldr     r0, [sp, #0x0]
	add     r3, #0x80
	add     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x50
	blt     branch_200771a
	ldr     r0, [sp, #0x4]
	bl      Function_20181c4
	ldr     r0, [pc, #0x14] @ 0x2007764, (=#0x331)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x200775c

.word 0x333 @ 0x200775c
.word 0x5050 @ 0x2007760
.word 0x331 @ 0x2007764

.incbin "baserom/arm9.bin", 0x7768, 0x2007b6c - 0x2007768


.thumb
Function_2007b6c: @ 2007b6c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20181c4
	mov     r0, #0x3
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	bl      Function_20181c4
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20181c4
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2007b96


.incbin "baserom/arm9.bin", 0x7b96, 0x2009328 - 0x2007b96


.thumb
Function_2009328: @ 2009328 :thumb
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2009340, (=#0x41c64e6d)
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x10] @ 0x2009344, (=#0x6073)
	add     r1, r3, r1
	str     r1, [r0, #0x0]
	lsr     r0, r1, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x200933e


.incbin "baserom/arm9.bin", 0x933e, 0x2009340 - 0x200933e


.word 0x41c64e6d @ 0x2009340
.word 0x6073 @ 0x2009344
.thumb
Function_2009348: @ 2009348 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r6, #0x32
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	add     r7, sp, #0x0
	lsl     r6, r6, #6
.thumb
branch_2009358: @ 2009358 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	eor     r0, r1
	strh    r0, [r5, #0x0]
	mov     r0, r7
	bl      Function_2009328
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r6
	blt     branch_2009358
	pop     {r3-r7,pc}
@ 0x2009370

.thumb
Function_2009370: @ 2009370 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x28] @ 0x200939c, (=#0x18fe)
	mov     r6, #0x0
	ldrh    r2, [r0, r1]
	lsr     r4, r1, #1
	add     r5, r0, r1
	str     r2, [sp, #0x0]
	add     r7, sp, #0x0
	mvn     r6, r6
.thumb
branch_2009382: @ 2009382 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	eor     r0, r1
	strh    r0, [r5, #0x0]
	mov     r0, r7
	bl      Function_2009328
	.hword  0x1e64 @ sub r4, r4, #0x1
	.hword  0x1ead @ sub r5, r5, #0x2
	cmp     r4, r6
	bgt     branch_2009382
	pop     {r3-r7,pc}
@ 0x200939a


.incbin "baserom/arm9.bin", 0x939a, 0x200939c - 0x200939a


.word 0x18fe @ 0x200939c
.thumb
Function_20093a0: @ 20093a0 :thumb
	push    {r3,lr}
	sub     r1, #0xa5
	cmp     r1, #0x1
	bhi     branch_20093ae
	bl      Function_2009370
	pop     {r3,pc}
@ 0x20093ae

.thumb
branch_20093ae: @ 20093ae :thumb
	bl      Function_2009348
	pop     {r3,pc}
@ 0x20093b4


.incbin "baserom/arm9.bin", 0x93b4, 0x2009dc8 - 0x20093b4


.thumb
Function_2009dc8: @ 2009dc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	cmp     r5, #0x0
	bne     branch_2009dd6
	bl      Function_2022974
.thumb
branch_2009dd6: @ 2009dd6 :thumb
	ldr     r0, [r5, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2009e04
	mov     r4, r6
.thumb
branch_2009de0: @ 2009de0 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	beq     branch_2009dfa
	bl      Function_2022b80
	cmp     r0, r7
	bne     branch_2009dfa
	mov     r0, #0xc
	ldr     r1, [r5, #0x4]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r3-r7,pc}
@ 0x2009dfa

.thumb
branch_2009dfa: @ 2009dfa :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, r0
	blt     branch_2009de0
.thumb
branch_2009e04: @ 2009e04 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2009e08

.thumb
Function_2009e08: @ 2009e08 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2009e12
	bl      Function_2022974
.thumb
branch_2009e12: @ 2009e12 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2022b80
	pop     {r4,pc}
@ 0x2009e1a


.incbin "baserom/arm9.bin", 0x9e1a, 0x2009eac - 0x2009e1a


.thumb
Function_2009eac: @ 2009eac :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2009eb6
	bl      Function_2022974
.thumb
branch_2009eb6: @ 2009eb6 :thumb
	ldr     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2009eba


.incbin "baserom/arm9.bin", 0x9eba, 0x200a534 - 0x2009eba


.thumb
Function_200a534: @ 200a534 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_200a53e
	bl      Function_2022974
.thumb
branch_200a53e: @ 200a53e :thumb
	mov     r0, r4
	bl      Function_2009eac
	cmp     r0, #0x0
	beq     branch_200a54c
	bl      Function_2022974
.thumb
branch_200a54c: @ 200a54c :thumb
	mov     r0, r4
	bl      Function_2009e08
	bl      Function_201ebdc
	pop     {r4,pc}
@ 0x200a558


.incbin "baserom/arm9.bin", 0xa558, 0x200a72c - 0x200a558


.thumb
Function_200a72c: @ 200a72c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_200a73a
	bl      Function_2022974
.thumb
branch_200a73a: @ 200a73a :thumb
	mov     r0, r5
	bl      Function_2009eac
	cmp     r0, #0x1
	beq     branch_200a748
	bl      Function_2022974
.thumb
branch_200a748: @ 200a748 :thumb
	mov     r0, r5
	bl      Function_2009e08
	cmp     r4, #0x0
	beq     branch_200a75a
	mov     r1, r4
	bl      Function_201fa80
	pop     {r3-r5,pc}
@ 0x200a75a

.thumb
branch_200a75a: @ 200a75a :thumb
	bl      Function_201fa58
	pop     {r3-r5,pc}
@ 0x200a760


.incbin "baserom/arm9.bin", 0xa760, 0x200a9dc - 0x200a760


.thumb
Function_200a9dc: @ 200a9dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x10
	ldsb    r2, [r5, r0]
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	mov     r1, r2
	mov     r7, #0x1a
	ldsh    r2, [r5, r7]
	mul     r1, r0
	mov     r6, #0xa
	ldsh    r0, [r5, r6]
	add     r1, r2, r1
	mov     r4, #0x0
	cmp     r0, r1
	beq     branch_200aa3a
	cmp     r2, r0
	beq     branch_200aa3a
	strh    r1, [r5, #0x1a]
	ldrh    r3, [r5, #0x18]
	ldrh    r0, [r5, #0x16]
	mov     r2, r5
	mov     r1, r5
	add     r0, r3, r0
	strh    r0, [r5, #0x18]
	ldrh    r3, [r5, #0x18]
	ldrh    r0, [r5, #0x8]
	add     r2, #0x1a
	add     r1, #0x18
	cmp     r3, r0
	bcc     branch_200aa3e
	mov     r3, #0x10
	ldsh    r0, [r2, r4]
	ldsb    r3, [r5, r3]
	add     r0, r0, r3
	strh    r0, [r2, #0x0]
	ldsh    r2, [r5, r7]
	ldsh    r0, [r5, r6]
	cmp     r2, r0
	beq     branch_200aa36
	ldrh    r2, [r1, #0x0]
	ldrh    r0, [r5, #0x8]
	sub     r0, r2, r0
	strh    r0, [r1, #0x0]
	b       branch_200aa3e
@ 0x200aa36

.thumb
branch_200aa36: @ 200aa36 :thumb
	mov     r4, #0x1
	b       branch_200aa3e
@ 0x200aa3a

.thumb
branch_200aa3a: @ 200aa3a :thumb
	strh    r0, [r5, #0x1a]
	mov     r4, #0x1
.thumb
branch_200aa3e: @ 200aa3e :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_200aa54
	mov     r2, #0x1a
	ldsh    r2, [r5, r2]
	ldr     r0, [pc, #0x24] @ 0x200aa70, (=#0x4000050)
	ldr     r1, [r5, #0x0]
	blx     Function_20bf578
	b       branch_200aa66
@ 0x200aa54

.thumb
branch_200aa54: @ 200aa54 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_200aa66
	mov     r2, #0x1a
	ldsh    r2, [r5, r2]
	ldr     r0, [pc, #0x14] @ 0x200aa74, (=#0x4001050)
	ldr     r1, [r5, #0x0]
	blx     Function_20bf578
.thumb
branch_200aa66: @ 200aa66 :thumb
	cmp     r4, #0x1
	bne     branch_200aa6e
	mov     r0, #0x0
	str     r0, [r5, #0x1c]
.thumb
branch_200aa6e: @ 200aa6e :thumb
	pop     {r3-r7,pc}
@ 0x200aa70

.word 0x4000050 @ 0x200aa70
.word 0x4001050 @ 0x200aa74

.incbin "baserom/arm9.bin", 0xaa78, 0x200ab4c - 0x200aa78


.thumb
Function_200ab4c: @ 200ab4c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x1
	mov     r6, r1
	tst     r0, r4
	beq     branch_200ab62
	ldr     r0, [pc, #0x20] @ 0x200ab7c, (=#0x4000050)
	mov     r2, r5
	blx     Function_20bf578
.thumb
branch_200ab62: @ 200ab62 :thumb
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_200ab72
	ldr     r0, [pc, #0x14] @ 0x200ab80, (=#0x4001050)
	mov     r1, r6
	mov     r2, r5
	blx     Function_20bf578
.thumb
branch_200ab72: @ 200ab72 :thumb
	mov     r0, r4
	bl      Function_200abb0
	pop     {r4-r6,pc}
@ 0x200ab7a


.incbin "baserom/arm9.bin", 0xab7a, 0x200ab7c - 0x200ab7a


.word 0x4000050 @ 0x200ab7c
.word 0x4001050 @ 0x200ab80
.thumb
Function_200ab84: @ 200ab84 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x200aba4, (=#0x21bf454)
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20c4cf4
	ldr     r0, [pc, #0x14] @ 0x200aba8, (=#0x21bf434)
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20c4cf4
	ldr     r0, [pc, #0x10] @ 0x200abac, (=#0x21bf434)
	mov     r1, #0x0
	str     r1, [r0, #0x3c]
	str     r1, [r0, #0x1c]
	pop     {r3,pc}
@ 0x200aba4

.word 0x21bf454 @ 0x200aba4
.word 0x21bf434 @ 0x200aba8
.word 0x21bf434 @ 0x200abac
.thumb
Function_200abb0: @ 200abb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	tst     r0, r4
	beq     branch_200abca
	ldr     r0, [pc, #0x28] @ 0x200abe4, (=#0x21bf454)
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20c4cf4
	ldr     r0, [pc, #0x20] @ 0x200abe8, (=#0x21bf434)
	mov     r1, #0x0
	str     r1, [r0, #0x3c]
.thumb
branch_200abca: @ 200abca :thumb
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_200abe0
	ldr     r0, [pc, #0x18] @ 0x200abec, (=#0x21bf434)
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20c4cf4
	ldr     r0, [pc, #0xc] @ 0x200abe8, (=#0x21bf434)
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
.thumb
branch_200abe0: @ 200abe0 :thumb
	pop     {r4,pc}
@ 0x200abe2


.incbin "baserom/arm9.bin", 0xabe2, 0x200abe4 - 0x200abe2


.word 0x21bf454 @ 0x200abe4
.word 0x21bf434 @ 0x200abe8
.word 0x21bf434 @ 0x200abec
.thumb
Function_200abf0: @ 200abf0 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x200ac10, (=#0x21bf434)
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x0
	beq     branch_200ac00
	ldr     r0, [pc, #0x18] @ 0x200ac14, (=#0x21bf454)
	bl      Function_200a9dc
.thumb
branch_200ac00: @ 200ac00 :thumb
	ldr     r0, [pc, #0xc] @ 0x200ac10, (=#0x21bf434)
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_200ac0e
	ldr     r0, [pc, #0xc] @ 0x200ac18, (=#0x21bf434)
	bl      Function_200a9dc
.thumb
branch_200ac0e: @ 200ac0e :thumb
	pop     {r3,pc}
@ 0x200ac10

.word 0x21bf434 @ 0x200ac10
.word 0x21bf454 @ 0x200ac14
.word 0x21bf434 @ 0x200ac18

.incbin "baserom/arm9.bin", 0xac1c, 0x200ac5c - 0x200ac1c


.thumb
Function_200ac5c: @ 200ac5c :thumb
	ldr     r3, [pc, #0x0] @ 0x200ac60, (=#0x2006ac1)
	bx      r3
@ 0x200ac60

.word 0x2006ac1 @ 0x200ac60
.thumb
Function_200ac64: @ 200ac64 :thumb
	ldr     r3, [pc, #0x0] @ 0x200ac68, (=#0x20181c5)
	bx      r3
@ 0x200ac68

.word 0x20181c5 @ 0x200ac68
.thumb
Function_200ac6c: @ 200ac6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r3, r0
	ldrh    r0, [r3, #0x0]
	mov     r5, r1
	mov     r4, r2
	cmp     r5, r0
	bcs     branch_200acdc
	lsl     r0, r5, #3
	add     r0, r3, r0
	ldr     r2, [r0, #0x4]
	ldr     r1, [r0, #0x8]
	ldr     r6, [pc, #0x5c] @ 0x200ace4, (=#0x2fd)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldrh    r0, [r3, #0x2]
	add     r7, r5, #0x1
	mul     r6, r0
	mov     r0, r7
	mul     r0, r6
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	lsl     r0, r6, #16
	orr     r0, r6
	eor     r2, r0
	eor     r0, r1
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x0]
	add     r1, r3, r2
	mov     r0, r4
	add     r2, sp, #0x0
	bl      Function_200ad98
	ldr     r2, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x200ace8, (=#0x91bd3)
	mov     r1, r7
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	.hword  0x1e53 @ sub r3, r2, #0x1
	cmp     r2, #0x0
	beq     branch_200ace0
	ldr     r0, [pc, #0x28] @ 0x200acec, (=#0x493d)
.thumb
branch_200acc2: @ 200acc2 :thumb
	ldrh    r1, [r4, #0x0]
	eor     r1, r5
	strh    r1, [r4, #0x0]
	add     r1, r5, r0
	lsl     r1, r1, #16
	lsr     r5, r1, #16
	mov     r1, r3
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1e5b @ sub r3, r3, #0x1
	cmp     r1, #0x0
	bne     branch_200acc2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200acdc

.thumb
branch_200acdc: @ 200acdc :thumb
	bl      Function_2022974
.thumb
branch_200ace0: @ 200ace0 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200ace4

.word 0x2fd @ 0x200ace4
.word 0x91bd3 @ 0x200ace8
.word 0x493d @ 0x200acec
.thumb
Function_200acf0: @ 200acf0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r1, r3
	mov     r4, r2
	bl      Function_2006c24
	mov     r6, r0
	beq     branch_200ad86
	add     r1, sp, #0xc
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_2006dc8
	add     r0, sp, #0x4
	lsl     r2, r4, #3
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r3, #0x8
	bl      Function_2006dc8
	add     r0, sp, #0x4
	ldrh    r2, [r0, #0xa]
	ldr     r0, [pc, #0x64] @ 0x200ad8c, (=#0x2fd)
	add     r1, r4, #0x1
	mul     r0, r2
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r0, r1, #16
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	eor     r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	eor     r0, r1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	lsl     r3, r3, #1
	bl      Function_2006dc8
	ldr     r2, [pc, #0x38] @ 0x200ad90, (=#0x91bd3)
	add     r3, r4, #0x1
	mul     r2, r3
	lsl     r2, r2, #16
	ldr     r0, [sp, #0x8]
	lsr     r3, r2, #16
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldr     r1, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_200ad80
	ldr     r0, [pc, #0x28] @ 0x200ad94, (=#0x493d)
.thumb
branch_200ad6a: @ 200ad6a :thumb
	ldrh    r4, [r1, #0x0]
	eor     r4, r3
	strh    r4, [r1, #0x0]
	add     r3, r3, r0
	lsl     r3, r3, #16
	mov     r4, r2
	.hword  0x1c89 @ add r1, r1, #0x2
	lsr     r3, r3, #16
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r4, #0x0
	bne     branch_200ad6a
.thumb
branch_200ad80: @ 200ad80 :thumb
	mov     r0, r6
	bl      Function_2006ca8
.thumb
branch_200ad86: @ 200ad86 :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x200ad8a


.incbin "baserom/arm9.bin", 0xad8a, 0x200ad8c - 0x200ad8a


.word 0x2fd @ 0x200ad8c
.word 0x91bd3 @ 0x200ad90
.word 0x493d @ 0x200ad94
.thumb
Function_200ad98: @ 200ad98 :thumb
	mov     r3, r0
	mov     r0, r1
	mov     r1, r3
	ldr     r2, [r2, #0x4]
	ldr     r3, [pc, #0x4] @ 0x200ada8, (=#0x20c4b18)
	lsl     r2, r2, #1
	bx      r3
@ 0x200ada6


.incbin "baserom/arm9.bin", 0xada6, 0x200ada8 - 0x200ada6


.word 0x20c4b18 @ 0x200ada8
.thumb
Function_200adac: @ 200adac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r4, r1
	str     r2, [sp, #0x0]
	cmp     r4, r0
	bcs     branch_200ae42
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r3, [r0, #0x4]
	ldr     r2, [r0, #0x8]
	ldrh    r1, [r5, #0x2]
	ldr     r6, [pc, #0x88] @ 0x200ae50, (=#0x2fd)
	add     r0, r4, #0x1
	mul     r6, r1
	mov     r1, r0
	mul     r1, r6
	lsl     r0, r1, #16
	lsr     r1, r0, #16
	lsl     r0, r1, #16
	orr     r1, r0
	mov     r0, r3
	mov     r6, r2
	str     r3, [sp, #0x8]
	eor     r0, r1
	eor     r6, r1
	str     r0, [sp, #0x8]
	lsl     r0, r6, #1
	str     r0, [sp, #0x4]
	str     r2, [sp, #0xc]
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r6, [sp, #0xc]
	bl      Function_2018184
	mov     r7, r0
	beq     branch_200ae4c
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	add     r0, r5, r0
	mov     r1, r7
	blx     Function_20c4b18
	ldr     r1, [pc, #0x4c] @ 0x200ae54, (=#0x91bd3)
	add     r2, r4, #0x1
	mul     r1, r2
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	mov     r0, r7
	.hword  0x1e71 @ sub r1, r6, #0x1
	cmp     r6, #0x0
	beq     branch_200ae2e
	ldr     r3, [pc, #0x40] @ 0x200ae58, (=#0x493d)
.thumb
branch_200ae18: @ 200ae18 :thumb
	ldrh    r4, [r0, #0x0]
	eor     r4, r2
	strh    r4, [r0, #0x0]
	add     r2, r2, r3
	lsl     r2, r2, #16
	mov     r4, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	lsr     r2, r2, #16
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r4, #0x0
	bne     branch_200ae18
.thumb
branch_200ae2e: @ 200ae2e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r6
	bl      Function_2023d8c
	mov     r0, r7
	bl      Function_20181c4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x200ae42

.thumb
branch_200ae42: @ 200ae42 :thumb
	bl      Function_2022974
	ldr     r0, [sp, #0x0]
	bl      Function_20237e8
.thumb
branch_200ae4c: @ 200ae4c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x200ae50

.word 0x2fd @ 0x200ae50
.word 0x91bd3 @ 0x200ae54
.word 0x493d @ 0x200ae58
.thumb
Function_200ae5c: @ 200ae5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r4, r1
	str     r2, [sp, #0x0]
	cmp     r4, r0
	bcs     branch_200af04
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r3, [r0, #0x4]
	ldr     r2, [r0, #0x8]
	ldrh    r1, [r5, #0x2]
	ldr     r6, [pc, #0x9c] @ 0x200af14, (=#0x2fd)
	add     r0, r4, #0x1
	mul     r6, r1
	mov     r1, r0
	mul     r1, r6
	lsl     r0, r1, #16
	lsr     r1, r0, #16
	lsl     r0, r1, #16
	orr     r1, r0
	mov     r0, r3
	mov     r6, r2
	str     r3, [sp, #0x8]
	eor     r0, r1
	eor     r6, r1
	str     r0, [sp, #0x8]
	lsl     r0, r6, #1
	str     r0, [sp, #0x4]
	str     r2, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	str     r6, [sp, #0xc]
	bl      Function_2018184
	mov     r7, r0
	beq     branch_200aefe
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	add     r0, r5, r0
	mov     r1, r7
	blx     Function_20c4b18
	ldr     r1, [pc, #0x60] @ 0x200af18, (=#0x91bd3)
	add     r2, r4, #0x1
	mul     r1, r2
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	mov     r0, r7
	.hword  0x1e71 @ sub r1, r6, #0x1
	cmp     r6, #0x0
	beq     branch_200aede
	ldr     r3, [pc, #0x54] @ 0x200af1c, (=#0x493d)
.thumb
branch_200aec8: @ 200aec8 :thumb
	ldrh    r4, [r0, #0x0]
	eor     r4, r2
	strh    r4, [r0, #0x0]
	add     r2, r2, r3
	lsl     r2, r2, #16
	mov     r4, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	lsr     r2, r2, #16
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r4, #0x0
	bne     branch_200aec8
.thumb
branch_200aede: @ 200aede :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_2023790
	mov     r4, r0
	beq     branch_200aef2
	mov     r1, r7
	mov     r2, r6
	bl      Function_2023d8c
.thumb
branch_200aef2: @ 200aef2 :thumb
	mov     r0, r7
	bl      Function_20181c4
	add     sp, #0x10
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x200aefe

.thumb
branch_200aefe: @ 200aefe :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x200af04

.thumb
branch_200af04: @ 200af04 :thumb
	bl      Function_2022974
	ldr     r1, [sp, #0x0]
	mov     r0, #0x4
	bl      Function_2023790
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x200af14

.word 0x2fd @ 0x200af14
.word 0x91bd3 @ 0x200af18
.word 0x493d @ 0x200af1c
.thumb
Function_200af20: @ 200af20 :thumb
	push    {r3-r7,lr}
	mov     r7, r3
	mov     r5, r1
	mov     r1, r7
	mov     r4, r2
	bl      Function_2006c24
	mov     r6, r0
	beq     branch_200af46
	ldr     r1, [sp, #0x18]
	mov     r2, r4
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r3, r7
	bl      Function_200af48
	mov     r0, r6
	bl      Function_2006ca8
.thumb
branch_200af46: @ 200af46 :thumb
	pop     {r3-r7,pc}
@ 0x200af48

.thumb
Function_200af48: @ 200af48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r2
	add     r2, sp, #0x10
	mov     r4, r3
	str     r2, [sp, #0x0]
	mov     r2, #0x0
	mov     r3, #0x4
	mov     r7, r0
	str     r1, [sp, #0x4]
	bl      Function_2006dc8
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x8]
	cmp     r5, r0
	bcs     branch_200aff6
	add     r0, sp, #0x8
	lsl     r2, r5, #3
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r3, #0x8
	bl      Function_2006dc8
	add     r0, sp, #0x8
	ldrh    r2, [r0, #0xa]
	ldr     r0, [pc, #0x84] @ 0x200b004, (=#0x2fd)
	add     r1, r5, #0x1
	mul     r0, r2
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r0, r1, #16
	orr     r1, r0
	ldr     r0, [sp, #0x8]
	eor     r0, r1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	eor     r0, r1
	lsl     r6, r0, #1
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2018184
	mov     r4, r0
	beq     branch_200b000
	str     r4, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r3, r6
	bl      Function_2006dc8
	ldr     r2, [pc, #0x50] @ 0x200b008, (=#0x91bd3)
	add     r3, r5, #0x1
	mul     r2, r3
	lsl     r2, r2, #16
	ldr     r0, [sp, #0xc]
	lsr     r3, r2, #16
	mov     r1, r4
	.hword  0x1e42 @ sub r2, r0, #0x1
	cmp     r0, #0x0
	beq     branch_200afe2
	ldr     r0, [pc, #0x40] @ 0x200b00c, (=#0x493d)
.thumb
branch_200afcc: @ 200afcc :thumb
	ldrh    r5, [r1, #0x0]
	eor     r5, r3
	strh    r5, [r1, #0x0]
	add     r3, r3, r0
	lsl     r3, r3, #16
	mov     r5, r2
	.hword  0x1c89 @ add r1, r1, #0x2
	lsr     r3, r3, #16
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r5, #0x0
	bne     branch_200afcc
.thumb
branch_200afe2: @ 200afe2 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      Function_2023d8c
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x200aff6

.thumb
branch_200aff6: @ 200aff6 :thumb
	bl      Function_2022974
	ldr     r0, [sp, #0x28]
	bl      Function_20237e8
.thumb
branch_200b000: @ 200b000 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x200b004

.word 0x2fd @ 0x200b004
.word 0x91bd3 @ 0x200b008
.word 0x493d @ 0x200b00c

.incbin "baserom/arm9.bin", 0xb010, 0x200b044 - 0x200b010


.thumb
Function_200b044: @ 200b044 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r2
	add     r2, sp, #0x14
	mov     r5, r3
	str     r2, [sp, #0x0]
	mov     r2, #0x0
	mov     r3, #0x4
	mov     r7, r0
	str     r1, [sp, #0x4]
	bl      Function_2006dc8
	add     r0, sp, #0xc
	ldrh    r0, [r0, #0x8]
	cmp     r4, r0
	bcs     branch_200b102
	add     r0, sp, #0xc
	lsl     r2, r4, #3
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r3, #0x8
	bl      Function_2006dc8
	add     r0, sp, #0xc
	ldrh    r2, [r0, #0xa]
	ldr     r0, [pc, #0x98] @ 0x200b114, (=#0x2fd)
	add     r1, r4, #0x1
	mul     r0, r2
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r0, r1, #16
	orr     r1, r0
	ldr     r0, [sp, #0xc]
	eor     r0, r1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	eor     r0, r1
	mov     r1, r5
	str     r0, [sp, #0x10]
	bl      Function_2023790
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_200b0fc
	ldr     r0, [sp, #0x10]
	lsl     r6, r0, #1
	mov     r0, r5
	mov     r1, r6
	bl      Function_2018184
	mov     r5, r0
	beq     branch_200b0fc
	str     r5, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	mov     r0, r7
	mov     r3, r6
	bl      Function_2006dc8
	ldr     r2, [pc, #0x54] @ 0x200b118, (=#0x91bd3)
	add     r3, r4, #0x1
	mul     r2, r3
	lsl     r2, r2, #16
	ldr     r0, [sp, #0x10]
	lsr     r3, r2, #16
	mov     r1, r5
	.hword  0x1e42 @ sub r2, r0, #0x1
	cmp     r0, #0x0
	beq     branch_200b0ec
	ldr     r0, [pc, #0x44] @ 0x200b11c, (=#0x493d)
.thumb
branch_200b0d6: @ 200b0d6 :thumb
	ldrh    r4, [r1, #0x0]
	eor     r4, r3
	strh    r4, [r1, #0x0]
	add     r3, r3, r0
	lsl     r3, r3, #16
	mov     r4, r2
	.hword  0x1c89 @ add r1, r1, #0x2
	lsr     r3, r3, #16
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r4, #0x0
	bne     branch_200b0d6
.thumb
branch_200b0ec: @ 200b0ec :thumb
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	mov     r1, r5
	bl      Function_2023d8c
	mov     r0, r5
	bl      Function_20181c4
.thumb
branch_200b0fc: @ 200b0fc :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x200b102

.thumb
branch_200b102: @ 200b102 :thumb
	bl      Function_2022974
	mov     r0, #0x4
	mov     r1, r5
	bl      Function_2023790
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x200b112


.incbin "baserom/arm9.bin", 0xb112, 0x200b114 - 0x200b112


.word 0x2fd @ 0x200b114
.word 0x91bd3 @ 0x200b118
.word 0x493d @ 0x200b11c

.incbin "baserom/arm9.bin", 0xb120, 0x200b144 - 0x200b120


.thumb
Function_200b144: @ 200b144 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r3
	mov     r1, #0xc
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2018184
	mov     r4, r0
	beq     branch_200b18c
	cmp     r5, #0x0
	bne     branch_200b178
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_200ac5c
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_200b182
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x200b178

.thumb
branch_200b178: @ 200b178 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_2006c24
	str     r0, [r4, #0x8]
.thumb
branch_200b182: @ 200b182 :thumb
	strh    r5, [r4, #0x0]
	strh    r6, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r7, [r4, #0x6]
	strh    r0, [r4, #0x2]
.thumb
branch_200b18c: @ 200b18c :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x200b190

.thumb
Function_200b190: @ 200b190 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_200b1b6
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_200b1a2
	cmp     r0, #0x1
	beq     branch_200b1aa
	b       branch_200b1b0
@ 0x200b1a2

.thumb
branch_200b1a2: @ 200b1a2 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200ac64
	b       branch_200b1b0
@ 0x200b1aa

.thumb
branch_200b1aa: @ 200b1aa :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2006ca8
.thumb
branch_200b1b0: @ 200b1b0 :thumb
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_200b1b6: @ 200b1b6 :thumb
	pop     {r4,pc}
@ 0x200b1b8

.thumb
Function_200b1b8: @ 200b1b8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrh    r0, [r4, #0x0]
	mov     r3, r1
	cmp     r0, #0x0
	beq     branch_200b1ce
	cmp     r0, #0x1
	beq     branch_200b1d8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b1ce

.thumb
branch_200b1ce: @ 200b1ce :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200adac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b1d8

.thumb
branch_200b1d8: @ 200b1d8 :thumb
	str     r2, [sp, #0x0]
	mov     r2, r3
	ldrh    r1, [r4, #0x6]
	ldrh    r3, [r4, #0x2]
	ldr     r0, [r4, #0x8]
	bl      Function_200af48
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b1ea


.incbin "baserom/arm9.bin", 0xb1ea, 0x200b1ec - 0x200b1ea


.thumb
Function_200b1ec: @ 200b1ec :thumb
	push    {r3,lr}
	mov     r3, r0
	ldrh    r0, [r3, #0x0]
	mov     r2, r1
	cmp     r0, #0x0
	beq     branch_200b1fe
	cmp     r0, #0x1
	beq     branch_200b208
	b       branch_200b214
@ 0x200b1fe

.thumb
branch_200b1fe: @ 200b1fe :thumb
	ldrh    r2, [r3, #0x2]
	ldr     r0, [r3, #0x8]
	bl      Function_200ae5c
	pop     {r3,pc}
@ 0x200b208

.thumb
branch_200b208: @ 200b208 :thumb
	ldr     r0, [r3, #0x8]
	ldrh    r1, [r3, #0x6]
	ldrh    r3, [r3, #0x2]
	bl      Function_200b044
	pop     {r3,pc}
@ 0x200b214

.thumb
branch_200b214: @ 200b214 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x200b218


.incbin "baserom/arm9.bin", 0xb218, 0x200b240 - 0x200b218


.thumb
Function_200b240: @ 200b240 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrh    r0, [r4, #0x0]
	mov     r3, r1
	cmp     r0, #0x0
	beq     branch_200b256
	cmp     r0, #0x1
	beq     branch_200b260
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b256

.thumb
branch_200b256: @ 200b256 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200ac6c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b260

.thumb
branch_200b260: @ 200b260 :thumb
	str     r2, [sp, #0x0]
	mov     r2, r3
	ldrh    r0, [r4, #0x4]
	ldrh    r1, [r4, #0x6]
	ldrh    r3, [r4, #0x2]
	bl      Function_200acf0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x200b272


.incbin "baserom/arm9.bin", 0xb272, 0x200b274 - 0x200b272


.thumb
Function_200b274: @ 200b274 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r2, #0x67
	mov     r5, r0
	mov     r3, r1
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r6, r0
	mov     r1, r5
	mov     r2, r4
	bl      Function_200b240
	mov     r0, r6
	bl      Function_200b190
	pop     {r4-r6,pc}
@ 0x200b29a


.incbin "baserom/arm9.bin", 0xb29a, 0x200b29c - 0x200b29a


.thumb
Function_200b29c: @ 200b29c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r0, #0x1
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #10
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      Function_2023790
	mov     r4, r0
	beq     branch_200b2e6
	mov     r0, r5
	mov     r1, r6
	bl      Function_200b1ec
	mov     r5, r0
	beq     branch_200b2e0
	mov     r0, r7
	mov     r1, r4
	mov     r2, r5
	bl      Function_200c388
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2023868
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_200b2e0: @ 200b2e0 :thumb
	mov     r0, r4
	bl      Function_20237bc
.thumb
branch_200b2e6: @ 200b2e6 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200b2ec


.incbin "baserom/arm9.bin", 0xb2ec, 0x200b358 - 0x200b2ec


.thumb
Function_200b358: @ 200b358 :thumb
	ldr     r3, [pc, #0x8] @ 0x200b364, (=#0x200b369)
	mov     r2, r0
	mov     r0, #0x8
	mov     r1, #0x20
	bx      r3
@ 0x200b362


.incbin "baserom/arm9.bin", 0xb362, 0x200b364 - 0x200b362


.word 0x200b369 @ 0x200b364
.thumb
Function_200b368: @ 200b368 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	bne     branch_200b378
	bl      Function_2022974
.thumb
branch_200b378: @ 200b378 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_200b382
	bl      Function_2022974
.thumb
branch_200b382: @ 200b382 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x10
	bl      Function_2018184
	mov     r4, r0
	beq     branch_200b3e8
	ldr     r0, [sp, #0x4]
	str     r7, [r4, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_2023790
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_200b3e8
	ldr     r0, [sp, #0x4]
	lsl     r1, r7, #3
	bl      Function_2018184
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_200b3e8
	mov     r6, #0x0
	cmp     r7, #0x0
	bls     branch_200b3de
	mov     r5, r6
.thumb
branch_200b3b8: @ 200b3b8 :thumb
	add     r0, r0, r5
	bl      Function_200b444
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_2023790
	ldr     r1, [r4, #0x8]
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	ldr     r0, [r4, #0x8]
	add     r1, r0, r5
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	beq     branch_200b3de
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x8
	cmp     r6, r7
	bcc     branch_200b3b8
.thumb
branch_200b3de: @ 200b3de :thumb
	cmp     r6, r7
	bne     branch_200b3e8
	add     sp, #0x8
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x200b3e8

.thumb
branch_200b3e8: @ 200b3e8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x200b3ee


.incbin "baserom/arm9.bin", 0xb3ee, 0x200b3f0 - 0x200b3ee


.thumb
Function_200b3f0: @ 200b3f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_200b3fe
	bl      Function_2022974
.thumb
branch_200b3fe: @ 200b3fe :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_200b42c
	ldr     r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_200b426
	mov     r4, r6
.thumb
branch_200b40e: @ 200b40e :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_200b426
	bl      Function_20237bc
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	bcc     branch_200b40e
.thumb
branch_200b426: @ 200b426 :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_20181c4
.thumb
branch_200b42c: @ 200b42c :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_200b436
	bl      Function_20237bc
.thumb
branch_200b436: @ 200b436 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, r5
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x200b442


.incbin "baserom/arm9.bin", 0xb442, 0x200b444 - 0x200b442


.thumb
Function_200b444: @ 200b444 :thumb
	bx      lr
@ 0x200b446


.incbin "baserom/arm9.bin", 0xb446, 0x200b448 - 0x200b446


.thumb
Function_200b448: @ 200b448 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	cmp     r6, r0
	bcc     branch_200b45c
	bl      Function_2022974
.thumb
branch_200b45c: @ 200b45c :thumb
	ldr     r0, [r5, #0x0]
	cmp     r6, r0
	bcs     branch_200b48a
	cmp     r4, #0x0
	beq     branch_200b47c
	ldrb    r0, [r4, #0x0]
	ldr     r3, [r5, #0x8]
	lsl     r2, r6, #3
	strb    r0, [r3, r2]
	ldrb    r0, [r4, #0x1]
	add     r1, r3, r2
	strb    r0, [r1, #0x1]
	ldrb    r0, [r4, #0x2]
	strb    r0, [r1, #0x2]
	ldrb    r0, [r4, #0x3]
	strb    r0, [r1, #0x3]
.thumb
branch_200b47c: @ 200b47c :thumb
	ldr     r1, [r5, #0x8]
	lsl     r0, r6, #3
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	mov     r1, r7
	bl      Function_2023810
.thumb
branch_200b48a: @ 200b48a :thumb
	pop     {r3-r7,pc}
@ 0x200b48c

.thumb
Function_200b48c: @ 200b48c :thumb
	push    {r3,lr}
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3,pc}
@ 0x200b496


.incbin "baserom/arm9.bin", 0xb496, 0x200b498 - 0x200b496


.thumb
Function_200b498: @ 200b498 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_2025ef0
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	bl      Function_2023d28
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3-r5,pc}
@ 0x200b4ba


.incbin "baserom/arm9.bin", 0xb4ba, 0x200b4bc - 0x200b4ba


.thumb
Function_200b4bc: @ 200b4bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_2027848
	bl      Function_2027870
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	bl      Function_2023d28
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3-r5,pc}
@ 0x200b4e2


.incbin "baserom/arm9.bin", 0xb4e2, 0x200b4e4 - 0x200b4e2


.thumb
Function_200b4e4: @ 200b4e4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r6, r1
	bl      Function_2025e38
	mov     r7, r0
	ldr     r2, [pc, #0x40] @ 0x200b534, (=#0x229)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r4, r0
	mov     r0, r7
	bl      Function_2025f30
	cmp     r0, #0x0
	bne     branch_200b516
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200b1b8
	b       branch_200b520
@ 0x200b516

.thumb
branch_200b516: @ 200b516 :thumb
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200b1b8
.thumb
branch_200b520: @ 200b520 :thumb
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r4
	bl      Function_200b190
	pop     {r3-r7,pc}
@ 0x200b534

.word 0x229 @ 0x200b534
.thumb
Function_200b538: @ 200b538 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r2, #0x67
	mov     r6, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r4, r0
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074570
	mov     r1, r0
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r4
	bl      Function_200b190
	pop     {r3-r7,pc}
@ 0x200b578


.incbin "baserom/arm9.bin", 0xb578, 0x200b594 - 0x200b578


.thumb
Function_200b594: @ 200b594 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b5c8, (=#0x19d)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	mov     r7, r0
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
	pop     {r3-r7,pc}
@ 0x200b5c6


.incbin "baserom/arm9.bin", 0xb5c6, 0x200b5c8 - 0x200b5c6


.word 0x19d @ 0x200b5c8
.thumb
Function_200b5cc: @ 200b5cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	ldr     r2, [r5, #0xc]
	mov     r1, #0x77
	bl      Function_2074570
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3-r5,pc}
@ 0x200b5ea


.incbin "baserom/arm9.bin", 0xb5ea, 0x200b60c - 0x200b5ea


.thumb
Function_200b60c: @ 200b60c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x14]
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r2, r3
	ldr     r0, [r5, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_20238a0
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3-r5,pc}
@ 0x200b630

.thumb
Function_200b630: @ 200b630 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b664, (=#0x287)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b662
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b662: @ 200b662 :thumb
	pop     {r3-r7,pc}
@ 0x200b664

.word 0x287 @ 0x200b664
.thumb
Function_200b668: @ 200b668 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b69c, (=#0x217)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b69a
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b69a: @ 200b69a :thumb
	pop     {r3-r7,pc}
@ 0x200b69c

.word 0x217 @ 0x200b69c

.incbin "baserom/arm9.bin", 0xb6a0, 0x200b6d8 - 0x200b6a0


.thumb
Function_200b6d8: @ 200b6d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xca
	bl      Function_200b144
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	mov     r7, r0
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
	pop     {r3-r7,pc}
@ 0x200b70a


.incbin "baserom/arm9.bin", 0xb70a, 0x200b70c - 0x200b70a


.thumb
Function_200b70c: @ 200b70c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x62
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b740
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b740: @ 200b740 :thumb
	pop     {r3-r7,pc}
@ 0x200b742


.incbin "baserom/arm9.bin", 0xb742, 0x200b744 - 0x200b742


.thumb
Function_200b744: @ 200b744 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b778, (=#0x189)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b776
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b776: @ 200b776 :thumb
	pop     {r3-r7,pc}
@ 0x200b778

.word 0x189 @ 0x200b778
.thumb
Function_200b77c: @ 200b77c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b7b0, (=#0x18a)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b7ae
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b7ae: @ 200b7ae :thumb
	pop     {r3-r7,pc}
@ 0x200b7b0

.word 0x18a @ 0x200b7b0
.thumb
Function_200b7b4: @ 200b7b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x63
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b7e8
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b7e8: @ 200b7e8 :thumb
	pop     {r3-r7,pc}
@ 0x200b7ea


.incbin "baserom/arm9.bin", 0xb7ea, 0x200b7ec - 0x200b7ea


.thumb
Function_200b7ec: @ 200b7ec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x27
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #4
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b820
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b820: @ 200b820 :thumb
	pop     {r3-r7,pc}
@ 0x200b822


.incbin "baserom/arm9.bin", 0xb822, 0x200b824 - 0x200b822


.thumb
Function_200b824: @ 200b824 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b858, (=#0x227)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b856
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b856: @ 200b856 :thumb
	pop     {r3-r7,pc}
@ 0x200b858

.word 0x227 @ 0x200b858

.incbin "baserom/arm9.bin", 0xb85c, 0x200b928 - 0x200b85c


.thumb
Function_200b928: @ 200b928 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b95c, (=#0x1c9)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b95a
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b95a: @ 200b95a :thumb
	pop     {r3-r7,pc}
@ 0x200b95c

.word 0x1c9 @ 0x200b95c
.thumb
Function_200b960: @ 200b960 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200b994, (=#0x26b)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b992
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b992: @ 200b992 :thumb
	pop     {r3-r7,pc}
@ 0x200b994

.word 0x26b @ 0x200b994
.thumb
Function_200b998: @ 200b998 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x9b
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200b9cc
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200b9cc: @ 200b9cc :thumb
	pop     {r3-r7,pc}
@ 0x200b9ce


.incbin "baserom/arm9.bin", 0xb9ce, 0x200ba08 - 0x200b9ce


.thumb
Function_200ba08: @ 200ba08 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200ba3c, (=#0x26a)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200ba3a
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200ba3a: @ 200ba3a :thumb
	pop     {r3-r7,pc}
@ 0x200ba3c

.word 0x26a @ 0x200ba3c

.incbin "baserom/arm9.bin", 0xba40, 0x200ba94 - 0x200ba40


.thumb
Function_200ba94: @ 200ba94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x9d
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bac8
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bac8: @ 200bac8 :thumb
	pop     {r3-r7,pc}
@ 0x200baca


.incbin "baserom/arm9.bin", 0xbaca, 0x200bacc - 0x200baca


.thumb
Function_200bacc: @ 200bacc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bb00, (=#0x275)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bafe
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bafe: @ 200bafe :thumb
	pop     {r3-r7,pc}
@ 0x200bb00

.word 0x275 @ 0x200bb00
.thumb
Function_200bb04: @ 200bb04 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bb38, (=#0x276)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bb36
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bb36: @ 200bb36 :thumb
	pop     {r3-r7,pc}
@ 0x200bb38

.word 0x276 @ 0x200bb38
.thumb
Function_200bb3c: @ 200bb3c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bb70, (=#0x277)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bb6e
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bb6e: @ 200bb6e :thumb
	pop     {r3-r7,pc}
@ 0x200bb70

.word 0x277 @ 0x200bb70
.thumb
Function_200bb74: @ 200bb74 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xcf
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bba6
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bba6: @ 200bba6 :thumb
	pop     {r3-r7,pc}
@ 0x200bba8

.thumb
Function_200bba8: @ 200bba8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xcc
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bbda
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bbda: @ 200bbda :thumb
	pop     {r3-r7,pc}
@ 0x200bbdc

.thumb
Function_200bbdc: @ 200bbdc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xcc
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bc0e
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bc0e: @ 200bc0e :thumb
	pop     {r3-r7,pc}
@ 0x200bc10


.incbin "baserom/arm9.bin", 0xbc10, 0x200bc80 - 0x200bc10


.thumb
Function_200bc80: @ 200bc80 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bcb4, (=#0x272)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bcb2
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bcb2: @ 200bcb2 :thumb
	pop     {r3-r7,pc}
@ 0x200bcb4

.word 0x272 @ 0x200bcb4
.thumb
Function_200bcb8: @ 200bcb8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bcec, (=#0x273)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bcea
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bcea: @ 200bcea :thumb
	pop     {r3-r7,pc}
@ 0x200bcec

.word 0x273 @ 0x200bcec

.incbin "baserom/arm9.bin", 0xbcf0, 0x200bdd0 - 0x200bcf0


.thumb
Function_200bdd0: @ 200bdd0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200be04, (=#0x2b6)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200be02
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200be02: @ 200be02 :thumb
	pop     {r3-r7,pc}
@ 0x200be04

.word 0x2b6 @ 0x200be04
.thumb
Function_200be08: @ 200be08 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r6, r1
	mov     r4, r3
	bl      Function_2099720
	mov     r2, r0
	beq     branch_200be46
	cmp     r4, #0x0
	beq     branch_200be46
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200be46
	ldr     r2, [r5, #0xc]
	mov     r1, r4
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200be46: @ 200be46 :thumb
	pop     {r3-r7,pc}
@ 0x200be48

.thumb
Function_200be48: @ 200be48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0xc]
	mov     r0, r2
	bl      Function_2014db8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	pop     {r3-r5,pc}
@ 0x200be64

.thumb
Function_200be64: @ 200be64 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xc
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200be96
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200be96: @ 200be96 :thumb
	pop     {r3-r7,pc}
@ 0x200be98

.thumb
Function_200be98: @ 200be98 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xd
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200beca
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200beca: @ 200beca :thumb
	pop     {r3-r7,pc}
@ 0x200becc


.incbin "baserom/arm9.bin", 0xbecc, 0x200bfac - 0x200becc


.thumb
Function_200bfac: @ 200bfac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200bfe0, (=#0x182)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200bfde
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200bfde: @ 200bfde :thumb
	pop     {r3-r7,pc}
@ 0x200bfe0

.word 0x182 @ 0x200bfe0
.thumb
Function_200bfe4: @ 200bfe4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0x28] @ 0x200c018, (=#0x183)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200c016
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200c016: @ 200c016 :thumb
	pop     {r3-r7,pc}
@ 0x200c018

.word 0x183 @ 0x200c018
.thumb
Function_200c01c: @ 200c01c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r2, #0x61
	mov     r4, r1
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r7, r0
	beq     branch_200c050
	ldr     r2, [r5, #0xc]
	mov     r1, r6
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_200c050: @ 200c050 :thumb
	pop     {r3-r7,pc}
@ 0x200c052


.incbin "baserom/arm9.bin", 0xc052, 0x200c324 - 0x200c052


.thumb
Function_200c324: @ 200c324 :thumb
	ldr     r2, [r0, #0x8]
	lsl     r0, r1, #3
	add     r0, r2, r0
	ldr     r3, [pc, #0x8] @ 0x200c334, (=#0x2023f8d)
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bx      r3
@ 0x200c332


.incbin "baserom/arm9.bin", 0xc332, 0x200c334 - 0x200c332


.word 0x2023f8d @ 0x200c334
.thumb
Function_200c338: @ 200c338 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r7, r1
	ldr     r2, [pc, #0x40] @ 0x200c384, (=#0x169)
	ldr     r3, [r5, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r6, r0
	cmp     r4, #0x5
	bls     branch_200c356
	bl      Function_2022974
.thumb
branch_200c356: @ 200c356 :thumb
	cmp     r6, #0x0
	beq     branch_200c380
	cmp     r4, #0x0
	bne     branch_200c362
	mov     r4, #0x79
	b       branch_200c364
@ 0x200c362

.thumb
branch_200c362: @ 200c362 :thumb
	add     r4, #0x73
.thumb
branch_200c364: @ 200c364 :thumb
	ldr     r2, [r5, #0xc]
	mov     r0, r6
	mov     r1, r4
	bl      Function_200b1b8
	ldr     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_200b448
	mov     r0, r6
	bl      Function_200b190
.thumb
branch_200c380: @ 200c380 :thumb
	pop     {r3-r7,pc}
@ 0x200c382


.incbin "baserom/arm9.bin", 0xc382, 0x200c384 - 0x200c382


.word 0x169 @ 0x200c384
.thumb
Function_200c388: @ 200c388 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r0, r2
	bl      Function_2023e2c
	mov     r5, r0
	mov     r0, r6
	bl      Function_20237e8
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x74] @ 0x200c414, (=#0xffff)
	cmp     r1, r0
	beq     branch_200c410
.thumb
branch_200c3a4: @ 200c3a4 :thumb
	ldr     r0, [pc, #0x70] @ 0x200c418, (=#0xfffe)
	cmp     r1, r0
	bne     branch_200c3fe
	mov     r0, r5
	bl      Function_201d108
	cmp     r0, #0x0
	beq     branch_200c3e0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201d134
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	cmp     r4, r0
	bcc     branch_200c3c8
	bl      Function_2022974
.thumb
branch_200c3c8: @ 200c3c8 :thumb
	ldr     r2, [r7, #0x8]
	lsl     r1, r4, #3
	add     r1, r2, r1
	ldr     r1, [r1, #0x4]
	mov     r0, r6
	bl      Function_2023f10
	mov     r0, r5
	bl      Function_201d0c8
	mov     r5, r0
	b       branch_200c408
@ 0x200c3e0

.thumb
branch_200c3e0: @ 200c3e0 :thumb
	mov     r0, r5
	mov     r4, r5
	bl      Function_201d0c8
	mov     r5, r0
	cmp     r4, r5
	bcs     branch_200c408
.thumb
branch_200c3ee: @ 200c3ee :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, r6
	.hword  0x1ca4 @ add r4, r4, #0x2
	bl      Function_2023eb0
	cmp     r4, r5
	bcc     branch_200c3ee
	b       branch_200c408
@ 0x200c3fe

.thumb
branch_200c3fe: @ 200c3fe :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	.hword  0x1cad @ add r5, r5, #0x2
	bl      Function_2023eb0
.thumb
branch_200c408: @ 200c408 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x8] @ 0x200c414, (=#0xffff)
	cmp     r1, r0
	bne     branch_200c3a4
.thumb
branch_200c410: @ 200c410 :thumb
	pop     {r3-r7,pc}
@ 0x200c412


.incbin "baserom/arm9.bin", 0xc412, 0x200c414 - 0x200c412


.word 0xffff @ 0x200c414
.word 0xfffe @ 0x200c418

.incbin "baserom/arm9.bin", 0xc41c, 0x200d9e8 - 0x200c41c


.thumb
Function_200d9e8: @ 200d9e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10] @ 0x200da00, (=#0x21bf67c)
	mov     r4, r1
	mov     r3, r2
	ldr     r0, [r0, #0x18]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201ce14
	pop     {r3-r5,pc}
@ 0x200d9fe


.incbin "baserom/arm9.bin", 0xd9fe, 0x200da00 - 0x200d9fe


.word 0x21bf67c @ 0x200da00
.thumb
Function_200da04: @ 200da04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10] @ 0x200da1c, (=#0x21bf67c)
	mov     r4, r1
	mov     r3, r2
	ldr     r0, [r0, #0x1c]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201ce14
	pop     {r3-r5,pc}
@ 0x200da1a


.incbin "baserom/arm9.bin", 0xda1a, 0x200da1c - 0x200da1a


.word 0x21bf67c @ 0x200da1c
.thumb
Function_200da20: @ 200da20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10] @ 0x200da38, (=#0x21bf67c)
	mov     r4, r1
	mov     r3, r2
	ldr     r0, [r0, #0x24]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201ce14
	pop     {r3-r5,pc}
@ 0x200da36


.incbin "baserom/arm9.bin", 0xda36, 0x200da38 - 0x200da36


.word 0x21bf67c @ 0x200da38
.thumb
Function_200da3c: @ 200da3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10] @ 0x200da54, (=#0x21bf67c)
	mov     r4, r1
	mov     r3, r2
	ldr     r0, [r0, #0x20]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201ce14
	pop     {r3-r5,pc}
@ 0x200da52


.incbin "baserom/arm9.bin", 0xda52, 0x200da54 - 0x200da52


.word 0x21bf67c @ 0x200da54
.thumb
Function_200da58: @ 200da58 :thumb
	ldr     r3, [pc, #0x0] @ 0x200da5c, (=#0x201cea9)
	bx      r3
@ 0x200da5c

.word 0x201cea9 @ 0x200da5c

.incbin "baserom/arm9.bin", 0xda60, 0x200daa4 - 0x200da60


.thumb
Function_200daa4: @ 200daa4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r3
	cmp     r0, #0x0
	beq     branch_200daba
	mov     r1, #0x1
	b       branch_200dabc
@ 0x200daba

.thumb
branch_200daba: @ 200daba :thumb
	mov     r1, #0x0
.thumb
branch_200dabc: @ 200dabc :thumb
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	mov     r2, r6
	str     r0, [sp, #0xc]
	mov     r0, #0x26
	mov     r3, r5
	bl      Function_2006e3c
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0x2
	bne     branch_200dade
	mov     r1, #0x2d
	b       branch_200dae0
@ 0x200dade

.thumb
branch_200dade: @ 200dade :thumb
	mov     r1, #0x18
.thumb
branch_200dae0: @ 200dae0 :thumb
	cmp     r5, #0x4
	bcs     branch_200dafa
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x26
	lsl     r3, r4, #5
	bl      Function_2006e84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x200dafa

.thumb
branch_200dafa: @ 200dafa :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x26
	lsl     r3, r4, #5
	bl      Function_2006e84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x200db10

.thumb
Function_200db10: @ 200db10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r1, [sp, #0x14]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	ldr     r2, [sp, #0x1c]
	ldr     r5, [sp, #0x40]
	.hword  0x1e57 @ sub r7, r2, #0x1
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x10]
	.hword  0x1e56 @ sub r6, r2, #0x1
	lsl     r2, r7, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	lsl     r3, r6, #24
	str     r5, [sp, #0xc]
	add     r2, sp, #0x28
	ldrh    r2, [r2, #0x1c]
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     r1, sp, #0x28
	ldrh    r4, [r1, #0x1c]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r1, #0x10]
	add     r2, r4, #0x1
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	lsr     r2, r2, #16
	bl      Function_2019cb8
	add     r0, sp, #0x28
	ldrb    r1, [r0, #0x10]
	ldr     r0, [sp, #0x18]
	add     r2, r4, #0x2
	add     r0, r0, r1
	str     r0, [sp, #0x20]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x20]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x1c]
	add     r2, r4, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x14]
	lsl     r2, r2, #16
	lsl     r3, r6, #24
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x14]
	add     r2, r4, #0x5
	lsl     r2, r2, #16
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     r0, sp, #0x28
	ldrb    r1, [r0, #0x14]
	ldr     r0, [sp, #0x1c]
	add     r2, r4, #0x6
	add     r7, r0, r1
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r6, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x10]
	add     r2, r4, #0x7
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	lsr     r2, r2, #16
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x20]
	str     r5, [sp, #0xc]
	add     r4, #0x8
	lsl     r2, r4, #16
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x200dc46


.incbin "baserom/arm9.bin", 0xdc46, 0x200dc48 - 0x200dc46


.thumb
Function_200dc48: @ 200dc48 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_201c290
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_201c29c
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_201c2a0
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      Function_201c294
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_201c298
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x14]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0x18]
	bl      Function_200db10
	cmp     r4, #0x0
	bne     branch_200dc98
	mov     r0, r5
	bl      Function_201a954
.thumb
branch_200dc98: @ 200dc98 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x200dc9c


.incbin "baserom/arm9.bin", 0xdc9c, 0x200dd04 - 0x200dc9c


.thumb
Function_200dd04: @ 200dd04 :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	bx      lr
@ 0x200dd08

.thumb
Function_200dd08: @ 200dd08 :thumb
	add     r0, #0x19
	bx      lr
@ 0x200dd0c

.thumb
Function_200dd0c: @ 200dd0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x10]
	add     r0, sp, #0x18
	ldrb    r7, [r0, #0x10]
	mov     r6, r2
	mov     r5, r1
	mov     r0, r7
	mov     r4, r3
	bl      Function_200dd04
	mov     r1, r0
	str     r6, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0xc]
	mov     r0, #0x26
	mov     r3, r5
	bl      Function_2006e3c
	cmp     r5, #0x4
	bcs     branch_200dd5c
	mov     r0, r7
	bl      Function_200dd08
	mov     r1, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x26
	lsl     r3, r4, #5
	bl      Function_2006e84
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x200dd5c

.thumb
branch_200dd5c: @ 200dd5c :thumb
	mov     r0, r7
	bl      Function_200dd08
	mov     r1, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x26
	lsl     r3, r4, #5
	bl      Function_2006e84
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x200dd7a


.incbin "baserom/arm9.bin", 0xdd7a, 0x200dd7c - 0x200dd7a


.thumb
Function_200dd7c: @ 200dd7c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r1, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	ldr     r2, [sp, #0x4c]
	mov     r7, r0
	str     r2, [sp, #0x4c]
	ldr     r2, [sp, #0x18]
	ldr     r5, [sp, #0x50]
	.hword  0x1e56 @ sub r6, r2, #0x1
	ldr     r2, [sp, #0x14]
	.hword  0x1e92 @ sub r2, r2, #0x2
	str     r2, [sp, #0x28]
	lsl     r2, r6, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r3, [sp, #0x28]
	str     r5, [sp, #0xc]
	add     r2, sp, #0x38
	lsl     r3, r3, #24
	ldrh    r2, [r2, #0x1c]
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x24]
	add     r0, sp, #0x38
	ldrh    r4, [r0, #0x1c]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x24]
	str     r5, [sp, #0xc]
	add     r2, r4, #0x1
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x38
	ldrb    r0, [r0, #0x10]
	add     r2, r4, #0x2
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	mov     r0, r7
	lsr     r2, r2, #16
	bl      Function_2019cb8
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x10]
	ldr     r0, [sp, #0x14]
	add     r2, r4, #0x3
	add     r0, r0, r1
	str     r0, [sp, #0x2c]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x2c]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x2c]
	add     r2, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x20]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x2c]
	add     r2, r4, #0x5
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x1c]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x1c]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x28]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x4c]
	add     r2, r4, #0x6
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x24]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x4c]
	add     r2, r4, #0x7
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x18]
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x4c]
	ldr     r3, [sp, #0x2c]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	add     r2, #0x9
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x18]
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x4c]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	add     r2, #0xa
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x18]
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x4c]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	add     r2, #0xb
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	mov     r2, r4
	ldr     r3, [sp, #0x28]
	add     r2, #0xc
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x4c]
	lsr     r2, r2, #16
	add     r6, r1, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, r4
	ldr     r3, [sp, #0x24]
	str     r5, [sp, #0xc]
	add     r2, #0xd
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x38
	ldrb    r0, [r0, #0x10]
	mov     r2, r4
	add     r2, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r2, r2, #16
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	mov     r0, r7
	lsr     r2, r2, #16
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, r4
	ldr     r3, [sp, #0x2c]
	str     r5, [sp, #0xc]
	add     r2, #0xf
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, r4
	ldr     r3, [sp, #0x20]
	str     r5, [sp, #0xc]
	add     r2, #0x10
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x1c]
	str     r5, [sp, #0xc]
	add     r4, #0x11
	lsl     r2, r4, #16
	lsl     r3, r3, #24
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x200e00e


.incbin "baserom/arm9.bin", 0xe00e, 0x200e010 - 0x200e00e


.thumb
Function_200e010: @ 200e010 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_201c290
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_201c29c
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_201c2a0
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      Function_201c294
	mov     r4, r0
	mov     r0, r5
	bl      Function_201c298
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	bl      Function_200dd7c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x200e05e


.incbin "baserom/arm9.bin", 0xe05e, 0x200e060 - 0x200e05e


.thumb
Function_200e060: @ 200e060 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r1, r6
	mov     r2, r3
	mov     r5, r0
	bl      Function_200e010
	cmp     r4, #0x0
	bne     branch_200e07a
	mov     r0, r5
	bl      Function_201a954
.thumb
branch_200e07a: @ 200e07a :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_200e130
	pop     {r4-r6,pc}
@ 0x200e084

.thumb
Function_200e084: @ 200e084 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r1
	bl      Function_201c290
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_201c29c
	mov     r6, r0
	mov     r0, r5
	bl      Function_201c2a0
	mov     r7, r0
	mov     r0, r5
	bl      Function_201c294
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_201c298
	.hword  0x1e79 @ sub r1, r7, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1d49 @ add r1, r1, #0x5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	.hword  0x1eb3 @ sub r3, r6, #0x2
	lsl     r3, r3, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	lsr     r3, r3, #24
	bl      Function_2019cb8
	cmp     r4, #0x0
	bne     branch_200e0e6
	mov     r0, r5
	bl      Function_201acf4
.thumb
branch_200e0e6: @ 200e0e6 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x200e0ea


.incbin "baserom/arm9.bin", 0xe0ea, 0x200e0ec - 0x200e0ea


.thumb
Function_200e0ec: @ 200e0ec :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r5, r1
	str     r0, [sp, #0x1c]
	add     r1, sp, #0x14
	strh    r3, [r1, #0xc]
	mov     r4, r2
	add     r0, sp, #0x20
	ldrh    r2, [r0, #0x10]
	mov     r3, r4
	strh    r2, [r1, #0xe]
	ldr     r2, [sp, #0x34]
	str     r2, [sp, #0x14]
	ldrh    r2, [r0, #0x18]
	strh    r2, [r1, #0x4]
	ldrh    r2, [r0, #0x1c]
	strh    r2, [r1, #0x6]
	ldrh    r1, [r0, #0x20]
	mov     r2, r5
	str     r1, [sp, #0x0]
	ldrh    r1, [r0, #0x24]
	str     r1, [sp, #0x4]
	ldrh    r1, [r0, #0x28]
	str     r1, [sp, #0x8]
	ldrh    r0, [r0, #0x2c]
	add     r1, sp, #0x14
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r0, sp, #0x1c
	bl      Function_201a1e4
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x200e130

.thumb
Function_200e130: @ 200e130 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r1, [sp, #0x24]
	str     r0, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_2018364
	mov     r6, r0
	ldr     r0, [sp, #0x20]
	bl      Function_201c290
	mov     r1, #0x6
	str     r0, [sp, #0x28]
	mov     r0, r6
	lsl     r1, r1, #6
	bl      Function_2018144
	mov     r5, r0
	ldr     r0, [sp, #0x28]
	bl      Function_2019f28
	mov     r4, r0
	str     r6, [sp, #0x0]
	mov     r0, #0x26
	mov     r1, #0x16
	mov     r2, #0x0
	add     r3, sp, #0x3c
	bl      Function_2006f50
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x3c]
	mov     r7, #0x0
	ldr     r0, [r0, #0x14]
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x24]
	add     r0, #0xa
	lsl     r0, r0, #5
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x24]
	add     r0, #0xb
	lsl     r0, r0, #5
	str     r0, [sp, #0x38]
.thumb
branch_200e184: @ 200e184 :thumb
	ldr     r1, [sp, #0x34]
	lsl     r6, r7, #7
	add     r0, r5, r6
	add     r1, r4, r1
	mov     r2, #0x20
	blx     Function_20d50b8
	mov     r0, r6
	ldr     r1, [sp, #0x38]
	add     r0, #0x20
	add     r0, r5, r0
	add     r1, r4, r1
	mov     r2, #0x20
	blx     Function_20d50b8
	mov     r0, r6
	ldr     r1, [sp, #0x34]
	add     r0, #0x40
	add     r0, r5, r0
	add     r1, r4, r1
	mov     r2, #0x20
	blx     Function_20d50b8
	ldr     r1, [sp, #0x38]
	add     r6, #0x60
	add     r0, r5, r6
	add     r1, r4, r1
	mov     r2, #0x20
	blx     Function_20d50b8
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	cmp     r7, #0x3
	bcc     branch_200e184
	mov     r1, #0x30
	str     r1, [sp, #0x0]
	str     r5, [sp, #0x4]
	mov     r3, #0xc
	str     r3, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r2, #0x0
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x4
	bl      Function_200e0ec
	ldr     r0, [sp, #0x24]
	mov     r3, #0x6
	add     r0, #0x12
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x28]
	ldr     r0, [r0, #0x0]
	mov     r2, r5
	lsl     r3, r3, #6
	bl      Function_201958c
	ldr     r0, [sp, #0x24]
	bl      Function_20027a8
	ldr     r0, [sp, #0x2c]
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x200e216


.incbin "baserom/arm9.bin", 0xe216, 0x200e7fc - 0x200e216


.thumb
Function_200e7fc: @ 200e7fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r0, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	str     r1, [sp, #0x24]
	bl      Function_2018364
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x20]
	bl      Function_201c290
	bl      Function_2019f28
	mov     r5, r0
	ldr     r0, [sp, #0x28]
	ldr     r1, [pc, #0xf8] @ 0x200e914, (=#0x48c)
	bl      Function_2018144
	ldr     r1, [sp, #0x24]
	mov     r4, r0
	ldr     r0, [pc, #0xf0] @ 0x200e918, (=#0x404)
	add     r1, #0x12
	lsl     r1, r1, #5
	add     r0, r4, r0
	add     r1, r5, r1
	mov     r2, #0x80
	blx     Function_20d50b8
	ldr     r0, [sp, #0x28]
	mov     r1, #0x80
	bl      Function_2018144
	ldr     r1, [sp, #0x24]
	mov     r2, #0x20
	add     r1, #0xa
	lsl     r1, r1, #5
	str     r1, [sp, #0x2c]
	add     r1, r5, r1
	mov     r6, r0
	blx     Function_20d50b8
	ldr     r0, [sp, #0x24]
	mov     r2, #0x20
	add     r0, #0xb
	lsl     r7, r0, #5
	mov     r0, r6
	add     r0, #0x20
	add     r1, r5, r7
	blx     Function_20d50b8
	ldr     r1, [sp, #0x2c]
	mov     r0, r6
	add     r0, #0x40
	add     r1, r5, r1
	mov     r2, #0x20
	blx     Function_20d50b8
	mov     r0, r6
	add     r0, #0x60
	add     r1, r5, r7
	mov     r2, #0x20
	blx     Function_20d50b8
	mov     r5, #0x0
	add     r7, r4, #0x4
.thumb
branch_200e87e: @ 200e87e :thumb
	lsl     r0, r5, #7
	add     r0, r7, r0
	mov     r1, r6
	mov     r2, #0x80
	blx     Function_20d50b8
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x8
	bcc     branch_200e87e
	mov     r0, r6
	bl      Function_20181c4
	ldr     r0, [sp, #0x28]
	mov     r1, #0x17
	str     r0, [sp, #0x0]
	mov     r0, #0x26
	mov     r2, #0x0
	add     r3, sp, #0x30
	bl      Function_2006f50
	mov     r2, #0x80
	mov     r5, r0
	str     r2, [sp, #0x0]
	add     r0, r4, #0x4
	str     r0, [sp, #0x4]
	mov     r3, #0x10
	str     r3, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r2, [sp, #0x1c]
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	ldr     r0, [r0, #0x14]
	bl      Function_200e0ec
	mov     r0, r5
	bl      Function_20181c4
	ldr     r0, [sp, #0x20]
	ldr     r1, [pc, #0x44] @ 0x200e91c, (=#0x484)
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, #0x0
	strh    r0, [r4, r1]
	add     r0, r1, #0x2
	strb    r2, [r4, r0]
	add     r0, r1, #0x3
	ldrb    r3, [r4, r0]
	mov     r0, #0x7f
	bic     r3, r0
	add     r0, r1, #0x3
	strb    r3, [r4, r0]
	add     r0, r1, #0x4
	ldrb    r3, [r4, r0]
	mov     r0, #0x3
	bic     r3, r0
	add     r0, r1, #0x4
	strb    r3, [r4, r0]
	ldr     r0, [pc, #0x20] @ 0x200e920, (=#0x200eb21)
	mov     r1, r4
	bl      Function_200da04
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200e924
	mov     r0, r4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x200e912


.incbin "baserom/arm9.bin", 0xe912, 0x200e914 - 0x200e912


.word 0x48c @ 0x200e914
.word 0x404 @ 0x200e918
.word 0x484 @ 0x200e91c
.word 0x200eb21 @ 0x200e920
.thumb
Function_200e924: @ 200e924 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	bl      Function_201c290
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_201c29c
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      Function_201c2a0
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x0]
	bl      Function_201c294
	str     r0, [sp, #0x20]
	cmp     r6, #0x2
	bne     branch_200ea2e
	ldr     r2, [pc, #0x1c8] @ 0x200eb1c, (=#0x484)
	mov     r1, r4
	ldrh    r0, [r5, r2]
	sub     r2, #0x80
	add     r2, r5, r2
	add     r0, #0x12
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_201958c
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	add     r7, r0, #0x2
	ldr     r0, [sp, #0x20]
	ldr     r2, [pc, #0x1a8] @ 0x200eb1c, (=#0x484)
	add     r6, r1, r0
	add     r0, r6, #0x1
	str     r0, [sp, #0x14]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrh    r2, [r5, r2]
	ldr     r0, [r5, #0x0]
	ldr     r3, [sp, #0x14]
	add     r2, #0xa
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x168] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	.hword  0x1cb6 @ add r6, r6, #0x2
	lsl     r3, r6, #24
	add     r2, #0xb
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x14]
	add     r7, r0, #0x3
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x138] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	add     r2, #0xa
	lsl     r2, r2, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x110] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	lsl     r3, r6, #24
	ldr     r0, [r0, #0x0]
	add     r2, #0xb
	lsl     r2, r2, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	bl      Function_2019448
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x200ea2e

.thumb
branch_200ea2e: @ 200ea2e :thumb
	ldr     r3, [pc, #0xec] @ 0x200eb1c, (=#0x484)
	add     r2, r5, #0x4
	ldrh    r0, [r5, r3]
	.hword  0x1cdb @ add r3, r3, #0x3
	mov     r1, r4
	add     r0, #0x12
	str     r0, [sp, #0x0]
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x0]
	lsl     r3, r3, #25
	lsr     r3, r3, #25
	lsl     r3, r3, #7
	add     r2, r2, r3
	ldr     r0, [r0, #0x0]
	mov     r3, #0x80
	bl      Function_201958c
	cmp     r6, #0x0
	beq     branch_200eb16
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	add     r7, r0, #0x2
	ldr     r0, [sp, #0x20]
	ldr     r2, [pc, #0xbc] @ 0x200eb1c, (=#0x484)
	add     r6, r1, r0
	add     r0, r6, #0x1
	str     r0, [sp, #0x10]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrh    r2, [r5, r2]
	ldr     r0, [r5, #0x0]
	ldr     r3, [sp, #0x10]
	add     r2, #0x12
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x7c] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	.hword  0x1cb6 @ add r6, r6, #0x2
	lsl     r3, r6, #24
	add     r2, #0x13
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x10]
	add     r7, r0, #0x3
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x4c] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	add     r2, #0x14
	lsl     r2, r2, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x24] @ 0x200eb1c, (=#0x484)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r5, r2]
	lsl     r3, r6, #24
	ldr     r0, [r0, #0x0]
	add     r2, #0x15
	lsl     r2, r2, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	bl      Function_2019448
.thumb
branch_200eb16: @ 200eb16 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x200eb1a


.incbin "baserom/arm9.bin", 0xeb1a, 0x200eb1c - 0x200eb1a


.word 0x484 @ 0x200eb1c

.incbin "baserom/arm9.bin", 0xeb20, 0x200eba0 - 0x200eb20


.thumb
Function_200eba0: @ 200eba0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x200ebc0, (=#0x200eb8d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200da3c
	ldr     r1, [pc, #0x14] @ 0x200ebc4, (=#0x488)
	mov     r0, #0x3
	ldrb    r2, [r4, r1]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	strb    r0, [r4, r1]
	pop     {r4,pc}
@ 0x200ebbe


.incbin "baserom/arm9.bin", 0xebbe, 0x200ebc0 - 0x200ebbe


.word 0x200eb8d @ 0x200ebc0
.word 0x488 @ 0x200ebc4

.incbin "baserom/arm9.bin", 0xebc8, 0x200ebf0 - 0x200ebc8


.thumb
Function_200ebf0: @ 200ebf0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r2, [sp, #0x4]
	ldr     r5, [sp, #0x30]
	str     r3, [sp, #0x8]
	mov     r6, r0
	mov     r7, r1
	str     r5, [sp, #0x0]
	bl      Function_200ed14
	mov     r4, r0
	mov     r1, r5
	bl      Function_200ed50
	mov     r0, r4
	bl      Function_200ed7c
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	bl      Function_200edd4
	add     r2, sp, #0x10
	ldrh    r1, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	mov     r0, r4
	bl      Function_200ee24
	add     r2, sp, #0x10
	ldrb    r1, [r2, #0x10]
	ldrh    r2, [r2, #0x14]
	mov     r0, r4
	bl      Function_200ef7c
	mov     r0, r6
	mov     r1, r7
	bl      Function_2019448
	ldr     r0, [pc, #0x4] @ 0x200ec44, (=#0x16f)
	add     r0, r4, r0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x200ec44

.word 0x16f @ 0x200ec44
.thumb
Function_200ec48: @ 200ec48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r2, [sp, #0x4]
	ldr     r5, [sp, #0x2c]
	str     r3, [sp, #0x8]
	mov     r6, r0
	mov     r7, r1
	str     r5, [sp, #0x0]
	bl      Function_200ed14
	mov     r4, r0
	mov     r1, r5
	bl      Function_200ed50
	mov     r0, r4
	bl      Function_200ed7c
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	bl      Function_200edd4
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_200ee64
	add     r2, sp, #0x10
	ldrb    r1, [r2, #0x10]
	ldrh    r2, [r2, #0x14]
	mov     r0, r4
	bl      Function_200ef7c
	mov     r0, r6
	mov     r1, r7
	bl      Function_2019448
	ldr     r0, [pc, #0x4] @ 0x200ec98, (=#0x16f)
	add     r0, r4, r0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x200ec98

.word 0x16f @ 0x200ec98

.incbin "baserom/arm9.bin", 0xec9c, 0x200ed14 - 0x200ec9c


.thumb
Function_200ed14: @ 200ed14 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r3
	mov     r1, #0x17
	mov     r6, r2
	ldr     r0, [pc, #0x24] @ 0x200ed48, (=#0x200ec9d)
	ldr     r3, [sp, #0x18]
	lsl     r1, r1, #4
	mov     r2, #0x0
	bl      Function_200679c
	bl      Function_201ced0
	ldr     r1, [pc, #0x18] @ 0x200ed4c, (=#0x16f)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	.hword  0x1fca @ sub r2, r1, #0x7
	str     r5, [r0, r2]
	.hword  0x1eca @ sub r2, r1, #0x3
	strb    r4, [r0, r2]
	.hword  0x1e8a @ sub r2, r1, #0x2
	strb    r6, [r0, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r7, [r0, r1]
	pop     {r3-r7,pc}
@ 0x200ed48

.word 0x200ec9d @ 0x200ed48
.word 0x16f @ 0x200ed4c
.thumb
Function_200ed50: @ 200ed50 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	ldr     r5, [pc, #0x20] @ 0x200ed78, (=#0x20e5028)
	add     r4, sp, #0x0
	mov     r6, r0
	mov     r3, r1
	mov     r2, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r1, r2
	mov     r0, r6
	mov     r2, #0x1
	bl      0x21d3190
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x200ed78

.word 0x20e5028 @ 0x200ed78
.thumb
Function_200ed7c: @ 200ed7c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x48] @ 0x200edd0, (=#0x15cd5)
	mov     r2, #0x31
	str     r1, [sp, #0x8]
	mov     r1, #0x26
	mov     r3, #0x0
	mov     r4, r0
	bl      0x21d3270
	ldr     r0, [pc, #0x38] @ 0x200edd0, (=#0x15cd5)
	mov     r1, #0x26
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x2f
	mov     r3, #0x0
	bl      0x21d3360
	ldr     r0, [pc, #0x28] @ 0x200edd0, (=#0x15cd5)
	mov     r1, #0x26
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x2e
	mov     r3, #0x0
	bl      0x21d3388
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x200edd0, (=#0x15cd5)
	mov     r1, #0x26
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x30
	mov     r3, #0x0
	bl      0x21d33b0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x200edce


.incbin "baserom/arm9.bin", 0xedce, 0x200edd0 - 0x200edce


.word 0x15cd5 @ 0x200edd0
.thumb
Function_200edd4: @ 200edd4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r5, [pc, #0x44] @ 0x200ee20, (=#0x20e5040)
	mov     r6, r2
	mov     r4, r0
	mov     r7, r1
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_200ede4: @ 200ede4 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_200ede4
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	add     r0, r7, #0x5
	lsl     r1, r0, #3
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r1, r6, #0x5
	lsl     r1, r1, #3
	strh    r1, [r0, #0x2]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x21d3584
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	bl      Function_20219f8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x200ee1e


.incbin "baserom/arm9.bin", 0xee1e, 0x200ee20 - 0x200ee1e


.word 0x20e5040 @ 0x200ee20
.thumb
Function_200ee24: @ 200ee24 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x200ee60, (=#0x162)
	mov     r4, r1
	ldrh    r0, [r5, r0]
	mov     r6, r2
	bl      Function_200762c
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, sp, #0xc
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_2075fb4
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_200ee98
	mov     r0, r7
	bl      Function_2007b6c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x200ee5e


.incbin "baserom/arm9.bin", 0xee5e, 0x200ee60 - 0x200ee5e


.word 0x162 @ 0x200ee60
.thumb
Function_200ee64: @ 200ee64 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x200ee94, (=#0x162)
	mov     r4, r1
	ldrh    r0, [r5, r0]
	bl      Function_200762c
	mov     r6, r0
	add     r0, sp, #0x0
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2075ef4
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_200ee98
	mov     r0, r6
	bl      Function_2007b6c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x200ee92


.incbin "baserom/arm9.bin", 0xee92, 0x200ee94 - 0x200ee92


.word 0x162 @ 0x200ee94
.thumb
Function_200ee98: @ 200ee98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r0, [pc, #0xcc] @ 0x200ef6c, (=#0x162)
	mov     r6, r1
	mov     r1, #0x19
	ldrh    r0, [r5, r0]
	lsl     r1, r1, #8
	bl      Function_2018144
	add     r2, sp, #0x18
	ldr     r3, [pc, #0xc0] @ 0x200ef70, (=#0x20e5018)
	mov     r4, r0
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r4, [sp, #0x0]
	ldr     r2, [pc, #0xac] @ 0x200ef6c, (=#0x162)
	ldrh    r0, [r6, #0x0]
	ldrh    r1, [r6, #0x2]
	ldrh    r2, [r5, r2]
	mov     r3, r7
	bl      Function_20135f0
	ldr     r3, [pc, #0xa4] @ 0x200ef74, (=#0x20e5008)
	add     r2, sp, #0x8
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x32
	lsl     r0, r0, #6
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x88] @ 0x200ef6c, (=#0x162)
	ldrh    r0, [r6, #0x0]
	ldrh    r1, [r6, #0x2]
	ldrh    r2, [r5, r2]
	mov     r3, r7
	bl      Function_20135f0
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x80] @ 0x200ef78, (=#0x15cd5)
	bl      Function_2009dc8
	bl      Function_200a534
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	blx     Function_20a81b0
	mov     r1, #0x19
	mov     r7, r0
	mov     r0, r4
	lsl     r1, r1, #8
	blx     Function_20c2c54
	mov     r2, #0x19
	mov     r0, r4
	mov     r1, r7
	lsl     r2, r2, #8
	blx     Function_20c02bc
	mov     r0, r4
	bl      Function_20181c4
	ldr     r2, [pc, #0x44] @ 0x200ef6c, (=#0x162)
	ldrh    r0, [r6, #0x0]
	ldrh    r1, [r6, #0x4]
	ldrh    r2, [r5, r2]
	bl      Function_2013660
	mov     r4, r0
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x3c] @ 0x200ef78, (=#0x15cd5)
	bl      Function_2009dc8
	ldr     r1, [sp, #0x4]
	bl      Function_200a72c
	mov     r1, #0x1
	blx     Function_20a81fc
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x20
	blx     Function_20c2c54
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x20
	blx     Function_20c0160
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x200ef6a


.incbin "baserom/arm9.bin", 0xef6a, 0x200ef6c - 0x200ef6a


.word 0x162 @ 0x200ef6c
.word 0x20e5018 @ 0x200ef70
.word 0x20e5008 @ 0x200ef74
.word 0x15cd5 @ 0x200ef78
.thumb
Function_200ef7c: @ 200ef7c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x1a4] @ 0x200f128, (=#0x16e)
	mov     r5, r0
	ldrb    r0, [r5, r3]
	mov     r4, r1
	.hword  0x1e99 @ sub r1, r3, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	mov     r6, r2
	bl      Function_2019cb8
	ldr     r3, [pc, #0x174] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x1
	ldrb    r0, [r5, r3]
	.hword  0x1e99 @ sub r1, r3, #0x2
	lsl     r2, r2, #16
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r1, [r5, r1]
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #16
	bl      Function_2019cb8
	ldr     r3, [pc, #0x148] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x2
	ldrb    r0, [r5, r3]
	lsl     r2, r2, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	add     r3, #0xa
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r3, [pc, #0x118] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x4
	ldrb    r0, [r5, r3]
	lsl     r2, r2, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r1, [r5, r1]
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #16
	bl      Function_2019cb8
	ldr     r3, [pc, #0xf4] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x3
	ldrb    r0, [r5, r3]
	lsl     r2, r2, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r3, [pc, #0xc8] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x5
	ldrb    r0, [r5, r3]
	lsl     r2, r2, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	add     r3, #0xa
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r3, [pc, #0x9c] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x6
	ldrb    r0, [r5, r3]
	lsl     r2, r2, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	add     r0, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r3, [pc, #0x6c] @ 0x200f128, (=#0x16e)
	add     r2, r6, #0x7
	ldrb    r0, [r5, r3]
	.hword  0x1e99 @ sub r1, r3, #0x2
	lsl     r2, r2, #16
	add     r0, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r1, [r5, r1]
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #16
	bl      Function_2019cb8
	ldr     r3, [pc, #0x40] @ 0x200f128, (=#0x16e)
	add     r6, #0x8
	ldrb    r0, [r5, r3]
	lsl     r2, r6, #16
	.hword  0x1e99 @ sub r1, r3, #0x2
	add     r0, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	.hword  0x1f98 @ sub r0, r3, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r5, r3]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	add     r3, #0xa
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	mov     r1, #0x5a
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrb    r1, [r5, r1]
	bl      Function_201c3c0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x200f126


.incbin "baserom/arm9.bin", 0xf126, 0x200f128 - 0x200f126


.word 0x16e @ 0x200f128

.incbin "baserom/arm9.bin", 0xf12c, 0x200f174 - 0x200f12c


.thumb
Function_200f174: @ 200f174 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [sp, #0x30]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r0, #0x0
	bne     branch_200f18a
	bl      Function_2022974
.thumb
branch_200f18a: @ 200f18a :thumb
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	bne     branch_200f194
	bl      Function_2022974
.thumb
branch_200f194: @ 200f194 :thumb
	ldr     r0, [pc, #0xb8] @ 0x200f250, (=#0x21bf5b4)
	ldrh    r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_200f1a0
	bl      Function_2022974
.thumb
branch_200f1a0: @ 200f1a0 :thumb
	ldr     r0, [pc, #0xb0] @ 0x200f254, (=#0x21bf474)
	bl      Function_200f814
	ldr     r1, [pc, #0xac] @ 0x200f254, (=#0x21bf474)
	mov     r0, r5
	bl      Function_200f564
	ldr     r0, [pc, #0xa8] @ 0x200f258, (=#0x21bf4e8)
	bl      Function_200f600
	ldr     r0, [pc, #0x9c] @ 0x200f254, (=#0x21bf474)
	mov     r1, r6
	bl      Function_200f768
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x94] @ 0x200f25c, (=#0x21bf500)
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x88] @ 0x200f258, (=#0x21bf4e8)
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	mov     r1, r4
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x84] @ 0x200f260, (=#0x21bf488)
	str     r5, [sp, #0x18]
	bl      Function_200f5d4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x70] @ 0x200f25c, (=#0x21bf500)
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x64] @ 0x200f258, (=#0x21bf4e8)
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	mov     r1, r7
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x64] @ 0x200f264, (=#0x21bf4b8)
	str     r5, [sp, #0x18]
	bl      Function_200f5d4
	ldr     r0, [pc, #0x48] @ 0x200f250, (=#0x21bf5b4)
	mov     r1, #0x1
	strh    r1, [r0, #0xc]
	ldr     r0, [pc, #0x5c] @ 0x200f268, (=#0x21bf478)
	ldr     r1, [pc, #0x50] @ 0x200f260, (=#0x21bf488)
	bl      Function_200f534
	ldr     r0, [pc, #0x58] @ 0x200f26c, (=#0x21bf47c)
	ldr     r1, [pc, #0x4c] @ 0x200f264, (=#0x21bf4b8)
	bl      Function_200f534
	ldr     r0, [pc, #0x54] @ 0x200f270, (=#0x21bf474)
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_200f232
	ldr     r0, [pc, #0x30] @ 0x200f254, (=#0x21bf474)
	add     r0, #0x14
	bl      Function_200f7b4
	ldr     r1, [pc, #0x48] @ 0x200f274, (=#0x14e)
	ldr     r0, [pc, #0x24] @ 0x200f254, (=#0x21bf474)
	mov     r2, #0x1
	strb    r2, [r0, r1]
.thumb
branch_200f232: @ 200f232 :thumb
	ldr     r0, [pc, #0x20] @ 0x200f254, (=#0x21bf474)
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	beq     branch_200f24a
	ldr     r0, [pc, #0x18] @ 0x200f254, (=#0x21bf474)
	add     r0, #0x44
	bl      Function_200f7b4
	ldr     r1, [pc, #0x34] @ 0x200f278, (=#0x14f)
	ldr     r0, [pc, #0xc] @ 0x200f254, (=#0x21bf474)
	mov     r2, #0x1
	strb    r2, [r0, r1]
.thumb
branch_200f24a: @ 200f24a :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x200f24e


.incbin "baserom/arm9.bin", 0xf24e, 0x200f250 - 0x200f24e


.word 0x21bf5b4 @ 0x200f250
.word 0x21bf474 @ 0x200f254
.word 0x21bf4e8 @ 0x200f258
.word 0x21bf500 @ 0x200f25c
.word 0x21bf488 @ 0x200f260
.word 0x21bf4b8 @ 0x200f264
.word 0x21bf478 @ 0x200f268
.word 0x21bf47c @ 0x200f26c
.word 0x21bf474 @ 0x200f270
.word 0x14e @ 0x200f274
.word 0x14f @ 0x200f278
.thumb
Function_200f27c: @ 200f27c :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x24] @ 0x200f2a4, (=#0x21bf5b4)
	ldr     r4, [pc, #0x24] @ 0x200f2a8, (=#0x21bf474)
	ldrh    r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_200f2a0
	mov     r1, r4
	mov     r2, r4
	mov     r0, r4
	add     r1, #0x14
	add     r2, #0x44
	bl      Function_200f4c4
	cmp     r0, #0x1
	bne     branch_200f2a0
	mov     r0, r4
	bl      Function_200f46c
.thumb
branch_200f2a0: @ 200f2a0 :thumb
	pop     {r4,pc}
@ 0x200f2a2


.incbin "baserom/arm9.bin", 0xf2a2, 0x200f2a4 - 0x200f2a2


.word 0x21bf5b4 @ 0x200f2a4
.word 0x21bf474 @ 0x200f2a8

.incbin "baserom/arm9.bin", 0xf2ac, 0x200f32c - 0x200f2ac


.thumb
Function_200f32c: @ 200f32c :thumb
	ldr     r3, [pc, #0x4] @ 0x200f334, (=#0x2012481)
	mov     r1, r0
	mov     r0, #0x0
	bx      r3
@ 0x200f334

.word 0x2012481 @ 0x200f334
.thumb
Function_200f338: @ 200f338 :thumb
	ldr     r3, [pc, #0x4] @ 0x200f340, (=#0x200f44d)
	mov     r1, #0x0
	bx      r3
@ 0x200f33e


.incbin "baserom/arm9.bin", 0xf33e, 0x200f340 - 0x200f33e


.word 0x200f44d @ 0x200f340
.thumb
Function_200f344: @ 200f344 :thumb
	ldr     r2, [pc, #0x18] @ 0x200f360, (=#0xffff)
	cmp     r1, r2
	bne     branch_200f34e
	ldr     r1, [pc, #0x18] @ 0x200f364, (=#0x21bf5b4)
	ldrh    r1, [r1, #0x10]
.thumb
branch_200f34e: @ 200f34e :thumb
	ldr     r2, [pc, #0x18] @ 0x200f368, (=#0x7fff)
	cmp     r1, r2
	bne     branch_200f358
	mov     r1, #0x10
	b       branch_200f35c
@ 0x200f358

.thumb
branch_200f358: @ 200f358 :thumb
	mov     r1, #0xf
	mvn     r1, r1
.thumb
branch_200f35c: @ 200f35c :thumb
	ldr     r3, [pc, #0xc] @ 0x200f36c, (=#0x200f44d)
	bx      r3
@ 0x200f360

.word 0xffff @ 0x200f360
.word 0x21bf5b4 @ 0x200f364
.word 0x7fff @ 0x200f368
.word 0x200f44d @ 0x200f36c

.incbin "baserom/arm9.bin", 0xf370, 0x200f3b0 - 0x200f370


.thumb
Function_200f3b0: @ 200f3b0 :thumb
	push    {r0-r3}
	push    {r3,r4,lr}
	add     sp, #-0xc
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x4]
	mov     r4, r0
	ldr     r0, [pc, #0x60] @ 0x200f420, (=#0xffff)
	cmp     r2, r0
	bne     branch_200f3c8
	ldr     r0, [pc, #0x60] @ 0x200f424, (=#0x21bf5b4)
	ldrh    r0, [r0, #0x10]
	strh    r0, [r1, #0x4]
.thumb
branch_200f3c8: @ 200f3c8 :thumb
	cmp     r4, #0x0
	add     r0, sp, #0x1c
	bne     branch_200f3d8
	mov     r1, #0x0
	mov     r2, #0x2
	blx     Function_20c00b4
	b       branch_200f3e0
@ 0x200f3d8

.thumb
branch_200f3d8: @ 200f3d8 :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	blx     Function_20c0108
.thumb
branch_200f3e0: @ 200f3e0 :thumb
	ldr     r0, [pc, #0x44] @ 0x200f428, (=#0x21bf500)
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_2012634
	mov     r2, #0x0
	ldr     r0, [pc, #0x38] @ 0x200f428, (=#0x21bf500)
	mov     r1, #0x3f
	mov     r3, r2
	str     r4, [sp, #0x0]
	bl      Function_2012650
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x200f428, (=#0x21bf500)
	mov     r2, r1
	mov     r3, r1
	str     r4, [sp, #0x8]
	bl      Function_2012698
	ldr     r0, [pc, #0x1c] @ 0x200f428, (=#0x21bf500)
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2012678
	add     sp, #0xc
	pop     {r3,r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x200f420

.word 0xffff @ 0x200f420
.word 0x21bf5b4 @ 0x200f424
.word 0x21bf500 @ 0x200f428

.incbin "baserom/arm9.bin", 0xf42c, 0x200f46c - 0x200f42c


.thumb
Function_200f46c: @ 200f46c :thumb
	push    {r4,lr}
	mov     r1, #0x53
	mov     r4, r0
	mov     r2, #0x0
	lsl     r1, r1, #2
	strh    r2, [r4, r1]
	bl      Function_200f77c
	mov     r1, #0x15
	lsl     r1, r1, #4
	strh    r0, [r4, r1]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_200f49c
	mov     r0, r4
	add     r0, #0x14
	bl      Function_200f7e4
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	bne     branch_200f49c
	ldr     r0, [pc, #0x28] @ 0x200f4c0, (=#0x21bf5b4)
	mov     r1, #0x0
	strb    r1, [r0, #0xe]
.thumb
branch_200f49c: @ 200f49c :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_200f4b6
	mov     r0, r4
	add     r0, #0x44
	bl      Function_200f7e4
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	bne     branch_200f4b6
	ldr     r0, [pc, #0xc] @ 0x200f4c0, (=#0x21bf5b4)
	mov     r1, #0x0
	strb    r1, [r0, #0xf]
.thumb
branch_200f4b6: @ 200f4b6 :thumb
	mov     r0, r4
	bl      Function_200f814
	pop     {r4,pc}
@ 0x200f4be


.incbin "baserom/arm9.bin", 0xf4be, 0x200f4c0 - 0x200f4be


.word 0x21bf5b4 @ 0x200f4c0
.thumb
Function_200f4c4: @ 200f4c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_200f4da
	cmp     r0, #0x1
	beq     branch_200f4ec
	cmp     r0, #0x2
	beq     branch_200f506
	b       branch_200f51e
@ 0x200f4da

.thumb
branch_200f4da: @ 200f4da :thumb
	add     r0, r5, #0x4
	bl      Function_200f534
	mov     r0, r5
	add     r0, #0x8
	mov     r1, r4
	bl      Function_200f534
	b       branch_200f51e
@ 0x200f4ec

.thumb
branch_200f4ec: @ 200f4ec :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_200f4fa
	add     r0, r5, #0x4
	bl      Function_200f534
	b       branch_200f51e
@ 0x200f4fa

.thumb
branch_200f4fa: @ 200f4fa :thumb
	mov     r0, r5
	add     r0, #0x8
	mov     r1, r4
	bl      Function_200f534
	b       branch_200f51e
@ 0x200f506

.thumb
branch_200f506: @ 200f506 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_200f518
	mov     r0, r5
	add     r0, #0x8
	mov     r1, r4
	bl      Function_200f534
	b       branch_200f51e
@ 0x200f518

.thumb
branch_200f518: @ 200f518 :thumb
	add     r0, r5, #0x4
	bl      Function_200f534
.thumb
branch_200f51e: @ 200f51e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_200f52e
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_200f52e
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x200f52e

.thumb
branch_200f52e: @ 200f52e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x200f532


.incbin "baserom/arm9.bin", 0xf532, 0x200f534 - 0x200f532


.thumb
Function_200f534: @ 200f534 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_200f54c
	mov     r0, r1
	bl      Function_200f550
	cmp     r0, #0x1
	bne     branch_200f54c
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_200f54c: @ 200f54c :thumb
	pop     {r4,pc}
@ 0x200f54e


.incbin "baserom/arm9.bin", 0xf54e, 0x200f550 - 0x200f54e


.thumb
Function_200f550: @ 200f550 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x200f560, (=#0x20e5074)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x200f55e


.incbin "baserom/arm9.bin", 0xf55e, 0x200f560 - 0x200f55e


.word 0x20e5074 @ 0x200f560
.thumb
Function_200f564: @ 200f564 :thumb
	push    {r3,lr}
	cmp     r0, #0x4
	bhi     branch_200f5c4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r2, #0
	lsl     r4, r4, #0
	lsl     r2, r6, #0
	lsl     r0, r0, #1
	mov     r2, #0x1
	mov     r0, r1
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_200f5c8
	pop     {r3,pc}
@ 0x200f58e


.incbin "baserom/arm9.bin", 0xf58e, 0x200f5c4 - 0x200f58e


.thumb
branch_200f5c4: @ 200f5c4 :thumb
	pop     {r3,pc}
@ 0x200f5c6


.incbin "baserom/arm9.bin", 0xf5c6, 0x200f5c8 - 0x200f5c6


.thumb
Function_200f5c8: @ 200f5c8 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	str     r3, [r0, #0x8]
	str     r2, [r0, #0xc]
	str     r3, [r0, #0x10]
	bx      lr
@ 0x200f5d4

.thumb
Function_200f5d4: @ 200f5d4 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	ldr     r1, [sp, #0x0]
	str     r3, [r0, #0x8]
	str     r1, [r0, #0xc]
	ldr     r1, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x8]
	str     r1, [r0, #0x10]
	ldr     r1, [sp, #0xc]
	str     r1, [r0, #0x18]
	ldr     r1, [sp, #0x10]
	str     r1, [r0, #0x1c]
	ldr     r1, [sp, #0x14]
	str     r1, [r0, #0x20]
	ldr     r1, [pc, #0x8] @ 0x200f5fc, (=#0xfffffff0)
	add     r1, sp
	ldrh    r1, [r1, #0x28]
	strh    r1, [r0, #0x24]
	bx      lr
@ 0x200f5fc

.word 0xfffffff0 @ 0x200f5fc
.thumb
Function_200f600: @ 200f600 :thumb
	mov     r3, #0x0
	ldr     r1, [pc, #0x14] @ 0x200f618, (=#0x200f765)
	mov     r2, r3
.thumb
branch_200f606: @ 200f606 :thumb
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x8]
	str     r2, [r0, #0x10]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, #0x2
	blt     branch_200f606
	bx      lr
@ 0x200f616


.incbin "baserom/arm9.bin", 0xf616, 0x200f618 - 0x200f616


.word 0x200f765 @ 0x200f618

.incbin "baserom/arm9.bin", 0xf61c, 0x200f768 - 0x200f61c


.thumb
Function_200f768: @ 200f768 :thumb
	ldr     r2, [pc, #0xc] @ 0x200f778, (=#0xffff)
	cmp     r1, r2
	bne     branch_200f774
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldrh    r1, [r0, r1]
.thumb
branch_200f774: @ 200f774 :thumb
	mov     r0, r1
	bx      lr
@ 0x200f778

.word 0xffff @ 0x200f778
.thumb
Function_200f77c: @ 200f77c :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x1
	bne     branch_200f788
	mov     r2, r0
	add     r2, #0x14
	b       branch_200f78c
@ 0x200f788

.thumb
branch_200f788: @ 200f788 :thumb
	mov     r2, r0
	add     r2, #0x44
.thumb
branch_200f78c: @ 200f78c :thumb
	ldr     r1, [r2, #0x28]
	cmp     r1, #0x1
	bne     branch_200f796
	ldrh    r0, [r2, #0x24]
	bx      lr
@ 0x200f796

.thumb
branch_200f796: @ 200f796 :thumb
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x200f79e


.incbin "baserom/arm9.bin", 0xf79e, 0x200f7b4 - 0x200f79e


.thumb
Function_200f7b4: @ 200f7b4 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x28]
	cmp     r0, #0x0
	bne     branch_200f7da
	ldrh    r2, [r1, #0x24]
	ldr     r0, [pc, #0x18] @ 0x200f7dc, (=#0x7fff)
	cmp     r2, r0
	beq     branch_200f7ca
	cmp     r2, #0x0
	bne     branch_200f7da
.thumb
branch_200f7ca: @ 200f7ca :thumb
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x0
	bne     branch_200f7da
	mov     r2, #0x1
	ldr     r0, [pc, #0xc] @ 0x200f7e0, (=#0x200f7a1)
	lsl     r2, r2, #10
	bl      Function_200da3c
.thumb
branch_200f7da: @ 200f7da :thumb
	pop     {r3,pc}
@ 0x200f7dc

.word 0x7fff @ 0x200f7dc
.word 0x200f7a1 @ 0x200f7e0
.thumb
Function_200f7e4: @ 200f7e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x1
	bne     branch_200f80c
	ldrh    r1, [r4, #0x24]
	ldr     r0, [pc, #0x1c] @ 0x200f810, (=#0x7fff)
	cmp     r1, r0
	beq     branch_200f7fa
	cmp     r1, #0x0
	bne     branch_200f80c
.thumb
branch_200f7fa: @ 200f7fa :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	bne     branch_200f80c
	ldr     r0, [r4, #0x10]
	bl      Function_200f344
	ldr     r0, [r4, #0x10]
	bl      Function_200f32c
.thumb
branch_200f80c: @ 200f80c :thumb
	pop     {r4,pc}
@ 0x200f80e


.incbin "baserom/arm9.bin", 0xf80e, 0x200f810 - 0x200f80e


.word 0x7fff @ 0x200f810
.thumb
Function_200f814: @ 200f814 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_200f81e: @ 200f81e :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_200f81e
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	mov     r0, r4
	add     r0, #0x44
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Function_20d5124
	mov     r2, r4
	add     r2, #0x74
	mov     r1, #0x18
	mov     r0, #0x0
.thumb
branch_200f846: @ 200f846 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_200f846
	add     r4, #0x8c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc0
	blx     Function_20d5124
	pop     {r4,pc}
@ 0x200f85c


.incbin "baserom/arm9.bin", 0xf85c, 0x2012634 - 0x200f85c


.thumb
Function_2012634: @ 2012634 :thumb
	push    {r4,lr}
	lsl     r3, r2, #3
	add     r4, r0, r3
	str     r1, [r0, r3]
	str     r2, [r4, #0x4]
	ldr     r0, [pc, #0xc] @ 0x201264c, (=#0x20126cd)
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_200da3c
	pop     {r4,pc}
@ 0x201264a


.incbin "baserom/arm9.bin", 0x1264a, 0x201264c - 0x201264a


.word 0x20126cd @ 0x201264c
.thumb
Function_2012650: @ 2012650 :thumb
	push    {r4-r6,lr}
	ldr     r5, [sp, #0x10]
	add     r0, #0x10
	lsl     r4, r5, #5
	add     r6, r0, r4
	lsl     r0, r3, #4
	add     r4, r6, r0
	str     r1, [r6, r0]
	str     r2, [r4, #0x4]
	str     r3, [r4, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2012674, (=#0x20126e1)
	mov     r1, r4
	mov     r2, #0x1
	str     r5, [r4, #0xc]
	bl      Function_200da3c
	pop     {r4-r6,pc}
@ 0x2012672


.incbin "baserom/arm9.bin", 0x12672, 0x2012674 - 0x2012672


.word 0x20126e1 @ 0x2012674
.thumb
Function_2012678: @ 2012678 :thumb
	push    {r3-r5,lr}
	mov     r4, #0xc
	add     r0, #0x68
	mul     r4, r3
	add     r5, r0, r4
	str     r1, [r0, r4]
	str     r2, [r5, #0x4]
	ldr     r0, [pc, #0xc] @ 0x2012694, (=#0x20126fd)
	mov     r1, r5
	mov     r2, #0x1
	str     r3, [r5, #0x8]
	bl      Function_200da3c
	pop     {r3-r5,pc}
@ 0x2012694

.word 0x20126fd @ 0x2012694
.thumb
Function_2012698: @ 2012698 :thumb
	push    {r3-r7,lr}
	ldr     r5, [sp, #0x20]
	mov     r7, r1
	add     r0, #0x80
	lsl     r1, r5, #5
	add     r6, r0, r1
	mov     r4, r2
	ldr     r0, [sp, #0x1c]
	mov     r2, r3
	lsl     r3, r0, #4
	add     r1, r6, r3
	strh    r7, [r6, r3]
	strh    r4, [r1, #0x2]
	strh    r2, [r1, #0x4]
	ldr     r2, [sp, #0x18]
	strh    r2, [r1, #0x6]
	str     r0, [r1, #0x8]
	ldr     r0, [pc, #0xc] @ 0x20126c8, (=#0x2012715)
	mov     r2, #0x1
	str     r5, [r1, #0xc]
	bl      Function_200da3c
	pop     {r3-r7,pc}
@ 0x20126c6


.incbin "baserom/arm9.bin", 0x126c6, 0x20126c8 - 0x20126c6


.word 0x2012715 @ 0x20126c8

.incbin "baserom/arm9.bin", 0x126cc, 0x20131ec - 0x20126cc


.thumb
Function_20131ec: @ 20131ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	ldr     r6, [sp, #0x20]
	str     r1, [sp, #0x4]
	mov     r5, r2
	mov     r4, r3
	str     r0, [sp, #0x24]
	mov     r7, #0x0
.thumb
branch_2013200: @ 2013200 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	add     r0, r0, r1
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	mov     r2, r6
	blx     Function_20d50b8
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x24]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, r0, r6
	str     r0, [r4, #0x0]
	cmp     r7, #0x8
	blt     branch_2013200
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x201322a


.incbin "baserom/arm9.bin", 0x1322a, 0x20133d4 - 0x201322a


.thumb
Function_20133d4: @ 20133d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r3, [sp, #0x8]
	ldr     r3, [sp, #0x48]
	mov     r4, r0
	str     r3, [sp, #0x48]
	mov     r3, #0x0
	str     r3, [sp, #0x2c]
	bl      Function_2006ac0
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_20133f2
	bl      Function_2022974
.thumb
branch_20133f2: @ 20133f2 :thumb
	ldr     r0, [sp, #0x20]
	add     r1, sp, #0x2c
	blx     Function_20a7118
	cmp     r0, #0x0
	bne     branch_2013402
	bl      Function_2022974
.thumb
branch_2013402: @ 2013402 :thumb
	ldr     r1, [sp, #0x4c]
	ldr     r0, [sp, #0x8]
	add     r6, r0, r1
	ldr     r0, [sp, #0x2c]
	ldrh    r0, [r0, #0x2]
	cmp     r0, r6
	bge     branch_2013414
	bl      Function_2022974
.thumb
branch_2013414: @ 2013414 :thumb
	ldr     r1, [sp, #0x50]
	ldr     r0, [sp, #0x48]
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x2c]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	cmp     r1, r0
	bge     branch_201342a
	bl      Function_2022974
.thumb
branch_201342a: @ 201342a :thumb
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	ldr     r0, [r0, #0x14]
	str     r0, [sp, #0x1c]
	bl      Function_20093a0
	ldr     r0, [sp, #0x54]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x2c]
	ldrh    r0, [r0, #0x2]
	lsl     r7, r0, #2
	ldr     r0, [sp, #0x48]
	mov     r1, r0
	mul     r1, r7
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x14]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x48]
	ldr     r0, [sp, #0x10]
	cmp     r1, r0
	bge     branch_201349e
.thumb
branch_2013460: @ 2013460 :thumb
	ldr     r4, [sp, #0x8]
	mov     r0, r4
	cmp     r0, r6
	bge     branch_201348c
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #3
	ldr     r0, [sp, #0xc]
	add     r5, r0, r1
.thumb
branch_2013470: @ 2013470 :thumb
	str     r5, [sp, #0x28]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	add     r2, sp, #0x28
	add     r3, sp, #0x24
	str     r7, [sp, #0x4]
	bl      Function_20131ec
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2013470
.thumb
branch_201348c: @ 201348c :thumb
	ldr     r0, [sp, #0x14]
	add     r0, r0, r7
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x48]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x48]
	cmp     r1, r0
	blt     branch_2013460
.thumb
branch_201349e: @ 201349e :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_20181c4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x20134a8

.thumb
Function_20134a8: @ 20134a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r5, r2
	ldr     r2, [sp, #0x2c]
	ldr     r1, [sp, #0x30]
	mov     r6, r0
	mul     r1, r2
	mov     r0, r5
	lsl     r1, r1, #5
	str     r3, [sp, #0x10]
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r1, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r2, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	str     r4, [sp, #0xc]
	bl      Function_20133d4
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x20134e4

.thumb
Function_20134e4: @ 20134e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x38]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x48]
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x14]
	mov     r0, r2
	add     r7, r0, r1
	ldr     r1, [sp, #0x3c]
	mov     r0, r3
	add     r0, r0, r1
	mov     r1, r3
	str     r3, [sp, #0x8]
	ldr     r5, [sp, #0x40]
	str     r0, [sp, #0x10]
	cmp     r1, r0
	bge     branch_201355c
	mov     r0, r3
	lsl     r0, r0, #5
	str     r0, [sp, #0xc]
	mov     r0, r2
	lsl     r0, r0, #5
	str     r0, [sp, #0x1c]
.thumb
branch_2013518: @ 2013518 :thumb
	ldr     r6, [sp, #0x4]
	mov     r0, r6
	cmp     r0, r7
	bge     branch_201354a
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x1c]
	add     r4, r0, r2
.thumb
branch_201352c: @ 201352c :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x20
	add     r0, r0, r1
	ldr     r1, [sp, #0x18]
	add     r1, r1, r4
	blx     Function_20d50b8
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x20
	str     r0, [r5, #0x0]
	add     r4, #0x20
	cmp     r6, r7
	blt     branch_201352c
.thumb
branch_201354a: @ 201354a :thumb
	ldr     r0, [sp, #0xc]
	add     r0, #0x20
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_2013518
.thumb
branch_201355c: @ 201355c :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2013560

.thumb
Function_2013560: @ 2013560 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r2
	ldr     r2, [r4, #0x8]
	str     r2, [sp, #0x0]
	ldr     r2, [r4, #0xc]
	str     r2, [sp, #0x4]
	ldr     r2, [sp, #0x20]
	str     r3, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r2, [sp, #0x24]
	str     r2, [sp, #0x10]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_20134e4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2013584

.thumb
Function_2013584: @ 2013584 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x9c]
	mov     r12, r3
	mov     r5, r2
	ldr     r6, [sp, #0x94]
	ldr     r7, [sp, #0x98]
	ldr     r3, [pc, #0x54] @ 0x20135ec, (=#0x20e5324)
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x9c]
	add     r2, sp, #0x1c
	mov     r4, #0xc
.thumb
branch_201359e: @ 201359e :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_201359e
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, r5
	mov     r3, r12
	str     r7, [sp, #0x8]
	bl      Function_20134a8
	str     r0, [sp, #0x14]
	mov     r4, #0x0
	add     r5, sp, #0x1c
.thumb
branch_20135c4: @ 20135c4 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x9c]
	mov     r2, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r3, sp, #0x18
	bl      Function_2013560
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_20135c4
	ldr     r0, [sp, #0x14]
	bl      Function_20181c4
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x20135ea


.incbin "baserom/arm9.bin", 0x135ea, 0x20135ec - 0x20135ea


.word 0x20e5324 @ 0x20135ec
.thumb
Function_20135f0: @ 20135f0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [r3, #0x4]
	str     r4, [sp, #0x0]
	ldr     r4, [r3, #0x8]
	str     r4, [sp, #0x4]
	ldr     r4, [r3, #0xc]
	str     r4, [sp, #0x8]
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	bl      Function_2013584
	add     sp, #0x10
	pop     {r4,pc}
@ 0x201360e


.incbin "baserom/arm9.bin", 0x1360e, 0x2013660 - 0x201360e


.thumb
Function_2013660: @ 2013660 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	mov     r1, #0x20
	bl      Function_2018144
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2006ac0
	add     r1, sp, #0x0
	mov     r5, r0
	blx     Function_20a71b0
	cmp     r0, #0x1
	beq     branch_201368c
	bl      Function_2022974
.thumb
branch_201368c: @ 201368c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     Function_20c4b18
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x20136a2


.incbin "baserom/arm9.bin", 0x136a2, 0x201378c - 0x20136a2


.thumb
Function_201378c: @ 201378c :thumb
	push    {r3,lr}
	blx     Function_20cb8a8
	ldr     r3, [pc, #0x28] @ 0x20137bc, (=#0x21bf5c8)
	mov     r0, #0x0
	mov     r2, r3
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [pc, #0x10] @ 0x20137c0, (=#0x21bf5c8)
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r3
	bl      Function_2013824
	pop     {r3,pc}
@ 0x20137bc

.word 0x21bf5c8 @ 0x20137bc
.word 0x21bf5c8 @ 0x20137c0
.thumb
Function_20137c4: @ 20137c4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x20137e4, (=#0x21bf5c8)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	bne     branch_20137e2
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0xa
	ble     branch_20137e2
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x8] @ 0x20137e8, (=#0x21bf5c8)
	bl      Function_2013824
.thumb
branch_20137e2: @ 20137e2 :thumb
	pop     {r3,pc}
@ 0x20137e4

.word 0x21bf5c8 @ 0x20137e4
.word 0x21bf5c8 @ 0x20137e8

.incbin "baserom/arm9.bin", 0x137ec, 0x2013824 - 0x20137ec


.thumb
Function_2013824: @ 2013824 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [pc, #0x14] @ 0x2013848, (=#0x20137ed)
	add     r0, #0x2c
	add     r1, #0x3c
	mov     r3, r4
	blx     Function_20cba68
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2013846
	bl      Function_2022974
.thumb
branch_2013846: @ 2013846 :thumb
	pop     {r4,pc}
@ 0x2013848

.word 0x20137ed @ 0x2013848
.thumb
Function_201384c: @ 201384c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x2013874, (=#0x21bf5c8)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_201385e
	bl      Function_2022974
.thumb
branch_201385e: @ 201385e :thumb
	ldr     r2, [pc, #0x18] @ 0x2013878, (=#0x21bf5d8)
	ldmia   r2!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r2!, {r0,r1}
	ldr     r2, [pc, #0x14] @ 0x201387c, (=#0x21bf5e8)
	stmia   r5!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2013874

.word 0x21bf5c8 @ 0x2013874
.word 0x21bf5d8 @ 0x2013878
.word 0x21bf5e8 @ 0x201387c
.thumb
Function_2013880: @ 2013880 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x201389c, (=#0x21bf5c8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_2013890
	bl      Function_2022974
.thumb
branch_2013890: @ 2013890 :thumb
	ldr     r2, [pc, #0xc] @ 0x20138a0, (=#0x21bf5e8)
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x201389c

.word 0x21bf5c8 @ 0x201389c
.word 0x21bf5e8 @ 0x20138a0
.thumb
Function_20138a4: @ 20138a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x20138c0, (=#0x21bf5c8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_20138b4
	bl      Function_2022974
.thumb
branch_20138b4: @ 20138b4 :thumb
	ldr     r2, [pc, #0xc] @ 0x20138c4, (=#0x21bf5d8)
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	pop     {r4,pc}
@ 0x20138c0

.word 0x21bf5c8 @ 0x20138c0
.word 0x21bf5d8 @ 0x20138c4
.thumb
Function_20138c8: @ 20138c8 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x1c] @ 0x20138e8, (=#0x21bf5e8)
	mov     r0, #0x3c
	ldr     r1, [r4, #0x4]
	ldr     r3, [r4, #0x8]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0xe1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	mul     r0, r1
	add     r0, r2, r0
	add     r0, r3, r0
	pop     {r3,r4}
	bx      lr
@ 0x20138e6


.incbin "baserom/arm9.bin", 0x138e6, 0x20138e8 - 0x20138e6


.word 0x21bf5e8 @ 0x20138e8
.thumb
Function_20138ec: @ 20138ec :thumb
	ldr     r3, [pc, #0x4] @ 0x20138f4, (=#0x20cc218)
	ldr     r0, [pc, #0x8] @ 0x20138f8, (=#0x21bf5d8)
	ldr     r1, [pc, #0x8] @ 0x20138fc, (=#0x21bf5e8)
	bx      r3
@ 0x20138f4

.word 0x20cc218 @ 0x20138f4
.word 0x21bf5d8 @ 0x20138f8
.word 0x21bf5e8 @ 0x20138fc

.incbin "baserom/arm9.bin", 0x13900, 0x2013948 - 0x2013900


.thumb
Function_2013948: @ 2013948 :thumb
	push    {r3,lr}
	bl      Function_2013960
	cmp     r0, #0x3
	beq     branch_2013956
	cmp     r0, #0x4
	bne     branch_201395a
.thumb
branch_2013956: @ 2013956 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x201395a

.thumb
branch_201395a: @ 201395a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x201395e


.incbin "baserom/arm9.bin", 0x1395e, 0x2013960 - 0x201395e


.thumb
Function_2013960: @ 2013960 :thumb
	push    {lr}
	add     sp, #-0xc
	add     r0, sp, #0x0
	bl      Function_2013880
	ldr     r0, [sp, #0x0]
	bl      Function_2013974
	add     sp, #0xc
	pop     {pc}
@ 0x2013974

.thumb
Function_2013974: @ 2013974 :thumb
	push    {r4,lr}
	mov     r4, r0
	bmi     branch_201397e
	cmp     r4, #0x18
	blt     branch_2013982
.thumb
branch_201397e: @ 201397e :thumb
	bl      Function_2022974
.thumb
branch_2013982: @ 2013982 :thumb
	ldr     r0, [pc, #0x4] @ 0x2013988, (=#0x20e5418)
	ldrb    r0, [r0, r4]
	pop     {r4,pc}
@ 0x2013988

.word 0x20e5418 @ 0x2013988
.thumb
Function_201398c: @ 201398c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r3
	ldr     r3, [pc, #0x64] @ 0x20139f8, (=#0x20e53f0)
	mov     r4, r0
	mov     r7, r1
	mov     r5, r2
	add     r2, sp, #0x14
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0x0]
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x54] @ 0x20139fc, (=#0x20e53e4)
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0x4]
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r1, [sp, #0x4]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x0]
	blx     Function_20cc218
	mov     r2, r1
	mov     r3, r0
	mov     r1, #0x0
	ldr     r0, [pc, #0x3c] @ 0x2013a00, (=#0xbc19137f)
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	beq     branch_20139d0
	bl      Function_2022974
.thumb
branch_20139d0: @ 20139d0 :thumb
	sub     r0, r4, r5
	mov     r12, r7
	mov     r0, r12
	sbc     r0, r6
	bge     branch_20139e4
	sub     r0, r5, r4
	sbc     r6, r7
	add     sp, #0x24
	mov     r1, r6
	pop     {r4-r7,pc}
@ 0x20139e4

.thumb
branch_20139e4: @ 20139e4 :thumb
	ldr     r0, [pc, #0x18] @ 0x2013a00, (=#0xbc19137f)
	mov     r1, #0x0
	sub     r0, r0, r4
	sbc     r1, r7
	add     r0, r5, r0
	adc     r6, r1
	mov     r1, r6
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x20139f6


.incbin "baserom/arm9.bin", 0x139f6, 0x20139f8 - 0x20139f6


.word 0x20e53f0 @ 0x20139f8
.word 0x20e53e4 @ 0x20139fc
.word 0xbc19137f @ 0x2013a00
.thumb
Function_2013a04: @ 2013a04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r1, r5, #0x1
	mov     r0, r4
	lsl     r1, r1, #3
	bl      Function_2018144
	cmp     r0, #0x0
	beq     branch_2013a3a
	mov     r2, #0x0
	cmp     r5, #0x0
	bls     branch_2013a2e
	mov     r3, r0
	mov     r1, r2
.thumb
branch_2013a22: @ 2013a22 :thumb
	str     r1, [r3, #0x0]
	str     r1, [r3, #0x4]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	bcc     branch_2013a22
.thumb
branch_2013a2e: @ 2013a2e :thumb
	mov     r1, #0x0
	lsl     r2, r2, #3
	mvn     r1, r1
	str     r1, [r0, r2]
	add     r1, r0, r2
	str     r4, [r1, #0x4]
.thumb
branch_2013a3a: @ 2013a3a :thumb
	pop     {r3-r5,pc}
@ 0x2013a3c


.incbin "baserom/arm9.bin", 0x13a3c, 0x2013a4c - 0x2013a3c


.thumb
Function_2013a4c: @ 2013a4c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	add     r1, sp, #0x0
	mov     r7, r2
	mov     r5, r3
	bl      Function_2013aac
	mov     r4, r0
	beq     branch_2013a6a
	mov     r0, r6
	mov     r1, r7
	bl      Function_200b1ec
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x4]
.thumb
branch_2013a6a: @ 2013a6a :thumb
	pop     {r3-r7,pc}
@ 0x2013a6c


.incbin "baserom/arm9.bin", 0x13a6c, 0x2013aac - 0x2013a6c


.thumb
Function_2013aac: @ 2013aac :thumb
	push    {r4,lr}
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_2013acc
	mov     r2, #0x0
	mvn     r2, r2
.thumb
branch_2013ab8: @ 2013ab8 :thumb
	cmp     r3, r2
	bne     branch_2013ac4
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2013ac4

.thumb
branch_2013ac4: @ 2013ac4 :thumb
	add     r0, #0x8
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	bne     branch_2013ab8
.thumb
branch_2013acc: @ 2013acc :thumb
	mov     r2, #0x0
	mvn     r2, r2
	mov     r4, r0
	cmp     r3, r2
	beq     branch_2013ade
.thumb
branch_2013ad6: @ 2013ad6 :thumb
	add     r0, #0x8
	ldr     r3, [r0, #0x0]
	cmp     r3, r2
	bne     branch_2013ad6
.thumb
branch_2013ade: @ 2013ade :thumb
	ldr     r0, [r0, #0x4]
	str     r0, [r1, #0x0]
	mov     r0, r4
	pop     {r4,pc}
@ 0x2013ae6


.incbin "baserom/arm9.bin", 0x13ae6, 0x20149f0 - 0x2013ae6


.thumb
Function_20149f0: @ 20149f0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x8
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	beq     branch_2014a12
	ldr     r0, [pc, #0x18] @ 0x2014a18, (=#0x1020f)
	mov     r1, r5
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	bl      Function_2023790
	ldr     r1, [pc, #0x10] @ 0x2014a1c, (=#0x20e5494)
	str     r0, [r4, #0x4]
	bl      Function_2023d28
.thumb
branch_2014a12: @ 2014a12 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2014a16


.incbin "baserom/arm9.bin", 0x14a16, 0x2014a18 - 0x2014a16


.word 0x1020f @ 0x2014a18
.word 0x20e5494 @ 0x2014a1c
.thumb
Function_2014a20: @ 2014a20 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2014a2a
	bl      Function_2022974
.thumb
branch_2014a2a: @ 2014a2a :thumb
	cmp     r4, #0x0
	beq     branch_2014a3e
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2014a38
	bl      Function_20237bc
.thumb
branch_2014a38: @ 2014a38 :thumb
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_2014a3e: @ 2014a3e :thumb
	pop     {r4,pc}
@ 0x2014a40

.thumb
Function_2014a40: @ 2014a40 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2014a4e
	bl      Function_2022974
.thumb
branch_2014a4e: @ 2014a4e :thumb
	cmp     r5, #0x0
	beq     branch_2014a54
	str     r4, [r5, #0x0]
.thumb
branch_2014a54: @ 2014a54 :thumb
	pop     {r3-r5,pc}
@ 0x2014a56


.incbin "baserom/arm9.bin", 0x14a56, 0x2014a58 - 0x2014a56


.thumb
Function_2014a58: @ 2014a58 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	mov     r4, r2
	str     r1, [sp, #0xc]
	ldr     r2, [r6, #0x4]
	mov     r0, r5
	mov     r3, r4
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2014a84

.thumb
Function_2014a84: @ 2014a84 :thumb
	ldr     r1, [pc, #0x10] @ 0x2014a98, (=#0xffff)
	mov     r2, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_2014a8a: @ 2014a8a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r0, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r2, #0x2
	blt     branch_2014a8a
	bx      lr
@ 0x2014a96


.incbin "baserom/arm9.bin", 0x14a96, 0x2014a98 - 0x2014a96


.word 0xffff @ 0x2014a98
.thumb
Function_2014a9c: @ 2014a9c :thumb
	strh    r1, [r0, #0x0]
	mov     r2, #0x0
	ldr     r1, [pc, #0xc] @ 0x2014ab0, (=#0xffff)
	strh    r2, [r0, #0x2]
.thumb
branch_2014aa4: @ 2014aa4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r0, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r2, #0x2
	blt     branch_2014aa4
	bx      lr
@ 0x2014ab0

.word 0xffff @ 0x2014ab0

.incbin "baserom/arm9.bin", 0x14ab4, 0x2014bbc - 0x2014ab4


.thumb
Function_2014bbc: @ 2014bbc :thumb
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2014bcc, (=#0xffff)
	cmp     r1, r0
	beq     branch_2014bc8
	mov     r0, #0x1
	bx      lr
@ 0x2014bc8

.thumb
branch_2014bc8: @ 2014bc8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2014bcc

.word 0xffff @ 0x2014bcc

.incbin "baserom/arm9.bin", 0x14bd0, 0x2014c78 - 0x2014bd0


.thumb
Function_2014c78: @ 2014c78 :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0x4]
	bx      lr
@ 0x2014c80

.thumb
Function_2014c80: @ 2014c80 :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x2014c84

.thumb
Function_2014c84: @ 2014c84 :thumb
	ldrh    r0, [r0, #0x2]
	bx      lr
@ 0x2014c88


.incbin "baserom/arm9.bin", 0x14c88, 0x2014cf8 - 0x2014c88


.thumb
Function_2014cf8: @ 2014cf8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x2
	bcc     branch_2014d08
	bl      Function_2022974
.thumb
branch_2014d08: @ 2014d08 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	strh    r6, [r0, #0x4]
	pop     {r4-r6,pc}
@ 0x2014d10


.incbin "baserom/arm9.bin", 0x14d10, 0x2014db8 - 0x2014d10


.thumb
Function_2014db8: @ 2014db8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r1, [pc, #0x34] @ 0x2014df4, (=#0xffff)
	cmp     r0, r1
	beq     branch_2014de8
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2014e4c
	ldr     r0, [sp, #0x8]
	mov     r3, #0x0
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x24] @ 0x2014df8, (=#0x20e550c)
	ldrh    r0, [r0, r1]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r0, #0x1a
	bl      Function_200af20
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2014de8

.thumb
branch_2014de8: @ 2014de8 :thumb
	mov     r0, r4
	bl      Function_20237e8
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2014df2


.incbin "baserom/arm9.bin", 0x14df2, 0x2014df4 - 0x2014df2


.word 0xffff @ 0x2014df4
.word 0x20e550c @ 0x2014df8

.incbin "baserom/arm9.bin", 0x14dfc, 0x2014e4c - 0x2014dfc


.thumb
Function_2014e4c: @ 2014e4c :thumb
	push    {r3-r6}
	ldr     r3, [pc, #0x34] @ 0x2014e84, (=#0xfff)
	ldr     r6, [pc, #0x34] @ 0x2014e88, (=#0x20e5522)
	and     r3, r0
	mov     r0, #0x0
	mov     r5, r0
.thumb
branch_2014e58: @ 2014e58 :thumb
	ldrh    r4, [r6, #0x0]
	add     r0, r0, r4
	cmp     r3, r0
	bcs     branch_2014e74
	str     r5, [r1, #0x0]
	ldr     r1, [pc, #0x24] @ 0x2014e88, (=#0x20e5522)
	lsl     r4, r5, #1
	ldrh    r1, [r1, r4]
	sub     r0, r0, r1
	sub     r0, r3, r0
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x2014e74

.thumb
branch_2014e74: @ 2014e74 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, #0xb
	bcc     branch_2014e58
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2014e82


.incbin "baserom/arm9.bin", 0x14e82, 0x2014e84 - 0x2014e82


.word 0xfff @ 0x2014e84
.word 0x20e5522 @ 0x2014e88

.incbin "baserom/arm9.bin", 0x14e8c, 0x2014ec4 - 0x2014e8c


.thumb
Function_2014ec4: @ 2014ec4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x22
	bl      Function_2025c48
	mov     r0, r4
	mov     r1, #0x22
	bl      Function_20245bc
	pop     {r4,pc}
@ 0x2014ed8


.incbin "baserom/arm9.bin", 0x14ed8, 0x2014ee4 - 0x2014ed8


.thumb
Function_2014ee4: @ 2014ee4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r2, #0x0
	ldr     r3, [r4, #0x4]
	mov     r5, r2
	mov     r0, #0x1
.thumb
branch_2014ef0: @ 2014ef0 :thumb
	mov     r1, r3
	lsr     r1, r2
	tst     r1, r0
	bne     branch_2014efa
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2014efa: @ 2014efa :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x20
	bcc     branch_2014ef0
	cmp     r5, #0x0
	beq     branch_2014f3c
	bl      PRNG
	mov     r1, r5
	blx     Function_20e2178
	ldr     r3, [r4, #0x4]
	mov     r5, #0x0
	mov     r0, #0x1
.thumb
branch_2014f14: @ 2014f14 :thumb
	mov     r2, r3
	lsr     r2, r5
	tst     r2, r0
	bne     branch_2014f36
	cmp     r1, #0x0
	bne     branch_2014f34
	mov     r0, #0x1
	ldr     r1, [r4, #0x4]
	lsl     r0, r5
	orr     r0, r1
	str     r0, [r4, #0x4]
	mov     r0, #0x22
	bl      Function_2025c84
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2014f34

.thumb
branch_2014f34: @ 2014f34 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_2014f36: @ 2014f36 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x20
	bcc     branch_2014f14
.thumb
branch_2014f3c: @ 2014f3c :thumb
	mov     r0, #0x22
	bl      Function_2025c84
	mov     r0, #0x20
	pop     {r3-r5,pc}
@ 0x2014f46


.incbin "baserom/arm9.bin", 0x14f46, 0x2014f48 - 0x2014f46


.thumb
Function_2014f48: @ 2014f48 :thumb
	ldr     r3, [r0, #0x4]
	mov     r2, #0x0
	mov     r0, #0x1
.thumb
branch_2014f4e: @ 2014f4e :thumb
	mov     r1, r3
	lsr     r1, r2
	tst     r1, r0
	bne     branch_2014f5a
	mov     r0, #0x0
	bx      lr
@ 0x2014f5a

.thumb
branch_2014f5a: @ 2014f5a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x20
	bcc     branch_2014f4e
	mov     r0, #0x1
	bx      lr
@ 0x2014f64

.thumb
Function_2014f64: @ 2014f64 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	ldr     r4, [pc, #0x1c] @ 0x2014f88, (=#0x20e5522)
	mov     r2, r3
.thumb
branch_2014f6c: @ 2014f6c :thumb
	ldrh    r1, [r4, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r1, r3, r1
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	cmp     r2, #0x9
	blt     branch_2014f6c
	add     r0, r3, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,r4}
	bx      lr
@ 0x2014f86


.incbin "baserom/arm9.bin", 0x14f86, 0x2014f88 - 0x2014f86


.word 0x20e5522 @ 0x2014f88

.incbin "baserom/arm9.bin", 0x14f8c, 0x2014f98 - 0x2014f8c


.thumb
Function_2014f98: @ 2014f98 :thumb
	mov     r2, #0x1
	ldr     r3, [r0, #0x0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	str     r1, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x2014fac, (=#0x2025c85)
	mov     r0, #0x22
	bx      r3
@ 0x2014faa


.incbin "baserom/arm9.bin", 0x14faa, 0x2014fac - 0x2014faa


.word 0x2025c85 @ 0x2014fac

.incbin "baserom/arm9.bin", 0x14fb0, 0x2017070 - 0x2014fb0


.thumb
Function_2017070: @ 2017070 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x3
	blt     branch_201707e
	bl      Function_2022974
.thumb
branch_201707e: @ 201707e :thumb
	ldr     r0, [pc, #0x8] @ 0x2017088, (=#0x20e565c)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	add     r0, r4, r0
	pop     {r3-r5,pc}
@ 0x2017088

.word 0x20e565c @ 0x2017088

.incbin "baserom/arm9.bin", 0x1708c, 0x2017428 - 0x201708c


.thumb
Function_2017428: @ 2017428 :thumb
	ldr     r0, [pc, #0x4] @ 0x2017430, (=#0x21bf658)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2017430

.word 0x21bf658 @ 0x2017430

.incbin "baserom/arm9.bin", 0x17434, 0x2017458 - 0x2017434


.thumb
Function_2017458: @ 2017458 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x38] @ 0x2017494, (=#0x21bf658)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2017492
	bl      Function_202293c
	ldr     r2, [pc, #0x2c] @ 0x2017494, (=#0x21bf658)
	ldr     r3, [r2, #0x18]
	ldr     r2, [r2, #0x1c]
	sub     r0, r0, r3
	sbc     r1, r2
	bl      Function_202295c
	mov     r5, r1
	ldr     r1, [pc, #0x1c] @ 0x2017494, (=#0x21bf658)
	mov     r4, r0
	ldr     r3, [r1, #0x8]
	ldr     r2, [r1, #0xc]
	sub     r0, r3, r4
	sbc     r2, r5
	bcs     branch_2017492
	ldr     r0, [r1, #0x4]
	sub     r1, r4, r3
	bl      Function_202cbf0
	ldr     r0, [pc, #0x4] @ 0x2017494, (=#0x21bf658)
	str     r4, [r0, #0x8]
	str     r5, [r0, #0xc]
.thumb
branch_2017492: @ 2017492 :thumb
	pop     {r3-r5,pc}
@ 0x2017494

.word 0x21bf658 @ 0x2017494

.incbin "baserom/arm9.bin", 0x17498, 0x201777c - 0x2017498


.thumb
Function_201777c: @ 201777c :thumb
	push    {r3,lr}
	mov     r0, #0x1
	blx     Function_20c164c
	ldr     r1, [pc, #0xc] @ 0x2017794, (=#0x201775d)
	mov     r0, #0x1
	blx     Function_20c144c
	mov     r0, #0x1
	blx     Function_20c161c
	pop     {r3,pc}
@ 0x2017794

.word 0x201775d @ 0x2017794
.thumb
Function_2017798: @ 2017798 :thumb
	ldr     r2, [pc, #0x4] @ 0x20177a0, (=#0x21bf67c)
	str     r0, [r2, #0x0]
	str     r1, [r2, #0x4]
	bx      lr
@ 0x20177a0

.word 0x21bf67c @ 0x20177a0

.incbin "baserom/arm9.bin", 0x177a4, 0x20177bc - 0x20177a4


.thumb
Function_20177bc: @ 20177bc :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	bne     branch_20177d4
	mov     r0, #0x0
	bl      Function_2017808
	ldr     r0, [pc, #0x24] @ 0x20177f0, (=#0x21bf67c)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20177d4

.thumb
branch_20177d4: @ 20177d4 :thumb
	ldr     r2, [pc, #0x18] @ 0x20177f0, (=#0x21bf67c)
	ldr     r3, [r2, #0x8]
	cmp     r3, #0x0
	bne     branch_20177ea
	str     r1, [r2, #0xc]
	str     r0, [r2, #0x8]
	mov     r0, #0x1
	bl      Function_2017808
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20177ea

.thumb
branch_20177ea: @ 20177ea :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20177ee


.incbin "baserom/arm9.bin", 0x177ee, 0x20177f0 - 0x20177ee


.word 0x21bf67c @ 0x20177f0

.incbin "baserom/arm9.bin", 0x177f4, 0x2017808 - 0x20177f4


.thumb
Function_2017808: @ 2017808 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x3c] @ 0x2017848, (=#0x4000208)
	ldrh    r1, [r2, #0x0]
	mov     r1, #0x0
	strh    r1, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_2017826
	ldr     r0, [r2, #0x8]
	mov     r0, #0x2
	blx     Function_20c164c
	mov     r0, #0x0
	blx     Function_20bdd54
	b       branch_201783c
@ 0x2017826

.thumb
branch_2017826: @ 2017826 :thumb
	ldr     r0, [r2, #0x8]
	ldr     r1, [pc, #0x20] @ 0x201784c, (=#0x20177f5)
	mov     r0, #0x2
	blx     Function_20c144c
	mov     r0, #0x2
	blx     Function_20c161c
	mov     r0, #0x1
	blx     Function_20bdd54
.thumb
branch_201783c: @ 201783c :thumb
	ldr     r1, [pc, #0x8] @ 0x2017848, (=#0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x1
	strh    r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x2017846


.incbin "baserom/arm9.bin", 0x17846, 0x2017848 - 0x2017846


.word 0x4000208 @ 0x2017848
.word 0x20177f5 @ 0x201784c
.thumb
Function_2017850: @ 2017850 :thumb
	push    {r3,lr}
	add     sp, #-0x30
	add     r0, sp, #0x10
	blx     Function_20c41d8
	add     r0, sp, #0x0
	add     r1, sp, #0x10
	mov     r2, #0x20
	blx     Function_20d3028
	mov     r3, #0x0
	mov     r1, r3
	add     r2, sp, #0x0
.thumb
branch_201786a: @ 201786a :thumb
	ldrb    r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, r3, r0
	cmp     r1, #0x10
	bcc     branch_201786a
	lsl     r0, r3, #24
	lsr     r3, r0, #24
	mov     r0, #0x3
	tst     r0, r3
	beq     branch_201788a
	mov     r0, #0x3
.thumb
branch_2017882: @ 2017882 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r1, r3
	tst     r1, r0
	bne     branch_2017882
.thumb
branch_201788a: @ 201788a :thumb
	ldr     r0, [pc, #0xc] @ 0x2017898, (=#0x20e5674)
	mov     r1, #0x4
	mov     r2, #0x7b
	bl      Function_2017e74
	add     sp, #0x30
	pop     {r3,pc}
@ 0x2017898

.word 0x20e5674 @ 0x2017898
.thumb
Function_201789c: @ 201789c :thumb
	push    {r3-r5,lr}
	blx     Function_20c2ccc
	blx     Function_20bdbc8
	ldr     r2, [pc, #0x118] @ 0x20179c0, (=#0x4000304)
	ldr     r0, [pc, #0x118] @ 0x20179c4, (=#0xfffffdf1)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	ldr     r0, [pc, #0x118] @ 0x20179c8, (=#0x20e)
	orr     r0, r1
	strh    r0, [r2, #0x0]
	blx     Function_20bdc08
	blx     Function_20c3790
	bl      Function_2017850
	mov     r0, #0xa0
	bl      Function_201cd80
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c3060
	mov     r1, r0
	mov     r0, #0xa0
	bl      Function_201cd88
	ldr     r1, [pc, #0xf0] @ 0x20179cc, (=#0x21bf67c)
	str     r0, [r1, #0x18]
	mov     r0, #0x20
	bl      Function_201cd80
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c3060
	mov     r1, r0
	mov     r0, #0x20
	bl      Function_201cd88
	ldr     r1, [pc, #0xd4] @ 0x20179cc, (=#0x21bf67c)
	str     r0, [r1, #0x1c]
	mov     r0, #0x20
	bl      Function_201cd80
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c3060
	mov     r1, r0
	mov     r0, #0x20
	bl      Function_201cd88
	ldr     r1, [pc, #0xb8] @ 0x20179cc, (=#0x21bf67c)
	str     r0, [r1, #0x20]
	mov     r0, #0x4
	bl      Function_201cd80
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c3060
	mov     r1, r0
	mov     r0, #0x4
	bl      Function_201cd88
	ldr     r1, [pc, #0x9c] @ 0x20179cc, (=#0x21bf67c)
	str     r0, [r1, #0x24]
	blx     Function_20bddbc
	ldr     r2, [pc, #0x98] @ 0x20179d0, (=#0x4001000)
	ldr     r0, [pc, #0x9c] @ 0x20179d4, (=#0xfffeffff)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r2, [pc, #0x80] @ 0x20179c0, (=#0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r1, [pc, #0x8c] @ 0x20179d8, (=#0x2017729)
	mov     r0, #0x1
	blx     Function_20c144c
	mov     r0, #0x1
	blx     Function_20c161c
	mov     r0, #0x1
	lsl     r0, r0, #18
	blx     Function_20c161c
	ldr     r1, [pc, #0x7c] @ 0x20179dc, (=#0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x1
	strh    r0, [r1, #0x0]
	blx     Function_20bdd88
	mov     r0, #0x1
	blx     Function_20c7d68
	bl      Function_2024358
	mov     r0, #0x0
	mov     r1, r0
	blx     Function_20c8530
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x4
	blx     Function_20c3060
	mov     r5, r0
	bne     branch_2017990
	bl      Function_2022974
.thumb
branch_2017990: @ 2017990 :thumb
	mov     r0, r5
	mov     r1, r4
	blx     Function_20c8530
	ldr     r0, [pc, #0x30] @ 0x20179cc, (=#0x21bf67c)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x70]
	str     r1, [r0, #0x2c]
	ldr     r0, [pc, #0x34] @ 0x20179e0, (=#0x21bf6dc)
	strb    r1, [r0, #0x5]
	mov     r0, #0x5
	mov     r1, #0x9
	lsl     r0, r0, #8
	lsl     r1, r1, #10
	blx     Function_20cc8c4
	mov     r0, #0x0
	bl      Function_201d640
	pop     {r3-r5,pc}
@ 0x20179c0

.word 0x4000304 @ 0x20179c0
.word 0xfffffdf1 @ 0x20179c4
.word 0x20e @ 0x20179c8
.word 0x21bf67c @ 0x20179cc
.word 0x4001000 @ 0x20179d0
.word 0xfffeffff @ 0x20179d4
.word 0x2017729 @ 0x20179d8
.word 0x4000208 @ 0x20179dc
.word 0x21bf6dc @ 0x20179e0
.thumb
Function_20179e4: @ 20179e4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x4c] @ 0x2017a34, (=#0x1ff)
	blx     Function_20bea30
	mov     r1, #0x1a
	mov     r2, #0x29
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #14
	blx     Function_20c4bb8
	blx     Function_20bef60
	mov     r1, #0x7
	mov     r2, #0x1
	mov     r0, #0xc0
	lsl     r1, r1, #24
	lsl     r2, r2, #10
	blx     Function_20c4bb8
	mov     r2, #0x1
	ldr     r1, [pc, #0x28] @ 0x2017a38, (=#0x7000400)
	mov     r0, #0xc0
	lsl     r2, r2, #10
	blx     Function_20c4bb8
	mov     r1, #0x5
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #10
	blx     Function_20c4bb8
	mov     r2, #0x1
	ldr     r1, [pc, #0x10] @ 0x2017a3c, (=#0x5000400)
	mov     r0, #0x0
	lsl     r2, r2, #10
	blx     Function_20c4bb8
	pop     {r3,pc}
@ 0x2017a34

.word 0x1ff @ 0x2017a34
.word 0x7000400 @ 0x2017a38
.word 0x5000400 @ 0x2017a3c

.incbin "baserom/arm9.bin", 0x17a40, 0x2017a94 - 0x2017a40


.thumb
Function_2017a94: @ 2017a94 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x48
	mov     r5, r0
	add     r0, sp, #0x0
	mov     r4, r1
	blx     Function_20c7da0
	add     r0, sp, #0x0
	mov     r1, r5
	blx     Function_20c8080
	cmp     r0, #0x0
	beq     branch_2017ac6
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	sub     r2, r1, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2017ac0
	add     r0, sp, #0x0
	blx     Function_20c81d4
.thumb
branch_2017ac0: @ 2017ac0 :thumb
	add     r0, sp, #0x0
	blx     Function_20c80c8
.thumb
branch_2017ac6: @ 2017ac6 :thumb
	add     sp, #0x48
	pop     {r3-r5,pc}
@ 0x2017aca


.incbin "baserom/arm9.bin", 0x17aca, 0x2017af4 - 0x2017aca


.thumb
Function_2017af4: @ 2017af4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x58] @ 0x2017b54, (=#0x21bf67c)
	mov     r2, #0x0
	str     r2, [r0, #0x34]
	str     r2, [r0, #0x38]
	str     r2, [r0, #0x3c]
	str     r2, [r0, #0x40]
	str     r2, [r0, #0x44]
	str     r2, [r0, #0x48]
	str     r2, [r0, #0x4c]
	str     r2, [r0, #0x50]
	mov     r1, #0x4
	str     r1, [r0, #0x54]
	mov     r1, #0x8
	str     r1, [r0, #0x58]
	ldr     r0, [pc, #0x40] @ 0x2017b58, (=#0x21bf6bc)
	strh    r2, [r0, #0x1c]
	strh    r2, [r0, #0x1e]
	strh    r2, [r0, #0x20]
	strh    r2, [r0, #0x22]
	ldr     r0, [pc, #0x3c] @ 0x2017b5c, (=#0x21bf6dc)
	strb    r2, [r0, #0x4]
	blx     Function_20c9cf8
	add     r0, sp, #0x0
	blx     Function_20c9d70
	cmp     r0, #0x1
	add     r0, sp, #0x0
	bne     branch_2017b3a
	blx     Function_20c9e04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2017b3a

.thumb
branch_2017b3a: @ 2017b3a :thumb
	ldr     r1, [pc, #0x24] @ 0x2017b60, (=#0x2ae)
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x24] @ 0x2017b64, (=#0x58c)
	strh    r1, [r0, #0x2]
	ldr     r1, [pc, #0x24] @ 0x2017b68, (=#0xe25)
	strh    r1, [r0, #0x4]
	ldr     r1, [pc, #0x24] @ 0x2017b6c, (=#0x1208)
	strh    r1, [r0, #0x6]
	add     r0, sp, #0x0
	blx     Function_20c9e04
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2017b54

.word 0x21bf67c @ 0x2017b54
.word 0x21bf6bc @ 0x2017b58
.word 0x21bf6dc @ 0x2017b5c
.word 0x2ae @ 0x2017b60
.word 0x58c @ 0x2017b64
.word 0xe25 @ 0x2017b68
.word 0x1208 @ 0x2017b6c
.thumb
Function_2017b70: @ 2017b70 :thumb
	ldr     r1, [pc, #0x4] @ 0x2017b78, (=#0x21bf6dc)
	strb    r0, [r1, #0x6]
	bx      lr
@ 0x2017b76


.incbin "baserom/arm9.bin", 0x17b76, 0x2017b78 - 0x2017b76


.word 0x21bf6dc @ 0x2017b78
.thumb
Function_2017b7c: @ 2017b7c :thumb
	ldr     r1, [pc, #0x8] @ 0x2017b88, (=#0x21bf6dc)
	ldrb    r2, [r1, #0x7]
	orr     r0, r2
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x2017b86


.incbin "baserom/arm9.bin", 0x17b86, 0x2017b88 - 0x2017b86


.word 0x21bf6dc @ 0x2017b88
.thumb
Function_2017b8c: @ 2017b8c :thumb
	ldr     r1, [pc, #0x8] @ 0x2017b98, (=#0x21bf6dc)
	mvn     r0, r0
	ldrb    r2, [r1, #0x7]
	and     r0, r2
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x2017b98

.word 0x21bf6dc @ 0x2017b98
.thumb
Function_2017b9c: @ 2017b9c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0xe4] @ 0x2017c88, (=#0x27fffa8)
	mov     r0, #0x2
	ldrh    r1, [r2, #0x0]
	lsl     r0, r0, #14
	and     r0, r1
	asr     r0, r0, #15
	beq     branch_2017bc2
	ldr     r0, [pc, #0xdc] @ 0x2017c8c, (=#0x21bf67c)
	mov     r1, #0x0
	str     r1, [r0, #0x48]
	str     r1, [r0, #0x44]
	str     r1, [r0, #0x4c]
	ldr     r0, [pc, #0xd4] @ 0x2017c90, (=#0x21bf6bc)
	add     sp, #0x10
	strh    r1, [r0, #0x20]
	strh    r1, [r0, #0x22]
	pop     {r4,pc}
@ 0x2017bc2

.thumb
branch_2017bc2: @ 2017bc2 :thumb
	ldr     r0, [pc, #0xd0] @ 0x2017c94, (=#0x4000130)
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r2, #0x0]
	orr     r1, r0
	ldr     r0, [pc, #0xcc] @ 0x2017c98, (=#0x2fff)
	eor     r1, r0
	and     r0, r1
	ldr     r1, [pc, #0xb8] @ 0x2017c8c, (=#0x21bf67c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	ldr     r2, [r1, #0x38]
	mov     r3, r0
	eor     r3, r2
	and     r3, r0
	str     r3, [r1, #0x3c]
	str     r3, [r1, #0x40]
	cmp     r0, #0x0
	beq     branch_2017bfa
	cmp     r2, r0
	bne     branch_2017bfa
	ldr     r2, [r1, #0x50]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, #0x50]
	bne     branch_2017c00
	str     r0, [r1, #0x40]
	ldr     r2, [r1, #0x54]
	str     r2, [r1, #0x50]
	b       branch_2017c00
@ 0x2017bfa

.thumb
branch_2017bfa: @ 2017bfa :thumb
	ldr     r1, [pc, #0x90] @ 0x2017c8c, (=#0x21bf67c)
	ldr     r2, [r1, #0x58]
	str     r2, [r1, #0x50]
.thumb
branch_2017c00: @ 2017c00 :thumb
	ldr     r1, [pc, #0x88] @ 0x2017c8c, (=#0x21bf67c)
	str     r0, [r1, #0x38]
	ldr     r2, [r1, #0x3c]
	str     r2, [r1, #0x48]
	str     r0, [r1, #0x44]
	ldr     r0, [r1, #0x40]
	str     r0, [r1, #0x4c]
	bl      Function_2017ca0
	ldr     r0, [pc, #0x88] @ 0x2017c9c, (=#0x21bf6dc)
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_2017c2c
	add     r4, sp, #0x8
.thumb
branch_2017c1c: @ 2017c1c :thumb
	blx     Function_20c9f2c
	mov     r0, r4
	blx     Function_20c9fc0
	cmp     r0, #0x0
	bne     branch_2017c1c
	b       branch_2017c32
@ 0x2017c2c

.thumb
branch_2017c2c: @ 2017c2c :thumb
	add     r0, sp, #0x8
	blx     Function_20ca1a8
.thumb
branch_2017c32: @ 2017c32 :thumb
	add     r0, sp, #0x0
	add     r1, sp, #0x8
	blx     Function_20ca4e8
	add     r1, sp, #0x0
	ldrh    r3, [r1, #0x6]
	cmp     r3, #0x0
	bne     branch_2017c4e
	ldrh    r2, [r1, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2017c90, (=#0x21bf6bc)
	strh    r2, [r0, #0x1c]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r0, #0x1e]
	b       branch_2017c72
@ 0x2017c4e

.thumb
branch_2017c4e: @ 2017c4e :thumb
	ldr     r0, [pc, #0x40] @ 0x2017c90, (=#0x21bf6bc)
	ldrh    r2, [r0, #0x22]
	cmp     r2, #0x0
	beq     branch_2017c6e
	cmp     r3, #0x1
	beq     branch_2017c62
	cmp     r3, #0x2
	beq     branch_2017c68
	cmp     r3, #0x3
	b       branch_2017c72
@ 0x2017c62

.thumb
branch_2017c62: @ 2017c62 :thumb
	ldrh    r1, [r1, #0x2]
	strh    r1, [r0, #0x1e]
	b       branch_2017c72
@ 0x2017c68

.thumb
branch_2017c68: @ 2017c68 :thumb
	ldrh    r1, [r1, #0x0]
	strh    r1, [r0, #0x1c]
	b       branch_2017c72
@ 0x2017c6e

.thumb
branch_2017c6e: @ 2017c6e :thumb
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
.thumb
branch_2017c72: @ 2017c72 :thumb
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2017c90, (=#0x21bf6bc)
	ldrh    r1, [r0, #0x22]
	eor     r1, r2
	and     r1, r2
	strh    r1, [r0, #0x20]
	strh    r2, [r0, #0x22]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2017c86


.incbin "baserom/arm9.bin", 0x17c86, 0x2017c88 - 0x2017c86


.word 0x27fffa8 @ 0x2017c88
.word 0x21bf67c @ 0x2017c8c
.word 0x21bf6bc @ 0x2017c90
.word 0x4000130 @ 0x2017c94
.word 0x2fff @ 0x2017c98
.word 0x21bf6dc @ 0x2017c9c
.thumb
Function_2017ca0: @ 2017ca0 :thumb
	ldr     r0, [pc, #0x124] @ 0x2017dc8, (=#0x21bf67c)
	ldr     r1, [r0, #0x34]
	cmp     r1, #0x3
	bls     branch_2017caa
	b       branch_2017dc4
@ 0x2017caa

.thumb
branch_2017caa: @ 2017caa :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #4
	lsl     r6, r0, #0
	lsl     r4, r7, #0
	lsl     r2, r0, #3
	ldr     r2, [r0, #0x48]
	mov     r1, #0x8
	mov     r3, r2
	tst     r3, r1
	beq     branch_2017cce
	lsl     r1, r1, #7
	orr     r1, r2
	str     r1, [r0, #0x48]
.thumb
branch_2017cce: @ 2017cce :thumb
	ldr     r1, [pc, #0xf8] @ 0x2017dc8, (=#0x21bf67c)
	mov     r0, #0x8
	ldr     r2, [r1, #0x44]
	mov     r3, r2
	tst     r3, r0
	beq     branch_2017ce0
	lsl     r0, r0, #7
	orr     r0, r2
	str     r0, [r1, #0x44]
.thumb
branch_2017ce0: @ 2017ce0 :thumb
	ldr     r1, [pc, #0xe4] @ 0x2017dc8, (=#0x21bf67c)
	mov     r0, #0x8
	ldr     r2, [r1, #0x4c]
	mov     r3, r2
	tst     r3, r0
	beq     branch_2017dc4
	lsl     r0, r0, #7
	orr     r0, r2
	str     r0, [r1, #0x4c]
	bx      lr
@ 0x2017cf4


.incbin "baserom/arm9.bin", 0x17cf4, 0x2017dc4 - 0x2017cf4


.thumb
branch_2017dc4: @ 2017dc4 :thumb
	bx      lr
@ 0x2017dc6


.incbin "baserom/arm9.bin", 0x17dc6, 0x2017dc8 - 0x2017dc6


.word 0x21bf67c @ 0x2017dc8

.incbin "baserom/arm9.bin", 0x17dcc, 0x2017dd4 - 0x2017dcc


.thumb
Function_2017dd4: @ 2017dd4 :thumb
	ldr     r2, [pc, #0x4] @ 0x2017ddc, (=#0x21bf67c)
	str     r0, [r2, #0x54]
	str     r1, [r2, #0x58]
	bx      lr
@ 0x2017ddc

.word 0x21bf67c @ 0x2017ddc

.incbin "baserom/arm9.bin", 0x17de0, 0x2017e54 - 0x2017de0


.thumb
Function_2017e54: @ 2017e54 :thumb
	ldr     r0, [pc, #0x14] @ 0x2017e6c, (=#0x21bf67c)
	ldr     r0, [r0, #0x70]
	cmp     r0, #0x0
	beq     branch_2017e68
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2017e70, (=#0x2f93a1bc)
	cmp     r1, r0
	bne     branch_2017e68
	mov     r0, #0x1
	bx      lr
@ 0x2017e68

.thumb
branch_2017e68: @ 2017e68 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2017e6c

.word 0x21bf67c @ 0x2017e6c
.word 0x2f93a1bc @ 0x2017e70
.thumb
Function_2017e74: @ 2017e74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x18
	mov     r6, r2
	str     r0, [sp, #0x4]
	cmp     r6, r0
	bcs     branch_2017e8c
	mov     r6, r0
.thumb
branch_2017e8c: @ 2017e8c :thumb
	cmp     r3, #0x0
	beq     branch_2017eaa
	mov     r0, #0x3
	tst     r0, r3
	beq     branch_2017ea0
	mov     r0, #0x3
.thumb
branch_2017e98: @ 2017e98 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r1, r3
	tst     r1, r0
	bne     branch_2017e98
.thumb
branch_2017ea0: @ 2017ea0 :thumb
	mov     r0, #0x0
	mov     r1, r3
	mov     r2, #0x4
	blx     Function_20c3060
.thumb
branch_2017eaa: @ 2017eaa :thumb
	ldr     r1, [sp, #0x4]
	lsl     r7, r6, #1
	lsl     r2, r1, #1
	add     r1, r1, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #2
	add     r1, r7, r1
	mov     r0, #0x0
	add     r1, r6, r1
	mov     r2, #0x4
	blx     Function_20c3060
	ldr     r1, [pc, #0xd8] @ 0x2017f9c, (=#0x21bfaf0)
	str     r0, [r1, #0x0]
	ldr     r1, [sp, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0xcc] @ 0x2017f9c, (=#0x21bfaf0)
	str     r1, [r0, #0x4]
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldr     r1, [pc, #0xc0] @ 0x2017f9c, (=#0x21bfaf0)
	str     r2, [r1, #0x8]
	add     r1, r2, r0
	ldr     r0, [pc, #0xbc] @ 0x2017f9c, (=#0x21bfaf0)
	str     r1, [r0, #0xc]
	add     r1, r1, r7
	str     r1, [r0, #0x10]
	strh    r6, [r0, #0x14]
	strh    r4, [r0, #0x16]
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [pc, #0xa8] @ 0x2017f9c, (=#0x21bfaf0)
	cmp     r4, #0x0
	strh    r1, [r0, #0x1a]
	strh    r1, [r0, #0x18]
	bls     branch_2017f4c
	str     r7, [sp, #0x0]
.thumb
branch_2017efe: @ 2017efe :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_2017f08
	cmp     r0, #0x2
	beq     branch_2017f14
.thumb
branch_2017f08: @ 2017f08 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x0
	mov     r2, #0x4
	blx     Function_20c3060
	b       branch_2017f1e
@ 0x2017f14

.thumb
branch_2017f14: @ 2017f14 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x2
	mov     r2, #0x4
	blx     Function_20c30cc
.thumb
branch_2017f1e: @ 2017f1e :thumb
	cmp     r0, #0x0
	beq     branch_2017f3a
	ldr     r1, [r5, #0x0]
	mov     r2, #0x0
	blx     Function_20a5404
	ldr     r1, [pc, #0x70] @ 0x2017f9c, (=#0x21bfaf0)
	ldr     r2, [r1, #0x0]
	ldr     r1, [sp, #0x0]
	str     r0, [r2, r1]
	ldr     r0, [pc, #0x68] @ 0x2017f9c, (=#0x21bfaf0)
	ldr     r0, [r0, #0x10]
	strb    r7, [r0, r7]
	b       branch_2017f3e
@ 0x2017f3a

.thumb
branch_2017f3a: @ 2017f3a :thumb
	bl      Function_2022974
.thumb
branch_2017f3e: @ 2017f3e :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r7, r4
	bcc     branch_2017efe
.thumb
branch_2017f4c: @ 2017f4c :thumb
	ldr     r0, [sp, #0x4]
	add     r1, r0, #0x1
	cmp     r4, r1
	bcs     branch_2017f6c
	ldr     r3, [pc, #0x44] @ 0x2017f9c, (=#0x21bfaf0)
	lsl     r2, r4, #2
	mov     r0, #0x0
.thumb
branch_2017f5a: @ 2017f5a :thumb
	ldr     r5, [r3, #0x0]
	str     r0, [r5, r2]
	ldrh    r7, [r3, #0x1a]
	ldr     r5, [r3, #0x10]
	.hword  0x1d12 @ add r2, r2, #0x4
	strb    r7, [r5, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r1
	bcc     branch_2017f5a
.thumb
branch_2017f6c: @ 2017f6c :thumb
	cmp     r4, r6
	bcs     branch_2017f7e
	ldr     r0, [pc, #0x28] @ 0x2017f9c, (=#0x21bfaf0)
.thumb
branch_2017f72: @ 2017f72 :thumb
	ldrh    r2, [r0, #0x1a]
	ldr     r1, [r0, #0x10]
	strb    r2, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	bcc     branch_2017f72
.thumb
branch_2017f7e: @ 2017f7e :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_2017f96
	ldr     r0, [pc, #0x14] @ 0x2017f9c, (=#0x21bfaf0)
	mov     r3, r4
	mov     r2, r4
.thumb
branch_2017f8a: @ 2017f8a :thumb
	ldr     r1, [r0, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r1, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r4, r6
	bcc     branch_2017f8a
.thumb
branch_2017f96: @ 2017f96 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2017f9a


.incbin "baserom/arm9.bin", 0x17f9a, 0x2017f9c - 0x2017f9a


.word 0x21bfaf0 @ 0x2017f9c
.thumb
Function_2017fa0: @ 2017fa0 :thumb
	ldr     r1, [pc, #0x20] @ 0x2017fc4, (=#0x21bfaf0)
	ldrh    r0, [r1, #0x16]
	ldrh    r3, [r1, #0x18]
	cmp     r0, r3
	bge     branch_2017fbe
	ldr     r2, [r1, #0x0]
	lsl     r1, r0, #2
	add     r2, r2, r1
.thumb
branch_2017fb0: @ 2017fb0 :thumb
	ldr     r1, [r2, #0x0]
	cmp     r1, #0x0
	beq     branch_2017fc2
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r0, r3
	blt     branch_2017fb0
.thumb
branch_2017fbe: @ 2017fbe :thumb
	mov     r0, #0x0
	mvn     r0, r0
.thumb
branch_2017fc2: @ 2017fc2 :thumb
	bx      lr
@ 0x2017fc4

.word 0x21bfaf0 @ 0x2017fc4
.thumb
Function_2017fc8: @ 2017fc8 :thumb
	push    {r3,lr}
	mov     r3, #0x4
	bl      Function_2017fe0
	pop     {r3,pc}
@ 0x2017fd2


.incbin "baserom/arm9.bin", 0x17fd2, 0x2017fd4 - 0x2017fd2


.thumb
Function_2017fd4: @ 2017fd4 :thumb
	push    {r3,lr}
	mov     r3, #0x3
	mvn     r3, r3
	bl      Function_2017fe0
	pop     {r3,pc}
@ 0x2017fe0

.thumb
Function_2017fe0: @ 2017fe0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	mov     r7, r3
	blx     Function_20c3dfc
	cmp     r0, #0x12
	bne     branch_2017ff8
	bl      Function_2022974
.thumb
branch_2017ff8: @ 2017ff8 :thumb
	ldr     r1, [pc, #0x7c] @ 0x2018078, (=#0x21bfaf0)
	ldr     r0, [r1, #0x10]
	ldrh    r3, [r1, #0x1a]
	ldrb    r2, [r0, r5]
	cmp     r3, r2
	bne     branch_201806e
	ldrb    r0, [r0, r4]
	ldr     r1, [r1, #0x0]
	lsl     r0, r0, #2
	ldr     r6, [r1, r0]
	cmp     r6, #0x0
	beq     branch_2018068
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, r7
	blx     Function_20a5448
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2018062
	bl      Function_2017fa0
	mov     r7, r0
	bmi     branch_201805c
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	lsl     r4, r7, #2
	blx     Function_20a5404
	ldr     r1, [pc, #0x40] @ 0x2018078, (=#0x21bfaf0)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, r4]
	ldr     r0, [r1, #0x0]
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	beq     branch_2018056
	ldr     r0, [r1, #0x4]
	str     r6, [r0, r4]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r1, #0x8]
	add     sp, #0x8
	str     r0, [r2, r4]
	ldr     r0, [r1, #0x10]
	strb    r7, [r0, r5]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2018056

.thumb
branch_2018056: @ 2018056 :thumb
	bl      Function_2022974
	b       branch_2018072
@ 0x201805c

.thumb
branch_201805c: @ 201805c :thumb
	bl      Function_2022974
	b       branch_2018072
@ 0x2018062

.thumb
branch_2018062: @ 2018062 :thumb
	bl      Function_2022974
	b       branch_2018072
@ 0x2018068

.thumb
branch_2018068: @ 2018068 :thumb
	bl      Function_2022974
	b       branch_2018072
@ 0x201806e

.thumb
branch_201806e: @ 201806e :thumb
	bl      Function_2022974
.thumb
branch_2018072: @ 2018072 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2018078

.word 0x21bfaf0 @ 0x2018078
.thumb
Function_201807c: @ 201807c :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_20c3dfc
	cmp     r0, #0x12
	bne     branch_201808c
	bl      Function_2022974
.thumb
branch_201808c: @ 201808c :thumb
	ldr     r0, [pc, #0x5c] @ 0x20180ec, (=#0x21bfaf0)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_20180ea
	blx     Function_20a543c
	ldr     r1, [pc, #0x48] @ 0x20180ec, (=#0x21bfaf0)
	ldr     r0, [r1, #0x10]
	ldrb    r0, [r0, r4]
	lsl     r2, r0, #2
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x8]
	ldr     r0, [r0, r2]
	ldr     r1, [r1, r2]
	cmp     r0, #0x0
	beq     branch_20180be
	cmp     r1, #0x0
	beq     branch_20180be
	blx     Function_20a55d8
	b       branch_20180c2
@ 0x20180be

.thumb
branch_20180be: @ 20180be :thumb
	bl      Function_2022974
.thumb
branch_20180c2: @ 20180c2 :thumb
	ldr     r1, [pc, #0x28] @ 0x20180ec, (=#0x21bfaf0)
	mov     r0, #0x0
	ldr     r2, [r1, #0x10]
	ldr     r3, [r1, #0x0]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldr     r2, [r1, #0x10]
	ldr     r3, [r1, #0x4]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldr     r2, [r1, #0x10]
	ldr     r3, [r1, #0x8]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldrh    r2, [r1, #0x1a]
	ldr     r0, [r1, #0x10]
	strb    r2, [r0, r4]
.thumb
branch_20180ea: @ 20180ea :thumb
	pop     {r4,pc}
@ 0x20180ec

.word 0x21bfaf0 @ 0x20180ec
.thumb
Function_20180f0: @ 20180f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r5, #0x0
	bne     branch_2018102
	bl      Function_2022974
.thumb
branch_2018102: @ 2018102 :thumb
	blx     Function_20c3d98
	add     r4, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	blx     Function_20a5448
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	blx     Function_20c3dac
	cmp     r4, #0x0
	beq     branch_2018130
	ldr     r1, [r4, #0xc]
	mov     r0, #0xff
	bic     r1, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	orr     r0, r1
	str     r0, [r4, #0xc]
	add     r4, #0x10
.thumb
branch_2018130: @ 2018130 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2018134

.thumb
Function_2018134: @ 2018134 :thumb
	push    {r3,lr}
	bl      Function_2036780
	cmp     r0, #0x0
	beq     branch_2018142
	bl      Function_209b49c
.thumb
branch_2018142: @ 2018142 :thumb
	pop     {r3,pc}
@ 0x2018144

.thumb
Function_2018144: @ 2018144 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x2018180, (=#0x21bfaf0)
	mov     r4, #0x0
	ldrh    r2, [r0, #0x14]
	cmp     r5, r2
	bcs     branch_2018166
	ldr     r2, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	mov     r3, r5
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	mov     r2, #0x4
	bl      Function_20180f0
	mov     r4, r0
.thumb
branch_2018166: @ 2018166 :thumb
	cmp     r4, #0x0
	beq     branch_2018178
	ldr     r0, [pc, #0x14] @ 0x2018180, (=#0x21bfaf0)
	lsl     r1, r5, #1
	ldr     r2, [r0, #0xc]
	ldrh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	b       branch_201817c
@ 0x2018178

.thumb
branch_2018178: @ 2018178 :thumb
	bl      Function_2018134
.thumb
branch_201817c: @ 201817c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2018180

.word 0x21bfaf0 @ 0x2018180
.thumb
Function_2018184: @ 2018184 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x38] @ 0x20181c0, (=#0x21bfaf0)
	mov     r5, r0
	ldrh    r0, [r2, #0x14]
	mov     r4, #0x0
	cmp     r5, r0
	bcs     branch_20181a6
	ldr     r0, [r2, #0x0]
	ldr     r2, [r2, #0x10]
	mov     r3, r5
	ldrb    r2, [r2, r5]
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	.hword  0x1f22 @ sub r2, r4, #0x4
	bl      Function_20180f0
	mov     r4, r0
.thumb
branch_20181a6: @ 20181a6 :thumb
	cmp     r4, #0x0
	beq     branch_20181b8
	ldr     r0, [pc, #0x14] @ 0x20181c0, (=#0x21bfaf0)
	lsl     r1, r5, #1
	ldr     r2, [r0, #0xc]
	ldrh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	b       branch_20181bc
@ 0x20181b8

.thumb
branch_20181b8: @ 20181b8 :thumb
	bl      Function_2018134
.thumb
branch_20181bc: @ 20181bc :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20181c0

.word 0x21bfaf0 @ 0x20181c0
.thumb
Function_20181c4: @ 20181c4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	.hword  0x1f30 @ sub r0, r6, #0x4
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [pc, #0x60] @ 0x2018234, (=#0x21bfaf0)
	ldrh    r1, [r0, #0x14]
	cmp     r4, r1
	bcs     branch_201822c
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #2
	ldr     r7, [r1, r0]
	cmp     r7, #0x0
	bne     branch_20181ea
	bl      Function_2022974
.thumb
branch_20181ea: @ 20181ea :thumb
	ldr     r0, [pc, #0x48] @ 0x2018234, (=#0x21bfaf0)
	lsl     r5, r4, #1
	ldr     r0, [r0, #0xc]
	ldrh    r0, [r0, r5]
	cmp     r0, #0x0
	bne     branch_20181fc
	mov     r0, r4
	bl      Function_201833c
.thumb
branch_20181fc: @ 20181fc :thumb
	ldr     r0, [pc, #0x34] @ 0x2018234, (=#0x21bfaf0)
	ldr     r0, [r0, #0xc]
	ldrh    r0, [r0, r5]
	cmp     r0, #0x0
	bne     branch_201820a
	bl      Function_2022974
.thumb
branch_201820a: @ 201820a :thumb
	ldr     r0, [pc, #0x28] @ 0x2018234, (=#0x21bfaf0)
	ldr     r1, [r0, #0xc]
	ldrh    r0, [r1, r5]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, r5]
	blx     Function_20c3d98
	sub     r6, #0x10
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	blx     Function_20a55d8
	mov     r0, r4
	blx     Function_20c3dac
	pop     {r3-r7,pc}
@ 0x201822c

.thumb
branch_201822c: @ 201822c :thumb
	bl      Function_2022974
	pop     {r3-r7,pc}
@ 0x2018232


.incbin "baserom/arm9.bin", 0x18232, 0x2018234 - 0x2018232


.word 0x21bfaf0 @ 0x2018234
.thumb
Function_2018238: @ 2018238 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	blx     Function_20c3dfc
	cmp     r0, #0x12
	bne     branch_201824a
	bl      Function_2022974
.thumb
branch_201824a: @ 201824a :thumb
	ldr     r0, [pc, #0x54] @ 0x20182a0, (=#0x21bfaf0)
	ldrh    r1, [r0, #0x14]
	cmp     r5, r1
	bcs     branch_201829a
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #2
	ldr     r6, [r1, r0]
	cmp     r6, #0x0
	bne     branch_2018264
	bl      Function_2022974
.thumb
branch_2018264: @ 2018264 :thumb
	.hword  0x1f20 @ sub r0, r4, #0x4
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, r5
	beq     branch_2018274
	bl      Function_2022974
.thumb
branch_2018274: @ 2018274 :thumb
	sub     r4, #0x10
	mov     r0, r6
	mov     r1, r4
	blx     Function_20a55d8
	ldr     r0, [pc, #0x20] @ 0x20182a0, (=#0x21bfaf0)
	lsl     r4, r5, #1
	ldr     r0, [r0, #0xc]
	ldrh    r0, [r0, r4]
	cmp     r0, #0x0
	bne     branch_201828e
	bl      Function_2022974
.thumb
branch_201828e: @ 201828e :thumb
	ldr     r0, [pc, #0x10] @ 0x20182a0, (=#0x21bfaf0)
	ldr     r1, [r0, #0xc]
	ldrh    r0, [r1, r4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, r4]
	pop     {r4-r6,pc}
@ 0x201829a

.thumb
branch_201829a: @ 201829a :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x20182a0

.word 0x21bfaf0 @ 0x20182a0
.thumb
Function_20182a4: @ 20182a4 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x20] @ 0x20182c8, (=#0x21bfaf0)
	ldrh    r2, [r1, #0x14]
	cmp     r0, r2
	bcs     branch_20182be
	ldr     r2, [r1, #0x0]
	ldr     r1, [r1, #0x10]
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	blx     Function_20a5614
	pop     {r3,pc}
@ 0x20182be

.thumb
branch_20182be: @ 20182be :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20182c6


.incbin "baserom/arm9.bin", 0x182c6, 0x20182c8 - 0x20182c6


.word 0x21bfaf0 @ 0x20182c8

.incbin "baserom/arm9.bin", 0x182cc, 0x201833c - 0x20182cc


.thumb
Function_201833c: @ 201833c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2018340

.thumb
Function_2018340: @ 2018340 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5a
	lsl     r1, r1, #2
	mov     r5, r0
	bl      Function_2018144
	mov     r2, #0x5a
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	strh    r0, [r4, #0x6]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2018364

.thumb
Function_2018364: @ 2018364 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2018368

.thumb
Function_2018368: @ 2018368 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0xc]
	blx     Function_20bde40
	ldr     r0, [r4, #0x8]
	blx     Function_20bdea8
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x18] @ 0x201839c, (=#0xc7ffffff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r1, [r2, #0x0]
	asr     r0, r0, #3
	and     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_201ff00
	bl      Function_201ff68
	pop     {r4,pc}
@ 0x201839a


.incbin "baserom/arm9.bin", 0x1839a, 0x201839c - 0x201839a


.word 0xc7ffffff @ 0x201839c

.incbin "baserom/arm9.bin", 0x183a0, 0x20183c4 - 0x20183a0


.thumb
Function_20183c4: @ 20183c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r4, r2
	str     r0, [sp, #0x0]
	ldrb    r0, [r4, #0x10]
	ldr     r1, [sp, #0x8]
	bl      Function_2018f80
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x7
	bls     branch_20183e2
	b       branch_2018800
@ 0x20183e2

.thumb
branch_20183e2: @ 20183e2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r6, r4, #1
	lsl     r6, r7, #2
	lsl     r0, r4, #5
	lsl     r2, r0, #8
	lsl     r2, r3, #9
	lsl     r2, r6, #10
	lsl     r0, r6, #13
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldrb    r3, [r4, #0x14]
	ldrb    r1, [r4, #0x12]
	ldrb    r0, [r4, #0x11]
	ldrb    r2, [r4, #0x13]
	lsl     r6, r3, #13
	lsl     r0, r0, #7
	lsl     r3, r2, #2
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x32c] @ 0x2018744, (=#0x4000008)
	lsl     r7, r1, #8
	ldrh    r1, [r2, #0x0]
	mov     r0, #0x43
	and     r0, r1
	lsl     r1, r5, #14
	orr     r1, r0
	ldr     r0, [sp, #0xc]
	orr     r0, r1
	orr     r0, r7
	orr     r0, r3
	orr     r0, r6
	strh    r0, [r2, #0x0]
	ldrh    r1, [r2, #0x0]
	mov     r0, #0x3
	bic     r1, r0
	ldrb    r0, [r4, #0x15]
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_201844c
	ldrh    r1, [r2, #0x0]
	mov     r0, #0x40
	orr     r0, r1
	strh    r0, [r2, #0x0]
	b       branch_2018800
@ 0x201844c

.thumb
branch_201844c: @ 201844c :thumb
	ldrh    r1, [r2, #0x0]
	mov     r0, #0x40
	bic     r1, r0
	strh    r1, [r2, #0x0]
	b       branch_2018800
@ 0x2018456


.incbin "baserom/arm9.bin", 0x18456, 0x2018744 - 0x2018456


.word 0x4000008 @ 0x2018744

.incbin "baserom/arm9.bin", 0x18748, 0x2018800 - 0x2018748


.thumb
branch_2018800: @ 2018800 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x2c
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mul     r5, r1
	add     r2, r0, r5
	mov     r3, #0x0
	mov     r0, #0x1
	strh    r3, [r2, #0x20]
	lsl     r0, r0, #12
	str     r0, [r2, #0x24]
	str     r0, [r2, #0x28]
	str     r3, [r2, #0x2c]
	str     r3, [r2, #0x30]
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2018848
	ldr     r0, [sp, #0x0]
	ldr     r6, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	add     r6, #0x8
	bl      Function_2018144
	str     r0, [r6, r5]
	ldr     r1, [r6, r5]
	ldr     r2, [r4, #0x8]
	mov     r0, #0x0
	blx     Function_20c4af0
	ldr     r0, [sp, #0x0]
	ldr     r2, [r4, #0x8]
	add     r1, r0, r5
	str     r2, [r1, #0xc]
	ldr     r0, [r4, #0xc]
	str     r0, [r1, #0x10]
	b       branch_201884e
@ 0x2018848

.thumb
branch_2018848: @ 2018848 :thumb
	str     r3, [r2, #0x8]
	str     r3, [r2, #0xc]
	str     r3, [r2, #0x10]
.thumb
branch_201884e: @ 201884e :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x10]
	add     r0, r0, r5
	strb    r1, [r0, #0x1d]
	ldr     r1, [sp, #0x8]
	strb    r1, [r0, #0x1c]
	ldrb    r1, [r4, #0x11]
	strb    r1, [r0, #0x1e]
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x0
	bne     branch_2018870
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x0
	bne     branch_2018870
	mov     r1, #0x20
	strb    r1, [r0, #0x1f]
	b       branch_2018878
@ 0x2018870

.thumb
branch_2018870: @ 2018870 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x40
	add     r0, r0, r5
	strb    r1, [r0, #0x1f]
.thumb
branch_2018878: @ 2018878 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r3, [r4, #0x0]
	mov     r2, #0x0
	bl      Function_2019184
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r3, [r4, #0x4]
	mov     r2, #0x3
	bl      Function_2019184
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2018894


.incbin "baserom/arm9.bin", 0x18894, 0x2018f80 - 0x2018894


.thumb
Function_2018f80: @ 2018f80 :thumb
	cmp     r1, #0x0
	beq     branch_2018f8e
	cmp     r1, #0x1
	beq     branch_2018fae
	cmp     r1, #0x2
	beq     branch_2018fce
	b       branch_2018fee
@ 0x2018f8e

.thumb
branch_2018f8e: @ 2018f8e :thumb
	cmp     r0, #0x1
	bne     branch_2018f96
	mov     r0, #0x0
	bx      lr
@ 0x2018f96

.thumb
branch_2018f96: @ 2018f96 :thumb
	cmp     r0, #0x2
	bne     branch_2018f9e
	mov     r0, #0x2
	bx      lr
@ 0x2018f9e

.thumb
branch_2018f9e: @ 2018f9e :thumb
	cmp     r0, #0x3
	bne     branch_2018fa6
	mov     r0, #0x1
	bx      lr
@ 0x2018fa6

.thumb
branch_2018fa6: @ 2018fa6 :thumb
	cmp     r0, #0x4
	bne     branch_2018fee
	mov     r0, #0x3
	bx      lr
@ 0x2018fae

.thumb
branch_2018fae: @ 2018fae :thumb
	cmp     r0, #0x0
	bne     branch_2018fb6
	mov     r0, #0x0
	bx      lr
@ 0x2018fb6

.thumb
branch_2018fb6: @ 2018fb6 :thumb
	cmp     r0, #0x1
	bne     branch_2018fbe
	mov     r0, #0x1
	bx      lr
@ 0x2018fbe

.thumb
branch_2018fbe: @ 2018fbe :thumb
	cmp     r0, #0x4
	bne     branch_2018fc6
	mov     r0, #0x2
	bx      lr
@ 0x2018fc6

.thumb
branch_2018fc6: @ 2018fc6 :thumb
	cmp     r0, #0x5
	bne     branch_2018fee
	mov     r0, #0x3
	bx      lr
@ 0x2018fce

.thumb
branch_2018fce: @ 2018fce :thumb
	cmp     r0, #0x0
	bne     branch_2018fd6
	mov     r0, #0x0
	bx      lr
@ 0x2018fd6

.thumb
branch_2018fd6: @ 2018fd6 :thumb
	cmp     r0, #0x1
	bne     branch_2018fde
	mov     r0, #0x1
	bx      lr
@ 0x2018fde

.thumb
branch_2018fde: @ 2018fde :thumb
	cmp     r0, #0x4
	bne     branch_2018fe6
	mov     r0, #0x2
	bx      lr
@ 0x2018fe6

.thumb
branch_2018fe6: @ 2018fe6 :thumb
	cmp     r0, #0x5
	bne     branch_2018fee
	mov     r0, #0x3
	bx      lr
@ 0x2018fee

.thumb
branch_2018fee: @ 2018fee :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2018ff2


.incbin "baserom/arm9.bin", 0x18ff2, 0x2018ff4 - 0x2018ff2


.thumb
Function_2018ff4: @ 2018ff4 :thumb
	cmp     r0, #0x5
	bhi     branch_2019042
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r3, #0
	lsl     r4, r4, #0
	lsl     r6, r5, #0
	lsl     r6, r6, #0
	mov     r0, #0x10
	strb    r0, [r1, #0x0]
	strb    r0, [r2, #0x0]
	bx      lr
@ 0x2019018


.incbin "baserom/arm9.bin", 0x19018, 0x2019042 - 0x2019018


.thumb
branch_2019042: @ 2019042 :thumb
	bx      lr
@ 0x2019044

.thumb
Function_2019044: @ 2019044 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r2, #0x2c
	mov     r5, r1
	mul     r5, r2
	add     r4, #0x8
	ldr     r0, [r4, r5]
	cmp     r0, #0x0
	beq     branch_201905e
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, r5]
.thumb
branch_201905e: @ 201905e :thumb
	pop     {r3-r5,pc}
@ 0x2019060


.incbin "baserom/arm9.bin", 0x19060, 0x2019120 - 0x2019060


.thumb
Function_2019120: @ 2019120 :thumb
	push    {r3,lr}
	cmp     r0, #0x7
	bhi     branch_2019180
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	lsl     r6, r4, #0
	lsl     r6, r5, #0
	lsl     r6, r6, #0
	lsl     r6, r7, #0
	lsl     r6, r0, #1
	mov     r0, #0x1
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x201914a


.incbin "baserom/arm9.bin", 0x1914a, 0x2019180 - 0x201914a


.thumb
branch_2019180: @ 2019180 :thumb
	pop     {r3,pc}
@ 0x2019182


.incbin "baserom/arm9.bin", 0x19182, 0x2019184 - 0x2019182


.thumb
Function_2019184: @ 2019184 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r0, #0x2c
	mov     r6, r5
	mul     r6, r0
	mov     r0, r4
	add     r0, #0x8
	mov     r1, r2
	mov     r2, r3
	add     r0, r0, r6
	bl      Function_2019304
	add     r0, r4, r6
	ldr     r1, [r0, #0x14]
	ldr     r0, [r0, #0x18]
	cmp     r5, #0x7
	bls     branch_20191aa
	b       branch_20192c0
@ 0x20191aa

.thumb
branch_20191aa: @ 20191aa :thumb
	add     r2, r5, r5
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r1, #0
	lsl     r4, r4, #0
	lsl     r2, r7, #0
	lsl     r4, r4, #1
	lsl     r6, r1, #2
	lsl     r4, r4, #2
	lsl     r2, r7, #2
	lsl     r2, r4, #3
	ldr     r2, [pc, #0xfc] @ 0x20192c4, (=#0x1ff)
	mov     r3, r1
	lsl     r1, r0, #16
	lsl     r0, r2, #16
	and     r3, r2
	and     r0, r1
	mov     r1, r3
	orr     r1, r0
	ldr     r0, [pc, #0xf0] @ 0x20192c8, (=#0x4000010)
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x20191dc


.incbin "baserom/arm9.bin", 0x191dc, 0x20192c0 - 0x20191dc


.thumb
branch_20192c0: @ 20192c0 :thumb
	pop     {r4-r6,pc}
@ 0x20192c2


.incbin "baserom/arm9.bin", 0x192c2, 0x20192c4 - 0x20192c2


.word 0x1ff @ 0x20192c4
.word 0x4000010 @ 0x20192c8

.incbin "baserom/arm9.bin", 0x192cc, 0x2019304 - 0x20192cc


.thumb
Function_2019304: @ 2019304 :thumb
	cmp     r1, #0x5
	bhi     branch_2019346
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	lsl     r2, r4, #0
	lsl     r2, r5, #0
	str     r2, [r0, #0xc]
	bx      lr
@ 0x2019324


.incbin "baserom/arm9.bin", 0x19324, 0x2019346 - 0x2019324


.thumb
branch_2019346: @ 2019346 :thumb
	bx      lr
@ 0x2019348


.incbin "baserom/arm9.bin", 0x19348, 0x2019410 - 0x2019348


.thumb
Function_2019410: @ 2019410 :thumb
	push    {r3-r5,lr}
	cmp     r2, #0x0
	bne     branch_201941c
	blx     Function_20c4f48
	pop     {r3-r5,pc}
@ 0x201941c

.thumb
branch_201941c: @ 201941c :thumb
	mov     r4, #0x3
	mov     r3, r0
	tst     r3, r4
	bne     branch_2019442
	mov     r3, r1
	tst     r3, r4
	bne     branch_2019442
	lsl     r3, r2, #16
	lsr     r3, r3, #16
	lsr     r4, r3, #31
	lsl     r5, r3, #30
	sub     r5, r5, r4
	mov     r3, #0x1e
	ror     r5, r3
	add     r3, r4, r5
	bne     branch_2019442
	blx     Function_20c4b68
	pop     {r3-r5,pc}
@ 0x2019442

.thumb
branch_2019442: @ 2019442 :thumb
	blx     Function_20c4b18
	pop     {r3-r5,pc}
@ 0x2019448

.thumb
Function_2019448: @ 2019448 :thumb
	push    {r3,lr}
	mov     r2, #0x2c
	mul     r2, r1
	add     r3, r0, r2
	ldr     r2, [r3, #0x10]
	str     r2, [sp, #0x0]
	ldr     r2, [r3, #0x8]
	ldr     r3, [r3, #0xc]
	bl      Function_2019460
	pop     {r3,pc}
@ 0x201945e


.incbin "baserom/arm9.bin", 0x1945e, 0x2019460 - 0x201945e


.thumb
Function_2019460: @ 2019460 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	str     r3, [sp, #0x0]
	cmp     r3, #0x0
	bne     branch_20194ce
	mov     r0, #0x2c
	mov     r7, r4
	mul     r7, r0
	add     r0, r5, r7
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_201949e
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	mov     r2, r3
	bl      Function_2019410
	add     r3, r5, r7
	ldr     r2, [r3, #0x10]
	ldr     r1, [sp, #0x4]
	ldr     r3, [r3, #0xc]
	mov     r0, r4
	lsl     r2, r2, #1
	bl      Function_20194e0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x201949e

.thumb
branch_201949e: @ 201949e :thumb
	ldr     r0, [r6, #0x0]
	lsr     r7, r0, #8
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_2018184
	mov     r5, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2019410
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	mov     r1, r5
	lsl     r2, r2, #1
	mov     r3, r7
	bl      Function_20194e0
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20194ce

.thumb
branch_20194ce: @ 20194ce :thumb
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #1
	bl      Function_20194e0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20194de


.incbin "baserom/arm9.bin", 0x194de, 0x20194e0 - 0x20194de


.thumb
Function_20194e0: @ 20194e0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r3
	mov     r7, r0
	mov     r0, r4
	mov     r1, r6
	mov     r5, r2
	blx     Function_20c2c54
	cmp     r7, #0x7
	bhi     branch_2019570
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r2, r3, #0
	lsl     r6, r4, #0
	lsl     r2, r6, #0
	lsl     r6, r7, #0
	lsl     r2, r1, #1
	lsl     r6, r2, #1
	lsl     r2, r4, #1
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	blx     Function_20c036c
	pop     {r3-r7,pc}
@ 0x201951e


.incbin "baserom/arm9.bin", 0x1951e, 0x2019570 - 0x201951e


.thumb
branch_2019570: @ 2019570 :thumb
	pop     {r3-r7,pc}
@ 0x2019572


.incbin "baserom/arm9.bin", 0x19572, 0x201958c - 0x2019572


.thumb
Function_201958c: @ 201958c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0x2c
	mul     r4, r1
	add     r4, r0, r4
	ldrb    r4, [r4, #0x1e]
	cmp     r4, #0x0
	bne     branch_20195aa
	ldr     r4, [sp, #0x10]
	lsl     r4, r4, #5
	str     r4, [sp, #0x0]
	bl      Function_20195b8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x20195aa

.thumb
branch_20195aa: @ 20195aa :thumb
	ldr     r4, [sp, #0x10]
	lsl     r4, r4, #6
	str     r4, [sp, #0x0]
	bl      Function_20195b8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x20195b8

.thumb
Function_20195b8: @ 20195b8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r2
	str     r3, [sp, #0x0]
	cmp     r3, #0x0
	bne     branch_20195f0
	ldr     r1, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	lsr     r4, r1, #8
	mov     r1, r4
	bl      Function_2018184
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2019410
	ldr     r2, [sp, #0x18]
	mov     r0, r7
	mov     r1, r6
	mov     r3, r4
	bl      Function_20195fc
	mov     r0, r6
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x20195f0

.thumb
branch_20195f0: @ 20195f0 :thumb
	ldr     r2, [sp, #0x18]
	mov     r0, r7
	mov     r1, r5
	bl      Function_20195fc
	pop     {r3-r7,pc}
@ 0x20195fc

.thumb
Function_20195fc: @ 20195fc :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r3
	mov     r7, r0
	mov     r0, r4
	mov     r1, r6
	mov     r5, r2
	blx     Function_20c2c54
	cmp     r7, #0x7
	bhi     branch_201968c
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r2, r3, #0
	lsl     r6, r4, #0
	lsl     r2, r6, #0
	lsl     r6, r7, #0
	lsl     r2, r1, #1
	lsl     r6, r2, #1
	lsl     r2, r4, #1
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	blx     Function_20c066c
	pop     {r3-r7,pc}
@ 0x201963a


.incbin "baserom/arm9.bin", 0x1963a, 0x201968c - 0x201963a


.thumb
branch_201968c: @ 201968c :thumb
	pop     {r3-r7,pc}
@ 0x201968e


.incbin "baserom/arm9.bin", 0x1968e, 0x2019690 - 0x201968e


.thumb
Function_2019690: @ 2019690 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, r3
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2018184
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	mov     r3, r5
	bl      Function_20195fc
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2018238
	pop     {r3-r7,pc}
@ 0x20196c0


.incbin "baserom/arm9.bin", 0x196c0, 0x201972c - 0x20196c0


.thumb
Function_201972c: @ 201972c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r7, r3
	blx     Function_20c2c54
	cmp     r6, #0x4
	bcs     branch_201974e
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	blx     Function_20c00b4
	pop     {r3-r7,pc}
@ 0x201974e

.thumb
branch_201974e: @ 201974e :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	blx     Function_20c0108
	pop     {r3-r7,pc}
@ 0x201975a


.incbin "baserom/arm9.bin", 0x1975a, 0x201975c - 0x201975a


.thumb
Function_201975c: @ 201975c :thumb
	push    {r0-r3}
	push    {r3,lr}
	add     r1, sp, #0xc
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_201972c
	pop     {r3}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2019772


.incbin "baserom/arm9.bin", 0x19772, 0x2019774 - 0x2019772


.thumb
Function_2019774: @ 2019774 :thumb
	cmp     r2, #0x5
	bhi     branch_20197de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r4, r2, #0
	lsl     r6, r3, #0
	lsl     r4, r6, #0
	lsl     r6, r2, #1
	lsl     r1, r1, #4
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x201979a


.incbin "baserom/arm9.bin", 0x1979a, 0x20197de - 0x201979a


.thumb
branch_20197de: @ 20197de :thumb
	bx      lr
@ 0x20197e0


.incbin "baserom/arm9.bin", 0x197e0, 0x2019cb8 - 0x20197e0


.thumb
Function_2019cb8: @ 2019cb8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r2, r3
	mov     r3, #0x2c
	mov     r5, r1
	mul     r5, r3
	add     r1, r0, r5
	ldrb    r1, [r1, #0x1c]
	add     r3, sp, #0x8
	cmp     r1, #0x1
	beq     branch_2019cec
	ldrb    r1, [r3, #0x14]
	add     r0, #0x8
	add     r0, r0, r5
	str     r1, [sp, #0x0]
	ldrb    r1, [r3, #0x18]
	str     r1, [sp, #0x4]
	ldrb    r1, [r3, #0x1c]
	str     r1, [sp, #0x8]
	ldrb    r3, [r3, #0x10]
	mov     r1, r4
	bl      Function_2019d08
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2019cec

.thumb
branch_2019cec: @ 2019cec :thumb
	ldrb    r1, [r3, #0x14]
	add     r0, #0x8
	add     r0, r0, r5
	str     r1, [sp, #0x0]
	ldrb    r1, [r3, #0x18]
	str     r1, [sp, #0x4]
	lsl     r1, r4, #24
	ldrb    r3, [r3, #0x10]
	lsr     r1, r1, #24
	bl      Function_2019db8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2019d06


.incbin "baserom/arm9.bin", 0x19d06, 0x2019d08 - 0x2019d06


.thumb
Function_2019d08: @ 2019d08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r4, [r0, #0x0]
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r6, [sp, #0x38]
	cmp     r4, #0x0
	beq     branch_2019db2
	ldrb    r0, [r0, #0x15]
	add     r1, sp, #0x18
	add     r1, #0x1
	add     r2, sp, #0x18
	bl      Function_2018ff4
	add     r0, sp, #0x20
	ldrb    r2, [r0, #0x14]
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	ldr     r2, [sp, #0x8]
	str     r1, [sp, #0xc]
	cmp     r2, r1
	bge     branch_2019db2
	ldrb    r2, [r0, #0x10]
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #12
	add     r0, r0, r2
	add     r1, r1, r7
	str     r0, [sp, #0x10]
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
.thumb
branch_2019d4a: @ 2019d4a :thumb
	add     r0, sp, #0x18
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	cmp     r0, r1
	bcs     branch_2019db2
	ldr     r5, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	cmp     r1, r0
	bge     branch_2019da2
.thumb
branch_2019d5e: @ 2019d5e :thumb
	add     r0, sp, #0x18
	ldrb    r0, [r0, #0x1]
	cmp     r5, r0
	bcs     branch_2019da2
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	ldrb    r2, [r2, #0x15]
	mov     r0, r5
	bl      Function_2019774
	cmp     r6, #0x11
	bne     branch_2019d7c
	lsl     r0, r0, #1
	strh    r7, [r4, r0]
	b       branch_2019d96
@ 0x2019d7c

.thumb
branch_2019d7c: @ 2019d7c :thumb
	cmp     r6, #0x10
	bne     branch_2019d90
	lsl     r0, r0, #1
	ldrh    r2, [r4, r0]
	mov     r1, #0xf
	lsl     r1, r1, #12
	and     r1, r2
	add     r1, r7, r1
	strh    r1, [r4, r0]
	b       branch_2019d96
@ 0x2019d90

.thumb
branch_2019d90: @ 2019d90 :thumb
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x14]
	strh    r0, [r4, r1]
.thumb
branch_2019d96: @ 2019d96 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [sp, #0x10]
	cmp     r5, r0
	blt     branch_2019d5e
.thumb
branch_2019da2: @ 2019da2 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_2019d4a
.thumb
branch_2019db2: @ 2019db2 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2019db6


.incbin "baserom/arm9.bin", 0x19db6, 0x2019db8 - 0x2019db6


.thumb
Function_2019db8: @ 2019db8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x0]
	mov     r7, r0
	str     r2, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r5, r3
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2019e28
	ldrb    r0, [r7, #0x15]
	add     r1, sp, #0x10
	add     r1, #0x1
	add     r2, sp, #0x10
	bl      Function_2018ff4
	add     r1, sp, #0x18
	ldrb    r0, [r1, #0x14]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	cmp     r5, r0
	bge     branch_2019e28
	ldrb    r1, [r1, #0x10]
	ldr     r0, [sp, #0x4]
	add     r6, r0, r1
.thumb
branch_2019dea: @ 2019dea :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x0]
	cmp     r5, r0
	bcs     branch_2019e28
	ldr     r4, [sp, #0x4]
	mov     r0, r4
	cmp     r0, r6
	bge     branch_2019e1c
.thumb
branch_2019dfa: @ 2019dfa :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x1]
	cmp     r4, r0
	bcs     branch_2019e1c
	ldrb    r2, [r7, #0x15]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2019774
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	strb    r2, [r1, r0]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r6
	blt     branch_2019dfa
.thumb
branch_2019e1c: @ 2019e1c :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [sp, #0x8]
	cmp     r5, r0
	blt     branch_2019dea
.thumb
branch_2019e28: @ 2019e28 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2019e2c


.incbin "baserom/arm9.bin", 0x19e2c, 0x2019ebc - 0x2019e2c


.thumb
Function_2019ebc: @ 2019ebc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x2c
	mul     r0, r4
	add     r2, r5, r0
	ldr     r1, [r2, #0x8]
	cmp     r1, #0x0
	beq     branch_2019ede
	ldr     r2, [r2, #0xc]
	mov     r0, #0x0
	blx     Function_20c4af0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2019448
.thumb
branch_2019ede: @ 2019ede :thumb
	pop     {r3-r5,pc}
@ 0x2019ee0


.incbin "baserom/arm9.bin", 0x19ee0, 0x2019f28 - 0x2019ee0


.thumb
Function_2019f28: @ 2019f28 :thumb
	push    {r3,lr}
	cmp     r0, #0x7
	bhi     branch_2019f7a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r3, #0
	lsl     r0, r4, #0
	lsl     r6, r4, #0
	lsl     r4, r5, #0
	lsl     r2, r6, #0
	lsl     r0, r7, #0
	blx     Function_20bf2d4
	pop     {r3,pc}
@ 0x2019f50


.incbin "baserom/arm9.bin", 0x19f50, 0x2019f7a - 0x2019f50


.thumb
branch_2019f7a: @ 2019f7a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2019f7e


.incbin "baserom/arm9.bin", 0x19f7e, 0x2019f80 - 0x2019f7e


.thumb
Function_2019f80: @ 2019f80 :thumb
	push    {r4-r7}
	lsl     r3, r3, #28
	lsr     r3, r3, #24
	mov     r4, #0x0
	cmp     r1, #0x0
	bls     branch_2019fba
	mov     r5, #0xf
	mov     r6, r5
.thumb
branch_2019f90: @ 2019f90 :thumb
	ldrb    r7, [r0, r4]
	and     r7, r6
	strb    r7, [r2, #0x0]
	ldrb    r7, [r2, #0x0]
	cmp     r7, #0x0
	beq     branch_2019fa0
	add     r7, r7, r3
	strb    r7, [r2, #0x0]
.thumb
branch_2019fa0: @ 2019fa0 :thumb
	ldrb    r7, [r0, r4]
	asr     r7, r7, #4
	and     r7, r5
	strb    r7, [r2, #0x1]
	ldrb    r7, [r2, #0x1]
	cmp     r7, #0x0
	beq     branch_2019fb2
	add     r7, r7, r3
	strb    r7, [r2, #0x1]
.thumb
branch_2019fb2: @ 2019fb2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r4, r1
	bcc     branch_2019f90
.thumb
branch_2019fba: @ 2019fba :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2019fbe


.incbin "baserom/arm9.bin", 0x19fbe, 0x2019fc0 - 0x2019fbe


.thumb
Function_2019fc0: @ 2019fc0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r3
	lsl     r1, r5, #1
	mov     r7, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2019f80
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2019fe2


.incbin "baserom/arm9.bin", 0x19fe2, 0x201a1e4 - 0x2019fe2


.thumb
Function_201a1e4: @ 201a1e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	add     r2, sp, #0x70
	str     r0, [sp, #0x0]
	ldrh    r0, [r2, #0x10]
	str     r1, [sp, #0x4]
	ldrh    r2, [r2, #0x18]
	str     r0, [sp, #0x10]
	mov     r0, r1
	ldrh    r1, [r0, #0x4]
	ldr     r0, [sp, #0x10]
	sub     r3, r1, r0
	cmp     r3, r2
	bge     branch_201a20c
	ldr     r0, [sp, #0x8]
	add     r0, r0, r3
	str     r0, [sp, #0x50]
	b       branch_201a212
@ 0x201a20c

.thumb
branch_201a20c: @ 201a20c :thumb
	ldr     r0, [sp, #0x8]
	add     r0, r2, r0
	str     r0, [sp, #0x50]
.thumb
branch_201a212: @ 201a212 :thumb
	ldr     r2, [sp, #0x4]
	add     r3, sp, #0x70
	ldrh    r0, [r3, #0x14]
	ldrh    r2, [r2, #0x6]
	ldrh    r3, [r3, #0x1c]
	sub     r4, r2, r0
	cmp     r4, r3
	bge     branch_201a22a
	ldr     r2, [sp, #0xc]
	add     r2, r2, r4
	str     r2, [sp, #0x4c]
	b       branch_201a230
@ 0x201a22a

.thumb
branch_201a22a: @ 201a22a :thumb
	ldr     r2, [sp, #0xc]
	add     r2, r3, r2
	str     r2, [sp, #0x4c]
.thumb
branch_201a230: @ 201a230 :thumb
	ldr     r2, [sp, #0x0]
	mov     r3, #0x7
	ldrh    r4, [r2, #0x4]
	mov     r2, r4
	and     r2, r3
	add     r2, r4, r2
	asr     r2, r2, #3
	str     r2, [sp, #0x48]
	mov     r2, r1
	and     r2, r3
	add     r1, r1, r2
	asr     r1, r1, #3
	str     r1, [sp, #0x44]
	add     r1, sp, #0x70
	ldrh    r1, [r1, #0x20]
	ldr     r2, [pc, #0x1cc] @ 0x201a41c, (=#0xffff)
	str     r1, [sp, #0x38]
	cmp     r1, r2
	bne     branch_201a338
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x4c]
	cmp     r2, r1
	bge     branch_201a262
	cmp     r2, r1
	blt     branch_201a264
.thumb
branch_201a262: @ 201a262 :thumb
	b       branch_201a416
@ 0x201a264

.thumb
branch_201a264: @ 201a264 :thumb
	mov     r1, r2
	lsl     r1, r1, #2
	lsl     r0, r0, #2
	str     r1, [sp, #0x28]
	str     r0, [sp, #0x24]
.thumb
branch_201a26e: @ 201a26e :thumb
	ldr     r3, [sp, #0x8]
	ldr     r0, [sp, #0x50]
	mov     r1, r3
	ldr     r4, [sp, #0x10]
	cmp     r1, r0
	bge     branch_201a31a
	cmp     r1, r0
	bge     branch_201a31a
	mov     r0, r3
	lsl     r5, r0, #2
	mov     r0, r4
	lsl     r6, r0, #2
	ldr     r0, [pc, #0x198] @ 0x201a420, (=#0x3fe0)
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x48]
	and     r1, r0
	mul     r2, r1
	str     r2, [sp, #0x20]
	ldr     r2, [sp, #0x28]
	mov     r1, #0x1c
	and     r2, r1
	str     r2, [sp, #0x1c]
	ldr     r2, [sp, #0x24]
	and     r0, r2
	ldr     r2, [sp, #0x44]
	mul     r2, r0
	ldr     r0, [sp, #0x24]
	str     r2, [sp, #0x18]
	and     r0, r1
	str     r0, [sp, #0x14]
.thumb
branch_201a2aa: @ 201a2aa :thumb
	ldr     r0, [sp, #0x4]
	asr     r2, r4, #1
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	and     r1, r2
	add     r1, r0, r1
	ldr     r0, [pc, #0x168] @ 0x201a420, (=#0x3fe0)
	and     r0, r6
	add     r1, r1, r0
	ldr     r0, [sp, #0x18]
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r0, r1, r0
	str     r0, [sp, #0x64]
	lsl     r0, r4, #31
	lsr     r2, r0, #29
	ldr     r0, [sp, #0x0]
	asr     r1, r3, #1
	ldr     r7, [r0, #0x0]
	mov     r0, #0x3
	and     r0, r1
	ldr     r1, [pc, #0x14c] @ 0x201a420, (=#0x3fe0)
	.hword  0x1c64 @ add r4, r4, #0x1
	and     r1, r5
	str     r1, [sp, #0x54]
	add     r1, r7, r0
	ldr     r0, [sp, #0x54]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r1, r0, r1
	ldr     r0, [sp, #0x20]
	add     r1, r0, r1
	ldr     r0, [sp, #0x1c]
	ldrb    r1, [r0, r1]
	lsl     r0, r3, #31
	lsr     r0, r0, #29
	asr     r1, r0
	mov     r0, #0xf
	and     r0, r1
	mov     r7, r0
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x64]
	lsl     r7, r2
	ldrb    r0, [r0, r1]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r0, [sp, #0x58]
	mov     r0, #0xf0
	asr     r0, r2
	ldr     r1, [sp, #0x58]
	mov     r2, r7
	and     r0, r1
	orr     r2, r0
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x64]
	strb    r2, [r0, r1]
	ldr     r0, [sp, #0x50]
	cmp     r3, r0
	blt     branch_201a2aa
.thumb
branch_201a31a: @ 201a31a :thumb
	ldr     r0, [sp, #0x28]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x4c]
	cmp     r1, r0
	blt     branch_201a26e
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x201a338

.thumb
branch_201a338: @ 201a338 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x4c]
	cmp     r2, r1
	bge     branch_201a416
	cmp     r2, r1
	bge     branch_201a416
	mov     r1, r2
	lsl     r1, r1, #2
	lsl     r0, r0, #2
	str     r1, [sp, #0x40]
	str     r0, [sp, #0x3c]
.thumb
branch_201a34e: @ 201a34e :thumb
	ldr     r3, [sp, #0x8]
	ldr     r0, [sp, #0x50]
	mov     r1, r3
	ldr     r4, [sp, #0x10]
	cmp     r1, r0
	bge     branch_201a3fc
	cmp     r1, r0
	bge     branch_201a3fc
	mov     r0, r3
	lsl     r1, r0, #2
	mov     r0, r4
	lsl     r2, r0, #2
	ldr     r0, [pc, #0xb8] @ 0x201a420, (=#0x3fe0)
	ldr     r5, [sp, #0x40]
	ldr     r6, [sp, #0x48]
	and     r5, r0
	mul     r6, r5
	str     r6, [sp, #0x34]
	ldr     r6, [sp, #0x40]
	mov     r5, #0x1c
	and     r6, r5
	str     r6, [sp, #0x30]
	ldr     r6, [sp, #0x3c]
	and     r0, r6
	ldr     r6, [sp, #0x44]
	mul     r6, r0
	ldr     r0, [sp, #0x3c]
	str     r6, [sp, #0x2c]
	and     r0, r5
	str     r0, [sp, #0x60]
.thumb
branch_201a38a: @ 201a38a :thumb
	ldr     r0, [sp, #0x4]
	asr     r6, r4, #1
	mov     r5, #0x3
	and     r5, r6
	ldr     r0, [r0, #0x0]
	asr     r6, r3, #1
	add     r5, r0, r5
	ldr     r0, [pc, #0x84] @ 0x201a420, (=#0x3fe0)
	and     r0, r2
	add     r5, r5, r0
	ldr     r0, [sp, #0x2c]
	add     r5, r5, r0
	ldr     r0, [sp, #0x0]
	ldr     r7, [r0, #0x0]
	mov     r0, #0x3
	and     r0, r6
	ldr     r6, [pc, #0x74] @ 0x201a420, (=#0x3fe0)
	and     r6, r1
	str     r6, [sp, #0x5c]
	add     r6, r7, r0
	ldr     r0, [sp, #0x5c]
	add     r6, r0, r6
	ldr     r0, [sp, #0x34]
	add     r6, r0, r6
	ldr     r0, [sp, #0x30]
	ldrb    r6, [r0, r6]
	lsl     r0, r3, #31
	lsr     r0, r0, #29
	asr     r6, r0
	mov     r0, #0xf
	and     r0, r6
	ldr     r6, [sp, #0x38]
	cmp     r0, r6
	beq     branch_201a3ee
	lsl     r6, r4, #31
	lsr     r7, r6, #29
	lsl     r0, r7
	mov     lr, r0
	ldr     r0, [sp, #0x60]
	ldrb    r0, [r5, r0]
	mov     r12, r0
	mov     r0, #0xf0
	mov     r6, r0
	asr     r6, r7
	mov     r0, r12
	and     r0, r6
	mov     r6, lr
	orr     r6, r0
	ldr     r0, [sp, #0x60]
	strb    r6, [r5, r0]
.thumb
branch_201a3ee: @ 201a3ee :thumb
	ldr     r0, [sp, #0x50]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r3, r0
	blt     branch_201a38a
.thumb
branch_201a3fc: @ 201a3fc :thumb
	ldr     r0, [sp, #0x40]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x4c]
	cmp     r1, r0
	blt     branch_201a34e
.thumb
branch_201a416: @ 201a416 :thumb
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x201a41a


.incbin "baserom/arm9.bin", 0x1a41a, 0x201a41c - 0x201a41a


.word 0xffff @ 0x201a41c
.word 0x3fe0 @ 0x201a420

.incbin "baserom/arm9.bin", 0x1a424, 0x201a60c - 0x201a424


.thumb
Function_201a60c: @ 201a60c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x4]
	add     r6, r0, r3
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x4]
	cmp     r6, r0
	ble     branch_201a628
	mov     r6, r0
.thumb
branch_201a628: @ 201a628 :thumb
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x10]
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	mov     r12, r1
	ldr     r1, [sp, #0x0]
	ldrh    r2, [r1, #0x6]
	mov     r1, r12
	cmp     r1, r2
	ble     branch_201a63e
	mov     r12, r2
.thumb
branch_201a63e: @ 201a63e :thumb
	mov     r1, #0x7
	and     r1, r0
	add     r0, r0, r1
	asr     r0, r0, #3
	mov     lr, r0
	ldr     r1, [sp, #0x8]
	mov     r0, r12
	cmp     r1, r0
	bge     branch_201a6c8
	mov     r0, r1
	lsl     r0, r0, #2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	lsl     r0, r0, #4
	str     r0, [sp, #0x10]
.thumb
branch_201a65c: @ 201a65c :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r1
	cmp     r0, r6
	bge     branch_201a6b6
	lsl     r5, r0, #2
	ldr     r2, [pc, #0x64] @ 0x201a6cc, (=#0x3fe0)
	ldr     r0, [sp, #0xc]
	and     r0, r2
	mov     r7, r0
	mov     r2, lr
	mul     r7, r2
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1c
	and     r2, r0
.thumb
branch_201a678: @ 201a678 :thumb
	ldr     r0, [sp, #0x0]
	asr     r3, r1, #1
	ldr     r4, [r0, #0x0]
	mov     r0, #0x3
	and     r0, r3
	ldr     r3, [pc, #0x48] @ 0x201a6cc, (=#0x3fe0)
	add     r0, r4, r0
	and     r3, r5
	add     r0, r0, r3
	add     r0, r0, r7
	mov     r3, #0x1
	tst     r3, r1
	ldrb    r4, [r0, r2]
	beq     branch_201a6a0
	mov     r3, #0xf
	and     r3, r4
	strb    r3, [r0, r2]
	ldrb    r4, [r0, r2]
	ldr     r3, [sp, #0x10]
	b       branch_201a6aa
@ 0x201a6a0

.thumb
branch_201a6a0: @ 201a6a0 :thumb
	mov     r3, #0xf0
	and     r3, r4
	strb    r3, [r0, r2]
	ldrb    r4, [r0, r2]
	ldr     r3, [sp, #0x2c]
.thumb
branch_201a6aa: @ 201a6aa :thumb
	orr     r3, r4
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r3, [r0, r2]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r1, r6
	blt     branch_201a678
.thumb
branch_201a6b6: @ 201a6b6 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	mov     r0, r12
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_201a65c
.thumb
branch_201a6c8: @ 201a6c8 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x201a6cc

.word 0x3fe0 @ 0x201a6cc
.thumb
Function_201a6d0: @ 201a6d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x4]
	add     r5, r0, r3
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x4]
	cmp     r5, r0
	ble     branch_201a6ec
	mov     r5, r0
.thumb
branch_201a6ec: @ 201a6ec :thumb
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x10]
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	mov     lr, r1
	ldr     r1, [sp, #0x0]
	ldrh    r2, [r1, #0x6]
	mov     r1, lr
	cmp     r1, r2
	ble     branch_201a702
	mov     lr, r2
.thumb
branch_201a702: @ 201a702 :thumb
	mov     r1, #0x7
	and     r1, r0
	add     r0, r0, r1
	asr     r0, r0, #3
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	mov     r0, lr
	cmp     r1, r0
	bge     branch_201a76e
	mov     r0, r1
	lsl     r0, r0, #3
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #3
	mov     r12, r0
.thumb
branch_201a720: @ 201a720 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r2
	cmp     r0, r5
	bge     branch_201a75c
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x48] @ 0x201a774, (=#0x7fc0)
	mov     r3, r12
	and     r0, r1
	mov     r7, r0
	ldr     r1, [sp, #0x10]
	mov     r0, #0x38
	mul     r7, r1
	ldr     r1, [sp, #0xc]
	mov     r6, r1
	and     r6, r0
.thumb
branch_201a73e: @ 201a73e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x30] @ 0x201a774, (=#0x7fc0)
	ldr     r1, [r0, #0x0]
	mov     r0, #0x7
	and     r0, r2
	and     r4, r3
	add     r0, r1, r0
	add     r0, r4, r0
	add     r1, r7, r0
	ldr     r0, [sp, #0x2c]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r6, r1]
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_201a73e
.thumb
branch_201a75c: @ 201a75c :thumb
	ldr     r0, [sp, #0xc]
	add     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	mov     r0, lr
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_201a720
.thumb
branch_201a76e: @ 201a76e :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x201a772


.incbin "baserom/arm9.bin", 0x1a772, 0x201a774 - 0x201a772


.word 0x7fc0 @ 0x201a774
.thumb
Function_201a778: @ 201a778 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	lsl     r1, r5, #4
	bl      Function_2018144
	mov     r6, r0
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_201a79c
.thumb
branch_201a78a: @ 201a78a :thumb
	lsl     r0, r4, #4
	add     r0, r6, r0
	bl      Function_201a7a0
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r5
	blt     branch_201a78a
.thumb
branch_201a79c: @ 201a79c :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x201a7a0

.thumb
Function_201a7a0: @ 201a7a0 :thumb
	mov     r3, #0x0
	str     r3, [r0, #0x0]
	mov     r1, #0xff
	strb    r1, [r0, #0x4]
	strb    r3, [r0, #0x5]
	strb    r3, [r0, #0x6]
	strb    r3, [r0, #0x7]
	strb    r3, [r0, #0x8]
	strb    r3, [r0, #0x9]
	ldrh    r2, [r0, #0xa]
	ldr     r1, [pc, #0x10] @ 0x201a7c8, (=#0xffff8000)
	and     r2, r1
	strh    r2, [r0, #0xa]
	str     r3, [r0, #0xc]
	ldrh    r2, [r0, #0xa]
	.hword  0x1e49 @ sub r1, r1, #0x1
	and     r1, r2
	strh    r1, [r0, #0xa]
	bx      lr
@ 0x201a7c6


.incbin "baserom/arm9.bin", 0x1a7c6, 0x201a7c8 - 0x201a7c6


.word 0xffff8000 @ 0x201a7c8

.incbin "baserom/arm9.bin", 0x1a7cc, 0x201a7e8 - 0x201a7cc


.thumb
Function_201a7e8: @ 201a7e8 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, #0x2c
	mov     r7, r6
	mul     r7, r0
	mov     r4, r1
	str     r3, [sp, #0x0]
	add     r1, r5, r7
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_201a864
	add     r3, sp, #0x8
	ldrb    r2, [r1, #0x1f]
	ldrb    r1, [r3, #0x14]
	ldrb    r3, [r3, #0x18]
	ldr     r0, [r5, #0x0]
	mul     r3, r1
	mov     r1, r2
	mul     r1, r3
	bl      Function_2018144
	mov     r1, r0
	beq     branch_201a864
	str     r5, [r4, #0x0]
	strb    r6, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	add     r3, sp, #0x8
	strb    r0, [r4, #0x5]
	ldrb    r0, [r3, #0x10]
	ldr     r2, [pc, #0x40] @ 0x201a868, (=#0xffff8000)
	strb    r0, [r4, #0x6]
	ldrb    r0, [r3, #0x14]
	strb    r0, [r4, #0x7]
	ldrb    r0, [r3, #0x18]
	strb    r0, [r4, #0x8]
	ldrb    r0, [r3, #0x1c]
	strb    r0, [r4, #0x9]
	ldrh    r0, [r4, #0xa]
	ldrh    r3, [r3, #0x20]
	and     r0, r2
	lsr     r2, r2, #17
	and     r2, r3
	orr     r0, r2
	strh    r0, [r4, #0xa]
	str     r1, [r4, #0xc]
	add     r0, r5, r7
	ldrb    r0, [r0, #0x1e]
	cmp     r0, #0x0
	bne     branch_201a850
	mov     r2, #0x0
	b       branch_201a852
@ 0x201a850

.thumb
branch_201a850: @ 201a850 :thumb
	mov     r2, #0x1
.thumb
branch_201a852: @ 201a852 :thumb
	ldrh    r1, [r4, #0xa]
	ldr     r0, [pc, #0x14] @ 0x201a86c, (=#0xffff7fff)
	and     r1, r0
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	lsr     r0, r0, #16
	orr     r0, r1
	strh    r0, [r4, #0xa]
.thumb
branch_201a864: @ 201a864 :thumb
	pop     {r3-r7,pc}
@ 0x201a866


.incbin "baserom/arm9.bin", 0x1a866, 0x201a868 - 0x201a866


.word 0xffff8000 @ 0x201a868
.word 0xffff7fff @ 0x201a86c

.incbin "baserom/arm9.bin", 0x1a870, 0x201a8d4 - 0x201a870


.thumb
Function_201a8d4: @ 201a8d4 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r3, r2
	ldrb    r2, [r3, #0x2]
	str     r2, [sp, #0x0]
	ldrb    r2, [r3, #0x3]
	str     r2, [sp, #0x4]
	ldrb    r2, [r3, #0x4]
	str     r2, [sp, #0x8]
	ldrb    r2, [r3, #0x5]
	str     r2, [sp, #0xc]
	ldrh    r2, [r3, #0x6]
	str     r2, [sp, #0x10]
	ldrb    r2, [r3, #0x0]
	ldrb    r3, [r3, #0x1]
	bl      Function_201a7e8
	add     sp, #0x14
	pop     {pc}
@ 0x201a8fa


.incbin "baserom/arm9.bin", 0x1a8fa, 0x201a8fc - 0x201a8fa


.thumb
Function_201a8fc: @ 201a8fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_20181c4
	mov     r2, #0x0
	str     r2, [r4, #0x0]
	mov     r0, #0xff
	strb    r0, [r4, #0x4]
	strb    r2, [r4, #0x5]
	strb    r2, [r4, #0x6]
	strb    r2, [r4, #0x7]
	strb    r2, [r4, #0x8]
	strb    r2, [r4, #0x9]
	ldrh    r1, [r4, #0xa]
	ldr     r0, [pc, #0x8] @ 0x201a924, (=#0xffff8000)
	and     r0, r1
	strh    r0, [r4, #0xa]
	str     r2, [r4, #0xc]
	pop     {r4,pc}
@ 0x201a924

.word 0xffff8000 @ 0x201a924

.incbin "baserom/arm9.bin", 0x1a928, 0x201a954 - 0x201a928


.thumb
Function_201a954: @ 201a954 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_201a95e
	bl      Function_2022974
.thumb
branch_201a95e: @ 201a95e :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_201a968
	bl      Function_2022974
.thumb
branch_201a968: @ 201a968 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x8
	bcc     branch_201a972
	bl      Function_2022974
.thumb
branch_201a972: @ 201a972 :thumb
	ldrb    r1, [r4, #0x4]
	mov     r0, #0x2c
	ldr     r2, [r4, #0x0]
	mul     r0, r1
	add     r0, r2, r0
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x3
	bcc     branch_201a986
	bl      Function_2022974
.thumb
branch_201a986: @ 201a986 :thumb
	ldrb    r2, [r4, #0x4]
	mov     r1, #0x2c
	ldr     r3, [r4, #0x0]
	mul     r1, r2
	add     r1, r3, r1
	ldrb    r1, [r1, #0x1c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x201a9a0, (=#0x20e56cc)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x201a99e


.incbin "baserom/arm9.bin", 0x1a99e, 0x201a9a0 - 0x201a99e


.word 0x20e56cc @ 0x201a9a0

.incbin "baserom/arm9.bin", 0x1a9a4, 0x201accc - 0x201a9a4


.thumb
Function_201accc: @ 201accc :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	ldrh    r2, [r3, #0xa]
	ldrb    r1, [r3, #0x4]
	mov     r4, #0x2c
	lsl     r2, r2, #17
	ldr     r0, [r3, #0x0]
	lsr     r2, r2, #17
	str     r2, [sp, #0x0]
	mul     r4, r1
	add     r4, r0, r4
	ldr     r2, [r3, #0xc]
	ldrb    r5, [r3, #0x7]
	ldrb    r3, [r3, #0x8]
	ldrb    r4, [r4, #0x1f]
	mul     r3, r5
	mul     r3, r4
	bl      Function_201958c
	pop     {r3-r5,pc}
@ 0x201acf4

.thumb
Function_201acf4: @ 201acf4 :thumb
	push    {r3,lr}
	ldrb    r2, [r0, #0x4]
	mov     r1, #0x2c
	ldr     r3, [r0, #0x0]
	mul     r1, r2
	add     r1, r3, r1
	ldrb    r1, [r1, #0x1c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x4] @ 0x201ad0c, (=#0x20e56b4)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x201ad0c

.word 0x20e56b4 @ 0x201ad0c

.incbin "baserom/arm9.bin", 0x1ad10, 0x201ada4 - 0x201ad10


.thumb
Function_201ada4: @ 201ada4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x4]
	mov     r0, #0x2c
	ldr     r3, [r4, #0x0]
	mul     r0, r2
	add     r0, r3, r0
	ldrb    r2, [r0, #0x1f]
	cmp     r2, #0x20
	bne     branch_201adc0
	lsl     r0, r1, #4
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
.thumb
branch_201adc0: @ 201adc0 :thumb
	lsl     r3, r1, #24
	lsl     r0, r1, #16
	orr     r0, r3
	lsl     r5, r1, #8
	orr     r0, r5
	orr     r0, r1
	ldr     r1, [r4, #0xc]
	ldrb    r3, [r4, #0x8]
	ldrb    r4, [r4, #0x7]
	mul     r2, r4
	mul     r2, r3
	blx     Function_20c4bb8
	pop     {r3-r5,pc}
@ 0x201addc


.incbin "baserom/arm9.bin", 0x1addc, 0x201ae78 - 0x201addc


.thumb
Function_201ae78: @ 201ae78 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r1, [r0, #0xc]
	mov     r4, r2
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x7]
	mov     r2, r3
	lsl     r3, r1, #3
	add     r1, sp, #0x8
	strh    r3, [r1, #0x4]
	ldrb    r3, [r0, #0x8]
	lsl     r3, r3, #3
	strh    r3, [r1, #0x6]
	ldrb    r3, [r0, #0x4]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2c
	mul     r0, r3
	add     r0, r1, r0
	ldrb    r0, [r0, #0x1e]
	add     r3, sp, #0x10
	cmp     r0, #0x0
	bne     branch_201aeba
	ldrh    r0, [r3, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldrh    r3, [r3, #0x10]
	add     r0, sp, #0x8
	bl      Function_201a60c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x201aeba

.thumb
branch_201aeba: @ 201aeba :thumb
	ldrh    r0, [r3, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldrh    r3, [r3, #0x10]
	add     r0, sp, #0x8
	bl      Function_201a6d0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x201aece


.incbin "baserom/arm9.bin", 0x1aece, 0x201aed0 - 0x201aece


.thumb
Function_201aed0: @ 201aed0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1fc
	add     sp, #-0x118
	mov     r5, r0
	ldr     r0, [sp, #0x330]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x330]
	add     r1, sp, #0x318
	ldrh    r1, [r1, #0x10]
	ldr     r0, [r5, #0xc]
	str     r1, [sp, #0x5c]
	ldrb    r1, [r5, #0x7]
	str     r0, [sp, #0x278]
	ldrb    r0, [r5, #0x8]
	lsl     r1, r1, #19
	lsr     r4, r1, #16
	ldr     r1, [sp, #0x5c]
	lsl     r0, r0, #19
	sub     r1, r4, r1
	lsr     r0, r0, #16
	str     r4, [sp, #0x58]
	str     r1, [sp, #0x8]
	cmp     r1, r2
	blt     branch_201af02
	str     r2, [sp, #0x8]
.thumb
branch_201af02: @ 201af02 :thumb
	add     r1, sp, #0x318
	ldrh    r1, [r1, #0x14]
	sub     r0, r0, r1
	str     r1, [sp, #0x48]
	str     r0, [sp, #0x4]
	cmp     r0, r3
	blt     branch_201af12
	str     r3, [sp, #0x4]
.thumb
branch_201af12: @ 201af12 :thumb
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	cmp     r0, #0x8
	ble     branch_201af22
	mov     r0, #0x1
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_201af22: @ 201af22 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x8
	ble     branch_201af30
	mov     r0, #0x2
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_201af30: @ 201af30 :thumb
	ldrh    r0, [r5, #0xa]
	lsl     r0, r0, #16
	lsr     r0, r0, #31
	beq     branch_201af3c
	bl      Function_201b8b0
.thumb
branch_201af3c: @ 201af3c :thumb
	cmp     r4, #0x3
	bls     branch_201af44
	bl      Function_201c040
.thumb
branch_201af44: @ 201af44 :thumb
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r1, #4
	lsl     r0, r3, #12
	lsl     r0, r7, #20
	ldr     r0, [sp, #0x330]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x70]
	mov     r0, #0x0
	str     r0, [sp, #0x274]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bgt     branch_201af6e
	bl      Function_201c040
.thumb
branch_201af6e: @ 201af6e :thumb
	ldr     r0, [sp, #0x58]
	mov     r1, #0x7
	and     r1, r0
	add     r0, r0, r1
	asr     r0, r0, #3
	str     r0, [sp, #0x6c]
.thumb
branch_201af7a: @ 201af7a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x70]
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x5c]
	str     r0, [sp, #0x26c]
	ldr     r0, [sp, #0x274]
	asr     r1, r0
	mov     r0, #0x1
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x270]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	cmp     r0, #0x0
	ble     branch_201b02e
	ble     branch_201b02e
	mov     r0, r2
	lsl     r3, r0, #2
	ldr     r0, [sp, #0x48]
	ldr     r6, [sp, #0x6c]
	lsl     r5, r0, #2
	ldr     r0, [pc, #0x344] @ 0x201b2ec, (=#0x3fe0)
	mov     r7, r5
	and     r0, r5
	mul     r6, r0
	mov     r0, #0x1c
	and     r7, r0
	ldr     r0, [sp, #0x48]
	str     r6, [sp, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r6, r0, #2
	ldr     r0, [pc, #0x330] @ 0x201b2ec, (=#0x3fe0)
	ldr     r5, [sp, #0x6c]
	and     r0, r6
	mul     r5, r0
	mov     r0, #0x1c
	and     r0, r6
	mov     r4, r1
	str     r5, [sp, #0x64]
	str     r0, [sp, #0x60]
.thumb
branch_201afcc: @ 201afcc :thumb
	asr     r5, r2, #1
	mov     r0, #0x3
	and     r5, r0
	ldr     r0, [sp, #0x278]
	add     r0, r0, r5
	ldr     r5, [pc, #0x314] @ 0x201b2ec, (=#0x3fe0)
	and     r5, r3
	add     r5, r0, r5
	ldr     r0, [sp, #0x68]
	str     r5, [sp, #0x27c]
	add     r0, r5, r0
	ldr     r5, [sp, #0x26c]
	mov     r6, r5
	lsr     r6, r4
	mov     r5, #0xf
	and     r5, r6
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	beq     branch_201b020
	lsl     r6, r2, #31
	lsr     r6, r6, #29
	lsl     r5, r6
	str     r5, [sp, #0x280]
	ldrb    r5, [r0, r7]
	str     r5, [sp, #0x284]
	mov     r5, #0xf0
	asr     r5, r6
	ldr     r6, [sp, #0x284]
	and     r6, r5
	ldr     r5, [sp, #0x280]
	orr     r5, r6
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	strb    r5, [r0, r7]
	ldr     r0, [sp, #0x270]
	cmp     r0, #0x0
	beq     branch_201b020
	ldr     r6, [sp, #0x27c]
	ldr     r0, [sp, #0x64]
	add     r6, r6, r0
	ldr     r0, [sp, #0x60]
	strb    r5, [r0, r6]
.thumb
branch_201b020: @ 201b020 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r1, r0
	blt     branch_201afcc
.thumb
branch_201b02e: @ 201b02e :thumb
	ldr     r0, [sp, #0x270]
	cmp     r0, #0x0
	beq     branch_201b03c
	ldr     r0, [sp, #0x48]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x48]
	b       branch_201b042
@ 0x201b03c

.thumb
branch_201b03c: @ 201b03c :thumb
	ldr     r0, [sp, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x48]
.thumb
branch_201b042: @ 201b042 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x274]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x274]
	cmp     r1, r0
	blt     branch_201af7a
	add     sp, #0x1fc
	add     sp, #0x118
	pop     {r4-r7,pc}
@ 0x201b05a


.incbin "baserom/arm9.bin", 0x1b05a, 0x201b2ec - 0x201b05a


.word 0x3fe0 @ 0x201b2ec

.incbin "baserom/arm9.bin", 0x1b2f0, 0x201b8b0 - 0x201b2f0


.thumb
Function_201b8b0: @ 201b8b0 :thumb
	lsl     r1, r2, #2
	mul     r1, r3
	ldr     r3, [r5, #0x0]
	ldrb    r2, [r5, #0x9]
	ldr     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	lsl     r1, r1, #3
	bl      Function_2019fc0
	str     r0, [sp, #0x1ec]
	cmp     r4, #0x3
	bhi     branch_201b9a2
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r1, #3
	lsl     r2, r7, #9
	lsl     r6, r3, #16
	ldr     r0, [sp, #0x330]
	ldr     r7, [sp, #0x1ec]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10c]
	mov     r0, #0x0
	str     r0, [sp, #0x1e8]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_201b9a2
	ldr     r0, [sp, #0x58]
	mov     r1, #0x7
	and     r1, r0
	add     r0, r0, r1
	asr     r0, r0, #3
	str     r0, [sp, #0x108]
.thumb
branch_201b8fc: @ 201b8fc :thumb
	ldr     r1, [sp, #0x10c]
	ldr     r0, [sp, #0x1e8]
	mov     r4, #0x0
	asr     r1, r0
	mov     r0, #0x1
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x310]
	ldr     r0, [sp, #0x8]
	ldr     r5, [sp, #0x5c]
	cmp     r0, #0x0
	ble     branch_201b980
	ble     branch_201b980
	mov     r0, r5
	lsl     r6, r0, #3
	ldr     r0, [sp, #0x48]
	ldr     r2, [sp, #0x108]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x1d4] @ 0x201baf8, (=#0x7fc0)
	mov     r3, #0x38
	and     r0, r1
	mul     r2, r0
	mov     r0, r1
	and     r0, r3
	str     r0, [sp, #0x100]
	ldr     r0, [sp, #0x48]
	str     r2, [sp, #0x104]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x1bc] @ 0x201baf8, (=#0x7fc0)
	ldr     r2, [sp, #0x108]
	and     r0, r1
	mul     r2, r0
	mov     r0, r1
	and     r0, r3
	str     r2, [sp, #0xfc]
	str     r0, [sp, #0xf8]
.thumb
branch_201b948: @ 201b948 :thumb
	mov     r0, #0x7
	mov     r1, r5
	and     r1, r0
	ldr     r0, [sp, #0x278]
	add     r1, r0, r1
	ldr     r0, [pc, #0x1a4] @ 0x201baf8, (=#0x7fc0)
	and     r0, r6
	add     r3, r1, r0
	ldr     r0, [sp, #0x104]
	ldrb    r1, [r7, r4]
	add     r2, r3, r0
	cmp     r1, #0x0
	beq     branch_201b974
	ldr     r0, [sp, #0x100]
	strb    r1, [r2, r0]
	ldr     r0, [sp, #0x310]
	cmp     r0, #0x0
	beq     branch_201b974
	ldr     r0, [sp, #0xfc]
	add     r2, r3, r0
	ldr     r0, [sp, #0xf8]
	strb    r1, [r0, r2]
.thumb
branch_201b974: @ 201b974 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x8
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, r0
	blt     branch_201b948
.thumb
branch_201b980: @ 201b980 :thumb
	ldr     r0, [sp, #0x310]
	cmp     r0, #0x0
	beq     branch_201b98e
	ldr     r0, [sp, #0x48]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x48]
	b       branch_201b994
@ 0x201b98e

.thumb
branch_201b98e: @ 201b98e :thumb
	ldr     r0, [sp, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x48]
.thumb
branch_201b994: @ 201b994 :thumb
	ldr     r0, [sp, #0x1e8]
	add     r7, #0x8
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x1e8]
	cmp     r1, r0
	blt     branch_201b8fc
.thumb
branch_201b9a2: @ 201b9a2 :thumb
	b       branch_201c03a
@ 0x201b9a4


.incbin "baserom/arm9.bin", 0x1b9a4, 0x201baf8 - 0x201b9a4


.word 0x7fc0 @ 0x201baf8

.incbin "baserom/arm9.bin", 0x1bafc, 0x201c03a - 0x201bafc


.thumb
branch_201c03a: @ 201c03a :thumb
	ldr     r0, [sp, #0x1ec]
	bl      Function_20181c4
.thumb
Function_201c040: @ 201c040 :thumb
	add     sp, #0x1fc
	add     sp, #0x118
	pop     {r4-r7,pc}
@ 0x201c046


.incbin "baserom/arm9.bin", 0x1c046, 0x201c04c - 0x201c046


.thumb
Function_201c04c: @ 201c04c :thumb
	push    {r4-r6,lr}
	ldrb    r6, [r0, #0x4]
	mov     r5, #0x2c
	ldr     r4, [r0, #0x0]
	mul     r5, r6
	add     r4, r4, r5
	ldrb    r4, [r4, #0x1e]
	cmp     r4, #0x0
	bne     branch_201c064
	bl      Function_201c06c
	pop     {r4-r6,pc}
@ 0x201c064

.thumb
branch_201c064: @ 201c064 :thumb
	bl      Function_201c158
	pop     {r4-r6,pc}
@ 0x201c06a


.incbin "baserom/arm9.bin", 0x1c06a, 0x201c06c - 0x201c06a


.thumb
Function_201c06c: @ 201c06c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r3
	mov     r4, r0
	mov     r0, r1
	lsl     r3, r6, #24
	lsl     r1, r6, #16
	str     r2, [sp, #0x0]
	orr     r1, r3
	lsl     r5, r6, #8
	orr     r1, r5
	orr     r1, r6
	str     r1, [sp, #0x4]
	ldrb    r1, [r4, #0x7]
	ldrb    r3, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	str     r1, [sp, #0x8]
	mul     r1, r3
	lsl     r1, r1, #5
	str     r1, [sp, #0xc]
	cmp     r0, #0x3
	bhi     branch_201c152
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r2, #1
	lsl     r4, r5, #2
	lsl     r4, r5, #2
	mov     r0, r1
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_201c152
	mov     r0, #0x7
	mov     lr, r0
.thumb
branch_201c0b8: @ 201c0b8 :thumb
	ldr     r3, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_201c0be: @ 201c0be :thumb
	mov     r0, #0x7
	mov     r6, r3
	and     r6, r0
	mov     r1, r3
	mov     r0, lr
	bic     r1, r0
	ldr     r0, [sp, #0x8]
	mul     r1, r0
	mov     r0, r6
	orr     r0, r1
	lsl     r0, r0, #2
	add     r1, r7, r0
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	bge     branch_201c0e0
	ldr     r0, [r2, r1]
	b       branch_201c0e2
@ 0x201c0e0

.thumb
branch_201c0e0: @ 201c0e0 :thumb
	ldr     r0, [sp, #0x4]
.thumb
branch_201c0e2: @ 201c0e2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r2, r5]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_201c0be
	ldr     r0, [sp, #0xc]
	add     r7, #0x20
	cmp     r7, r0
	blt     branch_201c0b8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x201c0fa


.incbin "baserom/arm9.bin", 0x1c0fa, 0x201c152 - 0x201c0fa


.thumb
branch_201c152: @ 201c152 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x201c156


.incbin "baserom/arm9.bin", 0x1c156, 0x201c158 - 0x201c156


.thumb
Function_201c158: @ 201c158 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r3
	mov     r4, r0
	str     r2, [sp, #0x0]
	lsl     r2, r6, #24
	lsl     r0, r6, #16
	orr     r0, r2
	ldrb    r2, [r4, #0x7]
	ldr     r3, [r4, #0xc]
	lsl     r5, r6, #8
	orr     r0, r5
	ldrb    r4, [r4, #0x8]
	str     r2, [sp, #0x10]
	orr     r0, r6
	mul     r2, r4
	lsl     r2, r2, #6
	str     r2, [sp, #0x1c]
	cmp     r1, #0x3
	bls     branch_201c182
	b       branch_201c288
@ 0x201c182

.thumb
branch_201c182: @ 201c182 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r6, #1
	lsl     r0, r7, #3
	lsl     r0, r7, #3
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r1, r2
	cmp     r1, #0x0
	ble     branch_201c288
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [sp, #0x14]
	mov     r1, #0x7
	mov     lr, r1
.thumb
branch_201c1a8: @ 201c1a8 :thumb
	ldr     r4, [sp, #0x0]
	ldr     r5, [sp, #0xc]
	mov     r7, #0x0
.thumb
branch_201c1ae: @ 201c1ae :thumb
	mov     r1, #0x7
	mov     r6, r4
	and     r6, r1
	mov     r2, r4
	mov     r1, lr
	bic     r2, r1
	ldr     r1, [sp, #0x10]
	mul     r2, r1
	mov     r1, r6
	orr     r1, r2
	lsl     r2, r1, #3
	ldr     r1, [sp, #0xc]
	add     r1, r1, r2
	ldr     r2, [sp, #0x1c]
	cmp     r1, r2
	bge     branch_201c1d4
	ldr     r2, [r3, r1]
	str     r2, [r3, r5]
	b       branch_201c1d6
@ 0x201c1d4

.thumb
branch_201c1d4: @ 201c1d4 :thumb
	str     r0, [r3, r5]
.thumb
branch_201c1d6: @ 201c1d6 :thumb
	add     r2, r1, #0x4
	ldr     r1, [sp, #0x14]
	cmp     r2, r1
	bge     branch_201c1e6
	ldr     r2, [r3, r2]
	add     r1, r5, #0x4
	str     r2, [r3, r1]
	b       branch_201c1ea
@ 0x201c1e6

.thumb
branch_201c1e6: @ 201c1e6 :thumb
	add     r1, r5, #0x4
	str     r0, [r3, r1]
.thumb
branch_201c1ea: @ 201c1ea :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r7, #0x8
	blt     branch_201c1ae
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x1c]
	add     r2, #0x40
	str     r2, [sp, #0xc]
	cmp     r2, r1
	blt     branch_201c1a8
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x201c204


.incbin "baserom/arm9.bin", 0x1c204, 0x201c288 - 0x201c204


.thumb
branch_201c288: @ 201c288 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x201c28c


.incbin "baserom/arm9.bin", 0x1c28c, 0x201c290 - 0x201c28c


.thumb
Function_201c290: @ 201c290 :thumb
	ldrb    r0, [r0, #0x4]
	bx      lr
@ 0x201c294

.thumb
Function_201c294: @ 201c294 :thumb
	ldrb    r0, [r0, #0x7]
	bx      lr
@ 0x201c298

.thumb
Function_201c298: @ 201c298 :thumb
	ldrb    r0, [r0, #0x8]
	bx      lr
@ 0x201c29c

.thumb
Function_201c29c: @ 201c29c :thumb
	ldrb    r0, [r0, #0x5]
	bx      lr
@ 0x201c2a0

.thumb
Function_201c2a0: @ 201c2a0 :thumb
	ldrb    r0, [r0, #0x6]
	bx      lr
@ 0x201c2a4


.incbin "baserom/arm9.bin", 0x1c2a4, 0x201c3c0 - 0x201c2a4


.thumb
Function_201c3c0: @ 201c3c0 :thumb
	ldrh    r3, [r0, #0x6]
	mov     r2, #0x1
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strh    r1, [r0, #0x6]
	bx      lr
@ 0x201c3ce


.incbin "baserom/arm9.bin", 0x1c3ce, 0x201ccf0 - 0x201c3ce


.thumb
Function_201ccf0: @ 201ccf0 :thumb
	str     r0, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r1, #0x8]
	str     r0, [r1, #0x4]
	mov     r0, #0x0
	str     r0, [r1, #0xc]
	str     r0, [r1, #0x10]
	str     r0, [r1, #0x14]
	bx      lr
@ 0x201cd02


.incbin "baserom/arm9.bin", 0x1cd02, 0x201cd04 - 0x201cd02


.thumb
Function_201cd04: @ 201cd04 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_201cd32
	mov     r4, r7
	mov     r6, r7
.thumb
branch_201cd14: @ 201cd14 :thumb
	ldr     r1, [r5, #0x24]
	mov     r0, r5
	add     r1, r1, r4
	bl      Function_201ccf0
	ldr     r0, [r5, #0x24]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, r0, r4
	ldr     r0, [r5, #0x20]
	add     r4, #0x1c
	str     r1, [r0, r6]
	ldrh    r0, [r5, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, r0
	blt     branch_201cd14
.thumb
branch_201cd32: @ 201cd32 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x2]
	pop     {r3-r7,pc}
@ 0x201cd38

.thumb
Function_201cd38: @ 201cd38 :thumb
	ldrh    r3, [r0, #0x2]
	ldrh    r1, [r0, #0x0]
	cmp     r3, r1
	bne     branch_201cd44
	mov     r0, #0x0
	bx      lr
@ 0x201cd44

.thumb
branch_201cd44: @ 201cd44 :thumb
	ldr     r2, [r0, #0x20]
	lsl     r1, r3, #2
	ldr     r2, [r2, r1]
	add     r1, r3, #0x1
	strh    r1, [r0, #0x2]
	mov     r0, r2
	bx      lr
@ 0x201cd52


.incbin "baserom/arm9.bin", 0x1cd52, 0x201cd80 - 0x201cd52


.thumb
Function_201cd80: @ 201cd80 :thumb
	lsl     r0, r0, #5
	add     r0, #0x34
	bx      lr
@ 0x201cd86


.incbin "baserom/arm9.bin", 0x1cd86, 0x201cd88 - 0x201cd86


.thumb
Function_201cd88: @ 201cd88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_201cd94
	bl      Function_2022974
.thumb
branch_201cd94: @ 201cd94 :thumb
	mov     r1, r4
	add     r1, #0x34
	lsl     r0, r5, #2
	str     r1, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [r4, #0x24]
	strh    r5, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
	str     r0, [r4, #0x28]
	mov     r0, r4
	bl      Function_201cdb4
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x201cdb2


.incbin "baserom/arm9.bin", 0x1cdb2, 0x201cdb4 - 0x201cdb2


.thumb
Function_201cdb4: @ 201cdb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201cd04
	str     r4, [r4, #0x4]
	add     r0, r4, #0x4
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x201cdd2


.incbin "baserom/arm9.bin", 0x1cdd2, 0x201cdd4 - 0x201cdd2


.thumb
Function_201cdd4: @ 201cdd4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	bne     branch_201ce10
	ldr     r1, [r5, #0xc]
	add     r4, r5, #0x4
	str     r1, [r5, #0x2c]
	cmp     r1, r4
	beq     branch_201ce0c
	mov     r6, #0x0
.thumb
branch_201cdea: @ 201cdea :thumb
	ldr     r0, [r1, #0x8]
	str     r0, [r5, #0x30]
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r0, #0x18]
	cmp     r1, #0x0
	bne     branch_201ce02
	ldr     r2, [r0, #0x14]
	cmp     r2, #0x0
	beq     branch_201ce04
	ldr     r1, [r0, #0x10]
	blx     r2
	b       branch_201ce04
@ 0x201ce02

.thumb
branch_201ce02: @ 201ce02 :thumb
	str     r6, [r0, #0x18]
.thumb
branch_201ce04: @ 201ce04 :thumb
	ldr     r1, [r5, #0x30]
	str     r1, [r5, #0x2c]
	cmp     r1, r4
	bne     branch_201cdea
.thumb
branch_201ce0c: @ 201ce0c :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x14]
.thumb
branch_201ce10: @ 201ce10 :thumb
	pop     {r4-r6,pc}
@ 0x201ce12


.incbin "baserom/arm9.bin", 0x1ce12, 0x201ce14 - 0x201ce12


.thumb
Function_201ce14: @ 201ce14 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x1
	str     r5, [r4, #0x28]
	bl      Function_201ce28
	mov     r1, #0x0
	str     r1, [r4, #0x28]
	pop     {r3-r5,pc}
@ 0x201ce26


.incbin "baserom/arm9.bin", 0x1ce26, 0x201ce28 - 0x201ce26


.thumb
Function_201ce28: @ 201ce28 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	bl      Function_201cd38
	cmp     r0, #0x0
	bne     branch_201ce3e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x201ce3e

.thumb
branch_201ce3e: @ 201ce3e :thumb
	str     r4, [r0, #0xc]
	str     r7, [r0, #0x10]
	str     r6, [r0, #0x14]
	ldr     r2, [r5, #0x2c]
	ldr     r1, [r2, #0x14]
	cmp     r1, #0x0
	beq     branch_201ce5e
	ldr     r1, [r2, #0xc]
	cmp     r1, r4
	bhi     branch_201ce58
	mov     r1, #0x1
	str     r1, [r0, #0x18]
	b       branch_201ce62
@ 0x201ce58

.thumb
branch_201ce58: @ 201ce58 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	b       branch_201ce62
@ 0x201ce5e

.thumb
branch_201ce5e: @ 201ce5e :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x18]
.thumb
branch_201ce62: @ 201ce62 :thumb
	ldr     r3, [r5, #0xc]
	add     r2, r5, #0x4
	cmp     r3, r2
	beq     branch_201ce8e
	ldr     r4, [r0, #0xc]
.thumb
branch_201ce6c: @ 201ce6c :thumb
	ldr     r1, [r3, #0xc]
	cmp     r1, r4
	bls     branch_201ce88
	ldr     r1, [r3, #0x4]
	str     r1, [r0, #0x4]
	str     r3, [r0, #0x8]
	ldr     r1, [r3, #0x4]
	str     r0, [r1, #0x8]
	str     r0, [r3, #0x4]
	ldr     r1, [r5, #0x30]
	cmp     r3, r1
	bne     branch_201cea6
	str     r0, [r5, #0x30]
	pop     {r3-r7,pc}
@ 0x201ce88

.thumb
branch_201ce88: @ 201ce88 :thumb
	ldr     r3, [r3, #0x8]
	cmp     r3, r2
	bne     branch_201ce6c
.thumb
branch_201ce8e: @ 201ce8e :thumb
	ldr     r2, [r5, #0x30]
	add     r1, r5, #0x4
	cmp     r2, r1
	bne     branch_201ce98
	str     r0, [r5, #0x30]
.thumb
branch_201ce98: @ 201ce98 :thumb
	ldr     r1, [r5, #0x8]
	str     r1, [r0, #0x4]
	add     r1, r5, #0x4
	str     r1, [r0, #0x8]
	ldr     r1, [r5, #0x8]
	str     r0, [r1, #0x8]
	str     r0, [r5, #0x8]
.thumb
branch_201cea6: @ 201cea6 :thumb
	pop     {r3-r7,pc}
@ 0x201cea8


.incbin "baserom/arm9.bin", 0x1cea8, 0x201ced0 - 0x201cea8


.thumb
Function_201ced0: @ 201ced0 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x201ced4


.incbin "baserom/arm9.bin", 0x1ced4, 0x201cfec - 0x201ced4


.thumb
Function_201cfec: @ 201cfec :thumb
	push    {r4-r6,lr}
	mov     r6, r3
	mov     r4, r2
	mov     r2, r6
	mov     r5, r1
	mov     r1, r6
	add     r2, #0x8
	bl      Function_201d090
	mov     r2, r6
	mov     r0, r5
	add     r1, r6, #0x2
	add     r2, #0xc
	bl      Function_201d090
	add     r1, r6, #0x4
	add     r6, #0x10
	mov     r0, r4
	mov     r2, r6
	bl      Function_201d090
	pop     {r4-r6,pc}
@ 0x201d018


.incbin "baserom/arm9.bin", 0x1d018, 0x201d090 - 0x201d018


.thumb
Function_201d090: @ 201d090 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x30] @ 0x201d0c4, (=#0x7fff)
	mov     r3, #0x0
	cmp     r0, r4
	bcc     branch_201d0a6
.thumb
branch_201d09a: @ 201d09a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r0, r0, #1
	lsr     r3, r3, #24
	cmp     r0, r4
	bcs     branch_201d09a
.thumb
branch_201d0a6: @ 201d0a6 :thumb
	strh    r0, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [r2, #0x0]
	cmp     r3, #0x0
	ble     branch_201d0be
.thumb
branch_201d0b2: @ 201d0b2 :thumb
	ldr     r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r0, r0, #1
	str     r0, [r2, #0x0]
	cmp     r1, r3
	blt     branch_201d0b2
.thumb
branch_201d0be: @ 201d0be :thumb
	pop     {r3,r4}
	bx      lr
@ 0x201d0c2


.incbin "baserom/arm9.bin", 0x1d0c2, 0x201d0c4 - 0x201d0c2


.word 0x7fff @ 0x201d0c4
.thumb
Function_201d0c8: @ 201d0c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x201d0ec, (=#0xfffe)
	cmp     r1, r0
	beq     branch_201d0d8
	bl      Function_2022974
.thumb
branch_201d0d8: @ 201d0d8 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x201d0ec, (=#0xfffe)
	cmp     r1, r0
	bne     branch_201d0e8
	ldrh    r0, [r4, #0x4]
	add     r1, r4, #0x6
	lsl     r0, r0, #1
	add     r4, r1, r0
.thumb
branch_201d0e8: @ 201d0e8 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x201d0ec

.word 0xfffe @ 0x201d0ec
.thumb
Function_201d0f0: @ 201d0f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x201d104, (=#0xfffe)
	cmp     r1, r0
	beq     branch_201d100
	bl      Function_2022974
.thumb
branch_201d100: @ 201d100 :thumb
	ldrh    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x201d104

.word 0xfffe @ 0x201d104
.thumb
Function_201d108: @ 201d108 :thumb
	push    {r3,lr}
	bl      Function_201d0f0
	mov     r1, #0xff
	lsl     r1, r1, #8
	and     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	cmp     r1, r0
	beq     branch_201d12c
	mov     r0, #0x6
	lsl     r0, r0, #8
	cmp     r1, r0
	beq     branch_201d12c
	mov     r0, #0x5
	lsl     r0, r0, #8
	cmp     r1, r0
	bne     branch_201d130
.thumb
branch_201d12c: @ 201d12c :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x201d130

.thumb
branch_201d130: @ 201d130 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x201d134

.thumb
Function_201d134: @ 201d134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x18] @ 0x201d158, (=#0xfffe)
	cmp     r1, r0
	beq     branch_201d146
	bl      Function_2022974
.thumb
branch_201d146: @ 201d146 :thumb
	ldrh    r0, [r5, #0x4]
	cmp     r4, r0
	bcc     branch_201d150
	bl      Function_2022974
.thumb
branch_201d150: @ 201d150 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x6]
	pop     {r3-r5,pc}
@ 0x201d158

.word 0xfffe @ 0x201d158

.incbin "baserom/arm9.bin", 0x1d15c, 0x201d2d0 - 0x201d15c


.thumb
Function_201d2d0: @ 201d2d0 :thumb
	ldr     r0, [pc, #0x4] @ 0x201d2d8, (=#0x21bfb10)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x201d2d6


.incbin "baserom/arm9.bin", 0x1d2d6, 0x201d2d8 - 0x201d2d6


.word 0x21bfb10 @ 0x201d2d8
.thumb
SetPRNGSeed: @ 201d2dc :thumb
	ldr     r1, [pc, #0x4] @ 0x201d2e4, (=#0x21bfb10)
	str     r0, [r1, #0x4]
	bx      lr
@ 0x201d2e2


.incbin "baserom/arm9.bin", 0x1d2e2, 0x201d2e4 - 0x201d2e2


.word 0x21bfb10 @ 0x201d2e4
.thumb
PRNG: @ 201d2e8 :thumb
	ldr     r1, [pc, #0x14] @ 0x201d300, (=#0x21bfb10)
	ldr     r0, [pc, #0x18] @ 0x201d304, (=#0x41c64e6d)
	ldr     r2, [r1, #0x4]
	mov     r3, r2
	mul     r3, r0
	ldr     r0, [pc, #0x14] @ 0x201d308, (=#0x6073)
	add     r0, r3, r0
	str     r0, [r1, #0x4]
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x201d300

.word 0x21bfb10 @ 0x201d300
.word 0x41c64e6d @ 0x201d304
.word 0x6073 @ 0x201d308
.thumb
Function_201d30c: @ 201d30c :thumb
	ldr     r1, [pc, #0x4] @ 0x201d314, (=#0x6c078965)
	mul     r1, r0
	add     r0, r1, #0x1
	bx      lr
@ 0x201d314

.word 0x6c078965 @ 0x201d314
.thumb
SetIRNGSeed: @ 201d318 :thumb
	push    {r4,r5}
	ldr     r1, [pc, #0x30] @ 0x201d34c, (=#0x21bfb10)
	mov     r4, #0x27
	str     r0, [r1, #0x8]
	ldr     r1, [pc, #0x2c] @ 0x201d350, (=#0x2100834)
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x201d354, (=#0x21bfb1c)
	ldr     r3, [pc, #0x2c] @ 0x201d358, (=#0x6c078965)
	lsl     r4, r4, #4
.thumb
branch_201d32c: @ 201d32c :thumb
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r5, [r2, #0x0]
	lsr     r2, r5, #30
	eor     r2, r5
	mov     r5, r2
	mul     r5, r3
	add     r2, r0, r5
	.hword  0x1c40 @ add r0, r0, #0x1
	stmia   r1!, {r2}
	cmp     r0, r4
	blt     branch_201d32c
	ldr     r1, [pc, #0xc] @ 0x201d350, (=#0x2100834)
	str     r0, [r1, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x201d34a


.incbin "baserom/arm9.bin", 0x1d34a, 0x201d34c - 0x201d34a


.word 0x21bfb10 @ 0x201d34c
.word 0x2100834 @ 0x201d350
.word 0x21bfb1c @ 0x201d354
.word 0x6c078965 @ 0x201d358

.incbin "baserom/arm9.bin", 0x1d35c, 0x201d5b8 - 0x201d35c


.thumb
Function_201d5b8: @ 201d5b8 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	mov     r4, r3
	cmp     r1, #0x0
	bls     branch_201d5ce
.thumb
branch_201d5c2: @ 201d5c2 :thumb
	ldrb    r2, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r3, r2
	cmp     r4, r1
	bcc     branch_201d5c2
.thumb
branch_201d5ce: @ 201d5ce :thumb
	mov     r0, r3
	pop     {r3,r4}
	bx      lr
@ 0x201d5d4

.thumb
Function_201d5d4: @ 201d5d4 :thumb
	push    {r0-r3}
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, #0x0
	lsr     r6, r1, #1
	beq     branch_201d5f6
	add     r7, sp, #0x20
.thumb
branch_201d5e2: @ 201d5e2 :thumb
	mov     r0, r7
	bl      Function_201d608
	ldrh    r1, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	eor     r0, r1
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r6
	bcc     branch_201d5e2
.thumb
branch_201d5f6: @ 201d5f6 :thumb
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x201d5fe


.incbin "baserom/arm9.bin", 0x1d5fe, 0x201d600 - 0x201d5fe


.thumb
Function_201d600: @ 201d600 :thumb
	ldr     r3, [pc, #0x0] @ 0x201d604, (=#0x201d5d5)
	bx      r3
@ 0x201d604

.word 0x201d5d5 @ 0x201d604
.thumb
Function_201d608: @ 201d608 :thumb
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x201d620, (=#0x41c64e6d)
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x10] @ 0x201d624, (=#0x6073)
	add     r1, r3, r1
	str     r1, [r0, #0x0]
	lsr     r0, r1, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x201d61e


.incbin "baserom/arm9.bin", 0x1d61e, 0x201d620 - 0x201d61e


.word 0x41c64e6d @ 0x201d620
.word 0x6073 @ 0x201d624
.thumb
Function_201d628: @ 201d628 :thumb
	mov     r3, r0
	mov     r2, r1
	ldr     r0, [pc, #0x8] @ 0x201d638, (=#0x21bfb10)
	mov     r1, r3
	ldr     r3, [pc, #0x8] @ 0x201d63c, (=#0x20d32fc)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x201d636


.incbin "baserom/arm9.bin", 0x1d636, 0x201d638 - 0x201d636


.word 0x21bfb10 @ 0x201d638
.word 0x20d32fc @ 0x201d63c
.thumb
Function_201d640: @ 201d640 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x201d668, (=#0x21bfb10)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_201d650
	bl      Function_2022974
.thumb
branch_201d650: @ 201d650 :thumb
	mov     r1, #0x2
	mov     r0, r4
	lsl     r1, r1, #8
	bl      Function_2018144
	ldr     r1, [pc, #0xc] @ 0x201d668, (=#0x21bfb10)
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x201d66c, (=#0x1021)
	blx     Function_20d3120
	pop     {r4,pc}
@ 0x201d666


.incbin "baserom/arm9.bin", 0x1d666, 0x201d668 - 0x201d666


.word 0x21bfb10 @ 0x201d668
.word 0x1021 @ 0x201d66c
.thumb
Function_201d670: @ 201d670 :thumb
	ldr     r1, [pc, #0x4] @ 0x201d678, (=#0x2100840)
	str     r0, [r1, #0x0]
	bx      lr
@ 0x201d676


.incbin "baserom/arm9.bin", 0x1d676, 0x201d678 - 0x201d676


.word 0x2100840 @ 0x201d678
.thumb
Function_201d67c: @ 201d67c :thumb
	push    {r4-r6,lr}
	ldr     r4, [pc, #0x2c] @ 0x201d6ac, (=#0x21c04e0)
	mov     r5, #0x0
.thumb
branch_201d682: @ 201d682 :thumb
	ldr     r3, [r4, #0x0]
	cmp     r3, #0x0
	bne     branch_201d69c
	ldr     r6, [pc, #0x20] @ 0x201d6ac, (=#0x21c04e0)
	lsl     r4, r5, #2
	bl      Function_200da20
	str     r0, [r6, r4]
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	bne     branch_201d6a4
	mov     r5, #0x8
	b       branch_201d6a4
@ 0x201d69c

.thumb
branch_201d69c: @ 201d69c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_201d682
.thumb
branch_201d6a4: @ 201d6a4 :thumb
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	pop     {r4-r6,pc}
@ 0x201d6aa


.incbin "baserom/arm9.bin", 0x1d6aa, 0x201d6ac - 0x201d6aa


.word 0x21c04e0 @ 0x201d6ac

.incbin "baserom/arm9.bin", 0x1d6b0, 0x201d710 - 0x201d6b0


.thumb
Function_201d710: @ 201d710 :thumb
	mov     r1, #0x0
	ldr     r2, [pc, #0xc] @ 0x201d720, (=#0x21c04e0)
	mov     r0, r1
.thumb
branch_201d716: @ 201d716 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x8
	blt     branch_201d716
	bx      lr
@ 0x201d720

.word 0x21c04e0 @ 0x201d720

.incbin "baserom/arm9.bin", 0x1d724, 0x201d738 - 0x201d724


.thumb
Function_201d738: @ 201d738 :thumb
	push    {lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x0
	strb    r1, [r2, #0x9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #0xa]
	strb    r0, [r2, #0xb]
	strh    r3, [r2, #0xc]
	strh    r0, [r2, #0xe]
	ldr     r0, [pc, #0x38] @ 0x201d788, (=#0x2100840)
	lsl     r1, r1, #3
	ldr     r0, [r0, #0x0]
	add     r1, r0, r1
	ldrb    r0, [r1, #0x2]
	strh    r0, [r2, #0x10]
	ldrb    r0, [r1, #0x3]
	strh    r0, [r2, #0x12]
	ldrb    r0, [r1, #0x4]
	strb    r0, [r2, #0x14]
	ldrb    r0, [r1, #0x5]
	strb    r0, [r2, #0x15]
	ldrb    r0, [r1, #0x6]
	strb    r0, [r2, #0x16]
	ldrb    r0, [r1, #0x7]
	ldr     r1, [sp, #0x24]
	strb    r0, [r2, #0x17]
	mov     r0, #0x0
	strh    r0, [r2, #0x18]
	strb    r0, [r2, #0x1a]
	mov     r0, #0xff
	strb    r0, [r2, #0x1b]
	ldr     r2, [sp, #0x28]
	add     r0, sp, #0x0
	bl      Function_201d834
	add     sp, #0x1c
	pop     {pc}
@ 0x201d786


.incbin "baserom/arm9.bin", 0x1d786, 0x201d788 - 0x201d786


.word 0x2100840 @ 0x201d788
.thumb
Function_201d78c: @ 201d78c :thumb
	push    {lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x0
	strb    r1, [r2, #0x9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #0xa]
	strb    r0, [r2, #0xb]
	strh    r3, [r2, #0xc]
	strh    r0, [r2, #0xe]
	ldr     r0, [pc, #0x38] @ 0x201d7dc, (=#0x2100840)
	lsl     r1, r1, #3
	ldr     r0, [r0, #0x0]
	add     r1, r0, r1
	ldrb    r0, [r1, #0x2]
	strh    r0, [r2, #0x10]
	ldrb    r0, [r1, #0x3]
	strh    r0, [r2, #0x12]
	ldrb    r0, [r1, #0x4]
	ldr     r1, [sp, #0x28]
	strb    r0, [r2, #0x14]
	lsr     r0, r1, #16
	strb    r0, [r2, #0x15]
	lsr     r0, r1, #8
	strb    r0, [r2, #0x17]
	strb    r1, [r2, #0x16]
	mov     r0, #0x0
	strh    r0, [r2, #0x18]
	strb    r0, [r2, #0x1a]
	mov     r0, #0xff
	strb    r0, [r2, #0x1b]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x2c]
	add     r0, sp, #0x0
	bl      Function_201d834
	add     sp, #0x1c
	pop     {pc}
@ 0x201d7da


.incbin "baserom/arm9.bin", 0x1d7da, 0x201d7dc - 0x201d7da


.word 0x2100840 @ 0x201d7dc
.thumb
Function_201d7e0: @ 201d7e0 :thumb
	push    {lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x0
	strb    r1, [r2, #0x9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #0xa]
	strb    r0, [r2, #0xb]
	strh    r3, [r2, #0xc]
	strh    r0, [r2, #0xe]
	ldr     r0, [sp, #0x2c]
	strh    r0, [r2, #0x10]
	ldr     r0, [sp, #0x30]
	strh    r0, [r2, #0x12]
	ldr     r0, [pc, #0x30] @ 0x201d830, (=#0x2100840)
	ldr     r3, [r0, #0x0]
	lsl     r0, r1, #3
	add     r0, r3, r0
	ldrb    r0, [r0, #0x4]
	ldr     r1, [sp, #0x28]
	strb    r0, [r2, #0x14]
	lsr     r0, r1, #16
	strb    r0, [r2, #0x15]
	lsr     r0, r1, #8
	strb    r0, [r2, #0x17]
	strb    r1, [r2, #0x16]
	mov     r0, #0x0
	strh    r0, [r2, #0x18]
	strb    r0, [r2, #0x1a]
	mov     r0, #0xff
	strb    r0, [r2, #0x1b]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x34]
	add     r0, sp, #0x0
	bl      Function_201d834
	add     sp, #0x1c
	pop     {pc}
@ 0x201d82e


.incbin "baserom/arm9.bin", 0x1d82e, 0x201d830 - 0x201d82e


.word 0x2100840 @ 0x201d830
.thumb
Function_201d834: @ 201d834 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x134] @ 0x201d970, (=#0x2100840)
	mov     r6, r1
	ldr     r0, [r0, #0x0]
	mov     r5, r2
	cmp     r0, #0x0
	bne     branch_201d848
	mov     r0, #0xff
	pop     {r3-r7,pc}
@ 0x201d848

.thumb
branch_201d848: @ 201d848 :thumb
	mov     r0, #0x0
	mov     r1, #0x34
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x1
	add     r0, #0x27
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	add     r0, #0x28
	strb    r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r2, [r0, #0x0]
	mov     r0, #0x7f
	bic     r2, r0
	lsl     r0, r6, #24
	lsr     r1, r0, #24
	mov     r0, #0x7f
	and     r0, r1
	mov     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x2a
	strb    r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x2b
	strb    r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x2d
	strb    r3, [r0, #0x0]
	mov     r1, r3
.thumb
branch_201d890: @ 201d890 :thumb
	add     r0, r4, r3
	add     r0, #0x20
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r1, [r0, #0x0]
	cmp     r3, #0x7
	blt     branch_201d890
	mov     r3, r7
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_2023e2c
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x201d974, (=#0x21c04d8)
	str     r5, [r4, #0x1c]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_201db48
	cmp     r6, #0xff
	beq     branch_201d916
	cmp     r6, #0x0
	beq     branch_201d916
	mov     r0, r4
	add     r0, #0x29
	ldrb    r2, [r0, #0x0]
	mov     r1, #0x7f
	mov     r0, r2
	bic     r0, r1
	lsl     r1, r2, #25
	lsr     r1, r1, #25
	add     r1, #0xff
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	mov     r1, #0x7f
	and     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x80
	mov     r2, #0x1
	orr     r1, r0
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x74] @ 0x201d978, (=#0x201d97d)
	mov     r1, r4
	bl      Function_201d67c
	mov     r1, r4
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
	add     r4, #0x2c
	ldrb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x201d916

.thumb
branch_201d916: @ 201d916 :thumb
	mov     r0, r4
	add     r0, #0x29
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x7f
	mov     r5, #0x0
	bic     r1, r0
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x80
	bic     r1, r0
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r7, #0x15]
	ldrb    r1, [r7, #0x16]
	ldrb    r2, [r7, #0x17]
	bl      Function_201d9fc
	mov     r7, #0x1
	lsl     r7, r7, #10
.thumb
branch_201d946: @ 201d946 :thumb
	mov     r0, r4
	bl      Function_201d9e8
	cmp     r0, #0x1
	beq     branch_201d956
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	bcc     branch_201d946
.thumb
branch_201d956: @ 201d956 :thumb
	cmp     r6, #0xff
	beq     branch_201d960
	ldr     r0, [r4, #0x4]
	bl      Function_201a954
.thumb
branch_201d960: @ 201d960 :thumb
	mov     r0, r4
	bl      Function_201dbd8
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, #0x8
	pop     {r3-r7,pc}
@ 0x201d970

.word 0x2100840 @ 0x201d970
.word 0x21c04d8 @ 0x201d974
.word 0x201d97d @ 0x201d978

.incbin "baserom/arm9.bin", 0x1d97c, 0x201d9e8 - 0x201d97c


.thumb
Function_201d9e8: @ 201d9e8 :thumb
	push    {r4,lr}
	mov     r4, r0
.thumb
branch_201d9ec: @ 201d9ec :thumb
	ldrb    r0, [r4, #0x9]
	mov     r1, r4
	bl      Function_2002d18
	cmp     r0, #0x2
	beq     branch_201d9ec
	pop     {r4,pc}
@ 0x201d9fa


.incbin "baserom/arm9.bin", 0x1d9fa, 0x201d9fc - 0x201d9fa


.thumb
Function_201d9fc: @ 201d9fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r3, [pc, #0x94] @ 0x201da98, (=#0x21c04d8)
	mov     r5, #0x0
	str     r5, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r2, [sp, #0x28]
	str     r1, [sp, #0x2c]
	strh    r1, [r3, #0x6]
	strh    r0, [r3, #0x2]
	add     r0, sp, #0x20
	strh    r2, [r3, #0x4]
	str     r5, [sp, #0x14]
	str     r0, [sp, #0x8]
	mov     r12, r0
	mov     lr, r0
	str     r0, [sp, #0x18]
.thumb
branch_201da1e: @ 201da1e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x1c]
.thumb
branch_201da2c: @ 201da2c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, lr
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	lsl     r7, r0, #4
.thumb
branch_201da3a: @ 201da3a :thumb
	ldr     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r0, [r0, #0x0]
	mov     r4, r12
	lsl     r6, r0, #8
.thumb
branch_201da44: @ 201da44 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	lsl     r0, r0, #12
	orr     r0, r6
	orr     r1, r0
	ldr     r0, [sp, #0x1c]
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r2, r0
	orr     r2, r1
	lsl     r1, r5, #1
	ldr     r0, [pc, #0x40] @ 0x201da9c, (=#0x21c0500)
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	strh    r2, [r0, r1]
	cmp     r3, #0x4
	blt     branch_201da44
	ldr     r0, [sp, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x4
	blt     branch_201da3a
	ldr     r0, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_201da2c
	ldr     r0, [sp, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_201da1e
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x201da98

.word 0x21c04d8 @ 0x201da98
.word 0x21c0500 @ 0x201da9c

.incbin "baserom/arm9.bin", 0x1daa0, 0x201db48 - 0x201daa0


.thumb
Function_201db48: @ 201db48 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bx      lr
@ 0x201db4e


.incbin "baserom/arm9.bin", 0x1db4e, 0x201dbd8 - 0x201db4e


.thumb
Function_201dbd8: @ 201dbd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_201dbea
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x30]
.thumb
branch_201dbea: @ 201dbea :thumb
	pop     {r4,pc}
@ 0x201dbec


.incbin "baserom/arm9.bin", 0x1dbec, 0x201e4ec - 0x201dbec


.thumb
Function_201e4ec: @ 201e4ec :thumb
	push    {r4-r6,lr}
	ldr     r0, [pc, #0x3c] @ 0x201e52c, (=#0x21c0744)
	mov     r5, #0x0
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x0
	bne     branch_201e4fc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x201e4fc

.thumb
branch_201e4fc: @ 201e4fc :thumb
	mov     r4, #0x4
	mov     r6, r4
.thumb
branch_201e500: @ 201e500 :thumb
	blx     Function_20ca110
	mov     r0, r4
	blx     Function_20ca60c
	mov     r0, r6
	blx     Function_20ca624
	cmp     r0, #0x0
	beq     branch_201e516
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_201e516: @ 201e516 :thumb
	cmp     r0, #0x0
	beq     branch_201e51e
	cmp     r5, #0x5
	bls     branch_201e500
.thumb
branch_201e51e: @ 201e51e :thumb
	cmp     r5, #0x5
	bls     branch_201e526
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x201e526

.thumb
branch_201e526: @ 201e526 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x201e52a


.incbin "baserom/arm9.bin", 0x1e52a, 0x201e52c - 0x201e52a


.word 0x21c0744 @ 0x201e52c

.incbin "baserom/arm9.bin", 0x1e530, 0x201e5fc - 0x201e530


.thumb
Function_201e5fc: @ 201e5fc :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x28] @ 0x201e628, (=#0x21c0744)
	ldrh    r1, [r0, #0x1a]
	cmp     r1, #0x0
	beq     branch_201e624
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_201e624
	ldr     r0, [pc, #0x1c] @ 0x201e62c, (=#0x21c0704)
	ldr     r0, [r0, #0x8]
	lsr     r0, r0, #1
	bl      Function_201e658
	cmp     r0, #0x1
	beq     branch_201e61e
	bl      Function_2022974
.thumb
branch_201e61e: @ 201e61e :thumb
	ldr     r0, [pc, #0x8] @ 0x201e628, (=#0x21c0744)
	mov     r1, #0x0
	strh    r1, [r0, #0x1a]
.thumb
branch_201e624: @ 201e624 :thumb
	pop     {r3,pc}
@ 0x201e626


.incbin "baserom/arm9.bin", 0x1e626, 0x201e628 - 0x201e626


.word 0x21c0744 @ 0x201e628
.word 0x21c0704 @ 0x201e62c
.thumb
Function_201e630: @ 201e630 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x201e654, (=#0x21c0744)
	ldrh    r1, [r0, #0x1a]
	cmp     r1, #0x1
	beq     branch_201e652
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_201e652
	bl      Function_201e4ec
	cmp     r0, #0x1
	beq     branch_201e64c
	bl      Function_2022974
.thumb
branch_201e64c: @ 201e64c :thumb
	ldr     r0, [pc, #0x4] @ 0x201e654, (=#0x21c0744)
	mov     r1, #0x1
	strh    r1, [r0, #0x1a]
.thumb
branch_201e652: @ 201e652 :thumb
	pop     {r3,pc}
@ 0x201e654

.word 0x21c0744 @ 0x201e654
.thumb
Function_201e658: @ 201e658 :thumb
	push    {r3-r7,lr}
	mov     r5, #0x0
	lsl     r0, r0, #16
	ldr     r7, [pc, #0x38] @ 0x201e698, (=#0x21c0710)
	mov     r6, r5
	lsr     r4, r0, #16
.thumb
branch_201e664: @ 201e664 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	mov     r3, #0x9
	blx     Function_20ca010
	mov     r0, #0x2
	blx     Function_20ca60c
	mov     r0, #0x2
	blx     Function_20ca624
	cmp     r0, #0x0
	beq     branch_201e682
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_201e682: @ 201e682 :thumb
	cmp     r0, #0x0
	beq     branch_201e68a
	cmp     r5, #0x5
	ble     branch_201e664
.thumb
branch_201e68a: @ 201e68a :thumb
	cmp     r5, #0x5
	ble     branch_201e692
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x201e692

.thumb
branch_201e692: @ 201e692 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x201e696


.incbin "baserom/arm9.bin", 0x1e696, 0x201e698 - 0x201e696


.word 0x21c0710 @ 0x201e698

.incbin "baserom/arm9.bin", 0x1e69c, 0x201ebdc - 0x201e69c


.thumb
Function_201ebdc: @ 201ebdc :thumb
	push    {r4,lr}
	bl      Function_201f03c
	mov     r4, r0
	bne     branch_201ebea
	bl      Function_2022974
.thumb
branch_201ebea: @ 201ebea :thumb
	mov     r0, r4
	add     r0, #0x3c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_201ebf8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x201ebf8

.thumb
branch_201ebf8: @ 201ebf8 :thumb
	add     r4, #0x10
	mov     r0, r4
	pop     {r4,pc}
@ 0x201ebfe


.incbin "baserom/arm9.bin", 0x1ebfe, 0x201f03c - 0x201ebfe


.thumb
Function_201f03c: @ 201f03c :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x30] @ 0x201f070, (=#0x21c0760)
	mov     r1, #0x0
	ldr     r5, [r2, #0x0]
	ldr     r2, [r5, #0x4]
	cmp     r2, #0x0
	ble     branch_201f068
	ldr     r2, [r5, #0x0]
	mov     r4, r2
.thumb
branch_201f04e: @ 201f04e :thumb
	ldr     r3, [r4, #0xc]
	cmp     r0, r3
	bne     branch_201f05e
	mov     r0, #0x54
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,r5}
	bx      lr
@ 0x201f05e

.thumb
branch_201f05e: @ 201f05e :thumb
	ldr     r3, [r5, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #0x54
	cmp     r1, r3
	blt     branch_201f04e
.thumb
branch_201f068: @ 201f068 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x201f06e


.incbin "baserom/arm9.bin", 0x1f06e, 0x201f070 - 0x201f06e


.word 0x21c0760 @ 0x201f070

.incbin "baserom/arm9.bin", 0x1f074, 0x201fa58 - 0x201f074


.thumb
Function_201fa58: @ 201fa58 :thumb
	push    {r3,lr}
	bl      Function_201fc18
	cmp     r0, #0x0
	bne     branch_201fa6c
	bne     branch_201fa68
	bl      Function_2022974
.thumb
branch_201fa68: @ 201fa68 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x201fa6c

.thumb
branch_201fa6c: @ 201fa6c :thumb
	mov     r1, r0
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_201fa7a
	add     r0, #0x10
	pop     {r3,pc}
@ 0x201fa7a

.thumb
branch_201fa7a: @ 201fa7a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x201fa7e


.incbin "baserom/arm9.bin", 0x1fa7e, 0x201fa80 - 0x201fa7e


.thumb
Function_201fa80: @ 201fa80 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_201fc18
	cmp     r0, #0x0
	bne     branch_201fa96
	bne     branch_201fa92
	bl      Function_2022974
.thumb
branch_201fa92: @ 201fa92 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x201fa96

.thumb
branch_201fa96: @ 201fa96 :thumb
	mov     r1, r0
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	beq     branch_201faa4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x201faa4

.thumb
branch_201faa4: @ 201faa4 :thumb
	ldr     r1, [r0, #0x0]
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	beq     branch_201fab0
	mov     r1, #0x1
	str     r1, [r4, #0x18]
.thumb
branch_201fab0: @ 201fab0 :thumb
	add     r0, #0x10
	pop     {r4,pc}
@ 0x201fab4


.incbin "baserom/arm9.bin", 0x1fab4, 0x201fc18 - 0x201fab4


.thumb
Function_201fc18: @ 201fc18 :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x30] @ 0x201fc4c, (=#0x21c0764)
	mov     r1, #0x0
	ldr     r5, [r2, #0x0]
	ldr     r2, [r5, #0x4]
	cmp     r2, #0x0
	ble     branch_201fc44
	ldr     r2, [r5, #0x0]
	mov     r4, r2
.thumb
branch_201fc2a: @ 201fc2a :thumb
	ldr     r3, [r4, #0xc]
	cmp     r0, r3
	bne     branch_201fc3a
	mov     r0, #0x30
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,r5}
	bx      lr
@ 0x201fc3a

.thumb
branch_201fc3a: @ 201fc3a :thumb
	ldr     r3, [r5, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #0x30
	cmp     r1, r3
	blt     branch_201fc2a
.thumb
branch_201fc44: @ 201fc44 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x201fc4a


.incbin "baserom/arm9.bin", 0x1fc4a, 0x201fc4c - 0x201fc4a


.word 0x21c0764 @ 0x201fc4c

.incbin "baserom/arm9.bin", 0x1fc50, 0x201fe94 - 0x201fc50


.thumb
Function_201fe94: @ 201fe94 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_20bec9c
	blx     Function_20becc4
	blx     Function_20bed48
	blx     Function_20bed70
	blx     Function_20becb0
	blx     Function_20bece8
	blx     Function_20bed5c
	blx     Function_20bed98
	blx     Function_20bed0c
	blx     Function_20bed20
	ldr     r0, [r4, #0x0]
	blx     Function_20be004
	ldr     r0, [r4, #0x4]
	blx     Function_20be3e4
	ldr     r0, [r4, #0x8]
	blx     Function_20bea50
	ldr     r0, [r4, #0xc]
	blx     Function_20beb68
	ldr     r0, [r4, #0x10]
	blx     Function_20be294
	ldr     r0, [r4, #0x14]
	blx     Function_20be4e4
	ldr     r0, [r4, #0x18]
	blx     Function_20beaf8
	ldr     r0, [r4, #0x1c]
	blx     Function_20bebe8
	ldr     r0, [r4, #0x20]
	blx     Function_20be590
	ldr     r0, [r4, #0x24]
	blx     Function_20be768
	pop     {r4,pc}
@ 0x201fefe


.incbin "baserom/arm9.bin", 0x1fefe, 0x201ff00 - 0x201fefe


.thumb
Function_201ff00: @ 201ff00 :thumb
	ldr     r0, [pc, #0x4] @ 0x201ff08, (=#0x21c0768)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x201ff08

.word 0x21c0768 @ 0x201ff08
.thumb
Function_201ff0c: @ 201ff0c :thumb
	cmp     r1, #0x1
	bne     branch_201ff1a
	ldr     r1, [pc, #0x2c] @ 0x201ff40, (=#0x21c0768)
	ldr     r1, [r1, #0x4]
	tst     r1, r0
	beq     branch_201ff22
	bx      lr
@ 0x201ff1a

.thumb
branch_201ff1a: @ 201ff1a :thumb
	ldr     r1, [pc, #0x24] @ 0x201ff40, (=#0x21c0768)
	ldr     r1, [r1, #0x4]
	tst     r1, r0
	beq     branch_201ff3c
.thumb
branch_201ff22: @ 201ff22 :thumb
	ldr     r1, [pc, #0x1c] @ 0x201ff40, (=#0x21c0768)
	ldr     r2, [r1, #0x4]
	mov     r3, r2
	eor     r3, r0
	mov     r2, #0x1
	lsl     r2, r2, #26
	str     r3, [r1, #0x4]
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10] @ 0x201ff44, (=#0xffffe0ff)
	and     r1, r0
	lsl     r0, r3, #8
	orr     r0, r1
	str     r0, [r2, #0x0]
.thumb
branch_201ff3c: @ 201ff3c :thumb
	bx      lr
@ 0x201ff3e


.incbin "baserom/arm9.bin", 0x1ff3e, 0x201ff40 - 0x201ff3e


.word 0x21c0768 @ 0x201ff40
.word 0xffffe0ff @ 0x201ff44

.incbin "baserom/arm9.bin", 0x1ff48, 0x201ff68 - 0x201ff48


.thumb
Function_201ff68: @ 201ff68 :thumb
	ldr     r0, [pc, #0x4] @ 0x201ff70, (=#0x21c0768)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x201ff70

.word 0x21c0768 @ 0x201ff70
.thumb
Function_201ff74: @ 201ff74 :thumb
	cmp     r1, #0x1
	bne     branch_201ff82
	ldr     r1, [pc, #0x28] @ 0x201ffa4, (=#0x21c0768)
	ldr     r1, [r1, #0x0]
	tst     r1, r0
	beq     branch_201ff8a
	bx      lr
@ 0x201ff82

.thumb
branch_201ff82: @ 201ff82 :thumb
	ldr     r1, [pc, #0x20] @ 0x201ffa4, (=#0x21c0768)
	ldr     r1, [r1, #0x0]
	tst     r1, r0
	beq     branch_201ffa2
.thumb
branch_201ff8a: @ 201ff8a :thumb
	ldr     r1, [pc, #0x18] @ 0x201ffa4, (=#0x21c0768)
	ldr     r2, [r1, #0x0]
	mov     r3, r2
	eor     r3, r0
	ldr     r2, [pc, #0x14] @ 0x201ffa8, (=#0x4001000)
	str     r3, [r1, #0x0]
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10] @ 0x201ffac, (=#0xffffe0ff)
	and     r1, r0
	lsl     r0, r3, #8
	orr     r0, r1
	str     r0, [r2, #0x0]
.thumb
branch_201ffa2: @ 201ffa2 :thumb
	bx      lr
@ 0x201ffa4

.word 0x21c0768 @ 0x201ffa4
.word 0x4001000 @ 0x201ffa8
.word 0xffffe0ff @ 0x201ffac

.incbin "baserom/arm9.bin", 0x1ffb0, 0x201ffd0 - 0x201ffb0


.thumb
Function_201ffd0: @ 201ffd0 :thumb
	push    {r3,lr}
	blx     Function_20bddf8
	ldr     r2, [pc, #0xc] @ 0x201ffe4, (=#0x4001000)
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #16
	orr     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x201ffe4

.word 0x4001000 @ 0x201ffe4
.thumb
Function_201ffe8: @ 201ffe8 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2020008, (=#0x21bf6dc)
	ldr     r2, [pc, #0x20] @ 0x202000c, (=#0x4000304)
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	bne     branch_201fffc
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x201fffc

.thumb
branch_201fffc: @ 201fffc :thumb
	ldrh    r1, [r2, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2020010, (=#0xffff7fff)
	and     r0, r1
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x2020006


.incbin "baserom/arm9.bin", 0x20006, 0x2020008 - 0x2020006


.word 0x21bf6dc @ 0x2020008
.word 0x4000304 @ 0x202000c
.word 0xffff7fff @ 0x2020010

.incbin "baserom/arm9.bin", 0x20014, 0x2020690 - 0x2020014


.thumb
Function_2020690: @ 2020690 :thumb
	push    {r3,r4}
	mov     r3, r1
	mov     r4, r0
	str     r4, [r3, #0x54]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	add     r2, #0x48
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	str     r0, [r3, #0x58]
	str     r0, [r3, #0x5c]
	str     r0, [r3, #0x60]
	pop     {r3,r4}
	bx      lr
@ 0x20206b0

.thumb
Function_20206b0: @ 20206b0 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x54]
	str     r1, [r0, #0x58]
	str     r1, [r0, #0x5c]
	str     r1, [r0, #0x60]
	bx      lr
@ 0x20206bc


.incbin "baserom/arm9.bin", 0x206bc, 0x2020990 - 0x20206bc


.thumb
Function_2020990: @ 2020990 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	mov     r2, r0
	blx     Function_20bd17c
	add     r4, #0x20
	mov     r0, r4
	mov     r1, r5
	mov     r2, r4
	blx     Function_20bd17c
	pop     {r3-r5,pc}
@ 0x20209b0


.incbin "baserom/arm9.bin", 0x209b0, 0x20219f8 - 0x20209b0


.thumb
Function_20219f8: @ 20219f8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bne     branch_2021a02
	bl      Function_2022974
.thumb
branch_2021a02: @ 2021a02 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_2021a44
	sub     r0, #0x10
	mov     r6, r5
	ldr     r4, [r5, r0]
	add     r6, #0x10
	cmp     r4, r6
	beq     branch_2021a44
	ldr     r7, [pc, #0x2c] @ 0x2021a48, (=#0x20e56e4)
.thumb
branch_2021a1a: @ 2021a1a :thumb
	mov     r2, r4
	add     r2, #0x34
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r7, r2]
	blx     r2
	mov     r1, r4
	add     r1, #0x35
	ldrb    r1, [r1, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x14] @ 0x2021a4c, (=#0x20e56ec)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r4, [r4, r0]
	cmp     r4, r6
	bne     branch_2021a1a
.thumb
branch_2021a44: @ 2021a44 :thumb
	pop     {r3-r7,pc}
@ 0x2021a46


.incbin "baserom/arm9.bin", 0x21a46, 0x2021a48 - 0x2021a46


.word 0x20e56e4 @ 0x2021a48
.word 0x20e56ec @ 0x2021a4c

.incbin "baserom/arm9.bin", 0x21a50, 0x2022844 - 0x2021a50


.thumb
Function_2022844: @ 2022844 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x24] @ 0x202286c, (=#0x21c077c)
	mov     r2, #0x0
	str     r2, [r0, #0x4]
	str     r2, [r0, #0x8]
	ldr     r1, [pc, #0x20] @ 0x2022870, (=#0x400010e)
	str     r2, [r0, #0x0]
	strh    r2, [r1, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	strh    r2, [r0, #0x0]
	mov     r0, #0xc1
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2022874, (=#0x2022879)
	mov     r0, #0x40
	blx     Function_20c144c
	mov     r0, #0x40
	blx     Function_20c161c
	pop     {r3,pc}
@ 0x202286c

.word 0x21c077c @ 0x202286c
.word 0x400010e @ 0x2022870
.word 0x2022879 @ 0x2022874

.incbin "baserom/arm9.bin", 0x22878, 0x202293c - 0x2022878


.thumb
Function_202293c: @ 202293c :thumb
	ldr     r3, [pc, #0x0] @ 0x2022940, (=#0x20228c9)
	bx      r3
@ 0x2022940

.word 0x20228c9 @ 0x2022940

.incbin "baserom/arm9.bin", 0x22944, 0x202295c - 0x2022944


.thumb
Function_202295c: @ 202295c :thumb
	push    {r3,lr}
	lsr     r2, r0, #26
	lsl     r1, r1, #6
	orr     r1, r2
	ldr     r2, [pc, #0x8] @ 0x2022970, (=#0x1ff6210)
	lsl     r0, r0, #6
	mov     r3, #0x0
	blx     Function_20e1ed4
	pop     {r3,pc}
@ 0x2022970

.word 0x1ff6210 @ 0x2022970
.thumb
Function_2022974: @ 2022974 :thumb
	push    {r3,lr}
	bl      Function_2036780
	cmp     r0, #0x0
	beq     branch_202298a
	blx     Function_20c3dfc
	cmp     r0, #0x12
	beq     branch_202298a
	bl      Function_209b49c
.thumb
branch_202298a: @ 202298a :thumb
	pop     {r3,pc}
@ 0x202298c


.incbin "baserom/arm9.bin", 0x2298c, 0x2022b80 - 0x202298c


.thumb
Function_2022b80: @ 2022b80 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2022b8a
	bl      Function_2022974
.thumb
branch_2022b8a: @ 2022b8a :thumb
	ldr     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2022b8e


.incbin "baserom/arm9.bin", 0x22b8e, 0x20232e0 - 0x2022b8e


.thumb
Function_20232e0: @ 20232e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [sp, #0x20]
	mov     r1, #0x78
	mov     r7, r2
	str     r3, [sp, #0x4]
	bl      Function_2018144
	mov     r4, r0
	beq     branch_2023310
	ldr     r1, [sp, #0x20]
	ldr     r3, [sp, #0x4]
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r2, r6
	bl      Function_2023350
	ldr     r2, [sp, #0x20]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2023424
.thumb
branch_2023310: @ 2023310 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2023316


.incbin "baserom/arm9.bin", 0x23316, 0x2023350 - 0x2023316


.thumb
Function_2023350: @ 2023350 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, r1
	ldr     r1, [sp, #0x18]
	mov     r4, r2
	mov     r6, r3
	bl      Function_2006c24
	str     r0, [r5, #0x54]
	cmp     r0, #0x0
	beq     branch_20233f6
	mov     r1, r5
	add     r1, #0x5c
	str     r1, [sp, #0x0]
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x10
	bl      Function_2006dc8
	str     r6, [r5, #0x6c]
	cmp     r6, #0x0
	beq     branch_2023388
	mov     r0, #0x0
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x78] @ 0x20233fc, (=#0x20236c9)
	str     r0, [r5, #0x70]
	b       branch_20233b0
@ 0x2023388

.thumb
branch_2023388: @ 2023388 :thumb
	ldr     r0, [r5, #0x60]
	cmp     r0, #0x0
	bne     branch_2023392
	bl      Function_2022974
.thumb
branch_2023392: @ 2023392 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [r5, #0x64]
	bl      Function_2018144
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x60] @ 0x2023400, (=#0x20236b1)
	mov     r1, r4
	str     r0, [r5, #0x70]
	ldr     r0, [r5, #0x74]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x54]
	ldr     r2, [r5, #0x60]
	ldr     r3, [r5, #0x64]
	bl      Function_2006dc8
.thumb
branch_20233b0: @ 20233b0 :thumb
	mov     r0, r5
	add     r0, #0x6a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bhi     branch_20233c4
	mov     r0, r5
	add     r0, #0x6b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bls     branch_20233c8
.thumb
branch_20233c4: @ 20233c4 :thumb
	bl      Function_2022974
.thumb
branch_20233c8: @ 20233c8 :thumb
	mov     r0, r5
	add     r0, #0x6a
	ldrb    r0, [r0, #0x0]
	ldr     r2, [pc, #0x34] @ 0x2023404, (=#0x20e56f4)
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r3, r0, #1
	mov     r0, r5
	add     r0, #0x6b
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r2, r3
	ldrb    r0, [r1, r0]
	str     r0, [r5, #0x8]
	mov     r0, r5
	add     r0, #0x6b
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x6a
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #4
	mul     r0, r1
	str     r0, [r5, #0xc]
	str     r4, [r5, #0x58]
.thumb
branch_20233f6: @ 20233f6 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x20233fa


.incbin "baserom/arm9.bin", 0x233fa, 0x20233fc - 0x20233fa


.word 0x20236c9 @ 0x20233fc
.word 0x20236b1 @ 0x2023400
.word 0x20e56f4 @ 0x2023404

.incbin "baserom/arm9.bin", 0x23408, 0x2023424 - 0x2023408


.thumb
Function_2023424: @ 2023424 :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, r2
	str     r3, [r0, #0x0]
	ldr     r2, [pc, #0x8] @ 0x2023438, (=#0x20e56f8)
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3,pc}
@ 0x2023436


.incbin "baserom/arm9.bin", 0x23436, 0x2023438 - 0x2023436


.word 0x20e56f8 @ 0x2023438

.incbin "baserom/arm9.bin", 0x2343c, 0x20234a0 - 0x202343c


.thumb
Function_20234a0: @ 20234a0 :thumb
	push    {r3,lr}
	ldr     r3, [r0, #0x64]
	cmp     r1, r3
	bhi     branch_20234b0
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	b       branch_20234b2
@ 0x20234b0

.thumb
branch_20234b0: @ 20234b0 :thumb
	ldr     r1, [pc, #0x4] @ 0x20234b8, (=#0x1ab)
.thumb
branch_20234b2: @ 20234b2 :thumb
	ldr     r3, [r0, #0x4]
	blx     r3
	pop     {r3,pc}
@ 0x20234b8

.word 0x1ab @ 0x20234b8

.incbin "baserom/arm9.bin", 0x234bc, 0x2023620 - 0x20234bc


.thumb
Function_2023620: @ 2023620 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x0]
	mov     r5, r0
	ldr     r0, [pc, #0x38] @ 0x2023664, (=#0xffff)
	mov     r7, r2
	mov     r6, #0x0
	cmp     r1, r0
	beq     branch_202365e
.thumb
branch_2023632: @ 2023632 :thumb
	ldr     r0, [pc, #0x34] @ 0x2023668, (=#0xfffe)
	cmp     r1, r0
	bne     branch_2023648
	mov     r0, r4
	bl      Function_201d0c8
	mov     r4, r0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2023664, (=#0xffff)
	cmp     r1, r0
	beq     branch_202365e
.thumb
branch_2023648: @ 2023648 :thumb
	ldr     r2, [r5, #0x70]
	mov     r0, r5
	.hword  0x1e49 @ sub r1, r1, #0x1
	blx     r2
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r0, r7, r0
	add     r6, r6, r0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2023664, (=#0xffff)
	cmp     r1, r0
	bne     branch_2023632
.thumb
branch_202365e: @ 202365e :thumb
	sub     r0, r6, r7
	pop     {r3-r7,pc}
@ 0x2023662


.incbin "baserom/arm9.bin", 0x23662, 0x2023664 - 0x2023662


.word 0xffff @ 0x2023664
.word 0xfffe @ 0x2023668

.incbin "baserom/arm9.bin", 0x2366c, 0x2023790 - 0x202366c


.thumb
Function_2023790: @ 2023790 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	lsl     r1, r4, #1
	add     r1, #0xa
	bl      Function_2018144
	cmp     r0, #0x0
	beq     branch_20237b0
	ldr     r1, [pc, #0x10] @ 0x20237b4, (=#0xb6f8d2ec)
	str     r1, [r0, #0x4]
	strh    r4, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	ldr     r1, [pc, #0x8] @ 0x20237b8, (=#0xffff)
	strh    r1, [r0, #0x8]
.thumb
branch_20237b0: @ 20237b0 :thumb
	pop     {r4,pc}
@ 0x20237b2


.incbin "baserom/arm9.bin", 0x237b2, 0x20237b4 - 0x20237b2


.word 0xb6f8d2ec @ 0x20237b4
.word 0xffff @ 0x20237b8
.thumb
Function_20237bc: @ 20237bc :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_20237c6
	bl      Function_2022974
.thumb
branch_20237c6: @ 20237c6 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x14] @ 0x20237e0, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_20237d2
	bl      Function_2022974
.thumb
branch_20237d2: @ 20237d2 :thumb
	ldr     r0, [pc, #0x10] @ 0x20237e4, (=#0xb6f8d2ed)
	str     r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x20237de


.incbin "baserom/arm9.bin", 0x237de, 0x20237e0 - 0x20237de


.word 0xb6f8d2ec @ 0x20237e0
.word 0xb6f8d2ed @ 0x20237e4
.thumb
Function_20237e8: @ 20237e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_20237f2
	bl      Function_2022974
.thumb
branch_20237f2: @ 20237f2 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x10] @ 0x2023808, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_20237fe
	bl      Function_2022974
.thumb
branch_20237fe: @ 20237fe :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
	ldr     r0, [pc, #0x8] @ 0x202380c, (=#0xffff)
	strh    r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2023808

.word 0xb6f8d2ec @ 0x2023808
.word 0xffff @ 0x202380c
.thumb
Function_2023810: @ 2023810 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_202381e
	bl      Function_2022974
.thumb
branch_202381e: @ 202381e :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2023864, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_202382a
	bl      Function_2022974
.thumb
branch_202382a: @ 202382a :thumb
	cmp     r4, #0x0
	bne     branch_2023832
	bl      Function_2022974
.thumb
branch_2023832: @ 2023832 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2023864, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_202383e
	bl      Function_2022974
.thumb
branch_202383e: @ 202383e :thumb
	ldrh    r2, [r4, #0x2]
	ldrh    r0, [r5, #0x0]
	cmp     r0, r2
	bls     branch_202385c
	mov     r0, r5
	mov     r1, r4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x8
	add     r1, #0x8
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldrh    r0, [r4, #0x2]
	strh    r0, [r5, #0x2]
	pop     {r3-r5,pc}
@ 0x202385c

.thumb
branch_202385c: @ 202385c :thumb
	bl      Function_2022974
	pop     {r3-r5,pc}
@ 0x2023862


.incbin "baserom/arm9.bin", 0x23862, 0x2023864 - 0x2023862


.word 0xb6f8d2ec @ 0x2023864
.thumb
Function_2023868: @ 2023868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2023876
	bl      Function_2022974
.thumb
branch_2023876: @ 2023876 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x20] @ 0x202389c, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023882
	bl      Function_2022974
.thumb
branch_2023882: @ 2023882 :thumb
	ldrh    r0, [r5, #0x2]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	bl      Function_2023790
	mov     r4, r0
	beq     branch_2023896
	mov     r1, r5
	bl      Function_2023810
.thumb
branch_2023896: @ 2023896 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x202389a


.incbin "baserom/arm9.bin", 0x2389a, 0x202389c - 0x202389a


.word 0xb6f8d2ec @ 0x202389c
.thumb
Function_20238a0: @ 20238a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [sp, #0x20]
	mov     r6, r1
	mov     r7, r3
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x20]
	cmp     r5, #0x0
	bne     branch_20238b8
	bl      Function_2022974
.thumb
branch_20238b8: @ 20238b8 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xfc] @ 0x20239b8, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_20238c4
	bl      Function_2022974
.thumb
branch_20238c4: @ 20238c4 :thumb
	cmp     r6, #0x0
	bge     branch_20238cc
	mov     r4, #0x1
	b       branch_20238ce
@ 0x20238cc

.thumb
branch_20238cc: @ 20238cc :thumb
	mov     r4, #0x0
.thumb
branch_20238ce: @ 20238ce :thumb
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r5, #0x0]
	add     r0, r0, r4
	cmp     r1, r0
	bls     branch_20239b0
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_20238e4
	ldr     r0, [pc, #0xdc] @ 0x20239bc, (=#0x20e5744)
	str     r0, [sp, #0x4]
	b       branch_20238e8
@ 0x20238e4

.thumb
branch_20238e4: @ 20238e4 :thumb
	ldr     r0, [pc, #0xd8] @ 0x20239c0, (=#0x20e5730)
	str     r0, [sp, #0x4]
.thumb
branch_20238e8: @ 20238e8 :thumb
	mov     r0, r5
	bl      Function_20237e8
	cmp     r4, #0x0
	beq     branch_2023910
	mov     r0, #0x0
	mvn     r0, r0
	mul     r6, r0
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_2023902
	mov     r0, #0xf1
	b       branch_2023904
@ 0x2023902

.thumb
branch_2023902: @ 2023902 :thumb
	ldr     r0, [pc, #0xc0] @ 0x20239c4, (=#0x1be)
.thumb
branch_2023904: @ 2023904 :thumb
	ldrh    r2, [r5, #0x2]
	add     r1, r2, #0x1
	strh    r1, [r5, #0x2]
	lsl     r1, r2, #1
	add     r1, r5, r1
	strh    r0, [r1, #0x8]
.thumb
branch_2023910: @ 2023910 :thumb
	ldr     r0, [sp, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0xb0] @ 0x20239c8, (=#0x20e5754)
	ldr     r4, [r0, r1]
	cmp     r4, #0x0
	beq     branch_20239a2
.thumb
branch_202391c: @ 202391c :thumb
	mov     r0, r6
	mov     r1, r4
	blx     Function_20e2178
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r4
	mul     r0, r1
	sub     r6, r6, r0
	cmp     r7, #0x2
	bne     branch_2023950
	cmp     r1, #0xa
	bcs     branch_202393e
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #1
	ldrh    r1, [r0, r1]
	b       branch_2023940
@ 0x202393e

.thumb
branch_202393e: @ 202393e :thumb
	mov     r1, #0xe2
.thumb
branch_2023940: @ 2023940 :thumb
	ldrh    r0, [r5, #0x2]
	mov     r2, r0
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r0, r0, #1
	strh    r2, [r5, #0x2]
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
	b       branch_2023996
@ 0x2023950

.thumb
branch_2023950: @ 2023950 :thumb
	cmp     r1, #0x0
	bne     branch_2023958
	cmp     r4, #0x1
	bne     branch_2023978
.thumb
branch_2023958: @ 2023958 :thumb
	mov     r7, #0x2
	cmp     r1, #0xa
	bcs     branch_2023966
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #1
	ldrh    r1, [r0, r1]
	b       branch_2023968
@ 0x2023966

.thumb
branch_2023966: @ 2023966 :thumb
	mov     r1, #0xe2
.thumb
branch_2023968: @ 2023968 :thumb
	ldrh    r0, [r5, #0x2]
	mov     r2, r0
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r0, r0, #1
	strh    r2, [r5, #0x2]
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
	b       branch_2023996
@ 0x2023978

.thumb
branch_2023978: @ 2023978 :thumb
	cmp     r7, #0x1
	bne     branch_2023996
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_2023986
	mov     r1, #0x1
	b       branch_2023988
@ 0x2023986

.thumb
branch_2023986: @ 2023986 :thumb
	ldr     r1, [pc, #0x44] @ 0x20239cc, (=#0x1e2)
.thumb
branch_2023988: @ 2023988 :thumb
	ldrh    r0, [r5, #0x2]
	mov     r2, r0
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r0, r0, #1
	strh    r2, [r5, #0x2]
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
.thumb
branch_2023996: @ 2023996 :thumb
	mov     r0, r4
	mov     r1, #0xa
	blx     Function_20e2178
	mov     r4, r0
	bne     branch_202391c
.thumb
branch_20239a2: @ 20239a2 :thumb
	ldrh    r0, [r5, #0x2]
	ldr     r1, [pc, #0x28] @ 0x20239d0, (=#0xffff)
	add     sp, #0x8
	lsl     r0, r0, #1
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
	pop     {r3-r7,pc}
@ 0x20239b0

.thumb
branch_20239b0: @ 20239b0 :thumb
	bl      Function_2022974
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20239b8

.word 0xb6f8d2ec @ 0x20239b8
.word 0x20e5744 @ 0x20239bc
.word 0x20e5730 @ 0x20239c0
.word 0x1be @ 0x20239c4
.word 0x20e5754 @ 0x20239c8
.word 0x1e2 @ 0x20239cc
.word 0xffff @ 0x20239d0

.incbin "baserom/arm9.bin", 0x239d4, 0x2023be0 - 0x20239d4


.thumb
Function_2023be0: @ 2023be0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2023bee
	bl      Function_2022974
.thumb
branch_2023bee: @ 2023bee :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2023c34, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023bfa
	bl      Function_2022974
.thumb
branch_2023bfa: @ 2023bfa :thumb
	cmp     r4, #0x0
	bne     branch_2023c02
	bl      Function_2022974
.thumb
branch_2023c02: @ 2023c02 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2023c34, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023c0e
	bl      Function_2022974
.thumb
branch_2023c0e: @ 2023c0e :thumb
	ldrh    r1, [r5, #0x8]
	ldrh    r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_2023c2e
	ldr     r0, [pc, #0x20] @ 0x2023c38, (=#0xffff)
.thumb
branch_2023c18: @ 2023c18 :thumb
	ldrh    r1, [r5, #0x8]
	cmp     r1, r0
	bne     branch_2023c22
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2023c22

.thumb
branch_2023c22: @ 2023c22 :thumb
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	ldrh    r2, [r5, #0x8]
	ldrh    r1, [r4, #0x8]
	cmp     r2, r1
	beq     branch_2023c18
.thumb
branch_2023c2e: @ 2023c2e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2023c32


.incbin "baserom/arm9.bin", 0x23c32, 0x2023c34 - 0x2023c32


.word 0xb6f8d2ec @ 0x2023c34
.word 0xffff @ 0x2023c38

.incbin "baserom/arm9.bin", 0x23c3c, 0x2023d28 - 0x2023c3c


.thumb
Function_2023d28: @ 2023d28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2023d36
	bl      Function_2022974
.thumb
branch_2023d36: @ 2023d36 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x48] @ 0x2023d84, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023d42
	bl      Function_2022974
.thumb
branch_2023d42: @ 2023d42 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x2]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2023d88, (=#0xffff)
	cmp     r1, r0
	beq     branch_2023d76
	mov     r1, r0
.thumb
branch_2023d50: @ 2023d50 :thumb
	ldrh    r2, [r5, #0x0]
	ldrh    r0, [r5, #0x2]
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r0, r2
	blt     branch_2023d60
	bl      Function_2022974
	b       branch_2023d76
@ 0x2023d60

.thumb
branch_2023d60: @ 2023d60 :thumb
	mov     r2, r0
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r5, #0x2]
	ldrh    r2, [r4, #0x0]
	lsl     r0, r0, #1
	add     r0, r5, r0
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r2, [r0, #0x8]
	ldrh    r0, [r4, #0x0]
	cmp     r0, r1
	bne     branch_2023d50
.thumb
branch_2023d76: @ 2023d76 :thumb
	ldrh    r0, [r5, #0x2]
	ldr     r1, [pc, #0xc] @ 0x2023d88, (=#0xffff)
	lsl     r0, r0, #1
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
	pop     {r3-r5,pc}
@ 0x2023d82


.incbin "baserom/arm9.bin", 0x23d82, 0x2023d84 - 0x2023d82


.word 0xb6f8d2ec @ 0x2023d84
.word 0xffff @ 0x2023d88
.thumb
Function_2023d8c: @ 2023d8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_2023d9c
	bl      Function_2022974
.thumb
branch_2023d9c: @ 2023d9c :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x48] @ 0x2023de8, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023da8
	bl      Function_2022974
.thumb
branch_2023da8: @ 2023da8 :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r4, r0
	bhi     branch_2023de2
	lsl     r6, r4, #1
	mov     r0, r5
	add     r0, #0x8
	mov     r1, r7
	mov     r2, r6
	blx     Function_20d50b8
	mov     r2, #0x0
	cmp     r4, #0x0
	bls     branch_2023dd4
	ldr     r0, [pc, #0x28] @ 0x2023dec, (=#0xffff)
	mov     r3, r5
.thumb
branch_2023dc6: @ 2023dc6 :thumb
	ldrh    r1, [r3, #0x8]
	cmp     r1, r0
	beq     branch_2023dd4
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, r4
	bcc     branch_2023dc6
.thumb
branch_2023dd4: @ 2023dd4 :thumb
	strh    r2, [r5, #0x2]
	cmp     r2, r4
	bne     branch_2023de6
	ldr     r1, [pc, #0x10] @ 0x2023dec, (=#0xffff)
	add     r0, r5, r6
	strh    r1, [r0, #0x6]
	pop     {r3-r7,pc}
@ 0x2023de2

.thumb
branch_2023de2: @ 2023de2 :thumb
	bl      Function_2022974
.thumb
branch_2023de6: @ 2023de6 :thumb
	pop     {r3-r7,pc}
@ 0x2023de8

.word 0xb6f8d2ec @ 0x2023de8
.word 0xffff @ 0x2023dec
.thumb
Function_2023df0: @ 2023df0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_2023e00
	bl      Function_2022974
.thumb
branch_2023e00: @ 2023e00 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2023e28, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023e0c
	bl      Function_2022974
.thumb
branch_2023e0c: @ 2023e0c :thumb
	ldrh    r0, [r5, #0x2]
	add     r2, r0, #0x1
	cmp     r2, r4
	bhi     branch_2023e22
	add     r5, #0x8
	mov     r0, r6
	mov     r1, r5
	lsl     r2, r2, #1
	blx     Function_20d50b8
	pop     {r4-r6,pc}
@ 0x2023e22

.thumb
branch_2023e22: @ 2023e22 :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2023e28

.word 0xb6f8d2ec @ 0x2023e28
.thumb
Function_2023e2c: @ 2023e2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2023e36
	bl      Function_2022974
.thumb
branch_2023e36: @ 2023e36 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0xc] @ 0x2023e48, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023e42
	bl      Function_2022974
.thumb
branch_2023e42: @ 2023e42 :thumb
	add     r4, #0x8
	mov     r0, r4
	pop     {r4,pc}
@ 0x2023e48

.word 0xb6f8d2ec @ 0x2023e48
.thumb
Function_2023e4c: @ 2023e4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2023e5a
	bl      Function_2022974
.thumb
branch_2023e5a: @ 2023e5a :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2023eac, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023e66
	bl      Function_2022974
.thumb
branch_2023e66: @ 2023e66 :thumb
	cmp     r4, #0x0
	bne     branch_2023e6e
	bl      Function_2022974
.thumb
branch_2023e6e: @ 2023e6e :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2023eac, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023e7a
	bl      Function_2022974
.thumb
branch_2023e7a: @ 2023e7a :thumb
	ldrh    r2, [r4, #0x2]
	ldrh    r0, [r5, #0x2]
	add     r1, r0, r2
	add     r3, r1, #0x1
	ldrh    r1, [r5, #0x0]
	cmp     r3, r1
	bgt     branch_2023ea6
	mov     r1, r5
	add     r1, #0x8
	lsl     r0, r0, #1
	add     r0, r1, r0
	mov     r1, r4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x8
	lsl     r2, r2, #1
	blx     Function_20d50b8
	ldrh    r1, [r5, #0x2]
	ldrh    r0, [r4, #0x2]
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	pop     {r3-r5,pc}
@ 0x2023ea6

.thumb
branch_2023ea6: @ 2023ea6 :thumb
	bl      Function_2022974
	pop     {r3-r5,pc}
@ 0x2023eac

.word 0xb6f8d2ec @ 0x2023eac
.thumb
Function_2023eb0: @ 2023eb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2023ebe
	bl      Function_2022974
.thumb
branch_2023ebe: @ 2023ebe :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2023ef0, (=#0xb6f8d2ec)
	cmp     r1, r0
	beq     branch_2023eca
	bl      Function_2022974
.thumb
branch_2023eca: @ 2023eca :thumb
	ldrh    r2, [r5, #0x2]
	ldrh    r0, [r5, #0x0]
	add     r1, r2, #0x1
	cmp     r1, r0
	bge     branch_2023ee8
	lsl     r0, r2, #1
	strh    r1, [r5, #0x2]
	add     r0, r5, r0
	strh    r4, [r0, #0x8]
	ldrh    r0, [r5, #0x2]
	ldr     r1, [pc, #0x14] @ 0x2023ef4, (=#0xffff)
	lsl     r0, r0, #1
	add     r0, r5, r0
	strh    r1, [r0, #0x8]
	pop     {r3-r5,pc}
@ 0x2023ee8

.thumb
branch_2023ee8: @ 2023ee8 :thumb
	bl      Function_2022974
	pop     {r3-r5,pc}
@ 0x2023eee


.incbin "baserom/arm9.bin", 0x23eee, 0x2023ef0 - 0x2023eee


.word 0xb6f8d2ec @ 0x2023ef0
.word 0xffff @ 0x2023ef4
.thumb
Function_2023ef8: @ 2023ef8 :thumb
	ldrh    r1, [r0, #0x2]
	cmp     r1, #0x0
	beq     branch_2023f0c
	ldrh    r1, [r0, #0x8]
	mov     r0, #0xf1
	lsl     r0, r0, #8
	cmp     r1, r0
	bne     branch_2023f0c
	mov     r0, #0x1
	bx      lr
@ 0x2023f0c

.thumb
branch_2023f0c: @ 2023f0c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2023f10

.thumb
Function_2023f10: @ 2023f10 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_2023ef8
	cmp     r0, #0x0
	beq     branch_2023f7a
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	ldrh    r0, [r0, #0x2]
	add     r1, #0x8
	ldr     r7, [pc, #0x58] @ 0x2023f84, (=#0x1ff)
	lsl     r0, r0, #1
	add     r3, r1, r0
	mov     r0, #0x0
	add     r4, #0xa
	mov     r1, r0
.thumb
branch_2023f34: @ 2023f34 :thumb
	ldrh    r2, [r4, #0x0]
	asr     r2, r0
	and     r2, r7
	lsl     r2, r2, #16
	add     r0, #0x9
	lsr     r2, r2, #16
	cmp     r0, #0xf
	blt     branch_2023f5c
	.hword  0x1ca4 @ add r4, r4, #0x2
	sub     r0, #0xf
	beq     branch_2023f5c
	ldrh    r6, [r4, #0x0]
	mov     r5, #0x9
	sub     r5, r5, r0
	lsl     r6, r5
	ldr     r5, [pc, #0x30] @ 0x2023f84, (=#0x1ff)
	and     r5, r6
	orr     r2, r5
	lsl     r2, r2, #16
	lsr     r2, r2, #16
.thumb
branch_2023f5c: @ 2023f5c :thumb
	ldr     r5, [pc, #0x24] @ 0x2023f84, (=#0x1ff)
	cmp     r2, r5
	beq     branch_2023f6a
	strh    r2, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_2023f34
@ 0x2023f6a

.thumb
branch_2023f6a: @ 2023f6a :thumb
	ldr     r0, [pc, #0x1c] @ 0x2023f88, (=#0xffff)
	strh    r0, [r3, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x2]
	add     r1, r0, r1
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x2]
	pop     {r3-r7,pc}
@ 0x2023f7a

.thumb
branch_2023f7a: @ 2023f7a :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2023e4c
	pop     {r3-r7,pc}
@ 0x2023f84

.word 0x1ff @ 0x2023f84
.word 0xffff @ 0x2023f88

.incbin "baserom/arm9.bin", 0x23f8c, 0x202419c - 0x2023f8c


.thumb
Function_202419c: @ 202419c :thumb
	ldr     r0, [pc, #0xc] @ 0x20241ac, (=#0x21c0788)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x8] @ 0x20241b0, (=#0x21c0788)
	str     r1, [r0, #0x0]
	bx      lr
@ 0x20241ac

.word 0x21c0788 @ 0x20241ac
.word 0x21c0788 @ 0x20241b0

.incbin "baserom/arm9.bin", 0x241b4, 0x20241cc - 0x20241b4


.thumb
Function_20241cc: @ 20241cc :thumb
	ldr     r0, [pc, #0x18] @ 0x20241e8, (=#0x21c0788)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_20241e4
	ldr     r1, [r0, #0x8]
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #1
	orr     r2, r1
	ldr     r1, [pc, #0xc] @ 0x20241ec, (=#0x4000540)
	str     r2, [r1, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_20241e4: @ 20241e4 :thumb
	bx      lr
@ 0x20241e6


.incbin "baserom/arm9.bin", 0x241e6, 0x20241e8 - 0x20241e6


.word 0x21c0788 @ 0x20241e8
.word 0x4000540 @ 0x20241ec

.incbin "baserom/arm9.bin", 0x241f0, 0x2024358 - 0x20241f0


.thumb
Function_2024358: @ 2024358 :thumb
	push    {r3,lr}
	blx     Function_20c7d90
	cmp     r0, #0x0
	bne     branch_2024368
	blx     Function_20c42a8
	pop     {r3,pc}
@ 0x2024368

.thumb
branch_2024368: @ 2024368 :thumb
	ldr     r0, [pc, #0x58] @ 0x20243c4, (=#0x27ff00c)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2024392
	blx     Function_20cd6f8
	mov     r2, #0x16
	ldr     r0, [pc, #0x50] @ 0x20243c8, (=#0x27ffe00)
	ldr     r1, [pc, #0x50] @ 0x20243cc, (=#0x27ff000)
	lsl     r2, r2, #4
	blx     Function_20c4db0
	mov     r2, #0x16
	ldr     r0, [pc, #0x44] @ 0x20243c8, (=#0x27ffe00)
	ldr     r1, [pc, #0x48] @ 0x20243d0, (=#0x27ffa80)
	lsl     r2, r2, #4
	blx     Function_20c4db0
	ldr     r1, [pc, #0x44] @ 0x20243d4, (=#0x4a414441)
	ldr     r0, [pc, #0x34] @ 0x20243c4, (=#0x27ff00c)
	str     r1, [r0, #0x0]
.thumb
branch_2024392: @ 2024392 :thumb
	ldr     r0, [pc, #0x44] @ 0x20243d8, (=#0x20e5828)
	mov     r1, #0x3
	blx     Function_20c7760
	ldr     r1, [pc, #0x30] @ 0x20243cc, (=#0x27ff000)
	ldr     r2, [r1, #0x48]
	str     r2, [r0, #0x2c]
	ldr     r2, [r1, #0x4c]
	str     r2, [r0, #0x30]
	ldr     r2, [r1, #0x40]
	str     r2, [r0, #0x34]
	ldr     r2, [r1, #0x44]
	str     r2, [r0, #0x38]
	ldr     r2, [r1, #0xc]
	ldr     r0, [pc, #0x24] @ 0x20243d4, (=#0x4a414441)
	cmp     r2, r0
	bne     branch_20243bc
	ldrh    r1, [r1, #0x10]
	ldr     r0, [pc, #0x24] @ 0x20243dc, (=#0x3130)
	cmp     r1, r0
	beq     branch_20243c0
.thumb
branch_20243bc: @ 20243bc :thumb
	blx     Function_20c42a8
.thumb
branch_20243c0: @ 20243c0 :thumb
	pop     {r3,pc}
@ 0x20243c2


.incbin "baserom/arm9.bin", 0x243c2, 0x20243c4 - 0x20243c2


.word 0x27ff00c @ 0x20243c4
.word 0x27ffe00 @ 0x20243c8
.word 0x27ff000 @ 0x20243cc
.word 0x27ffa80 @ 0x20243d0
.word 0x4a414441 @ 0x20243d4
.word 0x20e5828 @ 0x20243d8
.word 0x3130 @ 0x20243dc

.incbin "baserom/arm9.bin", 0x243e0, 0x202440c - 0x20243e0


.thumb
Function_202440c: @ 202440c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1b
	bl      Function_2025c48
	mov     r0, r4
	mov     r1, #0x1b
	bl      Function_20245bc
	pop     {r4,pc}
@ 0x2024420

.thumb
Function_2024420: @ 2024420 :thumb
	ldr     r3, [pc, #0x4] @ 0x2024428, (=#0x20245bd)
	mov     r1, #0x25
	bx      r3
@ 0x2024426


.incbin "baserom/arm9.bin", 0x24426, 0x2024428 - 0x2024426


.word 0x20245bd @ 0x2024428
.thumb
Function_202442c: @ 202442c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	bl      Function_2025c48
	mov     r0, r4
	mov     r1, #0x1f
	bl      Function_20245bc
	pop     {r4,pc}
@ 0x2024440

.thumb
Function_2024440: @ 2024440 :thumb
	ldr     r3, [pc, #0x4] @ 0x2024448, (=#0x20245bd)
	mov     r1, #0x20
	bx      r3
@ 0x2024446


.incbin "baserom/arm9.bin", 0x24446, 0x2024448 - 0x2024446


.word 0x20245bd @ 0x2024448
.thumb
Function_202444c: @ 202444c :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x0
	bl      Function_2025680
	pop     {r3,pc}
@ 0x2024458


.incbin "baserom/arm9.bin", 0x24458, 0x20244ac - 0x2024458


.thumb
Function_20244ac: @ 20244ac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0xdc] @ 0x2024590, (=#0x202cc)
	mov     r0, #0x1
	bl      Function_2018144
	mov     r4, r0
	ldr     r2, [pc, #0xd4] @ 0x2024590, (=#0x202cc)
	mov     r0, #0x0
	mov     r1, r4
	blx     Function_20c4bb8
	ldr     r0, [pc, #0xcc] @ 0x2024594, (=#0x21c0794)
	str     r4, [r0, #0x0]
	bl      Function_2025a3c
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0xbc] @ 0x2024598, (=#0x20024)
	add     r0, r4, r0
	bl      Function_20251dc
	ldr     r0, [pc, #0xb8] @ 0x202459c, (=#0x20284)
	ldr     r1, [pc, #0xb4] @ 0x2024598, (=#0x20024)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2025258
	ldr     r1, [pc, #0xb0] @ 0x20245a0, (=#0x20018)
	mov     r0, #0x0
	add     r1, r4, r1
	mov     r2, #0x8
	blx     Function_20c4bb8
	mov     r0, r4
	bl      Function_2024abc
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	cmp     r5, #0x3
	bhi     branch_2024588
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r5, #1
	lsl     r6, r0, #0
	lsl     r0, r1, #0
	lsl     r4, r4, #1
	str     r0, [r4, #0xc]
	mov     r0, r4
	bl      Function_2024dbc
	mov     r1, #0x1
	mov     r0, #0x0
	str     r1, [r4, #0x4]
	str     r0, [r4, #0x8]
	cmp     r5, #0x2
	bne     branch_2024536
	ldr     r0, [r4, #0x10]
	orr     r0, r1
	str     r0, [r4, #0x10]
.thumb
branch_2024536: @ 2024536 :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2024cd4
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bne     branch_2024550
	ldr     r1, [r4, #0x10]
	mov     r0, #0x8
	orr     r0, r1
	str     r0, [r4, #0x10]
	b       branch_202455c
@ 0x2024550

.thumb
branch_2024550: @ 2024550 :thumb
	cmp     r0, #0x2
	bne     branch_202455c
	ldr     r1, [r4, #0x10]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r4, #0x10]
.thumb
branch_202455c: @ 202455c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	bne     branch_202456c
	ldr     r1, [r4, #0x10]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r4, #0x10]
	b       branch_2024588
@ 0x202456c

.thumb
branch_202456c: @ 202456c :thumb
	cmp     r0, #0x2
	bne     branch_2024588
	ldr     r1, [r4, #0x10]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r4, #0x10]
	b       branch_2024588
@ 0x202457a


.incbin "baserom/arm9.bin", 0x2457a, 0x2024588 - 0x202457a


.thumb
branch_2024588: @ 2024588 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x202458e


.incbin "baserom/arm9.bin", 0x2458e, 0x2024590 - 0x202458e


.word 0x202cc @ 0x2024590
.word 0x21c0794 @ 0x2024594
.word 0x20024 @ 0x2024598
.word 0x20284 @ 0x202459c
.word 0x20018 @ 0x20245a0
.thumb
Function_20245a4: @ 20245a4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x20245b8, (=#0x21c0794)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_20245b2
	bl      Function_2022974
.thumb
branch_20245b2: @ 20245b2 :thumb
	ldr     r0, [pc, #0x4] @ 0x20245b8, (=#0x21c0794)
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20245b8

.word 0x21c0794 @ 0x20245b8
.thumb
Function_20245bc: @ 20245bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x26
	blt     branch_20245ca
	bl      Function_2022974
.thumb
branch_20245ca: @ 20245ca :thumb
	lsl     r0, r4, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xc] @ 0x20245dc, (=#0x2002c)
	mov     r2, r5
	ldr     r0, [r1, r0]
	add     r2, #0x14
	add     r0, r2, r0
	pop     {r3-r5,pc}
@ 0x20245da


.incbin "baserom/arm9.bin", 0x245da, 0x20245dc - 0x20245da


.word 0x2002c @ 0x20245dc

.incbin "baserom/arm9.bin", 0x245e0, 0x20247b8 - 0x20245e0


.thumb
Function_20247b8: @ 20247b8 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x20247bc


.incbin "baserom/arm9.bin", 0x247bc, 0x20247c0 - 0x20247bc


.thumb
Function_20247c0: @ 20247c0 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x20247c4

.thumb
Function_20247c4: @ 20247c4 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x20247c8

.thumb
Function_20247c8: @ 20247c8 :thumb
	push    {r3,lr}
	bl      Function_202783c
	bl      Function_20278cc
	pop     {r3,pc}
@ 0x20247d4

.thumb
Function_20247d4: @ 20247d4 :thumb
	push    {r3,lr}
	bl      Function_202783c
	bl      Function_20278b8
	pop     {r3,pc}
@ 0x20247e0

.thumb
Function_20247e0: @ 20247e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20247c4
	cmp     r0, #0x0
	beq     branch_20247fa
	mov     r0, r4
	bl      Function_20247c0
	cmp     r0, #0x0
	beq     branch_20247fa
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20247fa

.thumb
branch_20247fa: @ 20247fa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20247fe


.incbin "baserom/arm9.bin", 0x247fe, 0x2024800 - 0x20247fe


.thumb
Function_2024800: @ 2024800 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2024804

.thumb
Function_2024804: @ 2024804 :thumb
	ldr     r0, [pc, #0x8] @ 0x2024810, (=#0x21c0794)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x202480e


.incbin "baserom/arm9.bin", 0x2480e, 0x2024810 - 0x202480e


.word 0x21c0794 @ 0x2024810

.incbin "baserom/arm9.bin", 0x24814, 0x2024850 - 0x2024814


.thumb
Function_2024850: @ 2024850 :thumb
	ldr     r1, [pc, #0x4] @ 0x2024858, (=#0x2029c)
	ldr     r3, [pc, #0x8] @ 0x202485c, (=#0x20250dd)
	add     r1, r0, r1
	bx      r3
@ 0x2024858

.word 0x2029c @ 0x2024858
.word 0x20250dd @ 0x202485c
.thumb
Function_2024860: @ 2024860 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x202486a


.incbin "baserom/arm9.bin", 0x2486a, 0x2024878 - 0x202486a


.thumb
Function_2024878: @ 2024878 :thumb
	ldr     r3, [pc, #0x8] @ 0x2024884, (=#0x201d629)
	sub     r2, #0x14
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x2024882


.incbin "baserom/arm9.bin", 0x24882, 0x2024884 - 0x2024882


.word 0x201d629 @ 0x2024884
.thumb
Function_2024888: @ 2024888 :thumb
	cmp     r0, #0x0
	bne     branch_2024890
	mov     r2, #0x0
	b       branch_2024894
@ 0x2024890

.thumb
branch_2024890: @ 2024890 :thumb
	mov     r2, #0x1
	lsl     r2, r2, #18
.thumb
branch_2024894: @ 2024894 :thumb
	ldr     r0, [r1, #0x4]
	add     r0, r2, r0
	bx      lr
@ 0x202489a


.incbin "baserom/arm9.bin", 0x2489a, 0x202489c - 0x202489a


.thumb
Function_202489c: @ 202489c :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x20] @ 0x20248c0, (=#0x20284)
	add     r3, r0, r3
	mov     r0, #0xc
	mul     r0, r2
	add     r5, r3, r0
	ldr     r0, [r5, #0x4]
	add     r4, r1, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_20248b6
	bl      Function_2022974
.thumb
branch_20248b6: @ 20248b6 :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r4, r0
	sub     r0, #0x14
	pop     {r3-r5,pc}
@ 0x20248be


.incbin "baserom/arm9.bin", 0x248be, 0x20248c0 - 0x20248be


.word 0x20284 @ 0x20248c0
.thumb
Function_20248c4: @ 20248c4 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x50] @ 0x2024918, (=#0x20284)
	mov     r3, r0
	add     r3, r3, r4
	mov     r5, r2
	mov     r4, #0xc
	mul     r4, r5
	str     r0, [sp, #0x0]
	mov     r7, r1
	add     r6, r3, r4
	bl      Function_202489c
	mov     r4, r0
	ldr     r2, [r6, #0x8]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r6, #0x4]
	cmp     r0, r2
	beq     branch_20248ec
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20248ec

.thumb
branch_20248ec: @ 20248ec :thumb
	ldr     r3, [r4, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x202491c, (=#0x20060623)
	cmp     r3, r0
	beq     branch_20248f8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20248f8

.thumb
branch_20248f8: @ 20248f8 :thumb
	ldrb    r0, [r4, #0x10]
	cmp     r0, r5
	beq     branch_2024902
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024902

.thumb
branch_2024902: @ 2024902 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r7, r1
	bl      Function_2024878
	ldrh    r1, [r4, #0x12]
	cmp     r1, r0
	bne     branch_2024914
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2024914

.thumb
branch_2024914: @ 2024914 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024918

.word 0x20284 @ 0x2024918
.word 0x20060623 @ 0x202491c
.thumb
Function_2024920: @ 2024920 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r6, r1
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r3
	bl      Function_202489c
	mov     r4, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_20248c4
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x8]
	pop     {r3-r7,pc}
@ 0x202494c


.incbin "baserom/arm9.bin", 0x2494c, 0x202499c - 0x202494c


.thumb
Function_202499c: @ 202499c :thumb
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bne     branch_20249ac
	cmp     r1, #0x0
	bne     branch_20249ac
	mov     r0, r2
	bx      lr
@ 0x20249ac

.thumb
branch_20249ac: @ 20249ac :thumb
	cmp     r0, #0x0
	bne     branch_20249bc
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r1, r2
	bne     branch_20249bc
	mov     r0, #0x1
	bx      lr
@ 0x20249bc

.thumb
branch_20249bc: @ 20249bc :thumb
	cmp     r0, r1
	bls     branch_20249c4
	mov     r0, #0x1
	bx      lr
@ 0x20249c4

.thumb
branch_20249c4: @ 20249c4 :thumb
	cmp     r0, r1
	bcs     branch_20249cc
	mov     r0, #0x1
	b       branch_20249ce
@ 0x20249cc

.thumb
branch_20249cc: @ 20249cc :thumb
	mov     r0, #0x0
.thumb
branch_20249ce: @ 20249ce :thumb
	neg     r0, r0
	bx      lr
@ 0x20249d2


.incbin "baserom/arm9.bin", 0x249d2, 0x20249d4 - 0x20249d2


.thumb
Function_20249d4: @ 20249d4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [r7, #0x4]
	ldr     r1, [r6, #0x4]
	mov     r5, r2
	mov     r4, r3
	bl      Function_202499c
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x8]
	ldr     r1, [r6, #0x8]
	bl      Function_202499c
	ldr     r2, [r7, #0x0]
	cmp     r2, #0x0
	beq     branch_2024a4e
	ldr     r1, [r6, #0x0]
	cmp     r1, #0x0
	beq     branch_2024a4e
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x0
	ble     branch_2024a14
	cmp     r0, #0x0
	bgt     branch_2024a0a
	bl      Function_2022974
.thumb
branch_2024a0a: @ 2024a0a :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2024a4a
@ 0x2024a14

.thumb
branch_2024a14: @ 2024a14 :thumb
	bge     branch_2024a28
	cmp     r0, #0x0
	blt     branch_2024a1e
	bl      Function_2022974
.thumb
branch_2024a1e: @ 2024a1e :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_2024a4a
@ 0x2024a28

.thumb
branch_2024a28: @ 2024a28 :thumb
	cmp     r0, #0x0
	ble     branch_2024a36
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2024a4a
@ 0x2024a36

.thumb
branch_2024a36: @ 2024a36 :thumb
	bge     branch_2024a42
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_2024a4a
@ 0x2024a42

.thumb
branch_2024a42: @ 2024a42 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2024a4a: @ 2024a4a :thumb
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x2024a4e

.thumb
branch_2024a4e: @ 2024a4e :thumb
	cmp     r2, #0x0
	beq     branch_2024a64
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2024a64
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2024a64

.thumb
branch_2024a64: @ 2024a64 :thumb
	cmp     r2, #0x0
	bne     branch_2024a78
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2024a78
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r1, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2024a78

.thumb
branch_2024a78: @ 2024a78 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024a82


.incbin "baserom/arm9.bin", 0x24a82, 0x2024a84 - 0x2024a82


.thumb
Function_2024a84: @ 2024a84 :thumb
	push    {r3-r6}
	mov     r4, #0xc
	mov     r5, r3
	mul     r5, r4
	add     r6, r1, r5
	ldr     r5, [r6, #0x4]
	ldr     r1, [pc, #0x24] @ 0x2024ab8, (=#0x20014)
	str     r5, [r0, r1]
	ldr     r6, [r6, #0x8]
	add     r5, r1, #0x4
	str     r6, [r0, r5]
	ldr     r5, [sp, #0x10]
	mul     r4, r5
	add     r2, r2, r4
	ldr     r4, [r2, #0x8]
	mov     r2, r1
	add     r2, #0x8
	str     r4, [r0, r2]
	mov     r2, r1
	add     r2, #0xc
	strb    r3, [r0, r2]
	add     r1, #0xd
	strb    r5, [r0, r1]
	pop     {r3-r6}
	bx      lr
@ 0x2024ab6


.incbin "baserom/arm9.bin", 0x24ab6, 0x2024ab8 - 0x2024ab6


.word 0x20014 @ 0x2024ab8
.thumb
Function_2024abc: @ 2024abc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x44
	mov     r1, #0x2
	mov     r5, r0
	mov     r0, #0x3
	lsl     r1, r1, #16
	bl      Function_2018184
	mov     r1, #0x2
	mov     r6, r0
	mov     r0, #0x3
	lsl     r1, r1, #16
	bl      Function_2018184
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r6
	lsl     r2, r2, #16
	bl      Function_2025ac0
	cmp     r0, #0x0
	add     r0, sp, #0x2c
	beq     branch_2024b04
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2024920
	add     r0, sp, #0x14
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_2024920
	b       branch_2024b0e
@ 0x2024b04

.thumb
branch_2024b04: @ 2024b04 :thumb
	bl      Function_2024860
	add     r0, sp, #0x14
	bl      Function_2024860
.thumb
branch_2024b0e: @ 2024b0e :thumb
	mov     r0, #0x1
	lsl     r0, r0, #18
	mov     r1, r4
	lsr     r2, r0, #1
	bl      Function_2025ac0
	cmp     r0, #0x0
	add     r0, sp, #0x38
	beq     branch_2024b38
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2024920
	add     r0, sp, #0x20
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_2024920
	b       branch_2024b42
@ 0x2024b38

.thumb
branch_2024b38: @ 2024b38 :thumb
	bl      Function_2024860
	add     r0, sp, #0x20
	bl      Function_2024860
.thumb
branch_2024b42: @ 2024b42 :thumb
	mov     r0, r6
	bl      Function_20181c4
	mov     r0, r4
	bl      Function_20181c4
	add     r0, sp, #0x2c
	add     r1, sp, #0x38
	add     r2, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_20249d4
	mov     r4, r0
	add     r0, sp, #0x14
	add     r1, sp, #0x20
	add     r2, sp, #0xc
	add     r3, sp, #0x4
	bl      Function_20249d4
	cmp     r4, #0x0
	bne     branch_2024b76
	cmp     r0, #0x0
	bne     branch_2024b76
	add     sp, #0x44
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x2024b76

.thumb
branch_2024b76: @ 2024b76 :thumb
	cmp     r4, #0x0
	beq     branch_2024b7e
	cmp     r0, #0x0
	bne     branch_2024b84
.thumb
branch_2024b7e: @ 2024b7e :thumb
	add     sp, #0x44
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2024b84

.thumb
branch_2024b84: @ 2024b84 :thumb
	cmp     r4, #0x2
	bne     branch_2024bc8
	cmp     r0, #0x2
	bne     branch_2024bc8
	ldr     r3, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	mov     r2, #0xc
	mov     r4, r3
	mul     r4, r2
	add     r0, sp, #0x30
	ldr     r0, [r0, r4]
	mov     r4, r1
	mul     r4, r2
	add     r2, sp, #0x18
	ldr     r2, [r2, r4]
	cmp     r0, r2
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	bne     branch_2024bb8
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2024bb8

.thumb
branch_2024bb8: @ 2024bb8 :thumb
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2024bc8

.thumb
branch_2024bc8: @ 2024bc8 :thumb
	cmp     r4, #0x1
	bne     branch_2024c1e
	cmp     r0, #0x2
	bne     branch_2024c1e
	ldr     r3, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	mov     r4, #0xc
	mov     r2, r3
	mov     r6, r0
	mul     r2, r4
	add     r1, sp, #0x30
	ldr     r2, [r1, r2]
	mul     r6, r4
	add     r1, sp, #0x18
	ldr     r6, [r1, r6]
	cmp     r2, r6
	bne     branch_2024bfc
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x2c
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2024bfc

.thumb
branch_2024bfc: @ 2024bfc :thumb
	ldr     r0, [sp, #0x4]
	mul     r4, r0
	ldr     r1, [r1, r4]
	cmp     r2, r1
	bne     branch_2024c18
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x2c
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2024c18

.thumb
branch_2024c18: @ 2024c18 :thumb
	add     sp, #0x44
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x2024c1e

.thumb
branch_2024c1e: @ 2024c1e :thumb
	cmp     r4, #0x2
	bne     branch_2024c62
	cmp     r0, #0x1
	bne     branch_2024c62
	ldr     r3, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	mov     r2, #0xc
	mov     r4, r3
	mul     r4, r2
	add     r0, sp, #0x30
	ldr     r0, [r0, r4]
	mov     r4, r1
	mul     r4, r2
	add     r2, sp, #0x18
	ldr     r2, [r2, r4]
	cmp     r0, r2
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	bne     branch_2024c52
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2024c52

.thumb
branch_2024c52: @ 2024c52 :thumb
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x2024c62

.thumb
branch_2024c62: @ 2024c62 :thumb
	cmp     r4, #0x1
	bne     branch_2024ca0
	cmp     r0, #0x1
	bne     branch_2024ca0
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	cmp     r2, r0
	bne     branch_2024ca0
	mov     r3, r2
	mov     r1, #0xc
	mul     r3, r1
	add     r2, sp, #0x30
	mul     r1, r0
	add     r0, sp, #0x18
	ldr     r2, [r2, r3]
	ldr     r0, [r0, r1]
	cmp     r2, r0
	beq     branch_2024c8a
	bl      Function_2022974
.thumb
branch_2024c8a: @ 2024c8a :thumb
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x2c
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2024ca0

.thumb
branch_2024ca0: @ 2024ca0 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	add     r1, sp, #0x30
	ldr     r3, [r1, r2]
	ldr     r1, [sp, #0xc]
	mov     r2, r1
	mul     r2, r0
	add     r0, sp, #0x18
	ldr     r0, [r0, r2]
	cmp     r3, r0
	beq     branch_2024cbe
	bl      Function_2022974
.thumb
branch_2024cbe: @ 2024cbe :thumb
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x2c
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	mov     r0, #0x2
	add     sp, #0x44
	pop     {r3-r6,pc}
@ 0x2024cd4

.thumb
Function_2024cd4: @ 2024cd4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r4, r1
	mov     r5, r2
	bl      Function_202783c
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r6
	bl      Function_20247c8
	cmp     r0, #0x0
	beq     branch_2024d9e
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_20279a8
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2024d14
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	beq     branch_2024d42
.thumb
branch_2024d14: @ 2024d14 :thumb
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, #0x1
	add     r3, sp, #0x14
	bl      Function_20257e8
	bl      Function_20181c4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x2
	bne     branch_2024d34
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_2024d42
@ 0x2024d34

.thumb
branch_2024d34: @ 2024d34 :thumb
	cmp     r0, #0x1
	bne     branch_2024d42
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2024d42
	mov     r0, #0x2
	str     r0, [r4, #0x0]
.thumb
branch_2024d42: @ 2024d42 :thumb
	mov     r4, #0x2
.thumb
branch_2024d44: @ 2024d44 :thumb
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_20279a8
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2024d64
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	beq     branch_2024d98
.thumb
branch_2024d64: @ 2024d64 :thumb
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, r4
	add     r3, sp, #0x14
	bl      Function_20257e8
	bl      Function_20181c4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x2
	bne     branch_2024d84
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2024d98
@ 0x2024d84

.thumb
branch_2024d84: @ 2024d84 :thumb
	cmp     r0, #0x1
	bne     branch_2024d98
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2024d98
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x3
	beq     branch_2024d98
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_2024d98: @ 2024d98 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	ble     branch_2024d44
.thumb
branch_2024d9e: @ 2024d9e :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2024da2


.incbin "baserom/arm9.bin", 0x24da2, 0x2024da4 - 0x2024da2


.thumb
Function_2024da4: @ 2024da4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_2024888
	ldr     r1, [r5, #0x4]
	ldr     r2, [r5, #0x8]
	add     r1, r4, r1
	bl      Function_2025ac0
	pop     {r3-r5,pc}
@ 0x2024dba


.incbin "baserom/arm9.bin", 0x24dba, 0x2024dbc - 0x2024dba


.thumb
Function_2024dbc: @ 2024dbc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x5c] @ 0x2024e20, (=#0x20284)
	mov     r7, r6
	mov     r4, #0x0
	add     r5, r6, r0
	add     r7, #0x14
.thumb
branch_2024dca: @ 2024dca :thumb
	ldr     r0, [pc, #0x58] @ 0x2024e24, (=#0x20020)
	add     r1, r6, r4
	ldrb    r0, [r1, r0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2024da4
	cmp     r0, #0x0
	bne     branch_2024de0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024de0

.thumb
branch_2024de0: @ 2024de0 :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	bl      Function_20248c4
	cmp     r0, #0x0
	bne     branch_2024df2
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024df2

.thumb
branch_2024df2: @ 2024df2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x2
	blt     branch_2024dca
	ldr     r7, [pc, #0x2c] @ 0x2024e28, (=#0x20030)
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_2024e00: @ 2024e00 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_20245bc
	ldr     r1, [pc, #0x20] @ 0x2024e2c, (=#0x20028)
	ldr     r1, [r4, r1]
	bl      Function_201d628
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x26
	blt     branch_2024e00
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2024e1e


.incbin "baserom/arm9.bin", 0x24e1e, 0x2024e20 - 0x2024e1e


.word 0x20284 @ 0x2024e20
.word 0x20020 @ 0x2024e24
.word 0x20030 @ 0x2024e28
.word 0x20028 @ 0x2024e2c

.incbin "baserom/arm9.bin", 0x24e30, 0x20251a4 - 0x2024e30


.thumb
Function_20251a4: @ 20251a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x20251d4, (=#0x20e5830)
	ldr     r4, [pc, #0x2c] @ 0x20251d8, (=#0x20e5894)
	ldr     r0, [r0, #0x0]
	cmp     r5, r0
	blt     branch_20251b6
	bl      Function_2022974
.thumb
branch_20251b6: @ 20251b6 :thumb
	lsl     r0, r5, #4
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	blx     r0
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	add     r2, r3, r2
	mov     r1, #0x4
	sub     r1, r1, r2
	add     r0, r0, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3-r5,pc}
@ 0x20251d4

.word 0x20e5830 @ 0x20251d4
.word 0x20e5894 @ 0x20251d8
.thumb
Function_20251dc: @ 20251dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x6c] @ 0x2025250, (=#0x20e5830)
	ldr     r4, [pc, #0x6c] @ 0x2025254, (=#0x20e5894)
	ldr     r0, [r0, #0x0]
	mov     r7, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x26
	beq     branch_20251f4
	bl      Function_2022974
.thumb
branch_20251f4: @ 20251f4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2025240
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_2025200: @ 2025200 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r6, r0
	beq     branch_202520a
	bl      Function_2022974
.thumb
branch_202520a: @ 202520a :thumb
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r6
	bl      Function_20251a4
	str     r0, [r5, #0x4]
	str     r7, [r5, #0x8]
	mov     r0, #0x0
	strh    r0, [r5, #0xc]
	ldr     r0, [r4, #0x4]
	strh    r0, [r5, #0xe]
	ldr     r0, [r5, #0x4]
	add     r7, r7, r0
	ldr     r0, [sp, #0x4]
	cmp     r6, r0
	beq     branch_2025232
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x14]
	cmp     r1, r0
	beq     branch_2025234
.thumb
branch_2025232: @ 2025232 :thumb
	add     r7, #0x14
.thumb
branch_2025234: @ 2025234 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, r0
	blt     branch_2025200
.thumb
branch_2025240: @ 2025240 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #16
	cmp     r7, r0
	ble     branch_202524c
	bl      Function_2022974
.thumb
branch_202524c: @ 202524c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2025250

.word 0x20e5830 @ 0x2025250
.word 0x20e5894 @ 0x2025254
.thumb
Function_2025258: @ 2025258 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r12, r0
	mov     r4, r0
	mov     r3, r0
	ldr     r0, [pc, #0x78] @ 0x20252e4, (=#0x20e5830)
	ldr     r6, [sp, #0x0]
	ldr     r7, [r0, #0x0]
	mov     r5, r1
.thumb
branch_2025270: @ 2025270 :thumb
	mov     r2, r6
	strb    r3, [r6, #0x0]
	mov     r0, #0x0
	str     r0, [r6, #0x8]
	add     r2, #0x8
	b       branch_2025288
@ 0x202527c

.thumb
branch_202527c: @ 202527c :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [r2, #0x0]
	add     r5, #0x10
	add     r0, r1, r0
	str     r0, [r2, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2025288: @ 2025288 :thumb
	ldrh    r0, [r5, #0xe]
	cmp     r3, r0
	bne     branch_2025292
	cmp     r4, r7
	blt     branch_202527c
.thumb
branch_2025292: @ 2025292 :thumb
	ldr     r0, [r6, #0x8]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x14
	str     r0, [r6, #0x8]
	ldr     r0, [sp, #0x4]
	strb    r0, [r6, #0x1]
	mov     r0, r12
	str     r0, [r6, #0x4]
	ldr     r1, [r6, #0x8]
	ldr     r0, [pc, #0x40] @ 0x20252e8, (=#0xfff)
	add     r0, r1, r0
	lsr     r0, r0, #12
	strb    r0, [r6, #0x2]
	ldrb    r1, [r6, #0x2]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x8]
	mov     r1, r12
	add     r0, r1, r0
	add     r6, #0xc
	mov     r12, r0
	cmp     r3, #0x2
	blt     branch_2025270
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r0, #0xd]
	ldrb    r0, [r0, #0xe]
	add     r1, r1, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	beq     branch_20252d4
	bl      Function_2022974
.thumb
branch_20252d4: @ 20252d4 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x20
	ble     branch_20252de
	bl      Function_2022974
.thumb
branch_20252de: @ 20252de :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20252e2


.incbin "baserom/arm9.bin", 0x252e2, 0x20252e4 - 0x20252e2


.word 0x20e5830 @ 0x20252e4
.word 0xfff @ 0x20252e8

.incbin "baserom/arm9.bin", 0x252ec, 0x2025340 - 0x20252ec


.thumb
Function_2025340: @ 2025340 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r5, [pc, #0x64] @ 0x20253ac, (=#0x20e5834)
	bl      Function_20247c8
	cmp     r0, #0x1
	beq     branch_20253a8
	ldr     r0, [pc, #0x5c] @ 0x20253b0, (=#0x20e582c)
	mov     r7, #0x0
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_20253a2
.thumb
branch_202535c: @ 202535c :thumb
	ldr     r2, [r5, #0x0]
	cmp     r2, #0x0
	beq     branch_2025398
	mov     r0, r6
	mov     r1, #0x3
	add     r3, sp, #0x4
	bl      Function_2025680
	mov     r4, r0
	bne     branch_2025374
	bl      Function_2022974
.thumb
branch_2025374: @ 2025374 :thumb
	ldr     r0, [r5, #0x8]
	blx     r0
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	blx     Function_20c4cf4
	ldr     r1, [r5, #0xc]
	mov     r0, r4
	blx     r1
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	mov     r2, r4
	bl      Function_2025428
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_2025398: @ 2025398 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	cmp     r7, r0
	blt     branch_202535c
.thumb
branch_20253a2: @ 20253a2 :thumb
	mov     r0, r6
	bl      Function_20247d4
.thumb
branch_20253a8: @ 20253a8 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20253ac

.word 0x20e5834 @ 0x20253ac
.word 0x20e582c @ 0x20253b0
.thumb
Function_20253b4: @ 20253b4 :thumb
	push    {r3-r5,lr}
	ldr     r5, [pc, #0x20] @ 0x20253d8, (=#0x20060623)
	add     r4, r1, r3
	str     r5, [r1, r3]
	ldr     r5, [pc, #0x1c] @ 0x20253dc, (=#0x202c8)
	ldr     r0, [r0, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	str     r3, [r4, #0x8]
	add     r3, #0xe
	mov     r0, r1
	mov     r1, r3
	strh    r2, [r4, #0xc]
	bl      Function_201d628
	strh    r0, [r4, #0xe]
	pop     {r3-r5,pc}
@ 0x20253d6


.incbin "baserom/arm9.bin", 0x253d6, 0x20253d8 - 0x20253d6


.word 0x20060623 @ 0x20253d8
.word 0x202c8 @ 0x20253dc
.thumb
Function_20253e0: @ 20253e0 :thumb
	push    {r3-r5,lr}
	ldr     r5, [r1, r3]
	ldr     r0, [pc, #0x34] @ 0x202541c, (=#0x20060623)
	add     r4, r1, r3
	cmp     r5, r0
	beq     branch_20253f0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20253f0

.thumb
branch_20253f0: @ 20253f0 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, r3
	beq     branch_20253fa
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20253fa

.thumb
branch_20253fa: @ 20253fa :thumb
	ldrh    r0, [r4, #0xc]
	cmp     r0, r2
	beq     branch_2025404
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2025404

.thumb
branch_2025404: @ 2025404 :thumb
	add     r3, #0xe
	mov     r0, r1
	mov     r1, r3
	bl      Function_201d628
	ldrh    r1, [r4, #0xe]
	cmp     r1, r0
	bne     branch_2025418
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2025418

.thumb
branch_2025418: @ 2025418 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202541c

.word 0x20060623 @ 0x202541c
.thumb
Function_2025420: @ 2025420 :thumb
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2025426


.incbin "baserom/arm9.bin", 0x25426, 0x2025428 - 0x2025426


.thumb
Function_2025428: @ 2025428 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r0, #0x1
	mov     r5, r1
	mov     r6, r2
	bl      Function_2017b7c
	ldr     r0, [pc, #0x12c] @ 0x2025568, (=#0x20e582c)
	ldr     r0, [r0, #0x0]
	cmp     r5, r0
	blt     branch_2025444
	bl      Function_2022974
.thumb
branch_2025444: @ 2025444 :thumb
	ldr     r1, [pc, #0x124] @ 0x202556c, (=#0x20e5834)
	lsl     r0, r5, #4
	add     r4, r1, r0
	ldr     r0, [r1, r0]
	cmp     r0, r5
	beq     branch_2025454
	bl      Function_2022974
.thumb
branch_2025454: @ 2025454 :thumb
	ldr     r0, [r4, #0x8]
	blx     r0
	str     r0, [sp, #0x4]
	add     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x110] @ 0x2025570, (=#0x202c4)
	ldr     r0, [r7, r0]
	cmp     r0, #0x1
	ldr     r0, [r4, #0x8]
	bne     branch_20254da
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253b4
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x4]
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025a9c
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253e0
	cmp     r0, #0x1
	beq     branch_202549c
	bl      Function_2022974
.thumb
branch_202549c: @ 202549c :thumb
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253b4
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x4]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025a9c
	ldr     r1, [sp, #0x0]
	orr     r0, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253e0
	cmp     r0, #0x1
	beq     branch_202554a
	bl      Function_2022974
	b       branch_202554a
@ 0x20254da

.thumb
branch_20254da: @ 20254da :thumb
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253b4
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x4]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025a9c
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253e0
	cmp     r0, #0x1
	beq     branch_2025510
	bl      Function_2022974
.thumb
branch_2025510: @ 2025510 :thumb
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253b4
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x4]
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025a9c
	ldr     r1, [sp, #0x0]
	orr     r0, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_20253e0
	cmp     r0, #0x1
	beq     branch_202554a
	bl      Function_2022974
.thumb
branch_202554a: @ 202554a :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_202555c
	mov     r0, #0x1
	bl      Function_2017b8c
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x202555c

.thumb
branch_202555c: @ 202555c :thumb
	mov     r0, #0x1
	bl      Function_2017b8c
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2025568

.word 0x20e582c @ 0x2025568
.word 0x20e5834 @ 0x202556c
.word 0x202c4 @ 0x2025570

.incbin "baserom/arm9.bin", 0x25574, 0x2025680 - 0x2025574


.thumb
Function_2025680: @ 2025680 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x154] @ 0x20257dc, (=#0x20e582c)
	mov     r7, r2
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	str     r3, [sp, #0x0]
	cmp     r7, r0
	blt     branch_2025698
	bl      Function_2022974
.thumb
branch_2025698: @ 2025698 :thumb
	ldr     r1, [pc, #0x144] @ 0x20257e0, (=#0x20e5834)
	lsl     r0, r7, #4
	add     r4, r1, r0
	ldr     r0, [r1, r0]
	cmp     r0, r7
	beq     branch_20256a8
	bl      Function_2022974
.thumb
branch_20256a8: @ 20256a8 :thumb
	ldr     r0, [r4, #0x8]
	blx     r0
	str     r0, [sp, #0x10]
	add     r0, #0x10
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      Function_2018144
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x10]
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025ac0
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_20253e0
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r1, r0
	mov     r0, r6
	bl      Function_2025420
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x10]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r6
	bl      Function_2025ac0
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_20253e0
	mov     r7, r0
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r1, r0
	mov     r0, r6
	bl      Function_2025420
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_2025744
	cmp     r7, #0x0
	bne     branch_2025744
	ldr     r0, [pc, #0xbc] @ 0x20257e4, (=#0x202c4)
	mov     r1, #0x0
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	lsl     r0, r0, #12
	bl      Function_2025ac0
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x2025744

.thumb
branch_2025744: @ 2025744 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_202576e
	cmp     r7, #0x1
	bne     branch_202576e
	ldr     r0, [pc, #0x94] @ 0x20257e4, (=#0x202c4)
	mov     r1, #0x1
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	add     r0, #0x40
	lsl     r0, r0, #12
	bl      Function_2025ac0
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x202576e

.thumb
branch_202576e: @ 202576e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_20257c4
	cmp     r7, #0x1
	bne     branch_20257c4
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_202499c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	ldr     r0, [pc, #0x5c] @ 0x20257e4, (=#0x202c4)
	beq     branch_20257a6
	mov     r1, #0x0
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	lsl     r0, r0, #12
	bl      Function_2025ac0
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x20257a6

.thumb
branch_20257a6: @ 20257a6 :thumb
	mov     r1, #0x1
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	add     r0, #0x40
	lsl     r0, r0, #12
	bl      Function_2025ac0
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x20257c4

.thumb
branch_20257c4: @ 20257c4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x18] @ 0x20257e4, (=#0x202c4)
	mov     r1, #0x0
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, r6
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x20257da


.incbin "baserom/arm9.bin", 0x257da, 0x20257dc - 0x20257da


.word 0x20e582c @ 0x20257dc
.word 0x20e5834 @ 0x20257e0
.word 0x202c4 @ 0x20257e4
.thumb
Function_20257e8: @ 20257e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x8]
	ldr     r7, [sp, #0x48]
	bl      Function_202783c
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1f0] @ 0x20259f0, (=#0x20e582c)
	ldr     r0, [r0, #0x0]
	cmp     r6, r0
	blt     branch_2025808
	bl      Function_2022974
.thumb
branch_2025808: @ 2025808 :thumb
	cmp     r6, #0x0
	bne     branch_2025810
	bl      Function_2022974
.thumb
branch_2025810: @ 2025810 :thumb
	ldr     r1, [pc, #0x1e0] @ 0x20259f4, (=#0x20e5834)
	lsl     r0, r6, #4
	add     r4, r1, r0
	ldr     r0, [r1, r0]
	cmp     r0, r6
	beq     branch_2025820
	bl      Function_2022974
.thumb
branch_2025820: @ 2025820 :thumb
	ldr     r0, [r4, #0x8]
	blx     r0
	str     r0, [sp, #0x18]
	add     r0, #0x10
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_2018144
	mov     r5, r0
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	add     r2, sp, #0x24
	add     r3, sp, #0x20
	bl      Function_20259f8
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	bl      Function_20253e0
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x4
	blx     Function_20c4db0
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	ldr     r0, [r4, #0x8]
	blx     r0
	mov     r3, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	bl      Function_20253e0
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r1, sp, #0x28
	mov     r2, #0x4
	blx     Function_20c4db0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	ldr     r1, [sp, #0x14]
	str     r0, [r7, #0x0]
	cmp     r1, #0x1
	bne     branch_20258e0
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	bne     branch_20258e0
	ldr     r2, [sp, #0x24]
	ldr     r1, [sp, #0x2c]
	cmp     r2, r1
	bne     branch_20258e0
	add     r1, sp, #0x1c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_20258ce
	ldr     r2, [sp, #0x20]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r3, r2
	bl      Function_2025a18
	mov     r0, #0x1
	str     r0, [r7, #0x0]
.thumb
branch_20258ce: @ 20258ce :thumb
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x20258e0

.thumb
branch_20258e0: @ 20258e0 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2025924
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2025924
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x28]
	cmp     r1, r0
	bne     branch_2025924
	add     r0, sp, #0x1c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2025910
	ldr     r2, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r3, r2
	bl      Function_2025a18
	mov     r0, #0x1
	str     r0, [r7, #0x0]
.thumb
branch_2025910: @ 2025910 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2025924

.thumb
branch_2025924: @ 2025924 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_20259d4
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_20259d4
	add     r0, sp, #0x1c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2025986
	ldr     r2, [sp, #0x24]
	ldr     r1, [sp, #0x2c]
	cmp     r2, r1
	bne     branch_2025952
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2025952

.thumb
branch_2025952: @ 2025952 :thumb
	ldr     r2, [sp, #0x20]
	ldr     r1, [sp, #0x28]
	cmp     r2, r1
	bne     branch_20259d4
	mov     r1, #0x1
	eor     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r3, r2
	bl      Function_2025a18
	mov     r0, #0x1
	str     r0, [r7, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2025986

.thumb
branch_2025986: @ 2025986 :thumb
	ldr     r2, [sp, #0x24]
	ldr     r1, [sp, #0x28]
	cmp     r2, r1
	bne     branch_20259a2
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x20259a2

.thumb
branch_20259a2: @ 20259a2 :thumb
	ldr     r2, [sp, #0x20]
	ldr     r1, [sp, #0x2c]
	cmp     r2, r1
	bne     branch_20259d4
	mov     r1, #0x1
	eor     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r3, r2
	bl      Function_2025a18
	mov     r0, #0x1
	str     r0, [r7, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #12
	mov     r1, r5
	bl      Function_2025ac0
	add     sp, #0x30
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x20259d4

.thumb
branch_20259d4: @ 20259d4 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	.hword  0x1e52 @ sub r2, r2, #0x1
	ldr     r0, [sp, #0xc]
	ldr     r1, [r4, #0x0]
	mov     r3, r2
	bl      Function_20279d0
	mov     r0, r5
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x20259f0

.word 0x20e582c @ 0x20259f0
.word 0x20e5834 @ 0x20259f4
.thumb
Function_20259f8: @ 20259f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_202783c
	ldr     r1, [sp, #0x18]
	mov     r2, r4
	str     r1, [sp, #0x0]
	mov     r1, r5
	mov     r3, r6
	bl      Function_20279a8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2025a18

.thumb
Function_2025a18: @ 2025a18 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_202783c
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0x10]
	mov     r2, r4
	mov     r3, r6
	str     r1, [sp, #0x0]
	mov     r1, r5
	bl      Function_20279d0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2025a3a


.incbin "baserom/arm9.bin", 0x25a3a, 0x2025a3c - 0x2025a3a


.thumb
Function_2025a3c: @ 2025a3c :thumb
	push    {r3-r5,lr}
	blx     Function_20c1a00
	mov     r4, r0
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2025a50
	bl      Function_2022974
.thumb
branch_2025a50: @ 2025a50 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20cc88c
	ldr     r0, [pc, #0x38] @ 0x2025a94, (=#0x1302)
	blx     Function_20ccf0c
	cmp     r0, #0x0
	beq     branch_2025a66
	ldr     r5, [pc, #0x30] @ 0x2025a94, (=#0x1302)
	b       branch_2025a76
@ 0x2025a66

.thumb
branch_2025a66: @ 2025a66 :thumb
	ldr     r0, [pc, #0x30] @ 0x2025a98, (=#0x1202)
	blx     Function_20ccf0c
	cmp     r0, #0x0
	beq     branch_2025a74
	ldr     r5, [pc, #0x24] @ 0x2025a98, (=#0x1202)
	b       branch_2025a76
@ 0x2025a74

.thumb
branch_2025a74: @ 2025a74 :thumb
	mov     r5, #0x0
.thumb
branch_2025a76: @ 2025a76 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20cc89c
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20c1a68
	cmp     r5, #0x0
	beq     branch_2025a8e
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2025a8e

.thumb
branch_2025a8e: @ 2025a8e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2025a92


.incbin "baserom/arm9.bin", 0x25a92, 0x2025a94 - 0x2025a92


.word 0x1302 @ 0x2025a94
.word 0x1202 @ 0x2025a98
.thumb
Function_2025a9c: @ 2025a9c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	bl      Function_2025b3c
	mov     r5, r0
	mov     r4, #0x1
	add     r6, sp, #0x0
.thumb
branch_2025aaa: @ 2025aaa :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2025bb8
	cmp     r0, #0x0
	beq     branch_2025aaa
	ldr     r0, [sp, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2025abe


.incbin "baserom/arm9.bin", 0x25abe, 0x2025ac0 - 0x2025abe


.thumb
Function_2025ac0: @ 2025ac0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	blx     Function_20c1a00
	mov     r4, r0
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2025adc
	bl      Function_2022974
.thumb
branch_2025adc: @ 2025adc :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20cc88c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	str     r3, [sp, #0x10]
	blx     Function_20cce10
	blx     Function_20cd044
	mov     r5, r0
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20cc89c
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20c1a68
	cmp     r5, #0x0
	bne     branch_2025b26
	ldr     r0, [pc, #0x10] @ 0x2025b2c, (=#0x21c0794)
	ldr     r0, [r0, #0x0]
	bl      Function_20181c4
	mov     r0, #0x1
	bl      Function_209a74c
.thumb
branch_2025b26: @ 2025b26 :thumb
	mov     r0, r5
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2025b2c

.word 0x21c0794 @ 0x2025b2c

.incbin "baserom/arm9.bin", 0x25b30, 0x2025b3c - 0x2025b30


.thumb
Function_2025b3c: @ 2025b3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	blx     Function_20c1a00
	mov     r4, r0
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2025b58
	bl      Function_2022974
.thumb
branch_2025b58: @ 2025b58 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	blx     Function_20cc88c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x6
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [sp, #0xc]
	add     r1, sp, #0x14
	mov     r2, #0x4
	mov     r3, r0
	str     r0, [sp, #0x10]
	blx     Function_20cce10
	cmp     r0, #0x0
	bne     branch_2025b86
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2025c1c
.thumb
branch_2025b86: @ 2025b86 :thumb
	ldr     r0, [pc, #0x28] @ 0x2025bb0, (=#0x21c0794)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r3, [pc, #0x14] @ 0x2025bb4, (=#0x2025b31)
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	blx     Function_20cce10
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2025bb0

.word 0x21c0794 @ 0x2025bb0
.word 0x2025b31 @ 0x2025bb4
.thumb
Function_2025bb8: @ 2025bb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x58] @ 0x2025c18, (=#0x21c0794)
	mov     r4, r2
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_2025c14
	cmp     r1, #0x0
	bne     branch_2025bce
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2025bce

.thumb
branch_2025bce: @ 2025bce :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	blx     Function_20cc89c
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	blx     Function_20c1a68
	blx     Function_20cc840
	cmp     r0, #0x0
	beq     branch_2025bf0
	cmp     r0, #0x4
	beq     branch_2025bfa
	cmp     r0, #0x6
	beq     branch_2025c04
	b       branch_2025bf6
@ 0x2025bf0

.thumb
branch_2025bf0: @ 2025bf0 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2025c10
@ 0x2025bf6

.thumb
branch_2025bf6: @ 2025bf6 :thumb
	bl      Function_2022974
.thumb
branch_2025bfa: @ 2025bfa :thumb
	mov     r1, #0x0
	mov     r0, r5
	str     r1, [r4, #0x0]
	bl      Function_2025c1c
.thumb
branch_2025c04: @ 2025c04 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2025c1c
.thumb
branch_2025c10: @ 2025c10 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2025c14

.thumb
branch_2025c14: @ 2025c14 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2025c18

.word 0x21c0794 @ 0x2025c18
.thumb
Function_2025c1c: @ 2025c1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	mov     r4, r1
	blx     Function_20cc89c
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	blx     Function_20c1a68
	ldr     r0, [pc, #0x10] @ 0x2025c44, (=#0x21c0794)
	ldr     r0, [r0, #0x0]
	bl      Function_20181c4
	mov     r0, #0x1
	mov     r1, r4
	bl      Function_209aa74
	pop     {r3-r5,pc}
@ 0x2025c44

.word 0x21c0794 @ 0x2025c44
.thumb
Function_2025c48: @ 2025c48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_20245a4
	mov     r1, r5
	bl      Function_20245bc
	mov     r4, r0
	mov     r0, r5
	bl      Function_20251a4
	.hword  0x1f05 @ sub r5, r0, #0x4
	mov     r0, r4
	mov     r1, r5
	bl      Function_201d628
	lsr     r1, r5, #31
	add     r1, r5, r1
	asr     r1, r1, #1
	lsl     r1, r1, #1
	ldrh    r1, [r4, r1]
	cmp     r0, r1
	bne     branch_2025c7a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2025c7a

.thumb
branch_2025c7a: @ 2025c7a :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2025c82


.incbin "baserom/arm9.bin", 0x25c82, 0x2025c84 - 0x2025c82


.thumb
Function_2025c84: @ 2025c84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_20245a4
	mov     r1, r5
	bl      Function_20245bc
	mov     r4, r0
	mov     r0, r5
	bl      Function_20251a4
	.hword  0x1f05 @ sub r5, r0, #0x4
	mov     r0, r4
	mov     r1, r5
	bl      Function_201d628
	lsr     r1, r5, #31
	add     r1, r5, r1
	asr     r1, r1, #1
	lsl     r1, r1, #1
	strh    r0, [r4, r1]
	pop     {r3-r5,pc}
@ 0x2025cb0


.incbin "baserom/arm9.bin", 0x25cb0, 0x2025ccc - 0x2025cb0


.thumb
Function_2025ccc: @ 2025ccc :thumb
	ldr     r3, [pc, #0x4] @ 0x2025cd4, (=#0x20245bd)
	mov     r1, #0x0
	bx      r3
@ 0x2025cd2


.incbin "baserom/arm9.bin", 0x25cd2, 0x2025cd4 - 0x2025cd2


.word 0x20245bd @ 0x2025cd4
.thumb
Function_2025cd8: @ 2025cd8 :thumb
	push    {r3,lr}
	bl      Function_2025ccc
	add     r0, #0x10
	pop     {r3,pc}
@ 0x2025ce2


.incbin "baserom/arm9.bin", 0x25ce2, 0x2025d5c - 0x2025ce2


.thumb
Function_2025d5c: @ 2025d5c :thumb
	ldrb    r0, [r0, #0xe]
	bx      lr
@ 0x2025d60

.thumb
Function_2025d60: @ 2025d60 :thumb
	ldrb    r0, [r0, #0xf]
	bx      lr
@ 0x2025d64


.incbin "baserom/arm9.bin", 0x25d64, 0x2025d6c - 0x2025d64


.thumb
Function_2025d6c: @ 2025d6c :thumb
	add     r0, #0x48
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2025d72


.incbin "baserom/arm9.bin", 0x25d72, 0x2025e38 - 0x2025d72


.thumb
Function_2025e38: @ 2025e38 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_20245bc
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3,pc}
@ 0x2025e44

.thumb
Function_2025e44: @ 2025e44 :thumb
	ldr     r3, [pc, #0x4] @ 0x2025e4c, (=#0x20245bd)
	mov     r1, #0x1
	bx      r3
@ 0x2025e4a


.incbin "baserom/arm9.bin", 0x25e4a, 0x2025e4c - 0x2025e4a


.word 0x20245bd @ 0x2025e4c
.thumb
Function_2025e50: @ 2025e50 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_20245bc
	add     r0, #0x24
	pop     {r3,pc}
@ 0x2025e5c

.thumb
Function_2025e5c: @ 2025e5c :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_20245bc
	add     r0, #0x26
	pop     {r3,pc}
@ 0x2025e68

.thumb
Function_2025e68: @ 2025e68 :thumb
	mov     r0, #0x20
	bx      lr
@ 0x2025e6c

.thumb
Function_2025e6c: @ 2025e6c :thumb
	push    {r4,lr}
	mov     r1, #0x20
	bl      Function_2018144
	mov     r4, r0
	bl      Function_2025e8c
	mov     r0, r4
	pop     {r4,pc}
@ 0x2025e7e


.incbin "baserom/arm9.bin", 0x25e7e, 0x2025e80 - 0x2025e7e


.thumb
Function_2025e80: @ 2025e80 :thumb
	ldr     r3, [pc, #0x4] @ 0x2025e88, (=#0x20c4db0)
	mov     r2, #0x20
	bx      r3
@ 0x2025e86


.incbin "baserom/arm9.bin", 0x25e86, 0x2025e88 - 0x2025e86


.word 0x20c4db0 @ 0x2025e88
.thumb
Function_2025e8c: @ 2025e8c :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x2
	strb    r0, [r4, #0x19]
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2025fd0
	pop     {r4,pc}
@ 0x2025ea6


.incbin "baserom/arm9.bin", 0x25ea6, 0x2025ec0 - 0x2025ea6


.thumb
Function_2025ec0: @ 2025ec0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_20021f0
	cmp     r0, #0x8
	blt     branch_2025ed4
	bl      Function_2022974
.thumb
branch_2025ed4: @ 2025ed4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20021b0
	pop     {r3-r5,pc}
@ 0x2025ede


.incbin "baserom/arm9.bin", 0x25ede, 0x2025ef0 - 0x2025ede


.thumb
Function_2025ef0: @ 2025ef0 :thumb
	bx      lr
@ 0x2025ef2


.incbin "baserom/arm9.bin", 0x25ef2, 0x2025ef4 - 0x2025ef2


.thumb
Function_2025ef4: @ 2025ef4 :thumb
	ldr     r3, [pc, #0x8] @ 0x2025f00, (=#0x2023d29)
	mov     r2, r0
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x2025efe


.incbin "baserom/arm9.bin", 0x25efe, 0x2025f00 - 0x2025efe


.word 0x2023d29 @ 0x2025f00
.thumb
Function_2025f04: @ 2025f04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2025ef4
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2025f1c


.incbin "baserom/arm9.bin", 0x25f1c, 0x2025f20 - 0x2025f1c


.thumb
Function_2025f20: @ 2025f20 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2025f24

.thumb
Function_2025f24: @ 2025f24 :thumb
	ldr     r0, [r0, #0x10]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2025f2c

.thumb
Function_2025f2c: @ 2025f2c :thumb
	strb    r1, [r0, #0x18]
	bx      lr
@ 0x2025f30

.thumb
Function_2025f30: @ 2025f30 :thumb
	ldrb    r0, [r0, #0x18]
	bx      lr
@ 0x2025f34

.thumb
Function_2025f34: @ 2025f34 :thumb
	ldrb    r3, [r0, #0x1a]
	mov     r0, #0x1
	mov     r2, r0
	lsl     r2, r1
	mov     r1, r3
	tst     r1, r2
	bne     branch_2025f44
	mov     r0, #0x0
.thumb
branch_2025f44: @ 2025f44 :thumb
	bx      lr
@ 0x2025f46


.incbin "baserom/arm9.bin", 0x25f46, 0x2025f48 - 0x2025f46


.thumb
Function_2025f48: @ 2025f48 :thumb
	ldrb    r3, [r0, #0x1a]
	mov     r2, #0x1
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r0, #0x1a]
	bx      lr
@ 0x2025f56


.incbin "baserom/arm9.bin", 0x25f56, 0x2025f74 - 0x2025f56


.thumb
Function_2025f74: @ 2025f74 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x2025f78


.incbin "baserom/arm9.bin", 0x25f78, 0x2025f8c - 0x2025f78


.thumb
Function_2025f8c: @ 2025f8c :thumb
	ldrb    r0, [r0, #0x1b]
	bx      lr
@ 0x2025f90

.thumb
Function_2025f90: @ 2025f90 :thumb
	strb    r1, [r0, #0x1b]
	bx      lr
@ 0x2025f94

.thumb
Function_2025f94: @ 2025f94 :thumb
	ldr     r2, [pc, #0x1c] @ 0x2025fb4, (=#0xf423f)
	cmp     r1, r2
	bls     branch_2025f9e
	str     r2, [r0, #0x14]
	b       branch_2025fa4
@ 0x2025f9e

.thumb
branch_2025f9e: @ 2025f9e :thumb
	ldr     r2, [r0, #0x14]
	add     r1, r2, r1
	str     r1, [r0, #0x14]
.thumb
branch_2025fa4: @ 2025fa4 :thumb
	ldr     r2, [r0, #0x14]
	ldr     r1, [pc, #0xc] @ 0x2025fb4, (=#0xf423f)
	cmp     r2, r1
	bls     branch_2025fae
	str     r1, [r0, #0x14]
.thumb
branch_2025fae: @ 2025fae :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x2025fb2


.incbin "baserom/arm9.bin", 0x25fb2, 0x2025fb4 - 0x2025fb2


.word 0xf423f @ 0x2025fb4
.thumb
Function_2025fb8: @ 2025fb8 :thumb
	ldr     r2, [r0, #0x14]
	cmp     r2, r1
	bcs     branch_2025fc2
	mov     r1, #0x0
	b       branch_2025fc4
@ 0x2025fc2

.thumb
branch_2025fc2: @ 2025fc2 :thumb
	sub     r1, r2, r1
.thumb
branch_2025fc4: @ 2025fc4 :thumb
	str     r1, [r0, #0x14]
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x2025fca


.incbin "baserom/arm9.bin", 0x25fca, 0x2025fcc - 0x2025fca


.thumb
Function_2025fcc: @ 2025fcc :thumb
	ldrb    r0, [r0, #0x1c]
	bx      lr
@ 0x2025fd0

.thumb
Function_2025fd0: @ 2025fd0 :thumb
	strb    r1, [r0, #0x1c]
	bx      lr
@ 0x2025fd4

.thumb
Function_2025fd4: @ 2025fd4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2025fd8

.thumb
Function_2025fd8: @ 2025fd8 :thumb
	ldrb    r0, [r0, #0x19]
	bx      lr
@ 0x2025fdc


.incbin "baserom/arm9.bin", 0x25fdc, 0x2025fe0 - 0x2025fdc


.thumb
Function_2025fe0: @ 2025fe0 :thumb
	ldrb    r2, [r0, #0x1d]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strb    r1, [r0, #0x1d]
	bx      lr
@ 0x2025fee


.incbin "baserom/arm9.bin", 0x25fee, 0x2025ff0 - 0x2025fee


.thumb
Function_2025ff0: @ 2025ff0 :thumb
	ldrb    r0, [r0, #0x1d]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr
@ 0x2025ff8

.thumb
Function_2025ff8: @ 2025ff8 :thumb
	ldrb    r2, [r0, #0x1d]
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r0, #0x1d]
	bx      lr
@ 0x2026002


.incbin "baserom/arm9.bin", 0x26002, 0x2026004 - 0x2026002


.thumb
Function_2026004: @ 2026004 :thumb
	ldrb    r0, [r0, #0x1d]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr
@ 0x202600c


.incbin "baserom/arm9.bin", 0x2600c, 0x202602c - 0x202600c


.thumb
Function_202602c: @ 202602c :thumb
	mov     r0, #0x20
	bx      lr
@ 0x2026030


.incbin "baserom/arm9.bin", 0x26030, 0x2026074 - 0x2026030


.thumb
Function_2026074: @ 2026074 :thumb
	mov     r2, #0x0
	cmp     r1, #0xc
	bhi     branch_2026106
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r7, #1
	lsl     r0, r3, #0
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r4, #0
	lsl     r4, r5, #0
	lsl     r2, r6, #0
	lsl     r6, r0, #1
	lsl     r4, r1, #1
	lsl     r0, r4, #1
	lsl     r0, r5, #1
	lsl     r0, r6, #1
	lsl     r0, r7, #1
	ldrb    r2, [r0, #0x1a]
	b       branch_2026106
@ 0x20260a4


.incbin "baserom/arm9.bin", 0x260a4, 0x2026106 - 0x20260a4


.thumb
branch_2026106: @ 2026106 :thumb
	mov     r0, r2
	bx      lr
@ 0x202610a


.incbin "baserom/arm9.bin", 0x2610a, 0x2026218 - 0x202610a


.thumb
Function_2026218: @ 2026218 :thumb
	mov     r2, #0xec
	mul     r2, r1
	add     r0, r0, r2
	bx      lr
@ 0x2026220

.thumb
Function_2026220: @ 2026220 :thumb
	bx      lr
@ 0x2026222


.incbin "baserom/arm9.bin", 0x26222, 0x2026234 - 0x2026222


.thumb
Function_2026234: @ 2026234 :thumb
	mov     r1, #0x76
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2026242
	mov     r0, #0x1
	bx      lr
@ 0x2026242

.thumb
branch_2026242: @ 2026242 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2026246


.incbin "baserom/arm9.bin", 0x26246, 0x2026310 - 0x2026246


.thumb
Function_2026310: @ 2026310 :thumb
	ldr     r3, [pc, #0x4] @ 0x2026318, (=#0x20245bd)
	mov     r1, #0x8
	bx      r3
@ 0x2026316


.incbin "baserom/arm9.bin", 0x26316, 0x2026318 - 0x2026316


.word 0x20245bd @ 0x2026318

.incbin "baserom/arm9.bin", 0x2631c, 0x2026324 - 0x202631c


.thumb
Function_2026324: @ 2026324 :thumb
	push    {r4,lr}
	mov     r1, #0xc9
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r4, r0
	bl      Function_2026d6c
	mov     r0, r4
	pop     {r4,pc}
@ 0x2026338

.thumb
Function_2026338: @ 2026338 :thumb
	ldr     r3, [pc, #0x4] @ 0x2026340, (=#0x20c4db0)
	mov     r2, #0xc9
	lsl     r2, r2, #2
	bx      r3
@ 0x2026340

.word 0x20c4db0 @ 0x2026340
.thumb
Function_2026344: @ 2026344 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2026350
	ldr     r1, [pc, #0x10] @ 0x202635c, (=#0x1ed)
	cmp     r0, r1
	bls     branch_2026358
.thumb
branch_2026350: @ 2026350 :thumb
	bl      Function_2022974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2026358

.thumb
branch_2026358: @ 2026358 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202635c

.word 0x1ed @ 0x202635c
.thumb
Function_2026360: @ 2026360 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bne     branch_202639e
	cmp     r4, #0x2
	bcc     branch_2026374
	bl      Function_2022974
.thumb
branch_2026374: @ 2026374 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, r5
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r3, r1
	mov     r0, #0x7
	and     r3, r0
	mov     r6, #0x1
	lsl     r6, r3
	add     r2, #0xc4
	asr     r1, r1, #3
	ldrb    r0, [r2, r1]
	mvn     r6, r6
	and     r0, r6
	strb    r0, [r2, r1]
	mov     r0, r4
	ldrb    r6, [r2, r1]
	lsl     r0, r3
	orr     r0, r6
	strb    r0, [r2, r1]
.thumb
branch_202639e: @ 202639e :thumb
	cmp     r4, #0x2
	bcc     branch_20263a6
	bl      Function_2022974
.thumb
branch_20263a6: @ 20263a6 :thumb
	ldr     r0, [sp, #0x0]
	add     r5, #0x84
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r0, #0x7
	mov     r2, r3
	and     r2, r0
	lsl     r0, r7, #6
	add     r1, r5, r0
	asr     r0, r3, #3
	mov     r3, #0x1
	lsl     r3, r2
	ldrb    r5, [r1, r0]
	mvn     r3, r3
	and     r3, r5
	strb    r3, [r1, r0]
	mov     r3, r4
	ldrb    r5, [r1, r0]
	lsl     r3, r2
	mov     r2, r5
	orr     r2, r3
	strb    r2, [r1, r0]
	pop     {r3-r7,pc}
@ 0x20263d6


.incbin "baserom/arm9.bin", 0x263d6, 0x20263d8 - 0x20263d6


.thumb
Function_20263d8: @ 20263d8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x2
	bls     branch_20263ea
	bl      Function_2022974
.thumb
branch_20263ea: @ 20263ea :thumb
	cmp     r4, #0x2
	bne     branch_20263f0
	mov     r4, #0x0
.thumb
branch_20263f0: @ 20263f0 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2026360
	pop     {r3-r7,pc}
@ 0x20263fe


.incbin "baserom/arm9.bin", 0x263fe, 0x2026400 - 0x20263fe


.thumb
Function_2026400: @ 2026400 :thumb
	mov     r1, #0x43
	mov     r3, #0x0
	lsl     r1, r1, #2
.thumb
branch_2026406: @ 2026406 :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0xff
	beq     branch_2026414
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x1c
	blt     branch_2026406
.thumb
branch_2026414: @ 2026414 :thumb
	mov     r0, r3
	bx      lr
@ 0x2026418

.thumb
Function_2026418: @ 2026418 :thumb
	push    {r3,r4}
	mov     r2, #0x43
	mov     r4, #0x0
	lsl     r2, r2, #2
.thumb
branch_2026420: @ 2026420 :thumb
	add     r3, r0, r4
	ldrb    r3, [r3, r2]
	cmp     r1, r3
	bne     branch_202642e
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x202642e

.thumb
branch_202642e: @ 202642e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x1c
	blt     branch_2026420
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x202643a


.incbin "baserom/arm9.bin", 0x2643a, 0x202643c - 0x202643a


.thumb
Function_202643c: @ 202643c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	mov     r5, r0
	bl      Function_2026418
	cmp     r0, #0x0
	bne     branch_2026460
	mov     r0, r5
	bl      Function_2026400
	cmp     r0, #0x1c
	bge     branch_2026460
	add     r1, r5, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	strb    r4, [r1, r0]
.thumb
branch_2026460: @ 2026460 :thumb
	pop     {r3-r5,pc}
@ 0x2026462


.incbin "baserom/arm9.bin", 0x26462, 0x2026464 - 0x2026462


.thumb
Function_2026464: @ 2026464 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x9c] @ 0x2026508, (=#0x1a6)
	mov     r5, r0
	cmp     r4, r1
	beq     branch_2026488
	add     r0, r1, #0x1
	cmp     r4, r0
	beq     branch_2026488
	mov     r0, r1
	add     r0, #0x46
	cmp     r4, r0
	beq     branch_2026488
	add     r1, #0x41
	cmp     r4, r1
	beq     branch_2026488
	bl      Function_2022974
.thumb
branch_2026488: @ 2026488 :thumb
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_202649a
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x202649a

.thumb
branch_202649a: @ 202649a :thumb
	ldr     r1, [pc, #0x70] @ 0x202650c, (=#0x1e7)
	cmp     r4, r1
	bhi     branch_20264c4
	bcs     branch_20264e0
	mov     r0, r1
	sub     r0, #0x40
	cmp     r4, r0
	bhi     branch_20264e4
	mov     r0, r1
	sub     r0, #0x41
	cmp     r4, r0
	bcc     branch_20264e4
	mov     r0, r1
	sub     r0, #0x41
	cmp     r4, r0
	beq     branch_20264cc
	mov     r0, r1
	sub     r0, #0x40
	cmp     r4, r0
	beq     branch_20264d2
	b       branch_20264e4
@ 0x20264c4

.thumb
branch_20264c4: @ 20264c4 :thumb
	add     r0, r1, #0x5
	cmp     r4, r0
	beq     branch_20264d8
	b       branch_20264e4
@ 0x20264cc

.thumb
branch_20264cc: @ 20264cc :thumb
	sub     r1, #0xdf
	add     r6, r5, r1
	b       branch_20264e4
@ 0x20264d2

.thumb
branch_20264d2: @ 20264d2 :thumb
	sub     r1, #0xde
	add     r6, r5, r1
	b       branch_20264e4
@ 0x20264d8

.thumb
branch_20264d8: @ 20264d8 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r6, r5, r0
	b       branch_20264e4
@ 0x20264e0

.thumb
branch_20264e0: @ 20264e0 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2026510, (=#0x321)
	add     r6, r5, r0
.thumb
branch_20264e4: @ 20264e4 :thumb
	ldrb    r1, [r6, #0x0]
	mov     r2, #0x1
	mov     r0, r1
	tst     r0, r2
	bne     branch_20264f0
	mov     r2, #0x0
.thumb
branch_20264f0: @ 20264f0 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_20264fa
	mov     r0, #0x1
	b       branch_20264fc
@ 0x20264fa

.thumb
branch_20264fa: @ 20264fa :thumb
	mov     r0, #0x0
.thumb
branch_20264fc: @ 20264fc :thumb
	cmp     r2, r0
	bne     branch_2026504
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2026504

.thumb
branch_2026504: @ 2026504 :thumb
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x2026508

.word 0x1a6 @ 0x2026508
.word 0x1e7 @ 0x202650c
.word 0x321 @ 0x2026510
.thumb
Function_2026514: @ 2026514 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0xc0] @ 0x20265dc, (=#0x1a6)
	mov     r7, r0
	mov     r6, r2
	cmp     r5, r1
	beq     branch_202653a
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_202653a
	mov     r0, r1
	add     r0, #0x46
	cmp     r5, r0
	beq     branch_202653a
	add     r1, #0x41
	cmp     r5, r1
	beq     branch_202653a
	bl      Function_2022974
.thumb
branch_202653a: @ 202653a :thumb
	lsl     r1, r5, #16
	mov     r0, r7
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_202654c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x202654c

.thumb
branch_202654c: @ 202654c :thumb
	ldr     r0, [pc, #0x90] @ 0x20265e0, (=#0x1e7)
	cmp     r5, r0
	bhi     branch_2026576
	bcs     branch_2026592
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	bhi     branch_2026596
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	bcc     branch_2026596
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	beq     branch_202657e
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	beq     branch_2026584
	b       branch_2026596
@ 0x2026576

.thumb
branch_2026576: @ 2026576 :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r5, r0
	beq     branch_202658a
	b       branch_2026596
@ 0x202657e

.thumb
branch_202657e: @ 202657e :thumb
	sub     r0, #0xdf
	add     r4, r7, r0
	b       branch_2026596
@ 0x2026584

.thumb
branch_2026584: @ 2026584 :thumb
	sub     r0, #0xde
	add     r4, r7, r0
	b       branch_2026596
@ 0x202658a

.thumb
branch_202658a: @ 202658a :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r4, r7, r0
	b       branch_2026596
@ 0x2026592

.thumb
branch_2026592: @ 2026592 :thumb
	ldr     r0, [pc, #0x50] @ 0x20265e4, (=#0x321)
	add     r4, r7, r0
.thumb
branch_2026596: @ 2026596 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_2026464
	mov     r5, #0x0
	cmp     r0, #0x0
	bls     branch_20265d8
	mov     r1, #0x1
.thumb
branch_20265a6: @ 20265a6 :thumb
	add     r2, r5, #0x1
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #16
	lsr     r3, r2, #16
	mov     r7, r3
	mov     r2, #0x7
	asr     r3, r3, #3
	and     r7, r2
	mov     r2, r1
	ldrb    r3, [r4, r3]
	lsl     r2, r7
	tst     r2, r3
	beq     branch_20265c8
	mov     r2, r1
	b       branch_20265ca
@ 0x20265c8

.thumb
branch_20265c8: @ 20265c8 :thumb
	mov     r2, #0x0
.thumb
branch_20265ca: @ 20265ca :thumb
	cmp     r2, r6
	bne     branch_20265d2
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20265d2

.thumb
branch_20265d2: @ 20265d2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	bcc     branch_20265a6
.thumb
branch_20265d8: @ 20265d8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20265dc

.word 0x1a6 @ 0x20265dc
.word 0x1e7 @ 0x20265e0
.word 0x321 @ 0x20265e4
.thumb
Function_20265e8: @ 20265e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0xfc] @ 0x20266ec, (=#0x1a6)
	mov     r6, r0
	mov     r7, r2
	cmp     r5, r1
	beq     branch_202660e
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_202660e
	mov     r0, r1
	add     r0, #0x46
	cmp     r5, r0
	beq     branch_202660e
	add     r1, #0x41
	cmp     r5, r1
	beq     branch_202660e
	bl      Function_2022974
.thumb
branch_202660e: @ 202660e :thumb
	lsl     r2, r7, #24
	mov     r0, r6
	mov     r1, r5
	lsr     r2, r2, #24
	bl      Function_2026514
	cmp     r0, #0x0
	bne     branch_20266e8
	ldr     r0, [pc, #0xd0] @ 0x20266f0, (=#0x1e7)
	cmp     r5, r0
	bhi     branch_2026648
	bcs     branch_2026664
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	bhi     branch_2026668
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	bcc     branch_2026668
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	beq     branch_2026650
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	beq     branch_2026656
	b       branch_2026668
@ 0x2026648

.thumb
branch_2026648: @ 2026648 :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r5, r0
	beq     branch_202665c
	b       branch_2026668
@ 0x2026650

.thumb
branch_2026650: @ 2026650 :thumb
	sub     r0, #0xdf
	add     r4, r6, r0
	b       branch_2026668
@ 0x2026656

.thumb
branch_2026656: @ 2026656 :thumb
	sub     r0, #0xde
	add     r4, r6, r0
	b       branch_2026668
@ 0x202665c

.thumb
branch_202665c: @ 202665c :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r4, r6, r0
	b       branch_2026668
@ 0x2026664

.thumb
branch_2026664: @ 2026664 :thumb
	ldr     r0, [pc, #0x8c] @ 0x20266f4, (=#0x321)
	add     r4, r6, r0
.thumb
branch_2026668: @ 2026668 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2026464
	mov     r5, r0
	cmp     r5, #0x2
	bge     branch_20266e8
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	cmp     r0, #0x2
	bcc     branch_2026688
	bl      Function_2022974
.thumb
branch_2026688: @ 2026688 :thumb
	.hword  0x1e70 @ sub r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r2, r1
	mov     r0, #0x7
	and     r2, r0
	asr     r1, r1, #3
	mov     r3, #0x1
	lsl     r3, r2
	ldrb    r0, [r4, r1]
	mvn     r3, r3
	and     r0, r3
	strb    r0, [r4, r1]
	lsl     r0, r7, #24
	lsr     r6, r0, #24
	mov     r0, r6
	ldrb    r3, [r4, r1]
	lsl     r0, r2
	orr     r0, r3
	strb    r0, [r4, r1]
	cmp     r5, #0x0
	bne     branch_20266e8
	add     r0, r5, #0x2
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r6, #0x2
	bcc     branch_20266c2
	bl      Function_2022974
.thumb
branch_20266c2: @ 20266c2 :thumb
	.hword  0x1e68 @ sub r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x7
	mov     r1, r2
	and     r1, r0
	asr     r0, r2, #3
	mov     r2, #0x1
	lsl     r2, r1
	ldrb    r3, [r4, r0]
	mvn     r2, r2
	and     r2, r3
	strb    r2, [r4, r0]
	mov     r2, r6
	ldrb    r3, [r4, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_20266e8: @ 20266e8 :thumb
	pop     {r3-r7,pc}
@ 0x20266ea


.incbin "baserom/arm9.bin", 0x266ea, 0x20266ec - 0x20266ea


.word 0x1a6 @ 0x20266ec
.word 0x1e7 @ 0x20266f0
.word 0x321 @ 0x20266f4
.thumb
Function_20266f8: @ 20266f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x67
	mov     r4, r1
	lsl     r0, r0, #2
	cmp     r4, r0
	beq     branch_2026710
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2026710
	bl      Function_2022974
.thumb
branch_2026710: @ 2026710 :thumb
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_2026722
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2026722

.thumb
branch_2026722: @ 2026722 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r4, r0
	bne     branch_202672e
	sub     r0, #0x92
	b       branch_2026730
@ 0x202672e

.thumb
branch_202672e: @ 202672e :thumb
	sub     r0, #0x91
.thumb
branch_2026730: @ 2026730 :thumb
	add     r1, r5, r0
	mov     r0, #0x0
	mov     r3, #0x3
.thumb
branch_2026736: @ 2026736 :thumb
	lsl     r2, r0, #16
	lsr     r5, r2, #16
	asr     r2, r5, #2
	ldrb    r4, [r1, r2]
	lsl     r2, r5, #30
	lsr     r2, r2, #29
	asr     r4, r2
	mov     r2, r4
	and     r2, r3
	cmp     r2, #0x3
	beq     branch_2026752
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	blt     branch_2026736
.thumb
branch_2026752: @ 2026752 :thumb
	pop     {r3-r5,pc}
@ 0x2026754

.thumb
Function_2026754: @ 2026754 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x67
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r4, r2
	cmp     r5, r0
	beq     branch_202676e
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_202676e
	bl      Function_2022974
.thumb
branch_202676e: @ 202676e :thumb
	lsl     r1, r5, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_2026780
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2026780

.thumb
branch_2026780: @ 2026780 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r5, r0
	bne     branch_202678c
	sub     r0, #0x92
	b       branch_202678e
@ 0x202678c

.thumb
branch_202678c: @ 202678c :thumb
	sub     r0, #0x91
.thumb
branch_202678e: @ 202678e :thumb
	add     r1, r6, r0
	mov     r0, #0x0
	mov     r3, #0x3
.thumb
branch_2026794: @ 2026794 :thumb
	lsl     r2, r0, #16
	lsr     r6, r2, #16
	asr     r2, r6, #2
	ldrb    r5, [r1, r2]
	lsl     r2, r6, #30
	lsr     r2, r2, #29
	asr     r5, r2
	mov     r2, r5
	and     r2, r3
	cmp     r2, r4
	bne     branch_20267ae
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20267ae

.thumb
branch_20267ae: @ 20267ae :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	blt     branch_2026794
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20267b8

.thumb
Function_20267b8: @ 20267b8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x67
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r7, r2
	cmp     r5, r0
	beq     branch_20267d2
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_20267d2
	bl      Function_2022974
.thumb
branch_20267d2: @ 20267d2 :thumb
	lsl     r2, r7, #24
	mov     r0, r6
	mov     r1, r5
	lsr     r2, r2, #24
	bl      Function_2026754
	cmp     r0, #0x0
	bne     branch_2026830
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r5, r0
	bne     branch_20267ee
	sub     r0, #0x92
	b       branch_20267f0
@ 0x20267ee

.thumb
branch_20267ee: @ 20267ee :thumb
	sub     r0, #0x91
.thumb
branch_20267f0: @ 20267f0 :thumb
	add     r4, r6, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_20266f8
	mov     r5, r0
	cmp     r5, #0x3
	bge     branch_2026830
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	cmp     r0, #0x4
	bcc     branch_202680c
	bl      Function_2022974
.thumb
branch_202680c: @ 202680c :thumb
	lsl     r0, r5, #16
	lsr     r2, r0, #16
	lsl     r0, r2, #30
	lsr     r1, r0, #29
	asr     r0, r2, #2
	mov     r2, #0x3
	lsl     r2, r1
	ldrb    r3, [r4, r0]
	mvn     r2, r2
	and     r2, r3
	strb    r2, [r4, r0]
	lsl     r2, r7, #24
	lsr     r2, r2, #24
	ldrb    r3, [r4, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_2026830: @ 2026830 :thumb
	pop     {r3-r7,pc}
@ 0x2026832


.incbin "baserom/arm9.bin", 0x26832, 0x2026834 - 0x2026832


.thumb
Function_2026834: @ 2026834 :thumb
	push    {r3,r4}
	lsl     r2, r2, #2
	add     r2, #0x18
	mov     r3, #0xf
	lsl     r3, r2
	ldr     r4, [r0, #0x3c]
	mvn     r3, r3
	lsl     r1, r2
	and     r3, r4
	orr     r1, r3
	str     r1, [r0, #0x3c]
	pop     {r3,r4}
	bx      lr
@ 0x202684e


.incbin "baserom/arm9.bin", 0x2684e, 0x2026850 - 0x202684e


.thumb
Function_2026850: @ 2026850 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x4
	bcc     branch_2026860
	bl      Function_2022974
.thumb
branch_2026860: @ 2026860 :thumb
	cmp     r6, #0xf
	bls     branch_2026868
	bl      Function_2022974
.thumb
branch_2026868: @ 2026868 :thumb
	cmp     r4, #0x2
	bcs     branch_2026878
	add     r0, r5, #0x4
	mov     r1, r6
	mov     r2, r4
	bl      Function_2026834
	pop     {r4-r6,pc}
@ 0x2026878

.thumb
branch_2026878: @ 2026878 :thumb
	.hword  0x1ea2 @ sub r2, r4, #0x2
	add     r5, #0x44
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2026834
	pop     {r4-r6,pc}
@ 0x202688a


.incbin "baserom/arm9.bin", 0x2688a, 0x202688c - 0x202688a


.thumb
Function_202688c: @ 202688c :thumb
	cmp     r1, #0x2
	bcs     branch_20268a0
	ldr     r2, [r0, #0x40]
	lsl     r0, r1, #2
	add     r0, #0x18
	mov     r1, r2
	lsr     r1, r0
	mov     r0, #0xf
	and     r0, r1
	bx      lr
@ 0x20268a0

.thumb
branch_20268a0: @ 20268a0 :thumb
	add     r0, #0x80
	ldr     r2, [r0, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #22
	add     r0, #0x18
	mov     r1, r2
	lsr     r1, r0
	mov     r0, #0xf
	and     r0, r1
	bx      lr
@ 0x20268b6


.incbin "baserom/arm9.bin", 0x268b6, 0x20268b8 - 0x20268b6


.thumb
Function_20268b8: @ 20268b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_20268be: @ 20268be :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_202688c
	cmp     r0, #0xf
	beq     branch_20268d2
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20268be
.thumb
branch_20268d2: @ 20268d2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20268d6


.incbin "baserom/arm9.bin", 0x268d6, 0x20268d8 - 0x20268d6


.thumb
Function_20268d8: @ 20268d8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_20268e0: @ 20268e0 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_202688c
	cmp     r5, r0
	bne     branch_20268f2
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20268f2

.thumb
branch_20268f2: @ 20268f2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20268e0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20268fc

.thumb
Function_20268fc: @ 20268fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [pc, #0x24] @ 0x2026938, (=#0x182)
	cmp     r6, r0
	bne     branch_2026936
	mov     r0, r5
	mov     r1, r4
	bl      Function_20268d8
	cmp     r0, #0x0
	bne     branch_2026936
	mov     r0, r5
	bl      Function_20268b8
	mov     r2, r0
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, r4
	lsr     r2, r2, #24
	bl      Function_2026850
.thumb
branch_2026936: @ 2026936 :thumb
	pop     {r4-r6,pc}
@ 0x2026938

.word 0x182 @ 0x2026938
.thumb
Function_202693c: @ 202693c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0xf
.thumb
branch_2026944: @ 2026944 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2026850
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2026944
	pop     {r4-r6,pc}
@ 0x2026958

.thumb
Function_2026958: @ 2026958 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x20269a0, (=#0x1df)
	mov     r5, r1
	cmp     r5, r0
	beq     branch_2026968
	bl      Function_2022974
.thumb
branch_2026968: @ 2026968 :thumb
	lsl     r1, r5, #16
	mov     r0, r4
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_202697a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202697a

.thumb
branch_202697a: @ 202697a :thumb
	mov     r2, #0xc7
	lsl     r2, r2, #2
	mov     r0, #0x0
	ldr     r5, [r4, r2]
	mov     r1, r0
	mov     r3, #0x7
.thumb
branch_2026986: @ 2026986 :thumb
	lsl     r2, r1, #1
	add     r2, r1, r2
	mov     r4, r5
	lsr     r4, r2
	mov     r2, r4
	and     r2, r3
	cmp     r2, #0x7
	beq     branch_202699e
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, #0x6
	blt     branch_2026986
.thumb
branch_202699e: @ 202699e :thumb
	pop     {r3-r5,pc}
@ 0x20269a0

.word 0x1df @ 0x20269a0
.thumb
Function_20269a4: @ 20269a4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x50] @ 0x20269fc, (=#0x1df)
	mov     r5, r1
	mov     r4, r2
	cmp     r5, r0
	beq     branch_20269b6
	bl      Function_2022974
.thumb
branch_20269b6: @ 20269b6 :thumb
	lsl     r1, r5, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x0
	bne     branch_20269c8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20269c8

.thumb
branch_20269c8: @ 20269c8 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2026958
	mov     r1, #0x0
	cmp     r0, #0x0
	bls     branch_20269f8
	mov     r2, #0xc7
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	mov     r5, #0x7
.thumb
branch_20269de: @ 20269de :thumb
	lsl     r3, r1, #1
	add     r3, r1, r3
	mov     r6, r2
	lsr     r6, r3
	mov     r3, r6
	and     r3, r5
	cmp     r3, r4
	bne     branch_20269f2
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20269f2

.thumb
branch_20269f2: @ 20269f2 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r0
	bcc     branch_20269de
.thumb
branch_20269f8: @ 20269f8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20269fc

.word 0x1df @ 0x20269fc
.thumb
Function_2026a00: @ 2026a00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x2026a5c, (=#0x1df)
	mov     r6, r1
	mov     r4, r2
	cmp     r6, r0
	beq     branch_2026a12
	bl      Function_2022974
.thumb
branch_2026a12: @ 2026a12 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_20269a4
	cmp     r0, #0x0
	bne     branch_2026a58
	mov     r0, r5
	mov     r1, r6
	bl      Function_2026958
	mov     r6, r0
	cmp     r6, #0x6
	bge     branch_2026a58
	cmp     r4, #0x7
	bcc     branch_2026a38
	bl      Function_2022974
.thumb
branch_2026a38: @ 2026a38 :thumb
	lsl     r0, r6, #1
	mov     r1, #0xc7
	lsl     r1, r1, #2
	add     r0, r6, r0
	mov     r2, #0x7
	lsl     r2, r0
	ldr     r3, [r5, r1]
	mvn     r2, r2
	and     r2, r3
	str     r2, [r5, r1]
	mov     r2, r4
	ldr     r3, [r5, r1]
	lsl     r2, r0
	mov     r0, r3
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_2026a58: @ 2026a58 :thumb
	pop     {r4-r6,pc}
@ 0x2026a5a


.incbin "baserom/arm9.bin", 0x26a5a, 0x2026a5c - 0x2026a5a


.word 0x1df @ 0x2026a5c
.thumb
Function_2026a60: @ 2026a60 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x120] @ 0x2026b84, (=#0x1a6)
	mov     r4, r1
	mov     r5, r0
	cmp     r4, r3
	bgt     branch_2026aa2
	bge     branch_2026b0e
	mov     r6, r3
	sub     r6, #0x24
	cmp     r4, r6
	bgt     branch_2026a82
	sub     r3, #0x24
	cmp     r4, r3
	bge     branch_2026b3a
	cmp     r4, #0xc9
	beq     branch_2026ad2
	pop     {r4-r6,pc}
@ 0x2026a82

.thumb
branch_2026a82: @ 2026a82 :thumb
	mov     r0, r3
	sub     r0, #0x9
	cmp     r4, r0
	bgt     branch_2026b80
	mov     r0, r3
	sub     r0, #0xa
	cmp     r4, r0
	blt     branch_2026b80
	mov     r0, r3
	sub     r0, #0xa
	cmp     r4, r0
	beq     branch_2026ae2
	sub     r3, #0x9
	cmp     r4, r3
	beq     branch_2026af8
	pop     {r4-r6,pc}
@ 0x2026aa2

.thumb
branch_2026aa2: @ 2026aa2 :thumb
	mov     r0, r3
	add     r0, #0x39
	cmp     r4, r0
	bgt     branch_2026aba
	mov     r0, r3
	add     r0, #0x39
	cmp     r4, r0
	bge     branch_2026b6c
	add     r0, r3, #0x1
	cmp     r4, r0
	beq     branch_2026b24
	pop     {r4-r6,pc}
@ 0x2026aba

.thumb
branch_2026aba: @ 2026aba :thumb
	mov     r0, r3
	add     r0, #0x41
	cmp     r4, r0
	bgt     branch_2026aca
	add     r3, #0x41
	cmp     r4, r3
	beq     branch_2026b56
	pop     {r4-r6,pc}
@ 0x2026aca

.thumb
branch_2026aca: @ 2026aca :thumb
	add     r3, #0x46
	cmp     r4, r3
	beq     branch_2026b40
	pop     {r4-r6,pc}
@ 0x2026ad2

.thumb
branch_2026ad2: @ 2026ad2 :thumb
	mov     r0, r2
	bl      Function_2076af8
	mov     r1, r0
	mov     r0, r5
	bl      Function_202643c
	pop     {r4-r6,pc}
@ 0x2026ae2

.thumb
branch_2026ae2: @ 2026ae2 :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20267b8
	pop     {r4-r6,pc}
@ 0x2026af8

.thumb
branch_2026af8: @ 2026af8 :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20267b8
	pop     {r4-r6,pc}
@ 0x2026b0e

.thumb
branch_2026b0e: @ 2026b0e :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}
@ 0x2026b24

.thumb
branch_2026b24: @ 2026b24 :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}
@ 0x2026b3a

.thumb
branch_2026b3a: @ 2026b3a :thumb
	bl      Function_20268fc
	pop     {r4-r6,pc}
@ 0x2026b40

.thumb
branch_2026b40: @ 2026b40 :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}
@ 0x2026b56

.thumb
branch_2026b56: @ 2026b56 :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}
@ 0x2026b6c

.thumb
branch_2026b6c: @ 2026b6c :thumb
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026a00
.thumb
branch_2026b80: @ 2026b80 :thumb
	pop     {r4-r6,pc}
@ 0x2026b82


.incbin "baserom/arm9.bin", 0x26b82, 0x2026b84 - 0x2026b82


.word 0x1a6 @ 0x2026b84
.thumb
Function_2026b88: @ 2026b88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_20986cc
	cmp     r0, #0x6
	beq     branch_2026baa
	mov     r1, #0x4a
	lsl     r1, r1, #2
	add     r3, r5, r1
	ldrb    r2, [r3, r4]
	mov     r1, #0x1
	lsl     r1, r0
	mov     r0, r2
	orr     r0, r1
	strb    r0, [r3, r4]
.thumb
branch_2026baa: @ 2026baa :thumb
	pop     {r3-r5,pc}
@ 0x2026bac


.incbin "baserom/arm9.bin", 0x26bac, 0x2026d44 - 0x2026bac


.thumb
Function_2026d44: @ 2026d44 :thumb
	push    {r4,r5}
	mov     r3, #0x0
	ldr     r5, [pc, #0x18] @ 0x2026d64, (=#0x20e5af4)
	mov     r4, #0x1
	mov     r1, r3
.thumb
branch_2026d4e: @ 2026d4e :thumb
	ldrh    r2, [r5, #0x0]
	cmp     r0, r2
	bne     branch_2026d56
	mov     r4, r1
.thumb
branch_2026d56: @ 2026d56 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #0xb
	blt     branch_2026d4e
	mov     r0, r4
	pop     {r4,r5}
	bx      lr
@ 0x2026d64

.word 0x20e5af4 @ 0x2026d64
.thumb
Function_2026d68: @ 2026d68 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2026d6c

.thumb
Function_2026d6c: @ 2026d6c :thumb
	push    {r4,lr}
	mov     r2, #0xc9
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [pc, #0x4c] @ 0x2026dc8, (=#0xbeefcafe)
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2026dcc, (=#0x31b)
	mov     r2, #0x1c
	strb    r1, [r4, r0]
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xff
	blx     Function_20d5124
	mov     r0, #0xff
	mov     r1, r0
	add     r1, #0x9
	strb    r0, [r4, r1]
	mov     r1, r0
	add     r1, #0xa
	strb    r0, [r4, r1]
	mov     r1, r0
	add     r1, #0xb
	strb    r0, [r4, r1]
	mov     r1, r0
	add     r1, #0xc
	strb    r0, [r4, r1]
	mov     r2, #0x0
	mov     r1, #0xc7
	mvn     r2, r2
	lsl     r1, r1, #2
	str     r2, [r4, r1]
	add     r2, r1, #0x4
	strb    r0, [r4, r2]
	.hword  0x1d49 @ add r1, r1, #0x5
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_202693c
	pop     {r4,pc}
@ 0x2026dc6


.incbin "baserom/arm9.bin", 0x26dc6, 0x2026dc8 - 0x2026dc6


.word 0xbeefcafe @ 0x2026dc8
.word 0x31b @ 0x2026dcc
.thumb
Function_2026dd0: @ 2026dd0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2026e04, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026de0
	bl      Function_2022974
.thumb
branch_2026de0: @ 2026de0 :thumb
	ldr     r7, [pc, #0x24] @ 0x2026e08, (=#0x1ed)
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026de6: @ 2026de6 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026f9c
	cmp     r0, #0x1
	bne     branch_2026df6
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2026df6: @ 2026df6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026de6
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026e02


.incbin "baserom/arm9.bin", 0x26e02, 0x2026e04 - 0x2026e02


.word 0xbeefcafe @ 0x2026e04
.word 0x1ed @ 0x2026e08
.thumb
Function_2026e0c: @ 2026e0c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2026e40, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026e1c
	bl      Function_2022974
.thumb
branch_2026e1c: @ 2026e1c :thumb
	ldr     r7, [pc, #0x24] @ 0x2026e44, (=#0x1ed)
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026e22: @ 2026e22 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x1
	bne     branch_2026e32
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2026e32: @ 2026e32 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026e22
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026e3e


.incbin "baserom/arm9.bin", 0x26e3e, 0x2026e40 - 0x2026e3e


.word 0xbeefcafe @ 0x2026e40
.word 0x1ed @ 0x2026e44
.thumb
Function_2026e48: @ 2026e48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2027474
	cmp     r0, #0x0
	beq     branch_2026e5c
	mov     r0, r4
	bl      Function_2026e0c
	pop     {r4,pc}
@ 0x2026e5c

.thumb
branch_2026e5c: @ 2026e5c :thumb
	mov     r0, r4
	bl      Function_2026eac
	pop     {r4,pc}
@ 0x2026e64

.thumb
Function_2026e64: @ 2026e64 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2026ea4, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026e74
	bl      Function_2022974
.thumb
branch_2026e74: @ 2026e74 :thumb
	ldr     r7, [pc, #0x30] @ 0x2026ea8, (=#0x1ed)
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026e7a: @ 2026e7a :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026f9c
	cmp     r0, #0x1
	bne     branch_2026e96
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026e96
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2026e96: @ 2026e96 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026e7a
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026ea2


.incbin "baserom/arm9.bin", 0x26ea2, 0x2026ea4 - 0x2026ea2


.word 0xbeefcafe @ 0x2026ea4
.word 0x1ed @ 0x2026ea8
.thumb
Function_2026eac: @ 2026eac :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2026eec, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026ebc
	bl      Function_2022974
.thumb
branch_2026ebc: @ 2026ebc :thumb
	ldr     r7, [pc, #0x30] @ 0x2026ef0, (=#0x1ed)
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026ec2: @ 2026ec2 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x1
	bne     branch_2026ede
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026ede
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2026ede: @ 2026ede :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026ec2
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026eea


.incbin "baserom/arm9.bin", 0x26eea, 0x2026eec - 0x2026eea


.word 0xbeefcafe @ 0x2026eec
.word 0x1ed @ 0x2026ef0
.thumb
Function_2026ef4: @ 2026ef4 :thumb
	push    {r3,lr}
	bl      Function_2026f20
	ldr     r1, [pc, #0xc] @ 0x2026f08, (=#0x1e2)
	cmp     r0, r1
	bcc     branch_2026f04
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2026f04

.thumb
branch_2026f04: @ 2026f04 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2026f08

.word 0x1e2 @ 0x2026f08
.thumb
Function_2026f0c: @ 2026f0c :thumb
	push    {r3,lr}
	bl      Function_2026f58
	cmp     r0, #0xd2
	bcc     branch_2026f1a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2026f1a

.thumb
branch_2026f1a: @ 2026f1a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2026f1e


.incbin "baserom/arm9.bin", 0x26f1e, 0x2026f20 - 0x2026f1e


.thumb
Function_2026f20: @ 2026f20 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x30] @ 0x2026f54, (=#0x1ed)
	mov     r6, r0
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026f2a: @ 2026f2a :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026f9c
	cmp     r0, #0x1
	bne     branch_2026f4a
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2026d44
	cmp     r0, #0x1
	bne     branch_2026f4a
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
.thumb
branch_2026f4a: @ 2026f4a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026f2a
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2026f54

.word 0x1ed @ 0x2026f54
.thumb
Function_2026f58: @ 2026f58 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x3c] @ 0x2026f98, (=#0x1ed)
	mov     r6, r0
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2026f62: @ 2026f62 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_2026fe8
	cmp     r0, #0x1
	bne     branch_2026f8e
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026f8e
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2026d68
	cmp     r0, #0x1
	bne     branch_2026f8e
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
.thumb
branch_2026f8e: @ 2026f8e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026f62
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2026f98

.word 0x1ed @ 0x2026f98
.thumb
Function_2026f9c: @ 2026f9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2026fe4, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026fae
	bl      Function_2022974
.thumb
branch_2026fae: @ 2026fae :thumb
	mov     r0, r4
	bl      Function_2026344
	cmp     r0, #0x0
	beq     branch_2026fbc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2026fbc

.thumb
branch_2026fbc: @ 2026fbc :thumb
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x1
	mov     r1, #0x7
	and     r1, r2
	mov     r3, r0
	lsl     r3, r1
	asr     r1, r2, #3
	add     r2, r5, r1
	ldrb    r1, [r2, #0x4]
	tst     r1, r3
	beq     branch_2026fde
	add     r2, #0x44
	ldrb    r1, [r2, #0x0]
	tst     r1, r3
	bne     branch_2026fe0
.thumb
branch_2026fde: @ 2026fde :thumb
	mov     r0, #0x0
.thumb
branch_2026fe0: @ 2026fe0 :thumb
	pop     {r3-r5,pc}
@ 0x2026fe2


.incbin "baserom/arm9.bin", 0x26fe2, 0x2026fe4 - 0x2026fe2


.word 0xbeefcafe @ 0x2026fe4
.thumb
Function_2026fe8: @ 2026fe8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x34] @ 0x2027028, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026ffa
	bl      Function_2022974
.thumb
branch_2026ffa: @ 2026ffa :thumb
	mov     r0, r4
	bl      Function_2026344
	cmp     r0, #0x0
	beq     branch_2027008
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2027008

.thumb
branch_2027008: @ 2027008 :thumb
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r0, #0x1
	mov     r1, #0x7
	and     r1, r3
	mov     r2, r0
	lsl     r2, r1
	asr     r1, r3, #3
	add     r1, r5, r1
	add     r1, #0x44
	ldrb    r1, [r1, #0x0]
	tst     r1, r2
	bne     branch_2027026
	mov     r0, #0x0
.thumb
branch_2027026: @ 2027026 :thumb
	pop     {r3-r5,pc}
@ 0x2027028

.word 0xbeefcafe @ 0x2027028

.incbin "baserom/arm9.bin", 0x2702c, 0x20270dc - 0x202702c


.thumb
Function_20270dc: @ 20270dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x20270f4, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_20270ec
	bl      Function_2022974
.thumb
branch_20270ec: @ 20270ec :thumb
	mov     r0, r4
	bl      Function_2026400
	pop     {r4,pc}
@ 0x20270f4

.word 0xbeefcafe @ 0x20270f4

.incbin "baserom/arm9.bin", 0x270f8, 0x20272a4 - 0x20270f8


.thumb
Function_20272a4: @ 20272a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r1, #0x0
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	bl      Function_2074470
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	bl      Function_2075d6c
	mov     r6, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x90] @ 0x2027364, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_20272da
	bl      Function_2022974
.thumb
branch_20272da: @ 20272da :thumb
	mov     r0, r4
	bl      Function_2026344
	cmp     r0, #0x0
	bne     branch_202735e
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r1, #0x1
	mov     r0, #0x7
	mov     r2, r7
	and     r2, r0
	mov     r0, r1
	asr     r3, r7, #3
	lsl     r0, r2
	add     r2, r5, r3
	add     r2, #0x44
	ldrb    r2, [r2, #0x0]
	tst     r2, r0
	bne     branch_202731e
	ldr     r1, [pc, #0x64] @ 0x2027368, (=#0x147)
	cmp     r4, r1
	bne     branch_202730e
	ldr     r0, [sp, #0x4]
	sub     r1, #0x43
	str     r0, [r5, r1]
.thumb
branch_202730e: @ 202730e :thumb
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_20263d8
	b       branch_2027340
@ 0x202731e

.thumb
branch_202731e: @ 202731e :thumb
	add     r2, r5, r3
	add     r2, #0x84
	ldrb    r2, [r2, #0x0]
	tst     r0, r2
	bne     branch_202732a
	mov     r1, #0x0
.thumb
branch_202732a: @ 202732a :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	cmp     r0, r6
	beq     branch_2027340
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_20263d8
.thumb
branch_2027340: @ 2027340 :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026a60
	mov     r1, #0x7
	add     r5, #0x44
	asr     r0, r7, #3
	ldrb    r3, [r5, r0]
	mov     r2, #0x1
	and     r1, r7
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r5, r0]
.thumb
branch_202735e: @ 202735e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2027362


.incbin "baserom/arm9.bin", 0x27362, 0x2027364 - 0x2027362


.word 0xbeefcafe @ 0x2027364
.word 0x147 @ 0x2027368
.thumb
Function_202736c: @ 202736c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r7
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r1
	bl      Function_2074470
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      Function_2075d6c
	mov     r6, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x202744c, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_20273ae
	bl      Function_2022974
.thumb
branch_20273ae: @ 20273ae :thumb
	mov     r0, r4
	bl      Function_2026344
	cmp     r0, #0x0
	bne     branch_2027448
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r2, #0x1
	mov     r0, #0x7
	and     r0, r3
	mov     r1, r2
	lsl     r1, r0
	asr     r0, r3, #3
	add     r3, r5, r0
	add     r3, #0x44
	ldrb    r3, [r3, #0x0]
	tst     r3, r1
	bne     branch_20273f0
	ldr     r1, [pc, #0x78] @ 0x2027450, (=#0x147)
	cmp     r4, r1
	bne     branch_20273e0
	ldr     r0, [sp, #0x0]
	sub     r1, #0x43
	str     r0, [r5, r1]
.thumb
branch_20273e0: @ 20273e0 :thumb
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_20263d8
	b       branch_2027412
@ 0x20273f0

.thumb
branch_20273f0: @ 20273f0 :thumb
	add     r0, r5, r0
	add     r0, #0x84
	ldrb    r0, [r0, #0x0]
	tst     r0, r1
	bne     branch_20273fc
	mov     r2, #0x0
.thumb
branch_20273fc: @ 20273fc :thumb
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	cmp     r0, r6
	beq     branch_2027412
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_20263d8
.thumb
branch_2027412: @ 2027412 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2026a60
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026b88
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	add     r1, r5, #0x4
	asr     r0, r6, #3
	mov     r2, #0x7
	ldrb    r4, [r1, r0]
	mov     r3, #0x1
	and     r2, r6
	lsl     r3, r2
	mov     r2, r4
	orr     r2, r3
	add     r5, #0x44
	strb    r2, [r1, r0]
	ldrb    r1, [r5, r0]
	orr     r1, r3
	strb    r1, [r5, r0]
.thumb
branch_2027448: @ 2027448 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x202744c

.word 0xbeefcafe @ 0x202744c
.word 0x147 @ 0x2027450
.thumb
Function_2027454: @ 2027454 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x202746c, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027464
	bl      Function_2022974
.thumb
branch_2027464: @ 2027464 :thumb
	ldr     r0, [pc, #0x8] @ 0x2027470, (=#0x31b)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x202746c

.word 0xbeefcafe @ 0x202746c
.word 0x31b @ 0x2027470
.thumb
Function_2027474: @ 2027474 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x202748c, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027484
	bl      Function_2022974
.thumb
branch_2027484: @ 2027484 :thumb
	ldr     r0, [pc, #0x8] @ 0x2027490, (=#0x31b)
	ldrb    r0, [r4, r0]
	pop     {r4,pc}
@ 0x202748a


.incbin "baserom/arm9.bin", 0x2748a, 0x202748c - 0x202748a


.word 0xbeefcafe @ 0x202748c
.word 0x31b @ 0x2027490

.incbin "baserom/arm9.bin", 0x27494, 0x20274b0 - 0x2027494


.thumb
Function_20274b0: @ 20274b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x20274cc, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_20274c0
	bl      Function_2022974
.thumb
branch_20274c0: @ 20274c0 :thumb
	mov     r0, #0xc6
	mov     r1, #0x1
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x20274ca


.incbin "baserom/arm9.bin", 0x274ca, 0x20274cc - 0x20274ca


.word 0xbeefcafe @ 0x20274cc

.incbin "baserom/arm9.bin", 0x274d0, 0x2027508 - 0x20274d0


.thumb
Function_2027508: @ 2027508 :thumb
	ldr     r1, [pc, #0x4] @ 0x2027510, (=#0x319)
	mov     r2, #0x1
	strb    r2, [r0, r1]
	bx      lr
@ 0x2027510

.word 0x319 @ 0x2027510

.incbin "baserom/arm9.bin", 0x27514, 0x2027520 - 0x2027514


.thumb
Function_2027520: @ 2027520 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2027538, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027530
	bl      Function_2022974
.thumb
branch_2027530: @ 2027530 :thumb
	ldr     r0, [pc, #0x8] @ 0x202753c, (=#0x31a)
	ldrb    r0, [r4, r0]
	pop     {r4,pc}
@ 0x2027536


.incbin "baserom/arm9.bin", 0x27536, 0x2027538 - 0x2027536


.word 0xbeefcafe @ 0x2027538
.word 0x31a @ 0x202753c
.thumb
Function_2027540: @ 2027540 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2027558, (=#0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027550
	bl      Function_2022974
.thumb
branch_2027550: @ 2027550 :thumb
	ldr     r0, [pc, #0x8] @ 0x202755c, (=#0x31a)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2027558

.word 0xbeefcafe @ 0x2027558
.word 0x31a @ 0x202755c
.thumb
Function_2027560: @ 2027560 :thumb
	ldr     r3, [pc, #0x4] @ 0x2027568, (=#0x20245bd)
	mov     r1, #0x7
	bx      r3
@ 0x2027566


.incbin "baserom/arm9.bin", 0x27566, 0x2027568 - 0x2027566


.word 0x20245bd @ 0x2027568

.incbin "baserom/arm9.bin", 0x2756c, 0x202783c - 0x202756c


.thumb
Function_202783c: @ 202783c :thumb
	ldr     r3, [pc, #0x4] @ 0x2027844, (=#0x20245bd)
	mov     r1, #0xa
	bx      r3
@ 0x2027842


.incbin "baserom/arm9.bin", 0x27842, 0x2027844 - 0x2027842


.word 0x20245bd @ 0x2027844
.thumb
Function_2027848: @ 2027848 :thumb
	ldr     r3, [pc, #0x4] @ 0x2027850, (=#0x20245e1)
	mov     r1, #0xa
	bx      r3
@ 0x202784e


.incbin "baserom/arm9.bin", 0x2784e, 0x2027850 - 0x202784e


.word 0x20245e1 @ 0x2027850
.thumb
Function_2027854: @ 2027854 :thumb
	ldr     r3, [pc, #0x4] @ 0x202785c, (=#0x20245bd)
	mov     r1, #0xa
	bx      r3
@ 0x202785a


.incbin "baserom/arm9.bin", 0x2785a, 0x202785c - 0x202785a


.word 0x20245bd @ 0x202785c
.thumb
Function_2027860: @ 2027860 :thumb
	push    {r3,lr}
	mov     r1, #0xa
	bl      Function_20245bc
	mov     r1, #0x7
	lsl     r1, r1, #8
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x2027870

.thumb
Function_2027870: @ 2027870 :thumb
	ldr     r1, [pc, #0x4] @ 0x2027878, (=#0x724)
	add     r0, r0, r1
	bx      lr
@ 0x2027876


.incbin "baserom/arm9.bin", 0x27876, 0x2027878 - 0x2027876


.word 0x724 @ 0x2027878

.incbin "baserom/arm9.bin", 0x2787c, 0x2027894 - 0x202787c


.thumb
Function_2027894: @ 2027894 :thumb
	ldr     r1, [pc, #0x4] @ 0x202789c, (=#0x734)
	add     r0, r0, r1
	bx      lr
@ 0x202789a


.incbin "baserom/arm9.bin", 0x2789a, 0x202789c - 0x202789a


.word 0x734 @ 0x202789c

.incbin "baserom/arm9.bin", 0x278a0, 0x20278b8 - 0x20278a0


.thumb
Function_20278b8: @ 20278b8 :thumb
	ldr     r2, [pc, #0xc] @ 0x20278c8, (=#0x74d)
	mov     r1, #0x1
	ldrb    r3, [r0, r2]
	bic     r3, r1
	mov     r1, #0x1
	orr     r1, r3
	strb    r1, [r0, r2]
	bx      lr
@ 0x20278c8

.word 0x74d @ 0x20278c8
.thumb
Function_20278cc: @ 20278cc :thumb
	ldr     r1, [pc, #0x8] @ 0x20278d8, (=#0x74d)
	ldrb    r0, [r0, r1]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr
@ 0x20278d6


.incbin "baserom/arm9.bin", 0x278d6, 0x20278d8 - 0x20278d6


.word 0x74d @ 0x20278d8

.incbin "baserom/arm9.bin", 0x278dc, 0x2027938 - 0x20278dc


.thumb
Function_2027938: @ 2027938 :thumb
	ldr     r2, [pc, #0x18] @ 0x2027954, (=#0x754)
	ldrh    r3, [r0, r2]
	strh    r3, [r1, #0x0]
	add     r3, r2, #0x2
	ldrh    r3, [r0, r3]
	strh    r3, [r1, #0x2]
	add     r3, r2, #0x4
	ldrh    r3, [r0, r3]
	.hword  0x1d92 @ add r2, r2, #0x6
	strh    r3, [r1, #0x4]
	ldrh    r0, [r0, r2]
	strh    r0, [r1, #0x6]
	bx      lr
@ 0x2027952


.incbin "baserom/arm9.bin", 0x27952, 0x2027954 - 0x2027952


.word 0x754 @ 0x2027954

.incbin "baserom/arm9.bin", 0x27958, 0x20279a8 - 0x2027958


.thumb
Function_20279a8: @ 20279a8 :thumb
	push    {r3-r6}
	.hword  0x1e4c @ sub r4, r1, #0x1
	lsl     r1, r4, #2
	add     r1, r0, r1
	ldr     r5, [pc, #0x18] @ 0x20279cc, (=#0x75c)
	add     r0, r0, r4
	ldr     r6, [r1, r5]
	str     r6, [r2, #0x0]
	mov     r2, r5
	add     r2, #0x14
	ldr     r1, [r1, r2]
	add     r5, #0x28
	str     r1, [r3, #0x0]
	ldrb    r1, [r0, r5]
	ldr     r0, [sp, #0x10]
	strb    r1, [r0, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x20279cc

.word 0x75c @ 0x20279cc
.thumb
Function_20279d0: @ 20279d0 :thumb
	push    {r4,r5}
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r4, r1, #2
	add     r5, r0, r4
	ldr     r4, [pc, #0x18] @ 0x20279f4, (=#0x75c)
	add     r0, r0, r1
	str     r2, [r5, r4]
	mov     r2, r4
	add     r2, #0x14
	str     r3, [r5, r2]
	ldr     r2, [pc, #0x10] @ 0x20279f8, (=#0xfffffff8)
	add     r4, #0x28
	add     r2, sp
	ldrb    r2, [r2, #0x10]
	strb    r2, [r0, r4]
	pop     {r4,r5}
	bx      lr
@ 0x20279f2


.incbin "baserom/arm9.bin", 0x279f2, 0x20279f4 - 0x20279f2


.word 0x75c @ 0x20279f4
.word 0xfffffff8 @ 0x20279f8
.thumb
Function_20279fc: @ 20279fc :thumb
	push    {r4,lr}
	mov     r1, #0x2
	bl      Function_2018144
	mov     r4, r0
	bl      Function_2027a1c
	mov     r0, r4
	pop     {r4,pc}
@ 0x2027a0e


.incbin "baserom/arm9.bin", 0x27a0e, 0x2027a10 - 0x2027a0e


.thumb
Function_2027a10: @ 2027a10 :thumb
	ldr     r3, [pc, #0x4] @ 0x2027a18, (=#0x20c4db0)
	mov     r2, #0x2
	bx      r3
@ 0x2027a16


.incbin "baserom/arm9.bin", 0x27a16, 0x2027a18 - 0x2027a16


.word 0x20c4db0 @ 0x2027a18
.thumb
Function_2027a1c: @ 2027a1c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x2
	blx     Function_20c4cf4
	ldrh    r1, [r4, #0x0]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x30
	bic     r1, r0
	strh    r1, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x40
	bic     r1, r0
	strh    r1, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x80
	bic     r1, r0
	strh    r1, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2027a60, (=#0xfffffcff)
	and     r0, r1
	strh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2027a64, (=#0xffff83ff)
	and     r0, r1
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2027a5e


.incbin "baserom/arm9.bin", 0x27a5e, 0x2027a60 - 0x2027a5e


.word 0xfffffcff @ 0x2027a60
.word 0xffff83ff @ 0x2027a64

.incbin "baserom/arm9.bin", 0x27a68, 0x2027aa4 - 0x2027a68


.thumb
Function_2027aa4: @ 2027aa4 :thumb
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bx      lr
@ 0x2027aac


.incbin "baserom/arm9.bin", 0x27aac, 0x2027ac0 - 0x2027aac


.thumb
Function_2027ac0: @ 2027ac0 :thumb
	push    {r3,lr}
	bl      Function_2027aa4
	cmp     r0, #0x0
	bne     branch_2027ace
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x2027ace

.thumb
branch_2027ace: @ 2027ace :thumb
	cmp     r0, #0x1
	bne     branch_2027ad6
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x2027ad6

.thumb
branch_2027ad6: @ 2027ad6 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2027ada


.incbin "baserom/arm9.bin", 0x27ada, 0x2027b50 - 0x2027ada


.thumb
Function_2027b50: @ 2027b50 :thumb
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #17
	lsr     r0, r0, #27
	bx      lr
@ 0x2027b58


.incbin "baserom/arm9.bin", 0x27b58, 0x2027c50 - 0x2027b58


.thumb
Function_2027c50: @ 2027c50 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	strb    r1, [r0, #0x6]
	strh    r1, [r0, #0x8]
	strb    r1, [r0, #0xa]
	strb    r1, [r0, #0xb]
	strb    r1, [r0, #0xc]
	strb    r1, [r0, #0xd]
	bx      lr
@ 0x2027c68


.incbin "baserom/arm9.bin", 0x27c68, 0x2027c7c - 0x2027c68


.thumb
Function_2027c7c: @ 2027c7c :thumb
	.hword  0x1e4b @ sub r3, r1, #0x1
	lsl     r1, r3, #1
	add     r1, r3, r1
	ldrb    r1, [r0, r1]
	mov     r0, #0x3c
	mul     r0, r1
	cmp     r2, #0x1
	bne     branch_2027c9a
	lsl     r1, r0, #1
	add     r1, r0, r1
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	bx      lr
@ 0x2027c9a

.thumb
branch_2027c9a: @ 2027c9a :thumb
	cmp     r2, #0x2
	bne     branch_2027ca6
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r1, r1, #1
	add     r0, r0, r1
.thumb
branch_2027ca6: @ 2027ca6 :thumb
	bx      lr
@ 0x2027ca8


.incbin "baserom/arm9.bin", 0x27ca8, 0x2027d04 - 0x2027ca8


.thumb
Function_2027d04: @ 2027d04 :thumb
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrb    r0, [r0, #0x1]
	bx      lr
@ 0x2027d0e


.incbin "baserom/arm9.bin", 0x27d0e, 0x2027d10 - 0x2027d0e


.thumb
Function_2027d10: @ 2027d10 :thumb
	mov     r2, #0xe
	mul     r2, r1
	ldrb    r0, [r0, r2]
	bx      lr
@ 0x2027d18

.thumb
Function_2027d18: @ 2027d18 :thumb
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrb    r0, [r0, #0xa]
	cmp     r0, #0x0
	bne     branch_2027d28
	mov     r0, #0x0
	bx      lr
@ 0x2027d28

.thumb
branch_2027d28: @ 2027d28 :thumb
	cmp     r0, #0x32
	bgt     branch_2027d30
	mov     r0, #0x1
	bx      lr
@ 0x2027d30

.thumb
branch_2027d30: @ 2027d30 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x2027d34

.thumb
Function_2027d34: @ 2027d34 :thumb
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrb    r0, [r0, #0xb]
	bx      lr
@ 0x2027d3e


.incbin "baserom/arm9.bin", 0x27d3e, 0x2027d40 - 0x2027d3e


.thumb
Function_2027d40: @ 2027d40 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0xe
	mul     r4, r0
	strb    r3, [r5, r4]
	mov     r0, #0x1
	add     r6, r5, r4
	strb    r0, [r6, #0x1]
	mov     r0, r2
	ldrb    r2, [r6, #0xc]
	mov     r1, r3
	bl      Function_2027c7c
	mov     r1, r6
	strh    r0, [r1, #0x2]
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
	strb    r0, [r1, #0x6]
	strh    r0, [r1, #0x8]
	mov     r0, #0x64
	strb    r0, [r1, #0xa]
	mov     r0, #0x5
	strb    r0, [r1, #0xb]
	mov     r0, #0x1
	strb    r0, [r1, #0xd]
	pop     {r4-r6,pc}
@ 0x2027d76


.incbin "baserom/arm9.bin", 0x27d76, 0x2027d9c - 0x2027d76


.thumb
Function_2027d9c: @ 2027d9c :thumb
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrb    r0, [r0, #0xc]
	bx      lr
@ 0x2027da6


.incbin "baserom/arm9.bin", 0x27da6, 0x2027da8 - 0x2027da6


.thumb
Function_2027da8: @ 2027da8 :thumb
	mov     r3, #0xe
	mul     r3, r1
	add     r0, r0, r3
	strb    r2, [r0, #0xc]
	bx      lr
@ 0x2027db2


.incbin "baserom/arm9.bin", 0x27db2, 0x2027db4 - 0x2027db2


.thumb
Function_2027db4: @ 2027db4 :thumb
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrh    r0, [r0, #0x8]
	bx      lr
@ 0x2027dbe


.incbin "baserom/arm9.bin", 0x27dbe, 0x2027dc0 - 0x2027dbe


.thumb
Function_2027dc0: @ 2027dc0 :thumb
	push    {r4,lr}
	mov     r2, #0xe
	mul     r2, r1
	add     r0, r0, r2
	ldrh    r4, [r0, #0x8]
	bl      Function_2027c50
	mov     r0, r4
	pop     {r4,pc}
@ 0x2027dd2


.incbin "baserom/arm9.bin", 0x27dd2, 0x2027f50 - 0x2027dd2


.thumb
Function_2027f50: @ 2027f50 :thumb
	ldr     r3, [pc, #0x4] @ 0x2027f58, (=#0x20c4cf4)
	mov     r1, #0x0
	mov     r2, #0x24
	bx      r3
@ 0x2027f58

.word 0x20c4cf4 @ 0x2027f58
.thumb
Function_2027f5c: @ 2027f5c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2027f50
	str     r4, [r5, #0x0]
	add     r0, r5, #0x4
	pop     {r3-r5,pc}
@ 0x2027f6c

.thumb
Function_2027f6c: @ 2027f6c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, r1
	beq     branch_2027f7a
	bl      Function_2022974
.thumb
branch_2027f7a: @ 2027f7a :thumb
	add     r0, r4, #0x4
	pop     {r4,pc}
@ 0x2027f7e


.incbin "baserom/arm9.bin", 0x27f7e, 0x2027f80 - 0x2027f7e


.thumb
Function_2027f80: @ 2027f80 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2027f84


.incbin "baserom/arm9.bin", 0x27f84, 0x2027f8c - 0x2027f84


.thumb
Function_2027f8c: @ 2027f8c :thumb
	ldr     r3, [pc, #0x4] @ 0x2027f94, (=#0x20245bd)
	mov     r1, #0x9
	bx      r3
@ 0x2027f92


.incbin "baserom/arm9.bin", 0x27f92, 0x2027f94 - 0x2027f92


.word 0x20245bd @ 0x2027f94

.incbin "baserom/arm9.bin", 0x27f98, 0x2028124 - 0x2027f98


.thumb
Function_2028124: @ 2028124 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strb    r0, [r4, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2028170, (=#0x20e4c44)
	mov     r1, #0x8
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x5]
	ldr     r0, [pc, #0x3c] @ 0x2028174, (=#0x20e4c40)
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x6]
	mov     r0, #0xff
	strb    r0, [r4, #0x7]
	mov     r0, r4
	add     r0, #0x8
	bl      Function_2002294
	ldr     r0, [pc, #0x2c] @ 0x2028178, (=#0xffff)
	mov     r1, #0x0
	mov     r2, r4
.thumb
branch_202814e: @ 202814e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r2, #0x18]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x3
	blt     branch_202814e
	mov     r5, #0x0
	strh    r5, [r4, #0x1e]
	add     r4, #0x20
.thumb
branch_202815e: @ 202815e :thumb
	mov     r0, r4
	bl      Function_2014a84
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x8
	cmp     r5, #0x3
	blt     branch_202815e
	pop     {r3-r5,pc}
@ 0x202816e


.incbin "baserom/arm9.bin", 0x2816e, 0x2028170 - 0x202816e


.word 0x20e4c44 @ 0x2028170
.word 0x20e4c40 @ 0x2028174
.word 0xffff @ 0x2028178
.thumb
Function_202817c: @ 202817c :thumb
	ldrb    r0, [r0, #0x7]
	cmp     r0, #0xb
	bhi     branch_2028186
	mov     r0, #0x1
	bx      lr
@ 0x2028186

.thumb
branch_2028186: @ 2028186 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202818a


.incbin "baserom/arm9.bin", 0x2818a, 0x202818c - 0x202818a


.thumb
Function_202818c: @ 202818c :thumb
	push    {r4,lr}
	mov     r1, #0x38
	bl      Function_2018184
	mov     r4, r0
	bl      Function_2028124
	mov     r0, r4
	pop     {r4,pc}
@ 0x202819e


.incbin "baserom/arm9.bin", 0x2819e, 0x2028430 - 0x202819e


.thumb
Function_2028430: @ 2028430 :thumb
	ldr     r3, [pc, #0x4] @ 0x2028438, (=#0x20245bd)
	mov     r1, #0xf
	bx      r3
@ 0x2028436


.incbin "baserom/arm9.bin", 0x28436, 0x2028438 - 0x2028436


.word 0x20245bd @ 0x2028438

.incbin "baserom/arm9.bin", 0x2843c, 0x2028494 - 0x202843c


.thumb
Function_2028494: @ 2028494 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_20284a2
	mov     r1, #0x14
	bl      Function_2028510
	pop     {r3,pc}
@ 0x20284a2

.thumb
branch_20284a2: @ 20284a2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20284a6


.incbin "baserom/arm9.bin", 0x284a6, 0x2028510 - 0x20284a6


.thumb
Function_2028510: @ 2028510 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, r1
	mov     r5, r0
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_2028532
.thumb
branch_202851e: @ 202851e :thumb
	mov     r0, r5
	bl      Function_202817c
	cmp     r0, #0x0
	beq     branch_202852a
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_202852a: @ 202852a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	cmp     r6, r7
	blt     branch_202851e
.thumb
branch_2028532: @ 2028532 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2028536


.incbin "baserom/arm9.bin", 0x28536, 0x20285f8 - 0x2028536


.thumb
Function_20285f8: @ 20285f8 :thumb
	mov     r1, #0x95
	mov     r3, #0x0
	lsl     r1, r1, #4
.thumb
branch_20285fe: @ 20285fe :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0x0
	bne     branch_202860a
	mov     r0, r3
	bx      lr
@ 0x202860a

.thumb
branch_202860a: @ 202860a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x28
	blt     branch_20285fe
	mov     r0, #0x0
	mvn     r0, r0
	bx      lr
@ 0x2028616


.incbin "baserom/arm9.bin", 0x28616, 0x2028638 - 0x2028616


.thumb
Function_2028638: @ 2028638 :thumb
	ldr     r1, [pc, #0x18] @ 0x2028654, (=#0x8d8)
	mov     r3, #0x0
.thumb
branch_202863c: @ 202863c :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0x0
	bne     branch_2028648
	mov     r0, r3
	bx      lr
@ 0x2028648

.thumb
branch_2028648: @ 2028648 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x28
	blt     branch_202863c
	mov     r0, #0x0
	mvn     r0, r0
	bx      lr
@ 0x2028654

.word 0x8d8 @ 0x2028654

.incbin "baserom/arm9.bin", 0x28658, 0x2028828 - 0x2028658


.thumb
Function_2028828: @ 2028828 :thumb
	mov     r1, #0x1
	add     r0, #0x9d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2028830


.incbin "baserom/arm9.bin", 0x28830, 0x202895c - 0x2028830


.thumb
Function_202895c: @ 202895c :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r2, #0x81
	mov     r5, r6
	lsl     r2, r2, #4
.thumb
branch_2028966: @ 2028966 :thumb
	add     r4, r0, r5
	ldrb    r3, [r4, r2]
	cmp     r3, #0x0
	bne     branch_2028978
	mov     r0, #0x81
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
	mov     r6, #0x1
	b       branch_202897e
@ 0x2028978

.thumb
branch_2028978: @ 2028978 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0xc8
	blt     branch_2028966
.thumb
branch_202897e: @ 202897e :thumb
	mov     r0, r6
	pop     {r3-r6}
	bx      lr
@ 0x2028984

.thumb
Function_2028984: @ 2028984 :thumb
	mov     r1, #0x81
	mov     r3, #0x0
	lsl     r1, r1, #4
.thumb
branch_202898a: @ 202898a :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0x0
	bne     branch_2028996
	mov     r0, #0x1
	bx      lr
@ 0x2028996

.thumb
branch_2028996: @ 2028996 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0xc8
	blt     branch_202898a
	mov     r0, #0x0
	bx      lr
@ 0x20289a0


.incbin "baserom/arm9.bin", 0x289a0, 0x2028cb0 - 0x20289a0


.thumb
Function_2028cb0: @ 2028cb0 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_20285f8
	.hword  0x1e61 @ sub r1, r4, #0x1
	cmp     r0, r1
	beq     branch_2028cd2
	add     r1, r5, r0
	mov     r0, #0x95
	lsl     r0, r0, #4
	strb    r6, [r1, r0]
	add     r0, #0x28
	strb    r7, [r1, r0]
	mov     r4, #0x1
.thumb
branch_2028cd2: @ 2028cd2 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2028cd6


.incbin "baserom/arm9.bin", 0x28cd6, 0x2028e84 - 0x2028cd6


.thumb
Function_2028e84: @ 2028e84 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r1
	bl      Function_2028638
	.hword  0x1e61 @ sub r1, r4, #0x1
	cmp     r0, r1
	beq     branch_2028e9e
	add     r1, r5, r0
	ldr     r0, [pc, #0x8] @ 0x2028ea4, (=#0x8d8)
	mov     r4, #0x1
	strb    r6, [r1, r0]
.thumb
branch_2028e9e: @ 2028e9e :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2028ea2


.incbin "baserom/arm9.bin", 0x28ea2, 0x2028ea4 - 0x2028ea2


.word 0x8d8 @ 0x2028ea4

.incbin "baserom/arm9.bin", 0x28ea8, 0x20294c0 - 0x2028ea8


.thumb
Function_20294c0: @ 20294c0 :thumb
	push    {r3,lr}
	bl      Function_202958c
	cmp     r0, #0x4
	bne     branch_20294ce
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20294ce

.thumb
branch_20294ce: @ 20294ce :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20294d2


.incbin "baserom/arm9.bin", 0x294d2, 0x202958c - 0x20294d2


.thumb
Function_202958c: @ 202958c :thumb
	ldr     r0, [r0, #0x38]
	lsl     r0, r0, #12
	lsr     r0, r0, #12
	cmp     r0, #0x32
	blt     branch_202959a
	mov     r0, #0x4
	bx      lr
@ 0x202959a

.thumb
branch_202959a: @ 202959a :thumb
	cmp     r0, #0xa
	blt     branch_20295a2
	mov     r0, #0x3
	bx      lr
@ 0x20295a2

.thumb
branch_20295a2: @ 20295a2 :thumb
	cmp     r0, #0x3
	blt     branch_20295aa
	mov     r0, #0x2
	bx      lr
@ 0x20295aa

.thumb
branch_20295aa: @ 20295aa :thumb
	cmp     r0, #0x1
	blt     branch_20295b2
	mov     r0, #0x1
	bx      lr
@ 0x20295b2

.thumb
branch_20295b2: @ 20295b2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20295b6


.incbin "baserom/arm9.bin", 0x295b6, 0x20295b8 - 0x20295b6


.thumb
Function_20295b8: @ 20295b8 :thumb
	ldr     r0, [r0, #0x38]
	lsl     r0, r0, #12
	lsr     r0, r0, #12
	bx      lr
@ 0x20295c0


.incbin "baserom/arm9.bin", 0x295c0, 0x20298a0 - 0x20295c0


.thumb
Function_20298a0: @ 20298a0 :thumb
	push    {r3,lr}
	mov     r1, #0xc
	bl      Function_20245bc
	add     r0, #0x50
	pop     {r3,pc}
@ 0x20298ac


.incbin "baserom/arm9.bin", 0x298ac, 0x20298b0 - 0x20298ac


.thumb
Function_20298b0: @ 20298b0 :thumb
	ldr     r3, [pc, #0x4] @ 0x20298b8, (=#0x20245bd)
	mov     r1, #0xc
	bx      r3
@ 0x20298b6


.incbin "baserom/arm9.bin", 0x298b6, 0x20298b8 - 0x20298b6


.word 0x20245bd @ 0x20298b8
.thumb
Function_20298bc: @ 20298bc :thumb
	ldr     r1, [pc, #0x10] @ 0x20298d0, (=#0x1234)
	cmp     r0, r1
	beq     branch_20298c8
	ldr     r1, [pc, #0x10] @ 0x20298d4, (=#0x2345)
	cmp     r0, r1
	bne     branch_20298cc
.thumb
branch_20298c8: @ 20298c8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x20298cc

.thumb
branch_20298cc: @ 20298cc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20298d0

.word 0x1234 @ 0x20298d0
.word 0x2345 @ 0x20298d4

.incbin "baserom/arm9.bin", 0x298d8, 0x202992c - 0x20298d8


.thumb
Function_202992c: @ 202992c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r3
	bl      Function_2074470
	mov     r2, r5
	strh    r0, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x75
	add     r2, #0xa
	bl      Function_2074470
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2074470
	str     r0, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r1, r5
	add     r1, #0x33
	strb    r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x31
	strb    r6, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x32
	strb    r7, [r0, #0x0]
	add     r1, sp, #0x8
	mov     r0, #0x10
	ldsb    r0, [r1, r0]
	add     r5, #0x30
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x202998e


.incbin "baserom/arm9.bin", 0x2998e, 0x2029a18 - 0x202998e


.thumb
Function_2029a18: @ 2029a18 :thumb
	strb    r1, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2029a28, (=#0xfffffff0)
	strb    r2, [r0, #0x1]
	strb    r3, [r0, #0x2]
	add     r1, sp
	ldrb    r1, [r1, #0x10]
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x2029a28

.word 0xfffffff0 @ 0x2029a28
.thumb
Function_2029a2c: @ 2029a2c :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x3d
	bcc     branch_2029a3c
	bl      Function_2022974
.thumb
branch_2029a3c: @ 2029a3c :thumb
	lsr     r2, r4, #31
	lsl     r1, r4, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #26
	lsr     r1, r0, #24
	lsr     r0, r4, #3
	lsl     r0, r0, #24
	mov     r2, #0xf
	lsr     r0, r0, #22
	lsl     r2, r1
	ldr     r3, [r5, r0]
	mvn     r2, r2
	and     r2, r3
	str     r2, [r5, r0]
	mov     r2, r6
	ldr     r3, [r5, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	str     r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2029a70

.thumb
Function_2029a70: @ 2029a70 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3d
	bcc     branch_2029a7e
	bl      Function_2022974
.thumb
branch_2029a7e: @ 2029a7e :thumb
	lsr     r3, r4, #31
	lsl     r2, r4, #29
	lsr     r0, r4, #3
	lsl     r0, r0, #24
	lsr     r0, r0, #22
	sub     r2, r2, r3
	mov     r1, #0x1d
	ror     r2, r1
	add     r1, r3, r2
	lsl     r1, r1, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	lsl     r1, r1, #26
	mov     r2, r0
	lsr     r1, r1, #24
	lsr     r2, r1
	mov     r0, #0xf
	and     r0, r2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x9
	bls     branch_2029aac
	mov     r0, #0x9
.thumb
branch_2029aac: @ 2029aac :thumb
	pop     {r3-r5,pc}
@ 0x2029aae


.incbin "baserom/arm9.bin", 0x29aae, 0x2029ab0 - 0x2029aae


.thumb
Function_2029ab0: @ 2029ab0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x2
	bcc     branch_2029ac0
	bl      Function_2022974
.thumb
branch_2029ac0: @ 2029ac0 :thumb
	lsr     r2, r6, #31
	lsl     r1, r6, #27
	sub     r1, r1, r2
	mov     r0, #0x1b
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	lsr     r0, r6, #5
	lsl     r0, r0, #24
	mov     r2, #0x1
	lsr     r0, r0, #22
	lsl     r2, r1
	ldr     r3, [r5, r0]
	mvn     r2, r2
	and     r2, r3
	str     r2, [r5, r0]
	mov     r2, r4
	ldr     r3, [r5, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	str     r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2029af0

.thumb
Function_2029af0: @ 2029af0 :thumb
	lsr     r2, r1, #5
	lsl     r2, r2, #24
	lsr     r2, r2, #22
	ldr     r3, [r0, r2]
	lsr     r2, r1, #31
	lsl     r1, r1, #27
	sub     r1, r1, r2
	mov     r0, #0x1b
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, r3
	lsr     r1, r0
	mov     r0, #0x1
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2029b16


.incbin "baserom/arm9.bin", 0x29b16, 0x2029b18 - 0x2029b16


.thumb
Function_2029b18: @ 2029b18 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x12
	bls     branch_2029b28
	bl      Function_2022974
.thumb
branch_2029b28: @ 2029b28 :thumb
	lsr     r2, r6, #31
	lsl     r1, r6, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #27
	lsr     r1, r0, #24
	lsr     r0, r6, #2
	lsl     r0, r0, #24
	mov     r2, #0xff
	lsr     r0, r0, #22
	lsl     r2, r1
	ldr     r3, [r5, r0]
	mvn     r2, r2
	and     r2, r3
	str     r2, [r5, r0]
	mov     r2, r4
	ldr     r3, [r5, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	str     r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2029b5c

.thumb
Function_2029b5c: @ 2029b5c :thumb
	lsr     r2, r1, #2
	lsl     r2, r2, #24
	lsr     r2, r2, #22
	ldr     r0, [r0, r2]
	lsr     r3, r1, #31
	lsl     r2, r1, #30
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	add     r1, r3, r2
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #27
	lsr     r1, r1, #24
	lsr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2029b80

.thumb
Function_2029b80: @ 2029b80 :thumb
	push    {r4-r6,lr}
	mov     r5, #0x0
	mov     r6, r0
	mov     r4, r5
.thumb
branch_2029b88: @ 2029b88 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_2029b5c
	cmp     r0, #0x12
	beq     branch_2029b98
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2029b98: @ 2029b98 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_2029b88
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	pop     {r4-r6,pc}
@ 0x2029ba4

.thumb
Function_2029ba4: @ 2029ba4 :thumb
	cmp     r0, #0x3d
	bcs     branch_2029bac
	mov     r0, #0x1
	bx      lr
@ 0x2029bac

.thumb
branch_2029bac: @ 2029bac :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2029bb0


.incbin "baserom/arm9.bin", 0x29bb0, 0x2029bd8 - 0x2029bb0


.thumb
Function_2029bd8: @ 2029bd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x2
	mov     r4, r2
	bl      Function_20765b8
	mov     r1, #0x80
	strb    r1, [r5, #0x0]
	mov     r1, #0x28
	sub     r1, r1, r0
	mov     r0, #0x8d
	sub     r0, r0, r1
	strb    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x0]
	add     r0, #0x28
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2029bfa


.incbin "baserom/arm9.bin", 0x29bfa, 0x2029c88 - 0x2029bfa


.thumb
Function_2029c88: @ 2029c88 :thumb
	push    {r4,lr}
	mov     r1, #0x98
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x98
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [pc, #0x8] @ 0x2029ca4, (=#0x1234)
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r4,pc}
@ 0x2029ca2


.incbin "baserom/arm9.bin", 0x29ca2, 0x2029ca4 - 0x2029ca2


.word 0x1234 @ 0x2029ca4
.thumb
Function_2029ca8: @ 2029ca8 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0xb
	blt     branch_2029cb6
	bl      Function_2022974
.thumb
branch_2029cb6: @ 2029cb6 :thumb
	mov     r0, #0x74
	mov     r4, r6
	mul     r4, r0
	ldr     r0, [r5, r4]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_2029cca
	bl      Function_2022974
.thumb
branch_2029cca: @ 2029cca :thumb
	add     r0, r5, r4
	pop     {r4-r6,pc}
@ 0x2029cce


.incbin "baserom/arm9.bin", 0x29cce, 0x2029cd0 - 0x2029cce


.thumb
Function_2029cd0: @ 2029cd0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x5
	blt     branch_2029cde
	bl      Function_2022974
.thumb
branch_2029cde: @ 2029cde :thumb
	mov     r0, #0x98
	mov     r4, r6
	mul     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2029d00, (=#0x4fc)
	add     r1, r5, r4
	ldr     r0, [r1, r0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_2029cf6
	bl      Function_2022974
.thumb
branch_2029cf6: @ 2029cf6 :thumb
	ldr     r0, [pc, #0x8] @ 0x2029d00, (=#0x4fc)
	add     r0, r5, r0
	add     r0, r0, r4
	pop     {r4-r6,pc}
@ 0x2029cfe


.incbin "baserom/arm9.bin", 0x29cfe, 0x2029d00 - 0x2029cfe


.word 0x4fc @ 0x2029d00
.thumb
Function_2029d04: @ 2029d04 :thumb
	ldr     r1, [pc, #0x4] @ 0x2029d0c, (=#0x7f4)
	add     r0, r0, r1
	bx      lr
@ 0x2029d0a


.incbin "baserom/arm9.bin", 0x29d0a, 0x2029d0c - 0x2029d0a


.word 0x7f4 @ 0x2029d0c
.thumb
Function_2029d10: @ 2029d10 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0xb
	blt     branch_2029d1e
	bl      Function_2022974
.thumb
branch_2029d1e: @ 2029d1e :thumb
	mov     r0, #0x74
	mul     r0, r4
	add     r0, r5, r0
	bl      Function_2029f34
	pop     {r3-r5,pc}
@ 0x2029d2a


.incbin "baserom/arm9.bin", 0x29d2a, 0x2029d2c - 0x2029d2a


.thumb
Function_2029d2c: @ 2029d2c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x5
	blt     branch_2029d3a
	bl      Function_2022974
.thumb
branch_2029d3a: @ 2029d3a :thumb
	ldr     r0, [pc, #0x10] @ 0x2029d4c, (=#0x4fc)
	add     r1, r5, r0
	mov     r0, #0x98
	mul     r0, r4
	add     r0, r1, r0
	bl      Function_202a218
	pop     {r3-r5,pc}
@ 0x2029d4a


.incbin "baserom/arm9.bin", 0x29d4a, 0x2029d4c - 0x2029d4a


.word 0x4fc @ 0x2029d4c
.thumb
Function_2029d50: @ 2029d50 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r2
	mov     r4, #0x1
	bl      Function_2029d94
	mov     r6, r0
	mov     r0, r7
	bl      Function_2029ba4
	cmp     r0, #0x0
	beq     branch_2029d72
	add     r0, r6, r5
	cmp     r0, #0x9
	bls     branch_2029d7a
	mov     r4, #0x0
	b       branch_2029d7a
@ 0x2029d72

.thumb
branch_2029d72: @ 2029d72 :thumb
	add     r0, r6, r5
	cmp     r0, #0x1
	bls     branch_2029d7a
	mov     r4, #0x0
.thumb
branch_2029d7a: @ 2029d7a :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2029d7e


.incbin "baserom/arm9.bin", 0x29d7e, 0x2029d80 - 0x2029d7e


.thumb
Function_2029d80: @ 2029d80 :thumb
	push    {r3,lr}
	bl      Function_2029dd4
	cmp     r0, #0x12
	beq     branch_2029d8e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2029d8e

.thumb
branch_2029d8e: @ 2029d8e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2029d92


.incbin "baserom/arm9.bin", 0x29d92, 0x2029d94 - 0x2029d92


.thumb
Function_2029d94: @ 2029d94 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x64
	bcc     branch_2029da2
	bl      Function_2022974
.thumb
branch_2029da2: @ 2029da2 :thumb
	mov     r0, r5
	bl      Function_2029ba4
	cmp     r0, #0x0
	beq     branch_2029db8
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2029a70
	pop     {r3-r5,pc}
@ 0x2029db8

.thumb
branch_2029db8: @ 2029db8 :thumb
	cmp     r5, #0x3d
	bcs     branch_2029dc0
	bl      Function_2022974
.thumb
branch_2029dc0: @ 2029dc0 :thumb
	sub     r5, #0x3d
	lsl     r0, r5, #24
	lsr     r1, r0, #24
	add     r4, #0x20
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2029af0
	pop     {r3-r5,pc}
@ 0x2029dd4

.thumb
Function_2029dd4: @ 2029dd4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x12
	bcc     branch_2029de2
	bl      Function_2022974
.thumb
branch_2029de2: @ 2029de2 :thumb
	add     r5, #0x28
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2029b5c
	pop     {r3-r5,pc}
@ 0x2029df0


.incbin "baserom/arm9.bin", 0x29df0, 0x2029e2c - 0x2029df0


.thumb
Function_2029e2c: @ 2029e2c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x64
	bcc     branch_2029e3c
	bl      Function_2022974
.thumb
branch_2029e3c: @ 2029e3c :thumb
	mov     r0, r4
	bl      Function_2029ba4
	cmp     r0, #0x0
	beq     branch_2029e68
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2029a70
	add     r0, r0, r6
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0x9
	bls     branch_2029e5c
	mov     r1, #0x9
.thumb
branch_2029e5c: @ 2029e5c :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2029a2c
	pop     {r4-r6,pc}
@ 0x2029e68

.thumb
branch_2029e68: @ 2029e68 :thumb
	mov     r0, r5
	lsl     r1, r4, #24
	add     r0, #0x20
	lsr     r1, r1, #24
	bl      Function_2029af0
	add     r0, r0, r6
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x1
	bls     branch_2029e80
	mov     r6, #0x1
.thumb
branch_2029e80: @ 2029e80 :thumb
	cmp     r4, #0x3d
	bcs     branch_2029e88
	bl      Function_2022974
.thumb
branch_2029e88: @ 2029e88 :thumb
	sub     r4, #0x3d
	lsl     r0, r4, #24
	lsr     r2, r0, #24
	add     r5, #0x20
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2029ab0
	pop     {r4-r6,pc}
@ 0x2029e9e


.incbin "baserom/arm9.bin", 0x29e9e, 0x2029ea0 - 0x2029e9e


.thumb
Function_2029ea0: @ 2029ea0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x64
	bcc     branch_2029eb0
	bl      Function_2022974
.thumb
branch_2029eb0: @ 2029eb0 :thumb
	mov     r0, r4
	bl      Function_2029ba4
	cmp     r0, #0x0
	beq     branch_2029ede
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2029a70
	cmp     r0, r6
	bls     branch_2029ed0
	sub     r0, r0, r6
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_2029ed2
@ 0x2029ed0

.thumb
branch_2029ed0: @ 2029ed0 :thumb
	mov     r1, #0x0
.thumb
branch_2029ed2: @ 2029ed2 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2029a2c
	pop     {r4-r6,pc}
@ 0x2029ede

.thumb
branch_2029ede: @ 2029ede :thumb
	cmp     r4, #0x3d
	bcs     branch_2029ee6
	bl      Function_2022974
.thumb
branch_2029ee6: @ 2029ee6 :thumb
	sub     r4, #0x3d
	lsl     r0, r4, #24
	lsr     r2, r0, #24
	add     r5, #0x20
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, #0x0
	lsr     r2, r2, #24
	bl      Function_2029ab0
	pop     {r4-r6,pc}
@ 0x2029efc

.thumb
Function_2029efc: @ 2029efc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x12
	bcc     branch_2029f0a
	bl      Function_2022974
.thumb
branch_2029f0a: @ 2029f0a :thumb
	mov     r0, r5
	lsl     r1, r4, #24
	add     r0, #0x28
	lsr     r1, r1, #24
	bl      Function_2029b5c
	cmp     r0, #0x12
	bne     branch_2029f30
	mov     r0, r5
	add     r0, #0x28
	bl      Function_2029b80
	lsl     r2, r4, #24
	add     r5, #0x28
	mov     r1, r0
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2029b18
.thumb
branch_2029f30: @ 2029f30 :thumb
	pop     {r3-r5,pc}
@ 0x2029f32


.incbin "baserom/arm9.bin", 0x29f32, 0x2029f34 - 0x2029f32


.thumb
Function_2029f34: @ 2029f34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_2029f46
	bl      Function_2022974
.thumb
branch_2029f46: @ 2029f46 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2029f58, (=#0x2345)
	cmp     r1, r0
	bne     branch_2029f52
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2029f52

.thumb
branch_2029f52: @ 2029f52 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2029f56


.incbin "baserom/arm9.bin", 0x29f56, 0x2029f58 - 0x2029f56


.word 0x2345 @ 0x2029f58

.incbin "baserom/arm9.bin", 0x29f5c, 0x202a0a0 - 0x2029f5c


.thumb
Function_202a0a0: @ 202a0a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a0b4
	bl      Function_2022974
.thumb
branch_202a0b4: @ 202a0b4 :thumb
	mov     r0, r5
	add     r0, #0x40
	bl      Function_2014a84
	add     r5, #0x40
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2014cf8
	pop     {r3-r5,pc}
@ 0x202a0ca


.incbin "baserom/arm9.bin", 0x2a0ca, 0x202a218 - 0x202a0ca


.thumb
Function_202a218: @ 202a218 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a22a
	bl      Function_2022974
.thumb
branch_202a22a: @ 202a22a :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x202a23c, (=#0x2345)
	cmp     r1, r0
	bne     branch_202a236
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x202a236

.thumb
branch_202a236: @ 202a236 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x202a23a


.incbin "baserom/arm9.bin", 0x2a23a, 0x202a23c - 0x202a23a


.word 0x2345 @ 0x202a23c
.thumb
Function_202a240: @ 202a240 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a252
	bl      Function_2022974
.thumb
branch_202a252: @ 202a252 :thumb
	ldr     r0, [pc, #0x4] @ 0x202a258, (=#0x2345)
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x202a258

.word 0x2345 @ 0x202a258
.thumb
Function_202a25c: @ 202a25c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a26e
	bl      Function_2022974
.thumb
branch_202a26e: @ 202a26e :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x98
	blx     Function_20d5124
	ldr     r0, [pc, #0x4] @ 0x202a280, (=#0x1234)
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x202a27e


.incbin "baserom/arm9.bin", 0x2a27e, 0x202a280 - 0x202a27e


.word 0x1234 @ 0x202a280

.incbin "baserom/arm9.bin", 0x2a284, 0x202a35c - 0x202a284


.thumb
Function_202a35c: @ 202a35c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a370
	bl      Function_2022974
.thumb
branch_202a370: @ 202a370 :thumb
	add     r5, #0x94
	strb    r4, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x202a376


.incbin "baserom/arm9.bin", 0x2a376, 0x202a378 - 0x202a376


.thumb
Function_202a378: @ 202a378 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a38c
	bl      Function_2022974
.thumb
branch_202a38c: @ 202a38c :thumb
	str     r4, [r5, #0x4]
	pop     {r3-r5,pc}
@ 0x202a390

.thumb
Function_202a390: @ 202a390 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a3a4
	bl      Function_2022974
.thumb
branch_202a3a4: @ 202a3a4 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x98
	blx     Function_20d50b8
	pop     {r3-r5,pc}
@ 0x202a3b0

.thumb
Function_202a3b0: @ 202a3b0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a3c8
	bl      Function_2022974
.thumb
branch_202a3c8: @ 202a3c8 :thumb
	add     r1, sp, #0x4
	mov     r0, r4
	add     r1, #0x1
	add     r2, sp, #0x4
	bl      Function_2029bd8
	add     r5, #0x8
	str     r6, [sp, #0x0]
	add     r3, sp, #0x4
	ldrb    r2, [r3, #0x1]
	ldrb    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_202992c
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x202a3ea


.incbin "baserom/arm9.bin", 0x2a3ea, 0x202a3ec - 0x202a3ea


.thumb
Function_202a3ec: @ 202a3ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r3, [sp, #0x4]
	mov     r6, r1
	mov     r5, r0
	mov     r7, r2
	ldr     r4, [sp, #0x24]
	cmp     r6, #0x14
	bcc     branch_202a402
	bl      Function_2022974
.thumb
branch_202a402: @ 202a402 :thumb
	cmp     r7, #0x64
	bcc     branch_202a40a
	bl      Function_2022974
.thumb
branch_202a40a: @ 202a40a :thumb
	mov     r1, #0x1
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #8
	cmp     r0, r1
	blt     branch_202a418
	bl      Function_2022974
.thumb
branch_202a418: @ 202a418 :thumb
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #8
	cmp     r1, r0
	blt     branch_202a428
	bl      Function_2022974
.thumb
branch_202a428: @ 202a428 :thumb
	mov     r0, #0x7f
	mvn     r0, r0
	cmp     r4, r0
	bgt     branch_202a434
	bl      Function_2022974
.thumb
branch_202a434: @ 202a434 :thumb
	mov     r0, #0x1
	lsl     r0, r6
	ldr     r1, [r5, #0x40]
	str     r0, [sp, #0x8]
	tst     r0, r1
	beq     branch_202a444
	bl      Function_2022974
.thumb
branch_202a444: @ 202a444 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_20298bc
	cmp     r0, #0x0
	bne     branch_202a452
	bl      Function_2022974
.thumb
branch_202a452: @ 202a452 :thumb
	mov     r0, #0x38
	ldsb    r0, [r5, r0]
	cmp     r0, r4
	blt     branch_202a460
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	asr     r4, r0, #24
.thumb
branch_202a460: @ 202a460 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r3, sp, #0x10
	mov     r1, r5
	ldrb    r3, [r3, #0x10]
	add     r1, #0x44
	lsl     r0, r6, #2
	add     r0, r1, r0
	ldr     r2, [sp, #0x4]
	mov     r1, r7
	bl      Function_2029a18
	ldr     r1, [r5, #0x40]
	ldr     r0, [sp, #0x8]
	orr     r0, r1
	str     r0, [r5, #0x40]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x202a486


.incbin "baserom/arm9.bin", 0x2a486, 0x202a750 - 0x202a486


.thumb
Function_202a750: @ 202a750 :thumb
	ldr     r3, [pc, #0x4] @ 0x202a758, (=#0x20245bd)
	mov     r1, #0xe
	bx      r3
@ 0x202a756


.incbin "baserom/arm9.bin", 0x2a756, 0x202a758 - 0x202a756


.word 0x20245bd @ 0x202a758

.incbin "baserom/arm9.bin", 0x2a75c, 0x202a914 - 0x202a75c


.thumb
Function_202a914: @ 202a914 :thumb
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1e
	beq     branch_202a91e
	mov     r0, #0x1
	bx      lr
@ 0x202a91e

.thumb
branch_202a91e: @ 202a91e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202a922


.incbin "baserom/arm9.bin", 0x2a922, 0x202a924 - 0x202a922


.thumb
Function_202a924: @ 202a924 :thumb
	mov     r1, #0x1e
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x202a93a


.incbin "baserom/arm9.bin", 0x2a93a, 0x202a93c - 0x202a93a


.thumb
Function_202a93c: @ 202a93c :thumb
	push    {r4,lr}
	mov     r1, #0x8
	bl      Function_2018184
	mov     r4, r0
	bl      Function_202a924
	mov     r0, r4
	pop     {r4,pc}
@ 0x202a94e


.incbin "baserom/arm9.bin", 0x2a94e, 0x202a950 - 0x202a94e


.thumb
Function_202a950: @ 202a950 :thumb
	ldrb    r2, [r0, #0x0]
	strb    r2, [r1, #0x0]
	ldrb    r2, [r0, #0x1]
	strb    r2, [r1, #0x1]
	ldrb    r2, [r0, #0x2]
	strb    r2, [r1, #0x2]
	ldrb    r2, [r0, #0x3]
	strb    r2, [r1, #0x3]
	ldrb    r2, [r0, #0x4]
	strb    r2, [r1, #0x4]
	ldrb    r2, [r0, #0x5]
	strb    r2, [r1, #0x5]
	ldrb    r2, [r0, #0x6]
	strb    r2, [r1, #0x6]
	ldrb    r0, [r0, #0x7]
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x202a972


.incbin "baserom/arm9.bin", 0x2a972, 0x202a9b0 - 0x202a972


.thumb
Function_202a9b0: @ 202a9b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r4, #0x0
	mov     r6, #0x2
	mov     r7, #0x5
.thumb
branch_202a9bc: @ 202a9bc :thumb
	bl      PRNG
	mov     r1, r7
	blx     Division
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	add     r1, r5, r0
	ldrb    r0, [r1, #0x1]
	cmp     r0, #0x0
	bne     branch_202a9d6
	strb    r6, [r1, #0x1]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_202a9d6: @ 202a9d6 :thumb
	cmp     r4, #0x3
	blt     branch_202a9bc
	mov     r0, #0x1b
	strb    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	strb    r0, [r5, #0x6]
	pop     {r3-r7,pc}
@ 0x202a9e4

.thumb
Function_202a9e4: @ 202a9e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r12, r2
	mov     r2, #0x0
	mov     r6, r2
	mov     r5, #0x1b
	cmp     r3, #0x0
	beq     branch_202aa00
	mov     r1, r12
	bl      Function_202a9b0
	add     sp, #0x8
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x202aa00

.thumb
branch_202aa00: @ 202aa00 :thumb
	mov     r4, r2
	add     r7, sp, #0x0
.thumb
branch_202aa04: @ 202aa04 :thumb
	ldrb    r3, [r1, r4]
	cmp     r3, #0x0
	beq     branch_202aa14
	cmp     r3, #0x32
	bcc     branch_202aa10
	mov     r6, #0x1
.thumb
branch_202aa10: @ 202aa10 :thumb
	strb    r4, [r7, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_202aa14: @ 202aa14 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_202aa04
	cmp     r2, #0x5
	bhi     branch_202aa7c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r2, r1, #0
	lsl     r6, r2, #0
	lsl     r4, r4, #0
	lsl     r2, r1, #1
	lsl     r6, r1, #1
	lsl     r6, r1, #1
	mov     r1, r12
	bl      Function_202a9b0
	add     sp, #0x8
	mov     r0, #0x1b
	pop     {r3-r7,pc}
@ 0x202aa42


.incbin "baserom/arm9.bin", 0x2aa42, 0x202aa7c - 0x202aa42


.thumb
branch_202aa7c: @ 202aa7c :thumb
	cmp     r6, #0x0
	beq     branch_202aa82
	mov     r5, #0x1c
.thumb
branch_202aa82: @ 202aa82 :thumb
	mov     r4, #0x0
.thumb
branch_202aa84: @ 202aa84 :thumb
	ldrb    r3, [r1, r4]
	add     r2, r0, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r3, [r2, #0x1]
	cmp     r4, #0x5
	blt     branch_202aa84
	strb    r5, [r0, #0x0]
	mov     r1, r12
	strb    r1, [r0, #0x6]
	mov     r0, r5
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x202aa9c


.incbin "baserom/arm9.bin", 0x2aa9c, 0x202ab28 - 0x202aa9c


.thumb
Function_202ab28: @ 202ab28 :thumb
	ldr     r3, [pc, #0x4] @ 0x202ab30, (=#0x20245bd)
	mov     r1, #0x10
	bx      r3
@ 0x202ab2e


.incbin "baserom/arm9.bin", 0x2ab2e, 0x202ab30 - 0x202ab2e


.word 0x20245bd @ 0x202ab30

.incbin "baserom/arm9.bin", 0x2ab34, 0x202ab54 - 0x202ab34


.thumb
Function_202ab54: @ 202ab54 :thumb
	mov     r2, #0x0
.thumb
branch_202ab56: @ 202ab56 :thumb
	lsl     r1, r2, #3
	ldrb    r1, [r0, r1]
	cmp     r1, #0x1e
	bne     branch_202ab62
	mov     r0, r2
	bx      lr
@ 0x202ab62

.thumb
branch_202ab62: @ 202ab62 :thumb
	add     r1, r2, #0x1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	cmp     r2, #0x64
	bcc     branch_202ab56
	ldr     r0, [pc, #0x0] @ 0x202ab70, (=#0xffff)
	bx      lr
@ 0x202ab70

.word 0xffff @ 0x202ab70
.thumb
Function_202ab74: @ 202ab74 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_202ab54
	ldr     r1, [pc, #0x14] @ 0x202ab94, (=#0xffff)
	mov     r4, r0
	cmp     r4, r1
	beq     branch_202ab92
	lsl     r1, r4, #3
	mov     r0, r6
	add     r1, r5, r1
	bl      Function_202a950
	mov     r0, r4
.thumb
branch_202ab92: @ 202ab92 :thumb
	pop     {r4-r6,pc}
@ 0x202ab94

.word 0xffff @ 0x202ab94

.incbin "baserom/arm9.bin", 0x2ab98, 0x202ac98 - 0x202ab98


.thumb
Function_202ac98: @ 202ac98 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r6, r0
	mov     r5, r4
.thumb
branch_202aca0: @ 202aca0 :thumb
	lsl     r0, r5, #3
	add     r0, r6, r0
	bl      Function_202a914
	cmp     r0, #0x0
	beq     branch_202acb2
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_202acb2: @ 202acb2 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x64
	bcc     branch_202aca0
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x202acc0

.thumb
Function_202acc0: @ 202acc0 :thumb
	mov     r3, #0x0
	mov     r2, r3
.thumb
branch_202acc4: @ 202acc4 :thumb
	lsl     r1, r2, #3
	ldrb    r1, [r0, r1]
	cmp     r1, #0x1e
	bne     branch_202acd2
	add     r1, r3, #0x1
	lsl     r1, r1, #16
	lsr     r3, r1, #16
.thumb
branch_202acd2: @ 202acd2 :thumb
	add     r1, r2, #0x1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	cmp     r2, #0x64
	bcc     branch_202acc4
	mov     r0, r3
	bx      lr
@ 0x202ace0


.incbin "baserom/arm9.bin", 0x2ace0, 0x202ad28 - 0x202ace0


.thumb
Function_202ad28: @ 202ad28 :thumb
	bx      lr
@ 0x202ad2a


.incbin "baserom/arm9.bin", 0x2ad2a, 0x202af78 - 0x202ad2a


.thumb
Function_202af78: @ 202af78 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x20
	blt     branch_202af86
	bl      Function_2022974
.thumb
branch_202af86: @ 202af86 :thumb
	mov     r0, #0xc
	add     r5, #0x40
	mul     r0, r4
	add     r0, r5, r0
	blx     Function_20a4498
	pop     {r3-r5,pc}
@ 0x202af94

.thumb
Function_202af94: @ 202af94 :thumb
	push    {r4-r6,lr}
	mov     r5, #0x0
	mov     r6, r0
	mov     r4, r5
.thumb
branch_202af9c: @ 202af9c :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_202af78
	cmp     r0, #0x0
	beq     branch_202afaa
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_202afaa: @ 202afaa :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_202af9c
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x202afb4


.incbin "baserom/arm9.bin", 0x2afb4, 0x202b370 - 0x202afb4


.thumb
Function_202b370: @ 202b370 :thumb
	ldr     r3, [pc, #0x4] @ 0x202b378, (=#0x20245bd)
	mov     r1, #0x1d
	bx      r3
@ 0x202b376


.incbin "baserom/arm9.bin", 0x2b376, 0x202b378 - 0x202b376


.word 0x20245bd @ 0x202b378

.incbin "baserom/arm9.bin", 0x2b37c, 0x202b428 - 0x202b37c


.thumb
Function_202b428: @ 202b428 :thumb
	ldr     r0, [r0, #0x54]
	bx      lr
@ 0x202b42c


.incbin "baserom/arm9.bin", 0x2b42c, 0x202b4a0 - 0x202b42c


.thumb
Function_202b4a0: @ 202b4a0 :thumb
	ldr     r3, [pc, #0x4] @ 0x202b4a8, (=#0x20245bd)
	mov     r1, #0x11
	bx      r3
@ 0x202b4a6


.incbin "baserom/arm9.bin", 0x2b4a6, 0x202b4a8 - 0x202b4a6


.word 0x20245bd @ 0x202b4a8
.thumb
Function_202b4ac: @ 202b4ac :thumb
	push    {r3,lr}
	mov     r2, #0x2c
	mul     r2, r1
	add     r0, r0, r2
	bl      Function_202b510
	cmp     r0, #0x0
	bne     branch_202b4c0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x202b4c0

.thumb
branch_202b4c0: @ 202b4c0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202b4c4


.incbin "baserom/arm9.bin", 0x2b4c4, 0x202b510 - 0x202b4c4


.thumb
Function_202b510: @ 202b510 :thumb
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x18] @ 0x202b52c, (=#0xffff)
	cmp     r2, r1
	bne     branch_202b51c
	mov     r0, #0x1
	bx      lr
@ 0x202b51c

.thumb
branch_202b51c: @ 202b51c :thumb
	ldrh    r0, [r0, #0x10]
	cmp     r0, r1
	bne     branch_202b526
	mov     r0, #0x1
	bx      lr
@ 0x202b526

.thumb
branch_202b526: @ 202b526 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202b52a


.incbin "baserom/arm9.bin", 0x2b52a, 0x202b52c - 0x202b52a


.word 0xffff @ 0x202b52c

.incbin "baserom/arm9.bin", 0x2b530, 0x202b5b4 - 0x202b530


.thumb
Function_202b5b4: @ 202b5b4 :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x202b5b8

.thumb
Function_202b5b8: @ 202b5b8 :thumb
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x18] @ 0x202b5d4, (=#0xc350)
	cmp     r3, r2
	bcc     branch_202b5c4
	mov     r0, #0x0
	bx      lr
@ 0x202b5c4

.thumb
branch_202b5c4: @ 202b5c4 :thumb
	add     r1, r3, r1
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	cmp     r1, r2
	bls     branch_202b5d0
	strh    r2, [r0, #0x0]
.thumb
branch_202b5d0: @ 202b5d0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x202b5d4

.word 0xc350 @ 0x202b5d4
.thumb
Function_202b5d8: @ 202b5d8 :thumb
	ldrh    r0, [r0, #0x0]
	add     r1, r1, r0
	ldr     r0, [pc, #0xc] @ 0x202b5ec, (=#0xc350)
	cmp     r1, r0
	bhi     branch_202b5e6
	mov     r0, #0x1
	bx      lr
@ 0x202b5e6

.thumb
branch_202b5e6: @ 202b5e6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202b5ea


.incbin "baserom/arm9.bin", 0x2b5ea, 0x202b5ec - 0x202b5ea


.word 0xc350 @ 0x202b5ec
.thumb
Function_202b5f0: @ 202b5f0 :thumb
	ldrh    r2, [r0, #0x0]
	cmp     r2, r1
	bcs     branch_202b5fa
	mov     r0, #0x0
	bx      lr
@ 0x202b5fa

.thumb
branch_202b5fa: @ 202b5fa :thumb
	sub     r1, r2, r1
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x202b602


.incbin "baserom/arm9.bin", 0x2b602, 0x202b60c - 0x202b602


.thumb
Function_202b60c: @ 202b60c :thumb
	ldr     r3, [pc, #0x4] @ 0x202b614, (=#0x20d5124)
	mov     r1, #0x0
	mov     r2, #0x70
	bx      r3
@ 0x202b614

.word 0x20d5124 @ 0x202b614

.incbin "baserom/arm9.bin", 0x2b618, 0x202b628 - 0x202b618


.thumb
Function_202b628: @ 202b628 :thumb
	ldr     r3, [pc, #0x4] @ 0x202b630, (=#0x20245bd)
	mov     r1, #0x12
	bx      r3
@ 0x202b62e


.incbin "baserom/arm9.bin", 0x2b62e, 0x202b630 - 0x202b62e


.word 0x20245bd @ 0x202b630
.thumb
Function_202b634: @ 202b634 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	cmp     r1, #0x1
	beq     branch_202b644
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x202b644

.thumb
branch_202b644: @ 202b644 :thumb
	add     r0, sp, #0x0
	bl      Function_20138a4
	ldr     r0, [r7, #0x0]
	lsl     r1, r0, #21
	lsr     r3, r1, #28
	beq     branch_202b69c
	lsl     r1, r0, #25
	lsr     r2, r1, #25
	ldr     r1, [sp, #0x0]
	cmp     r2, r1
	bne     branch_202b676
	ldr     r1, [sp, #0x4]
	cmp     r3, r1
	bne     branch_202b676
	lsl     r1, r0, #13
	lsr     r2, r1, #27
	ldr     r1, [sp, #0x8]
	cmp     r2, r1
	bne     branch_202b676
	lsl     r0, r0, #18
	lsr     r1, r0, #29
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	beq     branch_202b69c
.thumb
branch_202b676: @ 202b676 :thumb
	mov     r0, #0x3f
	lsl     r0, r0, #4
	mov     r5, #0x9
	add     r6, r7, r0
.thumb
branch_202b67e: @ 202b67e :thumb
	mov     r4, r6
	sub     r4, #0x70
	mov     r3, r6
	mov     r2, #0xe
.thumb
branch_202b686: @ 202b686 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_202b686
	.hword  0x1e6d @ sub r5, r5, #0x1
	sub     r6, #0x70
	cmp     r5, #0x1
	bge     branch_202b67e
	mov     r0, r7
	bl      Function_202b60c
.thumb
branch_202b69c: @ 202b69c :thumb
	mov     r0, r7
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x202b6a2


.incbin "baserom/arm9.bin", 0x2b6a2, 0x202b758 - 0x202b6a2


.thumb
Function_202b758: @ 202b758 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_202b796
	cmp     r2, #0x4
	bhi     branch_202b796
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r0, r1, #0
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r3, #0
	lsl     r0, r4, #0
	bl      Function_202b7a0
	b       branch_202b796
@ 0x202b780


.incbin "baserom/arm9.bin", 0x2b780, 0x202b796 - 0x202b780


.thumb
branch_202b796: @ 202b796 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x202b79e


.incbin "baserom/arm9.bin", 0x2b79e, 0x202b7a0 - 0x202b79e


.thumb
Function_202b7a0: @ 202b7a0 :thumb
	push    {r4,r5}
	ldr     r3, [r0, #0x0]
	lsl     r2, r3, #25
	lsr     r5, r2, #25
	ldr     r2, [r1, #0x0]
	lsl     r4, r2, #25
	lsr     r4, r4, #25
	cmp     r5, r4
	bne     branch_202b7d6
	lsl     r4, r3, #21
	lsr     r5, r4, #28
	lsl     r4, r2, #21
	lsr     r4, r4, #28
	cmp     r5, r4
	bne     branch_202b7d6
	lsl     r4, r3, #13
	lsr     r5, r4, #27
	lsl     r4, r2, #13
	lsr     r4, r4, #27
	cmp     r5, r4
	bne     branch_202b7d6
	lsl     r3, r3, #18
	lsl     r2, r2, #18
	lsr     r3, r3, #29
	lsr     r2, r2, #29
	cmp     r3, r2
	beq     branch_202b7da
.thumb
branch_202b7d6: @ 202b7d6 :thumb
	ldr     r1, [r1, #0x0]
	str     r1, [r0, #0x0]
.thumb
branch_202b7da: @ 202b7da :thumb
	pop     {r4,r5}
	bx      lr
@ 0x202b7de


.incbin "baserom/arm9.bin", 0x2b7de, 0x202bc58 - 0x202b7de


.thumb
Function_202bc58: @ 202bc58 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x4
	bl      Function_2018144
	mov     r4, r0
	add     r0, sp, #0x0
	bl      Function_20138a4
	ldr     r2, [r4, #0x0]
	mov     r0, #0x7f
	bic     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, #0x7f
	and     r0, r1
	mov     r1, r2
	orr     r1, r0
	str     r1, [r4, #0x0]
	mov     r2, r1
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x202bcbc, (=#0xfffff87f)
	lsl     r1, r1, #28
	and     r2, r0
	lsr     r1, r1, #21
	orr     r2, r1
	ldr     r1, [pc, #0x30] @ 0x202bcc0, (=#0xfff83fff)
	str     r2, [r4, #0x0]
	and     r2, r1
	ldr     r1, [sp, #0x8]
	lsr     r0, r0, #13
	lsl     r1, r1, #27
	lsr     r1, r1, #13
	orr     r2, r1
	ldr     r1, [pc, #0x24] @ 0x202bcc4, (=#0xffffc7ff)
	str     r2, [r4, #0x0]
	and     r2, r1
	ldr     r1, [sp, #0xc]
	lsl     r1, r1, #29
	lsr     r1, r1, #18
	orr     r1, r2
	and     r1, r0
	lsl     r0, r5, #19
	orr     r0, r1
	str     r0, [r4, #0x0]
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x202bcba


.incbin "baserom/arm9.bin", 0x2bcba, 0x202bcbc - 0x202bcba


.word 0xfffff87f @ 0x202bcbc
.word 0xfff83fff @ 0x202bcc0
.word 0xffffc7ff @ 0x202bcc4
.thumb
Function_202bcc8: @ 202bcc8 :thumb
	push    {r3,lr}
	mov     r1, #0x8
	bl      Function_2018144
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	pop     {r3,pc}
@ 0x202bce4


.incbin "baserom/arm9.bin", 0x2bce4, 0x202bdd4 - 0x202bce4


.thumb
Function_202bdd4: @ 202bdd4 :thumb
	push    {r3,lr}
	bl      Function_202bcc8
	mov     r1, #0x10
	strb    r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x202bde0

.thumb
Function_202bde0: @ 202bde0 :thumb
	push    {r3,lr}
	bl      Function_202bcc8
	mov     r1, #0x11
	strb    r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x202bdec


.incbin "baserom/arm9.bin", 0x2bdec, 0x202bf7c - 0x202bdec


.thumb
Function_202bf7c: @ 202bf7c :thumb
	push    {r4,lr}
	mov     r1, #0x3a
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x3a
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, r4
	pop     {r4,pc}
@ 0x202bf92


.incbin "baserom/arm9.bin", 0x2bf92, 0x202c1c0 - 0x202bf92


.thumb
Function_202c1c0: @ 202c1c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_202bf7c
	mov     r1, #0xd
	strb    r1, [r0, #0x0]
	ldrb    r2, [r0, #0x1]
	mov     r1, #0xf
	bic     r2, r1
	mov     r1, #0xf
	and     r1, r4
	orr     r1, r2
	strb    r1, [r0, #0x1]
	pop     {r4,pc}
@ 0x202c1de


.incbin "baserom/arm9.bin", 0x2c1de, 0x202c834 - 0x202c1de


.thumb
Function_202c834: @ 202c834 :thumb
	ldr     r3, [pc, #0x4] @ 0x202c83c, (=#0x20245bd)
	mov     r1, #0x13
	bx      r3
@ 0x202c83a


.incbin "baserom/arm9.bin", 0x2c83a, 0x202c83c - 0x202c83a


.word 0x20245bd @ 0x202c83c
.thumb
Function_202c840: @ 202c840 :thumb
	add     r0, #0x20
	bx      lr
@ 0x202c844

.thumb
Function_202c844: @ 202c844 :thumb
	bx      lr
@ 0x202c846


.incbin "baserom/arm9.bin", 0x2c846, 0x202c848 - 0x202c846


.thumb
Function_202c848: @ 202c848 :thumb
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bx      lr
@ 0x202c84e


.incbin "baserom/arm9.bin", 0x2c84e, 0x202c878 - 0x202c84e


.thumb
Function_202c878: @ 202c878 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1e
	bl      Function_2025c48
	mov     r0, r4
	mov     r1, #0x1e
	bl      Function_20245bc
	pop     {r4,pc}
@ 0x202c88c


.incbin "baserom/arm9.bin", 0x2c88c, 0x202ca1c - 0x202c88c


.thumb
Function_202ca1c: @ 202ca1c :thumb
	ldr     r3, [pc, #0x4] @ 0x202ca24, (=#0x20245bd)
	mov     r1, #0x15
	bx      r3
@ 0x202ca22


.incbin "baserom/arm9.bin", 0x2ca22, 0x202ca24 - 0x202ca22


.word 0x20245bd @ 0x202ca24

.incbin "baserom/arm9.bin", 0x2ca28, 0x202cab0 - 0x202ca28


.thumb
Function_202cab0: @ 202cab0 :thumb
	push    {r4-r7}
	mov     r6, #0x0
	mov     r4, r6
	add     r2, r1, #0x1
	mov     r3, r6
.thumb
branch_202caba: @ 202caba :thumb
	mov     r5, r3
	mov     r7, r0
.thumb
branch_202cabe: @ 202cabe :thumb
	ldrb    r1, [r7, #0x0]
	cmp     r2, r1
	bne     branch_202cac6
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_202cac6: @ 202cac6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cff @ add r7, r7, #0x3
	cmp     r5, #0x8
	blt     branch_202cabe
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x18
	cmp     r4, #0xc
	blt     branch_202caba
	mov     r0, r6
	pop     {r4-r7}
	bx      lr
@ 0x202cadc


.incbin "baserom/arm9.bin", 0x2cadc, 0x202cae0 - 0x202cadc


.thumb
Function_202cae0: @ 202cae0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	.hword  0x1e69 @ sub r1, r5, #0x1
	mov     r6, r0
	mov     r4, r2
	bl      Function_202cab0
	mov     r1, #0x12
	lsl     r1, r1, #4
	add     r2, r6, r1
	.hword  0x1e69 @ sub r1, r5, #0x1
	ldrb    r3, [r2, r1]
	add     r0, r0, r3
	cmp     r4, #0x0
	bge     branch_202cb0a
	add     r0, r4, r3
	bmi     branch_202cb06
	strb    r0, [r2, r1]
	b       branch_202cb1a
@ 0x202cb06

.thumb
branch_202cb06: @ 202cb06 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x202cb0a

.thumb
branch_202cb0a: @ 202cb0a :thumb
	add     r0, r0, r4
	cmp     r0, #0x63
	bgt     branch_202cb16
	add     r0, r3, r4
	strb    r0, [r2, r1]
	b       branch_202cb1a
@ 0x202cb16

.thumb
branch_202cb16: @ 202cb16 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x202cb1a

.thumb
branch_202cb1a: @ 202cb1a :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x202cb1e


.incbin "baserom/arm9.bin", 0x2cb1e, 0x202cba8 - 0x202cb1e


.thumb
Function_202cba8: @ 202cba8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_202cbb0: @ 202cbb0 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_202cbc8
	cmp     r0, #0x0
	beq     branch_202cbbe
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_202cbbe: @ 202cbbe :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x51
	blt     branch_202cbb0
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x202cbc8

.thumb
Function_202cbc8: @ 202cbc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	.hword  0x1e69 @ sub r1, r5, #0x1
	mov     r4, r0
	bl      Function_202cab0
	.hword  0x1e69 @ sub r1, r5, #0x1
	add     r2, r4, r1
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	add     r0, r0, r1
	pop     {r3-r5,pc}
@ 0x202cbe2


.incbin "baserom/arm9.bin", 0x2cbe2, 0x202cbf0 - 0x202cbe2


.thumb
Function_202cbf0: @ 202cbf0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r6, [r5, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x202cc54, (=#0x3e7)
	cmp     r6, r0
	bne     branch_202cc08
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x3b
	bne     branch_202cc08
	ldrb    r0, [r5, #0x3]
	cmp     r0, #0x3b
	beq     branch_202cc50
.thumb
branch_202cc08: @ 202cc08 :thumb
	ldrb    r0, [r5, #0x3]
	ldrb    r4, [r5, #0x2]
	add     r7, r0, r1
	cmp     r7, #0x3b
	bls     branch_202cc4a
	mov     r0, r7
	mov     r1, #0x3c
	blx     Function_20e2178
	add     r4, r4, r0
	mov     r0, r7
	mov     r1, #0x3c
	blx     Function_20e2178
	mov     r7, r1
	cmp     r4, #0x3b
	bls     branch_202cc4a
	mov     r0, r4
	mov     r1, #0x3c
	blx     Function_20e2178
	add     r6, r6, r0
	mov     r0, r4
	mov     r1, #0x3c
	blx     Function_20e2178
	ldr     r0, [pc, #0x14] @ 0x202cc54, (=#0x3e7)
	mov     r4, r1
	cmp     r6, r0
	bcc     branch_202cc4a
	mov     r4, #0x3b
	mov     r6, r0
	mov     r7, r4
.thumb
branch_202cc4a: @ 202cc4a :thumb
	strh    r6, [r5, #0x0]
	strb    r4, [r5, #0x2]
	strb    r7, [r5, #0x3]
.thumb
branch_202cc50: @ 202cc50 :thumb
	pop     {r3-r7,pc}
@ 0x202cc52


.incbin "baserom/arm9.bin", 0x2cc52, 0x202cc54 - 0x202cc52


.word 0x3e7 @ 0x202cc54
.thumb
Function_202cc58: @ 202cc58 :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x202cc5c

.thumb
Function_202cc5c: @ 202cc5c :thumb
	ldrb    r0, [r0, #0x2]
	bx      lr
@ 0x202cc60


.incbin "baserom/arm9.bin", 0x2cc60, 0x202cc6c - 0x202cc60


.thumb
Function_202cc6c: @ 202cc6c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, #0xfb
	mov     r0, #0x0
	mov     r1, r4
	lsl     r2, r2, #2
	blx     Function_20c4b4c
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x202cc82


.incbin "baserom/arm9.bin", 0x2cc82, 0x202cc84 - 0x202cc82


.thumb
Function_202cc84: @ 202cc84 :thumb
	push    {r4,lr}
	mov     r1, #0xfb
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r4, r0
	bl      Function_202cc6c
	mov     r0, r4
	pop     {r4,pc}
@ 0x202cc98

.thumb
Function_202cc98: @ 202cc98 :thumb
	ldr     r3, [pc, #0x4] @ 0x202cca0, (=#0x20245bd)
	mov     r1, #0x16
	bx      r3
@ 0x202cc9e


.incbin "baserom/arm9.bin", 0x2cc9e, 0x202cca0 - 0x202cc9e


.word 0x20245bd @ 0x202cca0
.thumb
Function_202cca4: @ 202cca4 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x202cca8


.incbin "baserom/arm9.bin", 0x2cca8, 0x202ccb0 - 0x202cca8


.thumb
Function_202ccb0: @ 202ccb0 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x202ccb4

.thumb
Function_202ccb4: @ 202ccb4 :thumb
	push    {r4-r7}
	mov     r5, #0x0
	mov     r2, #0xfa
	mov     r4, r5
	mov     r6, #0xf
	lsl     r2, r2, #2
.thumb
branch_202ccc0: @ 202ccc0 :thumb
	ldsb    r7, [r1, r4]
	add     r3, r0, r5
	and     r7, r6
	lsl     r7, r7, #24
	lsr     r7, r7, #24
	sub     r7, #0x8
	lsl     r7, r7, #24
	asr     r7, r7, #20
	strb    r7, [r0, r5]
	ldsb    r7, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #20
	lsr     r7, r7, #24
	sub     r7, #0x8
	lsl     r7, r7, #24
	asr     r7, r7, #20
	strb    r7, [r3, #0x1]
	cmp     r4, r2
	blt     branch_202ccc0
	pop     {r4-r7}
	bx      lr
@ 0x202ccec

.thumb
Function_202ccec: @ 202ccec :thumb
	push    {r4-r7}
	mov     r3, r0
	mov     r2, r1
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	mov     r0, r1
.thumb
branch_202ccfa: @ 202ccfa :thumb
	ldsb    r4, [r2, r0]
	add     r6, r3, r1
	add     r7, r2, r0
	asr     r5, r4, #3
	lsr     r5, r5, #28
	add     r5, r4, r5
	lsl     r4, r5, #20
	asr     r4, r4, #24
	add     r4, #0x8
	strb    r4, [r6, #0x4]
	mov     r4, #0x4
	ldsb    r5, [r6, r4]
	mov     r4, #0x1
	ldsb    r4, [r7, r4]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c49 @ add r1, r1, #0x1
	asr     r7, r4, #3
	lsr     r7, r7, #28
	add     r7, r4, r7
	lsl     r4, r7, #20
	asr     r4, r4, #24
	add     r4, #0x8
	lsl     r4, r4, #24
	lsr     r4, r4, #20
	orr     r4, r5
	strb    r4, [r6, #0x4]
	mov     r4, #0x7d
	lsl     r4, r4, #4
	cmp     r0, r4
	blt     branch_202ccfa
	pop     {r4-r7}
	bx      lr
@ 0x202cd3a


.incbin "baserom/arm9.bin", 0x2cd3a, 0x202cd3c - 0x202cd3a


.thumb
Function_202cd3c: @ 202cd3c :thumb
	mov     r2, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0xfb
	ldr     r3, [pc, #0x4] @ 0x202cd4c, (=#0x20c4c14)
	lsl     r2, r2, #2
	bx      r3
@ 0x202cd4a


.incbin "baserom/arm9.bin", 0x2cd4a, 0x202cd4c - 0x202cd4a


.word 0x20c4c14 @ 0x202cd4c

.incbin "baserom/arm9.bin", 0x2cd50, 0x202cd88 - 0x202cd50


.thumb
Function_202cd88: @ 202cd88 :thumb
	ldr     r3, [pc, #0x4] @ 0x202cd90, (=#0x20245bd)
	mov     r1, #0x14
	bx      r3
@ 0x202cd8e


.incbin "baserom/arm9.bin", 0x2cd8e, 0x202cd90 - 0x202cd8e


.word 0x20245bd @ 0x202cd90
.thumb
Function_202cd94: @ 202cd94 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_202cdbe
	mov     r1, #0x6d
	add     r0, r4, #0x4
	lsl     r1, r1, #2
	bl      Function_201d5b8
	mov     r3, #0x6e
	lsl     r3, r3, #2
	strh    r0, [r4, r3]
	.hword  0x1f19 @ sub r1, r3, #0x4
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldrh    r3, [r4, r3]
	add     r0, r4, #0x4
	lsl     r3, r3, #16
	add     r2, r2, r3
	bl      Function_201d5d4
.thumb
branch_202cdbe: @ 202cdbe :thumb
	pop     {r4,pc}
@ 0x202cdc0

.thumb
Function_202cdc0: @ 202cdc0 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_202cdde
	mov     r1, #0x6d
	lsl     r1, r1, #2
	add     r2, r1, #0x4
	ldrh    r3, [r4, r2]
	add     r2, r1, #0x6
	ldrh    r2, [r4, r2]
	add     r0, r4, #0x4
	lsl     r2, r2, #16
	add     r2, r3, r2
	bl      Function_201d600
.thumb
branch_202cdde: @ 202cdde :thumb
	pop     {r4,pc}
@ 0x202cde0

.thumb
Function_202cde0: @ 202cde0 :thumb
	push    {r3,lr}
	cmp     r1, #0x47
	bge     branch_202cdec
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x202cdec

.thumb
branch_202cdec: @ 202cdec :thumb
	cmp     r1, #0x94
	bge     branch_202cdfe
	sub     r1, #0x47
	lsl     r1, r1, #1
	add     r1, r0, r1
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldrh    r0, [r1, r0]
	pop     {r3,pc}
@ 0x202cdfe

.thumb
branch_202cdfe: @ 202cdfe :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202ce06


.incbin "baserom/arm9.bin", 0x2ce06, 0x202ce08 - 0x202ce06


.thumb
Function_202ce08: @ 202ce08 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x47
	bge     branch_202ce18
	lsl     r0, r4, #2
	str     r2, [r5, r0]
	b       branch_202ce30
@ 0x202ce18

.thumb
branch_202ce18: @ 202ce18 :thumb
	cmp     r4, #0x94
	bge     branch_202ce2c
	mov     r0, r4
	sub     r0, #0x47
	lsl     r0, r0, #1
	add     r1, r5, r0
	mov     r0, #0x47
	lsl     r0, r0, #2
	strh    r2, [r1, r0]
	b       branch_202ce30
@ 0x202ce2c

.thumb
branch_202ce2c: @ 202ce2c :thumb
	bl      Function_2022974
.thumb
branch_202ce30: @ 202ce30 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cde0
	pop     {r3-r5,pc}
@ 0x202ce3a


.incbin "baserom/arm9.bin", 0x2ce3a, 0x202ce3c - 0x202ce3a


.thumb
Function_202ce3c: @ 202ce3c :thumb
	push    {r3,lr}
	cmp     r0, #0x47
	bge     branch_202ce52
	ldr     r1, [pc, #0x2c] @ 0x202ce70, (=#0x2100984)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_202ce4e
	ldr     r0, [pc, #0x28] @ 0x202ce74, (=#0x3b9ac9ff)
	pop     {r3,pc}
@ 0x202ce4e

.thumb
branch_202ce4e: @ 202ce4e :thumb
	ldr     r0, [pc, #0x28] @ 0x202ce78, (=#0xf423f)
	pop     {r3,pc}
@ 0x202ce52

.thumb
branch_202ce52: @ 202ce52 :thumb
	cmp     r0, #0x94
	bge     branch_202ce66
	ldr     r1, [pc, #0x18] @ 0x202ce70, (=#0x2100984)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_202ce62
	ldr     r0, [pc, #0x1c] @ 0x202ce7c, (=#0xffff)
	pop     {r3,pc}
@ 0x202ce62

.thumb
branch_202ce62: @ 202ce62 :thumb
	ldr     r0, [pc, #0x1c] @ 0x202ce80, (=#0x270f)
	pop     {r3,pc}
@ 0x202ce66

.thumb
branch_202ce66: @ 202ce66 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202ce6e


.incbin "baserom/arm9.bin", 0x2ce6e, 0x202ce70 - 0x202ce6e


.word 0x2100984 @ 0x202ce70
.word 0x3b9ac9ff @ 0x202ce74
.word 0xf423f @ 0x202ce78
.word 0xffff @ 0x202ce7c
.word 0x270f @ 0x202ce80
.thumb
Function_202ce84: @ 202ce84 :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x4] @ 0x202ce8c, (=#0x20e5c68)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x202ce8c

.word 0x20e5c68 @ 0x202ce8c
.thumb
Function_202ce90: @ 202ce90 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      Function_202ce3c
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cdc0
	cmp     r6, r7
	bcs     branch_202ceb8
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_202ce08
	b       branch_202cec2
@ 0x202ceb8

.thumb
branch_202ceb8: @ 202ceb8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_202ce08
.thumb
branch_202cec2: @ 202cec2 :thumb
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cd94
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x202ced0

.thumb
Function_202ced0: @ 202ced0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r7, r2
	bl      Function_202ce3c
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_202cdc0
	mov     r0, r6
	mov     r1, r5
	bl      Function_202cde0
	str     r0, [sp, #0x0]
	cmp     r7, r4
	bls     branch_202cef8
	mov     r7, r4
.thumb
branch_202cef8: @ 202cef8 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r7
	bcs     branch_202cf0c
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_202ce08
	str     r0, [sp, #0x0]
	b       branch_202cf1c
@ 0x202cf0c

.thumb
branch_202cf0c: @ 202cf0c :thumb
	cmp     r0, r4
	bls     branch_202cf1c
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_202ce08
	str     r0, [sp, #0x0]
.thumb
branch_202cf1c: @ 202cf1c :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_202cd94
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x202cf28

.thumb
Function_202cf28: @ 202cf28 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_202ce3c
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cdc0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cde0
	add     r2, r0, #0x1
	cmp     r2, r6
	bcs     branch_202cf56
	mov     r0, r5
	mov     r1, r4
	bl      Function_202ce08
	b       branch_202cf60
@ 0x202cf56

.thumb
branch_202cf56: @ 202cf56 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_202ce08
.thumb
branch_202cf60: @ 202cf60 :thumb
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cd94
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x202cf6e


.incbin "baserom/arm9.bin", 0x2cf6e, 0x202cf70 - 0x202cf6e


.thumb
Function_202cf70: @ 202cf70 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r7, r2
	bl      Function_202ce3c
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cdc0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cde0
	add     r2, r0, r7
	cmp     r2, r6
	bcs     branch_202cfa0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202ce08
	b       branch_202cfaa
@ 0x202cfa0

.thumb
branch_202cfa0: @ 202cfa0 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_202ce08
.thumb
branch_202cfaa: @ 202cfaa :thumb
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_202cd94
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x202cfb8

.thumb
Function_202cfb8: @ 202cfb8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      Function_202ce3c
	mov     r4, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_202cdc0
	mov     r0, r5
	mov     r1, r7
	bl      Function_202cde0
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_202cd94
	cmp     r6, r4
	bhi     branch_202cfe6
	mov     r4, r6
.thumb
branch_202cfe6: @ 202cfe6 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x202cfea


.incbin "baserom/arm9.bin", 0x2cfea, 0x202cfec - 0x202cfea


.thumb
Function_202cfec: @ 202cfec :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x33
	blt     branch_202cffa
	bl      Function_2022974
.thumb
branch_202cffa: @ 202cffa :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_202cfb8
	mov     r4, r0
	mov     r0, r6
	bl      Function_202ce84
	ldr     r2, [pc, #0x24] @ 0x202d030, (=#0x5f5e0ff)
	add     r0, r4, r0
	cmp     r0, r2
	bls     branch_202d01c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_202ce90
	pop     {r4-r6,pc}
@ 0x202d01c

.thumb
branch_202d01c: @ 202d01c :thumb
	mov     r0, r6
	bl      Function_202ce84
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_202cf70
	pop     {r4-r6,pc}
@ 0x202d02e


.incbin "baserom/arm9.bin", 0x2d02e, 0x202d030 - 0x202d02e


.word 0x5f5e0ff @ 0x202d030
.thumb
Function_202d034: @ 202d034 :thumb
	ldr     r3, [pc, #0x4] @ 0x202d03c, (=#0x202cfb9)
	mov     r1, #0x1
	bx      r3
@ 0x202d03a


.incbin "baserom/arm9.bin", 0x2d03a, 0x202d03c - 0x202d03a


.word 0x202cfb9 @ 0x202d03c
.thumb
Function_202d040: @ 202d040 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	bl      Function_2026f9c
	cmp     r0, #0x0
	bne     branch_202d058
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_202cfec
.thumb
branch_202d058: @ 202d058 :thumb
	pop     {r4,pc}
@ 0x202d05a


.incbin "baserom/arm9.bin", 0x2d05a, 0x202d060 - 0x202d05a


.thumb
Function_202d060: @ 202d060 :thumb
	ldr     r3, [pc, #0x4] @ 0x202d068, (=#0x20c4cf4)
	mov     r1, #0x0
	mov     r2, #0x3c
	bx      r3
@ 0x202d068

.word 0x20c4cf4 @ 0x202d068

.incbin "baserom/arm9.bin", 0x2d06c, 0x202d0bc - 0x202d06c


.thumb
Function_202d0bc: @ 202d0bc :thumb
	push    {r3,lr}
	cmp     r1, #0xa
	bhi     branch_202d13a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r2, #0
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r4, #0
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	lsl     r2, r7, #0
	lsl     r0, r1, #1
	lsl     r0, r2, #1
	lsl     r6, r3, #1
	lsl     r6, r4, #1
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #29
	pop     {r3,pc}
@ 0x202d0ec


.incbin "baserom/arm9.bin", 0x2d0ec, 0x202d13a - 0x202d0ec


.thumb
branch_202d13a: @ 202d13a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202d13e


.incbin "baserom/arm9.bin", 0x2d13e, 0x202d140 - 0x202d13e


.thumb
Function_202d140: @ 202d140 :thumb
	push    {r4,lr}
	mov     r3, r0
	cmp     r1, #0xa
	bhi     branch_202d1e6
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r2, #0
	lsl     r6, r4, #0
	lsl     r4, r5, #0
	lsl     r2, r6, #0
	lsl     r0, r7, #0
	lsl     r6, r7, #0
	lsl     r4, r1, #1
	lsl     r2, r3, #1
	lsl     r4, r5, #1
	lsl     r0, r0, #2
	lsl     r2, r7, #1
	ldrb    r1, [r3, #0x0]
	mov     r0, #0x1c
	bic     r1, r0
	ldrb    r0, [r2, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #27
	orr     r0, r1
	strb    r0, [r3, #0x0]
	pop     {r4,pc}
@ 0x202d17c


.incbin "baserom/arm9.bin", 0x2d17c, 0x202d1e6 - 0x202d17c


.thumb
branch_202d1e6: @ 202d1e6 :thumb
	pop     {r4,pc}
@ 0x202d1e8


.incbin "baserom/arm9.bin", 0x2d1e8, 0x202d21c - 0x202d1e8


.thumb
Function_202d21c: @ 202d21c :thumb
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #31
	ldrb    r3, [r0, #0x0]
	mov     r2, #0x2
	lsr     r1, r1, #30
	bic     r3, r2
	orr     r1, r3
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x202d230

.thumb
Function_202d230: @ 202d230 :thumb
	cmp     r2, #0x6
	bhi     branch_202d27e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r4, r7, #0
	lsl     r4, r1, #0
	lsl     r4, r7, #0
	lsl     r4, r7, #0
	lsl     r4, r7, #0
	lsl     r2, r3, #0
	lsl     r4, r5, #0
	ldr     r2, [pc, #0x34] @ 0x202d284, (=#0x270f)
	cmp     r1, r2
	bls     branch_202d258
	strh    r2, [r0, #0x0]
	b       branch_202d27e
@ 0x202d258

.thumb
branch_202d258: @ 202d258 :thumb
	strh    r1, [r0, #0x0]
	b       branch_202d27e
@ 0x202d25c


.incbin "baserom/arm9.bin", 0x2d25c, 0x202d27e - 0x202d25c


.thumb
branch_202d27e: @ 202d27e :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x202d282


.incbin "baserom/arm9.bin", 0x2d282, 0x202d284 - 0x202d282


.word 0x270f @ 0x202d284

.incbin "baserom/arm9.bin", 0x2d288, 0x202d3b4 - 0x202d288


.thumb
Function_202d3b4: @ 202d3b4 :thumb
	push    {r4,r5}
	cmp     r1, #0x5
	bne     branch_202d3c0
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x202d3c0

.thumb
branch_202d3c0: @ 202d3c0 :thumb
	cmp     r1, #0x6
	bne     branch_202d3c6
	mov     r1, #0x5
.thumb
branch_202d3c6: @ 202d3c6 :thumb
	cmp     r2, #0x2
	beq     branch_202d3d0
	cmp     r2, #0x3
	beq     branch_202d3da
	b       branch_202d3ec
@ 0x202d3d0

.thumb
branch_202d3d0: @ 202d3d0 :thumb
	lsl     r2, r1, #1
	mov     r3, #0x0
	add     r2, r0, r2
	strh    r3, [r2, #0xa]
	b       branch_202d3ec
@ 0x202d3da

.thumb
branch_202d3da: @ 202d3da :thumb
	mov     r5, r0
	add     r5, #0xa
	lsl     r4, r1, #1
	ldrh    r3, [r5, r4]
	ldr     r2, [pc, #0x14] @ 0x202d3f8, (=#0xfffe)
	cmp     r3, r2
	bcs     branch_202d3ec
	add     r2, r3, #0x1
	strh    r2, [r5, r4]
.thumb
branch_202d3ec: @ 202d3ec :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0xa]
	pop     {r4,r5}
	bx      lr
@ 0x202d3f6


.incbin "baserom/arm9.bin", 0x2d3f6, 0x202d3f8 - 0x202d3f6


.word 0xfffe @ 0x202d3f8
.thumb
Function_202d3fc: @ 202d3fc :thumb
	cmp     r1, #0x5
	bne     branch_202d404
	mov     r0, #0x0
	bx      lr
@ 0x202d404

.thumb
branch_202d404: @ 202d404 :thumb
	cmp     r1, #0x6
	bne     branch_202d40a
	mov     r1, #0x5
.thumb
branch_202d40a: @ 202d40a :thumb
	add     r0, #0xa
	lsl     r1, r1, #1
	strh    r2, [r0, r1]
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x202d414

.thumb
Function_202d414: @ 202d414 :thumb
	push    {r4,lr}
	mov     r3, #0x1
	cmp     r1, #0x10
	bcc     branch_202d424
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x202d424

.thumb
branch_202d424: @ 202d424 :thumb
	mov     r4, #0x0
	cmp     r1, #0x0
	bls     branch_202d438
.thumb
branch_202d42a: @ 202d42a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r4, r4, #16
	lsl     r3, r3, #17
	lsr     r4, r4, #16
	lsr     r3, r3, #16
	cmp     r4, r1
	bcc     branch_202d42a
.thumb
branch_202d438: @ 202d438 :thumb
	cmp     r2, #0x0
	beq     branch_202d45c
	cmp     r2, #0x1
	beq     branch_202d454
	cmp     r2, #0x2
	bne     branch_202d468
	ldr     r1, [pc, #0x24] @ 0x202d46c, (=#0xffff)
	eor     r1, r3
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	ldrh    r1, [r0, #0x8]
	and     r1, r2
	strh    r1, [r0, #0x8]
	b       branch_202d468
@ 0x202d454

.thumb
branch_202d454: @ 202d454 :thumb
	ldrh    r1, [r0, #0x8]
	orr     r1, r3
	strh    r1, [r0, #0x8]
	b       branch_202d468
@ 0x202d45c

.thumb
branch_202d45c: @ 202d45c :thumb
	ldrh    r0, [r0, #0x8]
	mov     r2, r0
	asr     r2, r1
	mov     r0, #0x1
	and     r0, r2
	pop     {r4,pc}
@ 0x202d468

.thumb
branch_202d468: @ 202d468 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x202d46c

.word 0xffff @ 0x202d46c

.incbin "baserom/arm9.bin", 0x2d470, 0x202d5f0 - 0x202d470


.thumb
Function_202d5f0: @ 202d5f0 :thumb
	add     r0, #0xff
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x202d5f6


.incbin "baserom/arm9.bin", 0x2d5f6, 0x202d708 - 0x202d5f6


.thumb
Function_202d708: @ 202d708 :thumb
	ldr     r2, [pc, #0xc] @ 0x202d718, (=#0x103)
	ldrb    r3, [r0, r2]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r3, [r1, #0x0]
	ldrb    r0, [r0, r2]
	strb    r0, [r1, #0x1]
	bx      lr
@ 0x202d716


.incbin "baserom/arm9.bin", 0x2d716, 0x202d718 - 0x202d716


.word 0x103 @ 0x202d718

.incbin "baserom/arm9.bin", 0x2d71c, 0x202d740 - 0x202d71c


.thumb
Function_202d740: @ 202d740 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	mov     r1, #0x8e
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x202d750

.thumb
Function_202d750: @ 202d750 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x202d760, (=#0x954)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x202d75e


.incbin "baserom/arm9.bin", 0x2d75e, 0x202d760 - 0x202d75e


.word 0x954 @ 0x202d760
.thumb
Function_202d764: @ 202d764 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x202d774, (=#0xadc)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x202d772


.incbin "baserom/arm9.bin", 0x2d772, 0x202d774 - 0x202d772


.word 0xadc @ 0x202d774

.incbin "baserom/arm9.bin", 0x2d778, 0x202d79c - 0x202d778


.thumb
Function_202d79c: @ 202d79c :thumb
	ldr     r3, [pc, #0x4] @ 0x202d7a4, (=#0x20245bd)
	mov     r1, #0x18
	bx      r3
@ 0x202d7a2


.incbin "baserom/arm9.bin", 0x2d7a2, 0x202d7a4 - 0x202d7a2


.word 0x20245bd @ 0x202d7a4

.incbin "baserom/arm9.bin", 0x2d7a8, 0x202d814 - 0x202d7a8


.thumb
Function_202d814: @ 202d814 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	beq     branch_202d820
	cmp     r1, #0x2
	beq     branch_202d824
	b       branch_202d828
@ 0x202d820

.thumb
branch_202d820: @ 202d820 :thumb
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x202d824

.thumb
branch_202d824: @ 202d824 :thumb
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x202d828

.thumb
branch_202d828: @ 202d828 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202d830


.incbin "baserom/arm9.bin", 0x2d830, 0x202d834 - 0x202d830


.thumb
Function_202d834: @ 202d834 :thumb
	ldr     r3, [pc, #0x4] @ 0x202d83c, (=#0x20245bd)
	mov     r1, #0x19
	bx      r3
@ 0x202d83a


.incbin "baserom/arm9.bin", 0x2d83a, 0x202d83c - 0x202d83a


.word 0x20245bd @ 0x202d83c

.incbin "baserom/arm9.bin", 0x2d840, 0x202d884 - 0x202d840


.thumb
Function_202d884: @ 202d884 :thumb
	push    {r3,lr}
	bl      Function_202d834
	ldr     r1, [pc, #0x8] @ 0x202d894, (=#0x14e)
	mov     r2, #0x1
	strb    r2, [r0, r1]
	pop     {r3,pc}
@ 0x202d892


.incbin "baserom/arm9.bin", 0x2d892, 0x202d894 - 0x202d892


.word 0x14e @ 0x202d894

.incbin "baserom/arm9.bin", 0x2d898, 0x202d8bc - 0x202d898


.thumb
Function_202d8bc: @ 202d8bc :thumb
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x202d8c2


.incbin "baserom/arm9.bin", 0x2d8c2, 0x202d8c4 - 0x202d8c2


.thumb
Function_202d8c4: @ 202d8c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	bcc     branch_202d8d2
	bl      Function_2022974
.thumb
branch_202d8d2: @ 202d8d2 :thumb
	mov     r0, #0x52
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x202d8dc

.thumb
Function_202d8dc: @ 202d8dc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x6
	bcc     branch_202d8ec
	bl      Function_2022974
.thumb
branch_202d8ec: @ 202d8ec :thumb
	mov     r0, #0x52
	add     r1, r5, r4
	lsl     r0, r0, #2
	strb    r6, [r1, r0]
	pop     {r4-r6,pc}
@ 0x202d8f6


.incbin "baserom/arm9.bin", 0x2d8f6, 0x202d924 - 0x202d8f6


.thumb
Function_202d924: @ 202d924 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	bcc     branch_202d932
	bl      Function_2022974
.thumb
branch_202d932: @ 202d932 :thumb
	mov     r0, #0x14
	add     r5, #0xd0
	mul     r0, r4
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x202d93c


.incbin "baserom/arm9.bin", 0x2d93c, 0x202d980 - 0x202d93c


.thumb
Function_202d980: @ 202d980 :thumb
	cmp     r1, #0x8
	bhi     branch_202d9c0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r5, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r3, #0
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r4, #0
	lsl     r0, r5, #0
	lsl     r4, r5, #0
	str     r2, [r0, #0x0]
	bx      lr
@ 0x202d9a6


.incbin "baserom/arm9.bin", 0x2d9a6, 0x202d9c0 - 0x202d9a6


.thumb
branch_202d9c0: @ 202d9c0 :thumb
	bx      lr
@ 0x202d9c2


.incbin "baserom/arm9.bin", 0x2d9c2, 0x202da40 - 0x202d9c2


.thumb
Function_202da40: @ 202da40 :thumb
	ldr     r3, [pc, #0x4] @ 0x202da48, (=#0x20245bd)
	mov     r1, #0x1a
	bx      r3
@ 0x202da46


.incbin "baserom/arm9.bin", 0x2da46, 0x202da48 - 0x202da46


.word 0x20245bd @ 0x202da48

.incbin "baserom/arm9.bin", 0x2da4c, 0x202dac8 - 0x202da4c


.thumb
Function_202dac8: @ 202dac8 :thumb
	cmp     r0, #0x0
	beq     branch_202dad4
	cmp     r0, #0xe
	bcs     branch_202dad4
	mov     r0, #0x1
	bx      lr
@ 0x202dad4

.thumb
branch_202dad4: @ 202dad4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202dad8

.thumb
Function_202dad8: @ 202dad8 :thumb
	push    {r3-r5,lr}
	cmp     r1, #0x0
	blt     branch_202dafc
	cmp     r1, #0x8
	bge     branch_202dafc
	mov     r2, #0x1
	lsl     r2, r2, #8
	add     r4, r0, r2
	lsl     r0, r1, #6
	add     r0, r1, r0
	lsl     r5, r0, #2
	ldrh    r0, [r4, r5]
	bl      Function_202dac8
	cmp     r0, #0x0
	beq     branch_202dafc
	add     r0, r4, r5
	pop     {r3-r5,pc}
@ 0x202dafc

.thumb
branch_202dafc: @ 202dafc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202db00


.incbin "baserom/arm9.bin", 0x2db00, 0x202dd30 - 0x202db00


.thumb
Function_202dd30: @ 202dd30 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x8
	blt     branch_202dd3e
	bl      Function_2022974
.thumb
branch_202dd3e: @ 202dd3e :thumb
	lsl     r0, r4, #6
	add     r0, r4, r0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldrh    r0, [r1, r0]
	bl      Function_202dac8
	cmp     r0, #0x0
	beq     branch_202dd58
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x202dd58

.thumb
branch_202dd58: @ 202dd58 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202dd5c


.incbin "baserom/arm9.bin", 0x2dd5c, 0x202dee4 - 0x202dd5c


.thumb
Function_202dee4: @ 202dee4 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x18] @ 0x202df00, (=#0x21c07a0)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_202def6
	bl      Function_202442c
	ldr     r1, [pc, #0xc] @ 0x202df00, (=#0x21c07a0)
	str     r0, [r1, #0x0]
.thumb
branch_202def6: @ 202def6 :thumb
	mov     r0, #0x1f
	bl      Function_2025c84
	pop     {r3,pc}
@ 0x202defe


.incbin "baserom/arm9.bin", 0x2defe, 0x202df00 - 0x202defe


.word 0x21c07a0 @ 0x202df00

.incbin "baserom/arm9.bin", 0x2df04, 0x202df18 - 0x202df04


.thumb
Function_202df18: @ 202df18 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x20] @ 0x202df3c, (=#0x21c07a0)
	mov     r5, #0x0
.thumb
branch_202df1e: @ 202df1e :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_202dd30
	cmp     r0, #0x1
	bne     branch_202df2e
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x202df2e

.thumb
branch_202df2e: @ 202df2e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_202df1e
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x202df3a


.incbin "baserom/arm9.bin", 0x2df3a, 0x202df3c - 0x202df3a


.word 0x21c07a0 @ 0x202df3c

.incbin "baserom/arm9.bin", 0x2df40, 0x202df5c - 0x202df40


.thumb
Function_202df5c: @ 202df5c :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x202df74, (=#0x21c07a0)
	ldr     r0, [r0, #0x0]
	bl      Function_202dad8
	cmp     r0, #0x0
	beq     branch_202df70
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3,pc}
@ 0x202df70

.thumb
branch_202df70: @ 202df70 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202df74

.word 0x21c07a0 @ 0x202df74

.incbin "baserom/arm9.bin", 0x2df78, 0x202e174 - 0x202df78


.thumb
Function_202e174: @ 202e174 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_202e182
	bl      Function_2022974
.thumb
branch_202e182: @ 202e182 :thumb
	ldr     r0, [pc, #0x1c] @ 0x202e1a0, (=#0x2aa8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1e
	bcc     branch_202e18e
	bl      Function_2022974
.thumb
branch_202e18e: @ 202e18e :thumb
	cmp     r4, #0x1e
	blt     branch_202e196
	bl      Function_2022974
.thumb
branch_202e196: @ 202e196 :thumb
	ldr     r0, [pc, #0xc] @ 0x202e1a4, (=#0x2aac)
	ldr     r0, [r5, r0]
	sub     r0, r0, r4
	pop     {r3-r5,pc}
@ 0x202e19e


.incbin "baserom/arm9.bin", 0x2e19e, 0x202e1a0 - 0x202e19e


.word 0x2aa8 @ 0x202e1a0
.word 0x2aac @ 0x202e1a4

.incbin "baserom/arm9.bin", 0x2e1a8, 0x202e3f4 - 0x202e1a8


.thumb
Function_202e3f4: @ 202e3f4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, sp, #0x0
	mov     r4, r1
	mov     r6, r2
	bl      Function_20138a4
	ldr     r0, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	lsl     r0, r0, #24
	lsr     r1, r0, #16
	ldr     r0, [sp, #0x0]
	lsl     r3, r3, #24
	lsl     r0, r0, #24
	lsr     r3, r3, #8
	orr     r0, r3
	ldr     r2, [sp, #0xc]
	orr     r0, r1
	orr     r0, r2
	str     r0, [r5, #0x4]
	strb    r4, [r5, #0x0]
	mov     r0, #0x0
	strb    r0, [r5, #0x1]
	add     r5, #0x8
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x28
	blx     Function_20c4c14
	mov     r0, #0x1b
	bl      Function_2025c84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x202e43a


.incbin "baserom/arm9.bin", 0x2e43a, 0x202e43c - 0x202e43a


.thumb
Function_202e43c: @ 202e43c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      Function_202e4dc
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_202e44a: @ 202e44a :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r5, r1
	bne     branch_202e46c
	mov     r1, #0x30
	mul     r1, r2
	add     r0, r0, r1
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x3
	bcc     branch_202e468
	mov     r1, r5
	mov     r2, r4
	bl      Function_202e3f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x202e468

.thumb
branch_202e468: @ 202e468 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202e46c

.thumb
branch_202e46c: @ 202e46c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x30
	cmp     r2, #0x4
	blt     branch_202e44a
	mov     r1, #0x0
	mov     r3, r0
.thumb
branch_202e478: @ 202e478 :thumb
	ldrb    r2, [r3, #0x0]
	cmp     r2, #0x0
	bne     branch_202e490
	mov     r2, #0x30
	mul     r2, r1
	add     r0, r0, r2
	mov     r1, r5
	mov     r2, r4
	bl      Function_202e3f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x202e490

.thumb
branch_202e490: @ 202e490 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x30
	cmp     r1, #0x4
	blt     branch_202e478
	mov     r1, #0x0
	mov     r3, r0
.thumb
branch_202e49c: @ 202e49c :thumb
	ldrb    r2, [r3, #0x1]
	cmp     r2, #0x3
	bcc     branch_202e4b4
	mov     r2, #0x30
	mul     r2, r1
	add     r0, r0, r2
	mov     r1, r5
	mov     r2, r4
	bl      Function_202e3f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x202e4b4

.thumb
branch_202e4b4: @ 202e4b4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x30
	cmp     r1, #0x4
	blt     branch_202e49c
	mov     r0, #0x1b
	bl      Function_2025c84
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202e4c6


.incbin "baserom/arm9.bin", 0x2e4c6, 0x202e4dc - 0x202e4c6


.thumb
Function_202e4dc: @ 202e4dc :thumb
	push    {r4,lr}
	mov     r4, #0x0
	cmp     r1, #0x5
	bhi     branch_202e514
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r4, #0
	lsl     r2, r1, #0
	lsl     r2, r2, #0
	lsl     r0, r3, #0
	lsl     r6, r3, #0
	lsl     r6, r3, #0
	mov     r1, #0x63
	lsl     r1, r1, #2
	add     r4, r0, r1
	b       branch_202e514
@ 0x202e504


.incbin "baserom/arm9.bin", 0x2e504, 0x202e514 - 0x202e504


.thumb
branch_202e514: @ 202e514 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x202e518


.incbin "baserom/arm9.bin", 0x2e518, 0x202e578 - 0x202e518


.thumb
Function_202e578: @ 202e578 :thumb
	push    {r4-r7}
	mov     r5, #0x0
	mov     r4, r5
	ldr     r6, [sp, #0x10]
	cmp     r1, #0x0
	ble     branch_202e5b2
.thumb
branch_202e584: @ 202e584 :thumb
	ldrb    r7, [r0, #0x0]
	cmp     r2, r7
	bne     branch_202e5aa
	ldrb    r7, [r0, #0x1]
	cmp     r3, #0x0
	beq     branch_202e59c
	cmp     r7, #0x0
	beq     branch_202e59c
	add     r7, r4, #0x1
	strb    r7, [r6, r5]
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_202e5aa
@ 0x202e59c

.thumb
branch_202e59c: @ 202e59c :thumb
	cmp     r3, #0x0
	bne     branch_202e5aa
	cmp     r7, #0x0
	bne     branch_202e5aa
	add     r7, r4, #0x1
	strb    r7, [r6, r5]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_202e5aa: @ 202e5aa :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x30
	cmp     r4, r1
	blt     branch_202e584
.thumb
branch_202e5b2: @ 202e5b2 :thumb
	mov     r0, r5
	pop     {r4-r7}
	bx      lr
@ 0x202e5b8

.thumb
Function_202e5b8: @ 202e5b8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, #0x0
	mov     r0, r1
	mov     r4, r5
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r7, [sp, #0x20]
	cmp     r0, #0x0
	ble     branch_202e60e
.thumb
branch_202e5d0: @ 202e5d0 :thumb
	ldrb    r2, [r6, #0x18]
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r6, #0x19]
	cmp     r1, r2
	bne     branch_202e604
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x0
	beq     branch_202e5f0
	cmp     r0, #0x0
	beq     branch_202e5f0
	add     r0, r4, #0x1
	bl      Function_202e7d0
	strb    r0, [r7, r5]
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_202e604
@ 0x202e5f0

.thumb
branch_202e5f0: @ 202e5f0 :thumb
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x0
	bne     branch_202e604
	cmp     r0, #0x0
	bne     branch_202e604
	add     r0, r4, #0x1
	bl      Function_202e7d0
	strb    r0, [r7, r5]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_202e604: @ 202e604 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x48
	cmp     r4, r0
	blt     branch_202e5d0
.thumb
branch_202e60e: @ 202e60e :thumb
	mov     r0, r5
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x202e614

.thumb
Function_202e614: @ 202e614 :thumb
	push    {r3-r5,lr}
	ldr     r5, [sp, #0x10]
	ldr     r4, [sp, #0x14]
	cmp     r1, #0x5
	bhi     branch_202e6a4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r7, #1
	lsl     r4, r1, #1
	lsl     r2, r1, #0
	lsl     r4, r5, #0
	lsl     r0, r6, #1
	lsl     r4, r6, #1
	cmp     r3, #0x0
	str     r4, [sp, #0x0]
	beq     branch_202e648
	add     r0, #0xc
	mov     r1, #0x4
	mov     r3, r5
	bl      Function_202e578
	pop     {r3-r5,pc}
@ 0x202e648

.thumb
branch_202e648: @ 202e648 :thumb
	mov     r1, #0x93
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x10
	mov     r3, r5
	bl      Function_202e5b8
	pop     {r3-r5,pc}
@ 0x202e658


.incbin "baserom/arm9.bin", 0x2e658, 0x202e6a4 - 0x202e658


.thumb
branch_202e6a4: @ 202e6a4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202e6a8


.incbin "baserom/arm9.bin", 0x2e6a8, 0x202e6b0 - 0x202e6a8


.thumb
Function_202e6b0: @ 202e6b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	add     r0, sp, #0x8
	mov     r1, #0x0
	mov     r2, #0x4
	blx     Function_20c4cf4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_202e614
	cmp     r0, #0x0
	beq     branch_202e6e2
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x202e6e2

.thumb
branch_202e6e2: @ 202e6e2 :thumb
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_202e614
	cmp     r0, #0x0
	beq     branch_202e73e
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	beq     branch_202e738
	add     r5, sp, #0x8
.thumb
branch_202e704: @ 202e704 :thumb
	ldrb    r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_202e768
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x3
	bcc     branch_202e71a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x202e71a

.thumb
branch_202e71a: @ 202e71a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r7, #0x4
	bge     branch_202e726
	mov     r1, #0x1
	b       branch_202e728
@ 0x202e726

.thumb
branch_202e726: @ 202e726 :thumb
	mov     r1, #0x0
.thumb
branch_202e728: @ 202e728 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_202e732
	mov     r0, #0x1
	b       branch_202e734
@ 0x202e732

.thumb
branch_202e732: @ 202e732 :thumb
	mov     r0, #0x0
.thumb
branch_202e734: @ 202e734 :thumb
	tst     r0, r1
	bne     branch_202e704
.thumb
branch_202e738: @ 202e738 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x202e73e

.thumb
branch_202e73e: @ 202e73e :thumb
	mov     r5, #0x1
.thumb
branch_202e740: @ 202e740 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_202e768
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_202e756
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x3
	bcc     branch_202e75c
.thumb
branch_202e756: @ 202e756 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x202e75c

.thumb
branch_202e75c: @ 202e75c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	ble     branch_202e740
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x202e768

.thumb
Function_202e768: @ 202e768 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r0, r4
	mov     r6, r1
	bl      Function_202e7c0
	cmp     r0, #0x1
	beq     branch_202e77e
	bl      Function_2022974
.thumb
branch_202e77e: @ 202e77e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_202e4dc
	mov     r1, #0x80
	bic     r4, r1
	.hword  0x1e62 @ sub r2, r4, #0x1
	mov     r1, #0x30
	mul     r1, r2
	add     r0, r0, r1
	pop     {r4-r6,pc}
@ 0x202e794


.incbin "baserom/arm9.bin", 0x2e794, 0x202e7c0 - 0x202e794


.thumb
Function_202e7c0: @ 202e7c0 :thumb
	mov     r1, #0x80
	tst     r0, r1
	bne     branch_202e7ca
	mov     r0, #0x1
	bx      lr
@ 0x202e7ca

.thumb
branch_202e7ca: @ 202e7ca :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202e7ce


.incbin "baserom/arm9.bin", 0x2e7ce, 0x202e7d0 - 0x202e7ce


.thumb
Function_202e7d0: @ 202e7d0 :thumb
	mov     r1, #0x80
	orr     r0, r1
	bx      lr
@ 0x202e7d6


.incbin "baserom/arm9.bin", 0x2e7d6, 0x202e7d8 - 0x202e7d6


.thumb
Function_202e7d8: @ 202e7d8 :thumb
	ldr     r1, [pc, #0x4] @ 0x202e7e0, (=#0xb4c)
	add     r0, r0, r1
	bx      lr
@ 0x202e7de


.incbin "baserom/arm9.bin", 0x2e7de, 0x202e7e0 - 0x202e7de


.word 0xb4c @ 0x202e7e0
.thumb
Function_202e7e4: @ 202e7e4 :thumb
	ldr     r1, [pc, #0x4] @ 0x202e7ec, (=#0xb56)
	add     r0, r0, r1
	bx      lr
@ 0x202e7ea


.incbin "baserom/arm9.bin", 0x2e7ea, 0x202e7ec - 0x202e7ea


.word 0xb56 @ 0x202e7ec

.incbin "baserom/arm9.bin", 0x2e7f0, 0x202e808 - 0x202e7f0


.thumb
Function_202e808: @ 202e808 :thumb
	mov     r1, #0x2e
	lsl     r1, r1, #6
	add     r0, r0, r1
	bx      lr
@ 0x202e810


.incbin "baserom/arm9.bin", 0x2e810, 0x202e81c - 0x202e810


.thumb
Function_202e81c: @ 202e81c :thumb
	ldr     r1, [pc, #0x4] @ 0x202e824, (=#0xba6)
	add     r0, r0, r1
	bx      lr
@ 0x202e822


.incbin "baserom/arm9.bin", 0x2e822, 0x202e824 - 0x202e822


.word 0xba6 @ 0x202e824

.incbin "baserom/arm9.bin", 0x2e828, 0x202ef04 - 0x202e828


.thumb
Function_202ef04: @ 202ef04 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r2, [pc, #0x30] @ 0x202ef3c, (=#0x588)
	mov     r0, #0x0
	mov     r1, r5
	blx     Function_20c4bb8
	mov     r4, #0x0
	mov     r6, #0xac
	mov     r7, r4
.thumb
branch_202ef18: @ 202ef18 :thumb
	mov     r0, r5
	bl      Function_2073c2c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_202ef30
	bl      Function_2022974
.thumb
branch_202ef30: @ 202ef30 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xec
	cmp     r4, #0x6
	blt     branch_202ef18
	pop     {r3-r7,pc}
@ 0x202ef3a


.incbin "baserom/arm9.bin", 0x2ef3a, 0x202ef3c - 0x202ef3a


.word 0x588 @ 0x202ef3c

.incbin "baserom/arm9.bin", 0x2ef40, 0x202f000 - 0x202ef40


.thumb
Function_202f000: @ 202f000 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	cmp     r5, #0x6
	blt     branch_202f010
	bl      Function_2022974
.thumb
branch_202f010: @ 202f010 :thumb
	mov     r0, #0xec
	mul     r0, r5
	add     r3, r6, r0
	mov     r2, #0x1d
.thumb
branch_202f018: @ 202f018 :thumb
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_202f018
	ldr     r0, [r3, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x202f026


.incbin "baserom/arm9.bin", 0x2f026, 0x202f028 - 0x202f026


.thumb
Function_202f028: @ 202f028 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
	mov     r7, #0xac
.thumb
branch_202f032: @ 202f032 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	beq     branch_202f042
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_202f042: @ 202f042 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xec
	cmp     r6, #0x6
	blt     branch_202f032
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x202f04e


.incbin "baserom/arm9.bin", 0x2f04e, 0x202f134 - 0x202f04e


.thumb
Function_202f134: @ 202f134 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x21
	mov     r4, r2
	bl      Function_20245bc
	lsl     r1, r5, #3
	add     r3, r0, r1
	lsl     r2, r4, #1
	ldrh    r1, [r3, r2]
	ldr     r0, [pc, #0x10] @ 0x202f15c, (=#0x270f)
	cmp     r1, r0
	bcs     branch_202f152
	add     r0, r1, #0x1
	strh    r0, [r3, r2]
.thumb
branch_202f152: @ 202f152 :thumb
	mov     r0, #0x21
	bl      Function_2025c84
	pop     {r3-r5,pc}
@ 0x202f15a


.incbin "baserom/arm9.bin", 0x2f15a, 0x202f15c - 0x202f15a


.word 0x270f @ 0x202f15c

.incbin "baserom/arm9.bin", 0x2f160, 0x202f180 - 0x202f160


.thumb
Function_202f180: @ 202f180 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	bne     branch_202f1d0
	mov     r0, r5
	bl      Function_2027560
	mov     r6, r0
	mov     r0, r5
	bl      Function_202cd88
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, r0
	lsl     r2, r2, #16
	mov     r0, r7
	mov     r1, r6
	lsr     r2, r2, #16
	bl      Function_202d040
	mov     r0, r6
	mov     r1, r4
	bl      Function_202736c
	mov     r0, r5
	bl      Function_2056b24
	mov     r1, r4
	bl      Function_2056a48
.thumb
branch_202f1d0: @ 202f1d0 :thumb
	pop     {r3-r7,pc}
@ 0x202f1d2


.incbin "baserom/arm9.bin", 0x2f1d2, 0x20300b0 - 0x202f1d2


.thumb
Function_20300b0: @ 20300b0 :thumb
	push    {r3,r4}
	cmp     r1, #0xa
	bne     branch_20300da
	ldrb    r1, [r3, #0x0]
	cmp     r1, #0x1
	bcc     branch_20300ca
	mov     r1, #0x1
	ldrb    r3, [r0, #0x0]
	lsl     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x20300ca

.thumb
branch_20300ca: @ 20300ca :thumb
	mov     r1, #0x1
	mov     r3, r1
	ldrb    r4, [r0, #0x0]
	lsl     r3, r2
	mov     r1, #0xff
	eor     r1, r3
	and     r1, r4
	strb    r1, [r0, #0x0]
.thumb
branch_20300da: @ 20300da :thumb
	pop     {r3,r4}
	bx      lr
@ 0x20300de


.incbin "baserom/arm9.bin", 0x300de, 0x20300f4 - 0x20300de


.thumb
Function_20300f4: @ 20300f4 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x2030104, (=#0x1618)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x2030102


.incbin "baserom/arm9.bin", 0x30102, 0x2030104 - 0x2030102


.word 0x1618 @ 0x2030104

.incbin "baserom/arm9.bin", 0x30108, 0x2030114 - 0x2030108


.thumb
Function_2030114: @ 2030114 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	mov     r1, #0x8e
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x2030124


.incbin "baserom/arm9.bin", 0x30124, 0x203026c - 0x2030124


.thumb
Function_203026c: @ 203026c :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x203027c, (=#0x161c)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x203027a


.incbin "baserom/arm9.bin", 0x3027a, 0x203027c - 0x203027a


.word 0x161c @ 0x203027c
.thumb
Function_2030280: @ 2030280 :thumb
	push    {r4,lr}
	ldr     r3, [sp, #0x8]
	cmp     r1, #0x5
	bne     branch_20302ac
	ldrb    r1, [r3, #0x0]
	cmp     r1, #0x1
	bcc     branch_203029a
	mov     r1, #0x1
	ldrb    r3, [r0, #0x0]
	lsl     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x203029a

.thumb
branch_203029a: @ 203029a :thumb
	mov     r1, #0x1
	mov     r3, r1
	ldrb    r4, [r0, #0x0]
	lsl     r3, r2
	mov     r1, #0xff
	eor     r1, r3
	and     r1, r4
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x20302ac

.thumb
branch_20302ac: @ 20302ac :thumb
	bl      Function_2022974
	pop     {r4,pc}
@ 0x20302b2


.incbin "baserom/arm9.bin", 0x302b2, 0x20302dc - 0x20302b2


.thumb
Function_20302dc: @ 20302dc :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	mov     r1, #0x8e
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x20302ec


.incbin "baserom/arm9.bin", 0x302ec, 0x203041c - 0x20302ec


.thumb
Function_203041c: @ 203041c :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x203042c, (=#0x1620)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x203042a


.incbin "baserom/arm9.bin", 0x3042a, 0x203042c - 0x203042a


.word 0x1620 @ 0x203042c
.thumb
Function_2030430: @ 2030430 :thumb
	push    {r4,lr}
	ldr     r3, [sp, #0x8]
	cmp     r1, #0x9
	beq     branch_203043e
	cmp     r1, #0xa
	beq     branch_2030462
	b       branch_2030468
@ 0x203043e

.thumb
branch_203043e: @ 203043e :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r1, #0x1
	bcc     branch_2030450
	mov     r1, #0x1
	ldrb    r3, [r0, #0x0]
	lsl     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x2030450

.thumb
branch_2030450: @ 2030450 :thumb
	mov     r1, #0x1
	mov     r3, r1
	ldrb    r4, [r0, #0x0]
	lsl     r3, r2
	mov     r1, #0xff
	eor     r1, r3
	and     r1, r4
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x2030462

.thumb
branch_2030462: @ 2030462 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x1]
	pop     {r4,pc}
@ 0x2030468

.thumb
branch_2030468: @ 2030468 :thumb
	bl      Function_2022974
	pop     {r4,pc}
@ 0x203046e


.incbin "baserom/arm9.bin", 0x3046e, 0x20304a0 - 0x203046e


.thumb
Function_20304a0: @ 20304a0 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	mov     r1, #0x8e
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x20304b0


.incbin "baserom/arm9.bin", 0x304b0, 0x20305b8 - 0x20304b0


.thumb
Function_20305b8: @ 20305b8 :thumb
	push    {r3,lr}
	mov     r1, #0x17
	bl      Function_20245bc
	ldr     r1, [pc, #0x4] @ 0x20305c8, (=#0x1624)
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x20305c6


.incbin "baserom/arm9.bin", 0x305c6, 0x20305c8 - 0x20305c6


.word 0x1624 @ 0x20305c8
.thumb
Function_20305cc: @ 20305cc :thumb
	push    {r4,lr}
	ldr     r3, [sp, #0x8]
	cmp     r1, #0x8
	bne     branch_20305f8
	ldrb    r1, [r3, #0x0]
	cmp     r1, #0x1
	bcc     branch_20305e6
	mov     r1, #0x1
	ldrb    r3, [r0, #0x0]
	lsl     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x20305e6

.thumb
branch_20305e6: @ 20305e6 :thumb
	mov     r1, #0x1
	mov     r3, r1
	ldrb    r4, [r0, #0x0]
	lsl     r3, r2
	mov     r1, #0xff
	eor     r1, r3
	and     r1, r4
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x20305f8

.thumb
branch_20305f8: @ 20305f8 :thumb
	bl      Function_2022974
	pop     {r4,pc}
@ 0x20305fe


.incbin "baserom/arm9.bin", 0x305fe, 0x203068c - 0x20305fe


.thumb
Function_203068c: @ 203068c :thumb
	ldr     r3, [pc, #0x4] @ 0x2030694, (=#0x20245bd)
	mov     r1, #0x17
	bx      r3
@ 0x2030692


.incbin "baserom/arm9.bin", 0x30692, 0x2030694 - 0x2030692


.word 0x20245bd @ 0x2030694
.thumb
Function_2030698: @ 2030698 :thumb
	push    {r3,lr}
	cmp     r1, #0x70
	bge     branch_20306c2
	cmp     r1, #0x64
	blt     branch_20306bc
	cmp     r2, #0x10
	blt     branch_20306aa
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r2, #0x10
.thumb
branch_20306aa: @ 20306aa :thumb
	lsl     r1, r1, #1
	ldrh    r0, [r0, r1]
	mov     r1, r0
	asr     r1, r2
	mov     r0, #0x1
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x20306bc

.thumb
branch_20306bc: @ 20306bc :thumb
	lsl     r1, r1, #1
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x20306c2

.thumb
branch_20306c2: @ 20306c2 :thumb
	mov     r3, #0x0
	mvn     r3, r3
	cmp     r2, r3
	bne     branch_20306d2
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20306d2

.thumb
branch_20306d2: @ 20306d2 :thumb
	lsl     r2, r2, #6
	sub     r1, #0x70
	add     r2, r0, r2
	lsl     r0, r1, #1
	add     r0, r2, r0
	add     r0, #0xe0
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20306e2


.incbin "baserom/arm9.bin", 0x306e2, 0x20306e4 - 0x20306e2


.thumb
Function_20306e4: @ 20306e4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x70] @ 0x203075c, (=#0x270f)
	mov     r7, r3
	mov     r5, r1
	mov     r4, r2
	cmp     r7, r0
	bls     branch_20306f6
	mov     r7, r0
.thumb
branch_20306f6: @ 20306f6 :thumb
	cmp     r5, #0x70
	bge     branch_2030742
	cmp     r5, #0x64
	blt     branch_2030734
	cmp     r4, #0xff
	bne     branch_2030706
	bl      Function_2022974
.thumb
branch_2030706: @ 2030706 :thumb
	cmp     r4, #0x10
	blt     branch_203070e
	.hword  0x1c6d @ add r5, r5, #0x1
	sub     r4, #0x10
.thumb
branch_203070e: @ 203070e :thumb
	cmp     r7, #0x0
	bne     branch_2030726
	mov     r2, #0x1
	mov     r3, r2
	lsl     r1, r5, #1
	ldrh    r0, [r6, r1]
	lsl     r3, r4
	ldr     r2, [pc, #0x40] @ 0x2030760, (=#0xffff)
	eor     r2, r3
	and     r0, r2
	strh    r0, [r6, r1]
	b       branch_2030758
@ 0x2030726

.thumb
branch_2030726: @ 2030726 :thumb
	lsl     r2, r5, #1
	mov     r0, #0x1
	ldrh    r1, [r6, r2]
	lsl     r0, r4
	orr     r0, r1
	strh    r0, [r6, r2]
	b       branch_2030758
@ 0x2030734

.thumb
branch_2030734: @ 2030734 :thumb
	cmp     r4, #0xff
	beq     branch_203073c
	bl      Function_2022974
.thumb
branch_203073c: @ 203073c :thumb
	lsl     r0, r5, #1
	strh    r7, [r6, r0]
	b       branch_2030758
@ 0x2030742

.thumb
branch_2030742: @ 2030742 :thumb
	cmp     r4, #0xff
	bne     branch_203074a
	bl      Function_2022974
.thumb
branch_203074a: @ 203074a :thumb
	lsl     r0, r4, #6
	sub     r5, #0x70
	add     r1, r6, r0
	lsl     r0, r5, #1
	add     r0, r1, r0
	add     r0, #0xe0
	strh    r7, [r0, #0x0]
.thumb
branch_2030758: @ 2030758 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x203075c

.word 0x270f @ 0x203075c
.word 0xffff @ 0x2030760

.incbin "baserom/arm9.bin", 0x30764, 0x20308a0 - 0x2030764


.thumb
Function_20308a0: @ 20308a0 :thumb
	ldr     r3, [pc, #0x0] @ 0x20308a4, (=#0x202448d)
	bx      r3
@ 0x20308a4

.word 0x202448d @ 0x20308a4

.incbin "baserom/arm9.bin", 0x308a8, 0x20308bc - 0x20308a8


.thumb
Function_20308bc: @ 20308bc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_20247c8
	cmp     r0, #0x0
	bne     branch_20308d0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20308d0

.thumb
branch_20308d0: @ 20308d0 :thumb
	cmp     r4, #0x0
	beq     branch_20308de
	cmp     r4, #0x1
	beq     branch_20308e6
	cmp     r4, #0x2
	beq     branch_20308f0
	b       branch_20308fc
@ 0x20308de

.thumb
branch_20308de: @ 20308de :thumb
	lsl     r0, r6, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x4]
	pop     {r4-r6,pc}
@ 0x20308e6

.thumb
branch_20308e6: @ 20308e6 :thumb
	lsl     r0, r6, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x18] @ 0x2030904, (=#0x3e2)
	ldrh    r0, [r1, r0]
	pop     {r4-r6,pc}
@ 0x20308f0

.thumb
branch_20308f0: @ 20308f0 :thumb
	lsl     r0, r6, #1
	add     r1, r5, r0
	mov     r0, #0x1f
	lsl     r0, r0, #6
	ldrh    r0, [r1, r0]
	pop     {r4-r6,pc}
@ 0x20308fc

.thumb
branch_20308fc: @ 20308fc :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2030904

.word 0x3e2 @ 0x2030904

.incbin "baserom/arm9.bin", 0x30908, 0x2030ee0 - 0x2030908


.thumb
Function_2030ee0: @ 2030ee0 :thumb
	ldr     r1, [pc, #0x8] @ 0x2030eec, (=#0x21c07a8)
	ldr     r2, [r1, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2030ef0, (=#0x1310)
	str     r0, [r2, r1]
	bx      lr
@ 0x2030eea


.incbin "baserom/arm9.bin", 0x30eea, 0x2030eec - 0x2030eea


.word 0x21c07a8 @ 0x2030eec
.word 0x1310 @ 0x2030ef0
.thumb
Function_2030ef4: @ 2030ef4 :thumb
	ldr     r1, [pc, #0x10] @ 0x2030f08, (=#0x21c07a8)
	ldr     r3, [r1, #0x4]
	ldr     r1, [pc, #0x10] @ 0x2030f0c, (=#0x1310)
	ldr     r2, [r3, r1]
	sub     r2, #0x9
	cmp     r2, #0x1
	bls     branch_2030f06
	add     r1, #0x20
	str     r0, [r3, r1]
.thumb
branch_2030f06: @ 2030f06 :thumb
	bx      lr
@ 0x2030f08

.word 0x21c07a8 @ 0x2030f08
.word 0x1310 @ 0x2030f0c

.incbin "baserom/arm9.bin", 0x30f10, 0x203171c - 0x2030f10


.thumb
Function_203171c: @ 203171c :thumb
	push    {r3,lr}
	mov     r0, #0x3
	bl      Function_2030ee0
	ldr     r0, [pc, #0x14] @ 0x203173c, (=#0x2031741)
	blx     Function_20cf77c
	cmp     r0, #0x2
	beq     branch_2031736
	bl      Function_2030ef4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2031736

.thumb
branch_2031736: @ 2031736 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203173a


.incbin "baserom/arm9.bin", 0x3173a, 0x203173c - 0x203173a


.word 0x2031741 @ 0x203173c

.incbin "baserom/arm9.bin", 0x31740, 0x20317a4 - 0x2031740


.thumb
Function_20317a4: @ 20317a4 :thumb
	push    {r3,lr}
	mov     r0, #0x3
	bl      Function_2030ee0
	ldr     r0, [pc, #0x14] @ 0x20317c4, (=#0x20317c9)
	blx     Function_20ced50
	cmp     r0, #0x2
	beq     branch_20317be
	bl      Function_2030ef4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20317be

.thumb
branch_20317be: @ 20317be :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20317c2


.incbin "baserom/arm9.bin", 0x317c2, 0x20317c4 - 0x20317c2


.word 0x20317c9 @ 0x20317c4

.incbin "baserom/arm9.bin", 0x317c8, 0x20317e8 - 0x20317c8


.thumb
Function_20317e8: @ 20317e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x2031830, (=#0x21c07a8)
	mov     r6, r1
	mov     r4, r2
	ldr     r1, [r0, #0x4]
	mov     r0, #0x3d
	lsl     r0, r0, #6
	ldr     r2, [pc, #0x38] @ 0x2031834, (=#0x1304)
	add     r0, r1, r0
	ldr     r1, [r1, r2]
	mov     r7, r3
	blx     Function_20c2c54
	ldr     r0, [pc, #0x30] @ 0x2031838, (=#0xffff)
	mov     r1, r7
	str     r0, [sp, #0x0]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x24] @ 0x203183c, (=#0x2031841)
	mov     r2, r5
	mov     r3, r6
	blx     Function_20cf64c
	cmp     r0, #0x2
	bne     branch_203182a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x203182a

.thumb
branch_203182a: @ 203182a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2031830

.word 0x21c07a8 @ 0x2031830
.word 0x1304 @ 0x2031834
.word 0xffff @ 0x2031838
.word 0x2031841 @ 0x203183c

.incbin "baserom/arm9.bin", 0x31840, 0x20318dc - 0x2031840


.thumb
Function_20318dc: @ 20318dc :thumb
	ldr     r2, [pc, #0x8] @ 0x20318e8, (=#0x21c07a8)
	ldr     r3, [r2, #0x4]
	str     r0, [r3, #0x0]
	ldr     r0, [r2, #0x4]
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x20318e8

.word 0x21c07a8 @ 0x20318e8
.thumb
Function_20318ec: @ 20318ec :thumb
	ldr     r0, [pc, #0x8] @ 0x20318f8, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x8] @ 0x20318fc, (=#0x132e)
	ldrh    r0, [r1, r0]
	bx      lr
@ 0x20318f6


.incbin "baserom/arm9.bin", 0x318f6, 0x20318f8 - 0x20318f6


.word 0x21c07a8 @ 0x20318f8
.word 0x132e @ 0x20318fc

.incbin "baserom/arm9.bin", 0x31900, 0x2031934 - 0x2031900


.thumb
Function_2031934: @ 2031934 :thumb
	ldr     r0, [pc, #0x8] @ 0x2031940, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x8] @ 0x2031944, (=#0x1310)
	ldr     r0, [r1, r0]
	bx      lr
@ 0x203193e


.incbin "baserom/arm9.bin", 0x3193e, 0x2031940 - 0x203193e


.word 0x21c07a8 @ 0x2031940
.word 0x1310 @ 0x2031944
.thumb
Function_2031948: @ 2031948 :thumb
	ldr     r0, [pc, #0x8] @ 0x2031954, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x8] @ 0x2031958, (=#0x1330)
	ldr     r0, [r1, r0]
	bx      lr
@ 0x2031952


.incbin "baserom/arm9.bin", 0x31952, 0x2031954 - 0x2031952


.word 0x21c07a8 @ 0x2031954
.word 0x1330 @ 0x2031958

.incbin "baserom/arm9.bin", 0x3195c, 0x2031e9c - 0x203195c


.thumb
Function_2031e9c: @ 2031e9c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2031f90
	cmp     r0, #0x0
	bne     branch_2031ebc
	bl      Function_20318ec
	mov     r1, #0xfe
	tst     r0, r1
	bne     branch_2031ebc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2031ebc

.thumb
branch_2031ebc: @ 2031ebc :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_20317e8
	pop     {r3-r7,pc}
@ 0x2031eca


.incbin "baserom/arm9.bin", 0x31eca, 0x2031ecc - 0x2031eca


.thumb
Function_2031ecc: @ 2031ecc :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x2031eec, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2031ef0, (=#0x1310)
	ldr     r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_2031edc
.thumb
branch_2031eda: @ 2031eda :thumb
	b       branch_2031eda
@ 0x2031edc

.thumb
branch_2031edc: @ 2031edc :thumb
	bl      Function_20317a4
	cmp     r0, #0x0
	bne     branch_2031eea
	mov     r0, #0xa
	bl      Function_2030ee0
.thumb
branch_2031eea: @ 2031eea :thumb
	pop     {r3,pc}
@ 0x2031eec

.word 0x21c07a8 @ 0x2031eec
.word 0x1310 @ 0x2031ef0
.thumb
Function_2031ef4: @ 2031ef4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x68] @ 0x2031f60, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2031f64, (=#0x1310)
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	beq     branch_2031f5e
	cmp     r0, #0x6
	beq     branch_2031f1a
	cmp     r0, #0x5
	beq     branch_2031f1a
	cmp     r0, #0x4
	beq     branch_2031f1a
	mov     r0, #0x3
	bl      Function_2030ee0
	bl      Function_2031ecc
	pop     {r3,pc}
@ 0x2031f1a

.thumb
branch_2031f1a: @ 2031f1a :thumb
	mov     r0, #0x3
	bl      Function_2030ee0
	ldr     r0, [pc, #0x3c] @ 0x2031f60, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2031f68, (=#0x1314)
	ldr     r0, [r1, r0]
	cmp     r0, #0x5
	bhi     branch_2031f5e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r3, #0
	lsl     r2, r1, #0
	lsl     r4, r4, #0
	lsl     r4, r4, #0
	lsl     r0, r3, #0
	lsl     r2, r1, #0
	bl      Function_203171c
	cmp     r0, #0x0
	bne     branch_2031f5e
	bl      Function_2031ecc
	pop     {r3,pc}
@ 0x2031f52


.incbin "baserom/arm9.bin", 0x31f52, 0x2031f5e - 0x2031f52


.thumb
branch_2031f5e: @ 2031f5e :thumb
	pop     {r3,pc}
@ 0x2031f60

.word 0x21c07a8 @ 0x2031f60
.word 0x1310 @ 0x2031f64
.word 0x1314 @ 0x2031f68

.incbin "baserom/arm9.bin", 0x31f6c, 0x2031f90 - 0x2031f6c


.thumb
Function_2031f90: @ 2031f90 :thumb
	ldr     r0, [pc, #0x8] @ 0x2031f9c, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x8] @ 0x2031fa0, (=#0x132c)
	ldrh    r0, [r1, r0]
	bx      lr
@ 0x2031f9a


.incbin "baserom/arm9.bin", 0x31f9a, 0x2031f9c - 0x2031f9a


.word 0x21c07a8 @ 0x2031f9c
.word 0x132c @ 0x2031fa0
.thumb
Function_2031fa4: @ 2031fa4 :thumb
	ldr     r1, [pc, #0xc] @ 0x2031fb4, (=#0x21c07a8)
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_2031fb0
	ldr     r1, [pc, #0x8] @ 0x2031fb8, (=#0x1334)
	strb    r0, [r2, r1]
.thumb
branch_2031fb0: @ 2031fb0 :thumb
	bx      lr
@ 0x2031fb2


.incbin "baserom/arm9.bin", 0x31fb2, 0x2031fb4 - 0x2031fb2


.word 0x21c07a8 @ 0x2031fb4
.word 0x1334 @ 0x2031fb8

.incbin "baserom/arm9.bin", 0x31fbc, 0x2032034 - 0x2031fbc


.thumb
Function_2032034: @ 2032034 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x2032068, (=#0x21c07a8)
	mov     r5, r1
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x28] @ 0x203206c, (=#0x1310)
	mov     r4, r2
	ldr     r0, [r1, r0]
	cmp     r0, #0x4
	bne     branch_2032062
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r2, r5, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, r6
	lsr     r2, r2, #16
	mov     r3, r4
	blx     Function_20d065c
.thumb
branch_2032062: @ 2032062 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2032066


.incbin "baserom/arm9.bin", 0x32066, 0x2032068 - 0x2032066


.word 0x21c07a8 @ 0x2032068
.word 0x1310 @ 0x203206c

.incbin "baserom/arm9.bin", 0x32070, 0x2032138 - 0x2032070


.thumb
Function_2032138: @ 2032138 :thumb
	ldr     r1, [pc, #0x8] @ 0x2032144, (=#0x21c07a8)
	ldr     r2, [r1, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2032148, (=#0x1342)
	strb    r0, [r2, r1]
	bx      lr
@ 0x2032142


.incbin "baserom/arm9.bin", 0x32142, 0x2032144 - 0x2032142


.word 0x21c07a8 @ 0x2032144
.word 0x1342 @ 0x2032148
.thumb
Function_203214c: @ 203214c :thumb
	ldr     r0, [pc, #0x8] @ 0x2032158, (=#0x21c07a8)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x8] @ 0x203215c, (=#0x1342)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x2032156


.incbin "baserom/arm9.bin", 0x32156, 0x2032158 - 0x2032156


.word 0x21c07a8 @ 0x2032158
.word 0x1342 @ 0x203215c
.thumb
Function_2032160: @ 2032160 :thumb
	ldr     r1, [pc, #0x8] @ 0x203216c, (=#0x21c07a8)
	ldr     r2, [r1, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2032170, (=#0x1343)
	strb    r0, [r2, r1]
	bx      lr
@ 0x203216a


.incbin "baserom/arm9.bin", 0x3216a, 0x203216c - 0x203216a


.word 0x21c07a8 @ 0x203216c
.word 0x1343 @ 0x2032170

.incbin "baserom/arm9.bin", 0x32174, 0x2032188 - 0x2032174


.thumb
Function_2032188: @ 2032188 :thumb
	str     r1, [r0, #0x0]
	strh    r2, [r0, #0xa]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	strh    r1, [r0, #0x8]
	bx      lr
@ 0x2032196


.incbin "baserom/arm9.bin", 0x32196, 0x2032198 - 0x2032196


.thumb
Function_2032198: @ 2032198 :thumb
	push    {r3-r7,lr}
	str     r2, [sp, #0x0]
	mov     r5, r0
	mov     r7, r1
	bl      Function_203229c
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	bgt     branch_20321b0
	bl      Function_20363bc
	pop     {r3-r7,pc}
@ 0x20321b0

.thumb
branch_20321b0: @ 20321b0 :thumb
	mov     r0, #0x8
	ldsh    r4, [r5, r0]
	ldsh    r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r0, r1, r0
	cmp     r4, r0
	bge     branch_20321e6
.thumb
branch_20321c0: @ 20321c0 :thumb
	cmp     r7, #0x0
	bne     branch_20321c8
	bl      Function_2022974
.thumb
branch_20321c8: @ 20321c8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20322bc
	ldrb    r2, [r7, r6]
	ldr     r1, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r2, [r1, r0]
	mov     r0, #0x8
	ldsh    r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, r1, r0
	cmp     r4, r0
	blt     branch_20321c0
.thumb
branch_20321e6: @ 20321e6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20322bc
	strh    r0, [r5, #0x8]
	pop     {r3-r7,pc}
@ 0x20321f2


.incbin "baserom/arm9.bin", 0x321f2, 0x20321f4 - 0x20321f2


.thumb
Function_20321f4: @ 20321f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2032220
	mov     r1, #0x4
	mov     r4, r0
	ldsh    r1, [r5, r1]
	mov     r0, r5
	add     r1, r1, r4
	bl      Function_20322bc
	strh    r0, [r5, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2032210

.thumb
Function_2032210: @ 2032210 :thumb
	push    {r3,lr}
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20321f4
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2032220

.thumb
Function_2032220: @ 2032220 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x4
	ldsh    r4, [r5, r0]
	mov     r7, r2
	str     r1, [sp, #0x0]
	add     r0, r4, r7
	mov     r6, #0x0
	cmp     r4, r0
	bge     branch_2032266
.thumb
branch_2032234: @ 2032234 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20322bc
	mov     r1, #0x6
	ldsh    r1, [r5, r1]
	cmp     r1, r0
	bne     branch_2032248
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2032248

.thumb
branch_2032248: @ 2032248 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20322bc
	ldr     r1, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x0]
	strb    r1, [r0, r6]
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, r0, r7
	cmp     r4, r0
	blt     branch_2032234
.thumb
branch_2032266: @ 2032266 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x203226a


.incbin "baserom/arm9.bin", 0x3226a, 0x203226c - 0x203226a


.thumb
Function_203226c: @ 203226c :thumb
	mov     r1, #0x4
	mov     r3, #0x6
	ldsh    r1, [r0, r1]
	ldsh    r2, [r0, r3]
	cmp     r1, r2
	ble     branch_2032284
	mov     r2, #0xa
	ldsh    r2, [r0, r2]
	ldsh    r0, [r0, r3]
	add     r0, r2, r0
	sub     r0, r0, r1
	bx      lr
@ 0x2032284

.thumb
branch_2032284: @ 2032284 :thumb
	ldsh    r0, [r0, r3]
	sub     r0, r0, r1
	bx      lr
@ 0x203228a


.incbin "baserom/arm9.bin", 0x3228a, 0x203228c - 0x203228a


.thumb
Function_203228c: @ 203228c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203226c
	mov     r1, #0xa
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	pop     {r4,pc}
@ 0x203229c

.thumb
Function_203229c: @ 203229c :thumb
	mov     r1, #0x4
	mov     r2, #0x8
	ldsh    r3, [r0, r1]
	ldsh    r1, [r0, r2]
	cmp     r3, r1
	ble     branch_20322ae
	ldsh    r0, [r0, r2]
	sub     r0, r3, r0
	bx      lr
@ 0x20322ae

.thumb
branch_20322ae: @ 20322ae :thumb
	mov     r1, #0xa
	ldsh    r1, [r0, r1]
	ldsh    r0, [r0, r2]
	sub     r0, r0, r3
	sub     r0, r1, r0
	bx      lr
@ 0x20322ba


.incbin "baserom/arm9.bin", 0x322ba, 0x20322bc - 0x20322ba


.thumb
Function_20322bc: @ 20322bc :thumb
	push    {r3,lr}
	mov     r2, r0
	mov     r0, r1
	mov     r1, #0xa
	ldsh    r1, [r2, r1]
	blx     Division
	mov     r0, r1
	pop     {r3,pc}
@ 0x20322ce


.incbin "baserom/arm9.bin", 0x322ce, 0x20322d0 - 0x20322ce


.thumb
Function_20322d0: @ 20322d0 :thumb
	mov     r1, #0x8
	ldsh    r1, [r0, r1]
	strh    r1, [r0, #0x6]
	bx      lr
@ 0x20322d8

.thumb
Function_20322d8: @ 20322d8 :thumb
	ldr     r3, [r0, #0x1c]
	mov     r2, #0x0
	ldr     r1, [r0, #0x18]
	cmp     r3, #0x0
	ble     branch_20322f4
.thumb
branch_20322e2: @ 20322e2 :thumb
	ldrb    r0, [r1, #0xe]
	cmp     r0, #0x0
	bne     branch_20322ec
	mov     r0, r1
	bx      lr
@ 0x20322ec

.thumb
branch_20322ec: @ 20322ec :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x10
	cmp     r2, r3
	blt     branch_20322e2
.thumb
branch_20322f4: @ 20322f4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20322f8

.thumb
Function_20322f8: @ 20322f8 :thumb
	ldr     r3, [r0, #0x1c]
	mov     r2, #0x0
	ldr     r1, [r0, #0x18]
	cmp     r3, #0x0
	ble     branch_2032314
.thumb
branch_2032302: @ 2032302 :thumb
	ldrb    r0, [r1, #0xe]
	cmp     r0, #0x0
	beq     branch_203230c
	mov     r0, #0x0
	bx      lr
@ 0x203230c

.thumb
branch_203230c: @ 203230c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x10
	cmp     r2, r3
	blt     branch_2032302
.thumb
branch_2032314: @ 2032314 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2032318

.thumb
Function_2032318: @ 2032318 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2032336
	ldr     r1, [r1, #0x8]
	cmp     r1, #0x0
	beq     branch_203232c
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	b       branch_2032332
@ 0x203232c

.thumb
branch_203232c: @ 203232c :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
.thumb
branch_2032332: @ 2032332 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2032336

.thumb
branch_2032336: @ 2032336 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203233a


.incbin "baserom/arm9.bin", 0x3233a, 0x203233c - 0x203233a


.thumb
Function_203233c: @ 203233c :thumb
	ldr     r2, [r0, #0x0]
	strb    r1, [r2, #0x0]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	ldr     r1, [r0, #0x4]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	bne     branch_2032352
	mov     r0, #0x1
	bx      lr
@ 0x2032352

.thumb
branch_2032352: @ 2032352 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032356


.incbin "baserom/arm9.bin", 0x32356, 0x2032358 - 0x2032356


.thumb
Function_2032358: @ 2032358 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0xe]
	mov     r4, r1
	bl      Function_2032868
	mov     r6, r0
	ldr     r0, [pc, #0x64] @ 0x20323cc, (=#0xffff)
	cmp     r6, r0
	ldr     r0, [r4, #0x4]
	bne     branch_203237e
	cmp     r0, #0x3
	bge     branch_203238e
	ldrb    r1, [r5, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r5, #0xf]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203237e

.thumb
branch_203237e: @ 203237e :thumb
	cmp     r0, #0x1
	bge     branch_203238e
	ldrb    r1, [r5, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r5, #0xf]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203238e

.thumb
branch_203238e: @ 203238e :thumb
	ldrb    r1, [r5, #0xe]
	mov     r0, r4
	bl      Function_203233c
	ldr     r0, [pc, #0x34] @ 0x20323cc, (=#0xffff)
	cmp     r6, r0
	bne     branch_20323b8
	ldrh    r1, [r5, #0xc]
	mov     r0, r4
	asr     r1, r1, #8
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_203233c
	ldrh    r1, [r5, #0xc]
	mov     r0, r4
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_203233c
	b       branch_20323ba
@ 0x20323b8

.thumb
branch_20323b8: @ 20323b8 :thumb
	strh    r6, [r5, #0xc]
.thumb
branch_20323ba: @ 20323ba :thumb
	ldrb    r1, [r5, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r5, #0xf]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20323ca


.incbin "baserom/arm9.bin", 0x323ca, 0x20323cc - 0x20323ca


.word 0xffff @ 0x20323cc
.thumb
Function_20323d0: @ 20323d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0xe]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2032868
	ldr     r1, [pc, #0xb0] @ 0x2032494, (=#0xffff)
	cmp     r0, r1
	bne     branch_20323ea
	mov     r2, #0x3
	b       branch_20323ec
@ 0x20323ea

.thumb
branch_20323ea: @ 20323ea :thumb
	mov     r2, #0x1
.thumb
branch_20323ec: @ 20323ec :thumb
	ldrh    r0, [r5, #0xc]
	ldr     r1, [r4, #0x4]
	add     r0, r0, r2
	cmp     r1, r0
	bge     branch_20323fe
	cmp     r7, #0x0
	bne     branch_20323fe
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20323fe

.thumb
branch_20323fe: @ 20323fe :thumb
	ldrb    r0, [r5, #0xf]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	beq     branch_2032418
	mov     r0, r5
	mov     r1, r4
	bl      Function_2032358
	cmp     r0, #0x0
	beq     branch_2032418
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2032418

.thumb
branch_2032418: @ 2032418 :thumb
	ldrh    r3, [r5, #0xc]
	ldr     r2, [r4, #0x4]
	cmp     r2, r3
	ldrb    r0, [r5, #0xf]
	bge     branch_2032462
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_2032432
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	bl      Function_20321f4
	b       branch_2032448
@ 0x2032432

.thumb
branch_2032432: @ 2032432 :thumb
	mov     r3, #0x0
	cmp     r2, #0x0
	ble     branch_2032448
.thumb
branch_2032438: @ 2032438 :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r1, [r0, r3]
	ldr     r0, [r4, #0x0]
	strb    r1, [r0, r3]
	ldr     r0, [r4, #0x4]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, r0
	blt     branch_2032438
.thumb
branch_2032448: @ 2032448 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldrh    r1, [r5, #0xc]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	strh    r0, [r5, #0xc]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2032462

.thumb
branch_2032462: @ 2032462 :thumb
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_2032474
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	mov     r2, r3
	bl      Function_20321f4
	b       branch_203247e
@ 0x2032474

.thumb
branch_2032474: @ 2032474 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r2, r3
	blx     Function_20c4db0
.thumb
branch_203247e: @ 203247e :thumb
	ldrh    r0, [r5, #0xc]
	ldr     r1, [r4, #0x0]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0xc]
	ldr     r1, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2032492


.incbin "baserom/arm9.bin", 0x32492, 0x2032494 - 0x2032492


.word 0xffff @ 0x2032494
.thumb
Function_2032498: @ 2032498 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r7, r3
	bl      Function_20322d8
	mov     r4, r0
	bne     branch_20324b2
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20324b2

.thumb
branch_20324b2: @ 20324b2 :thumb
	ldr     r0, [pc, #0x70] @ 0x2032524, (=#0xfffe)
	cmp     r7, r0
	blt     branch_20324bc
	bl      Function_2022974
.thumb
branch_20324bc: @ 20324bc :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2032868
	mov     r6, r0
	ldr     r0, [pc, #0x60] @ 0x2032528, (=#0xffff)
	cmp     r6, r0
	bne     branch_20324cc
	mov     r6, r7
.thumb
branch_20324cc: @ 20324cc :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_20324fe
	ldr     r0, [r5, #0x14]
	bl      Function_203228c
	add     r1, r6, #0x3
	cmp     r1, r0
	blt     branch_20324e4
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20324e4

.thumb
branch_20324e4: @ 20324e4 :thumb
	ldr     r0, [r5, #0x14]
	ldr     r1, [sp, #0x4]
	ldr     r3, [pc, #0x40] @ 0x203252c, (=#0x109)
	mov     r2, r6
	bl      Function_2032198
	ldr     r0, [r5, #0x14]
	bl      Function_20322d0
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0xf]
.thumb
branch_20324fe: @ 20324fe :thumb
	ldr     r0, [sp, #0x0]
	strh    r6, [r4, #0xc]
	strb    r0, [r4, #0xe]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_2032514
	str     r4, [r5, #0x4]
	str     r4, [r5, #0x0]
	b       branch_203251c
@ 0x2032514

.thumb
branch_2032514: @ 2032514 :thumb
	str     r4, [r0, #0x8]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x4]
	str     r4, [r5, #0x4]
.thumb
branch_203251c: @ 203251c :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2032522


.incbin "baserom/arm9.bin", 0x32522, 0x2032524 - 0x2032522


.word 0xfffe @ 0x2032524
.word 0xffff @ 0x2032528
.word 0x109 @ 0x203252c
.thumb
Function_2032530: @ 2032530 :thumb
	ldr     r1, [r0, #0x10]
	cmp     r1, #0x0
	beq     branch_203253a
	mov     r0, r1
	bx      lr
@ 0x203253a

.thumb
branch_203253a: @ 203253a :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2032544
	mov     r0, r1
	bx      lr
@ 0x2032544

.thumb
branch_2032544: @ 2032544 :thumb
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_203254c
	mov     r0, #0x0
.thumb
branch_203254c: @ 203254c :thumb
	bx      lr
@ 0x203254e


.incbin "baserom/arm9.bin", 0x3254e, 0x2032550 - 0x203254e


.thumb
Function_2032550: @ 2032550 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_2032560
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x2032560

.thumb
branch_2032560: @ 2032560 :thumb
	bl      Function_2032318
	cmp     r0, #0x0
	bne     branch_2032570
	add     r4, #0x8
	mov     r0, r4
	bl      Function_2032318
.thumb
branch_2032570: @ 2032570 :thumb
	pop     {r4,pc}
@ 0x2032572


.incbin "baserom/arm9.bin", 0x32572, 0x2032574 - 0x2032572


.thumb
Function_2032574: @ 2032574 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r7, #0x1
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_20325ca
.thumb
branch_2032584: @ 2032584 :thumb
	mov     r0, r5
	bl      Function_2032530
	mov     r6, r0
	beq     branch_20325ca
	mov     r0, r5
	bl      Function_2032550
	ldr     r2, [r5, #0x14]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r7
	bl      Function_20323d0
	cmp     r0, #0x0
	bne     branch_20325a8
	str     r6, [r5, #0x10]
	b       branch_20325ca
@ 0x20325a8

.thumb
branch_20325a8: @ 20325a8 :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x4]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_20325b8
	str     r6, [r5, #0x10]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20325b8

.thumb
branch_20325b8: @ 20325b8 :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x10
	blx     Function_20c4cf4
	ldr     r0, [r4, #0x4]
	ldr     r7, [sp, #0x0]
	cmp     r0, #0x0
	bgt     branch_2032584
.thumb
branch_20325ca: @ 20325ca :thumb
	ldr     r0, [r4, #0x4]
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_20325e6
	mov     r1, #0xee
.thumb
branch_20325d4: @ 20325d4 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	cmp     r2, r0
	blt     branch_20325d4
.thumb
branch_20325e6: @ 20325e6 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20325ea


.incbin "baserom/arm9.bin", 0x325ea, 0x2032638 - 0x20325ea


.thumb
Function_2032638: @ 2032638 :thumb
	ldr     r3, [pc, #0x4] @ 0x2032640, (=#0x20181c5)
	ldr     r0, [r0, #0x18]
	bx      r3
@ 0x203263e


.incbin "baserom/arm9.bin", 0x3263e, 0x2032640 - 0x203263e


.word 0x20181c5 @ 0x2032640

.incbin "baserom/arm9.bin", 0x32644, 0x203266c - 0x2032644


.thumb
Function_203266c: @ 203266c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r3, [pc, #0x20] @ 0x2032694, (=#0x20e5d18)
	mov     r4, r0
	add     r2, sp, #0x0
	mov     r1, #0x25
.thumb
branch_2032678: @ 2032678 :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2032678
	cmp     r4, #0x25
	bcc     branch_203268c
	bl      Function_2022974
.thumb
branch_203268c: @ 203268c :thumb
	add     r0, sp, #0x0
	ldrb    r0, [r0, r4]
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2032694

.word 0x20e5d18 @ 0x2032694

.incbin "baserom/arm9.bin", 0x32698, 0x20326c4 - 0x2032698


.thumb
Function_20326c4: @ 20326c4 :thumb
	cmp     r0, #0x12
	bgt     branch_20326de
	bge     branch_20326e2
	cmp     r0, #0xd
	bgt     branch_20326e6
	cmp     r0, #0x7
	blt     branch_20326e6
	beq     branch_20326e2
	cmp     r0, #0x9
	beq     branch_20326e2
	cmp     r0, #0xd
	beq     branch_20326e2
	b       branch_20326e6
@ 0x20326de

.thumb
branch_20326de: @ 20326de :thumb
	cmp     r0, #0x1a
	bne     branch_20326e6
.thumb
branch_20326e2: @ 20326e2 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x20326e6

.thumb
branch_20326e6: @ 20326e6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20326ea


.incbin "baserom/arm9.bin", 0x326ea, 0x20326ec - 0x20326ea


.thumb
Function_20326ec: @ 20326ec :thumb
	sub     r0, #0x13
	cmp     r0, #0x11
	bhi     branch_2032726
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r4, #0
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r6, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	lsl     r2, r4, #0
	mov     r0, #0x1
	bx      lr
@ 0x2032726

.thumb
branch_2032726: @ 2032726 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203272a


.incbin "baserom/arm9.bin", 0x3272a, 0x203272c - 0x203272a


.thumb
Function_203272c: @ 203272c :thumb
	cmp     r0, #0x1d
	beq     branch_2032738
	cmp     r0, #0x21
	beq     branch_2032738
	cmp     r0, #0x23
	bne     branch_203273c
.thumb
branch_2032738: @ 2032738 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x203273c

.thumb
branch_203273c: @ 203273c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032740


.incbin "baserom/arm9.bin", 0x32740, 0x2032798 - 0x2032740


.thumb
Function_2032798: @ 2032798 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x20327dc, (=#0x21c07b0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	cmp     r0, #0x0
	bne     branch_20327b4
	mov     r0, #0xf
	mov     r1, #0x18
	bl      Function_2018144
	ldr     r1, [pc, #0x28] @ 0x20327dc, (=#0x21c07b0)
	str     r0, [r1, #0x0]
.thumb
branch_20327b4: @ 20327b4 :thumb
	ldr     r0, [pc, #0x24] @ 0x20327dc, (=#0x21c07b0)
	mov     r3, #0x0
	ldr     r1, [r0, #0x0]
	mov     r2, r3
	str     r5, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	str     r4, [r1, #0x4]
	ldr     r1, [r0, #0x0]
	str     r6, [r1, #0x8]
.thumb
branch_20327c6: @ 20327c6 :thumb
	ldr     r1, [r0, #0x0]
	add     r1, r1, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r1, #0xc]
	cmp     r3, #0x8
	blt     branch_20327c6
	ldr     r0, [pc, #0x8] @ 0x20327dc, (=#0x21c07b0)
	ldr     r0, [r0, #0x0]
	strb    r2, [r0, #0x14]
	pop     {r4-r6,pc}
@ 0x20327da


.incbin "baserom/arm9.bin", 0x327da, 0x20327dc - 0x20327da


.word 0x21c07b0 @ 0x20327dc

.incbin "baserom/arm9.bin", 0x327e0, 0x20327fc - 0x20327e0


.thumb
Function_20327fc: @ 20327fc :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x16
	bge     branch_2032814
	mov     r0, #0xc
	mul     r1, r0
	ldr     r0, [pc, #0x50] @ 0x2032860, (=#0x20e5d64)
	ldr     r4, [r0, r1]
	b       branch_203283c
@ 0x2032814

.thumb
branch_2032814: @ 2032814 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2032864, (=#0x21c07b0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2032820
	bl      Function_2022974
.thumb
branch_2032820: @ 2032820 :thumb
	ldr     r0, [pc, #0x40] @ 0x2032864, (=#0x21c07b0)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x4]
	add     r0, #0x16
	cmp     r4, r0
	ble     branch_2032832
	bl      Function_20363bc
	pop     {r3-r7,pc}
@ 0x2032832

.thumb
branch_2032832: @ 2032832 :thumb
	ldr     r1, [r1, #0x0]
	sub     r4, #0x16
	mov     r0, #0xc
	mul     r0, r4
	ldr     r4, [r1, r0]
.thumb
branch_203283c: @ 203283c :thumb
	cmp     r4, #0x0
	beq     branch_203285e
	ldr     r0, [pc, #0x20] @ 0x2032864, (=#0x21c07b0)
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_2032854
	ldr     r3, [r3, #0x8]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	blx     r4
	pop     {r3-r7,pc}
@ 0x2032854

.thumb
branch_2032854: @ 2032854 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x0
	blx     r4
.thumb
branch_203285e: @ 203285e :thumb
	pop     {r3-r7,pc}
@ 0x2032860

.word 0x20e5d64 @ 0x2032860
.word 0x21c07b0 @ 0x2032864
.thumb
Function_2032868: @ 2032868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	cmp     r5, #0x16
	bge     branch_203287e
	mov     r0, #0xc
	mov     r1, r5
	mul     r1, r0
	ldr     r0, [pc, #0x4c] @ 0x20328c8, (=#0x20e5d68)
	ldr     r0, [r0, r1]
	b       branch_20328ba
@ 0x203287e

.thumb
branch_203287e: @ 203287e :thumb
	ldr     r0, [pc, #0x4c] @ 0x20328cc, (=#0x21c07b0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203288a
	bl      Function_2022974
.thumb
branch_203288a: @ 203288a :thumb
	ldr     r0, [pc, #0x40] @ 0x20328cc, (=#0x21c07b0)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_203289a
	bl      Function_20363bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203289a

.thumb
branch_203289a: @ 203289a :thumb
	ldr     r0, [r1, #0x4]
	add     r0, #0x16
	cmp     r5, r0
	ble     branch_20328ae
	bl      Function_2022974
	bl      Function_20363bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20328ae

.thumb
branch_20328ae: @ 20328ae :thumb
	ldr     r1, [r1, #0x0]
	sub     r5, #0x16
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
.thumb
branch_20328ba: @ 20328ba :thumb
	cmp     r0, #0x0
	beq     branch_20328c2
	blx     r0
	mov     r4, r0
.thumb
branch_20328c2: @ 20328c2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20328c6


.incbin "baserom/arm9.bin", 0x328c6, 0x20328c8 - 0x20328c6


.word 0x20e5d68 @ 0x20328c8
.word 0x21c07b0 @ 0x20328cc
.thumb
Function_20328d0: @ 20328d0 :thumb
	cmp     r0, #0x16
	bge     branch_20328e8
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [pc, #0x28] @ 0x2032904, (=#0x20e5d6c)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_20328e4
	mov     r0, #0x1
	bx      lr
@ 0x20328e4

.thumb
branch_20328e4: @ 20328e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20328e8

.thumb
branch_20328e8: @ 20328e8 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2032908, (=#0x21c07b0)
	sub     r0, #0x16
	ldr     r1, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r0
	add     r0, r2, r1
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2032900
	mov     r0, #0x1
	bx      lr
@ 0x2032900

.thumb
branch_2032900: @ 2032900 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032904

.word 0x20e5d6c @ 0x2032904
.word 0x21c07b0 @ 0x2032908
.thumb
Function_203290c: @ 203290c :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	cmp     r3, #0x16
	bge     branch_2032924
	mov     r4, #0xc
	mul     r4, r3
	ldr     r3, [pc, #0x20] @ 0x203293c, (=#0x20e5d6c)
	mov     r0, r1
	ldr     r3, [r3, r4]
	mov     r1, #0x0
	blx     r3
	pop     {r3-r5,pc}
@ 0x2032924

.thumb
branch_2032924: @ 2032924 :thumb
	ldr     r0, [pc, #0x18] @ 0x2032940, (=#0x21c07b0)
	sub     r3, #0x16
	ldr     r4, [r0, #0x0]
	mov     r0, r1
	ldr     r1, [r4, #0x8]
	ldr     r5, [r4, #0x0]
	mov     r4, #0xc
	mul     r4, r3
	add     r3, r5, r4
	ldr     r3, [r3, #0x8]
	blx     r3
	pop     {r3-r5,pc}
@ 0x203293c

.word 0x20e5d6c @ 0x203293c
.word 0x21c07b0 @ 0x2032940

.incbin "baserom/arm9.bin", 0x32944, 0x2032a70 - 0x2032944


.thumb
Function_2032a70: @ 2032a70 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x34] @ 0x2032aa8, (=#0x21c07b4)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_2032aa4
	mov     r4, #0x0
	mov     r0, #0xd3
	mov     r5, r4
	mov     r3, r4
	lsl     r0, r0, #2
.thumb
branch_2032a84: @ 2032a84 :thumb
	ldr     r2, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r2, r2, r5
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r3, [r2, r0]
	cmp     r4, #0x8
	blt     branch_2032a84
	ldr     r0, [pc, #0x14] @ 0x2032aa8, (=#0x21c07b4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2032a9e
	bl      Function_20181c4
.thumb
branch_2032a9e: @ 2032a9e :thumb
	ldr     r0, [pc, #0x8] @ 0x2032aa8, (=#0x21c07b4)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_2032aa4: @ 2032aa4 :thumb
	pop     {r3-r5,pc}
@ 0x2032aa6


.incbin "baserom/arm9.bin", 0x32aa6, 0x2032aa8 - 0x2032aa6


.word 0x21c07b4 @ 0x2032aa8

.incbin "baserom/arm9.bin", 0x32aac, 0x2032d98 - 0x2032aac


.thumb
Function_2032d98: @ 2032d98 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2032dc0, (=#0x21c07b4)
	ldr     r1, [r0, #0x0]
	lsl     r0, r4, #2
	add     r1, r1, r0
	mov     r0, #0xd3
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_2025e8c
	ldr     r0, [pc, #0x10] @ 0x2032dc0, (=#0x21c07b4)
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	mov     r0, #0xe7
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
	pop     {r4,pc}
@ 0x2032dbe


.incbin "baserom/arm9.bin", 0x32dbe, 0x2032dc0 - 0x2032dbe


.word 0x21c07b4 @ 0x2032dc0

.incbin "baserom/arm9.bin", 0x32dc4, 0x2032e90 - 0x2032dc4


.thumb
Function_2032e90: @ 2032e90 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x50] @ 0x2032ee4, (=#0x21c07b4)
	mov     r5, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2032ee0
	bl      Function_2035e18
	cmp     r0, #0x0
	bne     branch_2032ea8
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2032ea8

.thumb
branch_2032ea8: @ 2032ea8 :thumb
	mov     r7, #0xe7
	ldr     r6, [pc, #0x38] @ 0x2032ee4, (=#0x21c07b4)
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_2032eb0: @ 2032eb0 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2032eda
	cmp     r4, #0x0
	bne     branch_2032ec8
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2032eda
.thumb
branch_2032ec8: @ 2032ec8 :thumb
	ldr     r0, [r6, #0x0]
	add     r0, r0, r4
	ldrb    r0, [r0, r7]
	cmp     r0, #0x0
	beq     branch_2032eda
	mov     r0, r4
	bl      Function_2032d98
	mov     r5, #0x1
.thumb
branch_2032eda: @ 2032eda :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_2032eb0
.thumb
branch_2032ee0: @ 2032ee0 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2032ee4

.word 0x21c07b4 @ 0x2032ee4
.thumb
Function_2032ee8: @ 2032ee8 :thumb
	ldr     r1, [pc, #0x2c] @ 0x2032f18, (=#0x21c07b4)
	ldr     r3, [r1, #0x0]
	cmp     r3, #0x0
	bne     branch_2032ef4
	mov     r0, #0x0
	bx      lr
@ 0x2032ef4

.thumb
branch_2032ef4: @ 2032ef4 :thumb
	mov     r1, #0xe7
	add     r2, r3, r0
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	cmp     r1, #0x1
	beq     branch_2032f08
	cmp     r1, #0x2
	beq     branch_2032f08
	cmp     r1, #0x3
	bne     branch_2032f14
.thumb
branch_2032f08: @ 2032f08 :thumb
	lsl     r0, r0, #2
	add     r1, r3, r0
	mov     r0, #0xd3
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bx      lr
@ 0x2032f14

.thumb
branch_2032f14: @ 2032f14 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032f18

.word 0x21c07b4 @ 0x2032f18

.incbin "baserom/arm9.bin", 0x32f1c, 0x2032f78 - 0x2032f1c


.thumb
Function_2032f78: @ 2032f78 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2032f98, (=#0x21c07b4)
	ldr     r3, [r1, #0x0]
	mov     r1, #0xe7
	add     r2, r3, r0
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2032f94
	mov     r1, #0x68
	mul     r1, r0
	add     r0, r3, r1
	add     r0, #0x6f
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2032f94

.thumb
branch_2032f94: @ 2032f94 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032f98

.word 0x21c07b4 @ 0x2032f98
.thumb
Function_2032f9c: @ 2032f9c :thumb
	ldr     r1, [pc, #0x1c] @ 0x2032fbc, (=#0x21c07b4)
	ldr     r3, [r1, #0x0]
	mov     r1, #0xe7
	add     r2, r3, r0
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2032fb8
	mov     r1, #0x68
	mul     r1, r0
	add     r0, r3, r1
	add     r0, #0x70
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2032fb8

.thumb
branch_2032fb8: @ 2032fb8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2032fbc

.word 0x21c07b4 @ 0x2032fbc

.incbin "baserom/arm9.bin", 0x32fc0, 0x20332d0 - 0x2032fc0


.thumb
Function_20332d0: @ 20332d0 :thumb
	ldr     r0, [pc, #0xc] @ 0x20332e0, (=#0x21c07b8)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_20332dc
	mov     r0, #0x1
	bx      lr
@ 0x20332dc

.thumb
branch_20332dc: @ 20332dc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20332e0

.word 0x21c07b8 @ 0x20332e0

.incbin "baserom/arm9.bin", 0x332e4, 0x2033478 - 0x20332e4


.thumb
Function_2033478: @ 2033478 :thumb
	push    {r3,lr}
	mov     r0, #0x4
	bl      Function_2017b7c
	ldr     r0, [pc, #0x18] @ 0x203349c, (=#0x21c07b8)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r1, [pc, #0x18] @ 0x20334a0, (=#0x203344d)
	mov     r0, #0x8
	mov     r2, #0x0
	blx     Function_20a2418
	cmp     r0, #0x1
	beq     branch_2033498
	blx     Function_20c42a8
.thumb
branch_2033498: @ 2033498 :thumb
	pop     {r3,pc}
@ 0x203349a


.incbin "baserom/arm9.bin", 0x3349a, 0x203349c - 0x203349a


.word 0x21c07b8 @ 0x203349c
.word 0x203344d @ 0x20334a0

.incbin "baserom/arm9.bin", 0x334a4, 0x20334b8 - 0x20334a4


.thumb
Function_20334b8: @ 20334b8 :thumb
	ldr     r0, [pc, #0xc] @ 0x20334c8, (=#0x21c07b8)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_20334c4
	mov     r0, #0x1
	bx      lr
@ 0x20334c4

.thumb
branch_20334c4: @ 20334c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20334c8

.word 0x21c07b8 @ 0x20334c8

.incbin "baserom/arm9.bin", 0x334cc, 0x2033768 - 0x20334cc


.thumb
Function_2033768: @ 2033768 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x203378c, (=#0x21c07b8)
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_2033786
	ldr     r0, [pc, #0x1c] @ 0x2033790, (=#0xd92)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2033786
	mov     r1, #0x1
	strb    r1, [r2, r0]
	bl      Function_2031ef4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2033786

.thumb
branch_2033786: @ 2033786 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203378a


.incbin "baserom/arm9.bin", 0x3378a, 0x203378c - 0x203378a


.word 0x21c07b8 @ 0x203378c
.word 0xd92 @ 0x2033790

.incbin "baserom/arm9.bin", 0x33794, 0x20337c0 - 0x2033794


.thumb
Function_20337c0: @ 20337c0 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x34] @ 0x20337f8, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x34] @ 0x20337fc, (=#0xd7c)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x28] @ 0x20337f8, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x2033800, (=#0xd64)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x1c] @ 0x20337f8, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x24] @ 0x2033804, (=#0xd84)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x10] @ 0x20337f8, (=#0x21c07b8)
	ldr     r0, [r0, #0x8]
	bl      Function_20181c4
	ldr     r0, [pc, #0x8] @ 0x20337f8, (=#0x21c07b8)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	pop     {r3,pc}
@ 0x20337f6


.incbin "baserom/arm9.bin", 0x337f6, 0x20337f8 - 0x20337f6


.word 0x21c07b8 @ 0x20337f8
.word 0xd7c @ 0x20337fc
.word 0xd64 @ 0x2033800
.word 0xd84 @ 0x2033804

.incbin "baserom/arm9.bin", 0x33808, 0x2033aa8 - 0x2033808


.thumb
Function_2033aa8: @ 2033aa8 :thumb
	push    {r3-r5,lr}
	bl      Function_203895c
	mov     r5, r0
	bl      Function_2033f9c
	mov     r4, r0
	cmp     r5, #0xf
	beq     branch_2033b30
	ldr     r0, [pc, #0xbc] @ 0x2033b78, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xbc] @ 0x2033b7c, (=#0xd88)
	ldr     r5, [r1, r0]
	bl      Function_202602c
	cmp     r0, #0x20
	ble     branch_2033ace
	bl      Function_2022974
.thumb
branch_2033ace: @ 2033ace :thumb
	bl      Function_2025e68
	cmp     r0, #0x20
	beq     branch_2033ada
	bl      Function_2022974
.thumb
branch_2033ada: @ 2033ada :thumb
	bl      Function_2025e68
	mov     r1, r5
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x10
	blx     Function_20c4db0
	bl      Function_202602c
	mov     r2, r0
	ldr     r0, [pc, #0x84] @ 0x2033b78, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x88] @ 0x2033b80, (=#0xd7c)
	ldr     r0, [r1, r0]
	mov     r1, r5
	add     r1, #0x30
	blx     Function_20c4db0
	mov     r0, r4
	bl      Function_2025f20
	str     r0, [r5, #0x0]
	bl      Function_203895c
	strb    r0, [r5, #0x4]
	bl      Function_2038974
	strb    r0, [r5, #0x5]
	ldr     r0, [pc, #0x60] @ 0x2033b78, (=#0x21c07b8)
	mov     r2, #0x8
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x68] @ 0x2033b84, (=#0xd68)
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x8
	blx     Function_20c4db0
	bl      Function_203214c
	add     r5, #0x54
	strb    r0, [r5, #0x0]
	b       branch_2033b58
@ 0x2033b30

.thumb
branch_2033b30: @ 2033b30 :thumb
	ldr     r1, [pc, #0x44] @ 0x2033b78, (=#0x21c07b8)
	ldr     r2, [r1, #0x8]
	ldr     r1, [pc, #0x44] @ 0x2033b7c, (=#0xd88)
	ldr     r4, [r2, r1]
	bl      Function_2025f20
	str     r0, [r4, #0x0]
	bl      Function_203895c
	strb    r0, [r4, #0x4]
	bl      Function_2038974
	strb    r0, [r4, #0x5]
	ldr     r0, [pc, #0x2c] @ 0x2033b78, (=#0x21c07b8)
	add     r4, #0x8
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	mov     r2, #0x54
	blx     Function_20c4db0
.thumb
branch_2033b58: @ 2033b58 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2033b78, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x2033b7c, (=#0xd88)
	ldr     r0, [r1, r0]
	mov     r1, #0x5c
	blx     Function_20c2c54
	ldr     r0, [pc, #0x10] @ 0x2033b78, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x10] @ 0x2033b7c, (=#0xd88)
	ldr     r0, [r1, r0]
	mov     r1, #0x5c
	bl      Function_20318dc
	pop     {r3-r5,pc}
@ 0x2033b76


.incbin "baserom/arm9.bin", 0x33b76, 0x2033b78 - 0x2033b76


.word 0x21c07b8 @ 0x2033b78
.word 0xd88 @ 0x2033b7c
.word 0xd7c @ 0x2033b80
.word 0xd68 @ 0x2033b84
.thumb
Function_2033b88: @ 2033b88 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x48] @ 0x2033bd4, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x48] @ 0x2033bd8, (=#0xd88)
	ldr     r4, [r1, r0]
	bl      Function_2033ddc
	ldrb    r1, [r4, #0x6]
	cmp     r1, r0
	beq     branch_2033bd2
	bl      Function_2033ddc
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x30] @ 0x2033bd4, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x30] @ 0x2033bd8, (=#0xd88)
	ldr     r0, [r1, r0]
	mov     r1, #0x5c
	blx     Function_20c2c54
	ldr     r0, [pc, #0x20] @ 0x2033bd4, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x20] @ 0x2033bd8, (=#0xd88)
	ldr     r0, [r1, r0]
	mov     r1, #0x5c
	bl      Function_20318dc
	ldr     r3, [pc, #0x14] @ 0x2033bd4, (=#0x21c07b8)
	ldr     r2, [pc, #0x14] @ 0x2033bd8, (=#0xd88)
	ldr     r4, [r3, #0x8]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x8
	ldr     r2, [r4, r2]
	mov     r1, #0x5c
	bl      Function_2032034
.thumb
branch_2033bd2: @ 2033bd2 :thumb
	pop     {r4,pc}
@ 0x2033bd4

.word 0x21c07b8 @ 0x2033bd4
.word 0xd88 @ 0x2033bd8
.thumb
Function_2033bdc: @ 2033bdc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_2031934
	mov     r5, r0
	bl      Function_2032e90
	mov     r6, r0
	bl      Function_2033b88
	bl      Function_2031f90
	cmp     r0, #0x0
	bne     branch_2033c1a
	bl      Function_2033e48
	cmp     r0, #0x0
	bne     branch_2033c1a
	ldr     r0, [pc, #0x174] @ 0x2033d78, (=#0x21c07b8)
	ldr     r3, [pc, #0x174] @ 0x2033d7c, (=#0xd95)
	ldr     r1, [r0, #0x8]
	ldrb    r0, [r1, r3]
	lsl     r2, r0, #29
	lsr     r2, r2, #31
	beq     branch_2033c1a
	mov     r2, #0x1
	bic     r0, r2
	mov     r2, #0x1
	orr     r0, r2
	strb    r0, [r1, r3]
.thumb
branch_2033c1a: @ 2033c1a :thumb
	ldr     r0, [pc, #0x15c] @ 0x2033d78, (=#0x21c07b8)
	ldr     r3, [pc, #0x160] @ 0x2033d80, (=#0xd8e)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x160] @ 0x2033d84, (=#0xffff)
	ldrh    r1, [r2, r3]
	cmp     r1, r0
	bne     branch_2033c2a
	strh    r4, [r2, r3]
.thumb
branch_2033c2a: @ 2033c2a :thumb
	ldr     r0, [pc, #0x14c] @ 0x2033d78, (=#0x21c07b8)
	ldr     r3, [pc, #0x14c] @ 0x2033d7c, (=#0xd95)
	ldr     r1, [r0, #0x8]
	ldrb    r0, [r1, r3]
	lsl     r2, r0, #30
	lsr     r2, r2, #31
	beq     branch_2033c60
	.hword  0x1fda @ sub r2, r3, #0x7
	ldrh    r2, [r1, r2]
	cmp     r2, r4
	bls     branch_2033c4a
	mov     r2, #0x1
	bic     r0, r2
	mov     r2, #0x1
	orr     r0, r2
	strb    r0, [r1, r3]
.thumb
branch_2033c4a: @ 2033c4a :thumb
	cmp     r6, #0x0
	beq     branch_2033c60
	ldr     r0, [pc, #0x128] @ 0x2033d78, (=#0x21c07b8)
	ldr     r2, [pc, #0x128] @ 0x2033d7c, (=#0xd95)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x1
	ldrb    r3, [r0, r2]
	bic     r3, r1
	mov     r1, #0x1
	orr     r1, r3
	strb    r1, [r0, r2]
.thumb
branch_2033c60: @ 2033c60 :thumb
	bl      Function_2031948
	cmp     r0, #0x19
	bne     branch_2033c6e
	mov     r0, #0x0
	bl      Function_20389fc
.thumb
branch_2033c6e: @ 2033c6e :thumb
	cmp     r5, #0x9
	bhi     branch_2033d72
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r2, #0
	lsl     r2, r6, #0
	lsl     r2, r6, #3
	lsl     r2, r6, #3
	lsl     r2, r6, #3
	lsl     r2, r6, #3
	lsl     r2, r6, #3
	lsl     r6, r6, #1
	lsl     r4, r3, #1
	lsl     r4, r3, #1
	ldr     r0, [pc, #0xe4] @ 0x2033d78, (=#0x21c07b8)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0xf0] @ 0x2033d88, (=#0xd92)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x1
	bne     branch_2033ca6
	bl      Function_20337c0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2033ca6

.thumb
branch_2033ca6: @ 2033ca6 :thumb
	cmp     r1, #0x2
	bne     branch_2033d72
	mov     r1, #0x3
	strb    r1, [r2, r0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2033cb2


.incbin "baserom/arm9.bin", 0x33cb2, 0x2033d72 - 0x2033cb2


.thumb
branch_2033d72: @ 2033d72 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2033d76


.incbin "baserom/arm9.bin", 0x33d76, 0x2033d78 - 0x2033d76


.word 0x21c07b8 @ 0x2033d78
.word 0xd95 @ 0x2033d7c
.word 0xd8e @ 0x2033d80
.word 0xffff @ 0x2033d84
.word 0xd92 @ 0x2033d88

.incbin "baserom/arm9.bin", 0x33d8c, 0x2033d94 - 0x2033d8c


.thumb
Function_2033d94: @ 2033d94 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x2033da4, (=#0x21c07b8)
	ldr     r1, [r1, #0x8]
	cmp     r1, #0x0
	beq     branch_2033da2
	bl      Function_2033bdc
.thumb
branch_2033da2: @ 2033da2 :thumb
	pop     {r3,pc}
@ 0x2033da4

.word 0x21c07b8 @ 0x2033da4
.thumb
Function_2033da8: @ 2033da8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2033dd8, (=#0x21c07b8)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_2033db8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2033db8

.thumb
branch_2033db8: @ 2033db8 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	beq     branch_2033dc4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2033dc4

.thumb
branch_2033dc4: @ 2033dc4 :thumb
	bl      Function_20318ec
	mov     r2, #0x1
	mov     r1, r2
	lsl     r1, r4
	tst     r0, r1
	bne     branch_2033dd4
	mov     r2, #0x0
.thumb
branch_2033dd4: @ 2033dd4 :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x2033dd8

.word 0x21c07b8 @ 0x2033dd8
.thumb
Function_2033ddc: @ 2033ddc :thumb
	push    {r3-r5,lr}
	mov     r4, #0x0
	mov     r5, r4
.thumb
branch_2033de2: @ 2033de2 :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2033da8
	cmp     r0, #0x0
	beq     branch_2033df0
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2033df0: @ 2033df0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_2033de2
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2033dfa


.incbin "baserom/arm9.bin", 0x33dfa, 0x2033dfc - 0x2033dfa


.thumb
Function_2033dfc: @ 2033dfc :thumb
	ldr     r0, [pc, #0x14] @ 0x2033e14, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2033e10
	ldr     r0, [pc, #0x10] @ 0x2033e18, (=#0xd92)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x3
	bne     branch_2033e10
	mov     r0, #0x1
	bx      lr
@ 0x2033e10

.thumb
branch_2033e10: @ 2033e10 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2033e14

.word 0x21c07b8 @ 0x2033e14
.word 0xd92 @ 0x2033e18
.thumb
Function_2033e1c: @ 2033e1c :thumb
	ldr     r0, [pc, #0xc] @ 0x2033e2c, (=#0x21c07b8)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2033e28
	mov     r0, #0x1
	bx      lr
@ 0x2033e28

.thumb
branch_2033e28: @ 2033e28 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2033e2c

.word 0x21c07b8 @ 0x2033e2c

.incbin "baserom/arm9.bin", 0x33e30, 0x2033e48 - 0x2033e30


.thumb
Function_2033e48: @ 2033e48 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2033e60, (=#0x21c07b8)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2033e5c
	bl      Function_20318ec
	ldr     r1, [pc, #0xc] @ 0x2033e64, (=#0xfffe)
	and     r0, r1
	pop     {r3,pc}
@ 0x2033e5c

.thumb
branch_2033e5c: @ 2033e5c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2033e60

.word 0x21c07b8 @ 0x2033e60
.word 0xfffe @ 0x2033e64

.incbin "baserom/arm9.bin", 0x33e68, 0x2033e84 - 0x2033e68


.thumb
Function_2033e84: @ 2033e84 :thumb
	ldr     r0, [pc, #0x18] @ 0x2033ea0, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2033e9a
	ldr     r0, [pc, #0x14] @ 0x2033ea4, (=#0xd95)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2033e9a
	mov     r0, #0x1
	bx      lr
@ 0x2033e9a

.thumb
branch_2033e9a: @ 2033e9a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2033e9e


.incbin "baserom/arm9.bin", 0x33e9e, 0x2033ea0 - 0x2033e9e


.word 0x21c07b8 @ 0x2033ea0
.word 0xd95 @ 0x2033ea4
.thumb
Function_2033ea8: @ 2033ea8 :thumb
	push    {r3,r4}
	ldr     r1, [pc, #0x20] @ 0x2033ecc, (=#0x21c07b8)
	ldr     r2, [r1, #0x8]
	cmp     r2, #0x0
	beq     branch_2033ec6
	ldr     r4, [pc, #0x1c] @ 0x2033ed0, (=#0xd95)
	lsl     r0, r0, #24
	ldrb    r1, [r2, r4]
	lsr     r0, r0, #24
	mov     r3, #0x4
	lsl     r0, r0, #31
	bic     r1, r3
	lsr     r0, r0, #29
	orr     r0, r1
	strb    r0, [r2, r4]
.thumb
branch_2033ec6: @ 2033ec6 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2033eca


.incbin "baserom/arm9.bin", 0x33eca, 0x2033ecc - 0x2033eca


.word 0x21c07b8 @ 0x2033ecc
.word 0xd95 @ 0x2033ed0
.thumb
Function_2033ed4: @ 2033ed4 :thumb
	push    {r4,r5}
	ldr     r5, [pc, #0x28] @ 0x2033f00, (=#0x21c07b8)
	ldr     r2, [r5, #0x8]
	cmp     r2, #0x0
	beq     branch_2033efa
	ldr     r4, [pc, #0x24] @ 0x2033f04, (=#0xd95)
	lsl     r0, r0, #24
	ldrb    r1, [r2, r4]
	lsr     r0, r0, #24
	mov     r3, #0x2
	lsl     r0, r0, #31
	bic     r1, r3
	lsr     r0, r0, #30
	orr     r0, r1
	strb    r0, [r2, r4]
	ldr     r2, [pc, #0x14] @ 0x2033f08, (=#0xffff)
	ldr     r1, [r5, #0x8]
	.hword  0x1fe0 @ sub r0, r4, #0x7
	strh    r2, [r1, r0]
.thumb
branch_2033efa: @ 2033efa :thumb
	pop     {r4,r5}
	bx      lr
@ 0x2033efe


.incbin "baserom/arm9.bin", 0x33efe, 0x2033f00 - 0x2033efe


.word 0x21c07b8 @ 0x2033f00
.word 0xd95 @ 0x2033f04
.word 0xffff @ 0x2033f08

.incbin "baserom/arm9.bin", 0x33f0c, 0x2033f9c - 0x2033f0c


.thumb
Function_2033f9c: @ 2033f9c :thumb
	ldr     r0, [pc, #0x8] @ 0x2033fa8, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x8] @ 0x2033fac, (=#0xd78)
	ldr     r0, [r1, r0]
	bx      lr
@ 0x2033fa6


.incbin "baserom/arm9.bin", 0x33fa6, 0x2033fa8 - 0x2033fa6


.word 0x21c07b8 @ 0x2033fa8
.word 0xd78 @ 0x2033fac
.thumb
Function_2033fb0: @ 2033fb0 :thumb
	ldr     r1, [pc, #0x20] @ 0x2033fd4, (=#0x21c07b8)
	ldr     r3, [r1, #0x8]
	lsl     r1, r0, #1
	add     r2, r3, r1
	ldr     r1, [pc, #0x1c] @ 0x2033fd8, (=#0xd44)
	ldrh    r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2033fc4
	mov     r0, #0x0
	bx      lr
@ 0x2033fc4

.thumb
branch_2033fc4: @ 2033fc4 :thumb
	mov     r1, #0x59
	lsl     r1, r1, #2
	add     r2, r3, r1
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r2, r1
	add     r0, #0x10
	bx      lr
@ 0x2033fd4

.word 0x21c07b8 @ 0x2033fd4
.word 0xd44 @ 0x2033fd8

.incbin "baserom/arm9.bin", 0x33fdc, 0x203406c - 0x2033fdc


.thumb
Function_203406c: @ 203406c :thumb
	ldr     r0, [pc, #0x14] @ 0x2034084, (=#0x21c07b8)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_203407e
	ldr     r0, [pc, #0x10] @ 0x2034088, (=#0xd95)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	bx      lr
@ 0x203407e

.thumb
branch_203407e: @ 203407e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2034082


.incbin "baserom/arm9.bin", 0x34082, 0x2034084 - 0x2034082


.word 0x21c07b8 @ 0x2034084
.word 0xd95 @ 0x2034088

.incbin "baserom/arm9.bin", 0x3408c, 0x20340c4 - 0x203408c


.thumb
Function_20340c4: @ 20340c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_202602c
	ldr     r1, [pc, #0x10] @ 0x20340e0, (=#0x21c07b8)
	mov     r2, r0
	ldr     r3, [r1, #0x8]
	ldr     r1, [pc, #0x10] @ 0x20340e4, (=#0xd7c)
	mov     r0, r4
	ldr     r1, [r3, r1]
	blx     Function_20c4db0
	pop     {r4,pc}
@ 0x20340de


.incbin "baserom/arm9.bin", 0x340de, 0x20340e0 - 0x20340de


.word 0x21c07b8 @ 0x20340e0
.word 0xd7c @ 0x20340e4

.incbin "baserom/arm9.bin", 0x340e8, 0x20340fc - 0x20340e8


.thumb
Function_20340fc: @ 20340fc :thumb
	push    {r4,lr}
	bl      Function_2033aa8
	ldr     r3, [pc, #0x14] @ 0x2034118, (=#0x21c07b8)
	ldr     r2, [pc, #0x14] @ 0x203411c, (=#0xd88)
	ldr     r4, [r3, #0x8]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x8
	ldr     r2, [r4, r2]
	mov     r1, #0x5c
	bl      Function_2032034
	pop     {r4,pc}
@ 0x2034118

.word 0x21c07b8 @ 0x2034118
.word 0xd88 @ 0x203411c

.incbin "baserom/arm9.bin", 0x34120, 0x2034670 - 0x2034120


.thumb
Function_2034670: @ 2034670 :thumb
	ldr     r3, [pc, #0x0] @ 0x2034674, (=#0x2034379)
	bx      r3
@ 0x2034674

.word 0x2034379 @ 0x2034674
.thumb
Function_2034678: @ 2034678 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0xa0] @ 0x203471c, (=#0x21c07c4)
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	ldr     r3, [pc, #0x9c] @ 0x2034720, (=#0x697)
	mov     r1, #0x0
	add     r0, r0, r5
	strb    r1, [r0, r3]
	ldr     r2, [r4, #0x8]
	mov     r0, #0x1
	add     r6, r2, r5
	mov     r2, r3
	add     r2, #0x8
	strb    r0, [r6, r2]
	ldr     r2, [r4, #0x8]
	lsl     r0, r5, #2
	add     r0, r2, r0
	sub     r3, #0x2b
	str     r1, [r0, r3]
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	mov     r1, r0
	mov     r0, r4
	ldr     r6, [r0, #0x8]
	ldr     r0, [pc, #0x70] @ 0x2034724, (=#0x68c)
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r0, [r6, r0]
	blx     Division
	mov     r7, r5
	mov     r1, #0x4b
	str     r0, [sp, #0x0]
	mul     r7, r0
	mov     r0, #0xc
	mov     r4, r5
	lsl     r1, r1, #4
	mul     r4, r0
	add     r0, r6, r1
	sub     r1, #0x28
	ldr     r1, [r6, r1]
	ldr     r2, [sp, #0x0]
	add     r0, r0, r4
	add     r1, r1, r7
	bl      Function_2032188
	ldr     r0, [pc, #0x40] @ 0x203471c, (=#0x21c07c4)
	ldr     r1, [pc, #0x48] @ 0x2034728, (=#0x51c)
	ldr     r2, [r0, #0x8]
	add     r0, r2, r1
	sub     r1, #0x90
	ldr     r1, [r2, r1]
	ldr     r2, [sp, #0x0]
	add     r0, r0, r4
	add     r1, r1, r7
	bl      Function_2032188
	ldr     r3, [pc, #0x28] @ 0x203471c, (=#0x21c07c4)
	ldr     r2, [pc, #0x38] @ 0x203472c, (=#0x5ca)
	ldr     r0, [r3, #0x8]
	mov     r1, #0xee
	add     r0, r0, r4
	strb    r1, [r0, r2]
	ldr     r0, [r3, #0x8]
	ldr     r5, [pc, #0x30] @ 0x2034730, (=#0xffff)
	add     r1, r0, r4
	.hword  0x1e90 @ sub r0, r2, #0x2
	strh    r5, [r1, r0]
	ldr     r1, [r3, #0x8]
	mov     r0, #0x0
	add     r5, r1, r4
	.hword  0x1f91 @ sub r1, r2, #0x6
	str     r0, [r5, r1]
	ldr     r1, [r3, #0x8]
	sub     r2, #0xa
	add     r1, r1, r4
	str     r0, [r1, r2]
	pop     {r3-r7,pc}
@ 0x203471a


.incbin "baserom/arm9.bin", 0x3471a, 0x203471c - 0x203471a


.word 0x21c07c4 @ 0x203471c
.word 0x697 @ 0x2034720
.word 0x68c @ 0x2034724
.word 0x51c @ 0x2034728
.word 0x5ca @ 0x203472c
.word 0xffff @ 0x2034730
.thumb
Function_2034734: @ 2034734 :thumb
	push    {r4-r6,lr}
	ldr     r4, [pc, #0x30] @ 0x2034768, (=#0x21c07c4)
	ldr     r6, [pc, #0x30] @ 0x203476c, (=#0x69f)
	mov     r5, #0x1
.thumb
branch_203473c: @ 203473c :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034760
	ldr     r0, [r4, #0x8]
	add     r0, r0, r5
	ldrb    r0, [r0, r6]
	cmp     r0, #0x0
	bne     branch_2034760
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2034760
	mov     r0, r5
	bl      Function_2034678
.thumb
branch_2034760: @ 2034760 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_203473c
	pop     {r4-r6,pc}
@ 0x2034768

.word 0x21c07c4 @ 0x2034768
.word 0x69f @ 0x203476c

.incbin "baserom/arm9.bin", 0x34770, 0x20347ec - 0x2034770


.thumb
Function_20347ec: @ 20347ec :thumb
	push    {r4,lr}
	mov     r4, #0x0
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034802
	ldr     r0, [pc, #0x40] @ 0x203483c, (=#0x2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	beq     branch_203480a
	pop     {r4,pc}
@ 0x2034802

.thumb
branch_2034802: @ 2034802 :thumb
	ldr     r0, [pc, #0x38] @ 0x203483c, (=#0x2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034838
.thumb
branch_203480a: @ 203480a :thumb
	ldr     r0, [pc, #0x34] @ 0x2034840, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x34] @ 0x2034844, (=#0x6ad)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x2
	bne     branch_203481c
	mov     r1, #0x0
	strb    r1, [r2, r0]
	mov     r4, #0x1
.thumb
branch_203481c: @ 203481c :thumb
	ldr     r0, [pc, #0x20] @ 0x2034840, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x20] @ 0x2034844, (=#0x6ad)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x3
	bne     branch_203482c
	mov     r4, #0x1
	strb    r4, [r2, r0]
.thumb
branch_203482c: @ 203482c :thumb
	cmp     r4, #0x0
	beq     branch_2034834
	bl      Function_2034670
.thumb
branch_2034834: @ 2034834 :thumb
	bl      Function_2035f84
.thumb
branch_2034838: @ 2034838 :thumb
	pop     {r4,pc}
@ 0x203483a


.incbin "baserom/arm9.bin", 0x3483a, 0x203483c - 0x203483a


.word 0x2100a1c @ 0x203483c
.word 0x21c07c4 @ 0x2034840
.word 0x6ad @ 0x2034844
.thumb
Function_2034848: @ 2034848 :thumb
	ldr     r1, [pc, #0x24] @ 0x2034870, (=#0x21c07c4)
	ldr     r3, [r1, #0x8]
	ldr     r1, [pc, #0x24] @ 0x2034874, (=#0x6ad)
	ldrb    r2, [r3, r1]
	cmp     r2, #0x0
	bne     branch_203485e
	cmp     r0, #0x1
	bne     branch_203485e
	mov     r0, #0x3
	strb    r0, [r3, r1]
	bx      lr
@ 0x203485e

.thumb
branch_203485e: @ 203485e :thumb
	cmp     r2, #0x1
	bne     branch_203486c
	cmp     r0, #0x0
	bne     branch_203486c
	ldr     r0, [pc, #0xc] @ 0x2034874, (=#0x6ad)
	mov     r1, #0x2
	strb    r1, [r3, r0]
.thumb
branch_203486c: @ 203486c :thumb
	bx      lr
@ 0x203486e


.incbin "baserom/arm9.bin", 0x3486e, 0x2034870 - 0x203486e


.word 0x21c07c4 @ 0x2034870
.word 0x6ad @ 0x2034874

.incbin "baserom/arm9.bin", 0x34878, 0x2034890 - 0x2034878


.thumb
Function_2034890: @ 2034890 :thumb
	ldr     r0, [pc, #0x14] @ 0x20348a8, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x14] @ 0x20348ac, (=#0x6ad)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_20348a0
	mov     r0, #0x1
	bx      lr
@ 0x20348a0

.thumb
branch_20348a0: @ 20348a0 :thumb
	cmp     r0, #0x3
	bne     branch_20348a6
	mov     r0, #0x0
.thumb
branch_20348a6: @ 20348a6 :thumb
	bx      lr
@ 0x20348a8

.word 0x21c07c4 @ 0x20348a8
.word 0x6ad @ 0x20348ac

.incbin "baserom/arm9.bin", 0x348b0, 0x20348c4 - 0x20348b0


.thumb
Function_20348c4: @ 20348c4 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0xa8] @ 0x2034970, (=#0x21c07c4)
	mov     r4, #0x0
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_20348ee
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20348e4
	bl      0x21d2184
	mov     r4, #0x1
	b       branch_20348ee
@ 0x20348e4

.thumb
branch_20348e4: @ 20348e4 :thumb
	bl      Function_2033768
	cmp     r0, #0x0
	beq     branch_20348ee
	mov     r4, #0x1
.thumb
branch_20348ee: @ 20348ee :thumb
	cmp     r4, #0x0
	beq     branch_203496e
	bl      Function_2036438
	bl      Function_2032a70
	ldr     r0, [pc, #0x74] @ 0x2034970, (=#0x21c07c4)
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x70] @ 0x2034974, (=#0x57c)
	ldr     r0, [r1, r0]
	bl      Function_200da58
	ldr     r1, [pc, #0x64] @ 0x2034970, (=#0x21c07c4)
	ldr     r0, [pc, #0x64] @ 0x2034974, (=#0x57c)
	ldr     r2, [r1, #0x8]
	mov     r3, #0x0
	str     r3, [r2, r0]
	ldr     r1, [r1, #0x8]
	sub     r0, #0xec
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x50] @ 0x2034970, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x54] @ 0x2034978, (=#0x494)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x44] @ 0x2034970, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x4c] @ 0x203497c, (=#0x48c)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x38] @ 0x2034970, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x44] @ 0x2034980, (=#0x488)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x2c] @ 0x2034970, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_2032638
	ldr     r0, [pc, #0x1c] @ 0x2034970, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	bl      Function_2032638
	ldr     r0, [pc, #0x10] @ 0x2034970, (=#0x21c07c4)
	ldr     r0, [r0, #0x4]
	bl      Function_20181c4
	ldr     r0, [pc, #0x8] @ 0x2034970, (=#0x21c07c4)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x4]
.thumb
branch_203496e: @ 203496e :thumb
	pop     {r4,pc}
@ 0x2034970

.word 0x21c07c4 @ 0x2034970
.word 0x57c @ 0x2034974
.word 0x494 @ 0x2034978
.word 0x48c @ 0x203497c
.word 0x488 @ 0x2034980

.incbin "baserom/arm9.bin", 0x34984, 0x20349c4 - 0x2034984


.thumb
Function_20349c4: @ 20349c4 :thumb
	push    {r3,lr}
	bl      Function_203406c
	cmp     r0, #0x0
	beq     branch_20349e8
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_20349e4
	bl      Function_2033e48
	cmp     r0, #0x0
	bne     branch_20349e8
	bl      Function_20348c4
	pop     {r3,pc}
@ 0x20349e4

.thumb
branch_20349e4: @ 20349e4 :thumb
	bl      Function_20348c4
.thumb
branch_20349e8: @ 20349e8 :thumb
	pop     {r3,pc}
@ 0x20349ea


.incbin "baserom/arm9.bin", 0x349ea, 0x20349ec - 0x20349ea


.thumb
Function_20349ec: @ 20349ec :thumb
	push    {r4,lr}
	bl      Function_2036c50
	ldr     r3, [pc, #0xd8] @ 0x2034acc, (=#0x21c07c4)
	ldr     r0, [r3, #0x8]
	cmp     r0, #0x0
	beq     branch_2034ab6
	ldr     r2, [pc, #0xd4] @ 0x2034ad0, (=#0x6ba)
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	bne     branch_2034a98
	add     r1, r2, #0x3
	ldrb    r1, [r0, r1]
	add     r4, r1, #0x1
	add     r1, r2, #0x3
	strb    r4, [r0, r1]
	mov     r0, #0x0
	strb    r0, [r3, #0x1]
	bl      Function_20347ec
	ldr     r0, [pc, #0xb4] @ 0x2034acc, (=#0x21c07c4)
	ldr     r1, [pc, #0xbc] @ 0x2034ad4, (=#0x21bf67c)
	ldr     r0, [r0, #0x8]
	ldr     r2, [pc, #0xbc] @ 0x2034ad8, (=#0x65c)
	ldr     r3, [r1, #0x44]
	ldr     r1, [pc, #0xbc] @ 0x2034adc, (=#0x7fff)
	ldrh    r4, [r0, r2]
	and     r1, r3
	orr     r1, r4
	strh    r1, [r0, r2]
	bl      Function_2035534
	bl      Function_2034b50
	ldr     r0, [pc, #0x98] @ 0x2034acc, (=#0x21c07c4)
	ldr     r1, [pc, #0xa4] @ 0x2034ad8, (=#0x65c)
	ldr     r3, [r0, #0x8]
	mov     r0, #0x2
	ldrh    r2, [r3, r1]
	lsl     r0, r0, #14
	and     r0, r2
	strh    r0, [r3, r1]
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2034a4c
	bl      Function_2035ca8
.thumb
branch_2034a4c: @ 2034a4c :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034a5e
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034a66
.thumb
branch_2034a5e: @ 2034a5e :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034a76
.thumb
branch_2034a66: @ 2034a66 :thumb
	bl      Function_203895c
	bl      Function_203272c
	cmp     r0, #0x0
	bne     branch_2034a76
	bl      Function_2034f68
.thumb
branch_2034a76: @ 2034a76 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2034a8e
	bl      Function_2034890
	cmp     r0, #0x1
	beq     branch_2034a8e
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034a92
.thumb
branch_2034a8e: @ 2034a8e :thumb
	bl      Function_2035cf8
.thumb
branch_2034a92: @ 2034a92 :thumb
	ldr     r0, [pc, #0x38] @ 0x2034acc, (=#0x21c07c4)
	mov     r1, #0x1
	strb    r1, [r0, #0x1]
.thumb
branch_2034a98: @ 2034a98 :thumb
	ldr     r0, [pc, #0x30] @ 0x2034acc, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x40] @ 0x2034ae0, (=#0x694)
	ldrh    r0, [r1, r0]
	bl      Function_2033d94
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034ab0
	bl      Function_2034734
.thumb
branch_2034ab0: @ 2034ab0 :thumb
	bl      Function_20349c4
	b       branch_2034abc
@ 0x2034ab6

.thumb
branch_2034ab6: @ 2034ab6 :thumb
	mov     r0, #0x0
	bl      Function_2033d94
.thumb
branch_2034abc: @ 2034abc :thumb
	mov     r0, #0x0
	bl      Function_2038a20
	bl      Function_203650c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2034aca


.incbin "baserom/arm9.bin", 0x34aca, 0x2034acc - 0x2034aca


.word 0x21c07c4 @ 0x2034acc
.word 0x6ba @ 0x2034ad0
.word 0x21bf67c @ 0x2034ad4
.word 0x65c @ 0x2034ad8
.word 0x7fff @ 0x2034adc
.word 0x694 @ 0x2034ae0

.incbin "baserom/arm9.bin", 0x34ae4, 0x2034b50 - 0x2034ae4


.thumb
Function_2034b50: @ 2034b50 :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	bl      Function_203272c
	cmp     r0, #0x0
	beq     branch_2034c04
	ldr     r0, [pc, #0x180] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r1, [pc, #0x180] @ 0x2034ce4, (=#0x6b7)
	ldr     r0, [r0, #0x8]
	ldrb    r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_2034bc0
	sub     r1, #0x53
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2034b92
	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_2034bb0
	ldr     r0, [pc, #0x16c] @ 0x2034ce8, (=#0x2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034ba8
	ldr     r0, [pc, #0x15c] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	bl      Function_20357f0
	ldr     r0, [pc, #0x15c] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
	b       branch_2034ba8
@ 0x2034b92

.thumb
branch_2034b92: @ 2034b92 :thumb
	ldr     r1, [pc, #0x154] @ 0x2034ce8, (=#0x2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034ba8
	bl      Function_20357f0
	cmp     r0, #0x0
	beq     branch_2034bb0
	ldr     r0, [pc, #0x144] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
.thumb
branch_2034ba8: @ 2034ba8 :thumb
	bl      Function_203594c
	cmp     r0, #0x0
	beq     branch_2034bb2
.thumb
branch_2034bb0: @ 2034bb0 :thumb
	b       branch_2034cdc
@ 0x2034bb2

.thumb
branch_2034bb2: @ 2034bb2 :thumb
	ldr     r0, [pc, #0x12c] @ 0x2034ce0, (=#0x21c07c4)
	mov     r1, #0x26
	ldr     r0, [r0, #0x8]
	bl      0x21d1590
	cmp     r0, #0x0
	bne     branch_2034bc2
.thumb
branch_2034bc0: @ 2034bc0 :thumb
	b       branch_2034cdc
@ 0x2034bc2

.thumb
branch_2034bc2: @ 2034bc2 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2034bfc
	ldr     r7, [pc, #0x108] @ 0x2034ce0, (=#0x21c07c4)
	mov     r5, r4
.thumb
branch_2034bda: @ 2034bda :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034bf4
	ldr     r0, [r7, #0x8]
	ldr     r1, [pc, #0x100] @ 0x2034cec, (=#0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0xf8] @ 0x2034cec, (=#0x66c)
	str     r2, [r0, r1]
.thumb
branch_2034bf4: @ 2034bf4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034bda
.thumb
branch_2034bfc: @ 2034bfc :thumb
	ldr     r0, [pc, #0xe8] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x1]
	pop     {r3-r7,pc}
@ 0x2034c04

.thumb
branch_2034c04: @ 2034c04 :thumb
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2034c82
	ldr     r0, [pc, #0xcc] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r2, [pc, #0xd0] @ 0x2034ce4, (=#0x6b7)
	ldr     r0, [r0, #0x8]
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_2034cdc
	mov     r1, r2
	sub     r1, #0x53
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2034c42
	sub     r2, #0x4f
	ldr     r1, [r0, r2]
	cmp     r1, #0x3
	bgt     branch_2034cdc
	ldr     r1, [pc, #0xb8] @ 0x2034ce8, (=#0x2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034c58
	bl      Function_20357f0
	ldr     r0, [pc, #0xac] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
	b       branch_2034c58
@ 0x2034c42

.thumb
branch_2034c42: @ 2034c42 :thumb
	ldr     r1, [pc, #0xa4] @ 0x2034ce8, (=#0x2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034c58
	bl      Function_20357f0
	cmp     r0, #0x0
	beq     branch_2034cdc
	ldr     r0, [pc, #0x94] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
.thumb
branch_2034c58: @ 2034c58 :thumb
	bl      Function_203594c
	cmp     r0, #0x0
	bne     branch_2034cdc
	ldr     r0, [pc, #0x7c] @ 0x2034ce0, (=#0x21c07c4)
	mov     r1, #0x26
	ldr     r0, [r0, #0x8]
	bl      0x21d142c
	cmp     r0, #0x0
	beq     branch_2034cdc
	ldr     r0, [pc, #0x78] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x1]
	ldr     r0, [pc, #0x68] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x74] @ 0x2034cf0, (=#0x668)
	ldr     r1, [r2, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r2, r0]
	pop     {r3-r7,pc}
@ 0x2034c82

.thumb
branch_2034c82: @ 2034c82 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034c96
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034c9e
.thumb
branch_2034c96: @ 2034c96 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034cdc
.thumb
branch_2034c9e: @ 2034c9e :thumb
	ldr     r0, [pc, #0x48] @ 0x2034ce8, (=#0x2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034cd8
	ldr     r0, [pc, #0x38] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x44] @ 0x2034cf0, (=#0x668)
	ldr     r1, [r2, r0]
	cmp     r1, #0x3
	bgt     branch_2034cd8
	add     r0, #0x47
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #6
	add     r0, r2, r0
	bl      Function_20357f0
	ldr     r0, [pc, #0x20] @ 0x2034ce0, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x30] @ 0x2034cf4, (=#0x6af)
	ldrb    r1, [r2, r0]
	mov     r0, #0x1
	sub     r0, r0, r1
	lsl     r0, r0, #6
	add     r0, r2, r0
	bl      Function_20357f0
	ldr     r0, [pc, #0x14] @ 0x2034ce8, (=#0x2100a1c)
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
.thumb
branch_2034cd8: @ 2034cd8 :thumb
	bl      Function_20353cc
.thumb
branch_2034cdc: @ 2034cdc :thumb
	pop     {r3-r7,pc}
@ 0x2034cde


.incbin "baserom/arm9.bin", 0x34cde, 0x2034ce0 - 0x2034cde


.word 0x21c07c4 @ 0x2034ce0
.word 0x6b7 @ 0x2034ce4
.word 0x2100a1c @ 0x2034ce8
.word 0x66c @ 0x2034cec
.word 0x668 @ 0x2034cf0
.word 0x6af @ 0x2034cf4
.thumb
Function_2034cf8: @ 2034cf8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r7, #0x0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	str     r0, [sp, #0xc]
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_2034db0
	ldr     r0, [sp, #0x0]
	ldr     r6, [sp, #0x4]
	mov     r1, #0xc0
	mov     r5, r0
	mov     r4, r6
	mul     r5, r1
.thumb
branch_2034d34: @ 2034d34 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2034dc4, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r0, r0, r6
	bl      Function_20322d0
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034d62
	ldr     r0, [pc, #0x70] @ 0x2034dc4, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	add     r0, r5, r0
	add     r1, r4, r0
	add     r1, #0x80
	mov     r0, #0xe
	strb    r0, [r1, #0x0]
	b       branch_2034d74
@ 0x2034d62

.thumb
branch_2034d62: @ 2034d62 :thumb
	ldr     r0, [pc, #0x60] @ 0x2034dc4, (=#0x21c07c4)
	.hword  0x1c7f @ add r7, r7, #0x1
	ldr     r0, [r0, #0x8]
	add     r0, r5, r0
	add     r1, r4, r0
	add     r1, #0x80
	mov     r0, #0xff
	strb    r0, [r1, #0x0]
	b       branch_2034d9e
@ 0x2034d74

.thumb
branch_2034d74: @ 2034d74 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2034dc4, (=#0x21c07c4)
	ldr     r2, [sp, #0xc]
	ldr     r1, [r0, #0x8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r1, #0x80
	add     r1, r1, r5
	add     r0, r0, r6
	add     r1, r1, r4
	bl      Function_20321f4
	ldr     r0, [pc, #0x34] @ 0x2034dc4, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	add     r0, r5, r0
	add     r0, r4, r0
	add     r0, #0x80
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xe
	bne     branch_2034d9e
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2034d9e: @ 2034d9e :thumb
	ldr     r0, [sp, #0xc]
	add     r6, #0xc
	add     r4, r4, r0
	ldr     r0, [sp, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_2034d34
.thumb
branch_2034db0: @ 2034db0 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r7, r0
	bne     branch_2034dbc
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2034dbc

.thumb
branch_2034dbc: @ 2034dbc :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2034dc2


.incbin "baserom/arm9.bin", 0x34dc2, 0x2034dc4 - 0x2034dc2


.word 0x21c07c4 @ 0x2034dc4
.thumb
Function_2034dc8: @ 2034dc8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x140] @ 0x2034f0c, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2034dde
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2034de0
.thumb
branch_2034dde: @ 2034dde :thumb
	b       branch_2034f08
@ 0x2034de0

.thumb
branch_2034de0: @ 2034de0 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	ldr     r0, [pc, #0x114] @ 0x2034f10, (=#0x2100a1c)
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x2
	beq     branch_2034e08
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2034f08
.thumb
branch_2034e08: @ 2034e08 :thumb
	ldr     r0, [pc, #0x104] @ 0x2034f10, (=#0x2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034e32
	ldr     r0, [pc, #0xf0] @ 0x2034f0c, (=#0x21c07c4)
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_2034e32
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	bl      Function_2034cf8
	ldr     r0, [pc, #0xdc] @ 0x2034f0c, (=#0x21c07c4)
	mov     r1, #0x1
	strb    r1, [r0, #0x0]
.thumb
branch_2034e32: @ 2034e32 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034e6c
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2034e6c
	ldr     r0, [pc, #0xc8] @ 0x2034f0c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	mov     r3, r1
	mov     r1, #0xc0
	mov     r2, r0
	add     r3, #0x80
	mul     r2, r1
	add     r0, r3, r2
	ldr     r3, [pc, #0xb8] @ 0x2034f14, (=#0x20353b1)
	mov     r2, #0xe
	bl      Function_2031e9c
	cmp     r0, #0x0
	bne     branch_2034e6c
	ldr     r0, [pc, #0xa8] @ 0x2034f10, (=#0x2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
.thumb
branch_2034e6c: @ 2034e6c :thumb
	ldr     r0, [pc, #0xa0] @ 0x2034f10, (=#0x2100a1c)
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x1
	beq     branch_2034e7a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2034ef0
.thumb
branch_2034e7a: @ 2034e7a :thumb
	ldr     r7, [pc, #0x90] @ 0x2034f0c, (=#0x21c07c4)
	mov     r4, #0x0
	strb    r4, [r7, #0x0]
	cmp     r6, #0x0
	ble     branch_2034ec4
	mov     r5, r4
.thumb
branch_2034e86: @ 2034e86 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034ea2
	ldr     r0, [r7, #0x8]
	ldr     r1, [pc, #0x80] @ 0x2034f18, (=#0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x78] @ 0x2034f18, (=#0x66c)
	str     r2, [r0, r1]
	b       branch_2034ebc
@ 0x2034ea2

.thumb
branch_2034ea2: @ 2034ea2 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034ebc
	cmp     r4, #0x0
	bne     branch_2034ebc
	ldr     r0, [r7, #0x8]
	ldr     r1, [pc, #0x64] @ 0x2034f18, (=#0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x5c] @ 0x2034f18, (=#0x66c)
	str     r2, [r0, r1]
.thumb
branch_2034ebc: @ 2034ebc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034e86
.thumb
branch_2034ec4: @ 2034ec4 :thumb
	ldr     r0, [pc, #0x44] @ 0x2034f0c, (=#0x21c07c4)
	mov     r1, #0x6b
	ldr     r2, [r0, #0x8]
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	mov     r4, r2
	mov     r2, #0xc0
	mov     r3, r1
	add     r4, #0x80
	mul     r3, r2
	mov     r0, #0x0
	add     r1, r4, r3
	bl      Function_20350a4
	ldr     r0, [pc, #0x28] @ 0x2034f0c, (=#0x21c07c4)
	mov     r1, #0x6b
	ldr     r3, [r0, #0x8]
	lsl     r1, r1, #4
	ldrb    r2, [r3, r1]
	mov     r0, #0x1
	sub     r0, r0, r2
	strb    r0, [r3, r1]
.thumb
branch_2034ef0: @ 2034ef0 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034f00
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034f08
.thumb
branch_2034f00: @ 2034f00 :thumb
	ldr     r0, [pc, #0xc] @ 0x2034f10, (=#0x2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
.thumb
branch_2034f08: @ 2034f08 :thumb
	pop     {r3-r7,pc}
@ 0x2034f0a


.incbin "baserom/arm9.bin", 0x34f0a, 0x2034f0c - 0x2034f0a


.word 0x21c07c4 @ 0x2034f0c
.word 0x2100a1c @ 0x2034f10
.word 0x20353b1 @ 0x2034f14
.word 0x66c @ 0x2034f18
.thumb
Function_2034f1c: @ 2034f1c :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	mov     r4, #0x1
	cmp     r6, #0x1
	ble     branch_2034f5a
	ldr     r7, [pc, #0x2c] @ 0x2034f60, (=#0x21c07c4)
	mov     r5, #0x4
.thumb
branch_2034f36: @ 2034f36 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034f52
	ldr     r0, [r7, #0x8]
	add     r1, r0, r5
	ldr     r0, [pc, #0x1c] @ 0x2034f64, (=#0x66c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x3
	ble     branch_2034f52
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2034f52

.thumb
branch_2034f52: @ 2034f52 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034f36
.thumb
branch_2034f5a: @ 2034f5a :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2034f5e


.incbin "baserom/arm9.bin", 0x34f5e, 0x2034f60 - 0x2034f5e


.word 0x21c07c4 @ 0x2034f60
.word 0x66c @ 0x2034f64
.thumb
Function_2034f68: @ 2034f68 :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035024
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_203508a
	ldr     r0, [pc, #0xfc] @ 0x203508c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xfc] @ 0x2035090, (=#0x664)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2034fc0
	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_203508a
	ldr     r0, [pc, #0xf0] @ 0x2035094, (=#0x2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2034fe0
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034fb8
	mov     r0, #0x0
	bl      Function_2034cf8
.thumb
branch_2034fb8: @ 2034fb8 :thumb
	ldr     r0, [pc, #0xd8] @ 0x2035094, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x0]
	b       branch_2034fe0
@ 0x2034fc0

.thumb
branch_2034fc0: @ 2034fc0 :thumb
	ldr     r0, [pc, #0xd0] @ 0x2035094, (=#0x2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2034fda
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034fda
	mov     r0, #0x0
	bl      Function_2034cf8
	cmp     r0, #0x0
	beq     branch_203508a
.thumb
branch_2034fda: @ 2034fda :thumb
	ldr     r0, [pc, #0xb8] @ 0x2035094, (=#0x2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x0]
.thumb
branch_2034fe0: @ 2034fe0 :thumb
	ldr     r0, [pc, #0xa8] @ 0x203508c, (=#0x21c07c4)
	mov     r1, #0xc0
	ldr     r0, [r0, #0x8]
	add     r0, #0x80
	bl      0x21d14d4
	cmp     r0, #0x0
	beq     branch_203508a
	ldr     r0, [pc, #0xa0] @ 0x2035094, (=#0x2100a1c)
	mov     r1, #0x4
	mov     r4, #0x0
	strb    r1, [r0, #0x0]
	cmp     r6, #0x0
	ble     branch_203508a
	ldr     r7, [pc, #0x8c] @ 0x203508c, (=#0x21c07c4)
	mov     r5, r4
.thumb
branch_2035000: @ 2035000 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_203501a
	ldr     r0, [r7, #0x8]
	ldr     r1, [pc, #0x88] @ 0x2035098, (=#0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x80] @ 0x2035098, (=#0x66c)
	str     r2, [r0, r1]
.thumb
branch_203501a: @ 203501a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2035000
	pop     {r3-r7,pc}
@ 0x2035024

.thumb
branch_2035024: @ 2035024 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	beq     branch_2035034
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_203508a
.thumb
branch_2035034: @ 2035034 :thumb
	ldr     r0, [pc, #0x5c] @ 0x2035094, (=#0x2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_203508a
	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_203508a
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2035080
	ldr     r0, [pc, #0x3c] @ 0x203508c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6b
	mov     r2, r1
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, #0xc0
	add     r2, #0x80
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_20358c0
	ldr     r0, [pc, #0x24] @ 0x203508c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6b
	mov     r2, r1
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	add     r2, #0x80
	sub     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_20358c0
.thumb
branch_2035080: @ 2035080 :thumb
	ldr     r0, [pc, #0x10] @ 0x2035094, (=#0x2100a1c)
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	bl      Function_2034dc8
.thumb
branch_203508a: @ 203508a :thumb
	pop     {r3-r7,pc}
@ 0x203508c

.word 0x21c07c4 @ 0x203508c
.word 0x664 @ 0x2035090
.word 0x2100a1c @ 0x2035094
.word 0x66c @ 0x2035098

.incbin "baserom/arm9.bin", 0x3509c, 0x20350a4 - 0x203509c


.thumb
Function_20350a4: @ 20350a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x130] @ 0x20351dc, (=#0x21c07c4)
	mov     r5, r1
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x130] @ 0x20351e0, (=#0x668)
	ldr     r1, [r2, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r2, r0]
	cmp     r5, #0x0
	beq     branch_20350c8
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0xb
	bne     branch_20350ce
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20350ca
.thumb
branch_20350c8: @ 20350c8 :thumb
	b       branch_20351d6
@ 0x20350ca

.thumb
branch_20350ca: @ 20350ca :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_20350d6
@ 0x20350ce

.thumb
branch_20350ce: @ 20350ce :thumb
	bl      Function_2034890
	cmp     r0, #0x0
	beq     branch_20351d6
.thumb
branch_20350d6: @ 20350d6 :thumb
	ldr     r0, [pc, #0x104] @ 0x20351dc, (=#0x21c07c4)
	ldr     r1, [pc, #0x108] @ 0x20351e4, (=#0x6b2)
	ldr     r0, [r0, #0x8]
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_20350ea
	ldrb    r2, [r5, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_20351d6
.thumb
branch_20350ea: @ 20350ea :thumb
	ldr     r1, [pc, #0xf8] @ 0x20351e4, (=#0x6b2)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20351aa
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r6, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_20351d6
	.hword  0x1e70 @ sub r0, r6, #0x1
	mov     r7, r4
	str     r0, [sp, #0x0]
.thumb
branch_2035122: @ 2035122 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0xff
	bne     branch_203513a
	ldr     r0, [pc, #0xb0] @ 0x20351dc, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xb8] @ 0x20351e8, (=#0x694)
	lsl     r2, r4
	ldrh    r0, [r1, r0]
	mvn     r2, r2
	and     r2, r0
	b       branch_2035148
@ 0x203513a

.thumb
branch_203513a: @ 203513a :thumb
	ldr     r0, [pc, #0xa0] @ 0x20351dc, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xa4] @ 0x20351e8, (=#0x694)
	lsl     r2, r4
	ldrh    r0, [r1, r0]
	orr     r2, r0
.thumb
branch_2035148: @ 2035148 :thumb
	ldr     r0, [pc, #0x9c] @ 0x20351e8, (=#0x694)
	strh    r2, [r1, r0]
	ldrb    r2, [r5, #0x0]
	cmp     r2, #0xff
	bne     branch_2035156
	add     r5, r5, r6
	b       branch_203519c
@ 0x2035156

.thumb
branch_2035156: @ 2035156 :thumb
	cmp     r2, #0xe
	bne     branch_203515e
	add     r5, r5, r6
	b       branch_203519c
@ 0x203515e

.thumb
branch_203515e: @ 203515e :thumb
	ldr     r0, [pc, #0x7c] @ 0x20351dc, (=#0x21c07c4)
	ldr     r3, [r0, #0x8]
	ldr     r0, [pc, #0x88] @ 0x20351ec, (=#0x69f)
	add     r1, r3, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035176
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_2035176
	add     r5, r5, r6
	b       branch_203519c
@ 0x2035176

.thumb
branch_2035176: @ 2035176 :thumb
	ldr     r0, [pc, #0x78] @ 0x20351f0, (=#0x51c)
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r3, r0
	mov     r3, #0x55
	lsl     r3, r3, #4
	ldr     r2, [sp, #0x0]
	add     r0, r0, r7
	mov     r1, r5
	add     r3, r4, r3
	bl      Function_2032198
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r5, r5, r0
	ldr     r0, [pc, #0x48] @ 0x20351dc, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	add     r2, r0, r4
	ldr     r0, [pc, #0x50] @ 0x20351ec, (=#0x69f)
	strb    r1, [r2, r0]
.thumb
branch_203519c: @ 203519c :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0xc
	cmp     r4, r0
	blt     branch_2035122
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20351aa

.thumb
branch_20351aa: @ 20351aa :thumb
	ldr     r1, [pc, #0x30] @ 0x20351dc, (=#0x21c07c4)
	ldrb    r3, [r5, #0x1]
	ldr     r2, [r1, #0x8]
	ldr     r0, [pc, #0x34] @ 0x20351e8, (=#0x694)
	strh    r3, [r2, r0]
	ldr     r3, [r1, #0x8]
	ldrh    r2, [r3, r0]
	lsl     r2, r2, #8
	strh    r2, [r3, r0]
	ldr     r4, [r1, #0x8]
	ldrb    r2, [r5, #0x2]
	ldrh    r3, [r4, r0]
	add     r2, r3, r2
	strh    r2, [r4, r0]
	ldr     r0, [r1, #0x8]
	ldr     r3, [pc, #0x28] @ 0x20351f4, (=#0x4a4)
	ldrb    r2, [r5, #0x3]
	add     r0, r0, r3
	add     r1, r5, #0x4
	add     r3, #0xc0
	bl      Function_2032198
.thumb
branch_20351d6: @ 20351d6 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20351da


.incbin "baserom/arm9.bin", 0x351da, 0x20351dc - 0x20351da


.word 0x21c07c4 @ 0x20351dc
.word 0x668 @ 0x20351e0
.word 0x6b2 @ 0x20351e4
.word 0x694 @ 0x20351e8
.word 0x69f @ 0x20351ec
.word 0x51c @ 0x20351f0
.word 0x4a4 @ 0x20351f4

.incbin "baserom/arm9.bin", 0x351f8, 0x2035200 - 0x20351f8


.thumb
Function_2035200: @ 2035200 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0xac] @ 0x20352b0, (=#0x21c07c4)
	mov     r5, r0
	ldr     r0, [r3, #0x8]
	ldr     r2, [pc, #0xa8] @ 0x20352b4, (=#0x66c)
	mov     r4, r1
	add     r1, r0, r2
	lsl     r0, r5, #2
	ldr     r6, [r1, r0]
	.hword  0x1e76 @ sub r6, r6, #0x1
	str     r6, [r1, r0]
	cmp     r4, #0x0
	beq     branch_20352ae
	ldr     r0, [r3, #0x8]
	add     r2, #0x33
	add     r0, r0, r2
	ldrb    r1, [r0, r5]
	cmp     r1, #0x0
	beq     branch_203522e
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_20352ae
.thumb
branch_203522e: @ 203522e :thumb
	mov     r1, #0x0
	strb    r1, [r0, r5]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035286
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r6, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2035276
	ldr     r0, [pc, #0x50] @ 0x20352b0, (=#0x21c07c4)
	mov     r3, #0x4b
	ldr     r0, [r0, #0x8]
	lsl     r3, r3, #4
	add     r1, r0, r3
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	mov     r1, r4
	mov     r2, r6
	add     r3, #0xf9
	bl      Function_2032198
.thumb
branch_2035276: @ 2035276 :thumb
	ldr     r0, [pc, #0x38] @ 0x20352b0, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x3c] @ 0x20352b8, (=#0x697)
	add     r1, r1, r0
	ldrb    r0, [r1, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r5]
	pop     {r4-r6,pc}
@ 0x2035286

.thumb
branch_2035286: @ 2035286 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_20356a0
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_20352ae
	ldr     r0, [pc, #0x18] @ 0x20352b0, (=#0x21c07c4)
	ldr     r3, [pc, #0x20] @ 0x20352bc, (=#0x51c)
	ldr     r0, [r0, #0x8]
	mov     r2, #0xb
	add     r1, r0, r3
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	add     r1, r4, #0x1
	add     r3, #0x96
	bl      Function_2032198
.thumb
branch_20352ae: @ 20352ae :thumb
	pop     {r4-r6,pc}
@ 0x20352b0

.word 0x21c07c4 @ 0x20352b0
.word 0x66c @ 0x20352b4
.word 0x697 @ 0x20352b8
.word 0x51c @ 0x20352bc

.incbin "baserom/arm9.bin", 0x352c0, 0x2035394 - 0x20352c0


.thumb
Function_2035394: @ 2035394 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_20353a4
	ldr     r0, [pc, #0x10] @ 0x20353ac, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	pop     {r3,pc}
@ 0x20353a4

.thumb
branch_20353a4: @ 20353a4 :thumb
	bl      Function_2022974
	pop     {r3,pc}
@ 0x20353aa


.incbin "baserom/arm9.bin", 0x353aa, 0x20353ac - 0x20353aa


.word 0x2100a1c @ 0x20353ac

.incbin "baserom/arm9.bin", 0x353b0, 0x20353cc - 0x20353b0


.thumb
Function_20353cc: @ 20353cc :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x150] @ 0x2035520, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_20353e2
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20353e4
.thumb
branch_20353e2: @ 20353e2 :thumb
	b       branch_203551c
@ 0x20353e4

.thumb
branch_20353e4: @ 20353e4 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r4, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2035456
	ldr     r0, [pc, #0x11c] @ 0x2035524, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x2
	beq     branch_2035414
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_2035456
.thumb
branch_2035414: @ 2035414 :thumb
	ldr     r0, [pc, #0x10c] @ 0x2035524, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, #0x1
	bl      Function_2035394
	ldr     r0, [pc, #0xfc] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [pc, #0x100] @ 0x2035528, (=#0x6af)
	ldr     r2, [r0, #0x8]
	mov     r0, #0x0
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #6
	add     r1, r2, r1
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	bl      Function_2035200
	ldr     r2, [pc, #0xe4] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [pc, #0xec] @ 0x2035528, (=#0x6af)
	ldr     r4, [r2, #0x8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #0x8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	pop     {r4,pc}
@ 0x2035456

.thumb
branch_2035456: @ 2035456 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_203551c
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035470
	bl      Function_203608c
	pop     {r4,pc}
@ 0x2035470

.thumb
branch_2035470: @ 2035470 :thumb
	ldr     r0, [pc, #0xb0] @ 0x2035524, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x2
	beq     branch_203547e
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_203551c
.thumb
branch_203547e: @ 203547e :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_20354d2
	ldr     r0, [pc, #0x9c] @ 0x2035524, (=#0x2100a1c)
	ldr     r3, [pc, #0xa0] @ 0x203552c, (=#0x2035395)
	ldrb    r1, [r0, #0x1]
	mov     r2, #0xe
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldr     r0, [pc, #0x8c] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x90] @ 0x2035528, (=#0x6af)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #6
	add     r0, r1, r0
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	bl      Function_2031e9c
	cmp     r0, #0x0
	bne     branch_20354b4
	ldr     r0, [pc, #0x78] @ 0x2035524, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x1]
	pop     {r4,pc}
@ 0x20354b4

.thumb
branch_20354b4: @ 20354b4 :thumb
	ldr     r2, [pc, #0x68] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [pc, #0x70] @ 0x2035528, (=#0x6af)
	ldr     r4, [r2, #0x8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #0x8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	pop     {r4,pc}
@ 0x20354d2

.thumb
branch_20354d2: @ 20354d2 :thumb
	bl      Function_20318ec
	ldr     r1, [pc, #0x58] @ 0x2035530, (=#0xfffe)
	tst     r0, r1
	beq     branch_203551c
	ldr     r0, [pc, #0x44] @ 0x2035524, (=#0x2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, #0x1
	bl      Function_2035394
	ldr     r0, [pc, #0x34] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [pc, #0x38] @ 0x2035528, (=#0x6af)
	ldr     r2, [r0, #0x8]
	mov     r0, #0x0
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #6
	add     r1, r2, r1
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	bl      Function_2035200
	ldr     r2, [pc, #0x1c] @ 0x2035520, (=#0x21c07c4)
	ldr     r1, [pc, #0x24] @ 0x2035528, (=#0x6af)
	ldr     r4, [r2, #0x8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #0x8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
.thumb
branch_203551c: @ 203551c :thumb
	pop     {r4,pc}
@ 0x203551e


.incbin "baserom/arm9.bin", 0x3551e, 0x2035520 - 0x203551e


.word 0x21c07c4 @ 0x2035520
.word 0x2100a1c @ 0x2035524
.word 0x6af @ 0x2035528
.word 0x2035395 @ 0x203552c
.word 0xfffe @ 0x2035530
.thumb
Function_2035534: @ 2035534 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x120] @ 0x2035658, (=#0x21c07c4)
	mov     r2, #0x66
	ldr     r5, [r7, #0x8]
	lsl     r2, r2, #4
	ldrb    r0, [r5, r2]
	mov     r6, #0x0
	mov     r4, r6
	cmp     r0, #0x0
	beq     branch_2035552
	.hword  0x1f11 @ sub r1, r2, #0x4
	ldrh    r1, [r5, r1]
	mov     r3, #0xf0
	tst     r3, r1
	bne     branch_2035554
.thumb
branch_2035552: @ 2035552 :thumb
	b       branch_2035656
@ 0x2035554

.thumb
branch_2035554: @ 2035554 :thumb
	cmp     r0, #0x2
	bne     branch_2035592
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_2035566
	mov     r0, #0x10
	orr     r0, r6
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_2035566: @ 2035566 :thumb
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_2035574
	mov     r0, #0x20
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_2035574: @ 2035574 :thumb
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_2035582
	mov     r0, #0x80
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
.thumb
branch_2035582: @ 2035582 :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2035640
	mov     r0, #0x40
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_2035640
@ 0x2035592

.thumb
branch_2035592: @ 2035592 :thumb
	add     r0, r2, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_20355b4
	mov     r4, r0
	add     r0, r2, #0x1
	ldsb    r0, [r5, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r2, #0x1
	strb    r1, [r5, r0]
	ldr     r1, [r7, #0x8]
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	bge     branch_2035640
	add     r0, r2, #0x2
	strh    r6, [r1, r0]
	b       branch_2035640
@ 0x20355b4

.thumb
branch_20355b4: @ 20355b4 :thumb
	mov     r0, r2
	sub     r0, #0x34
	add     r6, r5, r0
	sub     r2, #0x34
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0xc]
	ldr     r2, [r5, r2]
	ldr     r3, [r6, #0x4]
	blx     Function_20e1f1c
	mov     r3, r0
	mov     r2, r1
	ldr     r0, [r6, #0x10]
	ldr     r1, [r6, #0x14]
	add     r0, r0, r3
	adc     r1, r2
	ldr     r2, [pc, #0x84] @ 0x203565c, (=#0x62c)
	str     r0, [r5, r2]
	mov     r2, #0x0
	str     r1, [r6, #0x4]
	lsr     r0, r1, #30
	lsl     r1, r2, #2
	orr     r1, r0
	cmp     r1, #0x3
	bhi     branch_2035608
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	mov     r4, #0x20
	b       branch_2035608
@ 0x20355fe


.incbin "baserom/arm9.bin", 0x355fe, 0x2035608 - 0x20355fe


.thumb
branch_2035608: @ 2035608 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2035658, (=#0x21c07c4)
	ldr     r5, [r0, #0x8]
	ldr     r0, [pc, #0x4c] @ 0x203565c, (=#0x62c)
	add     r6, r5, r0
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0xc]
	ldr     r2, [r6, #0x0]
	ldr     r3, [r6, #0x4]
	blx     Function_20e1f1c
	ldr     r3, [r6, #0x10]
	ldr     r2, [r6, #0x14]
	add     r0, r3, r0
	adc     r2, r1
	ldr     r1, [pc, #0x34] @ 0x203565c, (=#0x62c)
	mov     r3, #0x0
	str     r0, [r5, r1]
	str     r2, [r6, #0x4]
	lsr     r0, r2, #28
	lsl     r2, r3, #4
	orr     r2, r0
	mov     r0, r1
	add     r0, #0x35
	strb    r2, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x2035658, (=#0x21c07c4)
	add     r1, #0x36
	ldr     r0, [r0, #0x8]
	strh    r4, [r0, r1]
.thumb
branch_2035640: @ 2035640 :thumb
	ldr     r2, [pc, #0x14] @ 0x2035658, (=#0x21c07c4)
	ldr     r1, [pc, #0x1c] @ 0x2035660, (=#0x65c)
	ldr     r5, [r2, #0x8]
	mov     r0, #0xf0
	ldrh    r3, [r5, r1]
	bic     r3, r0
	strh    r3, [r5, r1]
	ldr     r2, [r2, #0x8]
	ldrh    r0, [r2, r1]
	add     r0, r0, r4
	strh    r0, [r2, r1]
.thumb
branch_2035656: @ 2035656 :thumb
	pop     {r3-r7,pc}
@ 0x2035658

.word 0x21c07c4 @ 0x2035658
.word 0x62c @ 0x203565c
.word 0x65c @ 0x2035660

.incbin "baserom/arm9.bin", 0x35664, 0x20356a0 - 0x2035664


.thumb
Function_20356a0: @ 20356a0 :thumb
	push    {r4-r7}
	ldr     r4, [pc, #0x7c] @ 0x2035720, (=#0x21c07c4)
	lsl     r6, r1, #1
	ldr     r2, [r4, #0x8]
	mov     r5, #0x0
	add     r3, r2, r6
	ldr     r2, [pc, #0x74] @ 0x2035724, (=#0x644)
	strh    r5, [r3, r2]
	ldrb    r5, [r0, #0x0]
	mov     r3, #0x10
	mov     r7, r5
	and     r7, r3
	cmp     r7, #0x10
	bne     branch_2035718
	mov     r7, #0xc
	and     r5, r7
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	bne     branch_20356d4
	ldr     r3, [r4, #0x8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x40
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706
@ 0x20356d4

.thumb
branch_20356d4: @ 20356d4 :thumb
	cmp     r5, #0x4
	bne     branch_20356e6
	ldr     r3, [r4, #0x8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x80
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706
@ 0x20356e6

.thumb
branch_20356e6: @ 20356e6 :thumb
	cmp     r5, #0x8
	bne     branch_20356f8
	ldr     r3, [r4, #0x8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x20
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706
@ 0x20356f8

.thumb
branch_20356f8: @ 20356f8 :thumb
	cmp     r5, #0xc
	bne     branch_2035706
	ldr     r4, [r4, #0x8]
	add     r4, r4, r2
	ldrh    r2, [r4, r6]
	orr     r2, r3
	strh    r2, [r4, r6]
.thumb
branch_2035706: @ 2035706 :thumb
	ldrb    r0, [r0, #0x0]
	asr     r2, r0, #5
	mov     r0, #0x7
	and     r2, r0
	ldr     r0, [pc, #0x10] @ 0x2035720, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	add     r1, r0, r1
	ldr     r0, [pc, #0x10] @ 0x2035728, (=#0x654)
	strb    r2, [r1, r0]
.thumb
branch_2035718: @ 2035718 :thumb
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x203571e


.incbin "baserom/arm9.bin", 0x3571e, 0x2035720 - 0x203571e


.word 0x21c07c4 @ 0x2035720
.word 0x644 @ 0x2035724
.word 0x654 @ 0x2035728

.incbin "baserom/arm9.bin", 0x3572c, 0x2035730 - 0x203572c


.thumb
Function_2035730: @ 2035730 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa4] @ 0x20357dc, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xa4] @ 0x20357e0, (=#0x65e)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035744
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035744

.thumb
branch_2035744: @ 2035744 :thumb
	bl      Function_2035ee0
	cmp     r0, #0x0
	bne     branch_2035750
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035750

.thumb
branch_2035750: @ 2035750 :thumb
	ldr     r0, [pc, #0x88] @ 0x20357dc, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x8c] @ 0x20357e4, (=#0x6b1)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_2035760
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r2, r0]
.thumb
branch_2035760: @ 2035760 :thumb
	ldr     r1, [pc, #0x78] @ 0x20357dc, (=#0x21c07c4)
	ldr     r0, [pc, #0x84] @ 0x20357e8, (=#0x65c)
	ldr     r2, [r1, #0x8]
	mov     r3, #0x40
	ldrh    r2, [r2, r0]
	tst     r3, r2
	beq     branch_2035780
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x10
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #0x8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6
@ 0x2035780

.thumb
branch_2035780: @ 2035780 :thumb
	mov     r3, #0x80
	tst     r3, r2
	beq     branch_2035798
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x14
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #0x8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6
@ 0x2035798

.thumb
branch_2035798: @ 2035798 :thumb
	mov     r3, #0x20
	tst     r3, r2
	beq     branch_20357b0
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x18
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #0x8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6
@ 0x20357b0

.thumb
branch_20357b0: @ 20357b0 :thumb
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_20357c6
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x1c
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #0x8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
.thumb
branch_20357c6: @ 20357c6 :thumb
	ldr     r0, [pc, #0x14] @ 0x20357dc, (=#0x21c07c4)
	ldrb    r2, [r4, #0x0]
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x20357ec, (=#0x65f)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #5
	orr     r0, r2
	strb    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20357da


.incbin "baserom/arm9.bin", 0x357da, 0x20357dc - 0x20357da


.word 0x21c07c4 @ 0x20357dc
.word 0x65e @ 0x20357e0
.word 0x6b1 @ 0x20357e4
.word 0x65c @ 0x20357e8
.word 0x65f @ 0x20357ec
.thumb
Function_20357f0: @ 20357f0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r5, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	ldr     r0, [pc, #0xa0] @ 0x20358b4, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xa0] @ 0x20358b8, (=#0x6b4)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035820
	mov     r0, #0x0
	b       branch_2035822
@ 0x2035820

.thumb
branch_2035820: @ 2035820 :thumb
	mov     r0, #0x1
.thumb
branch_2035822: @ 2035822 :thumb
	strb    r0, [r4, #0x0]
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2035832
	mov     r0, r4
	bl      Function_2035730
.thumb
branch_2035832: @ 2035832 :thumb
	ldr     r1, [pc, #0x80] @ 0x20358b4, (=#0x21c07c4)
	ldr     r0, [pc, #0x80] @ 0x20358b8, (=#0x6b4)
	ldr     r2, [r1, #0x8]
	mov     r3, #0x0
	strb    r3, [r2, r0]
	mov     r0, #0x16
	ldr     r1, [r1, #0x8]
	lsl     r0, r0, #6
	add     r0, r1, r0
	bl      Function_20322f8
	cmp     r0, #0x0
	beq     branch_2035860
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x2
	bne     branch_20358ac
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2035860

.thumb
branch_2035860: @ 2035860 :thumb
	.hword  0x1e68 @ sub r0, r5, #0x1
	str     r0, [sp, #0x4]
	add     r0, r4, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x20358b4, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	add     r1, sp, #0x0
	bl      Function_2032574
	cmp     r0, #0x0
	bne     branch_2035888
	ldr     r0, [pc, #0x34] @ 0x20358b4, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x30] @ 0x20358b8, (=#0x6b4)
	strb    r2, [r1, r0]
.thumb
branch_2035888: @ 2035888 :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20358ac
	ldr     r2, [pc, #0x20] @ 0x20358b4, (=#0x21c07c4)
	ldr     r1, [pc, #0x28] @ 0x20358bc, (=#0x696)
	ldr     r3, [r2, #0x8]
	ldrb    r0, [r3, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r3, r1]
	ldr     r2, [r2, #0x8]
	ldrb    r0, [r4, #0x0]
	ldrb    r1, [r2, r1]
	lsl     r2, r1, #4
	mov     r1, #0xf0
	and     r1, r2
	orr     r0, r1
	strb    r0, [r4, #0x0]
.thumb
branch_20358ac: @ 20358ac :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x20358b2


.incbin "baserom/arm9.bin", 0x358b2, 0x20358b4 - 0x20358b2


.word 0x21c07c4 @ 0x20358b4
.word 0x6b4 @ 0x20358b8
.word 0x696 @ 0x20358bc
.thumb
Function_20358c0: @ 20358c0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xb
	strb    r0, [r4, #0x0]
	ldr     r0, [pc, #0x64] @ 0x2035930, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x64] @ 0x2035934, (=#0x6b5)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_20358da
	mov     r0, #0x0
	b       branch_20358dc
@ 0x20358da

.thumb
branch_20358da: @ 20358da :thumb
	mov     r0, #0x1
.thumb
branch_20358dc: @ 20358dc :thumb
	strb    r0, [r4, #0x1]
	bl      Function_20318ec
	asr     r1, r0, #8
	strb    r1, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, #0xbb
	str     r0, [sp, #0x4]
	add     r0, r4, #0x5
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2035930, (=#0x21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #0x8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r1, sp, #0x0
	bl      Function_2032574
	cmp     r0, #0x0
	beq     branch_203591c
	ldr     r0, [pc, #0x28] @ 0x2035930, (=#0x21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x24] @ 0x2035934, (=#0x6b5)
	strb    r2, [r1, r0]
	ldr     r1, [sp, #0x4]
	mov     r0, #0xbb
	sub     r0, r0, r1
	add     sp, #0x8
	strb    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x203591c

.thumb
branch_203591c: @ 203591c :thumb
	ldr     r0, [pc, #0x10] @ 0x2035930, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x10] @ 0x2035934, (=#0x6b5)
	strb    r2, [r1, r0]
	mov     r0, #0xbb
	strb    r0, [r4, #0x4]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x203592e


.incbin "baserom/arm9.bin", 0x3592e, 0x2035930 - 0x203592e


.word 0x21c07c4 @ 0x2035930
.word 0x6b5 @ 0x2035934

.incbin "baserom/arm9.bin", 0x35938, 0x203594c - 0x2035938


.thumb
Function_203594c: @ 203594c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x24] @ 0x2035974, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x24] @ 0x2035978, (=#0x6bc)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_203595e
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203595e

.thumb
branch_203595e: @ 203595e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r2, r0]
	blx     Division
	cmp     r1, #0x0
	bne     branch_203596e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203596e

.thumb
branch_203596e: @ 203596e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2035972


.incbin "baserom/arm9.bin", 0x35972, 0x2035974 - 0x2035972


.word 0x21c07c4 @ 0x2035974
.word 0x6bc @ 0x2035978

.incbin "baserom/arm9.bin", 0x3597c, 0x20359dc - 0x203597c


.thumb
Function_20359dc: @ 20359dc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035a00
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2035a00
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035a00

.thumb
branch_2035a00: @ 2035a00 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2035a38, (=#0x21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #0x8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_2035a24
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2035a24

.thumb
branch_2035a24: @ 2035a24 :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_2035a30
	bl      Function_20363bc
.thumb
branch_2035a30: @ 2035a30 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035a36


.incbin "baserom/arm9.bin", 0x35a36, 0x2035a38 - 0x2035a36


.word 0x21c07c4 @ 0x2035a38

.incbin "baserom/arm9.bin", 0x35a3c, 0x2035ac4 - 0x2035a3c


.thumb
Function_2035ac4: @ 2035ac4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2035ae0
	bl      Function_20363bc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035ae0

.thumb
branch_2035ae0: @ 2035ae0 :thumb
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035af8
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2035af8
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035af8

.thumb
branch_2035af8: @ 2035af8 :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035b0e
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20359dc
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035b0e

.thumb
branch_2035b0e: @ 2035b0e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2035b44, (=#0x21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #0x8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_2035b32
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2035b32

.thumb
branch_2035b32: @ 2035b32 :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_2035b3e
	bl      Function_20363bc
.thumb
branch_2035b3e: @ 2035b3e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035b44

.word 0x21c07c4 @ 0x2035b44
.thumb
Function_2035b48: @ 2035b48 :thumb
	ldr     r3, [pc, #0x4] @ 0x2035b50, (=#0x2035ac5)
	mov     r2, #0x0
	bx      r3
@ 0x2035b4e


.incbin "baserom/arm9.bin", 0x35b4e, 0x2035b50 - 0x2035b4e


.word 0x2035ac5 @ 0x2035b50

.incbin "baserom/arm9.bin", 0x35b54, 0x2035b6c - 0x2035b54


.thumb
Function_2035b6c: @ 2035b6c :thumb
	push    {r4,lr}
	ldr     r4, [sp, #0x8]
	bl      Function_20327fc
	mov     r0, #0xee
	strb    r0, [r4, #0xa]
	ldr     r0, [pc, #0x8] @ 0x2035b84, (=#0xffff)
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2035b84

.word 0xffff @ 0x2035b84
.thumb
Function_2035b88: @ 2035b88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r4, r3
	bl      Function_203226c
	cmp     r0, #0x0
	beq     branch_2035c98
.thumb
branch_2035b9c: @ 2035b9c :thumb
	ldrb    r7, [r4, #0xa]
	cmp     r7, #0xee
	bne     branch_2035bae
	mov     r0, r5
	bl      Function_2032210
	mov     r7, r0
	cmp     r7, #0xee
	beq     branch_2035c8e
.thumb
branch_2035bae: @ 2035bae :thumb
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	strb    r7, [r4, #0xa]
	ldrh    r6, [r4, #0x8]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xe0] @ 0x2035c9c, (=#0xffff)
	cmp     r6, r0
	bne     branch_2035c02
	mov     r0, r7
	bl      Function_2032868
	mov     r6, r0
	ldr     r0, [pc, #0xd8] @ 0x2035ca0, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xd8] @ 0x2035ca4, (=#0x6b9)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035c98
	ldr     r0, [pc, #0xc8] @ 0x2035c9c, (=#0xffff)
	cmp     r6, r0
	bne     branch_2035c00
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, #0x1
	bge     branch_2035bea
	ldr     r0, [sp, #0x10]
	add     sp, #0x14
	strh    r0, [r5, #0x4]
	pop     {r4-r7,pc}
@ 0x2035bea

.thumb
branch_2035bea: @ 2035bea :thumb
	mov     r0, r5
	bl      Function_2032210
	lsl     r6, r0, #8
	mov     r0, r5
	bl      Function_2032210
	add     r6, r6, r0
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	str     r0, [sp, #0x10]
.thumb
branch_2035c00: @ 2035c00 :thumb
	strh    r6, [r4, #0x8]
.thumb
branch_2035c02: @ 2035c02 :thumb
	mov     r0, r7
	bl      Function_20328d0
	cmp     r0, #0x0
	beq     branch_2035c5e
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2035c1e
	ldrh    r2, [r4, #0x8]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	bl      Function_203290c
	str     r0, [r4, #0x4]
.thumb
branch_2035c1e: @ 2035c1e :thumb
	ldr     r2, [r4, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	sub     r2, r6, r2
	bl      Function_20321f4
	ldr     r2, [r4, #0x4]
	str     r0, [sp, #0xc]
	cmp     r2, #0x0
	beq     branch_2035c3e
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	blx     Function_20c4db0
.thumb
branch_2035c3e: @ 2035c3e :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	cmp     r0, r6
	blt     branch_2035c8e
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [r4, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_2035b6c
	cmp     r7, #0x11
	beq     branch_2035c98
	b       branch_2035c8e
@ 0x2035c5e

.thumb
branch_2035c5e: @ 2035c5e :thumb
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, r6
	blt     branch_2035c86
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	bl      Function_20321f4
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r1, r7
	mov     r2, r6
	str     r4, [sp, #0x0]
	bl      Function_2035b6c
	cmp     r7, #0x11
	beq     branch_2035c98
	b       branch_2035c8e
@ 0x2035c86

.thumb
branch_2035c86: @ 2035c86 :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0x14
	strh    r0, [r5, #0x4]
	pop     {r4-r7,pc}
@ 0x2035c8e

.thumb
branch_2035c8e: @ 2035c8e :thumb
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, #0x0
	bne     branch_2035b9c
.thumb
branch_2035c98: @ 2035c98 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2035c9c

.word 0xffff @ 0x2035c9c
.word 0x21c07c4 @ 0x2035ca0
.word 0x6b9 @ 0x2035ca4
.thumb
Function_2035ca8: @ 2035ca8 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x40] @ 0x2035cec, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2035cea
	ldr     r0, [pc, #0x3c] @ 0x2035cf0, (=#0x6bb)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035cea
	ldr     r0, [pc, #0x38] @ 0x2035cf4, (=#0x4a4)
	add     r0, r1, r0
	bl      Function_20322d0
	ldr     r0, [pc, #0x28] @ 0x2035cec, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x2035cf4, (=#0x4a4)
	add     r0, r1, r0
	bl      Function_203226c
	cmp     r0, #0x0
	ble     branch_2035cea
	ldr     r0, [pc, #0x18] @ 0x2035cec, (=#0x21c07c4)
	mov     r3, #0x62
	ldr     r4, [r0, #0x8]
	ldr     r2, [pc, #0x18] @ 0x2035cf4, (=#0x4a4)
	lsl     r3, r3, #4
	add     r0, r4, r2
	sub     r2, #0x10
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r3, r4, r3
	bl      Function_2035b88
.thumb
branch_2035cea: @ 2035cea :thumb
	pop     {r4,pc}
@ 0x2035cec

.word 0x21c07c4 @ 0x2035cec
.word 0x6bb @ 0x2035cf0
.word 0x4a4 @ 0x2035cf4
.thumb
Function_2035cf8: @ 2035cf8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x6c] @ 0x2035d68, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2035d64
	ldr     r0, [pc, #0x68] @ 0x2035d6c, (=#0x6bb)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035d64
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2035d64
	ldr     r7, [pc, #0x44] @ 0x2035d68, (=#0x21c07c4)
	mov     r5, r4
.thumb
branch_2035d24: @ 2035d24 :thumb
	ldr     r1, [r7, #0x8]
	ldr     r0, [pc, #0x48] @ 0x2035d70, (=#0x51c)
	add     r0, r1, r0
	add     r0, r0, r5
	bl      Function_20322d0
	ldr     r1, [r7, #0x8]
	ldr     r0, [pc, #0x3c] @ 0x2035d70, (=#0x51c)
	add     r0, r1, r0
	add     r0, r0, r5
	bl      Function_203226c
	cmp     r0, #0x0
	ble     branch_2035d5a
	mov     r3, #0x17
	ldr     r6, [r7, #0x8]
	ldr     r0, [pc, #0x28] @ 0x2035d70, (=#0x51c)
	ldr     r2, [pc, #0x2c] @ 0x2035d74, (=#0x494)
	lsl     r3, r3, #6
	add     r0, r6, r0
	add     r3, r6, r3
	ldr     r2, [r6, r2]
	add     r0, r0, r5
	mov     r1, r4
	add     r3, r3, r5
	bl      Function_2035b88
.thumb
branch_2035d5a: @ 2035d5a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_2035d24
.thumb
branch_2035d64: @ 2035d64 :thumb
	pop     {r3-r7,pc}
@ 0x2035d66


.incbin "baserom/arm9.bin", 0x35d66, 0x2035d68 - 0x2035d66


.word 0x21c07c4 @ 0x2035d68
.word 0x6bb @ 0x2035d6c
.word 0x51c @ 0x2035d70
.word 0x494 @ 0x2035d74
.thumb
Function_2035d78: @ 2035d78 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x8c] @ 0x2035e0c, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_2035d88
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035d88

.thumb
branch_2035d88: @ 2035d88 :thumb
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035db6
	ldr     r0, [pc, #0x74] @ 0x2035e0c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x74] @ 0x2035e10, (=#0x6b7)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035db2
	blx 0x21d99d4
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x1
	mov     r1, r0
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2035e08
.thumb
branch_2035db2: @ 2035db2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035db6

.thumb
branch_2035db6: @ 2035db6 :thumb
	bl      Function_2035e38
	cmp     r0, #0x0
	bne     branch_2035dc2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035dc2

.thumb
branch_2035dc2: @ 2035dc2 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	beq     branch_2035dce
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2035dce

.thumb
branch_2035dce: @ 2035dce :thumb
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_2035dda
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2035dda

.thumb
branch_2035dda: @ 2035dda :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2035df4
	bl      Function_20318ec
	mov     r1, #0x1
	mov     r2, r1
	lsl     r2, r4
	tst     r0, r2
	beq     branch_2035e06
	mov     r0, r1
	pop     {r4,pc}
@ 0x2035df4

.thumb
branch_2035df4: @ 2035df4 :thumb
	ldr     r0, [pc, #0x14] @ 0x2035e0c, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x18] @ 0x2035e14, (=#0x694)
	ldrh    r2, [r1, r0]
	mov     r0, #0x1
	mov     r1, r0
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2035e08
.thumb
branch_2035e06: @ 2035e06 :thumb
	mov     r0, #0x0
.thumb
branch_2035e08: @ 2035e08 :thumb
	pop     {r4,pc}
@ 0x2035e0a


.incbin "baserom/arm9.bin", 0x35e0a, 0x2035e0c - 0x2035e0a


.word 0x21c07c4 @ 0x2035e0c
.word 0x6b7 @ 0x2035e10
.word 0x694 @ 0x2035e14
.thumb
Function_2035e18: @ 2035e18 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x0
	mov     r5, r4
.thumb
branch_2035e1e: @ 2035e1e :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2035e2c
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2035e2c: @ 2035e2c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_2035e1e
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2035e36


.incbin "baserom/arm9.bin", 0x35e36, 0x2035e38 - 0x2035e36


.thumb
Function_2035e38: @ 2035e38 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x2035e58, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2035e52
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035e52
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2035e52

.thumb
branch_2035e52: @ 2035e52 :thumb
	bl      Function_2033e1c
	pop     {r3,pc}
@ 0x2035e58

.word 0x21c07c4 @ 0x2035e58

.incbin "baserom/arm9.bin", 0x35e5c, 0x2035e70 - 0x2035e5c


.thumb
Function_2035e70: @ 2035e70 :thumb
	ldr     r1, [pc, #0x8] @ 0x2035e7c, (=#0x21c07c4)
	ldr     r1, [r1, #0x8]
	add     r1, r1, r0
	ldr     r0, [pc, #0x8] @ 0x2035e80, (=#0x654)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x2035e7c

.word 0x21c07c4 @ 0x2035e7c
.word 0x654 @ 0x2035e80
.thumb
Function_2035e84: @ 2035e84 :thumb
	ldr     r1, [pc, #0x18] @ 0x2035ea0, (=#0x21c07c4)
	ldr     r2, [r1, #0x8]
	cmp     r2, #0x0
	bne     branch_2035e90
	mov     r0, #0x0
	bx      lr
@ 0x2035e90

.thumb
branch_2035e90: @ 2035e90 :thumb
	ldr     r1, [pc, #0x10] @ 0x2035ea4, (=#0x644)
	add     r3, r2, r1
	lsl     r2, r0, #1
	ldrh    r0, [r3, r2]
	mov     r1, #0x0
	strh    r1, [r3, r2]
	bx      lr
@ 0x2035e9e


.incbin "baserom/arm9.bin", 0x35e9e, 0x2035ea0 - 0x2035e9e


.word 0x21c07c4 @ 0x2035ea0
.word 0x644 @ 0x2035ea4

.incbin "baserom/arm9.bin", 0x35ea8, 0x2035ee0 - 0x2035ea8


.thumb
Function_2035ee0: @ 2035ee0 :thumb
	ldr     r0, [pc, #0x14] @ 0x2035ef8, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2035ef4
	ldr     r0, [pc, #0x10] @ 0x2035efc, (=#0x65c)
	ldrh    r1, [r1, r0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	and     r0, r1
	bx      lr
@ 0x2035ef4

.thumb
branch_2035ef4: @ 2035ef4 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2035ef8

.word 0x21c07c4 @ 0x2035ef8
.word 0x65c @ 0x2035efc

.incbin "baserom/arm9.bin", 0x35f00, 0x2035f84 - 0x2035f00


.thumb
Function_2035f84: @ 2035f84 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x74] @ 0x2035ffc, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_2035ff8
	ldr     r1, [pc, #0x70] @ 0x2036000, (=#0x6ab)
	ldrb    r0, [r2, r1]
	cmp     r0, #0x1
	beq     branch_2035f9c
	cmp     r0, #0x3
	beq     branch_2035fd4
	pop     {r3,pc}
@ 0x2035f9c

.thumb
branch_2035f9c: @ 2035f9c :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035fb4
	ldr     r1, [pc, #0x54] @ 0x2035ffc, (=#0x21c07c4)
	mov     r0, #0xb
	ldr     r2, [r1, #0x8]
	ldr     r1, [pc, #0x58] @ 0x2036004, (=#0x6ac)
	add     r1, r2, r1
	bl      Function_20360d0
	b       branch_2035fc4
@ 0x2035fb4

.thumb
branch_2035fb4: @ 2035fb4 :thumb
	ldr     r1, [pc, #0x44] @ 0x2035ffc, (=#0x21c07c4)
	mov     r0, #0xb
	ldr     r2, [r1, #0x8]
	ldr     r1, [pc, #0x48] @ 0x2036004, (=#0x6ac)
	add     r1, r2, r1
	mov     r2, #0x1
	bl      Function_2035ac4
.thumb
branch_2035fc4: @ 2035fc4 :thumb
	cmp     r0, #0x0
	beq     branch_2035ff8
	ldr     r0, [pc, #0x30] @ 0x2035ffc, (=#0x21c07c4)
	mov     r2, #0x2
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x30] @ 0x2036000, (=#0x6ab)
	strb    r2, [r1, r0]
	pop     {r3,pc}
@ 0x2035fd4

.thumb
branch_2035fd4: @ 2035fd4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r0, #0xc
	add     r1, r2, r1
	bl      Function_20360d0
	cmp     r0, #0x0
	beq     branch_2035ff8
	ldr     r0, [pc, #0x18] @ 0x2035ffc, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x2036004, (=#0x6ac)
	ldrb    r0, [r1, r0]
	bl      Function_2034848
	ldr     r0, [pc, #0xc] @ 0x2035ffc, (=#0x21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x8] @ 0x2036000, (=#0x6ab)
	strb    r2, [r1, r0]
.thumb
branch_2035ff8: @ 2035ff8 :thumb
	pop     {r3,pc}
@ 0x2035ffa


.incbin "baserom/arm9.bin", 0x35ffa, 0x2035ffc - 0x2035ffa


.word 0x21c07c4 @ 0x2035ffc
.word 0x6ab @ 0x2036000
.word 0x6ac @ 0x2036004

.incbin "baserom/arm9.bin", 0x36008, 0x203608c - 0x2036008


.thumb
Function_203608c: @ 203608c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x20360cc, (=#0x21c07c4)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_20360c6
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20360b4
	bl      0x21d1e30
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_20360c6
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x20360b4

.thumb
branch_20360b4: @ 20360b4 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_20360c0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20360c0

.thumb
branch_20360c0: @ 20360c0 :thumb
	bl      Function_2031f90
	pop     {r3,pc}
@ 0x20360c6

.thumb
branch_20360c6: @ 20360c6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20360ca


.incbin "baserom/arm9.bin", 0x360ca, 0x20360cc - 0x20360ca


.word 0x21c07c4 @ 0x20360cc
.thumb
Function_20360d0: @ 20360d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x20360d8, (=#0x20359dd)
	mov     r2, #0x0
	bx      r3
@ 0x20360d6


.incbin "baserom/arm9.bin", 0x360d6, 0x20360d8 - 0x20360d6


.word 0x20359dd @ 0x20360d8

.incbin "baserom/arm9.bin", 0x360dc, 0x20360f0 - 0x20360dc


.thumb
Function_20360f0: @ 20360f0 :thumb
	push    {r3,lr}
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_20360fe
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20360fe

.thumb
branch_20360fe: @ 20360fe :thumb
	ldr     r0, [pc, #0x20] @ 0x2036120, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_203611a
	ldr     r0, [pc, #0x1c] @ 0x2036124, (=#0x6b9)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_203611a
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203611a

.thumb
branch_203611a: @ 203611a :thumb
	bl      Function_2033e84
	pop     {r3,pc}
@ 0x2036120

.word 0x21c07c4 @ 0x2036120
.word 0x6b9 @ 0x2036124
.thumb
Function_2036128: @ 2036128 :thumb
	push    {r3,lr}
	bl      Function_203266c
	cmp     r0, #0x5
	bcc     branch_2036136
	mov     r0, #0xc
	pop     {r3,pc}
@ 0x2036136

.thumb
branch_2036136: @ 2036136 :thumb
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2036142
	mov     r0, #0xc
	pop     {r3,pc}
@ 0x2036142

.thumb
branch_2036142: @ 2036142 :thumb
	mov     r0, #0x26
	pop     {r3,pc}
@ 0x2036146


.incbin "baserom/arm9.bin", 0x36146, 0x2036148 - 0x2036146


.thumb
Function_2036148: @ 2036148 :thumb
	push    {r3,lr}
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3,pc}
@ 0x2036156


.incbin "baserom/arm9.bin", 0x36156, 0x2036180 - 0x2036156


.thumb
Function_2036180: @ 2036180 :thumb
	ldr     r0, [pc, #0x10] @ 0x2036194, (=#0x21c07c4)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_203618e
	ldr     r0, [pc, #0xc] @ 0x2036198, (=#0x6b6)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x203618e

.thumb
branch_203618e: @ 203618e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2036192


.incbin "baserom/arm9.bin", 0x36192, 0x2036194 - 0x2036192


.word 0x21c07c4 @ 0x2036194
.word 0x6b6 @ 0x2036198

.incbin "baserom/arm9.bin", 0x3619c, 0x20361bc - 0x203619c


.thumb
Function_20361bc: @ 20361bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	add     r0, sp, #0x10
	add     r1, sp, #0x4
	bl      Function_201384c
	ldr     r0, [pc, #0x74] @ 0x2036240, (=#0x21bf67c)
	ldr     r6, [sp, #0x10]
	mov     r5, #0x0
	lsr     r7, r6, #28
	lsl     r5, r5, #4
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #0x2c]
	lsl     r6, r6, #4
	add     r3, r1, r0
	ldr     r0, [sp, #0x18]
	orr     r5, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x4]
	add     r6, r0, r6
	ldr     r0, [pc, #0x58] @ 0x2036244, (=#0x0)
	ldr     r2, [sp, #0x8]
	adc     r0, r5
	lsr     r5, r6, #27
	lsl     r0, r0, #5
	orr     r0, r5
	ldr     r5, [sp, #0x0]
	lsl     r6, r6, #5
	add     r6, r5, r6
	ldr     r5, [pc, #0x48] @ 0x2036244, (=#0x0)
	adc     r5, r0
	lsr     r0, r6, #27
	lsl     r5, r5, #5
	orr     r5, r0
	lsl     r0, r6, #5
	add     r6, r1, r0
	ldr     r1, [pc, #0x38] @ 0x2036244, (=#0x0)
	adc     r1, r5
	lsr     r0, r6, #26
	lsl     r1, r1, #6
	orr     r1, r0
	lsl     r0, r6, #6
	add     r5, r2, r0
	ldr     r2, [pc, #0x2c] @ 0x2036244, (=#0x0)
	adc     r2, r1
	lsr     r0, r5, #26
	lsl     r1, r2, #6
	orr     r1, r0
	lsl     r0, r5, #6
	add     r2, r3, r0
	ldr     r0, [pc, #0x1c] @ 0x2036244, (=#0x0)
	str     r2, [r4, #0x0]
	adc     r0, r1
	str     r0, [r4, #0x4]
	ldr     r1, [pc, #0x18] @ 0x2036248, (=#0x6c078965)
	ldr     r0, [pc, #0x1c] @ 0x203624c, (=#0x5d588b65)
	str     r1, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x2036250, (=#0x269ec3)
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2036240

.word 0x21bf67c @ 0x2036240
.word 0x0 @ 0x2036244
.word 0x6c078965 @ 0x2036248
.word 0x5d588b65 @ 0x203624c
.word 0x269ec3 @ 0x2036250

.incbin "baserom/arm9.bin", 0x36254, 0x20362f4 - 0x2036254


.thumb
Function_20362f4: @ 20362f4 :thumb
	ldr     r1, [pc, #0x14] @ 0x203630c, (=#0x21c07c4)
	ldr     r1, [r1, #0x8]
	cmp     r1, #0x0
	beq     branch_2036308
	add     r2, r1, r0
	ldr     r1, [pc, #0x10] @ 0x2036310, (=#0x6a7)
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	beq     branch_2036308
	mov     r0, r1
.thumb
branch_2036308: @ 2036308 :thumb
	bx      lr
@ 0x203630a


.incbin "baserom/arm9.bin", 0x3630a, 0x203630c - 0x203630a


.word 0x21c07c4 @ 0x203630c
.word 0x6a7 @ 0x2036310
.thumb
Function_2036314: @ 2036314 :thumb
	push    {r3,lr}
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2036328
	bl      0x21d254c
	pop     {r3,pc}
@ 0x2036328

.thumb
branch_2036328: @ 2036328 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203632c


.incbin "baserom/arm9.bin", 0x3632c, 0x20363bc - 0x203632c


.thumb
Function_20363bc: @ 20363bc :thumb
	ldr     r0, [pc, #0x8] @ 0x20363c8, (=#0x21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x8] @ 0x20363cc, (=#0x6b9)
	strb    r2, [r1, r0]
	bx      lr
@ 0x20363c8

.word 0x21c07c4 @ 0x20363c8
.word 0x6b9 @ 0x20363cc
.thumb
Function_20363d0: @ 20363d0 :thumb
	ldr     r0, [pc, #0xc] @ 0x20363e0, (=#0x21c07c4)
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_20363de
	ldr     r0, [pc, #0x8] @ 0x20363e4, (=#0x6ba)
	mov     r1, #0x1
	strb    r1, [r2, r0]
.thumb
branch_20363de: @ 20363de :thumb
	bx      lr
@ 0x20363e0

.word 0x21c07c4 @ 0x20363e0
.word 0x6ba @ 0x20363e4

.incbin "baserom/arm9.bin", 0x363e8, 0x2036438 - 0x20363e8


.thumb
Function_2036438: @ 2036438 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x203644c, (=#0x21c07d0)
	ldr     r0, [r0, #0x0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x8] @ 0x203644c, (=#0x21c07d0)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x203644a


.incbin "baserom/arm9.bin", 0x3644a, 0x203644c - 0x203644a


.word 0x21c07d0 @ 0x203644c

.incbin "baserom/arm9.bin", 0x36450, 0x20364f0 - 0x2036450


.thumb
Function_20364f0: @ 20364f0 :thumb
	ldr     r2, [pc, #0x10] @ 0x2036504, (=#0x21c07d0)
	ldr     r1, [pc, #0x14] @ 0x2036508, (=#0x261)
	ldr     r3, [r2, #0x0]
	strb    r0, [r3, r1]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1
	add     r0, r1, #0x1
	strb    r3, [r2, r0]
	bx      lr
@ 0x2036502


.incbin "baserom/arm9.bin", 0x36502, 0x2036504 - 0x2036502


.word 0x21c07d0 @ 0x2036504
.word 0x261 @ 0x2036508
.thumb
Function_203650c: @ 203650c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x28] @ 0x2036538, (=#0x21c07d0)
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_2036536
	ldr     r1, [pc, #0x24] @ 0x203653c, (=#0x262)
	ldrb    r0, [r2, r1]
	cmp     r0, #0x0
	beq     branch_2036536
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r0, #0x10
	add     r1, r2, r1
	bl      Function_20360d0
	cmp     r0, #0x0
	beq     branch_2036536
	ldr     r0, [pc, #0x8] @ 0x2036538, (=#0x21c07d0)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x203653c, (=#0x262)
	strb    r2, [r1, r0]
.thumb
branch_2036536: @ 2036536 :thumb
	pop     {r3,pc}
@ 0x2036538

.word 0x21c07d0 @ 0x2036538
.word 0x262 @ 0x203653c

.incbin "baserom/arm9.bin", 0x36540, 0x20365f4 - 0x2036540


.thumb
Function_20365f4: @ 20365f4 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	mov     r0, #0x96
	ldr     r1, [pc, #0x14] @ 0x2036610, (=#0x21c07d0)
	mov     r3, r4
	lsl     r0, r0, #2
.thumb
branch_2036600: @ 2036600 :thumb
	ldr     r2, [r1, #0x0]
	add     r2, r2, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r3, [r2, r0]
	cmp     r4, #0x8
	blt     branch_2036600
	pop     {r3,r4}
	bx      lr
@ 0x2036610

.word 0x21c07d0 @ 0x2036610
.thumb
Function_2036614: @ 2036614 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x30] @ 0x2036648, (=#0x21c07d0)
	ldr     r3, [r2, #0x0]
	cmp     r3, #0x0
	beq     branch_2036642
	mov     r4, r0
	mov     r2, #0x48
	mul     r4, r2
	add     r3, #0x18
	mov     r0, r1
	add     r1, r3, r4
	mov     r2, #0x46
	blx     Function_20c4db0
	ldr     r1, [pc, #0x14] @ 0x2036648, (=#0x21c07d0)
	mov     r0, #0x14
	ldr     r1, [r1, #0x0]
	add     r1, #0x18
	add     r1, r1, r4
	bl      Function_20360d0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2036642

.thumb
branch_2036642: @ 2036642 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2036646


.incbin "baserom/arm9.bin", 0x36646, 0x2036648 - 0x2036646


.word 0x21c07d0 @ 0x2036648

.incbin "baserom/arm9.bin", 0x3664c, 0x20366a0 - 0x203664c


.thumb
Function_20366a0: @ 20366a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x2036730, (=#0x21c07d4)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203672c
	cmp     r5, #0x0
	bne     branch_20366b6
	bl      Function_2022974
.thumb
branch_20366b6: @ 20366b6 :thumb
	bl      Function_2033478
	mov     r0, #0xf
	mov     r1, #0x64
	bl      Function_2018144
	ldr     r1, [pc, #0x6c] @ 0x2036730, (=#0x21c07d4)
	mov     r2, #0x64
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     Function_20c4cf4
	ldr     r0, [pc, #0x60] @ 0x2036730, (=#0x21c07d4)
	mov     r2, #0x32
	ldr     r1, [r0, #0x0]
	str     r2, [r1, #0x40]
	ldr     r1, [r0, #0x0]
	mov     r2, #0x1
	add     r1, #0x4e
	strb    r2, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	str     r5, [r0, #0x28]
	mov     r0, r5
	bl      Function_2025e38
	ldr     r1, [pc, #0x44] @ 0x2036730, (=#0x21c07d4)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x2c]
	ldr     r0, [r1, #0x0]
	mov     r2, #0x2
	add     r0, #0x46
	strb    r2, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	mov     r2, #0x0
	add     r0, #0x48
	strb    r2, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	add     r0, #0x53
	strb    r2, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	add     r0, #0x4a
	strb    r4, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	add     r0, #0xc
	bl      Function_20361bc
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      Function_2032798
	cmp     r4, #0x9
	beq     branch_203672c
	cmp     r4, #0x11
	beq     branch_203672c
	cmp     r4, #0xf
	beq     branch_203672c
	bl      Function_2039734
.thumb
branch_203672c: @ 203672c :thumb
	pop     {r3-r5,pc}
@ 0x203672e


.incbin "baserom/arm9.bin", 0x3672e, 0x2036730 - 0x203672e


.word 0x21c07d4 @ 0x2036730

.incbin "baserom/arm9.bin", 0x36734, 0x2036780 - 0x2036734


.thumb
Function_2036780: @ 2036780 :thumb
	ldr     r0, [pc, #0xc] @ 0x2036790, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203678c
	mov     r0, #0x1
	bx      lr
@ 0x203678c

.thumb
branch_203678c: @ 203678c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2036790

.word 0x21c07d4 @ 0x2036790

.incbin "baserom/arm9.bin", 0x36794, 0x20369ec - 0x2036794


.thumb
Function_20369ec: @ 20369ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x2036a2c, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2036a2a
	ldr     r2, [pc, #0x34] @ 0x2036a30, (=#0x7080)
	mov     r0, #0x3
	mov     r1, #0xf
	bl      Function_2017fd4
	cmp     r0, #0x0
	bne     branch_2036a0a
	bl      Function_2038a0c
.thumb
branch_2036a0a: @ 2036a0a :thumb
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_20366a0
	ldr     r0, [pc, #0x18] @ 0x2036a2c, (=#0x21c07d4)
	mov     r2, #0x9
	ldr     r1, [r0, #0x0]
	add     r1, #0x4a
	strb    r2, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x4b
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2036a34, (=#0x20373f1)
	bl      Function_2036c94
.thumb
branch_2036a2a: @ 2036a2a :thumb
	pop     {r4,pc}
@ 0x2036a2c

.word 0x21c07d4 @ 0x2036a2c
.word 0x7080 @ 0x2036a30
.word 0x20373f1 @ 0x2036a34

.incbin "baserom/arm9.bin", 0x36a38, 0x2036a68 - 0x2036a38


.thumb
Function_2036a68: @ 2036a68 :thumb
	ldr     r0, [pc, #0x28] @ 0x2036a94, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2036a76
	mov     r0, #0x0
	mvn     r0, r0
	bx      lr
@ 0x2036a76

.thumb
branch_2036a76: @ 2036a76 :thumb
	ldr     r1, [r0, #0x24]
	ldr     r0, [pc, #0x1c] @ 0x2036a98, (=#0x2037725)
	cmp     r1, r0
	bne     branch_2036a82
	mov     r0, #0x1
	bx      lr
@ 0x2036a82

.thumb
branch_2036a82: @ 2036a82 :thumb
	ldr     r0, [pc, #0x18] @ 0x2036a9c, (=#0x203773d)
	cmp     r1, r0
	bne     branch_2036a8c
	mov     r0, #0x1
	b       branch_2036a8e
@ 0x2036a8c

.thumb
branch_2036a8c: @ 2036a8c :thumb
	mov     r0, #0x0
.thumb
branch_2036a8e: @ 2036a8e :thumb
	neg     r0, r0
	bx      lr
@ 0x2036a92


.incbin "baserom/arm9.bin", 0x36a92, 0x2036a94 - 0x2036a92


.word 0x21c07d4 @ 0x2036a94
.word 0x2037725 @ 0x2036a98
.word 0x203773d @ 0x2036a9c
.thumb
Function_2036aa0: @ 2036aa0 :thumb
	ldr     r0, [pc, #0x18] @ 0x2036abc, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2036aac
	mov     r0, #0x0
	bx      lr
@ 0x2036aac

.thumb
branch_2036aac: @ 2036aac :thumb
	ldr     r1, [r0, #0x24]
	ldr     r0, [pc, #0x10] @ 0x2036ac0, (=#0x2037791)
	cmp     r1, r0
	bne     branch_2036ab8
	mov     r0, #0x1
	bx      lr
@ 0x2036ab8

.thumb
branch_2036ab8: @ 2036ab8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2036abc

.word 0x21c07d4 @ 0x2036abc
.word 0x2037791 @ 0x2036ac0
.thumb
Function_2036ac4: @ 2036ac4 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	bl      Function_2032138
	ldr     r0, [pc, #0x68] @ 0x2036b38, (=#0x21c07d4)
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x4f
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2036aec
	mov     r0, r1
	add     r0, #0x50
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2036aec
	add     r1, #0x4a
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x9
	bne     branch_2036af4
.thumb
branch_2036aec: @ 2036aec :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20388f4
.thumb
branch_2036af4: @ 2036af4 :thumb
	bl      Function_2039794
	ldr     r0, [pc, #0x3c] @ 0x2036b38, (=#0x21c07d4)
	mov     r2, #0x9
	ldr     r1, [r0, #0x0]
	add     r1, #0x4a
	strb    r2, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	add     r1, #0x53
	strb    r2, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	add     r0, #0x46
	ldrb    r0, [r0, #0x0]
	bl      Function_2031fa4
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2036b2c
	mov     r0, #0x1
	bl      Function_2032160
	ldr     r0, [pc, #0x18] @ 0x2036b3c, (=#0x2037355)
	mov     r1, #0xf
	bl      Function_2036c94
	pop     {r3,pc}
@ 0x2036b2c

.thumb
branch_2036b2c: @ 2036b2c :thumb
	ldr     r0, [pc, #0x10] @ 0x2036b40, (=#0x203739d)
	mov     r1, #0x5
	bl      Function_2036c94
	pop     {r3,pc}
@ 0x2036b36


.incbin "baserom/arm9.bin", 0x36b36, 0x2036b38 - 0x2036b36


.word 0x21c07d4 @ 0x2036b38
.word 0x2037355 @ 0x2036b3c
.word 0x203739d @ 0x2036b40

.incbin "baserom/arm9.bin", 0x36b44, 0x2036ba0 - 0x2036b44


.thumb
Function_2036ba0: @ 2036ba0 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x2036bc0, (=#0x21c07d4)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2036bbc
	mov     r0, #0x1
	add     r1, #0x53
	strb    r0, [r1, #0x0]
	bl      Function_2032138
	ldr     r0, [pc, #0xc] @ 0x2036bc4, (=#0x20377e5)
	mov     r1, #0x0
	bl      Function_2036c94
.thumb
branch_2036bbc: @ 2036bbc :thumb
	pop     {r3,pc}
@ 0x2036bbe


.incbin "baserom/arm9.bin", 0x36bbe, 0x2036bc0 - 0x2036bbe


.word 0x21c07d4 @ 0x2036bc0
.word 0x20377e5 @ 0x2036bc4
.thumb
Function_2036bc8: @ 2036bc8 :thumb
	ldr     r0, [pc, #0x8] @ 0x2036bd4, (=#0x21c07d4)
	mov     r1, #0x12
	ldr     r0, [r0, #0x0]
	add     r0, #0x4a
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2036bd4

.word 0x21c07d4 @ 0x2036bd4
.thumb
Function_2036bd8: @ 2036bd8 :thumb
	ldr     r0, [pc, #0x8] @ 0x2036be4, (=#0x21c07d4)
	mov     r1, #0x9
	ldr     r0, [r0, #0x0]
	add     r0, #0x4a
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2036be4

.word 0x21c07d4 @ 0x2036be4

.incbin "baserom/arm9.bin", 0x36be8, 0x2036c50 - 0x2036be8


.thumb
Function_2036c50: @ 2036c50 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x2036c90, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2036c62
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_2036c62
	blx     r0
.thumb
branch_2036c62: @ 2036c62 :thumb
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_2036c78
	blx 0x21d7eae
	mov     r1, #0x3
	sub     r0, r1, r0
	bl      Function_20397b0
	pop     {r3,pc}
@ 0x2036c78

.thumb
branch_2036c78: @ 2036c78 :thumb
	bl      Function_2033e1c
	cmp     r0, #0x0
	beq     branch_2036c8c
	blx     Function_20ce814
	mov     r1, #0x3
	sub     r0, r1, r0
	bl      Function_20397b0
.thumb
branch_2036c8c: @ 2036c8c :thumb
	pop     {r3,pc}
@ 0x2036c8e


.incbin "baserom/arm9.bin", 0x36c8e, 0x2036c90 - 0x2036c8e


.word 0x21c07d4 @ 0x2036c90
.thumb
Function_2036c94: @ 2036c94 :thumb
	ldr     r2, [pc, #0x8] @ 0x2036ca0, (=#0x21c07d4)
	ldr     r3, [r2, #0x0]
	str     r0, [r3, #0x24]
	ldr     r0, [r2, #0x0]
	str     r1, [r0, #0x40]
	bx      lr
@ 0x2036ca0

.word 0x21c07d4 @ 0x2036ca0

.incbin "baserom/arm9.bin", 0x36ca4, 0x2037b58 - 0x2036ca4


.thumb
Function_2037b58: @ 2037b58 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x2037b6c, (=#0x21c07d4)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2037b6a
	add     r1, #0x46
	strb    r0, [r1, #0x0]
	bl      Function_2031fa4
.thumb
branch_2037b6a: @ 2037b6a :thumb
	pop     {r3,pc}
@ 0x2037b6c

.word 0x21c07d4 @ 0x2037b6c

.incbin "baserom/arm9.bin", 0x37b70, 0x2037db0 - 0x2037b70


.thumb
Function_2037db0: @ 2037db0 :thumb
	push    {r3,lr}
	bl      Function_20363d0
	ldr     r0, [pc, #0x58] @ 0x2037e10, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2037dc2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2037dc2

.thumb
branch_2037dc2: @ 2037dc2 :thumb
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x18
	beq     branch_2037dd2
	cmp     r0, #0x19
	beq     branch_2037dd2
	cmp     r0, #0x24
	bne     branch_2037dda
.thumb
branch_2037dd2: @ 2037dd2 :thumb
	bl      0x21d2184
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2037dda

.thumb
branch_2037dda: @ 2037dda :thumb
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_2037e02
	ldr     r0, [pc, #0x2c] @ 0x2037e10, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x21
	bne     branch_2037df8
	ldr     r0, [pc, #0x24] @ 0x2037e14, (=#0x2038d81)
	mov     r1, #0x0
	bl      Function_2036c94
	b       branch_2037e0a
@ 0x2037df8

.thumb
branch_2037df8: @ 2037df8 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2037e18, (=#0x2038315)
	mov     r1, #0x0
	bl      Function_2036c94
	b       branch_2037e0a
@ 0x2037e02

.thumb
branch_2037e02: @ 2037e02 :thumb
	ldr     r0, [pc, #0x18] @ 0x2037e1c, (=#0x20370ed)
	mov     r1, #0x0
	bl      Function_2036c94
.thumb
branch_2037e0a: @ 2037e0a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2037e0e


.incbin "baserom/arm9.bin", 0x37e0e, 0x2037e10 - 0x2037e0e


.word 0x21c07d4 @ 0x2037e10
.word 0x2038d81 @ 0x2037e14
.word 0x2038315 @ 0x2037e18
.word 0x20370ed @ 0x2037e1c

.incbin "baserom/arm9.bin", 0x37e20, 0x20383e8 - 0x2037e20


.thumb
Function_20383e8: @ 20383e8 :thumb
	ldr     r0, [pc, #0x3c] @ 0x2038428, (=#0x21c07d4)
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_2038422
	ldr     r1, [r2, #0x24]
	ldr     r0, [pc, #0x38] @ 0x203842c, (=#0x2037eb1)
	cmp     r1, r0
	bne     branch_20383fc
	mov     r0, #0x1
	bx      lr
@ 0x20383fc

.thumb
branch_20383fc: @ 20383fc :thumb
	ldr     r0, [pc, #0x30] @ 0x2038430, (=#0x2037eb5)
	cmp     r1, r0
	bne     branch_2038410
	mov     r0, r2
	add     r0, #0x4f
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2038410
	mov     r0, #0x1
	bx      lr
@ 0x2038410

.thumb
branch_2038410: @ 2038410 :thumb
	ldr     r0, [pc, #0x20] @ 0x2038434, (=#0x2038e85)
	cmp     r1, r0
	bne     branch_2038422
	add     r2, #0x4f
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0x0
	beq     branch_2038422
	mov     r0, #0x1
	bx      lr
@ 0x2038422

.thumb
branch_2038422: @ 2038422 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2038426


.incbin "baserom/arm9.bin", 0x38426, 0x2038428 - 0x2038426


.word 0x21c07d4 @ 0x2038428
.word 0x2037eb1 @ 0x203842c
.word 0x2037eb5 @ 0x2038430
.word 0x2038e85 @ 0x2038434

.incbin "baserom/arm9.bin", 0x38438, 0x20385d0 - 0x2038438


.thumb
Function_20385d0: @ 20385d0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x50] @ 0x2038628, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_20385e2
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20385e2

.thumb
branch_20385e2: @ 20385e2 :thumb
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x18
	beq     branch_20385ee
	cmp     r0, #0x24
	bne     branch_2038604
.thumb
branch_20385ee: @ 20385ee :thumb
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx 0x21d75f6
	cmp     r0, #0x0
	beq     branch_2038620
	blx 0x21d76ea
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2038604

.thumb
branch_2038604: @ 2038604 :thumb
	cmp     r0, #0x19
	bne     branch_2038620
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx 0x21d75f4
	cmp     r0, #0x0
	beq     branch_2038620
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x7
	bne     branch_2038620
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2038620

.thumb
branch_2038620: @ 2038620 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2038626


.incbin "baserom/arm9.bin", 0x38626, 0x2038628 - 0x2038626


.word 0x21c07d4 @ 0x2038628

.incbin "baserom/arm9.bin", 0x3862c, 0x203881c - 0x203862c


.thumb
Function_203881c: @ 203881c :thumb
	ldr     r0, [pc, #0x14] @ 0x2038834, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2038830
	ldr     r1, [r0, #0x24]
	ldr     r0, [pc, #0x10] @ 0x2038838, (=#0x2038dc9)
	cmp     r1, r0
	bne     branch_2038830
	mov     r0, #0x1
	bx      lr
@ 0x2038830

.thumb
branch_2038830: @ 2038830 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2038834

.word 0x21c07d4 @ 0x2038834
.word 0x2038dc9 @ 0x2038838

.incbin "baserom/arm9.bin", 0x3883c, 0x20388f4 - 0x203883c


.thumb
Function_20388f4: @ 20388f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x2038934, (=#0x21c07d4)
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_2038924
	add     r2, #0x4f
	strb    r4, [r2, #0x0]
	ldr     r2, [r0, #0x0]
	add     r2, #0x50
	strb    r1, [r2, #0x0]
	cmp     r4, #0x0
	beq     branch_203891c
	bl      Function_2035e18
	ldr     r1, [pc, #0x20] @ 0x2038934, (=#0x21c07d4)
	ldr     r1, [r1, #0x0]
	add     r1, #0x47
	strb    r0, [r1, #0x0]
	b       branch_2038924
@ 0x203891c

.thumb
branch_203891c: @ 203891c :thumb
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x47
	strb    r1, [r0, #0x0]
.thumb
branch_2038924: @ 2038924 :thumb
	mov     r0, r4
	bl      Function_2033ea8
	mov     r0, r4
	bl      Function_2033ed4
	pop     {r4,pc}
@ 0x2038932


.incbin "baserom/arm9.bin", 0x38932, 0x2038934 - 0x2038932


.word 0x21c07d4 @ 0x2038934
.thumb
Function_2038938: @ 2038938 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2038958, (=#0x21c07d4)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2038954
	mov     r0, r1
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203894e
	mov     r0, #0x1
	bx      lr
@ 0x203894e

.thumb
branch_203894e: @ 203894e :thumb
	add     r1, #0x50
	ldrb    r0, [r1, #0x0]
	bx      lr
@ 0x2038954

.thumb
branch_2038954: @ 2038954 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2038958

.word 0x21c07d4 @ 0x2038958
.thumb
Function_203895c: @ 203895c :thumb
	ldr     r0, [pc, #0x10] @ 0x2038970, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203896a
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x203896a

.thumb
branch_203896a: @ 203896a :thumb
	mov     r0, #0x1
	bx      lr
@ 0x203896e


.incbin "baserom/arm9.bin", 0x3896e, 0x2038970 - 0x203896e


.word 0x21c07d4 @ 0x2038970
.thumb
Function_2038974: @ 2038974 :thumb
	ldr     r0, [pc, #0x10] @ 0x2038988, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2038982
	add     r0, #0x4b
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2038982

.thumb
branch_2038982: @ 2038982 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2038986


.incbin "baserom/arm9.bin", 0x38986, 0x2038988 - 0x2038986


.word 0x21c07d4 @ 0x2038988

.incbin "baserom/arm9.bin", 0x3898c, 0x20389b8 - 0x203898c


.thumb
Function_20389b8: @ 20389b8 :thumb
	push    {r3,lr}
	bl      Function_203895c
	bl      Function_20326ec
	pop     {r3,pc}
@ 0x20389c4

.thumb
Function_20389c4: @ 20389c4 :thumb
	ldr     r1, [pc, #0xc] @ 0x20389d4, (=#0x21c07d4)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_20389d0
	add     r1, #0x52
	strb    r0, [r1, #0x0]
.thumb
branch_20389d0: @ 20389d0 :thumb
	bx      lr
@ 0x20389d2


.incbin "baserom/arm9.bin", 0x389d2, 0x20389d4 - 0x20389d2


.word 0x21c07d4 @ 0x20389d4
.thumb
Function_20389d8: @ 20389d8 :thumb
	push    {r3,lr}
	bl      Function_2017e54
	cmp     r0, #0x0
	beq     branch_20389e6
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20389e6

.thumb
branch_20389e6: @ 20389e6 :thumb
	ldr     r0, [pc, #0x10] @ 0x20389f8, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_20389f4
	add     r0, #0x52
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20389f4

.thumb
branch_20389f4: @ 20389f4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20389f8

.word 0x21c07d4 @ 0x20389f8
.thumb
Function_20389fc: @ 20389fc :thumb
	push    {r3,lr}
	mov     r2, r0
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_2039834
.thumb
branch_2038a08: @ 2038a08 :thumb
	b       branch_2038a08
@ 0x2038a0a


.incbin "baserom/arm9.bin", 0x38a0a, 0x2038a0c - 0x2038a0a


.thumb
Function_2038a0c: @ 2038a0c :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, #0x4
	mov     r2, r0
	bl      Function_2039834
.thumb
branch_2038a18: @ 2038a18 :thumb
	b       branch_2038a18
@ 0x2038a1a


.incbin "baserom/arm9.bin", 0x38a1a, 0x2038a20 - 0x2038a1a


.thumb
Function_2038a20: @ 2038a20 :thumb
	push    {r3,lr}
	bl      Function_2038938
	cmp     r0, #0x0
	beq     branch_2038aac
	bl      Function_20360f0
	cmp     r0, #0x0
	bne     branch_2038a56
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_2038a56
	bl      Function_20385d0
	cmp     r0, #0x0
	bne     branch_2038a56
	ldr     r0, [pc, #0x6c] @ 0x2038ab0, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2038a56
	bl      Function_203881c
	cmp     r0, #0x0
	beq     branch_2038aac
.thumb
branch_2038a56: @ 2038a56 :thumb
	bl      Function_2017e54
	cmp     r0, #0x0
	bne     branch_2038aac
	bl      Function_20389d8
	cmp     r0, #0x0
	bne     branch_2038aac
	bl      Function_200569c
	ldr     r0, [pc, #0x44] @ 0x2038ab0, (=#0x21c07d4)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x28]
	bl      Function_2024850
	ldr     r1, [pc, #0x3c] @ 0x2038ab4, (=#0x21bf6dc)
	mov     r0, #0x1
	strb    r0, [r1, #0x4]
	ldr     r1, [pc, #0x34] @ 0x2038ab0, (=#0x21c07d4)
	ldr     r2, [r1, #0x0]
	mov     r1, r2
	add     r1, #0x59
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x3
	bne     branch_2038a90
	mov     r0, #0x3
	bl      Function_20389c4
	pop     {r3,pc}
@ 0x2038a90

.thumb
branch_2038a90: @ 2038a90 :thumb
	add     r2, #0x4a
	ldrb    r1, [r2, #0x0]
	cmp     r1, #0x19
	beq     branch_2038aa0
	cmp     r1, #0xf
	beq     branch_2038aa0
	cmp     r1, #0x24
	bne     branch_2038aa8
.thumb
branch_2038aa0: @ 2038aa0 :thumb
	mov     r0, #0x2
	bl      Function_20389c4
	pop     {r3,pc}
@ 0x2038aa8

.thumb
branch_2038aa8: @ 2038aa8 :thumb
	bl      Function_20389c4
.thumb
branch_2038aac: @ 2038aac :thumb
	pop     {r3,pc}
@ 0x2038aae


.incbin "baserom/arm9.bin", 0x38aae, 0x2038ab0 - 0x2038aae


.word 0x21c07d4 @ 0x2038ab0
.word 0x21bf6dc @ 0x2038ab4
.thumb
Function_2038ab8: @ 2038ab8 :thumb
	push    {r3,lr}
	bl      Function_2033dfc
	cmp     r0, #0x0
	bne     branch_2038aca
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_2038ace
.thumb
branch_2038aca: @ 2038aca :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2038ace

.thumb
branch_2038ace: @ 2038ace :thumb
	bl      Function_20332d0
	cmp     r0, #0x0
	bne     branch_2038ada
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2038ada

.thumb
branch_2038ada: @ 2038ada :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2038ade


.incbin "baserom/arm9.bin", 0x38ade, 0x2038ae0 - 0x2038ade


.thumb
Function_2038ae0: @ 2038ae0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x18] @ 0x2038afc, (=#0x21c07d4)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2038af6
	add     r1, #0x59
	strb    r0, [r1, #0x0]
	bl      Function_20363d0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2038af6

.thumb
branch_2038af6: @ 2038af6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2038afa


.incbin "baserom/arm9.bin", 0x38afa, 0x2038afc - 0x2038afa


.word 0x21c07d4 @ 0x2038afc

.incbin "baserom/arm9.bin", 0x38b00, 0x2038ffc - 0x2038b00


.thumb
Function_2038ffc: @ 2038ffc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2099550
	bl      Function_20995b4
	mov     r1, #0x72
	mov     r0, r4
	lsl     r1, r1, #4
	bl      Function_2018144
	mov     r4, r0
	add     r0, #0x1f
	mov     r1, #0x1f
	bic     r0, r1
	blx     Function_20a3ef0
	mov     r5, r0
	mov     r0, r4
	bl      Function_20181c4
	bl      Function_2099560
	bl      Function_20995c4
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2039032


.incbin "baserom/arm9.bin", 0x39032, 0x2039058 - 0x2039032


.thumb
Function_2039058: @ 2039058 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	bl      Function_202ad28
	mov     r4, r0
	add     r1, sp, #0x0
	blx     Function_20a4788
	mov     r0, r4
	add     r1, sp, #0x0
	blx     Function_20a4698
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2039074

.thumb
Function_2039074: @ 2039074 :thumb
	push    {r4,lr}
	bl      Function_202b370
	bl      Function_202ad28
	mov     r4, r0
	blx     Function_20a450c
	cmp     r0, #0x0
	beq     branch_2039096
	mov     r0, r4
	blx     Function_20a453c
	cmp     r0, #0x0
	beq     branch_2039096
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2039096

.thumb
branch_2039096: @ 2039096 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203909a


.incbin "baserom/arm9.bin", 0x3909a, 0x20393c8 - 0x203909a


.thumb
Function_20393c8: @ 20393c8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r2
	mov     r2, #0x7
	mov     r6, r3
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	lsl     r2, r2, #6
	mov     r3, r4
	bl      Function_20394d0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	mov     r2, r4
	bl      Function_2039530
	mov     r0, r4
	mov     r1, #0x20
	bl      Function_2018184
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x2039424, (=#0x2039429)
	mov     r1, r4
	mov     r2, #0x5
	bl      Function_200da3c
	str     r0, [r4, #0x18]
	strh    r5, [r4, #0xc]
	strh    r6, [r4, #0xe]
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	mov     r0, #0x3
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x14]
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x10]
	str     r1, [r4, #0x8]
	strb    r0, [r4, #0x10]
	strb    r1, [r4, #0x12]
	mov     r0, #0x7
	strb    r1, [r4, #0x11]
	lsl     r0, r0, #24
	str     r0, [r4, #0x1c]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2039422


.incbin "baserom/arm9.bin", 0x39422, 0x2039424 - 0x2039422


.word 0x2039429 @ 0x2039424

.incbin "baserom/arm9.bin", 0x39428, 0x2039434 - 0x2039428


.thumb
Function_2039434: @ 2039434 :thumb
	cmp     r1, #0x4
	bge     branch_203943e
	str     r1, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
.thumb
branch_203943e: @ 203943e :thumb
	bx      lr
@ 0x2039440

.thumb
Function_2039440: @ 2039440 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Function_200da58
	mov     r0, #0x7
	ldr     r2, [pc, #0x1c] @ 0x203946c, (=#0x40000200)
	lsl     r0, r0, #24
	str     r2, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	beq     branch_2039462
	ldr     r0, [pc, #0x10] @ 0x2039470, (=#0x7000400)
	str     r2, [r0, #0x0]
	strh    r1, [r0, #0x4]
.thumb
branch_2039462: @ 2039462 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x203946a


.incbin "baserom/arm9.bin", 0x3946a, 0x203946c - 0x203946a


.word 0x40000200 @ 0x203946c
.word 0x7000400 @ 0x2039470

.incbin "baserom/arm9.bin", 0x39474, 0x20394d0 - 0x2039474


.thumb
Function_20394d0: @ 20394d0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r1, #0x96
	mov     r5, r0
	mov     r0, r3
	lsl     r1, r1, #2
	mov     r4, r2
	bl      Function_2018184
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2039526
	ldr     r0, [pc, #0x40] @ 0x203952c, (=#0x2100a4c)
	add     r1, sp, #0x4
	bl      Function_2017a94
	mov     r1, #0x96
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	blx     Function_20c2c54
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x0
	blx     Function_20a71b0
	cmp     r5, #0x1
	bne     branch_2039514
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     Function_20c0160
	b       branch_2039520
@ 0x2039514

.thumb
branch_2039514: @ 2039514 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     Function_20c01b8
.thumb
branch_2039520: @ 2039520 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_20181c4
.thumb
branch_2039526: @ 2039526 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x203952a


.incbin "baserom/arm9.bin", 0x3952a, 0x203952c - 0x203952a


.word 0x2100a4c @ 0x203952c
.thumb
Function_2039530: @ 2039530 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x96
	mov     r5, r0
	mov     r0, r2
	lsl     r1, r1, #2
	bl      Function_2018184
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_20395f4
	cmp     r4, #0x0
	add     r1, sp, #0x4
	beq     branch_2039556
	ldr     r0, [pc, #0xa8] @ 0x20395f8, (=#0x2100a5c)
	bl      Function_2017a94
	b       branch_203955c
@ 0x2039556

.thumb
branch_2039556: @ 2039556 :thumb
	ldr     r0, [pc, #0xa4] @ 0x20395fc, (=#0x2100a70)
	bl      Function_2017a94
.thumb
branch_203955c: @ 203955c :thumb
	mov     r1, #0x96
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	blx     Function_20c2c54
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x0
	blx     Function_20a7164
	cmp     r5, #0x1
	bne     branch_2039584
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x84] @ 0x2039600, (=#0x300010)
	mov     r4, r1
	and     r4, r0
	blx     Function_20befec
	b       branch_2039592
@ 0x2039584

.thumb
branch_2039584: @ 2039584 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2039604, (=#0x4001000)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x74] @ 0x2039600, (=#0x300010)
	mov     r4, r1
	and     r4, r0
	blx     Function_20bf01c
.thumb
branch_2039592: @ 2039592 :thumb
	cmp     r4, #0x10
	beq     branch_203959e
	ldr     r1, [pc, #0x70] @ 0x2039608, (=#0x200010)
	cmp     r4, r1
	beq     branch_20395b2
	b       branch_20395cc
@ 0x203959e

.thumb
branch_203959e: @ 203959e :thumb
	cmp     r0, #0x40
	beq     branch_20395a6
	cmp     r0, #0x20
	bne     branch_20395ac
.thumb
branch_20395a6: @ 20395a6 :thumb
	mov     r1, #0x3e
	lsl     r1, r1, #8
	b       branch_20395d0
@ 0x20395ac

.thumb
branch_20395ac: @ 20395ac :thumb
	mov     r1, #0x7e
	lsl     r1, r1, #8
	b       branch_20395d0
@ 0x20395b2

.thumb
branch_20395b2: @ 20395b2 :thumb
	cmp     r0, #0x30
	beq     branch_20395ba
	cmp     r0, #0x50
	bne     branch_20395be
.thumb
branch_20395ba: @ 20395ba :thumb
	ldr     r1, [pc, #0x50] @ 0x203960c, (=#0x13e00)
	b       branch_20395d0
@ 0x20395be

.thumb
branch_20395be: @ 20395be :thumb
	cmp     r0, #0x10
	bne     branch_20395c8
	mov     r1, #0xfe
	lsl     r1, r1, #8
	b       branch_20395d0
@ 0x20395c8

.thumb
branch_20395c8: @ 20395c8 :thumb
	ldr     r1, [pc, #0x44] @ 0x2039610, (=#0x1fe00)
	b       branch_20395d0
@ 0x20395cc

.thumb
branch_20395cc: @ 20395cc :thumb
	mov     r1, #0xfe
	lsl     r1, r1, #8
.thumb
branch_20395d0: @ 20395d0 :thumb
	cmp     r5, #0x1
	bne     branch_20395e2
	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r2, r2, #8
	blx     Function_20c02bc
	b       branch_20395ee
@ 0x20395e2

.thumb
branch_20395e2: @ 20395e2 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r2, r2, #8
	blx     Function_20c0314
.thumb
branch_20395ee: @ 20395ee :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_20181c4
.thumb
branch_20395f4: @ 20395f4 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x20395f8

.word 0x2100a5c @ 0x20395f8
.word 0x2100a70 @ 0x20395fc
.word 0x300010 @ 0x2039600
.word 0x4001000 @ 0x2039604
.word 0x200010 @ 0x2039608
.word 0x13e00 @ 0x203960c
.word 0x1fe00 @ 0x2039610

.incbin "baserom/arm9.bin", 0x39614, 0x2039734 - 0x2039614


.thumb
Function_2039734: @ 2039734 :thumb
	push    {r4,lr}
	mov     r4, #0x0
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_2039742
	mov     r4, #0x1
.thumb
branch_2039742: @ 2039742 :thumb
	mov     r0, #0xf0
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_2039750
	pop     {r4,pc}
@ 0x2039750

.thumb
Function_2039750: @ 2039750 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_20334b8
	cmp     r0, #0x0
	beq     branch_2039788
	ldr     r0, [pc, #0x24] @ 0x203978c, (=#0x21c07d8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2039770
	bl      Function_2039794
.thumb
branch_2039770: @ 2039770 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2039790, (=#0x2100a38)
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x5b
	mov     r2, r6
	mov     r3, r7
	str     r4, [sp, #0x8]
	bl      Function_20393c8
	ldr     r1, [pc, #0x4] @ 0x203978c, (=#0x21c07d8)
	str     r0, [r1, #0x0]
.thumb
branch_2039788: @ 2039788 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203978c

.word 0x21c07d8 @ 0x203978c
.word 0x2100a38 @ 0x2039790
.thumb
Function_2039794: @ 2039794 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x20397ac, (=#0x21c07d8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_20397a8
	bl      Function_2039440
	ldr     r0, [pc, #0x8] @ 0x20397ac, (=#0x21c07d8)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_20397a8: @ 20397a8 :thumb
	pop     {r3,pc}
@ 0x20397aa


.incbin "baserom/arm9.bin", 0x397aa, 0x20397ac - 0x20397aa


.word 0x21c07d8 @ 0x20397ac
.thumb
Function_20397b0: @ 20397b0 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [pc, #0xc] @ 0x20397c4, (=#0x21c07d8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_20397c0
	bl      Function_2039434
.thumb
branch_20397c0: @ 20397c0 :thumb
	pop     {r3,pc}
@ 0x20397c2


.incbin "baserom/arm9.bin", 0x397c2, 0x20397c4 - 0x20397c2


.word 0x21c07d8 @ 0x20397c4

.incbin "baserom/arm9.bin", 0x397c8, 0x2039834 - 0x20397c8


.thumb
Function_2039834: @ 2039834 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r0
	str     r2, [sp, #0xc]
	cmp     r1, #0x6
	bhi     branch_203985a
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r3, #0
	lsl     r4, r3, #0
	lsl     r0, r4, #0
	lsl     r4, r4, #0
.thumb
branch_203985a: @ 203985a :thumb
	mov     r5, #0x1
	b       branch_2039874
@ 0x203985e


.incbin "baserom/arm9.bin", 0x3985e, 0x2039874 - 0x203985e


.thumb
branch_2039874: @ 2039874 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_200f344
	mov     r0, #0x1
	blx     Function_20c164c
	ldr     r1, [pc, #0x198] @ 0x2039a24, (=#0x2039815)
	mov     r0, #0x1
	blx     Function_20c144c
	mov     r0, #0x1
	blx     Function_20c161c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2017798
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x170] @ 0x2039a28, (=#0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x16c] @ 0x2039a2c, (=#0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [pc, #0x160] @ 0x2039a30, (=#0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	ldr     r3, [pc, #0x15c] @ 0x2039a34, (=#0x4000050)
	mov     r1, #0x0
	strh    r1, [r3, #0x0]
	ldr     r0, [pc, #0x158] @ 0x2039a38, (=#0x4001050)
	sub     r3, #0x50
	strh    r1, [r0, #0x0]
	ldr     r2, [r3, #0x0]
	ldr     r1, [pc, #0x154] @ 0x2039a3c, (=#0xffff1fff)
	sub     r0, #0x50
	and     r2, r1
	str     r2, [r3, #0x0]
	ldr     r2, [r0, #0x0]
	and     r1, r2
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14c] @ 0x2039a40, (=#0x20e5efc)
	bl      Function_201fe94
	mov     r0, r4
	bl      Function_2018340
	mov     r6, r0
	ldr     r0, [pc, #0x140] @ 0x2039a44, (=#0x20e5ed0)
	bl      Function_2018368
	mov     r1, #0x0
	ldr     r2, [pc, #0x13c] @ 0x2039a48, (=#0x20e5ee0)
	mov     r0, r6
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2019ebc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r2, [pc, #0x12c] @ 0x2039a4c, (=#0x1f7)
	mov     r0, r6
	mov     r3, #0x2
	str     r4, [sp, #0x4]
	bl      Function_200daa4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r4
	bl      Function_2002e7c
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, r4
	bl      Function_2019690
	ldr     r1, [pc, #0x10c] @ 0x2039a50, (=#0x6c21)
	mov     r0, #0x0
	bl      Function_201975c
	ldr     r1, [pc, #0x104] @ 0x2039a50, (=#0x6c21)
	mov     r0, #0x4
	bl      Function_201975c
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xd6
	mov     r3, r4
	bl      Function_200b144
	str     r0, [sp, #0x10]
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, r4
	bl      Function_2023790
	mov     r7, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, r4
	bl      Function_2023790
	str     r0, [sp, #0x14]
	bl      Function_201d710
	mov     r0, r4
	bl      Function_200b358
	mov     r4, r0
	ldr     r2, [pc, #0xd0] @ 0x2039a54, (=#0x20e5ec8)
	mov     r0, r6
	add     r1, sp, #0x18
	bl      Function_201a8d4
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	mov     r0, #0x90
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x18
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
	ldr     r2, [pc, #0xa8] @ 0x2039a4c, (=#0x1f7)
	add     r0, sp, #0x18
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_200dc48
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r1, r5
	bl      Function_200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, r7
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r0, sp, #0x18
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r7
	bl      Function_20237bc
	bl      Function_201ffd0
	mov     r0, #0x0
	bl      Function_200f338
	mov     r0, #0x1
	bl      Function_200f338
	mov     r0, #0x0
	mov     r1, #0x3f
	mov     r2, #0x3
	bl      Function_200ab4c
	add     r0, sp, #0x18
	bl      Function_201a8fc
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	mov     r0, r4
	bl      Function_200b3f0
	mov     r0, r6
	bl      Function_20181c4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2039a22


.incbin "baserom/arm9.bin", 0x39a22, 0x2039a24 - 0x2039a22


.word 0x2039815 @ 0x2039a24
.word 0xffffe0ff @ 0x2039a28
.word 0x4001000 @ 0x2039a2c
.word 0x21bf6dc @ 0x2039a30
.word 0x4000050 @ 0x2039a34
.word 0x4001050 @ 0x2039a38
.word 0xffff1fff @ 0x2039a3c
.word 0x20e5efc @ 0x2039a40
.word 0x20e5ed0 @ 0x2039a44
.word 0x20e5ee0 @ 0x2039a48
.word 0x1f7 @ 0x2039a4c
.word 0x6c21 @ 0x2039a50
.word 0x20e5ec8 @ 0x2039a54

.incbin "baserom/arm9.bin", 0x39a58, 0x2039a64 - 0x2039a58


.thumb
Function_2039a64: @ 2039a64 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_200f344
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2017798
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1a4] @ 0x2039c40, (=#0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1a4] @ 0x2039c44, (=#0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [pc, #0x198] @ 0x2039c48, (=#0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	ldr     r3, [pc, #0x190] @ 0x2039c4c, (=#0x4000050)
	mov     r0, #0x0
	strh    r0, [r3, #0x0]
	ldr     r2, [pc, #0x190] @ 0x2039c50, (=#0x4001050)
	sub     r3, #0x50
	strh    r0, [r2, #0x0]
	ldr     r1, [r3, #0x0]
	ldr     r0, [pc, #0x18c] @ 0x2039c54, (=#0xffff1fff)
	sub     r2, #0x50
	and     r1, r0
	str     r1, [r3, #0x0]
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0x180] @ 0x2039c58, (=#0x20e5f7c)
	bl      Function_201fe94
	mov     r0, r4
	bl      Function_2018340
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x178] @ 0x2039c5c, (=#0x20e5f50)
	bl      Function_2018368
	mov     r1, #0x0
	ldr     r0, [sp, #0x10]
	ldr     r2, [pc, #0x170] @ 0x2039c60, (=#0x20e5f60)
	mov     r3, r1
	bl      Function_20183c4
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_2019ebc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r2, [pc, #0x160] @ 0x2039c64, (=#0x1f7)
	mov     r3, #0x2
	str     r4, [sp, #0x4]
	bl      Function_200daa4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r4
	bl      Function_2002e7c
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, r4
	bl      Function_2019690
	ldr     r1, [pc, #0x144] @ 0x2039c68, (=#0x6c21)
	mov     r0, #0x0
	bl      Function_201975c
	ldr     r1, [pc, #0x13c] @ 0x2039c68, (=#0x6c21)
	mov     r0, #0x4
	bl      Function_201975c
	ldr     r2, [pc, #0x138] @ 0x2039c6c, (=#0x2b7)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	str     r0, [sp, #0xc]
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, r4
	bl      Function_2023790
	mov     r4, r0
	bl      Function_201d710
	ldr     r0, [sp, #0x10]
	ldr     r2, [pc, #0x11c] @ 0x2039c70, (=#0x20e5f48)
	add     r1, sp, #0x14
	bl      Function_201a8d4
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	mov     r0, #0x90
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x14
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
	ldr     r2, [pc, #0xf4] @ 0x2039c64, (=#0x1f7)
	add     r0, sp, #0x14
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_200dc48
	ldr     r0, [sp, #0xc]
	mov     r1, #0x10
	mov     r2, r4
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r0, sp, #0x14
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r4
	bl      Function_20237bc
	bl      Function_201ffd0
	mov     r0, #0x0
	bl      Function_200f338
	mov     r0, #0x1
	bl      Function_200f338
	mov     r0, #0x0
	mov     r1, #0x3f
	mov     r2, #0x3
	bl      Function_200ab4c
	ldr     r4, [pc, #0xbc] @ 0x2039c74, (=#0x4000130)
	ldr     r6, [pc, #0xbc] @ 0x2039c78, (=#0x27fffa8)
	mov     r7, #0x1
.thumb
branch_2039bbc: @ 2039bbc :thumb
	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	orr     r1, r0
	ldr     r0, [pc, #0xb8] @ 0x2039c7c, (=#0x2fff)
	eor     r1, r0
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	bl      Function_200106c
	mov     r0, r5
	tst     r0, r7
	bne     branch_2039be0
	mov     r0, #0x1
	mov     r1, r0
	blx     Function_20c12b4
	b       branch_2039bbc
@ 0x2039be0

.thumb
branch_2039be0: @ 2039be0 :thumb
	add     r0, sp, #0x14
	bl      Function_201a8fc
	ldr     r0, [sp, #0xc]
	bl      Function_200b190
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [sp, #0x10]
	bl      Function_20181c4
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2039c3e


.incbin "baserom/arm9.bin", 0x39c3e, 0x2039c40 - 0x2039c3e


.word 0xffffe0ff @ 0x2039c40
.word 0x4001000 @ 0x2039c44
.word 0x21bf6dc @ 0x2039c48
.word 0x4000050 @ 0x2039c4c
.word 0x4001050 @ 0x2039c50
.word 0xffff1fff @ 0x2039c54
.word 0x20e5f7c @ 0x2039c58
.word 0x20e5f50 @ 0x2039c5c
.word 0x20e5f60 @ 0x2039c60
.word 0x1f7 @ 0x2039c64
.word 0x6c21 @ 0x2039c68
.word 0x2b7 @ 0x2039c6c
.word 0x20e5f48 @ 0x2039c70
.word 0x4000130 @ 0x2039c74
.word 0x27fffa8 @ 0x2039c78
.word 0x2fff @ 0x2039c7c

.incbin "baserom/arm9.bin", 0x39c80, 0x2039d6c - 0x2039c80


.thumb
Function_2039d6c: @ 2039d6c :thumb
	ldr     r3, [pc, #0x4] @ 0x2039d74, (=#0x2039d79)
	mov     r0, #0xb
	bx      r3
@ 0x2039d72


.incbin "baserom/arm9.bin", 0x39d72, 0x2039d74 - 0x2039d72


.word 0x2039d79 @ 0x2039d74

.incbin "baserom/arm9.bin", 0x39d78, 0x2039de4 - 0x2039d78


.thumb
Function_2039de4: @ 2039de4 :thumb
	ldr     r3, [pc, #0x0] @ 0x2039de8, (=#0x20181c5)
	bx      r3
@ 0x2039de8

.word 0x20181c5 @ 0x2039de8

.incbin "baserom/arm9.bin", 0x39dec, 0x2039e10 - 0x2039dec


.thumb
Function_2039e10: @ 2039e10 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2039e1a
	bl      Function_2022974
.thumb
branch_2039e1a: @ 2039e1a :thumb
	ldrb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2039e1e


.incbin "baserom/arm9.bin", 0x39e1e, 0x2039e30 - 0x2039e1e


.thumb
Function_2039e30: @ 2039e30 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldrb    r0, [r7, #0x1]
	mov     r5, r1
	mov     r4, r2
	ldrb    r6, [r7, #0x0]
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	blt     branch_2039e46
	cmp     r5, r6
	blt     branch_2039e4a
.thumb
branch_2039e46: @ 2039e46 :thumb
	bl      Function_2022974
.thumb
branch_2039e4a: @ 2039e4a :thumb
	cmp     r4, #0x0
	blt     branch_2039e54
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	blt     branch_2039e58
.thumb
branch_2039e54: @ 2039e54 :thumb
	bl      Function_2022974
.thumb
branch_2039e58: @ 2039e58 :thumb
	mov     r0, r4
	mul     r0, r6
	add     r0, r5, r0
	lsl     r0, r0, #1
	add     r0, r7, r0
	ldrh    r0, [r0, #0x6]
	pop     {r3-r7,pc}
@ 0x2039e66


.incbin "baserom/arm9.bin", 0x39e66, 0x203a024 - 0x2039e66


.thumb
Function_203a024: @ 203a024 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x203a034, (=#0x251)
	cmp     r0, r1
	bcc     branch_203a032
	bl      Function_2022974
	mov     r0, #0x3
.thumb
branch_203a032: @ 203a032 :thumb
	pop     {r3,pc}
@ 0x203a034

.word 0x251 @ 0x203a034

.incbin "baserom/arm9.bin", 0x3a038, 0x203a060 - 0x203a038


.thumb
Function_203a060: @ 203a060 :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0x14] @ 0x203a080, (=#0x20e601e)
	ldrh    r0, [r0, r1]
	cmp     r0, #0x16
	bne     branch_203a07c
	ldr     r1, [pc, #0x10] @ 0x203a084, (=#0x20e4c40)
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0xb
	bne     branch_203a07c
	mov     r0, #0x17
.thumb
branch_203a07c: @ 203a07c :thumb
	pop     {r3,pc}
@ 0x203a07e


.incbin "baserom/arm9.bin", 0x3a07e, 0x203a080 - 0x203a07e


.word 0x20e601e @ 0x203a080
.word 0x20e4c40 @ 0x203a084

.incbin "baserom/arm9.bin", 0x3a088, 0x203a09c - 0x203a088


.thumb
Function_203a09c: @ 203a09c :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x203a0ac, (=#0x20e6020)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0ac

.word 0x20e6020 @ 0x203a0ac

.incbin "baserom/arm9.bin", 0x3a0b0, 0x203a0c4 - 0x203a0b0


.thumb
Function_203a0c4: @ 203a0c4 :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x203a0d4, (=#0x20e6026)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0d4

.word 0x20e6026 @ 0x203a0d4
.thumb
Function_203a0d8: @ 203a0d8 :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x203a0e8, (=#0x20e6028)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0e8

.word 0x20e6028 @ 0x203a0e8

.incbin "baserom/arm9.bin", 0x3a0ec, 0x203a138 - 0x203a0ec


.thumb
Function_203a138: @ 203a138 :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a150, (=#0x20e601c)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x12]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x203a14e


.incbin "baserom/arm9.bin", 0x3a14e, 0x203a150 - 0x203a14e


.word 0x20e601c @ 0x203a150

.incbin "baserom/arm9.bin", 0x3a154, 0x203a19c - 0x203a154


.thumb
Function_203a19c: @ 203a19c :thumb
	push    {r3,lr}
	bl      Function_203a024
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a1b4, (=#0x20e601c)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #20
	lsr     r0, r0, #27
	pop     {r3,pc}
@ 0x203a1b2


.incbin "baserom/arm9.bin", 0x3a1b2, 0x203a1b4 - 0x203a1b2


.word 0x20e601c @ 0x203a1b4

.incbin "baserom/arm9.bin", 0x3a1b8, 0x203a24c - 0x203a1b8


.thumb
Function_203a24c: @ 203a24c :thumb
	push    {r3,lr}
	bl      Function_203a060
	cmp     r0, #0x0
	bne     branch_203a25a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203a25a

.thumb
branch_203a25a: @ 203a25a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a25e


.incbin "baserom/arm9.bin", 0x3a25e, 0x203a2dc - 0x203a25e


.thumb
Function_203a2dc: @ 203a2dc :thumb
	ldr     r1, [pc, #0xc] @ 0x203a2ec, (=#0x1d2)
	cmp     r0, r1
	bne     branch_203a2e6
	mov     r0, #0x1
	bx      lr
@ 0x203a2e6

.thumb
branch_203a2e6: @ 203a2e6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a2ea


.incbin "baserom/arm9.bin", 0x3a2ea, 0x203a2ec - 0x203a2ea


.word 0x1d2 @ 0x203a2ec

.incbin "baserom/arm9.bin", 0x3a2f0, 0x203a334 - 0x203a2f0


.thumb
Function_203a334: @ 203a334 :thumb
	ldr     r3, [pc, #0x18] @ 0x203a350, (=#0x20e5fa4)
	mov     r2, #0x0
.thumb
branch_203a338: @ 203a338 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_203a342
	mov     r0, #0x1
	bx      lr
@ 0x203a342

.thumb
branch_203a342: @ 203a342 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x12
	bcc     branch_203a338
	mov     r0, #0x0
	bx      lr
@ 0x203a34e


.incbin "baserom/arm9.bin", 0x3a34e, 0x203a350 - 0x203a34e


.word 0x20e5fa4 @ 0x203a350
.thumb
Function_203a354: @ 203a354 :thumb
	ldr     r3, [pc, #0x1c] @ 0x203a374, (=#0x20e5fc8)
	mov     r2, #0x0
.thumb
branch_203a358: @ 203a358 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_203a368
	add     r0, r2, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x10] @ 0x203a374, (=#0x20e5fc8)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x203a368

.thumb
branch_203a368: @ 203a368 :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x2a
	bcc     branch_203a358
	mov     r0, #0x0
	bx      lr
@ 0x203a374

.word 0x20e5fc8 @ 0x203a374
.thumb
Function_203a378: @ 203a378 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_203a388
	bl      Function_2022974
.thumb
branch_203a388: @ 203a388 :thumb
	ldr     r1, [pc, #0x8] @ 0x203a394, (=#0xac8)
	mov     r0, r4
	bl      Function_2018144
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x203a394

.word 0xac8 @ 0x203a394
.thumb
Function_203a398: @ 203a398 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_203a3a6
	bl      Function_2022974
.thumb
branch_203a3a6: @ 203a3a6 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x203a3ae


.incbin "baserom/arm9.bin", 0x3a3ae, 0x203a440 - 0x203a3ae


.thumb
Function_203a440: @ 203a440 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x203a446


.incbin "baserom/arm9.bin", 0x3a446, 0x203a4b4 - 0x203a446


.thumb
Function_203a4b4: @ 203a4b4 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x203a4ba


.incbin "baserom/arm9.bin", 0x3a4ba, 0x203a4bc - 0x203a4ba


.thumb
Function_203a4bc: @ 203a4bc :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x203a4c2


.incbin "baserom/arm9.bin", 0x3a4c2, 0x203a4c4 - 0x203a4c2


.thumb
Function_203a4c4: @ 203a4c4 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x14]
	mov     r4, r1
	ldr     r5, [r0, #0x4]
	mov     r7, r2
	mov     r1, r3
	mov     r2, #0x0
	ldr     r3, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a4f4
	mov     r6, r3
.thumb
branch_203a4da: @ 203a4da :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r4, r0
	bne     branch_203a4ec
	lsl     r0, r2, #5
	add     r0, r3, r0
	strh    r7, [r0, #0x18]
	strh    r1, [r0, #0x1a]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203a4ec

.thumb
branch_203a4ec: @ 203a4ec :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x20
	cmp     r2, r5
	bcc     branch_203a4da
.thumb
branch_203a4f4: @ 203a4f4 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203a4fc

.thumb
Function_203a4fc: @ 203a4fc :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	ldr     r5, [r0, #0x4]
	ldr     r4, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a524
	mov     r6, r4
.thumb
branch_203a50c: @ 203a50c :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r1, r0
	bne     branch_203a51c
	lsl     r0, r3, #5
	add     r0, r4, r0
	strh    r2, [r0, #0xc]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203a51c

.thumb
branch_203a51c: @ 203a51c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x20
	cmp     r3, r5
	bcc     branch_203a50c
.thumb
branch_203a524: @ 203a524 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203a52c

.thumb
Function_203a52c: @ 203a52c :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	ldr     r5, [r0, #0x4]
	ldr     r4, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a554
	mov     r6, r4
.thumb
branch_203a53c: @ 203a53c :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r1, r0
	bne     branch_203a54c
	lsl     r0, r3, #5
	add     r0, r4, r0
	strh    r2, [r0, #0x4]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203a54c

.thumb
branch_203a54c: @ 203a54c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x20
	cmp     r3, r5
	bcc     branch_203a53c
.thumb
branch_203a554: @ 203a554 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203a55c

.thumb
Function_203a55c: @ 203a55c :thumb
	push    {r3,r4}
	ldr     r0, [r0, #0x14]
	ldr     r4, [r0, #0x18]
	mov     r0, #0xc
	mul     r0, r1
	strh    r2, [r4, r0]
	add     r0, r4, r0
	strh    r3, [r0, #0x2]
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x203a572


.incbin "baserom/arm9.bin", 0x3a572, 0x203a574 - 0x203a572


.thumb
Function_203a574: @ 203a574 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r3, [r0, #0x18]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r3, r0
	strh    r2, [r0, #0x4]
	mov     r0, #0x1
	bx      lr
@ 0x203a584


.incbin "baserom/arm9.bin", 0x3a584, 0x203a594 - 0x203a584


.thumb
Function_203a594: @ 203a594 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_203a440
	mov     r1, #0x14
	mul     r1, r5
	add     r0, r0, r1
	str     r4, [r0, #0x4]
	str     r6, [r0, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203a5ae


.incbin "baserom/arm9.bin", 0x3a5ae, 0x203a720 - 0x203a5ae


.thumb
Function_203a720: @ 203a720 :thumb
	bx      lr
@ 0x203a722


.incbin "baserom/arm9.bin", 0x3a722, 0x203a728 - 0x203a722


.thumb
Function_203a728: @ 203a728 :thumb
	add     r0, #0x28
	bx      lr
@ 0x203a72c

.thumb
Function_203a72c: @ 203a72c :thumb
	add     r0, #0x50
	bx      lr
@ 0x203a730

.thumb
Function_203a730: @ 203a730 :thumb
	add     r0, #0x3c
	bx      lr
@ 0x203a734

.thumb
Function_203a734: @ 203a734 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #0x3c
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x203a748

.thumb
Function_203a748: @ 203a748 :thumb
	add     r0, #0x64
	bx      lr
@ 0x203a74c

.thumb
Function_203a74c: @ 203a74c :thumb
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x203a752


.incbin "baserom/arm9.bin", 0x3a752, 0x203a754 - 0x203a752


.thumb
Function_203a754: @ 203a754 :thumb
	add     r0, #0x66
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x203a75a


.incbin "baserom/arm9.bin", 0x3a75a, 0x203a764 - 0x203a75a


.thumb
Function_203a764: @ 203a764 :thumb
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x203a76a


.incbin "baserom/arm9.bin", 0x3a76a, 0x203a76c - 0x203a76a


.thumb
Function_203a76c: @ 203a76c :thumb
	add     r0, #0x6c
	bx      lr
@ 0x203a770


.incbin "baserom/arm9.bin", 0x3a770, 0x203a780 - 0x203a770


.thumb
Function_203a780: @ 203a780 :thumb
	add     r0, #0x8c
	bx      lr
@ 0x203a784

.thumb
Function_203a784: @ 203a784 :thumb
	add     r0, #0x98
	bx      lr
@ 0x203a788

.thumb
Function_203a788: @ 203a788 :thumb
	add     r0, #0x96
	bx      lr
@ 0x203a78c


.incbin "baserom/arm9.bin", 0x3a78c, 0x203a790 - 0x203a78c


.thumb
Function_203a790: @ 203a790 :thumb
	ldr     r3, [pc, #0x4] @ 0x203a798, (=#0x20245bd)
	mov     r1, #0x6
	bx      r3
@ 0x203a796


.incbin "baserom/arm9.bin", 0x3a796, 0x203a798 - 0x203a796


.word 0x20245bd @ 0x203a798
.thumb
Function_203a79c: @ 203a79c :thumb
	ldr     r3, [pc, #0x4] @ 0x203a7a4, (=#0x20245bd)
	mov     r1, #0xb
	bx      r3
@ 0x203a7a2


.incbin "baserom/arm9.bin", 0x3a7a2, 0x203a7a4 - 0x203a7a2


.word 0x20245bd @ 0x203a7a4
.thumb
Function_203a7a8: @ 203a7a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_203a79c
	mov     r2, r0
	ldr     r1, [r4, #0x38]
	mov     r0, r4
	mov     r3, #0x40
	bl      Function_2061ca8
	pop     {r4,pc}
@ 0x203a7c0


.incbin "baserom/arm9.bin", 0x3a7c0, 0x203a9c8 - 0x203a7c0


.thumb
Function_203a9c8: @ 203a9c8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_203a138
	cmp     r0, #0x0
	beq     branch_203a9da
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203a9da

.thumb
branch_203a9da: @ 203a9da :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a9de


.incbin "baserom/arm9.bin", 0x3a9de, 0x203c954 - 0x203a9de


.thumb
Function_203c954: @ 203c954 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x3c]
	mov     r4, r1
	mov     r5, r2
	bl      Function_205ea78
	mov     r7, r0
	ldr     r0, [r6, #0x3c]
	bl      Function_205eabc
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0x3c]
	bl      Function_205eac8
	str     r0, [r5, #0x0]
	cmp     r7, #0x3
	bhi     branch_203c9aa
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_203c9aa
@ 0x203c994


.incbin "baserom/arm9.bin", 0x3c994, 0x203c9aa - 0x203c994


.thumb
branch_203c9aa: @ 203c9aa :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x203c9ae


.incbin "baserom/arm9.bin", 0x3c9ae, 0x203c9b0 - 0x203c9ae


.thumb
Function_203c9b0: @ 203c9b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      Function_205eb3c
	bl      Function_20630dc
	mov     r4, r0
	mov     r0, r5
	bl      Function_20630dc
	cmp     r4, r0
	bne     branch_203c9cc
	mov     r0, #0x1
	b       branch_203c9ce
@ 0x203c9cc

.thumb
branch_203c9cc: @ 203c9cc :thumb
	mov     r0, #0x0
.thumb
branch_203c9ce: @ 203c9ce :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x203c9d4

.thumb
Function_203c9d4: @ 203c9d4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r5, r0
	bl      Function_203c954
	mov     r4, r0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	bl      Function_2054f94
	bl      Function_205dae0
	cmp     r0, #0x1
	bne     branch_203ca2e
	cmp     r4, #0x3
	bhi     branch_203ca2e
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	ldr     r0, [sp, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_203ca2e
@ 0x203ca18


.incbin "baserom/arm9.bin", 0x3ca18, 0x203ca2e - 0x203ca18


.thumb
branch_203ca2e: @ 203ca2e :thumb
	ldr     r0, [r5, #0x38]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r3, #0x0
	bl      Function_206326c
	str     r0, [r6, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x203ca40

.thumb
Startpoint_203ca40: @ 203ca40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_203c9d4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_203ca68
	bl      Function_2062d9c
	cmp     r0, #0x1
	bne     branch_203ca68
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r4, #0x0]
	bl      Function_203c9b0
	cmp     r0, #0x1
	bne     branch_203ca68
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x203ca68

.thumb
branch_203ca68: @ 203ca68 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203ca6c

.thumb
Startpoint_203ca6c: @ 203ca6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	mov     r6, r0
	bl      Function_203c954
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_203cae0
	ldr     r4, [sp, #0x0]
	mov     r5, r4
.thumb
branch_203ca8a: @ 203ca8a :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	bne     branch_203cad4
	ldr     r1, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_203cad4
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x2
	bne     branch_203caba
	mov     r0, r6
	mov     r1, r5
	bl      Function_203caec
	cmp     r0, #0x1
	bne     branch_203cad4
	mov     r0, #0x14
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	ldrh    r0, [r0, r1]
	pop     {r3-r7,pc}
@ 0x203caba

.thumb
branch_203caba: @ 203caba :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_203cb18
	cmp     r0, #0x1
	bne     branch_203cad4
	mov     r0, #0x14
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	ldrh    r0, [r0, r1]
	pop     {r3-r7,pc}
@ 0x203cad4

.thumb
branch_203cad4: @ 203cad4 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x14
	add     r5, #0x14
	cmp     r7, r0
	blt     branch_203ca8a
.thumb
branch_203cae0: @ 203cae0 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cae8, (=#0xffff)
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x203cae6


.incbin "baserom/arm9.bin", 0x3cae6, 0x203cae8 - 0x203cae6


.word 0xffff @ 0x203cae8
.thumb
Function_203caec: @ 203caec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x2
	beq     branch_203cafa
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cafa

.thumb
branch_203cafa: @ 203cafa :thumb
	ldrh    r0, [r1, #0x0]
	bl      Function_203f2f4
	mov     r1, r0
	mov     r0, r4
	bl      Function_203f188
	cmp     r0, #0x1
	beq     branch_203cb10
	mov     r0, #0x1
	b       branch_203cb12
@ 0x203cb10

.thumb
branch_203cb10: @ 203cb10 :thumb
	mov     r0, #0x0
.thumb
branch_203cb12: @ 203cb12 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,pc}
@ 0x203cb18

.thumb
Function_203cb18: @ 203cb18 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x10]
	cmp     r1, #0x4
	bne     branch_203cb26
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb26

.thumb
branch_203cb26: @ 203cb26 :thumb
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea78
	cmp     r0, #0x3
	bhi     branch_203cb7c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r2, #0
	lsl     r2, r4, #0
	lsl     r0, r6, #0
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_203cb4e
	cmp     r0, #0x6
	bne     branch_203cb7c
.thumb
branch_203cb4e: @ 203cb4e :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb52


.incbin "baserom/arm9.bin", 0x3cb52, 0x203cb7c - 0x203cb52


.thumb
branch_203cb7c: @ 203cb7c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cb80

.thumb
Startpoint_203cb80: @ 203cb80 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r6, r1
	mov     r4, r2
	bl      Function_205ea78
	cmp     r0, #0x0
	beq     branch_203cb9a
	add     sp, #0x8
	ldr     r0, [pc, #0x44] @ 0x203cbdc, (=#0xffff)
	pop     {r4-r6,pc}
@ 0x203cb9a

.thumb
branch_203cb9a: @ 203cb9a :thumb
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_203c954
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_203cbd4
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r1, r6
.thumb
branch_203cbb0: @ 203cbb0 :thumb
	ldr     r5, [r1, #0x4]
	cmp     r2, r5
	bne     branch_203cbcc
	ldr     r5, [r1, #0x8]
	cmp     r3, r5
	bne     branch_203cbcc
	ldrh    r5, [r1, #0x2]
	cmp     r5, #0x1
	bne     branch_203cbcc
	mov     r1, #0x14
	mul     r1, r0
	add     sp, #0x8
	ldrh    r0, [r6, r1]
	pop     {r4-r6,pc}
@ 0x203cbcc

.thumb
branch_203cbcc: @ 203cbcc :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x14
	cmp     r0, r4
	blt     branch_203cbb0
.thumb
branch_203cbd4: @ 203cbd4 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cbdc, (=#0xffff)
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x203cbda


.incbin "baserom/arm9.bin", 0x3cbda, 0x203cbdc - 0x203cbda


.word 0xffff @ 0x203cbdc
.thumb
Startpoint_203cbe0: @ 203cbe0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r4, r1
	bl      Function_205ea78
	cmp     r0, #0x0
	beq     branch_203cbf4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203cbf4

.thumb
branch_203cbf4: @ 203cbf4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Startpoint_203ca40
	cmp     r0, #0x1
	bne     branch_203cc10
	ldr     r0, [r4, #0x0]
	bl      Function_2062920
	sub     r0, #0x5b
	cmp     r0, #0x5
	bhi     branch_203cc10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x203cc10

.thumb
branch_203cc10: @ 203cc10 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203cc14

.thumb
Startpoint_203cc14: @ 203cc14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	bl      Function_205eabc
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eac8
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_203cc78
	ldr     r5, [sp, #0x4]
.thumb
branch_203cc3a: @ 203cc3a :thumb
	ldrh    r1, [r5, #0x2]
	cmp     r6, r1
	blt     branch_203cc6e
	ldrh    r0, [r5, #0x6]
	add     r0, r1, r0
	cmp     r6, r0
	bge     branch_203cc6e
	ldrh    r1, [r5, #0x4]
	cmp     r4, r1
	blt     branch_203cc6e
	ldrh    r0, [r5, #0x8]
	add     r0, r1, r0
	cmp     r4, r0
	bge     branch_203cc6e
	ldrh    r1, [r5, #0xe]
	ldr     r0, [sp, #0x0]
	bl      Function_203f150
	ldrh    r1, [r5, #0xc]
	cmp     r1, r0
	bne     branch_203cc6e
	ldr     r0, [sp, #0x4]
	lsl     r1, r7, #4
	add     sp, #0xc
	ldrh    r0, [r0, r1]
	pop     {r4-r7,pc}
@ 0x203cc6e

.thumb
branch_203cc6e: @ 203cc6e :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	cmp     r7, r0
	blt     branch_203cc3a
.thumb
branch_203cc78: @ 203cc78 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cc80, (=#0xffff)
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203cc7e


.incbin "baserom/arm9.bin", 0x3cc7e, 0x203cc80 - 0x203cc7e


.word 0xffff @ 0x203cc80
.thumb
Startpoint_203cc84: @ 203cc84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2006840
	mov     r4, r0
	mov     r0, r5
	bl      Startpoint_203cdb0
	ldr     r1, [pc, #0x18] @ 0x203ccb0, (=#0x21c07dc)
	str     r0, [r1, #0x0]
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_203cca4
	bl      Function_2053808
	b       branch_203cca8
@ 0x203cca4

.thumb
branch_203cca4: @ 203cca4 :thumb
	bl      Function_2053704
.thumb
branch_203cca8: @ 203cca8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x203ccb0

.word 0x21c07dc @ 0x203ccb0
.thumb
Startpoint_203ccb4: @ 203ccb4 :thumb
	push    {r3,lr}
	bl      Startpoint_203cdb0
	ldr     r1, [pc, #0xc] @ 0x203ccc8, (=#0x21c07dc)
	str     r0, [r1, #0x0]
	bl      Function_20535cc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203ccc6


.incbin "baserom/arm9.bin", 0x3ccc6, 0x203ccc8 - 0x203ccc6


.word 0x21c07dc @ 0x203ccc8
.thumb
Startpoint_203cccc: @ 203cccc :thumb
	push    {r3,lr}
	bl      Function_200682c
	bl      Startpoint_203ceec
	cmp     r0, #0x0
	beq     branch_203ccde
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203ccde

.thumb
branch_203ccde: @ 203ccde :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203cce2


.incbin "baserom/arm9.bin", 0x3cce2, 0x203cd44 - 0x203cce2


.thumb
Function_203cd44: @ 203cd44 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x68]
	bx      lr
@ 0x203cd4a


.incbin "baserom/arm9.bin", 0x3cd4a, 0x203cd4c - 0x203cd4a


.thumb
Function_203cd4c: @ 203cd4c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203cd58
	mov     r0, #0x1
	bx      lr
@ 0x203cd58

.thumb
branch_203cd58: @ 203cd58 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203cd5c


.incbin "baserom/arm9.bin", 0x3cd5c, 0x203cd74 - 0x203cd5c


.thumb
Function_203cd74: @ 203cd74 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_203cd80
	mov     r0, #0x1
	bx      lr
@ 0x203cd80

.thumb
branch_203cd80: @ 203cd80 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203cd84

.thumb
Function_203cd84: @ 203cd84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x4]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_203cd98
	bl      Function_2022974
.thumb
branch_203cd98: @ 203cd98 :thumb
	mov     r0, r5
	bl      Function_203cd44
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0xb
	bl      Function_20067e8
	ldr     r1, [r5, #0x0]
	str     r0, [r1, #0x4]
	pop     {r4-r6,pc}
@ 0x203cdae


.incbin "baserom/arm9.bin", 0x3cdae, 0x203cdb0 - 0x203cdae


.thumb
Startpoint_203cdb0: @ 203cdb0 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x7
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0xb
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r1, #0x20
	mov     r0, #0x3
	lsl     r2, r1, #9
	bl      Function_2017fc8
	mov     r2, #0x3
	mov     r0, #0x0
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0xcc
	mov     r2, #0xb
	bl      Function_200681c
	mov     r1, #0x0
	mov     r2, #0xcc
	mov     r4, r0
	blx     Function_20c4cf4
	mov     r0, #0xb
	mov     r1, #0x10
	bl      Function_2018144
	str     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0x4]
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0xc]
	mov     r0, r5
	bl      Function_2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	bl      Function_203a790
	bl      Function_203a720
	str     r0, [r4, #0x1c]
	bl      Function_2039d6c
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_203a378
	mov     r0, #0xb
	bl      Function_207d99c
	mov     r1, r4
	add     r1, #0x98
	str     r0, [r1, #0x0]
	mov     r0, #0xb
	bl      Function_206940c
	mov     r1, r4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_2069434
	mov     r0, #0xb
	bl      Function_209acbc
	mov     r1, r4
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, #0xb
	bl      Function_209c370
	mov     r1, r4
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203ce6a


.incbin "baserom/arm9.bin", 0x3ce6a, 0x203ce6c - 0x203ce6a


.thumb
Startpoint_203ce6c: @ 203ce6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_200682c
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	bl      Function_2039de4
	mov     r0, r4
	bl      Function_203a398
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_20181c4
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_206942c
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_209acdc
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_209c388
	ldr     r0, [r4, #0x0]
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_2006830
	mov     r0, #0x5b
	bl      Function_201807c
	mov     r0, #0xb
	bl      Function_201807c
	mov     r0, #0x20
	bl      Function_201807c
	pop     {r3-r5,pc}
@ 0x203ceca


.incbin "baserom/arm9.bin", 0x3ceca, 0x203cecc - 0x203ceca


.thumb
Startpoint_203cecc: @ 203cecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_203cee8
	bl      Function_2006844
	cmp     r0, #0x0
	beq     branch_203cee8
	ldr     r0, [r4, #0x0]
	bl      Function_2006814
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_203cee8: @ 203cee8 :thumb
	pop     {r4,pc}
@ 0x203ceea


.incbin "baserom/arm9.bin", 0x3ceea, 0x203ceec - 0x203ceea


.thumb
Startpoint_203ceec: @ 203ceec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203cf5c
	mov     r0, r4
	bl      Startpoint_2050958
	cmp     r0, #0x1
	bne     branch_203cf0e
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_203cf0e
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      0x21ea714
.thumb
branch_203cf0e: @ 203cf0e :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_203cf2a
	bl      Startpoint_203cecc
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203cf36
	ldr     r0, [pc, #0x34] @ 0x203cf58, (=#0x5)
	bl      Function_2006514
	b       branch_203cf36
@ 0x203cf2a

.thumb
branch_203cf2a: @ 203cf2a :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_203cf36
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Startpoint_203cecc
.thumb
branch_203cf36: @ 203cf36 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x0
	beq     branch_203cf54
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_203cf54
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_203cf54
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	bne     branch_203cf54
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cf54

.thumb
branch_203cf54: @ 203cf54 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cf58

.word 0x5 @ 0x203cf58
.thumb
Function_203cf5c: @ 203cf5c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r5, #0x0
	ldr     r1, [r1, #0x8]
	cmp     r1, #0x0
	bne     branch_203cf7c
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x0
	beq     branch_203cf7c
	bl      Function_20509a4
	cmp     r0, #0x0
	bne     branch_203cf7c
	mov     r5, #0x1
.thumb
branch_203cf7c: @ 203cf7c :thumb
	cmp     r5, #0x0
	beq     branch_203cf9c
	ldr     r0, [r4, #0x3c]
	bl      Function_205f490
	ldr     r3, [pc, #0x198] @ 0x203d120, (=#0x21bf67c)
	add     r0, sp, #0x8
	ldr     r2, [r3, #0x48]
	ldr     r3, [r3, #0x44]
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x21d1cac
.thumb
branch_203cf9c: @ 203cf9c :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x70]
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x180] @ 0x203d124, (=#0x146)
	cmp     r1, r0
	bne     branch_203cfaa
	mov     r2, #0x0
.thumb
branch_203cfaa: @ 203cfaa :thumb
	cmp     r2, #0x4
	bhi     branch_203d0aa
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r5, #3
	lsl     r0, r1, #0
	lsl     r2, r2, #1
	lsl     r0, r5, #0
	lsl     r6, r7, #1
	cmp     r5, #0x0
	beq     branch_203cfd8
	bl      Function_2058c40
	cmp     r0, #0x0
	beq     branch_203cfd8
	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d213c
.thumb
branch_203cfd8: @ 203cfd8 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_205805c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203cfe4


.incbin "baserom/arm9.bin", 0x3cfe4, 0x203d0aa - 0x203cfe4


.thumb
branch_203d0aa: @ 203d0aa :thumb
	cmp     r5, #0x0
	beq     branch_203d11c
	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d1da4
	cmp     r0, #0x1
	bne     branch_203d0e4
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x8]
	bl      0x21dda78
	mov     r0, r4
	mov     r1, #0x4
	bl      0x21e1bcc
	ldr     r0, [r4, #0x3c]
	bl      Function_205f56c
	ldr     r0, [r4, #0x3c]
	bl      0x21e0eec
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      0x21ea714
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203d0e4

.thumb
branch_203d0e4: @ 203d0e4 :thumb
	ldr     r0, [pc, #0x38] @ 0x203d120, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_203d0f6
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x8]
	bl      0x21dda78
.thumb
branch_203d0f6: @ 203d0f6 :thumb
	mov     r5, #0x0
	bl      Function_203d158
	cmp     r0, #0x0
	beq     branch_203d106
	bl      0x2253dd4
	mov     r5, r0
.thumb
branch_203d106: @ 203d106 :thumb
	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x6]
	mov     r2, #0x0
	mvn     r2, r2
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldrh    r3, [r3, #0x4]
	ldr     r0, [r4, #0x3c]
	ldr     r1, [r4, #0x28]
	bl      Function_205f180
.thumb
branch_203d11c: @ 203d11c :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203d120

.word 0x21bf67c @ 0x203d120
.word 0x146 @ 0x203d124

.incbin "baserom/arm9.bin", 0x3d128, 0x203d158 - 0x203d128


.thumb
Function_203d158: @ 203d158 :thumb
	ldr     r0, [pc, #0x10] @ 0x203d16c, (=#0x21c07dc)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_203d166
	mov     r0, #0x0
	bx      lr
@ 0x203d166

.thumb
branch_203d166: @ 203d166 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x203d16a


.incbin "baserom/arm9.bin", 0x3d16a, 0x203d16c - 0x203d16a


.word 0x21c07dc @ 0x203d16c

.incbin "baserom/arm9.bin", 0x3d170, 0x203d174 - 0x203d170


.thumb
Function_203d174: @ 203d174 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x203d178

.thumb
Function_203d178: @ 203d178 :thumb
	ldr     r2, [pc, #0x10] @ 0x203d18c, (=#0x20ea12c)
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x203d18a


.incbin "baserom/arm9.bin", 0x3d18a, 0x203d18c - 0x203d18a


.word 0x20ea12c @ 0x203d18c
.thumb
Function_203d190: @ 203d190 :thumb
	ldr     r2, [pc, #0x10] @ 0x203d1a4, (=#0x20ea140)
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x203d1a2


.incbin "baserom/arm9.bin", 0x3d1a2, 0x203d1a4 - 0x203d1a2


.word 0x20ea140 @ 0x203d1a4

.incbin "baserom/arm9.bin", 0x3d1a8, 0x203d1e4 - 0x203d1a8


.thumb
Function_203d1e4: @ 203d1e4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x1c] @ 0x203d208, (=#0x20ea338)
	add     r4, sp, #0x0
	mov     r6, r0
	mov     r2, r1
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r0, r6
	mov     r1, r3
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x203d206


.incbin "baserom/arm9.bin", 0x3d206, 0x203d208 - 0x203d206


.word 0x20ea338 @ 0x203d208

.incbin "baserom/arm9.bin", 0x3d20c, 0x203d264 - 0x203d20c


.thumb
Function_203d264: @ 203d264 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	bl      Function_207d990
	mov     r6, r0
	cmp     r4, #0x0
	beq     branch_203d27c
	cmp     r4, #0x1
	beq     branch_203d284
	b       branch_203d28c
@ 0x203d27c

.thumb
branch_203d27c: @ 203d27c :thumb
	ldr     r1, [pc, #0x38] @ 0x203d2b8, (=#0x20ea154)
	ldr     r0, [pc, #0x3c] @ 0x203d2bc, (=#0x2100a80)
	str     r1, [r0, #0x0]
	b       branch_203d290
@ 0x203d284

.thumb
branch_203d284: @ 203d284 :thumb
	ldr     r1, [pc, #0x38] @ 0x203d2c0, (=#0x20ea158)
	ldr     r0, [pc, #0x34] @ 0x203d2bc, (=#0x2100a80)
	str     r1, [r0, #0x0]
	b       branch_203d290
@ 0x203d28c

.thumb
branch_203d28c: @ 203d28c :thumb
	bl      Function_2022974
.thumb
branch_203d290: @ 203d290 :thumb
	ldr     r1, [pc, #0x28] @ 0x203d2bc, (=#0x2100a80)
	mov     r0, r6
	ldr     r1, [r1, #0x0]
	mov     r2, #0x20
	bl      Function_207d824
	mov     r3, r5
	add     r3, #0x98
	ldr     r1, [r5, #0xc]
	ldr     r3, [r3, #0x0]
	mov     r4, r0
	mov     r2, #0x3
	bl      Function_207cb2c
	mov     r0, r5
	mov     r1, r4
	bl      Function_203d1e4
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203d2b8

.word 0x20ea154 @ 0x203d2b8
.word 0x2100a80 @ 0x203d2bc
.word 0x20ea158 @ 0x203d2c0
.thumb
Function_203d2c4: @ 203d2c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_207cb94
	mov     r4, r0
	beq     branch_203d2de
	mov     r0, r5
	bl      Function_207cb9c
	cmp     r0, #0x5
	bne     branch_203d2de
	bl      Function_2022974
.thumb
branch_203d2de: @ 203d2de :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203d2e2


.incbin "baserom/arm9.bin", 0x3d2e2, 0x203d334 - 0x203d2e2


.thumb
Function_203d334: @ 203d334 :thumb
	ldr     r3, [pc, #0x4] @ 0x203d33c, (=#0x203cd85)
	mov     r2, r1
	ldr     r1, [pc, #0x4] @ 0x203d340, (=#0x20f410c)
	bx      r3
@ 0x203d33c

.word 0x203cd85 @ 0x203d33c
.word 0x20f410c @ 0x203d340
.thumb
Function_203d344: @ 203d344 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x40
	mov     r6, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x40
	blx     Function_20c4bb8
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	bl      Function_207d990
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0xc]
	bl      Function_2028430
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0xc]
	mov     r0, r4
	add     r0, #0x21
	strb    r6, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x20
	strb    r7, [r0, #0x0]
	str     r5, [r4, #0x1c]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x203d390


.incbin "baserom/arm9.bin", 0x3d390, 0x203d3c0 - 0x203d390


.thumb
Function_203d3c0: @ 203d3c0 :thumb
	push    {r3-r5,lr}
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, #0x3
	mov     r5, r1
	bl      Function_203d344
	mov     r4, r0
	ldr     r1, [pc, #0xc] @ 0x203d3e0, (=#0x20f1e88)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203d3de


.incbin "baserom/arm9.bin", 0x3d3de, 0x203d3e0 - 0x203d3de


.word 0x20f1e88 @ 0x203d3e0
.thumb
Function_203d3e4: @ 203d3e4 :thumb
	push    {r3-r5,lr}
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, #0x13
	mov     r5, r1
	bl      Function_203d344
	mov     r4, r0
	ldr     r1, [pc, #0xc] @ 0x203d404, (=#0x20f1e88)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203d402


.incbin "baserom/arm9.bin", 0x3d402, 0x203d404 - 0x203d402


.word 0x20f1e88 @ 0x203d404
.thumb
Function_203d408: @ 203d408 :thumb
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x203d40e


.incbin "baserom/arm9.bin", 0x3d40e, 0x203d410 - 0x203d40e


.thumb
Function_203d410: @ 203d410 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, #0x12
	mov     r5, r1
	bl      Function_203d344
	mov     r6, r0
	add     r0, #0x22
	strb    r4, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x203d434, (=#0x20f1e88)
	mov     r0, r5
	mov     r2, r6
	bl      Function_203cd84
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x203d434

.word 0x20f1e88 @ 0x203d434
.thumb
Function_203d438: @ 203d438 :thumb
	add     r0, #0x23
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x203d43e


.incbin "baserom/arm9.bin", 0x3d43e, 0x203d440 - 0x203d43e


.thumb
Function_203d440: @ 203d440 :thumb
	ldrb    r0, [r0, #0x14]
	bx      lr
@ 0x203d444


.incbin "baserom/arm9.bin", 0x3d444, 0x203d50c - 0x203d444


.thumb
Function_203d50c: @ 203d50c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, #0x2
	str     r5, [r4, #0x0]
	bl      Function_203d344
	mov     r5, r0
	add     r0, #0x32
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xf
	mov     r2, r4
	bic     r1, r0
	mov     r0, #0x2
	orr     r1, r0
	mov     r0, r5
	add     r0, #0x32
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x32
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xf0
	bic     r1, r0
	mov     r0, #0x20
	orr     r1, r0
	mov     r0, r5
	add     r0, #0x32
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1e
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	ldr     r1, [pc, #0xc] @ 0x203d574, (=#0x203d445)
	mov     r0, r7
	str     r5, [r4, #0x4]
	bl      Function_2050944
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x203d574

.word 0x203d445 @ 0x203d574
.thumb
Function_203d578: @ 203d578 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r3
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, #0xd
	mov     r7, r1
	bl      Function_203d344
	mov     r4, r0
	ldr     r1, [sp, #0x1c]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x2a
	strb    r5, [r0, #0x0]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_203d5ae
	mov     r0, r4
	add     r0, #0x2b
	strb    r6, [r0, #0x0]
	b       branch_203d5b6
@ 0x203d5ae

.thumb
branch_203d5ae: @ 203d5ae :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
.thumb
branch_203d5b6: @ 203d5b6 :thumb
	ldr     r1, [pc, #0xc] @ 0x203d5c4, (=#0x20f1e88)
	mov     r0, r7
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x203d5c4

.word 0x20f1e88 @ 0x203d5c4
.thumb
Function_203d5c8: @ 203d5c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x30
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x11]
	strb    r6, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_207a0f8
	strb    r0, [r4, #0x13]
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0xc]
	bl      Function_202d79c
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0xc]
	bl      Function_207a274
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0xc]
	bl      Function_208c324
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	ldr     r1, [pc, #0x20] @ 0x203d63c, (=#0x20ea02c)
	mov     r0, r4
	bl      Function_208d720
	ldr     r0, [r5, #0xc]
	bl      Function_2025e38
	mov     r1, r0
	mov     r0, r4
	bl      Function_208e9c0
	ldr     r1, [pc, #0x10] @ 0x203d640, (=#0x20f410c)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203d63c

.word 0x20ea02c @ 0x203d63c
.word 0x20f410c @ 0x203d640

.incbin "baserom/arm9.bin", 0x3d644, 0x203d6e4 - 0x203d644


.thumb
Function_203d6e4: @ 203d6e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x30
	mov     r6, r2
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x11]
	strb    r6, [r4, #0x14]
	strb    r0, [r4, #0x13]
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	mov     r0, #0x2
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0xc]
	bl      Function_207a274
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0xc]
	bl      Function_208c324
	str     r0, [r4, #0x2c]
	ldr     r1, [pc, #0x20] @ 0x203d74c, (=#0x20ea160)
	mov     r0, r4
	bl      Function_208d720
	ldr     r0, [r5, #0xc]
	bl      Function_2025e38
	mov     r1, r0
	mov     r0, r4
	bl      Function_208e9c0
	mov     r0, r5
	mov     r1, r4
	bl      Function_203d334
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203d74c

.word 0x20ea160 @ 0x203d74c
.thumb
Function_203d750: @ 203d750 :thumb
	ldrb    r0, [r0, #0x16]
	bx      lr
@ 0x203d754

.thumb
Function_203d754: @ 203d754 :thumb
	ldr     r3, [pc, #0x4] @ 0x203d75c, (=#0x203cd85)
	mov     r2, r1
	ldr     r1, [pc, #0x4] @ 0x203d760, (=#0x20ea2c8)
	bx      r3
@ 0x203d75c

.word 0x203cd85 @ 0x203d75c
.word 0x20ea2c8 @ 0x203d760

.incbin "baserom/arm9.bin", 0x3d764, 0x203d80c - 0x203d764


.thumb
Function_203d80c: @ 203d80c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r5, r2
	mov     r6, r3
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, #0x20
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	cmp     r6, #0x0
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x4]
	str     r6, [r4, #0x8]
	bne     branch_203d84a
	mov     r0, #0x0
	ldr     r2, [r7, #0xc]
	mov     r1, r0
	mov     r3, #0x20
	bl      Function_209747c
	str     r0, [r4, #0xc]
	ldrh    r1, [r5, #0x0]
	bl      Function_20974f4
	b       branch_203d860
@ 0x203d84a

.thumb
branch_203d84a: @ 203d84a :thumb
	ldr     r2, [r7, #0xc]
	mov     r0, #0x1
	mov     r1, #0x0
	mov     r3, #0x20
	bl      Function_209747c
	str     r0, [r4, #0xc]
	ldrh    r1, [r5, #0x0]
	ldrh    r2, [r6, #0x0]
	bl      Function_20974f8
.thumb
branch_203d860: @ 203d860 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0xc] @ 0x203d870, (=#0x203d765)
	mov     r2, r4
	bl      Function_2050944
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203d86e


.incbin "baserom/arm9.bin", 0x3d86e, 0x203d870 - 0x203d86e


.word 0x203d765 @ 0x203d870

.incbin "baserom/arm9.bin", 0x3d874, 0x203d884 - 0x203d874


.thumb
Function_203d884: @ 203d884 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x1c] @ 0x203d8a8, (=#0x20ea318)
	add     r4, sp, #0x0
	mov     r6, r0
	mov     r2, r1
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r0, r6
	mov     r1, r3
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x203d8a6


.incbin "baserom/arm9.bin", 0x3d8a6, 0x203d8a8 - 0x203d8a6


.word 0x20ea318 @ 0x203d8a8

.incbin "baserom/arm9.bin", 0x3d8ac, 0x203d9d8 - 0x203d8ac


.thumb
Function_203d9d8: @ 203d9d8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x1c] @ 0x203d9fc, (=#0x20ea278)
	add     r4, sp, #0x0
	mov     r6, r0
	mov     r2, r1
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r0, r6
	mov     r1, r3
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x203d9fa


.incbin "baserom/arm9.bin", 0x3d9fa, 0x203d9fc - 0x203d9fa


.word 0x20ea278 @ 0x203d9fc
.thumb
Function_203da00: @ 203da00 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x20
	mov     r4, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r5, r0
	blx     Function_20d5124
	mov     r0, r6
	bl      Function_207a268
	mov     r1, r4
	bl      Function_207a0fc
	str     r0, [r5, #0x0]
	mov     r0, r6
	bl      Function_202a750
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_2029ca8
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	bl      Function_2029d04
	str     r4, [r5, #0x4]
	str     r0, [r5, #0x8]
	mov     r0, r6
	bl      Function_2025e44
	str     r0, [r5, #0xc]
	mov     r0, r6
	bl      Function_202cd88
	str     r0, [r5, #0x10]
	mov     r0, r6
	bl      Function_2025e38
	str     r0, [r5, #0x14]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x18]
	str     r0, [r5, #0x1c]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x203da62


.incbin "baserom/arm9.bin", 0x3da62, 0x203dac0 - 0x203da62


.thumb
Function_203dac0: @ 203dac0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x20
	mov     r1, #0x10
	mov     r7, r2
	str     r3, [sp, #0x4]
	bl      Function_2018144
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_203dadc: @ 203dadc :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_203dadc
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x10]
	mov     r3, r4
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, #0x20
	add     r3, #0x8
	bl      Function_203da00
	str     r0, [r4, #0xc]
	ldr     r1, [pc, #0x10] @ 0x203db0c, (=#0x203da65)
	mov     r0, r6
	mov     r2, r4
	str     r5, [r4, #0x4]
	bl      Function_2050944
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203db0a


.incbin "baserom/arm9.bin", 0x3db0a, 0x203db0c - 0x203db0a


.word 0x203da65 @ 0x203db0c

.incbin "baserom/arm9.bin", 0x3db10, 0x203db24 - 0x203db10


.thumb
Function_203db24: @ 203db24 :thumb
	push    {r3,lr}
	mov     r2, r1
	ldr     r1, [pc, #0x8] @ 0x203db34, (=#0x2100ab4)
	bl      Function_203cd84
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203db32


.incbin "baserom/arm9.bin", 0x3db32, 0x203db34 - 0x203db32


.word 0x2100ab4 @ 0x203db34

.incbin "baserom/arm9.bin", 0x3db38, 0x203dddc - 0x203db38


.thumb
Function_203dddc: @ 203dddc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x20
	mov     r1, #0x68
	bl      Function_2018144
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [r2, #0x0]
	ldr     r1, [pc, #0x8] @ 0x203ddf8, (=#0x203dbf1)
	mov     r0, r4
	bl      Function_2050944
	pop     {r4,pc}
@ 0x203ddf8

.word 0x203dbf1 @ 0x203ddf8
.thumb
Function_203ddfc: @ 203ddfc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x20
	mov     r1, #0xc
	bl      Function_2018144
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x8]
	ldr     r1, [pc, #0xc] @ 0x203de30, (=#0x20ea258)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	pop     {r3-r5,pc}
@ 0x203de2e


.incbin "baserom/arm9.bin", 0x3de2e, 0x203de30 - 0x203de2e


.word 0x20ea258 @ 0x203de30
.thumb
Function_203de34: @ 203de34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x14
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_202cd88
	str     r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x203de74, (=#0x20ea248)
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203de74

.word 0x20ea248 @ 0x203de74

.incbin "baserom/arm9.bin", 0x3de78, 0x203dfe8 - 0x203de78


.thumb
Function_203dfe8: @ 203dfe8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x4]
	mov     r6, r1
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r5, [sp, #0x2c]
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x14
	bl      Function_2018184
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x28]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x30]
	str     r0, [r4, #0x8]
	ldr     r0, [r7, #0xc]
	bl      Function_2025e44
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, #0xb
	mov     r1, r6
	bl      Function_208712c
	str     r0, [r4, #0xc]
	mov     r0, #0xc
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [r4, #0x10]
	cmp     r6, #0x1
	beq     branch_203e03c
	cmp     r6, #0x5
	beq     branch_203e072
	b       branch_203e07c
@ 0x203e03c

.thumb
branch_203e03c: @ 203e03c :thumb
	ldr     r0, [r7, #0xc]
	bl      Function_207a268
	ldr     r1, [r4, #0x4]
	bl      Function_207a0fc
	mov     r1, #0x6f
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	ldr     r1, [r4, #0xc]
	mov     r2, #0x0
	str     r0, [r1, #0x10]
	mov     r0, r6
	mov     r1, #0x70
	bl      Function_2074470
	ldr     r1, [r4, #0xc]
	cmp     r5, #0x0
	str     r0, [r1, #0x8]
	beq     branch_203e08a
	ldr     r0, [r4, #0x10]
	mov     r1, r5
	bl      Function_2023d28
	b       branch_203e08a
@ 0x203e072

.thumb
branch_203e072: @ 203e072 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, r5
	bl      Function_2023d28
	b       branch_203e08a
@ 0x203e07c

.thumb
branch_203e07c: @ 203e07c :thumb
	cmp     r5, #0x0
	beq     branch_203e08a
	ldr     r0, [r4, #0xc]
	mov     r1, r5
	ldr     r0, [r0, #0x18]
	bl      Function_2023d28
.thumb
branch_203e08a: @ 203e08a :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x8] @ 0x203e098, (=#0x203de99)
	mov     r2, r4
	bl      Function_2050944
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x203e098

.word 0x203de99 @ 0x203e098

.incbin "baserom/arm9.bin", 0x3e09c, 0x203e0c0 - 0x203e09c


.thumb
Function_203e0c0: @ 203e0c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x203e0c8, (=#0x203cd85)
	mov     r2, r1
	ldr     r1, [pc, #0x4] @ 0x203e0cc, (=#0x20ea1f8)
	bx      r3
@ 0x203e0c8

.word 0x203cd85 @ 0x203e0c8
.word 0x20ea1f8 @ 0x203e0cc
.thumb
Function_203e0d0: @ 203e0d0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_202c834
	ldr     r5, [pc, #0x18] @ 0x203e0f8, (=#0x20ea298)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, r2
	ldr     r2, [r4, #0xc]
	mov     r0, r4
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203e0f8

.word 0x20ea298 @ 0x203e0f8
.thumb
Function_203e0fc: @ 203e0fc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0xa4] @ 0x203e1a8, (=#0x20ea2a8)
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r6, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0xb
	mov     r1, #0x44
	bl      Function_2018184
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_202da40
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	bl      Function_2025ccc
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      Function_20245bc
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_2024420
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0xc]
	bl      Function_2027560
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0xc]
	bl      Function_202b370
	str     r0, [r4, #0x14]
	ldr     r0, [r5, #0xc]
	bl      Function_202c878
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e38
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0xc]
	bl      Function_202cd88
	str     r0, [r4, #0x28]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x2c]
	ldr     r0, [r5, #0xc]
	bl      Function_208c324
	str     r0, [r4, #0x3c]
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0xc]
	bl      Function_207a274
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x14]
	bl      Function_2039058
	str     r0, [r4, #0x38]
	ldr     r0, [r5, #0xc]
	bl      Function_207d990
	str     r0, [r4, #0x30]
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r4
	str     r6, [r4, #0x40]
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x203e1a8

.word 0x20ea2a8 @ 0x203e1a8

.incbin "baserom/arm9.bin", 0x3e1ac, 0x203e224 - 0x203e1ac


.thumb
Function_203e224: @ 203e224 :thumb
	ldr     r3, [pc, #0x4] @ 0x203e22c, (=#0x203cd85)
	ldr     r1, [pc, #0x8] @ 0x203e230, (=#0x20ea328)
	ldr     r2, [r0, #0xc]
	bx      r3
@ 0x203e22c

.word 0x203cd85 @ 0x203e22c
.word 0x20ea328 @ 0x203e230

.incbin "baserom/arm9.bin", 0x3e234, 0x203e244 - 0x203e234


.thumb
Function_203e244: @ 203e244 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r1, #0xb
	add     r2, sp, #0x0
	bl      Function_202444c
	ldr     r1, [sp, #0x0]
	mov     r4, r0
	cmp     r1, #0x2
	bne     branch_203e262
	bl      Function_20181c4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203e262

.thumb
branch_203e262: @ 203e262 :thumb
	ldr     r1, [pc, #0xc] @ 0x203e270, (=#0x20ea1b8)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203e270

.word 0x20ea1b8 @ 0x203e270

.incbin "baserom/arm9.bin", 0x3e274, 0x203e284 - 0x203e274


.thumb
Function_203e284: @ 203e284 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x1c] @ 0x203e2a8, (=#0x20ea198)
	add     r4, sp, #0x0
	mov     r6, r0
	mov     r2, r1
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r0, r6
	mov     r1, r3
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x203e2a6


.incbin "baserom/arm9.bin", 0x3e2a6, 0x203e2a8 - 0x203e2a6


.word 0x20ea198 @ 0x203e2a8

.incbin "baserom/arm9.bin", 0x3e2ac, 0x203e2fc - 0x203e2ac


.thumb
Function_203e2fc: @ 203e2fc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_207a268
	bl      0x21e7278
	mov     r5, r0
	bne     branch_203e314
	bl      Function_2022974
.thumb
branch_203e314: @ 203e314 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_206d578
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_2025e44
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      Function_2025e38
	str     r0, [sp, #0x8]
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	bl      Function_2055428
	add     r1, sp, #0x0
	strh    r0, [r1, #0xc]
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x0
	bl      Function_20985ac
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203e348


.incbin "baserom/arm9.bin", 0x3e348, 0x203e414 - 0x203e348


.thumb
Function_203e414: @ 203e414 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	bl      Function_2050a60
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r1, r0
	bl      Function_2018144
	mov     r4, r0
	str     r4, [r4, #0xc]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e50
	bl      Function_202b5b4
	str     r0, [r4, #0x0]
	bl      Function_20138ec
	str     r0, [r4, #0x4]
	str     r1, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_202cd88
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x0]
	bl      Function_2027b50
	str     r0, [r4, #0x1c]
	lsl     r1, r6, #24
	ldr     r0, [r5, #0xc]
	lsr     r1, r1, #24
	bl      Function_203e484
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0xc]
	bl      Function_202cd88
	mov     r1, #0x5
	bl      Function_202cfec
	ldr     r1, [pc, #0x8] @ 0x203e480, (=#0x203e35d)
	mov     r0, r7
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x203e480

.word 0x203e35d @ 0x203e480
.thumb
Function_203e484: @ 203e484 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x0]
	bl      Function_202b4a0
	mov     r4, r0
	bl      Function_201d2d0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_202b428
	bl      SetPRNGSeed
	ldr     r0, [pc, #0x50] @ 0x203e4f4, (=#0x20ea17c)
	add     r1, sp, #0x8
	mov     r2, #0xc
	blx     Function_20c4db0
	mov     r4, #0x0
	mov     r7, #0xc
	add     r6, sp, #0x8
.thumb
branch_203e4b0: @ 203e4b0 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0xc
	bcs     branch_203e4da
.thumb
branch_203e4ba: @ 203e4ba :thumb
	bl      PRNG
	mov     r1, r7
	blx     Division
	lsl     r0, r1, #24
	lsr     r2, r0, #24
	ldrb    r1, [r6, r4]
	ldrb    r0, [r6, r2]
	strb    r0, [r6, r4]
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	strb    r1, [r6, r2]
	cmp     r5, #0xc
	bcc     branch_203e4ba
.thumb
branch_203e4da: @ 203e4da :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xc
	bcc     branch_203e4b0
	ldr     r0, [sp, #0x4]
	bl      SetPRNGSeed
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x8
	ldrb    r0, [r1, r0]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x203e4f4

.word 0x20ea17c @ 0x203e4f4

.incbin "baserom/arm9.bin", 0x3e4f8, 0x203e518 - 0x203e4f8


.thumb
Function_203e518: @ 203e518 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r2, r0
	ldr     r1, [r2, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r0, #0x4
	bl      0x224be9c
	mov     r2, r0
	ldr     r1, [pc, #0x8] @ 0x203e538, (=#0x203e4f9)
	mov     r0, r4
	bl      Function_2050944
	pop     {r4,pc}
@ 0x203e538

.word 0x203e4f9 @ 0x203e538
.thumb
Function_203e53c: @ 203e53c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x8
	mov     r6, r2
	bl      Function_2018144
	mov     r4, r0
	str     r6, [r4, #0x4]
	ldr     r0, [r5, #0xc]
	ldr     r1, [pc, #0xc] @ 0x203e560, (=#0x20ea188)
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203e560

.word 0x20ea188 @ 0x203e560
.thumb
Function_203e564: @ 203e564 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [sp, #0x18]
	mov     r1, #0x8
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	strb    r6, [r4, #0x4]
	strb    r7, [r4, #0x5]
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x203e594, (=#0x2100a84)
	strh    r0, [r4, #0x6]
	ldr     r0, [r5, #0xc]
	mov     r2, r4
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x203e592


.incbin "baserom/arm9.bin", 0x3e592, 0x203e594 - 0x203e592


.word 0x2100a84 @ 0x203e594

.incbin "baserom/arm9.bin", 0x3e598, 0x203e608 - 0x203e598


.thumb
Function_203e608: @ 203e608 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x18
	bl      Function_2018144
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
.thumb
branch_203e61c: @ 203e61c :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_203e61c
	ldr     r0, [r5, #0xc]
	ldr     r1, [pc, #0x10] @ 0x203e638, (=#0x2100a94)
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203e636


.incbin "baserom/arm9.bin", 0x3e636, 0x203e638 - 0x203e636


.word 0x2100a94 @ 0x203e638
.thumb
Function_203e63c: @ 203e63c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x30
	mov     r7, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	mov     r1, r7
	bl      Function_207a0fc
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	bl      Function_2025e44
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	strb    r0, [r4, #0x11]
	strb    r0, [r4, #0x14]
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	strh    r6, [r4, #0x18]
	mov     r0, #0x2
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0xc]
	bl      Function_202d79c
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0xc]
	bl      Function_207a274
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0xc]
	bl      Function_20507e4
	bl      Function_206adcc
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	ldr     r1, [pc, #0x20] @ 0x203e6b8, (=#0x20ea15c)
	mov     r0, r4
	bl      Function_208d720
	ldr     r0, [r5, #0xc]
	bl      Function_2025e38
	mov     r1, r0
	mov     r0, r4
	bl      Function_208e9c0
	ldr     r1, [pc, #0x10] @ 0x203e6bc, (=#0x20f410c)
	mov     r0, r5
	mov     r2, r4
	bl      Function_203cd84
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x203e6b8

.word 0x20ea15c @ 0x203e6b8
.word 0x20f410c @ 0x203e6bc
.thumb
Function_203e6c0: @ 203e6c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x38] @ 0x203e700, (=#0x20ea1d8)
	mov     r7, r2
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r6, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0xb
	mov     r1, #0x10
	bl      Function_2018184
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     Function_20c4cf4
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x0
	str     r0, [r4, #0x4]
	str     r6, [r4, #0x8]
	mov     r0, r5
	mov     r2, r4
	strb    r7, [r4, #0xc]
	bl      Function_203cd84
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x203e700

.word 0x20ea1d8 @ 0x203e700
.thumb
Function_203e704: @ 203e704 :thumb
	ldr     r3, [pc, #0x4] @ 0x203e70c, (=#0x203cd85)
	ldr     r1, [pc, #0x8] @ 0x203e710, (=#0x20ea348)
	ldr     r2, [r0, #0xc]
	bx      r3
@ 0x203e70c

.word 0x203cd85 @ 0x203e70c
.word 0x20ea348 @ 0x203e710
.thumb
Function_203e714: @ 203e714 :thumb
	ldr     r3, [pc, #0x4] @ 0x203e71c, (=#0x203cd85)
	ldr     r1, [pc, #0x8] @ 0x203e720, (=#0x20ea368)
	ldr     r2, [r0, #0xc]
	bx      r3
@ 0x203e71c

.word 0x203cd85 @ 0x203e71c
.word 0x20ea368 @ 0x203e720
.thumb
Function_203e724: @ 203e724 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	strb    r3, [r0, #0x1]
	str     r3, [r0, #0x8]
	strb    r3, [r0, #0x0]
	str     r3, [r0, #0x4]
	str     r1, [r0, #0x5c]
	str     r2, [r0, #0x60]
	mov     r1, r0
	mov     r4, r3
.thumb
branch_203e738: @ 203e738 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r4, [r1, #0x64]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r3, #0x4
	bcc     branch_203e738
	mov     r2, r0
	mov     r1, #0x0
.thumb
branch_203e746: @ 203e746 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r1, [r2, #0xc]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r4, #0x14
	bcc     branch_203e746
	str     r1, [r0, #0x74]
	pop     {r3,r4}
	bx      lr
@ 0x203e756


.incbin "baserom/arm9.bin", 0x3e756, 0x203e758 - 0x203e756


.thumb
Function_203e758: @ 203e758 :thumb
	str     r1, [r0, #0x8]
	mov     r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r1
	bx      lr
@ 0x203e762


.incbin "baserom/arm9.bin", 0x3e762, 0x203e764 - 0x203e762


.thumb
Function_203e764: @ 203e764 :thumb
	mov     r2, #0x2
	strb    r2, [r0, #0x1]
	str     r1, [r0, #0x4]
	bx      lr
@ 0x203e76c

.thumb
Function_203e76c: @ 203e76c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x203e774

.thumb
Function_203e774: @ 203e774 :thumb
	str     r1, [r0, #0x74]
	bx      lr
@ 0x203e778

.thumb
ScriptHandler: @ 203e778 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	bne     branch_203e786
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203e786

.thumb
branch_203e786: @ 203e786 :thumb
	beq     branch_203e792
	cmp     r1, #0x1
	beq     branch_203e7ae
	cmp     r1, #0x2
	beq     branch_203e796
	b       branch_203e7e0
@ 0x203e792

.thumb
branch_203e792: @ 203e792 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203e796

.thumb
branch_203e796: @ 203e796 :thumb
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_203e7aa
	blx     r1
	cmp     r0, #0x1
	bne     branch_203e7a6
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_203e7a6: @ 203e7a6 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203e7aa

.thumb
branch_203e7aa: @ 203e7aa :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_203e7ae: @ 203e7ae :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_203e7ba
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x203e7ba

.thumb
branch_203e7ba: @ 203e7ba :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [r4, #0x60]
	cmp     r1, r0
	bcc     branch_203e7d2
	bl      Function_2022974
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x203e7d2

.thumb
branch_203e7d2: @ 203e7d2 :thumb
	ldr     r2, [r4, #0x5c]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r0, r4
	blx     r1
	cmp     r0, #0x1
	bne     branch_203e7ae
.thumb
branch_203e7e0: @ 203e7e0 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203e7e4

.thumb
Function_203e7e4: @ 203e7e4 :thumb
	ldrb    r3, [r0, #0x0]
	add     r2, r3, #0x1
	cmp     r2, #0x14
	blt     branch_203e7f0
	mov     r0, #0x1
	bx      lr
@ 0x203e7f0

.thumb
branch_203e7f0: @ 203e7f0 :thumb
	lsl     r2, r3, #2
	add     r2, r0, r2
	str     r1, [r2, #0xc]
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	bx      lr
@ 0x203e800

.thumb
Function_203e800: @ 203e800 :thumb
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_203e80a
	mov     r0, #0x0
	bx      lr
@ 0x203e80a

.thumb
branch_203e80a: @ 203e80a :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
	ldrb    r1, [r0, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x203e818

.thumb
Function_203e818: @ 203e818 :thumb
	str     r1, [r0, #0x8]
	bx      lr
@ 0x203e81c

.thumb
Function_203e81c: @ 203e81c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x8]
	bl      Function_203e7e4
	str     r4, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x203e82c

.thumb
Function_203e82c: @ 203e82c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203e800
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x203e838

.thumb
ScriptHandler_LoadHWord: @ 203e838 :thumb
	ldr     r1, [r0, #0x8]
	add     r3, r1, #0x1
	str     r3, [r0, #0x8]
	ldrb    r2, [r1, #0x0]
	add     r1, r3, #0x1
	str     r1, [r0, #0x8]
	ldrb    r0, [r3, #0x0]
	lsl     r0, r0, #8
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203e850

.thumb
ScriptHandler_LoadWord: @ 203e850 :thumb
	push    {r4,r5}
	ldr     r1, [r0, #0x8]
	add     r2, r1, #0x1
	str     r2, [r0, #0x8]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	add     r5, r1, #0x1
	str     r1, [r0, #0x8]
	ldrb    r2, [r2, #0x0]
	add     r4, r5, #0x1
	str     r5, [r0, #0x8]
	ldrb    r1, [r1, #0x0]
	str     r4, [r0, #0x8]
	ldrb    r0, [r5, #0x0]
	mov     r4, #0x0
	add     r0, r4, r0
	lsl     r0, r0, #8
	add     r0, r0, r1
	lsl     r0, r0, #8
	add     r0, r0, r2
	lsl     r0, r0, #8
	add     r0, r0, r3
	pop     {r4,r5}
	bx      lr
@ 0x203e880


.incbin "baserom/arm9.bin", 0x3e880, 0x203e918 - 0x203e880


.thumb
Startpoint_203e918: @ 203e918 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_2050a60
	str     r0, [sp, #0x4]
	bl      Function_203ea28
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_203ea68
	ldr     r1, [pc, #0xc] @ 0x203e94c, (=#0x203e951)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2050924
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203e94c

.word 0x203e951 @ 0x203e94c
.thumb
Startpoint_203e950: @ 203e950 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_2050a64
	mov     r4, r0
	mov     r0, r5
	bl      Function_2050a60
	ldrb    r1, [r4, #0x4]
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	beq     branch_203e970
	cmp     r1, #0x1
	beq     branch_203e9a6
	b       branch_203ea22
@ 0x203e970

.thumb
branch_203e970: @ 203e970 :thumb
	ldrh    r1, [r4, #0xa]
	bl      Function_203eab8
	str     r0, [r4, #0x38]
	mov     r0, #0x1
	strb    r0, [r4, #0x9]
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, #0xb
	bl      Function_200b368
	str     r0, [r4, #0x40]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [r4, #0x44]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [r4, #0x48]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
.thumb
branch_203e9a6: @ 203e9a6 :thumb
	mov     r0, #0x0
	mov     r7, r4
	str     r0, [sp, #0x4]
	mov     r5, r4
	add     r7, #0x9
.thumb
branch_203e9b0: @ 203e9b0 :thumb
	ldr     r6, [r5, #0x38]
	cmp     r6, #0x0
	beq     branch_203e9da
	mov     r0, r6
	bl      ScriptHandler
	cmp     r0, #0x0
	bne     branch_203e9da
	mov     r0, r6
	bl      Function_203ea50
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_203e9d0
	bl      Function_2022974
.thumb
branch_203e9d0: @ 203e9d0 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x38]
	ldrb    r0, [r7, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r7, #0x0]
.thumb
branch_203e9da: @ 203e9da :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x2
	blt     branch_203e9b0
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_203ea22
	mov     r0, r4
	add     r0, #0xa4
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x40]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x44]
	bl      Function_20237bc
	ldr     r0, [r4, #0x48]
	bl      Function_20237bc
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_20181c4
	cmp     r5, #0x0
	beq     branch_203ea1c
	ldr     r0, [sp, #0x0]
	blx     r5
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203ea1c

.thumb
branch_203ea1c: @ 203ea1c :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203ea22

.thumb
branch_203ea22: @ 203ea22 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203ea28

.thumb
Function_203ea28: @ 203ea28 :thumb
	push    {r4,lr}
	mov     r0, #0xb
	mov     r1, #0xdc
	bl      Function_2018144
	mov     r4, r0
	bne     branch_203ea3a
	bl      Function_2022974
.thumb
branch_203ea3a: @ 203ea3a :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xdc
	blx     Function_20d5124
	ldr     r0, [pc, #0x4] @ 0x203ea4c, (=#0x3643f)
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r4,pc}
@ 0x203ea4c

.word 0x3643f @ 0x203ea4c
.thumb
Function_203ea50: @ 203ea50 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x78]
	bl      Function_200b190
	ldr     r0, [r4, #0x7c]
	bl      Function_20181c4
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x203ea68

.thumb
Function_203ea68: @ 203ea68 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x36
	mov     r4, r2
	mov     r6, r3
	bl      Function_203ef60
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x3c]
	bl      Function_205ea78
	str     r0, [r5, #0x28]
	str     r6, [r5, #0x2c]
	ldr     r0, [sp, #0x18]
	strh    r4, [r5, #0xa]
	str     r0, [r5, #0x34]
	cmp     r6, #0x0
	beq     branch_203ea9a
	mov     r0, r6
	bl      Function_2062910
	ldr     r1, [sp, #0x0]
	strh    r0, [r1, #0x0]
.thumb
branch_203ea9a: @ 203ea9a :thumb
	mov     r0, #0x7d
	lsl     r0, r0, #6
	cmp     r4, r0
	bcc     branch_203eab0
	ldr     r0, [pc, #0x10] @ 0x203eab4, (=#0x225f)
	cmp     r4, r0
	bhi     branch_203eab0
	mov     r0, r5
	mov     r1, r4
	bl      Function_203f404
.thumb
branch_203eab0: @ 203eab0 :thumb
	pop     {r3-r7,pc}
@ 0x203eab2


.incbin "baserom/arm9.bin", 0x3eab2, 0x203eab4 - 0x203eab2


.word 0x225f @ 0x203eab4
.thumb
Function_203eab8: @ 203eab8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xb
	mov     r1, #0x84
	bl      Function_2018144
	mov     r4, r0
	bne     branch_203eace
	bl      Function_2022974
.thumb
branch_203eace: @ 203eace :thumb
	ldr     r2, [pc, #0x1c] @ 0x203eaec, (=#0x20eab80)
	ldr     r1, [pc, #0x1c] @ 0x203eaf0, (=#0x20eac58)
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	bl      Function_203e724
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_203eaf4
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203eaea


.incbin "baserom/arm9.bin", 0x3eaea, 0x203eaec - 0x203eaea


.word 0x20eab80 @ 0x203eaec
.word 0x20eac58 @ 0x203eaf0
.thumb
Function_203eaf4: @ 203eaf4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r3, r4
	mov     r5, r0
	add     r3, #0x80
	str     r5, [r3, #0x0]
	bl      Function_203eb20
	mov     r6, r0
	ldr     r1, [r4, #0x7c]
	mov     r0, r4
	bl      Function_203e758
	mov     r0, r4
	mov     r1, r6
	bl      Function_203f0e4
	ldr     r1, [r5, #0x10]
	mov     r0, r4
	bl      Function_203e774
	pop     {r4-r6,pc}
@ 0x203eb20

.thumb
Function_203eb20: @ 203eb20 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x2e4] @ 0x203ee08, (=#0x28fa)
	mov     r4, r2
	cmp     r4, r3
	bcc     branch_203eb3e
	ldr     r2, [pc, #0x2e0] @ 0x203ee0c, (=#0x1f3)
	mov     r3, r2
	add     r3, #0x2a
	bl      Function_203ef14
	ldr     r0, [pc, #0x2d0] @ 0x203ee08, (=#0x28fa)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eb3e

.thumb
branch_203eb3e: @ 203eb3e :thumb
	mov     r2, r3
	sub     r2, #0x28
	cmp     r4, r2
	bcc     branch_203eb5a
	mov     r2, #0x7d
	lsl     r2, r2, #2
	mov     r3, #0x10
	bl      Function_203ef14
	ldr     r0, [pc, #0x2bc] @ 0x203ee10, (=#0x28d2)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eb5a

.thumb
branch_203eb5a: @ 203eb5a :thumb
	mov     r2, r3
	sub     r2, #0x5a
	cmp     r4, r2
	bcc     branch_203eb76
	mov     r2, #0x19
	lsl     r2, r2, #4
	mov     r3, #0xcb
	bl      Function_203ef14
	ldr     r0, [pc, #0x2a4] @ 0x203ee14, (=#0x28a0)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eb76

.thumb
branch_203eb76: @ 203eb76 :thumb
	sub     r3, #0xbe
	cmp     r4, r3
	bcc     branch_203eb90
	mov     r3, #0x8a
	ldr     r2, [pc, #0x298] @ 0x203ee18, (=#0x41b)
	lsl     r3, r3, #2
	bl      Function_203ef14
	ldr     r0, [pc, #0x294] @ 0x203ee1c, (=#0x283c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eb90

.thumb
branch_203eb90: @ 203eb90 :thumb
	ldr     r3, [pc, #0x28c] @ 0x203ee20, (=#0x27d8)
	cmp     r4, r3
	bcc     branch_203ebaa
	ldr     r2, [pc, #0x28c] @ 0x203ee24, (=#0x197)
	mov     r3, r2
	sub     r3, #0x1c
	bl      Function_203ef14
	ldr     r0, [pc, #0x27c] @ 0x203ee20, (=#0x27d8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ebaa

.thumb
branch_203ebaa: @ 203ebaa :thumb
	mov     r2, r3
	sub     r2, #0x32
	cmp     r4, r2
	bcc     branch_203ebc4
	ldr     r2, [pc, #0x274] @ 0x203ee28, (=#0x45c)
	ldr     r3, [pc, #0x274] @ 0x203ee2c, (=#0x26d)
	bl      Function_203ef14
	ldr     r0, [pc, #0x274] @ 0x203ee30, (=#0x27a6)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ebc4

.thumb
branch_203ebc4: @ 203ebc4 :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	bcc     branch_203ebde
	ldr     r2, [pc, #0x264] @ 0x203ee34, (=#0x45b)
	ldr     r3, [pc, #0x268] @ 0x203ee38, (=#0x26e)
	bl      Function_203ef14
	ldr     r0, [pc, #0x264] @ 0x203ee3c, (=#0x2774)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ebde

.thumb
branch_203ebde: @ 203ebde :thumb
	mov     r2, r3
	sub     r2, #0xc8
	cmp     r4, r2
	bcc     branch_203ebfa
	ldr     r2, [pc, #0x258] @ 0x203ee40, (=#0x199)
	mov     r3, r2
	sub     r3, #0x1c
	bl      Function_203ef14
	ldr     r0, [pc, #0x250] @ 0x203ee44, (=#0x2710)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ebfa

.thumb
branch_203ebfa: @ 203ebfa :thumb
	sub     r3, #0xfa
	cmp     r4, r3
	bcc     branch_203ec14
	ldr     r2, [pc, #0x244] @ 0x203ee48, (=#0x19b)
	mov     r3, r2
	sub     r3, #0x1c
	bl      Function_203ef14
	ldr     r0, [pc, #0x240] @ 0x203ee4c, (=#0x26de)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec14

.thumb
branch_203ec14: @ 203ec14 :thumb
	ldr     r3, [pc, #0x238] @ 0x203ee50, (=#0x26ac)
	cmp     r4, r3
	bcc     branch_203ec2c
	ldr     r2, [pc, #0x238] @ 0x203ee54, (=#0x18d)
	mov     r3, #0xd5
	bl      Function_203ef14
	ldr     r0, [pc, #0x22c] @ 0x203ee50, (=#0x26ac)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec2c

.thumb
branch_203ec2c: @ 203ec2c :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	bcc     branch_203ec46
	mov     r2, #0xd4
	mov     r3, #0xd9
	bl      Function_203ef14
	ldr     r0, [pc, #0x218] @ 0x203ee58, (=#0x2648)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec46

.thumb
branch_203ec46: @ 203ec46 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	bcc     branch_203ec5e
	ldr     r2, [pc, #0x20c] @ 0x203ee5c, (=#0x1a6)
	add     r3, r2, #0x7
	bl      Function_203ef14
	ldr     r0, [pc, #0x208] @ 0x203ee60, (=#0x25e4)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec5e

.thumb
branch_203ec5e: @ 203ec5e :thumb
	mov     r3, #0x96
	lsl     r3, r3, #6
	cmp     r4, r3
	bcc     branch_203ec7c
	mov     r2, #0x67
	lsl     r2, r2, #2
	mov     r3, #0xd5
	bl      Function_203ef14
	mov     r0, #0x96
	lsl     r0, r0, #6
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec7c

.thumb
branch_203ec7c: @ 203ec7c :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	bcc     branch_203ec98
	ldr     r2, [pc, #0x1dc] @ 0x203ee64, (=#0x1f5)
	mov     r3, r2
	add     r3, #0x2e
	bl      Function_203ef14
	ldr     r0, [pc, #0x1d8] @ 0x203ee68, (=#0x251c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ec98

.thumb
branch_203ec98: @ 203ec98 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	bcc     branch_203ecb0
	ldr     r2, [pc, #0x1cc] @ 0x203ee6c, (=#0x1aa)
	add     r3, r2, #0x6
	bl      Function_203ef14
	ldr     r0, [pc, #0x1c8] @ 0x203ee70, (=#0x24b8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ecb0

.thumb
branch_203ecb0: @ 203ecb0 :thumb
	ldr     r3, [pc, #0x1c0] @ 0x203ee74, (=#0x2454)
	cmp     r4, r3
	bcc     branch_203ecca
	ldr     r2, [pc, #0x1c0] @ 0x203ee78, (=#0x196)
	mov     r3, r2
	sub     r3, #0x20
	bl      Function_203ef14
	ldr     r0, [pc, #0x1b0] @ 0x203ee74, (=#0x2454)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ecca

.thumb
branch_203ecca: @ 203ecca :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	bcc     branch_203ece4
	ldr     r2, [pc, #0x1a8] @ 0x203ee7c, (=#0x1a7)
	add     r3, r2, #0x7
	bl      Function_203ef14
	ldr     r0, [pc, #0x1a4] @ 0x203ee80, (=#0x23f0)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ece4

.thumb
branch_203ece4: @ 203ece4 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	bcc     branch_203ecfc
	mov     r2, #0x0
	mov     r3, #0xb
	bl      Function_203ef14
	ldr     r0, [pc, #0x190] @ 0x203ee84, (=#0x238c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ecfc

.thumb
branch_203ecfc: @ 203ecfc :thumb
	ldr     r3, [pc, #0x188] @ 0x203ee88, (=#0x2328)
	cmp     r4, r3
	bcc     branch_203ed14
	mov     r2, #0xd5
	mov     r3, #0xdd
	bl      Function_203ef14
	ldr     r0, [pc, #0x17c] @ 0x203ee88, (=#0x2328)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ed14

.thumb
branch_203ed14: @ 203ed14 :thumb
	mov     r2, r3
	sub     r2, #0x1e
	cmp     r4, r2
	bcc     branch_203ed2e
	ldr     r2, [pc, #0x16c] @ 0x203ee8c, (=#0x1a9)
	mov     r3, #0x7
	bl      Function_203ef14
	ldr     r0, [pc, #0x168] @ 0x203ee90, (=#0x230a)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ed2e

.thumb
branch_203ed2e: @ 203ed2e :thumb
	mov     r2, r3
	sub     r2, #0x32
	cmp     r4, r2
	bcc     branch_203ed4a
	ldr     r2, [pc, #0x15c] @ 0x203ee94, (=#0x1f2)
	mov     r3, r2
	add     r3, #0x29
	bl      Function_203ef14
	ldr     r0, [pc, #0x154] @ 0x203ee98, (=#0x22f6)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ed4a

.thumb
branch_203ed4a: @ 203ed4a :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	bcc     branch_203ed66
	mov     r2, #0x6a
	lsl     r2, r2, #2
	add     r3, r2, #0x7
	bl      Function_203ef14
	ldr     r0, [pc, #0x13c] @ 0x203ee9c, (=#0x22c4)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ed66

.thumb
branch_203ed66: @ 203ed66 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	bcc     branch_203ed80
	ldr     r2, [pc, #0x130] @ 0x203eea0, (=#0x1f1)
	mov     r3, r2
	add     r3, #0x29
	bl      Function_203ef14
	ldr     r0, [pc, #0x12c] @ 0x203eea4, (=#0x2260)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ed80

.thumb
branch_203ed80: @ 203ed80 :thumb
	mov     r2, #0x7d
	lsl     r2, r2, #6
	cmp     r4, r2
	bcc     branch_203eda0
	mov     r2, #0x66
	lsl     r2, r2, #2
	mov     r3, r2
	sub     r3, #0x1c
	bl      Function_203ef14
	mov     r0, #0x7d
	lsl     r0, r0, #6
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eda0

.thumb
branch_203eda0: @ 203eda0 :thumb
	ldr     r3, [pc, #0x104] @ 0x203eea8, (=#0x1b58)
	cmp     r4, r3
	bcc     branch_203edbc
	mov     r2, #0x65
	lsl     r2, r2, #2
	mov     r3, r2
	sub     r3, #0x23
	bl      Function_203ef14
	ldr     r0, [pc, #0xf4] @ 0x203eea8, (=#0x1b58)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203edbc

.thumb
branch_203edbc: @ 203edbc :thumb
	ldr     r5, [pc, #0xec] @ 0x203eeac, (=#0x1388)
	cmp     r4, r5
	bcc     branch_203edd4
	ldr     r2, [pc, #0xec] @ 0x203eeb0, (=#0x45a)
	mov     r3, #0xd5
	bl      Function_203ef14
	mov     r0, r5
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203edd4

.thumb
branch_203edd4: @ 203edd4 :thumb
	ldr     r3, [pc, #0xdc] @ 0x203eeb4, (=#0xbb8)
	cmp     r4, r3
	bcc     branch_203edec
	ldr     r2, [pc, #0xd4] @ 0x203eeb0, (=#0x45a)
	mov     r3, #0xd5
	bl      Function_203ef14
	ldr     r0, [pc, #0xd0] @ 0x203eeb4, (=#0xbb8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203edec

.thumb
branch_203edec: @ 203edec :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	bcc     branch_203eebc
	ldr     r2, [pc, #0xc4] @ 0x203eeb8, (=#0x19d)
	mov     r3, r2
	sub     r3, #0x10
	bl      Function_203ef14
	mov     r0, #0xaf
	lsl     r0, r0, #4
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ee08

.word 0x28fa @ 0x203ee08
.word 0x1f3 @ 0x203ee0c
.word 0x28d2 @ 0x203ee10
.word 0x28a0 @ 0x203ee14
.word 0x41b @ 0x203ee18
.word 0x283c @ 0x203ee1c
.word 0x27d8 @ 0x203ee20
.word 0x197 @ 0x203ee24
.word 0x45c @ 0x203ee28
.word 0x26d @ 0x203ee2c
.word 0x27a6 @ 0x203ee30
.word 0x45b @ 0x203ee34
.word 0x26e @ 0x203ee38
.word 0x2774 @ 0x203ee3c
.word 0x199 @ 0x203ee40
.word 0x2710 @ 0x203ee44
.word 0x19b @ 0x203ee48
.word 0x26de @ 0x203ee4c
.word 0x26ac @ 0x203ee50
.word 0x18d @ 0x203ee54
.word 0x2648 @ 0x203ee58
.word 0x1a6 @ 0x203ee5c
.word 0x25e4 @ 0x203ee60
.word 0x1f5 @ 0x203ee64
.word 0x251c @ 0x203ee68
.word 0x1aa @ 0x203ee6c
.word 0x24b8 @ 0x203ee70
.word 0x2454 @ 0x203ee74
.word 0x196 @ 0x203ee78
.word 0x1a7 @ 0x203ee7c
.word 0x23f0 @ 0x203ee80
.word 0x238c @ 0x203ee84
.word 0x2328 @ 0x203ee88
.word 0x1a9 @ 0x203ee8c
.word 0x230a @ 0x203ee90
.word 0x1f2 @ 0x203ee94
.word 0x22f6 @ 0x203ee98
.word 0x22c4 @ 0x203ee9c
.word 0x1f1 @ 0x203eea0
.word 0x2260 @ 0x203eea4
.word 0x1b58 @ 0x203eea8
.word 0x1388 @ 0x203eeac
.word 0x45a @ 0x203eeb0
.word 0xbb8 @ 0x203eeb4
.word 0x19d @ 0x203eeb8
.thumb
branch_203eebc: @ 203eebc :thumb
	lsr     r3, r5, #1
	cmp     r4, r3
	bcc     branch_203eed4
	mov     r2, #0x1
	mov     r3, #0x11
	bl      Function_203ef14
	lsr     r0, r5, #1
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eed4

.thumb
branch_203eed4: @ 203eed4 :thumb
	lsr     r2, r2, #2
	cmp     r4, r2
	bcc     branch_203eeee
	mov     r2, #0xd3
	mov     r3, #0xd5
	bl      Function_203ef14
	mov     r0, #0x7d
	lsl     r0, r0, #4
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eeee

.thumb
branch_203eeee: @ 203eeee :thumb
	cmp     r4, #0x1
	bcc     branch_203eefe
	bl      Function_203ef38
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203eefe

.thumb
branch_203eefe: @ 203eefe :thumb
	ldr     r2, [pc, #0x10] @ 0x203ef10, (=#0x192)
	mov     r3, r2
	sub     r3, #0x2f
	bl      Function_203ef14
	mov     r4, #0x0
.thumb
branch_203ef0a: @ 203ef0a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203ef0e


.incbin "baserom/arm9.bin", 0x3ef0e, 0x203ef10 - 0x203ef0e


.word 0x192 @ 0x203ef10
.thumb
Function_203ef14: @ 203ef14 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, r2
	mov     r4, r3
	mov     r0, #0xa
	mov     r2, #0xb
	bl      Function_2006ac0
	str     r0, [r5, #0x7c]
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r4
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [r5, #0x78]
	pop     {r3-r5,pc}
@ 0x203ef36


.incbin "baserom/arm9.bin", 0x3ef36, 0x203ef38 - 0x203ef36


.thumb
Function_203ef38: @ 203ef38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	bl      Function_203f0fc
	str     r0, [r4, #0x7c]
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_203f110
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [r4, #0x78]
	pop     {r3-r5,pc}
@ 0x203ef60

.thumb
Function_203ef60: @ 203ef60 :thumb
	push    {r3,lr}
	cmp     r1, #0x36
	bls     branch_203ef68
	b       branch_203f090
@ 0x203ef68

.thumb
branch_203ef68: @ 203ef68 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r4, r5, #1
	lsl     r0, r6, #1
	lsl     r4, r6, #1
	lsl     r0, r7, #1
	lsl     r4, r7, #1
	lsl     r0, r0, #2
	lsl     r4, r0, #2
	lsl     r0, r1, #2
	lsl     r4, r1, #2
	lsl     r0, r2, #2
	lsl     r4, r2, #2
	lsl     r0, r3, #2
	lsl     r4, r3, #2
	lsl     r0, r4, #2
	lsl     r4, r4, #2
	lsl     r0, r5, #2
	lsl     r4, r5, #2
	lsl     r0, r6, #2
	lsl     r4, r6, #2
	lsl     r0, r7, #2
	lsl     r4, r7, #2
	lsl     r0, r0, #3
	lsl     r4, r0, #3
	lsl     r0, r1, #3
	lsl     r4, r1, #3
	lsl     r0, r2, #3
	lsl     r4, r2, #3
	lsl     r0, r3, #3
	lsl     r4, r3, #3
	lsl     r0, r4, #3
	lsl     r4, r4, #3
	lsl     r0, r5, #3
	lsl     r4, r5, #3
	lsl     r0, r6, #3
	lsl     r4, r6, #3
	lsl     r0, r7, #3
	lsl     r4, r7, #3
	lsl     r0, r0, #4
	lsl     r4, r0, #4
	lsl     r0, r1, #4
	lsl     r4, r1, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	lsl     r0, r2, #4
	add     r0, #0x10
	pop     {r3,pc}
@ 0x203efe6


.incbin "baserom/arm9.bin", 0x3efe6, 0x203f090 - 0x203efe6


.thumb
branch_203f090: @ 203f090 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f098

.thumb
Function_203f098: @ 203f098 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	bl      Function_2050a64
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x203f0bc, (=#0x3643f)
	cmp     r1, r0
	beq     branch_203f0b0
	bl      Function_2022974
.thumb
branch_203f0b0: @ 203f0b0 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_203ef60
	pop     {r3-r5,pc}
@ 0x203f0ba


.incbin "baserom/arm9.bin", 0x3f0ba, 0x203f0bc - 0x203f0ba


.word 0x3643f @ 0x203f0bc
.thumb
Function_203f0c0: @ 203f0c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_2050a64
	mov     r4, r0
	mov     r0, r5
	bl      Function_203a9c8
	cmp     r0, #0x1
	bne     branch_203f0dc
	ldr     r0, [pc, #0x8] @ 0x203f0e0, (=#0x203ab01)
	add     r4, #0xa4
	str     r0, [r4, #0x0]
.thumb
branch_203f0dc: @ 203f0dc :thumb
	pop     {r3-r5,pc}
@ 0x203f0de


.incbin "baserom/arm9.bin", 0x3f0de, 0x203f0e0 - 0x203f0de


.word 0x203ab01 @ 0x203f0e0
.thumb
Function_203f0e4: @ 203f0e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r4, #0x8]
	bl      ScriptHandler_LoadWord
	ldr     r1, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x203f0fc

.thumb
Function_203f0fc: @ 203f0fc :thumb
	push    {r3,lr}
	bl      Function_203a09c
	mov     r1, r0
	mov     r0, #0xa
	mov     r2, #0xb
	bl      Function_2006ac0
	pop     {r3,pc}
@ 0x203f10e


.incbin "baserom/arm9.bin", 0x3f10e, 0x203f110 - 0x203f10e


.thumb
Function_203f110: @ 203f110 :thumb
	ldr     r3, [pc, #0x0] @ 0x203f114, (=#0x203a089)
	bx      r3
@ 0x203f114

.word 0x203a089 @ 0x203f114
.thumb
Function_203f118: @ 203f118 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, #0x1
	lsl     r1, r1, #14
	cmp     r4, r1
	bcs     branch_203f130
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f130

.thumb
branch_203f130: @ 203f130 :thumb
	lsl     r1, r1, #1
	cmp     r4, r1
	bcs     branch_203f13e
	mov     r1, r4
	bl      Function_20508b8
	pop     {r3-r5,pc}
@ 0x203f13e

.thumb
branch_203f13e: @ 203f13e :thumb
	ldr     r1, [pc, #0xc] @ 0x203f14c, (=#0x7fd7)
	mov     r0, r5
	sub     r1, r4, r1
	bl      Function_203f098
	pop     {r3-r5,pc}
@ 0x203f14a


.incbin "baserom/arm9.bin", 0x3f14a, 0x203f14c - 0x203f14a


.word 0x7fd7 @ 0x203f14c
.thumb
Function_203f150: @ 203f150 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203f118
	cmp     r0, #0x0
	beq     branch_203f15e
	ldrh    r4, [r0, #0x0]
.thumb
branch_203f15e: @ 203f15e :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x203f162


.incbin "baserom/arm9.bin", 0x3f162, 0x203f164 - 0x203f162


.thumb
Function_203f164: @ 203f164 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x10
	bcc     branch_203f172
	bl      Function_2022974
.thumb
branch_203f172: @ 203f172 :thumb
	ldr     r1, [pc, #0x10] @ 0x203f184, (=#0x4020)
	mov     r0, r5
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_203f150
	pop     {r3-r5,pc}
@ 0x203f182


.incbin "baserom/arm9.bin", 0x3f182, 0x203f184 - 0x203f182


.word 0x4020 @ 0x203f184
.thumb
Function_203f188: @ 203f188 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, r4
	bl      Function_20507f0
	pop     {r4,pc}
@ 0x203f19a


.incbin "baserom/arm9.bin", 0x3f19a, 0x203f19c - 0x203f19a


.thumb
Function_203f19c: @ 203f19c :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, r4
	bl      Function_205081c
	pop     {r4,pc}
@ 0x203f1ae


.incbin "baserom/arm9.bin", 0x3f1ae, 0x203f1b0 - 0x203f1ae


.thumb
Function_203f1b0: @ 203f1b0 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, r4
	bl      Function_2050844
	pop     {r4,pc}
@ 0x203f1c2


.incbin "baserom/arm9.bin", 0x3f1c2, 0x203f254 - 0x203f1c2


.thumb
Function_203f254: @ 203f254 :thumb
	ldr     r1, [pc, #0x18] @ 0x203f270, (=#0x1388)
	cmp     r0, r1
	bcs     branch_203f264
	ldr     r1, [pc, #0x18] @ 0x203f274, (=#0xbb7)
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203f264

.thumb
branch_203f264: @ 203f264 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203f26e


.incbin "baserom/arm9.bin", 0x3f26e, 0x203f270 - 0x203f26e


.word 0x1388 @ 0x203f270
.word 0xbb7 @ 0x203f274
.thumb
Function_203f278: @ 203f278 :thumb
	ldr     r1, [pc, #0xc] @ 0x203f288, (=#0x1388)
	cmp     r0, r1
	bcc     branch_203f282
	mov     r0, #0x1
	bx      lr
@ 0x203f282

.thumb
branch_203f282: @ 203f282 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f286


.incbin "baserom/arm9.bin", 0x3f286, 0x203f288 - 0x203f286


.word 0x1388 @ 0x203f288
.thumb
Function_203f28c: @ 203f28c :thumb
	push    {r3,lr}
	mov     r1, #0x9
	bl      Function_2079220
	cmp     r0, #0x0
	beq     branch_203f29c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203f29c

.thumb
branch_203f29c: @ 203f29c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f2a0

.thumb
Function_203f2a0: @ 203f2a0 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_20507f0
	pop     {r4,pc}
@ 0x203f2ba


.incbin "baserom/arm9.bin", 0x3f2ba, 0x203f2bc - 0x203f2ba


.thumb
Function_203f2bc: @ 203f2bc :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_205081c
	pop     {r4,pc}
@ 0x203f2d6


.incbin "baserom/arm9.bin", 0x3f2d6, 0x203f2d8 - 0x203f2d6


.thumb
Function_203f2d8: @ 203f2d8 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_20507e4
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2050844
	pop     {r4,pc}
@ 0x203f2f2


.incbin "baserom/arm9.bin", 0x3f2f2, 0x203f2f4 - 0x203f2f2


.thumb
Function_203f2f4: @ 203f2f4 :thumb
	ldr     r1, [pc, #0x8] @ 0x203f300, (=#0x1c66)
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203f2fe


.incbin "baserom/arm9.bin", 0x3f2fe, 0x203f300 - 0x203f2fe


.word 0x1c66 @ 0x203f300
.thumb
Function_203f304: @ 203f304 :thumb
	mov     r1, #0x7d
	lsl     r1, r1, #6
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203f310


.incbin "baserom/arm9.bin", 0x3f310, 0x203f404 - 0x203f310


.thumb
Function_203f404: @ 203f404 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r1, #0x29
	bl      Function_203ef60
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x2a
	bl      Function_203ef60
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x2b
	bl      Function_203ef60
	mov     r4, r0
	mov     r0, r5
	bl      Function_203f304
	mov     r3, r0
	ldr     r6, [pc, #0x40] @ 0x203f470, (=#0x20ea378)
	ldr     r0, [pc, #0x40] @ 0x203f474, (=#0x101)
	mov     r2, #0x0
.thumb
branch_203f434: @ 203f434 :thumb
	ldrh    r1, [r6, #0x6]
	cmp     r3, r1
	beq     branch_203f442
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r0
	bcc     branch_203f434
.thumb
branch_203f442: @ 203f442 :thumb
	ldr     r0, [pc, #0x30] @ 0x203f474, (=#0x101)
	cmp     r2, r0
	bcc     branch_203f450
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203f450

.thumb
branch_203f450: @ 203f450 :thumb
	ldr     r1, [pc, #0x1c] @ 0x203f470, (=#0x20ea378)
	lsl     r0, r2, #3
	ldrh    r2, [r1, r0]
	ldr     r1, [sp, #0x0]
	strh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x14] @ 0x203f470, (=#0x20ea378)
	add     r0, r1, r0
	ldrb    r0, [r0, #0x2]
	strh    r0, [r7, #0x0]
	mov     r0, r5
	bl      Function_203f2f4
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f46e


.incbin "baserom/arm9.bin", 0x3f46e, 0x203f470 - 0x203f46e


.word 0x20ea378 @ 0x203f470
.word 0x101 @ 0x203f474

.incbin "baserom/arm9.bin", 0x3f478, 0x203f598 - 0x203f478


.thumb
Function_203f598: @ 203f598 :thumb
	ldr     r3, [pc, #0x4] @ 0x203f5a0, (=#0x203f5a5)
	mov     r1, #0x96
	lsl     r1, r1, #6
	bx      r3
@ 0x203f5a0

.word 0x203f5a5 @ 0x203f5a0

.incbin "baserom/arm9.bin", 0x3f5a4, 0x203f6c4 - 0x203f5a4


.thumb
ScriptCmd_Nop: @ 203f6c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f6c8

.thumb
ScriptCmd_Nop1: @ 203f6c8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f6cc

.thumb
ScriptCmd_End: @ 203f6cc :thumb
	push    {r3,lr}
	bl      Function_203e76c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f6d6


.incbin "baserom/arm9.bin", 0x3f6d6, 0x203f6d8 - 0x203f6d6


.thumb
Startpoint_203f6d8: @ 203f6d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_203f118
	strh    r7, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x203f708, (=#0x203f70d)
	mov     r0, r5
	str     r4, [r5, #0x64]
	bl      Function_203e764
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f708

.word 0x203f70d @ 0x203f708

.incbin "baserom/arm9.bin", 0x3f70c, 0x203f734 - 0x203f70c


.thumb
Startpoint_203f734: @ 203f734 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_203f150
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f74a


.incbin "baserom/arm9.bin", 0x3f74a, 0x203f74c - 0x203f74a


.thumb
Startpoint_203f74c: @ 203f74c :thumb
	ldr     r1, [r0, #0x8]
	add     r2, r1, #0x1
	str     r2, [r0, #0x8]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r2, [r2, #0x0]
	lsl     r1, r3, #2
	add     r0, r0, r1
	str     r2, [r0, #0x64]
	mov     r0, #0x0
	bx      lr
@ 0x203f764

.thumb
Startpoint_203f764: @ 203f764 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r5, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	lsl     r1, r5, #2
	add     r1, r4, r1
	str     r0, [r1, #0x64]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f77e


.incbin "baserom/arm9.bin", 0x3f77e, 0x203f780 - 0x203f77e


.thumb
Startpoint_203f780: @ 203f780 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	lsl     r0, r4, #2
	add     r0, r5, r0
	str     r1, [r0, #0x64]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f79c

.thumb
Startpoint_203f79c: @ 203f79c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f7b2


.incbin "baserom/arm9.bin", 0x3f7b2, 0x203f7b4 - 0x203f7b2


.thumb
Startpoint_203f7b4: @ 203f7b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f7d0

.thumb
Startpoint_203f7d0: @ 203f7d0 :thumb
	ldr     r1, [r0, #0x8]
	add     r2, r1, #0x1
	str     r2, [r0, #0x8]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r2, [r1, #0x64]
	lsl     r1, r3, #2
	add     r0, r0, r1
	str     r2, [r0, #0x64]
	mov     r0, #0x0
	bx      lr
@ 0x203f7ee


.incbin "baserom/arm9.bin", 0x3f7ee, 0x203f7f0 - 0x203f7ee


.thumb
Startpoint_203f7f0: @ 203f7f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f808

.thumb
Function_203f808: @ 203f808 :thumb
	cmp     r0, r1
	bcs     branch_203f810
	mov     r0, #0x0
	bx      lr
@ 0x203f810

.thumb
branch_203f810: @ 203f810 :thumb
	cmp     r0, r1
	bne     branch_203f818
	mov     r0, #0x1
	bx      lr
@ 0x203f818

.thumb
branch_203f818: @ 203f818 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x203f81c

.thumb
Startpoint_203f81c: @ 203f81c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x64]
	str     r2, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f84c

.thumb
Startpoint_203f84c: @ 203f84c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x64]
	str     r2, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f872


.incbin "baserom/arm9.bin", 0x3f872, 0x203f874 - 0x203f872


.thumb
Startpoint_203f874: @ 203f874 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r5, r1, #24
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f89c

.thumb
Startpoint_203f89c: @ 203f89c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f8c2


.incbin "baserom/arm9.bin", 0x3f8c2, 0x203f8c4 - 0x203f8c2


.thumb
Startpoint_203f8c4: @ 203f8c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f8e0

.thumb
Startpoint_203f8e0: @ 203f8e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadWord
	ldrb    r4, [r0, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_203f808
	strb    r0, [r5, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f8fe


.incbin "baserom/arm9.bin", 0x3f8fe, 0x203f900 - 0x203f8fe


.thumb
Startpoint_203f900: @ 203f900 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	ldrh    r5, [r0, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      Function_203f808
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f92a


.incbin "baserom/arm9.bin", 0x3f92a, 0x203f92c - 0x203f92a


.thumb
Startpoint_203f92c: @ 203f92c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r1, r0
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r1, #0x0]
	bl      Function_203f808
	strb    r0, [r5, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f964

.thumb
Startpoint_203f964: @ 203f964 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x7
	mov     r0, r5
	bl      Function_203f098
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_203f098
	mov     r6, r0
	mov     r0, r7
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      Function_203eab8
	str     r0, [r6, #0x0]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f99a


.incbin "baserom/arm9.bin", 0x3f99a, 0x203f99c - 0x203f99a


.thumb
ScriptCmd_CallStandard: @ 203f99c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x5
	mov     r0, r5
	bl      Function_203f098
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_203f098
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_203f098
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, #0x1
	strb    r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_203eab8
	str     r0, [r7, #0x0]
	ldrb    r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x203f9e8, (=#0x203f9ed)
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_203e764
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f9e8

.word 0x203f9ed @ 0x203f9e8

.incbin "baserom/arm9.bin", 0x3f9ec, 0x203fa08 - 0x203f9ec


.thumb
Startpoint_203fa08: @ 203fa08 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x5
	bl      Function_203f098
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r1
	pop     {r3,pc}
@ 0x203fa1c

.thumb
Startpoint_203fa1c: @ 203fa1c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	add     r1, r1, r2
	bl      Function_203e818
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fa34

.thumb
Startpoint_203fa34: @ 203fa34 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      Function_203f098
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadWord
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	bl      Function_2062910
	cmp     r4, r0
	bne     branch_203fa68
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r7
	bl      Function_203e818
.thumb
branch_203fa68: @ 203fa68 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203fa6c

.thumb
Startpoint_203fa6c: @ 203fa6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	bl      Function_2050a6c
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	cmp     r6, r4
	bne     branch_203fa96
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r2
	bl      Function_203e818
.thumb
branch_203fa96: @ 203fa96 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fa9a


.incbin "baserom/arm9.bin", 0x3fa9a, 0x203fa9c - 0x203fa9a


.thumb
Startpoint_203fa9c: @ 203fa9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9
	bl      Function_203f098
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, r4
	bne     branch_203facc
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r2
	bl      Function_203e818
.thumb
branch_203facc: @ 203facc :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fad0

.thumb
Startpoint_203fad0: @ 203fad0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	add     r1, r1, r2
	bl      Function_203e81c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fae8

.thumb
Startpoint_203fae8: @ 203fae8 :thumb
	push    {r3,lr}
	bl      Function_203e82c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203faf2


.incbin "baserom/arm9.bin", 0x3faf2, 0x203faf4 - 0x203faf2


.thumb
Startpoint_203faf4: @ 203faf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	mov     r1, r0
	lsl     r0, r4, #1
	add     r3, r4, r0
	ldr     r0, [pc, #0x18] @ 0x203fb24, (=#0x20eaba6)
	ldrb    r2, [r5, #0x2]
	add     r0, r0, r3
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_203fb20
	ldr     r2, [r5, #0x8]
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_203e818
.thumb
branch_203fb20: @ 203fb20 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fb24

.word 0x20eaba6 @ 0x203fb24
.thumb
Startpoint_203fb28: @ 203fb28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	mov     r1, r0
	lsl     r0, r4, #1
	add     r3, r4, r0
	ldr     r0, [pc, #0x18] @ 0x203fb58, (=#0x20eaba6)
	ldrb    r2, [r5, #0x2]
	add     r0, r0, r3
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_203fb54
	ldr     r2, [r5, #0x8]
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_203e81c
.thumb
branch_203fb54: @ 203fb54 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fb58

.word 0x20eaba6 @ 0x203fb58
.thumb
ScriptCmd_Setflag: @ 203fb5c :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	bl      Function_203f19c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fb74

.thumb
ScriptCmd_ClearFlag: @ 203fb74 :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	bl      Function_203f1b0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fb8c

.thumb
ScriptCmd_CheckFlag: @ 203fb8c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      Function_203f188
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fba8

.thumb
Startpoint_203fba8: @ 203fba8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_203f118
	mov     r4, r0
	ldrh    r1, [r6, #0x0]
	mov     r0, r5
	bl      Function_203f188
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fbe4

.thumb
Startpoint_203fbe4: @ 203fbe4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_203f118
	mov     r1, r0
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_203f19c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc0a


.incbin "baserom/arm9.bin", 0x3fc0a, 0x203fc0c - 0x203fc0a


.thumb
Startpoint_203fc0c: @ 203fc0c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_203f150
	mov     r1, r0
	mov     r0, r5
	bl      Function_203f2bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc30

.thumb
Startpoint_203fc30: @ 203fc30 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_203f150
	mov     r1, r0
	mov     r0, r5
	bl      Function_203f2d8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc54

.thumb
Startpoint_203fc54: @ 203fc54 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f150
	mov     r1, r0
	mov     r0, r4
	bl      Function_203f2a0
	strb    r0, [r5, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc7c

.thumb
Startpoint_203fc7c: @ 203fc7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_203f150
	ldrh    r1, [r4, #0x0]
	add     r0, r1, r0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcac

.thumb
Startpoint_203fcac: @ 203fcac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_203f150
	ldrh    r1, [r4, #0x0]
	sub     r0, r1, r0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcdc

.thumb
Startpoint_203fcdc: @ 203fcdc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcfe


.incbin "baserom/arm9.bin", 0x3fcfe, 0x203fd00 - 0x203fcfe


.thumb
Startpoint_203fd00: @ 203fd00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_203f118
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fd2e


.incbin "baserom/arm9.bin", 0x3fd2e, 0x203fd30 - 0x203fd2e


.thumb
Startpoint_203fd30: @ 203fd30 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f118
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_203f150
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fd5c

.thumb
Startpoint_203fd5c: @ 203fd5c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r2, [r2, #0x0]
	ldr     r1, [r0, #0x78]
	bl      0x21dd498
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203fd70

.thumb
Startpoint_203fd70: @ 203fd70 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f150
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f150
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r5
	mov     r3, #0x20
	bl      Function_200b144
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      0x21dd498
	mov     r0, r5
	bl      Function_200b190
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fdbc

.thumb
Startpoint_203fdbc: @ 203fdbc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f150
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f150
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r5
	mov     r3, #0x20
	bl      Function_200b144
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      0x21dd444
	mov     r0, r5
	bl      Function_200b190
	ldr     r1, [pc, #0xc] @ 0x203fe1c, (=#0x2040015)
	mov     r0, r4
	bl      Function_203e764
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x203fe1a


.incbin "baserom/arm9.bin", 0x3fe1a, 0x203fe1c - 0x203fe1a


.word 0x2040015 @ 0x203fe1c
.thumb
Startpoint_203fe20: @ 203fe20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	mov     r0, r5


