	dw ANIMADISE ; 097

	db 188,  37,  47,  68,  47,  58
	;   hp  atk  def  spd  sat  sdf

	db FLYING, GRASS ; type
	db 135 ; catch rate
	db 140 ; base exp
	db SOFT_PILLOW, SOFT_PILLOW ; items
	db GENDER_F100 ; gender ratio
	db 45 ; step cycles to hatch
INCBIN "gfx/pokemon/animadise/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, SOLARBEAM, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, FLY
	; end
