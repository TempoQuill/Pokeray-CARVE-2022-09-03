wild: MACRO
	db \1 ; level
	dw \2 ; species
ENDM

wild_encounter: MACRO
	db \1 percent, \1 percent, \1 percent ; rates: morn/day/nite
ENDM

EquintoGrassWildMons:

	map_id ROUTE_49
	wild_encounter 10 ; encounter rate
	; morning
	wild 2, PIDGEY
	wild 2, SPEAROW
	wild 2, SENTRET
	wild 2, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 2, ASSISDRA
	; day
	wild 2, PIDGEY
	wild 2, SPEAROW
	wild 2, RATTATA
	wild 2, SENTRET
	wild 2, CATERPIE
	wild 3, RATTATA
	wild 5, PICHU
	; nite
	wild 2, HOOTHOOT
	wild 2, CROVEN
	wild 2, RATTATA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 5, PICHU
	wild 5, COINTEN

	map_id ROUTE 50
	wild_encounter 10 ; encounter rate
	; morning
	wild 3, PIDGEY
	wild 3, SPEAROW
	wild 3, SENTRET
	wild 3, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 3, ASSISDRA
	; day
	wild 3, PIDGEY
	wild 3, SPEAROW
	wild 3, RATTATA
	wild 3, SENTRET
	wild 3, CATERPIE
	wild 4, RATTATA
	wild 5, PICHU
	; nite
	wild 3, HOOTHOOT
	wild 3, CROVEN
	wild 3, RATTATA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 5, PICHU
	wild 5, GATOLL

	map_id ROUTE 51
	wild_encounter 10 ; encounter rate
	; morning
	wild 4, PIDGEY
	wild 4, SPEAROW
	wild 4, SENTRET
	wild 4, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 4, ASSISDRA
	; day
	wild 4, PIDGEY
	wild 4, SPEAROW
	wild 4, RATTATA
	wild 4, SENTRET
	wild 4, WEEDLE
	wild 5, RATTATA
	wild 5, PICHU
	; nite
	wild 4, HOOTHOOT
	wild 4, CROVEN
	wild 4, RATTATA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 5, PICHU
	wild 5, GATOLL

	map_id MT_VACUUM
	wild_encounter 10 ; encounter rate
	; morning
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, SANDSHREW
	wild 6, EKANS
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY
	; day
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, SANDSHREW
	wild 6, EKANS
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY
	; nite
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, SANDSHREW
	wild 6, EKANS
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY

	db -1
