	dw WOLFMAN ; 297

	db 106, 105,  88,  38, 102,  96
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 218 ; catch rate
	db 101 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 13 ; step cycles to hatch
INCBIN "gfx/pokemon/wolfman/front.dimensions"
	db GROWTH_SLIGHTLY_SLOW ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CUT, FLASH
	; end
