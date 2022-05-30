	dw ABREAM ; 334

	db  70,  34,  97,  85,  95,  75
	;   hp  atk  def  spd  sat  sdf

	db ICE, GRASS ; type
	db 217 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 49 ; step cycles to hatch
INCBIN "gfx/pokemon/abream/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
