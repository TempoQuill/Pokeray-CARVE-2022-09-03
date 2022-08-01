	object_const_def
	const MTV_POKE_BALL_1
	const MTV_POKE_BALL_2
	const MTV_POKE_BALL_3
	const MTV_POKE_BALL_4
	const MTV_POKE_BALL_5

MtVacuum_MapScripts:
	def_scene_scripts

	def_callbacks

MtVacuum_Item1:
	itemball PARALYZEHEAL

MtVacuum_Item2:
	itemball BUDDING_SEED

MtVacuum_Item3:
	itemball POKE_BALL

MtVacuum_Item4:
	itemball NUGGET

MtVacuum_Item5:
	itemball NUGGET

MtVacuum_HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_MT_VACUUM_FULL_HEAL

MtVacuum_HiddenNightArmer:
	hiddenitem NIGHT_ARMOR, EVENT_MT_VACUUM_HIDDEN_NIGHT_ARMOR

MtVacuum_HiddenFireStone:
	hiddenitem FIRE_STONE, EVENT_MT_VACUUM_HIDDEN_FIRE_STONE

MtVacuum_HiddenWaterStone:
	hiddenitem WATER_STONE, EVENT_MT_VACUUM_HIDDEN_WATER_STONE

MtVacuum_HiddenStrobeLight:
	hiddenitem STROBE_LIGHT, EVENT_MT_VACUUM_HIDDEN_STROBE_LIGHT

MtVacuum_HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_MT_VACUUM_HIDDEN_SUPER_POTION

MtVacuum_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 15,   MT_VACUUM, 1
	warp_event 1,  19,  MT_VACUUM, 3
	warp_event 3,  27,  MT_VACUUM, 2
	warp_event 23, 29,   MT_VACUUM, 4
	warp_event 25, 33,  MT_VACUUM, 6
	warp_event 27, 47,  MT_VACUUM, 5
	warp_event 19, 47,  MT_VACUUM, 8
	warp_event 1,  51,  MT_VACUUM, 7
	warp_event 27, 61,  MT_VACUUM, 10
	warp_event 7,  65,  MT_VACUUM, 9
	warp_event 13, 69,  MT_VACUUM, 12
	warp_event 13, 73,  MT_VACUUM, 11
	warp_event 3,  82,  MT_VACUUM, 14
	warp_event 23, 91,  MT_VACUUM, 13
	warp_event 29, 99,  MT_VACUUM, 16
	warp_event 15, 101, MT_VACUUM, 15
	warp_event 13, 107, ROUTE_49_VACUUM_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 4,  95,  BGEVENT_ITEM, MtVacuum_HiddenNightArmer
	bg_event 19, 100, BGEVENT_ITEM, MtVacuum_HiddenFireStone
	bg_event 12, 83,  BGEVENT_ITEM, MtVacuum_HiddenWaterStone
	bg_event 21, 52,  BGEVENT_ITEM, MtVacuum_HiddenStrobeLight
	bg_event 29, 41,  BGEVENT_ITEM, MtVacuum_HiddenSuperPotion
	bg_event 18, 0,   BGEVENT_ITEM, MtVacuum_HiddenFullHeal

	def_object_events
	object_event 27, 105, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtVacuum_Item1, EVENT_MT_VACUUM_PARALYZEHEAL
	object_event 12, 98,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtVacuum_Item2, EVENT_MT_VACUUM_BUDDING_SEED
	object_event 29, 93,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtVacuum_Item3, EVENT_MT_VACUUM_POKE_BALL
	object_event 6,  83,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtVacuum_Item4, EVENT_MT_VACUUM_NUGGET_1
	object_event 13, 66,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtVacuum_Item5, EVENT_MT_VACUUM_NUGGET_2
