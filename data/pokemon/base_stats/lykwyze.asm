	dw LYKWYSE ; 277

	db  72,  72,  72,  72,  72,  72
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 23 ; catch rate
	db 92 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/lykwyse/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DITTO, EGG_DITTO ; egg groups

	; tm/hm learnset
	tmhm
	; end
