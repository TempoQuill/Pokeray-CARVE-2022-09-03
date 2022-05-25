	object_const_def
	const TRAVERSALCITY_GRAMPS
	const TRAVERSALCITY_SILVER
	const TRAVERSALCITY_YOUNGSTER
	const TRAVERSALCITY_LASS
	const TRAVERSALCITY_TEACHER
	const TRAVERSALCITY_FISHER
	const TRAVERSALCITY_COOLTRAINER_F

TraversalCity_MapScripts:
	def_scene_scripts
	
	scene_script .DummyScene ; SCENE_NOTHING
	scene_script .DummyScene ; SCENE_ARRIVED
	scene_script .DummyScene ; SCENE_MET_RIVAL_IN_TRAVERSAL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_TRAVERSAL
	return

TraversalRivalSetup:
	playsound SFX_TRANSACTION
	setscene SCENE_ARRIVED
	jumptext Traversal_SomeoneHealedPokemonNearby

TraversalRivalEncounterSouth:
	moveobject TRAVERSALCITY_SILVER, 11, 21
TraversalRivalEncounterNorth:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear TRAVERSALCITY_SILVER
	applymovement TRAVERSALCITY_SHAGGY, Traversal_ShaggyWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Traversal_YouGotANewOneYourself
	winlosstext TraversalWinText, TraversalLossText
	setlasttalked TRAVERSALCITY_SILVER
	checkevent EVENT_GOT_FLAMBEAR
	iftrue .Water_Starter
	checkevent EVENT_GOT_CRUZ
	iftrue .Grass_Starter
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .WinScene
	sjump .LossScene

.Water_Starter:
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .WinScene
	sjump .LossScene

.Grass_Starter:
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .WinScene
	sjump .LossScene

.WinScene:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext TraversalCity_ShaggyText_Win
	waitbutton
	closetext
	turnobject TRAVERSALCITY_SILVER, RIGHT
	applymovement TRAVERSALCITY_SILVER, Traversal_ShaggyWalksToPokeCenter
	disappear TRAVERSALCITY_SILVER
	setscene SCENE_MET_RIVAL_IN_TRAVERSAL
	special HealParty
	playmapmusic
	end

.LossScene:
	playmusic MUSIC_RIVAL_AFTER
	special HealParty
	opentext
	writetext TraversalCity_ShaggyText_Loss
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement PLAYER, Traversal_PlayerQuicklyMakesWay
	playsound SFX_TACKLE
	turnobject PLAYER, LEFT
	applymovement TRAVERSALCITY_SILVER, Traversal_ShaggyLeavesCity
	disappear TRAVERSALCITY_SILVER
	setscene SCENE_MET_RIVAL_IN_TRAVERSAL
	playmapmusic
	end

TraversalSchoolHouseSign:
	jumptext TraversalSchoolHouseSignText

TraversalCitySign:
	jumptext TraversalCitySignText

TraversalGymSign:
	checkflag ENGINE_GADGETBADGE
	iftrue, .with_badge
	jumptext TraversalGymSignText_BeforeFight

.with_badge
	jumptext TraversalGymSignText_AfterFight

TraversalGrampsScript:
	checkevent EVENT_GRAMPS_MAP_CARD
	iftrue .get_map
	jumptextfaceplayer Traversal_HaveAGreatDayText

.get_map:
	faceplayer
	opentext
	writetext Traversal_MapCardText
	waitbutton
	writetext GotMapCardText
	promptbutton
	setflag ENGINE_MAP_CARD
	clearevent EVENT_GRAMPS_MAP_CARD
	waitbutton
	closetext
	end

TraversalGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GRANNYS_REPEL
	iffalse .use_repel
	writetext TendingToGardenText
	promptbutton
	scall JumpstdReceiveItem
	verbosegiveitem REPEL
	iffalse .bag_full
	setevent EVENT_TRAVERSAL_CITY_GRANNYS_REPEL
.use_repel
	writetext HelpfulRepelText
	waitbutton
.bag_full:
	closetext
	end

TraversalFisherScript:
	jumptextfaceplayer BoulderMeansCliffText

TraversalTeacherScript:
	jumptextfaceplayer KnowledgeFromSchoolhouseText

TraversalLassScript:
	jumptextfaceplayer TraversalHugeCityText

TraversalYoungsterScript:
	jumptextfaceplayer MeetGeniusGymLeaderText

JumpstdReceiveItem:
	jumpstd ReceiveItemScript

TraversalMartSign:
	jumpstd MartSignScript

TraversalPokeCenterSign:
	jumpstd PokecenterSignScript

Traversal_PlayerQuicklyMakesWay:
	big_step UP
	step_end

Traversal_ShaggyWalksToPokeCenter:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Traversal_ShaggyLeavesCity:
	step LEFT
