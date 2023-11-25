	object_const_def
	const CIANWOODGYM_JOSE
	const CIANWOODGYM_BLACK_BELT1
	const CIANWOODGYM_BLACK_BELT2
	const CIANWOODGYM_BLACK_BELT3
	const CIANWOODGYM_BLACK_BELT4
	const CIANWOODGYM_BOULDER1
	const CIANWOODGYM_BOULDER2
	const CIANWOODGYM_BOULDER3
	const CIANWOODGYM_BOULDER4

CianwoodGym_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodGymJoseScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic JOSE
	checkevent EVENT_BEAT_JOSE
	iftrue .FightDone
	writetext JoseIntroText1
	waitbutton
	closetext
	turnobject CIANWOODGYM_JOSE, RIGHT
	refreshscreen
	opentext
	writetext JoseIntroText2
	waitbutton
	closetrainpic
	closetext
	applymovement CIANWOODGYM_BOULDER1, CianwoodGymMovement_JoseJosesBoulder
	playsound SFX_STRENGTH
	earthquake 80
	disappear CIANWOODGYM_BOULDER1
	pause 30
	faceplayer
	refreshscreen
	opentext
	trainerpic JOSE
	writetext JoseIntroText3
	waitbutton
	closetrainpic
	closetext
	winlosstext JoseLossText, 0
	loadtrainer JOSE, JOSE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JOSE
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
	readvar VAR_BADGES
	scall CianwoodGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue .AlreadyGotTM
	setevent EVENT_BEAT_BLACKBELT_SKUNK
	setevent EVENT_BEAT_BLACKBELT_LAO
	setevent EVENT_BEAT_BLACKBELT_NOB
	setevent EVENT_BEAT_BLACKBELT_LUNG
	writetext JoseExplainBadgeText
	promptbutton
	verbosegiveitem TM_DYNAMICPUNCH
	iffalse .BagFull
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
	refreshscreen
	trainerpic JOSE
	writetext JoseExplainTMText
	waitbutton
	closetrainpic
	closetext
	end

.AlreadyGotTM:
	writetext JoseAfterText
	waitbutton
.BagFull:
	closetrainpic
	closetext
	end

CianwoodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerBlackbeltSkunk:
	trainer BLACKBELT_T, SKUNK, EVENT_BEAT_BLACKBELT_SKUNK, BlackbeltSkunkSeenText, BlackbeltSkunkBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	writetext BlackbeltSkunkAfterText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBlackbeltLao:
	trainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	writetext BlackbeltLaoAfterText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBlackbeltNob:
	trainer BLACKBELT_T, NOB, EVENT_BEAT_BLACKBELT_NOB, BlackbeltNobSeenText, BlackbeltNobBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	writetext BlackbeltNobAfterText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBlackbeltLung:
	trainer BLACKBELT_T, LUNG, EVENT_BEAT_BLACKBELT_LUNG, BlackbeltLungSeenText, BlackbeltLungBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	writetext BlackbeltLungAfterText
	waitbutton
	closetrainpic
	closetext
	end

CianwoodGymBoulder:
	jumpstd StrengthBoulderScript

CianwoodGymStatue:
	checkflag ENGINE_STORMBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JOSE, JOSE1
	jumpstd GymStatue2Script

CianwoodGymMovement_JoseJosesBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

JoseIntroText1:
	text "Pfft."

	para "Look at that sad"
	line "little team."

	para "Those ANIMALs do"
	line "notstand a chance."

	para "I'm JOSE."
	line "I will beat a"
	cont "kid, I don't care."

	para "Watch this."
	done

JoseIntroText2:
	text "JOSE: Urggh!"
	line "..."

	para "Oooarrgh!"
	done

JoseIntroText3:
	text "You scared?"
	line "Are you?"

	para "What?"
	line "Nothing?"

	para "Somebody call CPS"
	line "cuz this kid's"

	para "about to get a"
	line "beating."
	done

JoseLossText:
	text "Wha? Huh?"
	line "I lost?"

	para "I felt sorry."
	line "I guess you can"
	cont "have STORMBADGE."
	done

GetStormBadgeText:
	text "<PLAYER> received"
	line "STORMBADGE."
	done

JoseExplainBadgeText:
	text "STORMBADGE makes"
	line "all ANIMALs up to"

	para "L70 obey, even"
	line "traded ones."

	para "It also lets your"
	line "ANIMALs use FLY"

	para "when you're not in"
	line "a battle."

	para "Here, take this"
	line "too."
	done

JoseExplainTMText:
	text "That is DYNAMIC-"
	line "PUNCH."

	para "It doesn't always"
	line "hit, but when it"

	para "does, it causes"
	line "confusion, kind"
	para "of like how your"
	line "dad was confused"
	para "when you were born"
	line "because you looked"
	cont "like a monkey."
	done

JoseAfterText:
	text "Get outta here,"
	line "kid."

	para "You only won"
	line "because my ANIMALs"
	cont "have a cold."

	para "Go play in"
	line "traffic."
	done

BlackbeltSkunkSeenText:
	text "My ANIMALs and I"
	line "are bound togeth-"
	cont "er by friendship."

	para "Our bond will"
	line "never be broken!"
	done

BlackbeltSkunkBeatenText:
	text "This isn't real!"
	done

BlackbeltSkunkAfterText:
	text "You seem to have a"
	line "strong bond with"
	cont "your ANIMALs too!"
	done

BlackbeltLaoSeenText:
	text "We martial artists"
	line "fear nothing!"
	done

BlackbeltLaoBeatenText:
	text "That's shocking!"
	done

BlackbeltLaoAfterText:
	text "Fighting ANIMALs"
	line "are afraid of psy-"
	cont "chics..."
	done

BlackbeltNobSeenText:
	text "Words are useless."
	line "Let your fists do"
	cont "the talking!"
	done

BlackbeltNobBeatenText:
	text "..."
	done

BlackbeltNobAfterText:
	text "I lost! "
	line "I'm speechless!"
	done

BlackbeltLungSeenText:
	text "My raging fists"
	line "will shatter your"
	cont "ANIMALs!"
	done

BlackbeltLungBeatenText:
	text "I got shattered!"
	done

BlackbeltLungAfterText:
	text "My ANIMALs lost..."
	line "My... my pride is"
	cont "shattered..."
	done

CianwoodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CIANWOOD_CITY, 2
	warp_event  5, 17, CIANWOOD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CianwoodGymStatue
	bg_event  6, 15, BGEVENT_READ, CianwoodGymStatue

	def_object_events
	object_event  4,  1, SPRITE_JOSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodGymJoseScript, -1
	object_event  2, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltSkunk, -1
	object_event  7, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLao, -1
	object_event  3,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltNob, -1
	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLung, -1
	object_event  5,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  3,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  5,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
