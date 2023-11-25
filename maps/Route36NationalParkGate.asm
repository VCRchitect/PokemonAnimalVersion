	object_const_def
	const ROUTE36NATIONALPARKGATE_OFFICER1
	const ROUTE36NATIONALPARKGATE_YOUNGSTER1
	const ROUTE36NATIONALPARKGATE_YOUNGSTER2
	const ROUTE36NATIONALPARKGATE_ROCKER
	const ROUTE36NATIONALPARKGATE_POKEFAN_M
	const ROUTE36NATIONALPARKGATE_YOUNGSTER3
	const ROUTE36NATIONALPARKGATE_YOUNGSTER4
	const ROUTE36NATIONALPARKGATE_LASS
	const ROUTE36NATIONALPARKGATE_YOUNGSTER5
	const ROUTE36NATIONALPARKGATE_YOUNGSTER6
	const ROUTE36NATIONALPARKGATE_YOUNGSTER7
	const ROUTE36NATIONALPARKGATE_OFFICER2

Route36NationalParkGate_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_ROUTE36NATIONALPARKGATE_NOTHING
	scene_script .DummyScene1 ; SCENE_ROUTE36NATIONALPARKGATE_UNUSED
	scene_script .LeaveContestEarly ; SCENE_ROUTE36NATIONALPARKGATE_LEAVE_CONTEST_EARLY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CheckIfContestRunning
	callback MAPCALLBACK_OBJECTS, .CheckIfContestAvailable

.DummyScene0:
	end

.DummyScene1:
	end

.LeaveContestEarly:
	sdefer .LeavingContestEarly
	end

.CheckIfContestRunning:
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue .BugContestIsRunning
	setscene SCENE_ROUTE36NATIONALPARKGATE_NOTHING
	endcallback

.BugContestIsRunning:
	setscene SCENE_ROUTE36NATIONALPARKGATE_LEAVE_CONTEST_EARLY
	endcallback

.CheckIfContestAvailable:
	checkevent EVENT_WARPED_FROM_ROUTE_35_NATIONAL_PARK_GATE
	iftrue .Return
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .SetContestOfficer
	ifequal THURSDAY, .SetContestOfficer
	ifequal SATURDAY, .SetContestOfficer
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue .SetContestOfficer
	disappear ROUTE36NATIONALPARKGATE_OFFICER1
	appear ROUTE36NATIONALPARKGATE_OFFICER2
	endcallback

.SetContestOfficer:
	appear ROUTE36NATIONALPARKGATE_OFFICER1
	disappear ROUTE36NATIONALPARKGATE_OFFICER2
.Return:
	endcallback

.LeavingContestEarly:
	turnobject PLAYER, UP
	refreshscreen
	opentext
	trainerpic OFFICER
	readvar VAR_CONTESTMINUTES
	addval 1
	getnum STRING_BUFFER_3
	writetext Route36NationalParkGateOfficer1WantToFinishText
	yesorno
	iffalse .GoBackToContest
	writetext Route36NationalParkGateOfficer1WaitHereForAnnouncementText
	waitbutton
	closetrainpic
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	scall .CopyContestants
	disappear ROUTE36NATIONALPARKGATE_OFFICER1
	appear ROUTE36NATIONALPARKGATE_OFFICER2
	applymovement PLAYER, Route36NationalParkGatePlayerWaitWithContestantsMovement
	pause 15
	special FadeInQuickly
	jumpstd BugContestResultsScript

.GoBackToContest:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1OkGoFinishText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYER, LEFT
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	warpfacing LEFT, NATIONAL_PARK_BUG_CONTEST, 33, 18
	end

.CopyContestants:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_1A
	iftrue .Not1
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER1
.Not1:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_2A
	iftrue .Not2
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER2
.Not2:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_3A
	iftrue .Not3
	appear ROUTE36NATIONALPARKGATE_ROCKER
.Not3:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_4A
	iftrue .Not4
	appear ROUTE36NATIONALPARKGATE_POKEFAN_M
.Not4:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_5A
	iftrue .Not5
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER3
.Not5:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_6A
	iftrue .Not6
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER4
.Not6:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_7A
	iftrue .Not7
	appear ROUTE36NATIONALPARKGATE_LASS
