	dw KOTORA ; 291

	db  83, 128,  78, 125, 104,  54
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
	tmhm HEADBUTT, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, RAIN_DANCE, ENDURE, FRUSTRATION, DRAGONBREATH, THUNDER, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, THIEF, FLASH
	; end
