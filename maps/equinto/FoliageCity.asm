	object_const_def
	const FOLIAGECITY_YOUNGSTER
	const FOLIAGECITY_LASS
	const FOLIAGECITY_TEACHER
	const FOLIAGECITY_FISHER
	const FOLIAGECITY_COOLTRAINER_F

FoliageCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	end

FoliageYoungsterScript:
	jumptextfaceplayer FoliageYoungsterText

FoliageLassScript:
	jumptextfaceplayer FoliageLassText

FoliageTeacherScript:
	jumptextfaceplayer FoliageTeacherText

FoliageFisherScript:
	jumptextfaceplayer FoliageFisherText

FoliageGrannyScript:
	jumptextfaceplayer FoliageGrannyText

FoliageHyperPotion:
	hiddenitem HYPER_POTION, EVENT_FOLIAGE_HIDDEN_HYPER_POTION

FoliageCity_CitySign:
	jumptext FoliageCity_CitySignText

FoliageCity_HallSign:
	jumptext FoliageCity_HallSignText

FoliageCity_GymSign:
	checkflag ENGINE_IVYBADGE
	iffalse .notdone
	jumptext FoliageCity_GymSignText2

.notdone
	jumptext FoliageCity_GymSignText1

FoliageCity_PokeSign:
	jumpstd PokecenterSignScript

FoliageCity_MartSign:
	jumpstd MartSignScript

FoliageCity_MuseumSign:
	jumptext FoliageCity_MuseumSignText

FoliageCity_CafeSign:
	jumptext FoliageCity_CafeSignText

FoliageCity_CafeSignText:
	text "FOLIAGE CITY CAFE"
	done

FoliageCity_MuseumSignText:
	text "FOLIAGE MUSEUM"
	done

FoliageCity_GymSignText1:
	text "FOLIAGE CITY GYM"

	para "LEADER: CINDY"
	done

FoliageCity_GymSignText2:
	text "FOLIAGE CITY GYM"

	para "LEADER: CINDY"

	para "WINNERS: <PLAYER>"
	done

FoliageCity_HallSign:
	text "#MON hall: show"
	line "off you adventure!"
	done

FoliageCity_CitySignText:
	text "FOLIAGE CITY:"

	para "The bustling green"
	line "metropolis!"
	done

FoliageYoungsterText:
	text "Hey, are you from"
	line "around here?"

	para "You should see the"
	line "sights here!"

	para "Wait, that was 20"
	line "years ago."

	para "Did Cindy take the"
	line "gym over yet?"
	done

FoliageLassText:
	text "Wow, look at this"
	line "place. Half of it's"
	cont "all abandoned."

	para "At least there's a"
	line "huge hall to the"
	cont "northeast."
	done

FoliageTeacherScript:
	text "I've been living"
	line "here all my life"

	para "and there are no"
	line "openings!"

	para "I was once a good"
	line "teacher back in"
	cont "the groovy age."
	done

FoliageFisherScript:
	text "Well, well, well…"
	line "we have boulders"
	cont "here too!"

	para "…even moreso! We"
	line "must be close to"
	cont "shore here!"
	done

FoliageGrannyScript:
	text "…been here since"
	line "WWII. Back then,"

	para "FOLIAGE was a very"
	line "busy metropolis."
	done

FoliageCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 34,  9, BGEVENT_ITEM, FoliageHyperPotion
	bg_event 4,   2, BGEVENT_READ, FoliageCity_CitySign
	bg_event 32,  4, BGEVENT_READ, FoliageCity_HallSign
	bg_event 23,  9, BGEVENT_READ, FoliageCity_GymSign
	bg_event 10,  9, BGEVENT_READ, FoliageCity_PokeSign
	bg_event 18,  9, BGEVENT_READ, FoliageCity_MartSign
	bg_event  6, 16, BGEVENT_READ, FoliageCity_MuseumSign
	bg_event 12, 34, BGEVENT_READ, FoliageCity_CafeSign

	def_object_events
	object_event 10, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, FoliageYoungsterScript, -1
	object_event 19, 13, SPRITE_LASS,      SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, FoliageLassScript,      -1
	object_event 16, 20, SPRITE_TEACHER,   SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_PINK,   OBJECTTYPE_SCRIPT, 0, FoliageTeacherScript,   -1
	object_event 18, 33, SPRITE_FISHER,    SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, FoliageFisherScript,    -1
	object_event 12, 28, SPRITE_GRANNY,    SPRITEMOVEDATA_WANDER,          1, 1, -1, -1, PAL_NPC_RED,    OBJECTTYPE_SCRIPT, 0, FoliageGrannyScript,    -1
