	object_const_def
	const R50_FERNACE_GUY
	const R50_FRUIT_TREE_1
	const R50_FRUIT_TREE_2

Route50_MapScripts:
	def_scene_scripts

	def_callbacks

R50_FisherScript:
	jumptextfaceplayer R50_PokemonFantedText

R50_Directory:
	jumptext Route50DirectoryText

R50_Tip:
	jumptext Route50TrainerTipText

R50_HiddenBurnHeal:
	hiddenitem BURN_HEAL, EVENT_ROUTE_50_HIDDEN_BURN_HEAL

R50_HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_50_HIDDEN_HYPER_POTION

R50_FruitScript1:
	fruittree FRUITTREE_ROUTE_50_1

R50_FruitScript2:
	fruittree FRUITTREE_ROUTE_50_2

R50_PokemonFantedText:
	text "I battled a pass-"
	line "ing trainer,"

	para "and my #MON had"
	line "fainted from a"
	cont "sudden burn."

	para "He said something"
	line "about a FERNACE,"

	para "but I don't know"
	line "what he meant."
	done

Route50DirectoryText:
	text "ROUTE 50"

	para "SOUTHWEST -"
	line "ROUTE 49"

	para "EAST -"
	line "TRAVERSAL CITY"
	done

Route50TrainerTipText:
	text "TRAINER TIPS"

	para "#MON eat"
	line "berries to stay"
	cont "healthy."

	para "Give your #MON"
	line "a berry to eat."
	done

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 17, ROUTE_49_50_GATE, 3
	warp_event  2, 17, ROUTE_49_50_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 23,  5, BGEVENT_ITEM, R50_HiddenBurnHeal
	bg_event  0, 14, BGEVENT_READ, R50_Directory
	bg_event 13,  0, BGEVENT_ITEM, R50_HiddenHyperPotion
	bg_event  2,  6, BGEVENT_READ, R50_Tip

	def_object_events
	object_event 10,  9, SPRITE_FISHER,     SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R50_FisherScript, -1
	object_event  7,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL,        0, 0, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, R50_FruitScript1, -1
	object_event 27, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL,        0, 0, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, R50_FruitScript2, -1