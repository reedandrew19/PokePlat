.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 1, 0, 5, 0, 0, 0, 0, 0

.word 0 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 |  6, 4095, 256, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag