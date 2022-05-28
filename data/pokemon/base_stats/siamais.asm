	dw SIAMAIS ; 279

	db  40,  50,  35,  60,  35,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GHOST ; type
	db 190 ; catch rate
	db 95 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/siamais/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SWIFT, DREAM_EATER, REST, THIEF, NIGHTMARE, FLASH
	; end
