	dw WARWOLF ; 298

	db 159, 157, 132,  57, 153, 144
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 145 ; catch rate
	db 152 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 13 ; step cycles to hatch
INCBIN "gfx/pokemon/warwolf/front.dimensions"
	db GROWTH_SLIGHTLY_SLOW ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, DETECT, RESt, ATTRACT, THIEF, FURY_CUTTER, CUT, FLASH
	; end
