.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_c3 0x5, 0x1, 0x29
	Cmd_c3 0x5, 0x0, 0x60
	Cmd_1d
	Cmd_e
	Cmd_d 0x5
	Cmd_12 0x1e, 0x2, 0x5
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstNe, 0x3c, 0x1, Script_branch_60
Script_branch_60: @ 60
	end
@ 0x64
@ 64

