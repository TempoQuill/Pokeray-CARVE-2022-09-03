	dw PHOTORDEN ; 259

	db 124,  47, 246,  85, 119,  13
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 126 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 216 ; step cycles to hatch
INCBIN "gfx/pokemon/photorden/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CUT, FLASH
	; end
