	dw TYROGUE ; 236

	db  35,  35,  35,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/tyrogue/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/tyrogue/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DETECT, REST, ATTRACT, THIEF, STRENGTH
	; end
