	dw ASTROVEN ; 267

	db 120, 150,  32,  33,  71,  38
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 179 ; catch rate
	db 163 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 1 ; step cycles to hatch
INCBIN "gfx/pokemon/astroven/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm FLY, STRENGTH, FLASH
	; end
