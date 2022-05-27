	dw GOLEM ; 076

	db  80, 110, 130,  45,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/golem/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/golem/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, DEFENSE_CURL, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, STRENGTH
	; end
