	object_const_def
	const GOLDENRODGYM_LARA
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_GOLDENRODGYM_NOTHING
	scene_script .DummyScene1 ; SCENE_GOLDENRODGYM_LARA_STOPS_CRYING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

GoldenrodGymLaraScript:
	faceplayer
	refreshscreen
	checkevent EVENT_BEAT_LARA
	iftrue .FightDone
	opentext
	trainerpic LARA
	writetext LaraBeforeText
	waitbutton
	closetrainpic
	closetext
	winlosstext LaraShouldntBeSoSeriousText, 0
	loadtrainer LARA, LARA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LARA
	setevent EVENT_MADE_LARA_CRY
	setscene SCENE_GOLDENRODGYM_LARA_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	refreshscreen
	opentext
	trainerpic LARA
	checkevent EVENT_MADE_LARA_CRY
	iffalse .StoppedCrying
	writetext LaraYouMeanieText
	waitbutton
	closetrainpic
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext LaraWhatDoYouWantText
	promptbutton
	closetrainpic
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	refreshscreen
	trainerpic LARA
	writetext LaraPlainBadgeText
	promptbutton
	closetrainpic
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	refreshscreen
	trainerpic LARA
	writetext LaraAttractText
	waitbutton
	closetrainpic
	closetext
	end

.GotAttract:
	trainerpic LARA
	writetext LaraGoodCryText
	waitbutton
.NoRoomForAttract:
	closetrainpic
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic LASS
	writetext LassCarrieAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

LaraCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	refreshscreen
	opentext
	trainerpic LASS
	writetext BridgetLaraCriesText
	waitbutton
	closetrainpic
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOTHING
	clearevent EVENT_MADE_LARA_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic LASS
	writetext LassBridgetAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

GoldenrodGymGuideScript:
	faceplayer
	refreshscreen
	checkevent EVENT_BEAT_LARA
	iftrue .GoldenrodGymGuideWinScript
	opentext
	trainerpic GUIDE
	writetext GoldenrodGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	trainerpic GUIDE
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, LARA, LARA1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

LaraBeforeText:
	text "Hi! I'm LARA!"

	para "Everyone was into"
	line "ANIMALs, so I got"
	cont "into it too!"

	para "ANIMALs are"
	line "super-cute!"

	para "You want to bat-"
	line "tle? I'm warning"
	cont "you--I'm good!"
	
	para "Like, I have an"
	line "insane kill rate."
	
	done

LaraShouldntBeSoSeriousText:
	text "Sob..."

	para "...Waaaaaaah!"
	line "You're mean!"

	para "You shouldn't be"
	line "so serious! You..."
	cont "you child, you!"
	
	para "I'll hit you with"
	line "a brick!"
	done

LaraYouMeanieText:
	text "Waaaaah!"

	para "Waaaaah!"

	para "...Snivel, hic..."
	line "...You meanie!"
	
	para "You... you..."
	line "bitch ass ho!"
	done

LaraWhatDoYouWantText:
	text "...Sniff..."

	para "What? What do you"
	line "want? A BADGE?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "PLAINBADGE."
	done

LaraPlainBadgeText:
	text "PLAINBADGE lets"
	line "your ANIMALs use"

	para "STRENGTH outside"
	line "of battle."

	para "It also boosts"
	line "your ANIMAL's"
	cont "SPEED."

	para "Oh, you can have"
	line "this too!"
	done

LaraAttractText:
	text "It's ATTRACT!"
	line "It makes full use"

	para "of a ANIMAL's"
	line "charm."

	para "Isn't it just per-"
	line "fect for a cutie"
	cont "like me?"
	
	para "It's okay. I said"
	line "it first. It's not"
	
	para "weird if you"
	line "agree with me."
	done

LaraGoodCryText:
	text "Ah, that was a"
	line "good cry!"

	para "Come for a visit"
	line "again! Bye-bye!"
	done

LassCarrieSeenText:
	text "Don't let my"
	line "ANIMAL's cute"

	para "looks fool you."
	line "They can whip you!"
	
	para "Gonna beat some"
	line "ass!"
	done

LassCarrieBeatenText:
	text "Darn... I thought"
	line "you were weak,"
	cont "like your jawline."
	done

LassCarrieAfterBattleText:
	text "Do my ANIMALs"
	line "think I'm cute?"
	done

LassBridgetSeenText:
	text "I like a cute"
	line "ANIMAL better than"
	cont "strong ANIMAL."

	para "But I have strong"
	line "and cute ANIMALs!"
	done

LassBridgetBeatenText:
	text "Oh, no, no, no!"
	done

LassBridgetAfterBattleText:
	text "I'm trying to beat"
	line "LARA, but..."
	cont "It's depressing."

	para "I'm okay! If I"
	line "lose, I'll just"

	para "try harder next"
	line "time!"
	done

BridgetLaraCriesText:
	text "Oh, no. You made"
	line "LARA cry."

	para "It's OK. She'll"
	line "stop soon. She"

	para "always cries when"
	line "she loses."
	
	para "I know I cry when"
	line "my life collapses."
	done

BeautyVictoriaSeenText:
	text "Oh, you are a cute"
	line "little trainer! "

	para "I like you, but I"
	line "won't hold back!"
	done

BeautyVictoriaBeatenText:
	text "Let's see... Oops,"
	line "it's over?"
	done

BeautyVictoriaAfterBattleText:
	text "Wow, you must be"
	line "good to beat me!"
	cont "Keep it up!"
	done

BeautySamanthaSeenText:
	text "Give it your best"
	line "shot, or I'll take"
	cont "you down!"
	done

BeautySamanthaBeatenText:
	text "No! Oh, CAT,"
	line "I'm so sorry!"
	done

BeautySamanthaAfterBattleText:
	text "I taught CAT"
	line "moves for taking"
	cont "on any type..."
	done

GoldenrodGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "This GYM is home"
	line "to normal-type"
	cont "ANIMAL trainers."

	para "I recommend you"
	line "use fighting-type"
	cont "ANIMALs."
	done

GoldenrodGymGuideWinText:
	text "You won? Great! I"
	line "was busy admiring"
	cont "the ladies here."
	
	para "Fully aware that"
	line "seems creepier"
	
	para "than I meant for"
	line "it to sound."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_LARA_STOPS_CRYING, LaraCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_LARA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymLaraScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