Traversal_ShaggyWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

MeetGeniusGymLeaderText:
	text "Did you go to the"
	line "gym? You should"

	para "meet the leader"
	line "over there."

	para "He's a genius!"
	done

TraversalHugeCityText:
	text "This city is huge!"
	line "How do I even get"
	cont "around here?"
	done

KnowledgeFromSchoolhouseText:
	text "TRAVERSAL CITY has"
	line "a schoolhouse. We"

	para "are just brimming"
	line "with knowledge!"
	done

BoulderMeansCliffText:
	text "A cliff must be"
	line "nearby. Don't you"

	para "think that's the"
	line "reason why there're"
	cont "boulders here?"
	done

TendingToGardenText:
	text "I am tending to my"
	line "garden. Do you"
	cont "need a REPEL?"
	done

HelpfulRepelText:
	text "REPEL can be quite"
	line "helpful when you're"

	para "avoiding wild"
	line "#MON."
	done

Traversal_MapCardText:
	text "Many households"
	line "around here have"
	cont "a town map,"

	para "but you're not"
	line "about to find a"
	
	para "house just"
	line "anywhere. Just in"

	para "case, here's a"
	line "little something"
	cont "for you."
	done

GotMapCardText:
	text "A MAP was added to"
	line "<PLAYER>'s #GEAR!"
	sound_item
	done

Traversal_HaveAGreatDayText:
	text "Okay, now. Have a"
	line "swell day."
	done

Traversal_SomeoneHealedPokemonNearby:
	text "It sounds like"
	line "someone got an"
	cont "item."
	done

Traversal_YouGotANewOneYourself:
	text "So, you got a new"
	line "one yourself? Let"
	cont "me see it!"
	done

TraversalWinText:
	text "What?!? I got the"
	line "wrong one!"
	done

TraversalLossText:
	text "Alright!!! Great"
	line "work!"
	done

TraversalCity_ShaggyText_Win:
	text "I was on my way to"
	line "the #MON center"
	
	para "anyway! Catch ya"
	line "later!"
	done

TraversalCity_ShaggyText_Loss:
	text "I'll probably see"
	line "you at the #MON"
	
	para "center. Catch ya"
	line "later!"
	done

TraversalGymSignText_AfterFight:
	text "TRAVERSAL CITY"
	line "#MON GYM"

	para "LEADER: JAMES"

	para "WINNERS: <PLAYER>"
	done

TraversalGymSignText_BeforeFight:
	text "TRAVERSAL CITY"
	line "#MON GYM"

	para "LEADER: JAMES"
	done

TraversalCitySignText:
	text "TRAVERSAL CITY:"
	line "The passion place"
	cont "for science."
	done

TraversalSchoolHouseSignText:
	text "Your education:"

	para "TRAVERSAL CITY"
	line "SCHOOLHOUSE"
	done

TraversalCity_MapEvents:
	db 0, 0

	def_warp_events

	def_coord_events
	coord_event 5, 20, SCENE_ARRIVED, TraversalRivalEncounterNorth
	coord_event 5, 21, SCENE_ARRIVED, TraversalRivalEncounterSouth
	coord_event 6, 20, SCENE_NOTHING, TraversalRivalSetup
	coord_event 6, 21, SCENE_NOTHING, TraversalRivalSetup

	def_bg_events
	bg_event  4,  9, BGEVENT_READ, TraversalPokeCenterSign
	bg_event 10,  9, BGEVENT_READ, TraversalMartSign
	bg_event 21,  9, BGEVENT_READ, TraversalGymSign
	bg_event  7, 19, BGEVENT_READ, TraversalSchoolHouseSign
	bg_event 16, 20, BGEVENT_READ, TraversalCitySign

	def_object_events
	object_event  7,  4, SPRITE_GRAMPS,    SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE,   OBJECTTYPE_SCRIPT, 0, TraversalGrampsScript,    EVENT_GRAMPS_MAP_CARD
	object_event 11, 20, SPRITE_SILVER,    SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, ObjectEvent,              EVENT_MET_RIVAL_AT_TRAVERSAL
	object_event 14,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, TraversalYoungsterScript, -1
	object_event 19,  7, SPRITE_LASS,      SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED,    OBJECTTYPE_SCRIPT, 0, TraversalLassScript,      -1
	object_event 32, 17, SPRITE_TEACHER,   SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_PINK,   OBJECTTYPE_SCRIPT, 0, TraversalTeacherScript,   -1
	object_event 30, 28, SPRITE_FISHER,    SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, TraversalFisherScript,    -1
	object_event 13, 31, SPRITE_GRANNY,    SPRITEMOVEDATA_WANDER,          1, 1, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, TraversalGrannyScript,    -1
