	dw ALIDUSK ; species name

	db  94,  70,  70, 119, 126, 136
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 90 ; catch rate
	db 222 ; base exp
	db MYSTERYBERRY, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch
INCBIN "gfx/pokemon/alidusk/front.dimensions"
	db GROWTH_FAST ; growth rate
	db EGG_FAIRY, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLARBEAM, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, NIGHTMARE, FLASH
	; end
