	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	const VERMILIONCITY_SCRAWNY
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_PANDA
	const VERMILIONCITY_POKEFAN_M

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCityTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionScrawnyOwner:
	faceplayer
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionScrawny:
	refreshscreen
	opentext
	pokepic SCRAWNY
	writetext VermilionScrawnyText1
	cry SCRAWNY
	waitbutton
	closepokepic
	closetext
	earthquake 30
	opentext
	writetext VermilionScrawnyText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionPanda:
	opentext
	special PandaAwake
	iftrue .Awake
	writetext VermilionCityPandaSleepingText
	waitbutton
	closetext
	end

.Awake:
	refreshscreen
	pokepic PANDA
	writetext VermilionCityRadioNearPandaText
	pause 15
	cry PANDA
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon PANDA, 50
	startbattle
	disappear VERMILIONCITY_BIG_PANDA
	setevent EVENT_FOUGHT_PANDA
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUIDE
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetrainpic
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetrainpic
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetrainpic
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	closetrainpic
	verbosegiveitem HP_UP
	iffalse .Done
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
.AlreadyGotItem:
	refreshscreen
	trainerpic GUIDE
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetrainpic
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityMolesCaveSign:
	jumptext VermilionCityMolesCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionScrawnyText1:
	text "SCRAWNY: Guooh"
	line "gogogoh!"
	done

VermilionScrawnyText2:
	text "A SCRAWNY is growl-"
	line "ing while stomping"
	cont "the ground flat."
	done

VermilionCityPandaSleepingText:
	text "PANDA is snoring"
	line "peacefully..."
	done

VermilionCityRadioNearPandaText:
	text "The ANMLGEAR was"
	line "placed near the"
	cont "sleeping PANDA..."

	para "..."

	para "PANDA woke up!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Skilled trainers"
	line "gather in KANTO."

	para "GYM LEADERS are"
	line "especially strong."

	para "They won't be easy"
	line "to defeat."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "You've started to"
	line "collect KANTO GYM"
	cont "BADGES?"

	para "Don't you agree"
	line "that the trainers"
	cont "here are tough?"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "I guess you'll be"
	line "finished with your"

	para "conquest of KANTO"
	line "GYMS soon."

	para "Let me know if"
	line "you get all eight"
	cont "BADGES."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "Congratulations!"

	para "You got all the"
	line "KANTO GYM BADGES."

	para "I've got a reward"
	line "for your efforts."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Having a variety"
	line "of ANIMAL types"

	para "should give you an"
	line "edge in battle."

	para "I'm sure the KANTO"
	line "GYM BADGES will"
	cont "help you."
	done

VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	para "and visuals like"
	line "aurora borealis,"
	para "at this time of"
	line "year, at this time"
	para "of day, localized"
	line "entirely in this"
	para "city. And you"
	line "can't see it."
	done

VermilionGymSignText:
	text "VERMILION CITY"
	line "ANIMAL GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "American,"
	para "But he's got"
	line "nothing on my boy"
	cont "Bandit Keith."
	done

PokemonFanClubSignText:
	text "ANIMAL FAN CLUB"

	para "All ANIMAL Fans"
	line "Welcome!"
	done

VermilionCityMolesCaveSignText:
	text "MOLE'S CAVE"
	done

VermilionCityPortSignText:
	text "VERMILION PORT"
	line "ENTRANCE"
	done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 13, POKEMON_FAN_CLUB, 1
	warp_event 13, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 13, VERMILION_MART, 2
	warp_event 21, 17, VERMILION_MOLES_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 19, VERMILION_GYM, 1
	warp_event 19, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 31, VERMILION_PORT_PASSAGE, 2
	warp_event 34,  7, MOLES_CAVE, 1

	def_coord_events

	def_bg_events
	bg_event 25,  3, BGEVENT_READ, VermilionCitySign
	bg_event  5, 19, BGEVENT_READ, VermilionGymSign
	bg_event  5, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 33,  9, BGEVENT_READ, VermilionCityMolesCaveSign
	bg_event 27, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 10,  5, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 22, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 23,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionScrawnyOwner, -1
	object_event 26,  7, SPRITE_SCRAWNY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionScrawny, -1
	object_event 14, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 34,  8, SPRITE_BIG_PANDA, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPanda, EVENT_VERMILION_CITY_PANDA
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