.Not7:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_8A
	iftrue .Not8
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER5
.Not8:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_9A
	iftrue .Not9
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER6
.Not9:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_10A
	iftrue .Not10
	appear ROUTE36NATIONALPARKGATE_YOUNGSTER7
.Not10:
	special UpdateSprites
	end

Route36OfficerScriptContest:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, _ContestNotOn
	ifequal MONDAY, _ContestNotOn
	ifequal WEDNESDAY, _ContestNotOn
	ifequal FRIDAY, _ContestNotOn
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue Route36Officer_ContestHasConcluded
	scall Route36ParkGate_DayToText
	writetext Route36NationalParkGateOfficer1AskToParticipateText
	yesorno
	iffalse .DecidedNotToJoinContest
	readvar VAR_PARTYCOUNT
	ifgreater 1, .LeaveMonsWithOfficer
	special ContestDropOffMons
	clearevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
.ResumeStartingContest:
	setflag ENGINE_BUG_CONTEST_TIMER
	special PlayMapMusic
	writetext Route36NationalParkGateOfficer1GiveParkBallsText
	promptbutton
	closetrainpic
	waitsfx
	writetext Route36NationalParkGatePlayerReceivedParkBallsText
	playsound SFX_ITEM
	waitsfx
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1ExplainsRulesText
	waitbutton
	closetrainpic
	closetext
	setflag ENGINE_BUG_CONTEST_TIMER
	special GiveParkBalls
	turnobject PLAYER, LEFT
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	special SelectRandomBugContestContestants
	warpfacing LEFT, NATIONAL_PARK_BUG_CONTEST, 33, 18
	end

.LeaveMonsWithOfficer:
	readvar VAR_PARTYCOUNT
	ifless PARTY_LENGTH, .ContinueLeavingMons
	readvar VAR_BOXSPACE
	ifequal 0, .BoxFull
.ContinueLeavingMons:
	special CheckFirstMonIsEgg
	ifequal TRUE, .FirstMonIsEgg
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1AskToUseFirstMonText
	yesorno
	iffalse .RefusedToLeaveMons
	special ContestDropOffMons
	iftrue .FirstMonIsFainted
	setevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
	writetext Route36NationalParkGateOfficer1WellHoldYourMonText
	promptbutton
	closetrainpic
	writetext Route36NationalParkGatePlayersMonLeftWithHelperText
	playsound SFX_GOT_SAFARI_BALLS
	waitsfx
	promptbutton
	sjump .ResumeStartingContest

.DecidedNotToJoinContest:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1TakePartInFutureText
	waitbutton
	closetrainpic
	closetext
	end

.RefusedToLeaveMons:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1ChooseMonAndComeBackText
	waitbutton
	closetrainpic
	closetext
	end

.FirstMonIsFainted:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1FirstMonCantBattleText
	waitbutton
	closetrainpic
	closetext
	end

.BoxFull:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1MakeRoomText
	waitbutton
	closetrainpic
	closetext
	end

.FirstMonIsEgg:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1EggAsFirstMonText
	waitbutton
	closetrainpic
	closetext
	end

Route36Officer_ContestHasConcluded:
	checkevent EVENT_CONTEST_OFFICER_HAS_SUN_STONE
	iftrue .Sunstone
	checkevent EVENT_CONTEST_OFFICER_HAS_EVERSTONE
	iftrue .Everstone
	checkevent EVENT_CONTEST_OFFICER_HAS_GOLD_BERRY
	iftrue .GoldBerry
	checkevent EVENT_CONTEST_OFFICER_HAS_BERRY
	iftrue .Berry
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1ContestIsOverText
	waitbutton
	closetrainpic
	closetext
	end

.Sunstone:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1HeresThePrizeText
	promptbutton
	closetrainpic
	verbosegiveitem SUN_STONE
	iffalse .BagFull
	clearevent EVENT_CONTEST_OFFICER_HAS_SUN_STONE
	closetext	
	end

