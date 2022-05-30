	dw LINKSICLE ; 335

	db  90,  51, 126, 111, 124,  98
	;   hp  atk  def  spd  sat  sdf

	db ICE, GRASS ; type
	db 167 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 49 ; step cycles to hatch
INCBIN "gfx/pokemon/linksicle/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
