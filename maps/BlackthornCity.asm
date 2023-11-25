	object_const_def
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Santos

.FlyPoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	endcallback

.Santos:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .SantosAppears
	disappear BLACKTHORNCITY_SANTOS
	endcallback

.SantosAppears:
	appear BLACKTHORNCITY_SANTOS
	endcallback

BlackthornSuperNerdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext Text_ClairIsOut
	waitbutton
	closetrainpic
	closetext
	end

.ClearedRadioTower:
	writetext Text_ClairIsIn
	waitbutton
	closetrainpic
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetrainpic
	closetext
	end

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	writetext BlackthornGrampsGrantsEntryText
	waitbutton
	closetrainpic
	closetext
	end

BlackthornBlackBeltScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext BlackBeltText_WeirdRadio
	waitbutton
	closetrainpic
	closetext
	end

.ClearedRadioTower:
	writetext BlackBeltText_VoicesInMyHead
	waitbutton
	closetrainpic
	closetext
	end

BlackthornCooltrainerF1Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	writetext BlackthornCooltrainerF1Text
	waitbutton
	closetrainpic
	closetext
	end

BlackthornYoungsterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	writetext BlackthornYoungsterText
	waitbutton
	closetrainpic
	closetext
	end
	
BlackthornCooltrainerF2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	writetext BlackthornCooltrainerF2Text
	waitbutton
	closetrainpic
	closetext
	end

SantosScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PSYCHIC_T
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue .Saturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iftrue .MetSantos
	writetext MeetSantosText
	promptbutton
	setevent EVENT_MET_SANTOS_OF_SATURDAY
.MetSantos:
	writetext SantosGivesGiftText
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalse .Done
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetrainpic
	closetext
	end

.Saturday:
	writetext SantosSaturdayText
	waitbutton
.Done:
	closetrainpic
	closetext
	end

.NotSaturday:
	writetext SantosNotSaturdayText
	waitbutton
	closetrainpic
	closetext
	end

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

MoveDeletersHouseSign:
	jumptext MoveDeletersHouseSignText

DragonDensSign:
	jumptext DragonDensSignText

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSign:
	jumpstd MartSignScript

Text_ClairIsOut:
	text "I am sorry."

	para "CLAIR, our GYM"
	line "LEADER, entered"

	para "the DRAGON'S DEN"
	line "behind the GYM."

	para "I have no idea"
	line "when our LEADER"
	cont "will return."
	done

Text_ClairIsIn:
	text "CLAIR, our GYM"
	line "LEADER, is waiting"
	cont "for you."
	done

Text_ClairIsBeaten:
	text "You defeated"
	line "CLAIR?"
	
	para "Starting to think"
	line "maybe she's not"
	cont "good after all..."
	done

BlackthornGrampsRefusesEntryText:
	text "No. Only chosen"
	line "trainers may train"

	para "here."
	line "Please leave."
	done

BlackthornGrampsGrantsEntryText:
	text "If CLAIR allows"
	line "it, her grand-"
	cont "father--our MASTER"
	cont "--will also."
	done

BlackBeltText_WeirdRadio:
	text "My radio's busted?"
	line "Lately, I only"
	
	para "hear this dude who"
	line "sounds homeless"
	cont "and angry."
	
	done

BlackBeltText_VoicesInMyHead:
	text "I like to chew on"
	line "aluminum foil."
	done

BlackthornCooltrainerF1Text:
	text "Skinny Legs make"
	line" skinny steps."
	done

BlackthornYoungsterText:
	text "Geopolitics have"
	line "me worried about"
	
	para "the world I will"
	line "inherit, and the"
	
	para "world that I will"
	line "be forced to leave"
	cont "to my children."
	done

MeetSantosText:
	text "SANTOS: ..."

	para "It's Saturday..."

	para "I'm SANTOS of"
	line "Saturday..."
	done

SantosGivesGiftText:
	text "You can have this..."
	done

SantosGaveGiftText:
	text "SANTOS: ..."

	para "SPELL TAG..."

	para "Ghost-type moves"
	line "get stronger..."

	para "It will frighten"
	line "you..."
	done

SantosSaturdayText:
	text "SANTOS: ..."

	para "See you again on"
	line "another Saturday..."

	para "I won't have any"
	line "more gifts..."
	done

SantosNotSaturdayText:
	text "SANTOS: Today's"
	line "not Saturday..."
	done

BlackthornCooltrainerF2Text:
	text "You look cold!"
	
	para "Them nippley-bits"
	line "could carve logs!"
	done

BlackthornCitySignText:
	text "BLACKTHORN CITY"

	para "Where Signs Have"
	line "Strong Opinions"
	done

BlackthornGymSignText:
	text "BLACKTHORN CITY"
	line "ANML GYM"
	cont "LEADER: CLAIR"

	para "The Blessed User"
	line "of Dragons"
	done

MoveDeletersHouseSignText:
	text "MOVE DELETER'S"
	line "HOUSE"
	
	para "But only a jabroni"
	line "would steal an"
	cont "ANIMAL's memories."
	done

DragonDensSignText:
	text "DRAGON'S DEN is a"
	line "cool place."
	done

BlackthornCityTrainerTipsText:
	text "TRAINER TIPS"

	para "You should invest"
	line "in long-term bonds"
	cont "to support the US."
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_MART, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 31, MOVE_DELETERS_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1

	def_coord_events

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 17, 13, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 31, BGEVENT_READ, MoveDeletersHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  5, 25, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 16, 29, BGEVENT_READ, BlackthornCityMartSign
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign

	def_object_events
	object_event 18, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 24, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 13, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 35, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