.Everstone:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1HeresThePrizeText
	promptbutton
	closetrainpic
	verbosegiveitem EVERSTONE
	iffalse .BagFull
	clearevent EVENT_CONTEST_OFFICER_HAS_EVERSTONE
	closetext
	end

.GoldBerry:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1HeresThePrizeText
	promptbutton
	closetrainpic
	verbosegiveitem GOLD_BERRY
	iffalse .BagFull
	clearevent EVENT_CONTEST_OFFICER_HAS_GOLD_BERRY
	closetext
	end

.Berry:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1HeresThePrizeText
	promptbutton
	closetrainpic
	verbosegiveitem BERRY
	iffalse .BagFull
	clearevent EVENT_CONTEST_OFFICER_HAS_BERRY
	closetext
	end

.BagFull:
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1WellHoldPrizeText
	waitbutton
	closetrainpic
	closetext
	end

_ContestNotOn:
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	writetext Route36NationalParkGateOfficer1SomeMonOnlySeenInParkText
	waitbutton
	closetrainpic
	closetext
	end
	
Route36NationalParkGateOfficerScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue Route36Officer_ContestHasConcluded
	writetext Route36NationalParkGateOfficer1SomeMonOnlySeenInParkText
	waitbutton
	closetrainpic
	closetext
	end

Route36ParkGate_DayToText:
	jumpstd DayToTextScript
	end

BugCatchingContestant1BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant1BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant1BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant2BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant2BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant2BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant3BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant3BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant3BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant4BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant4BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant4BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant5BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant5BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant5BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant6BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant6BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant6BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant7BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant7BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant7BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant8BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant8BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant8BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant9BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant9BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant9BStillCompetingText
	waitbutton
	closetext
	end

BugCatchingContestant10BScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .StillCompeting
	writetext BugCatchingContestant10BText
	waitbutton
	closetext
	end

.StillCompeting:
	writetext BugCatchingContestant10BStillCompetingText
	waitbutton
	closetext
	end

UnusedBugCatchingContestExplanationSign: ; unreferenced
; duplicate of BugCatchingContestExplanationSign in Route35NationalParkGate.asm
	jumptext UnusedBugCatchingContestExplanationText

Route36NationalParkGatePlayerWaitWithContestantsMovement:
	big_step DOWN
	big_step RIGHT
	turn_head UP
	step_end

Route36NationalParkGateOfficer1AskToParticipateText:
	text "Today's @"
	text_ram wStringBuffer3
	text "."
	line "That means the"

	para "Bug-Catching Con-"
	line "test is on today."

	para "The rules are sim-"
	line "ple."

	para "Using one of your"
	line "ANIMALs, catch a"

	para "bug ANIMAL to be"
	line "judged."

	para "Would you like to"
	line "give it a try?"
	done

Route36NationalParkGateOfficer1GiveParkBallsText:
	text "Here are the PARK"
	line "BALLS for the"
	cont "Contest."
	done

Route36NationalParkGatePlayerReceivedParkBallsText:
	text "<PLAYER> received"
	line "{d:BUG_CONTEST_BALLS} PARK BALLS."
	done

Route36NationalParkGateOfficer1ExplainsRulesText:
	text "The person who"
	line "gets the strong-"
	cont "est bug ANIMAL"
	cont "is the winner."

	para "You have {d:BUG_CONTEST_MINUTES}"
	line "minutes."

	para "If you run out of"
	line "PARK BALLS, you're"
	cont "done."

	para "You can keep the"
	line "last ANIMAL you"
	cont "catch as your own."

	para "Go out and catch"
	line "the strongest bug"

	para "ANIMAL you can"
	line "find!"
	done

Route36NationalParkGateOfficer1AskToUseFirstMonText:
	text "Uh-oh..."

	para "You have more than"
	line "one ANIMAL."

	para "You'll have to use"
	line "@"
	text_ram wStringBuffer3
	text ", the"

	para "first ANIMAL in"
	line "your party."

	para "Is that OK with"
	line "you?"
	done

Route36NationalParkGateOfficer1WellHoldYourMonText:
	text "Fine, we'll hold"
	line "your other ANIMAL"
	cont "while you compete."
	done

