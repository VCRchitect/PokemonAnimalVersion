	object_const_def
	const OLIVINEGYM_DIANA
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymDianaScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic DIANA
	checkevent EVENT_BEAT_DIANA
	iftrue .FightDone
	writetext Diana_SteelTypeIntro
	waitbutton
	closetrainpic
	closetext
	winlosstext Diana_BetterTrainer, 0
	loadtrainer DIANA, DIANA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DIANA
	refreshscreen
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	refreshscreen
	trainerpic DIANA
	writetext Diana_BadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	refreshscreen
	trainerpic DIANA
	writetext Diana_IronTailSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotIronTail:
	writetext Diana_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetrainpic
	closetext
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	refreshscreen
	checkevent EVENT_BEAT_DIANA
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_DIANA_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	trainerpic GUIDE
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.OlivineGymGuideWinScript:
	refreshscreen
	opentext
	trainerpic GUIDE
	writetext OlivineGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

.OlivineGymGuidePreScript:
	refreshscreen
	opentext
	trainerpic GUIDE
	writetext OlivineGymGuidePreText
	waitbutton
	closetrainpic
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, DIANA, DIANA1
	jumpstd GymStatue2Script

Diana_SteelTypeIntro:
	text "...Thank you for"
	line "your help at the"
	cont "LIGHTHOUSE..."

	para "But this is dif-"
	line "ferent. Please"

	para "allow me to intro-"
	line "duce myself."

	para "I am DIANA, a"
	line "GYM LEADER. I use"
	cont "the steel-type."

	para "Do you know about"
	line "the steel-type?"

	para "It's a type that"
	line "was only recently"
	cont "discovered."

	para "Um... May I begin?"
	done

Diana_BetterTrainer:
	text "You are a better"
	line "trainer than me,"

	para "in both skill and"
	line "kindness."

	para "In accordance with"
	line "LEAGUE rules, I"

	para "confer upon you"
	line "this BADGE."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> received"
	line "MINERALBADGE."
	done

Diana_BadgeSpeech:
	text "MINERALBADGE"
	line "raises ANIMALs'"
	cont "DEFENSE."

	para "Um... Please take"
	line "this too..."
	done

Text_ReceivedTM09: ; unreferenced
	text "<PLAYER> received"
	line "TM09."
	done

Diana_IronTailSpeech:
	text "...You could use"
	line "that TM to teach"
	cont "IRON TAIL."
	done

Diana_GoodLuck:
	text "Um... I don't know"
	line "how to say this,"
	cont "but good luck..."
	done

OlivineGymGuideText:
	text "DIANA uses the"
	line "newly discovered"
	cont "steel-type."

	para "I don't know very"
	line "much about it."
	done

OlivineGymGuideWinText:
	text "That was awesome."

	para "The steel-type,"
	line "huh?"

	para "That was a close"
	line "encounter of an"
	cont "unknown kind!"
	done

OlivineGymGuidePreText:
	text "DIANA, the GYM"
	line "LEADER, is at the"
	cont "LIGHTHOUSE."

	para "She's been tending"
	line "to a sick ANIMAL."

	para "A strong trainer"
	line "has to be compas-"
	cont "sionate."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_DIANA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymDianaScript, EVENT_OLIVINE_GYM_DIANA
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
