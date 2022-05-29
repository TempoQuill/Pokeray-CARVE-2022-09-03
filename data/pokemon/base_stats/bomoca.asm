	dw BOMOCA ; 290

	db  86,  67,  76, 108, 113, 109
	;   hp  atk  def  spd  sat  sdf

	db FIRE, WATER ; type
	db 117 ; catch rate
	db 121 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
INCBIN "gfx/pokemon/belmitt/front.dimensions"
	db GROWTH_SLIGHTLY_FAST ; growth rate
	db EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SURF, FLASH
	; end
