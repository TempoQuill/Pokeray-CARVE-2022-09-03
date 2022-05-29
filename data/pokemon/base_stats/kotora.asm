	dw KOTORA ; 291

	db 166, 128,  78, 146, 104,  54
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 119 ; catch rate
	db 35 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 14 ; step cycles to hatch
INCBIN "gfx/pokemon/kotora/front.dimensions"
	db GROWTH_SLIGHTLY_FAST ; growth rate
	db EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm FLASH
	; end
