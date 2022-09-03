	dw CROVEN ; 266

	db  80, 100,  21,  22,  47,  25
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 255 ; catch rate
	db 109 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 1 ; step cycles to hatch
INCBIN "gfx/pokemon/croven/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, ICY_WIND, ENDURE, FRUSTRATION, DRAGONBREATH, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FLY, FLASH
	; end
