	object_const_def
	const VIOLETGYM_BIG_BIRD
	const VIOLETGYM_YOUNGSTER1
	const VIOLETGYM_YOUNGSTER2
	const VIOLETGYM_GYM_GUIDE

VioletGym_MapScripts:
	def_scene_scripts

	def_callbacks

VioletGymBig_BirdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BIG_BIRD
	checkevent EVENT_BEAT_BIG_BIRD
	iftrue .FightDone
	writetext Big_BirdIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext Big_BirdWinLossText, 0
	loadtrainer BIG_BIRD, BIG_BIRD1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIG_BIRD
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
	scall VioletGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BIRD_KEEPER_ROD
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
	setmapscene ELMS_LAB, SCENE_ELMSLAB_NOTHING
	specialphonecall SPECIALCALL_ASSISTANT
	refreshscreen
	trainerpic BIG_BIRD
	writetext Big_BirdZephyrBadgeText
	promptbutton
	closetrainpic
	verbosegiveitem TM_MUD_SLAP
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	refreshscreen
	trainerpic BIG_BIRD
	writetext Big_BirdTMMudSlapText
	waitbutton
	closetrainpic
	closetext
	end

.SpeechAfterTM:
	writetext Big_BirdFightDoneText
	waitbutton
.NoRoomForMudSlap:
	closetext
	end

VioletGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerBirdKeeperRod:
	trainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BIRD_KEEPER
	writetext BirdKeeperRodAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBirdKeeperAbe:
	trainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BIRD_KEEPER
	writetext BirdKeeperAbeAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

VioletGymGuideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUIDE
	checkevent EVENT_BEAT_BIG_BIRD
	iftrue .VioletGymGuideWinScript
	writetext VioletGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.VioletGymGuideWinScript:
	writetext VioletGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

VioletGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BIG_BIRD, BIG_BIRD1
	jumpstd GymStatue2Script

Big_BirdIntroText:
	text "I'm BIG BIRD, the"
	line "VIOLET ANIMAL GYM"
	cont "leader!"

	para "People say you can"
	line "clip flying-type"

	para "ANIMALs' wings"
	line "with a jolt of"
	cont "electricity..."

	para "I won't allow such"
	line "insults to bird"
	cont "ANIMALs!"

	para "I'll show you the"
	line "real power of the"

	para "magnificent bird"
	line "ANIMAL!"
	done

Big_BirdWinLossText:
	text "I never should've"
	line "left Sesame Street"
	cont "to be a leader..."

	para "All right."
	line "Take this."

	para "It's the official"
	line "ANIMAL LEAGUE"
	cont "ZEPHYRBADGE."
	done

ReceivedZephyrBadgeText:
	text "<PLAYER> received"
	line "ZEPHYRBADGE."
	done

Big_BirdZephyrBadgeText:
	text "ZEPHYRBADGE"
	line "raises the attack"
	cont "power of ANIMALs."

	para "It also enables"
	line "ANIMALs to use"

	para "FLASH, if they"
	line "have it, anytime."

	para "Here--take this"
	line "too."
	done

Big_BirdTMMudSlapText:
	text "By using a TM, an"
	line "ANIMAL will"

	para "instantly learn a"
	line "new move."

	para "TM31 contains"
	line "MUD-SLAP."

	para "It reduces the"
	line "enemy's accuracy"

	para "while it causes"
	line "damage."

	para "In other words, it"
	line "is both defensive"
	cont "and offensive."
	done

Big_BirdFightDoneText:
	text "There are ANIMAL"
	line "GYMS in cities and"
	cont "towns ahead."

	para "You should test"
	line "your skills at"
	cont "these GYMS."

	para "I'm going to train"
	line "harder to become"

	para "the greatest bird"
	line "master!"
	done

BirdKeeperRodSeenText:
	text "The keyword is"
	line "gust, a common"
	cont "flying-type move!"

	para "Those here are"
	line "training night and"

	para "day to become bird"
	line "ANIMAL masters."

	para "Come on!"
	done

BirdKeeperRodBeatenText:
	text "Boooo!"
	done

BirdKeeperRodAfterBattleText:
	text "BIG BIRD's skills"
	line "are for real!"

	para "Don't get cocky"
	line "just because you"
	cont "beat me!"
	done

BirdKeeperAbeSeenText:
	text "Let me see if you"
	line "are good enough to"
	cont "face BIG BIRD!"
	done

BirdKeeperAbeBeatenText:
	text "This can't be"
	line "true!"
	done

BirdKeeperAbeAfterBattleText:
	text "This is pathetic,"
	line "losing to some"
	cont "rookie trainer..."
	done

VioletGymGuideText:
	text "Hey! I'm no train-"
	line "er but I can give"
	cont "some advice!"

	para "Believe me!"
	line "If you believe, a"

	para "championship dream"
	line "can come true."

	para "You believe?"
	line "Then listen."

	para "The grass-type is"
	line "weak against the"

	para "flying-type. Keep"
	line "this in mind."
	done

VioletGymGuideWinText:
	text "Nice battle! Keep"
	line "it up, and you'll"

	para "be the CHAMP in no"
	line "time at all!"
	done

VioletGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, VioletGymStatue
	bg_event  6, 13, BGEVENT_READ, VioletGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BIG_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymBig_BirdScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRod, -1
	object_event  2, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperAbe, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuideScript, -1
