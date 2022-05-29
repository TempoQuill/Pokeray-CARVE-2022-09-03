	dw KURSTRAW ; 294

	db  30, 120,  60,  10, 120,  60
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DARK ; type
	db 75 ; catch rate
	db 125 ; base exp
	db NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	db 30 ; step cycles to hatch
INCBIN "gfx/pokemon/kurstraw/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, DEFENSE_CURL, DREAM_EATER, REST, THIEF, NIGHTMARE, STRENGTH
	; end
