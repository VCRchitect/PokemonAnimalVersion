	object_const_def
	const BLACKTHORNGYM1F_PEELY
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUIDE

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Boulders

.Boulders:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	endcallback

BlackthornGymPeelyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PEELY
	checkflag ENGINE_RISINGBADGE
	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_PEELY
	iftrue .FightDone
	writetext PeelyIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext PeelyWinText, 0
	loadtrainer PEELY, PEELY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PEELY
	refreshscreen
	opentext
	trainerpic PEELY
	writetext PeelyText_GoToDragonsDen
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_OWNERS
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end

.FightDone:
	writetext PeelyText_TooMuchToExpect
	waitbutton
	closetrainpic
	closetext
	end

.AlreadyGotBadge:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext BlackthornGymPeelyText_YouKeptMeWaiting
	promptbutton
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext BlackthornGymText_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext BlackthornGymPeelyText_DescribeTM24
	promptbutton
	sjump .GotTM24

.BagFull:
	writetext BlackthornGymPeelyText_BagFull
	waitbutton
	closetrainpic
	closetext
	end

.GotTM24:
	writetext BlackthornGymPeelyText_League
	waitbutton
	closetrainpic
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

BlackthornGymGuideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUIDE
	checkevent EVENT_BEAT_PEELY
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.BlackthornGymGuideWinScript:
	trainerpic GUIDE
	writetext BlackthornGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, PEELY, PEELY1
	jumpstd GymStatue2Script

PeelyIntroText:
	text "I am PEELY."

	para "Let's fight."
	line "Or else this talk"
	
	para "will start DRAGON"
	line "me down. haha"
	
	para "I kid. I kid."
	done

PeelyWinText:
	text "I lost?"

	para "Huh. Maybe I'll"
	line "spend less time on"
	cont "puns now."
	done

PeelyText_GoToDragonsDen:
	text "Nah, we need to"
	line "pad this out a bit"
	
	para "so how about you"
	line "go to Dragons Den"
	cont "and wander around."
	done

PeelyText_TooMuchToExpect:
	text "What's the matter?"

	para "Mad that you're"
	line "getting more time"
	cont "to play the game?"
	done

BlackthornGymPeelyText_YouKeptMeWaiting:
	text "You've kept me"
	line "waiting!"

	para "Here! Take this!"
	done

BlackthornGymText_ReceivedTM24:
	text "<PLAYER> received"
	line "TM24 DRAGONBREATH."
	done

BlackthornGymPeelyText_DescribeTM24:
	text "That contains"
	line "DRAGONBREATH."

	para "No, it doesn't"
	line "have anything to"
	cont "do with my breath."
	
	para "But my breath was"
	line "spicy earlier."
	done

BlackthornGymPeelyText_BagFull:
	text "What is this? You"
	line "don't have room?"
	done

BlackthornGymPeelyText_League:
	text "What's the matter?"

	para "Go to"
	line "NEW BARK TOWN."

	para "Then SURF east."
	line "The route there is"
	cont "very tough."

	para "Tough like some"
	line "DRAGON JERKY."
	done

CooltrainermPaulSeenText:
	text "Your first battle"
	line "against dragons?"

	para "That's no surprise"
	line "as they're a late"
	cont "game thing."
	done

CooltrainermPaulBeatenText:
	text "Welp, that went"
	line "kinda poorly."
	done

CooltrainermPaulAfterBattleText:
	text "LANCE told you"
	line "that he'd like to"

	para "see you again?"
	line "Not a chance!"
	
	para "He won't wear his"
	line "glasses!"
	done

CooltrainermMikeSeenText:
	text "My chance of"
	line "losing? It's more"
	cont "than likely."
	done

CooltrainermMikeBeatenText:
	text "Never hopeful,"
	line "never disappointed"
	cont "is my motto."
	done

CooltrainermMikeAfterBattleText:
	text "Now that I know"
	line "odds, time to hit"
	cont "the casino!"
	done

CooltrainerfLolaSeenText:
	text "This day is just"
	line "DRAGON by. haha"
	cont "We have fun here."
	done

CooltrainerfLolaBeatenText:
	text "Way to go!"
	done

CooltrainerfLolaAfterBattleText:
	text "Dragons sure do"
	line "hate our puns."
	done

BlackthornGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "It's been a long"
	line "journey, but we"

	para "are almost done!"
	line "Count on me!"

	para "Dragons are said"

	para "to be weak against"
	line "ice-type moves and"
	
	cont "other DRAGONs."
	done

BlackthornGymGuideWinText:
	text "You were great to"
	line "beat PEELY!"

	para "All that's left is"
	line "the ANIMAL LEAGUE"
	cont "challenge."

	para "You're on the way"
	line "to becoming the"
	cont "ANIMAL CHAMPION!"
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PEELY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymPeelyScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMike, -1
	object_event  1, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
