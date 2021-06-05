ItemPocketNames:
; entries correspond to item type constants
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Meds
	dw .Fruit
	dw .ASM
	dw .Evo

.Item:  db "ITEM POCKET@"
.Key:   db "KEY POCKET@"
.Ball:  db "BALL POCKET@"
.TM:    db "TM POCKET@"
.Meds:  db "MEDICINE POCKET@"
.Fruit: db "FRUIT POCKET@"
.ASM:   db "ASSEMBLY POCKET@"
.Evo:   db "EVOLUTION POCKET@"
