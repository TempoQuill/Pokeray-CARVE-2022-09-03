	dw GATOLL ; 281

	db  73,  21,  87,  68,  49,  68
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 102 ; catch rate
	db 36 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/cointen/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FLASH
	; end
