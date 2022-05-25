	dw SYNTIQUE

	db 112,  42, 224,  77, 108,  12
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 139 ; catch rate
	db 195 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 196 ; step cycles to hatch
	db 5 ; unknown 2
INCBIN "gfx/pokemon/syntique/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	tmhm CUT, FLASH
