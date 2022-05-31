	object_const_def
	const ROUTE51_ITEMBALL
	const ROUTE51_FRUITTREE_1
	const ROUTE51_FRUITTREE_2

Route51_MapScripts:
	def_scene_scripts

	def_callbacks

Route51_SignScript:
	jumptext Route51_SignText

Route51_HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_51_HIDDEN_POTION

Route51_PokeBallScript:
	itemball PARALYZEHEAL

Route51_FruitTree1:
	fruittree FRUITTREE_ROUTE_51_1

Route51_FruitTree2:
	fruittree FRUITTREE_ROUTE_51_2

Route51_SignText:
	text "ROUTE 51"

	para "NORTHWEST -"
	line "ROUTE 49"

	para "EAST -"
	line "FOLIAGE CITY"
	done

Route51_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 3, 1, BGEVENT_READ, Route51_SignScript
	bg_event 6, 0, BGEVENT_ITEM, Route51_HiddenPotion

	def_object_events
	object_event 10, 4,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0,  -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51_PokeBallScript, EVENT_ROUTE_51_PARALYZEHEAL
	object_event 14, 8,  SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0,  -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route51_FruitTree1, -1
	object_event 21, 12, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0,  -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route51_FruitTree2, -1
