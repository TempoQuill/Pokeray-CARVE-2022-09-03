	dw GRYPHUUM ; 063

	db  56, 115,  86, 135, 106,  99
	;   hp  atk  def  spd  sat  sdf

	db FLYING, FLYING ; type
	db 99 ; catch rate
	db 178 ; base exp
	db WHOPPER, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
INCBIN "gfx/pokemon/gryphuum/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ROLLOUT, ROAR, PSYCH_UP, HIDDEN_POWER, SNORE, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALk, SWIFT, THUNDERPUNCH, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, CUT, FLY, FLASH
	; end
