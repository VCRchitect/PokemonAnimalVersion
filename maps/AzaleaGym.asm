	object_const_def
	const AZALEAGYM_BUGSY
	const AZALEAGYM_BUG_CATCHER1
	const AZALEAGYM_BUG_CATCHER2
	const AZALEAGYM_BUG_CATCHER3
	const AZALEAGYM_TWIN1
	const AZALEAGYM_TWIN2
	const AZALEAGYM_GYM_GUIDE

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUGSY
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetrainpic
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	readvar VAR_BADGES
	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	refreshscreen
	opentext
	trainerpic BUGSY
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	refreshscreen
	trainerpic BUGSY
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotFuryCutter:
	refreshscreen
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetrainpic
	closetext
	end

AzaleaGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerTwinsAmyandmay1:
	trainer TWINS, AMYANDMAY1, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay1SeenText, TwinsAmyandmay1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic TWINS
	writetext TwinsAmyandmay1AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerTwinsAmyandmay2:
	trainer TWINS, AMYANDMAY2, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay2SeenText, TwinsAmyandmay2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic TWINS
	writetext TwinsAmyandmay2AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BUG_CATCHER_BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

AzaleaGymGuideScript:
	faceplayer
	refreshscreen
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	trainerpic GUIDE
	writetext AzaleaGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.AzaleaGymGuideWinScript:
	refreshscreen
	opentext
	trainerpic GUIDE
	writetext AzaleaGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

AzaleaGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue2Script

BugsyText_INeverLose:
	text "I'm BUGSY!"
	line "I never lose when"

	para "it comes to bug"
	line "ANIMALs."

	para "I only lose at the"
	line "game of life."

	para "But enough about"
	line "my depression!"

	para "Let me demonstrate"
	line "what I've learned"
	cont "from my studies."
	done

BugsyText_ResearchIncomplete:
	text "Whoa!"
	line "I didn't expect to"
	cont "win, but damn."

	para "OK, you win. Take"
	line "this BADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	text "Do you know the"
	line "benefits of HIVE-"
	cont "BADGE?"

	para "It's a badge."
	line "It's a hive."

	para "It's a HIVEBADGE!"

	para "Here, I also want"
	line "you to have this."
	done

BugsyText_FuryCutterSpeech:
	text "TM49 contains"
	line "FURY CUTTER."

	para "If you don't miss,"
	line "it gets stronger"
	cont "every turn."

	para "The longer your"
	line "battle goes, the"
	cont "better it gets."

	para "Unlike all of my"
	line "relationships."
	done

BugsyText_BugMonsAreDeep:
	text "Bug ANIMALs are"
	line "deep. There are"

	para "many mysteries to"
	line "be explored."

	para "Some taste like a"
	line "bug and others,"
	cont "insects. Weird!"
	done

BugCatcherBennySeenText:
	text "Bug ANIMALs evolve"
	line "young. So they get"

	para "stronger that much"
	line "faster."
	
	para "My dad says I'm a"
	line "strong boy cuz my"
	cont "mommy was a teen."
	done

BugCatcherBennyBeatenText:
	text "Maybe dad doesn't"
	line "know anything?"
	done

BugCatcherBennyAfterBattleText:
	text "ANIMALs become"
	line "stronger if they"
	cont "evolve. Really!"
	done

BugCatcherAlSeenText:
	text "Bug ANIMALs are"
	line "cool and tough!"

	para "Even if they made"
	line "me eat worms at"
	cont "school!"
	done

BugCatcherAlBeatenText:
	text "Maybe I do deserve"
	line "all the bullying?"
	done

BugCatcherAlAfterBattleText:
	text "They're so cool,"
	line "but most girls"

	para "don't like bug"
	line "ANIMALs."

	para "I don't know why."
	para "Maybe 'cuz they"
	line "don't wear makeup?"
	done

BugCatcherJoshSeenText:
	text "You saved all the"
	line "BEAVERs?"
	para "What the hell for?"
	done

BugCatcherJoshBeatenText:
	text "Urrgggh!"
	done

BugCatcherJoshAfterBattleText:
	text "Sorry, I don't"
	line "know what that"
	cont "noise was..."
	done

TwinsAmyandmay1SeenText:
	text "AMY: Hi! Are you"
	line "challenging the"
	cont "LEADER?"
	
	para "But his life is a"
	line "challenge already?"
	done

TwinsAmyandmay1BeatenText:
	text "AMY & MAY: Oh,"
	line "double goodness!"
	done

TwinsAmyandmay1AfterBattleText:
	text "AMY: You're"
	line "really strong!"
	
	para "My pawpaw'd say"
	line "you're stronger"
	para "than a garlic"
	line "milkshake!"
	done

TwinsAmyandmay2SeenText:
	text "MAY: You want to"
	line "see the LEADER?"
	cont "Good luck!"
	done

TwinsAmyandmay2BeatenText:
	text "AMY & MAY: Oh,"
	line "double goodness!"
	done

TwinsAmyandmay2AfterBattleText:
	text "MAY: Our bugs"
	line "lost! BUGSY was"
	para "right. He's bad at"
	line "teaching."
	done

AzaleaGymGuideText:
	text "Yo, challenger!"

	para "BUGSY's young, but"
	line "his knowledge of"

	para "bug ANIMALs is for"
	line "real. That's what"

	para "happens when you"
	line "are a big nerd for"
	cont "bugs."

	para "Let's see... Bug"
	line "ANIMALs don't like"
	cont "fire."

	para "Flying-type moves"
	line "are super-effec-"
	cont "tive too."
	done

AzaleaGymGuideWinText:
	text "Well done! That"
	line "was a great clash"

	para "and only seemed a"
	line "little one-sided!"
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherBenny, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAl, -1
	object_event  0,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJosh, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay2, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
