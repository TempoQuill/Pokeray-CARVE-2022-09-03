	dw RAITORA ; 292

	db 125, 192, 117, 188, 156,  81
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 79 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 14 ; step cycles to hatch
INCBIN "gfx/pokemon/raitora/front.dimensions"
	db GROWTH_SLIGHTLY_FAST ; growth rate
	db EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm FLASH
	; end