Route36NationalParkGatePlayersMonLeftWithHelperText:
	text "<PLAYER>'s ANIMALs"
	line "were left with the"
	cont "CONTEST HELPER."
	done

Route36NationalParkGateOfficer1ChooseMonAndComeBackText:
	text "Please choose the"
	line "ANIMAL to be used"

	para "in the Contest,"
	line "then come see me."
	done

Route36NationalParkGateOfficer1TakePartInFutureText:
	text "OK. We hope you'll"
	line "take part in the"
	cont "future."
	done

Route36NationalParkGateOfficer1FirstMonCantBattleText:
	text "Uh-oh..."
	line "The first ANIMAL"

	para "in your party"
	line "can't battle."

	para "Please switch it"
	line "with the ANIMAL"

	para "you want to use,"
	line "then come see me."
	done

Route36NationalParkGateOfficer1MakeRoomText:
	text "Uh-oh..."
	line "Both your party"

	para "and your PC BOX"
	line "are full."

	para "You have no room"
	line "to put the bug"
	cont "ANIMAL you catch."

	para "Please make room"
	line "in your party or"

	para "your PC BOX, then"
	line "come see me."
	done

Route36NationalParkGateOfficer1EggAsFirstMonText:
	text "Uh-oh..."
	line "You have an EGG as"

	para "the first ANIMAL"
	line "in your party."

	para "Please switch it"
	line "with the ANIMAL"

	para "you want to use,"
	line "then come see me."
	done

Route36NationalParkGateOfficer1WantToFinishText:
	text "You still have @"
	text_ram wStringBuffer3
	text_start
	line "minute(s) left."

	para "Do you want to"
	line "finish now?"
	done

Route36NationalParkGateOfficer1WaitHereForAnnouncementText:
	text "OK. Please wait"
	line "here for the"

	para "announcement of"
	line "the winners."
	done

Route36NationalParkGateOfficer1OkGoFinishText:
	text "OK. Please go back"
	line "outside and finish"
	cont "up."
	done

Route36NationalParkGateOfficer1ContestIsOverText:
	text "Today's Contest is"
	line "over. We hope you"

	para "will participate"
	line "in the future."
	done

Route36NationalParkGateOfficer1SomeMonOnlySeenInParkText:
	text "Some ANIMALs can"
	line "only be seen in"
	cont "the PARK."
	done

BugCatchingContestant1BText:
	text "DON: Wow, you beat"
	line "me. You're pretty"
	cont "good."
	done

BugCatchingContestant1BStillCompetingText:
	text "DON: Luck plays a"
	line "big part in this."

	para "You never know"
	line "what ANIMALs will"
	cont "appear."
	done

BugCatchingContestant2BText:
	text "ED: I envy you."
	line "I just couldn't"
	cont "do it this time."
	done

BugCatchingContestant2BStillCompetingText:
	text "ED: Maybe you win"
	line "with big ANIMALs?"
	done

BugCatchingContestant3BText:
	text "NICK: Well done!"
	line "I'm going to raise"
	cont "my ANIMALs better."
	done

BugCatchingContestant3BStillCompetingText:
	text "NICK: Maybe you"
	line "get a higher score"

	para "for an ANIMAL of"
	line "an unusual color."
	done

BugCatchingContestant4BText:
	text "WILLIAM: You're"
	line "the winner? What"
	cont "did you catch?"
	done

BugCatchingContestant4BStillCompetingText:
	text "WILLIAM: Well, I'm"
	line "satisfied because"

	para "I caught an ANIMAL"
	line "that I wanted."
	done

BugCatchingContestant5BText:
	text "BENNY: Congrats!"
	line "You have earned my"
	cont "respect!"
	done

BugCatchingContestant5BStillCompetingText:
	text "BENNY: I caught a"
	line "MANTIS before,"
	cont "but I didn't win."
	done

BugCatchingContestant6BText:
	text "BARRY: That BUG"
	line "ANIMAL you caught,"
	cont "it's awesome!"
	done

