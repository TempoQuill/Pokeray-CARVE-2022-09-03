	dw TIRUFF ; 288

	db  34,  45,  25,  38,  49,  31
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 255 ; catch rate
	db 39 ; base exp
	db SPICY_BERRY, SPICY_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/tiruff/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SWIFT, REST, ATTRACT
	; end
