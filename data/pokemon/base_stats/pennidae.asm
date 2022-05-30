	dw PENNIDAE ; 336

	db 117,  77, 164, 144, 161, 127
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 128 ; catch rate
	db 219 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 49 ; step cycles to hatch
INCBIN "gfx/pokemon/pennidae/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