BugCatchingContestant6BStillCompetingText:
	text "BARRY: It's easier"
	line "to win if you get"

	para "a high-level bug"
	line "ANIMAL."

	para "But I think they"
	line "also consider some"
	cont "other points."
	done

BugCatchingContestant7BText:
	text "CINDY: You won?"
	line "That's great!"

	para "Do you feel like"
	line "looking for bug"
	cont "ANIMALs with me?"
	done

BugCatchingContestant7BStillCompetingText:
	text "CINDY: I really"
	line "love bug ANIMALs!"
	done

BugCatchingContestant8BText:
	text "JOSH: I... I can't"
	line "believe I lost at"
	cont "bug-catching..."
	done

BugCatchingContestant8BStillCompetingText:
	text "JOSH: I heard that"
	line "somebody won with"
	cont "a CATERPILLA!"
	done

BugCatchingContestant9BText:
	text "SAMUEL: Next time,"
	line "I'm going to win."
	done

BugCatchingContestant9BStillCompetingText:
	text "SAMUEL: Darn."
	line "I thought I would"
	cont "score higher..."
	done

BugCatchingContestant10BText:
	text "KIPP: Could you"
	line "give me some tips?"

	para "I want to study"
	line "your style."
	done

BugCatchingContestant10BStillCompetingText:
	text "KIPP: I study a"
	line "lot, but that's"

	para "not good enough to"
	line "win."
	done

UnusedSilphScope2Text: ; unreferenced
; This text is referring to Fake_Bush.
; The SILPHSCOPE2 was later reworked into the SQUIRTBOTTLE.
	text "I hear there's a"
	line "ANML that looks"
	cont "just like a tree."

	para "You can reveal its"
	line "identity using a"
	cont "SILPHSCOPE 2."
	done

UnusedBugCatchingContestExplanationText:
; duplicate of BugCatchingContestExplanationText in Route35NationalParkGate.asm
	text "The Bug-Catching"
	line "Contest is held on"

	para "Tuesday, Thursday"
	line "and Saturday."

	para "Not only do you"
	line "earn a prize just"

	para "for participating,"
	line "you also get to"

	para "keep the bug"
	line "ANIMAL you may"

	para "have at the end of"
	line "the contest."
	done

Route36NationalParkGateOfficer1WellHoldPrizeText:
	text "Uh-oh... Your PACK"
	line "is full."

	para "We'll hold on to"
	line "your prize, but"
	cont "only for today."

	para "Please make room,"
	line "then come see me."
	done

Route36NationalParkGateOfficer1HeresThePrizeText:
	text "<PLAYER>?"

	para "Here's the prize"
	line "we were holding"
	cont "for you."
	done

Route36NationalParkGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, NATIONAL_PARK, 1
	warp_event  0,  5, NATIONAL_PARK, 2
	warp_event  9,  4, ROUTE_36, 1
	warp_event  9,  5, ROUTE_36, 2

	def_coord_events

	def_bg_events
	bg_event  6,  0, BGEVENT_READ, BugCatchingContestExplanationSign

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route36OfficerScriptContest, EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_CONTEST_DAY
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant1BScript, EVENT_BUG_CATCHING_CONTESTANT_1B
	object_event  4,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant2BScript, EVENT_BUG_CATCHING_CONTESTANT_2B
	object_event  2,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant3BScript, EVENT_BUG_CATCHING_CONTESTANT_3B
	object_event  6,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant4BScript, EVENT_BUG_CATCHING_CONTESTANT_4B
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant5BScript, EVENT_BUG_CATCHING_CONTESTANT_5B
	object_event  5,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant6BScript, EVENT_BUG_CATCHING_CONTESTANT_6B
	object_event  3,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant7BScript, EVENT_BUG_CATCHING_CONTESTANT_7B
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant8BScript, EVENT_BUG_CATCHING_CONTESTANT_8B
	object_event  6,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant9BScript, EVENT_BUG_CATCHING_CONTESTANT_9B
	object_event  6,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant10BScript, EVENT_BUG_CATCHING_CONTESTANT_10B
	object_event  3,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route36NationalParkGateOfficerScript, EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_NOT_CONTEST_DAY
