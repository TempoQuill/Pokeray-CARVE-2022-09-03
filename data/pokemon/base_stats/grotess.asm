	dw GROTESS ; 275

	db  84,  25, 192, 101, 143, 116
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 22 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/molambino/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SURF, STRENGTH
	; end
