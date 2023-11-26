	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_ELMS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_POKE_BALL4
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	def_scene_scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	sdefer .WalkUpToElm
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveElmCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject ELMSLAB_ELM, 3, 4
.Skip:
	endcallback

.WalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	trainerpic ELM
	writetext ElmText_Intro
.MustSayYes:
	yesorno
	iftrue .ElmGetsEmail
	writetext ElmText_Refused
	sjump .MustSayYes

.ElmGetsEmail:
	writetext ElmText_Accepted
	promptbutton
	writetext ElmText_ResearchAmbitions
	waitbutton
	closetrainpic
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 10
	turnobject ELMSLAB_ELM, DOWN
	opentext
	trainerpic ELM
	writetext ElmText_GotAnEmail
	waitbutton
	turnobject ELMSLAB_ELM, RIGHT
	writetext ElmText_MissionFromMrPokemon
	waitbutton
	closetrainpic
	closetext
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement1
	turnobject PLAYER, UP
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement2
	turnobject PLAYER, RIGHT
	opentext
	trainerpic ELM
	writetext ElmText_ChooseAPokemon
	waitbutton
	setscene SCENE_ELMSLAB_CANT_LEAVE
	closetrainpic
	closetext
	end

ProfElmScript:
	faceplayer
	opentext
	trainerpic ELM
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_HOBO_CLOWN_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_HOBO_CLOWN_OVER_THE_PHONE
	iffalse ElmCheckHobo_ClownEgg
	setval HOBO_CLOWN
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmHobo_ClownScript
	setval BADCLOWN
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmHobo_ClownScript
	writetext ElmThoughtEggHatchedText
	waitbutton
	closetrainpic
	closetext
	end

ElmEggHatchedScript:
	setval HOBO_CLOWN
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmHobo_ClownScript
	setval BADCLOWN
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmHobo_ClownScript
	sjump ElmCheckGotEggAgain

ElmCheckHobo_ClownEgg:
	checkevent EVENT_GOT_HOBO_CLOWN_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_HOBO_CLOWN_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_HOBO_CLOWN_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	waitbutton
	closetrainpic
	closetext
	end

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	trainerpic ELM
	writetext LabWhereGoingText
	waitbutton
	closetrainpic
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

SkunkPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SKUNK
	cry SKUNK
	waitbutton
	closepokepic
	opentext
	trainerpic ELM
	writetext TakeSkunkText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	closetrainpic
	waitsfx
	getmonname STRING_BUFFER_3, SKUNK
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SKUNK, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterSkunkMovement
	sjump ElmDirectionsScript

CaimanPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CAIMAN
	cry CAIMAN
	waitbutton
	closepokepic
	opentext
	trainerpic ELM
	writetext TakeCaimanText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	closetrainpic
	waitsfx
	getmonname STRING_BUFFER_3, CAIMAN
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CAIMAN, 5, BERRY
	closetext
	applymovement PLAYER, AfterCaimanMovement
	sjump ElmDirectionsScript

SquirrelPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SQUIRREL
	cry SQUIRREL
	waitbutton
	closepokepic
	opentext
	trainerpic ELM
	writetext TakeSquirrelText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_SQUIRREL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	closetrainpic
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRREL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRREL, 5, BERRY
	closetext
	applymovement PLAYER, AfterSquirrelMovement
	sjump ElmDirectionsScript

PineconePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtTrashCanScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic PINECONE
	cry PINECONE
	waitbutton
	closepokepic
	opentext
	trainerpic ELM
	writetext TakePineconeText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL4
	setevent EVENT_GOT_SQUIRREL_FROM_ELM
	writetext ChosePineconeText
	promptbutton
	closetrainpic
	waitsfx
	getmonname STRING_BUFFER_3, PINECONE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PINECONE, 8, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterPineconeMovement
	sjump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetrainpic
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, UP
	opentext
	trainerpic ELM
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, LEFT
	refreshscreen
	opentext
	trainerpic ELM
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetrainpic
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
	
LookAtTrashCanScript:
	opentext
	writetext ElmsLabTrashcanText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

ElmAfterTheftDoneScript:
	waitbutton
	closetrainpic
	closetext
	end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	promptbutton
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	promptbutton
	writetext ElmAfterTheftText5
	promptbutton
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setflag ENGINE_MAIN_MENU_MOBILE_CHOICES
	setmapscene ROUTE_29, SCENE_ROUTE29_CATCH_TUTORIAL
	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
	setevent EVENT_ROUTE_30_BATTLE
	writetext ElmAfterTheftText6
	waitbutton
	closetrainpic
	closetext
	setscene SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS
	end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	waitbutton
	closetrainpic
	closetext
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	waitbutton
	closetrainpic
	closetext
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	waitbutton
	closetrainpic
	closetext
	end

ShowElmHobo_ClownScript:
	writetext ShowElmHobo_ClownText1
	waitbutton
	closetrainpic
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	setevent EVENT_SHOWED_HOBO_CLOWN_TO_ELM
	opentext
	trainerpic ELM
	writetext ShowElmHobo_ClownText2
	promptbutton
	writetext ShowElmHobo_ClownText3
	promptbutton
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	promptbutton
	verbosegiveitem EVERSTONE
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	waitbutton
ElmScript_NoRoomForEverstone:
	closetrainpic
	closetext
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetrainpic
	closetext
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	promptbutton
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetrainpic
	closetext
	end

ElmJumpBackScript1:
	closetrainpic
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpDownScript
	ifequal UP, ElmJumpUpScript
	ifequal LEFT, ElmJumpLeftScript
	ifequal RIGHT, ElmJumpRightScript
	end

ElmJumpBackScript2:
	closetrainpic
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpUpScript
	ifequal UP, ElmJumpDownScript
	ifequal LEFT, ElmJumpRightScript
	ifequal RIGHT, ElmJumpLeftScript
	end

ElmJumpUpScript:
	applymovement ELMSLAB_ELM, ElmJumpUpMovement
	opentext
	trainerpic ELM
	end

ElmJumpDownScript:
	applymovement ELMSLAB_ELM, ElmJumpDownMovement
	opentext
	trainerpic ELM
	end

ElmJumpLeftScript:
	applymovement ELMSLAB_ELM, ElmJumpLeftMovement
	opentext
	trainerpic ELM
	end

ElmJumpRightScript:
	applymovement ELMSLAB_ELM, ElmJumpRightMovement
	opentext
	trainerpic ELM
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	refreshscreen
	opentext
	trainerpic SCIENTIST
	writetext AideText_GiveYouPotion
	promptbutton
	verbosegiveitem POTION
	writetext AideText_AlwaysBusy
	waitbutton
	closetrainpic
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_WalkBalls1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	refreshscreen
	opentext
	trainerpic SCIENTIST
	writetext AideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_ExplainBalls
	promptbutton
	itemnotify
	closetrainpic
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end

ElmsAideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	checkevent EVENT_GOT_HOBO_CLOWN_EGG_FROM_ELMS_AIDE
	iftrue AideScript_AfterTheft
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue AideScript_ExplainBalls
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue AideScript_TheftTestimony
	writetext AideText_AlwaysBusy
	waitbutton
	closetrainpic
	closetext
	end

AideScript_TheftTestimony:
	writetext AideText_TheftTestimony
	waitbutton
	closetrainpic
	closetext
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	waitbutton
	closetrainpic
	closetext
	end

AideScript_AfterTheft:
	writetext AideText_AfterTheft
	waitbutton
	closetrainpic
	closetext
	end

MeetCopScript2:
	applymovement PLAYER, MeetCopScript2_StepLeft

MeetCopScript:
	applymovement PLAYER, MeetCopScript_WalkUp
CopScript:
	turnobject ELMSLAB_OFFICER, LEFT
	refreshscreen
	opentext
	trainerpic OFFICER
	writetext ElmsLabOfficerText1
	promptbutton
	special NameRival
	writetext ElmsLabOfficerText2
	waitbutton
	closetrainpic
	closetext
	applymovement ELMSLAB_OFFICER, OfficerLeavesMovement
	disappear ELMSLAB_OFFICER
	setscene SCENE_ELMSLAB_NOTHING
	end

ElmsLabWindow:
	refreshscreen
	opentext
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue .Normal
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .BreakIn
	sjump .Normal

.BreakIn:
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end

.Normal:
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2: ; unreferenced
	jumpstd TrashCanScript

ElmsLabBookshelf:
	jumpstd DifficultBookshelfScript

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

MeetCopScript2_StepLeft:
	step LEFT
	step_end

MeetCopScript_WalkUp:
	step UP
	step UP
	turn_head RIGHT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterSkunkMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterCaimanMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterSquirrelMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterPineconeMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

ElmText_Intro:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "I needed to ask"
	line "you a favor."

	para "My poetry, it"
	line "needs you to go on"
	cont "a journey."

	para "I think it would"
	line "be an inspiration."

	para "Will you tame a"
	line "dangerous ANIMAL?"

	para "You see..."

	para "I'm writing an"
	line "article." 

	para "'Why Kids Doing"
	line "Dog Fights is so"
	cont "Damn Funny."

	para "But there are some"
	line "things I don't"

	para "quite understand"
	line "yet."

	para "So!"

	para "I'd like you to"
	line "go with an ANIMAL"

	para "that I recently"
	line "caught."
	done

ElmText_Accepted:
	text "Thanks, <PLAY_G>!"

	para "You're a great"
	line "help!"
	done

ElmText_Refused:
	text "But... Please, I"
	line "need your help!"
	done

ElmText_ResearchAmbitions:
	text "So that is why you"
	line "will be running"

	para "around with an"
	line "ANIMAL, alone."

	para "I'm sure nothing"
	line "will happen."

	para "You can count on"
	line "it!"
	done

ElmText_GotAnEmail:
	text "Oh, hey! I got an"
	line "e-mail!"

	para "......"
	line "I can grow my"
	cont "what now?"

	para "Okay..."
	done

ElmText_MissionFromMrPokemon:
	text "Hey, listen."

	para "I know a guy"
	line "called MR. BIG."

	para "He keeps finding"
	line "weird things and"

	para "getting all sorts"
	line "of clout!"

	para "Anyway, I just got"
	line "an e-mail that"
	cont "reminds me of him."

	para "I need you and"
	line "your ANIMAL."

	para "I would go, but"
	line "we're busy."

	para "Plus, Matlock is"
	line "on tonight."

	para "Wait!"

	para "I know!"

	para "<PLAY_G>, can you"
	line "go so I won't"
	cont "miss it?"
	done

ElmText_ChooseAPokemon:
	text "I want you to"
	line "hang out with"

	para "an ANIMAL from"
	line "these ball nets."

	para "You'll be that"
	line "ANIMAL's first"
	cont "owner, <PLAY_G>!"

	para "Go on. Pick one!"
	done

ElmText_LetYourMonBattleIt:
	text "If a wild ANIMAL"
	line "appears, let your"
	cont "ANIMAL fight it!"
	done

LabWhereGoingText:
	text "ELM: Wait! Where"
	line "are you going?"
	done

TakeSkunkText:
	text "ELM: You'll take"
	line "SKUNK, the"
	cont "ANIMAL that burns?"
	done

TakeCaimanText:
	text "ELM: Do you want"
	line "CAIMAN, the"
	cont "wet ANIMAL?"
	done

TakeSquirrelText:
	text "ELM: So, you like"
	line "SQUIRREL, the"
	cont "nutty ANIMAL?"
	done

TakePineconeText:
	text "Uhh, <PLAY_G>, that"
	line "is some trash..."
	para "You sure you want"
	line "a PINECONE?"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "No givebacks or"
	line "refunds."
	done

ChoseStarterText:
	text "ELM: I think that"
	line "ANIMAL is a bad"
	cont "choice!"
	done
	
ChosePineconeText:
	text "ELM: This is going"
	line "to go so poorly..."
	done

ReceivedStarterText:
	text "<PLAYER> rescued"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "MR.BIG lives a"
	line "little bit beyond"

	para "CHERRYGROVE, the"
	line "next city over."

	para "It's almost a"
	line "direct route,"

	para "so even you"
	line "can't miss it."

	para "But just in case,"
	line "here's my phone"

	para "number. Call me if"
	line "anything comes up!"
	done

ElmDirectionsText2:
	text "If your ANIMAL is"
	line "hurt, you should"

	para "feed it kibbles"
	line "or beans."

	para "Feel free to"
	line "heal anytime."
	done

ElmDirectionsText3:
	text "<PLAY_G>, I'm"
	line "counting on you!"
	done

GotElmsNumberText:
	text "<PLAYER> got ELM's"
	line "phone number."
	done

ElmDescribesMrPokemonText:
	text "MR.BIG goes"
	line "everywhere and"
	cont "finds ANIMALs."

	para "Too bad they're"
	line "old and not very"
	cont "useful..."
	done

ElmPokeBallText:
	text "It contains an"
	line "ANIMAL caught by"
	cont "PROF.ELM."
	done

ElmsLabHealingMachineText1:
	text "I wonder what this"
	line "does? It smells"
	cont "like gasoline..."
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "feed your ANIMAL?"
	done

ElmAfterTheftText1:
	text "ELM: <PLAY_G>, this"
	line "is terrible..."

	para "Oh, yes, what was"
	line "MR.BIG's big"
	cont "discovery?"
	done

ElmAfterTheftText2:
	text "<PLAYER> handed"
	line "the MYSTERY EGG to"
	cont "PROF.ELM."
	done

ElmAfterTheftText3:
	text "ELM: This?"
	done

ElmAfterTheftText4:
	text "But... Is it an"
	line "ANIMAL EGG?"

	para "If it is, I know"
	line "nothing about"
	cont "animals after all!"
	done

ElmAfterTheftText5:
	text "ELM: What?!?"

	para "PROF.OAK gave you"
	line "an ANMLDEX?"

	para "<PLAY_G>, is that"
	line "true? Th-that's"
	cont "incredible!"

	para "He is superb at"
	line "sending kids on"
	cont "dangerous jobs."

	para "Wow, <PLAY_G>. You"
	line "may have what it"

	para "takes to become"
	line "King ANIMAL..."

	para "You seem to be"
	line "getting on great"
	cont "with your ANIMAL."

	para "You should take"
	line "the ANIMAL GYM"
	cont "challenge."

	para "The closest GYM"
	line "would be the one"
	cont "in VIOLET CITY."
	done

ElmAfterTheftText6:
	text "...<PLAY_G>. The"
	line "road to the"

	para "championship will"
	line "be a long one."

	para "Before you leave,"
	line "make sure you"
	cont "talk to your ma."
	done

ElmStudyingEggText:
	text "ELM: Don't give"
	line "up! I'll call if"

	para "I learn anything"
	line "about that EGG!"
	done

ElmAideHasEggText:
	text "ELM: <PLAY_G>?"
	line "Didn't you meet my"
	cont "assistant?"

	para "He should have met"
	line "you with the EGG"

	para "at VIOLET CITY's"
	line "ANIMAL CENTER."

	para "You must have just"
	line "missed him. Try to"
	cont "catch him there."
	done

ElmWaitingEggHatchText:
	text "ELM: Hey, has that"
	line "EGG changed any?"
	done

ElmThoughtEggHatchedText:
	text "<PLAY_G>? I heard"
	line "the EGG hatched."

	para "Where is the"
	line "ANIMAL?"
	done

ShowElmHobo_ClownText1:
	text "ELM: <PLAY_G>, you"
	line "look great!"
	done

ShowElmHobo_ClownText2:
	text "What?"
	line "That ANIMAL!?!"
	done

ShowElmHobo_ClownText3:
	text "The EGG hatched!"
	line "So, ANIMALs are"
	cont "born from EGGS..."

	para "No, maybe not"
	line "all ANIMALs are."

	para "Wow, there's still"
	line "a lot of research"
	cont "to be done."
	done

ElmGiveEverstoneText1:
	text "Thanks, <PLAY_G>!"
	line "You're helping"

	para "unravel ANIMAL"
	line "mysteries for us!"

	para "I want you to have"
	line "this as a token of"
	cont "our appreciation."
	done

ElmGiveEverstoneText2:
	text "That's an"
	line "EVERSTONE."

	para "Some species of"
	line "ANIMALs evolve"

	para "when they grow to"
	line "certain levels."

	para "An ANIMAL holding"
	line "the EVERSTONE"
	cont "won't evolve."

	para "Give it to a"
	line "ANIMAL you don't"
	cont "want to evolve."
	done

ElmText_CallYou:
	text "ELM: <PLAY_G> I'll"
	line "call you if any-"
	cont "thing comes up."
	done

AideText_AfterTheft:
	text "...sigh... That"
	line "stolen ANIMAL."

	para "I wonder how it's"
	line "doing."

	para "They say ANIMALs"
	line "raised by a bad"

	para "person turn to,"
	line "sex, drugs, and"
	cont "rock and roll..."
	done

ElmGiveMasterBallText1:
	text "ELM: Hi, <PLAY_G>!"
	line "Thanks to you, my"

	para "research is going"
	line "great!"

	para "Take this as a"
	line "token of my"
	cont "appreciation."
	done

ElmGiveMasterBallText2:
	text "The MASTER BALL is"
	line "the best!"

	para "It's the ultimate"
	line "BALL! It'll catch"

	para "any ANIMAL with-"
	line "out fail."

	para "It's given only to"
	line "recognized ANIMAL"
	cont "researchers."

	para "I think you can"
	line "make much better"

	para "use of it than I"
	line "can, <PLAY_G>!"
	done

ElmGiveTicketText1:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "I called because I"
	line "have something for"
	cont "you."

	para "See? It's an"
	line "S.S.TICKET."

	para "Now you can catch"
	line "ANIMALs in KANTO."
	done

ElmGiveTicketText2:
	text "The ship departs"
	line "from OLIVINE CITY."

	para "But you knew that"
	line "already, <PLAY_G>."

	para "After all, you've"
	line "traveled all over"
	cont "with your ANIMALs."

	para "Give my regards to"
	line "PROF.OAK in KANTO!"
	done

ElmsLabMonEggText: ; unreferenced
	text "It's the ANML"
	line "EGG being studied"
	cont "by PROF.ELM."
	done

AideText_GiveYouPotion:
	text "<PLAY_G>, I want"
	line "you to have this"
	cont "for your errand."
	done

AideText_AlwaysBusy:
	text "We say we're busy"
	line "but that is truly"
	cont "the biggest lie."
	done

AideText_TheftTestimony:
	text "There was a loud"
	line "noise outside..."

	para "When we went to"
	line "look, someone"
	cont "stole aN ANIMAL."

	para "It's unbelievable"
	line "that anyone would"
	cont "do that!"

	para "...sigh... That"
	line "stolen ANIMAL."

	para "I wonder how it's"
	line "doing."

	para "They say an ANIMAL"
	line "raised by a bad"

	para "person turns bad"
	line "itself."
	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Use these on your"
	line "ANMLDEX quest!"
	done

AideText_ExplainBalls:
	text "To add to your"
	line "ANMLDEX, you have"
	cont "to catch ANIMALs."

	para "Throw ANML BALLS"
	line "at wild ANIMALs"
	cont "to get them."
	done

ElmsLabOfficerText1:
	text "I heard an ANIMAL"
	line "was stolen here..."

	para "I was coming to"
	line "shoot the missing"
	cont "ANIMAL."

	para "It was taken by a"
	line "man-boy with"
	cont "long, red hair..."

	para "What?"

	para "You battled a"
	line "trainer like that?"

	para "Did you happen to"
	line "get his name?"
	done

ElmsLabOfficerText2:
	text "OK! So <RIVAL>"
	line "was his name."

	para "Thanks for helping"
	line "my investigation!"
	done

ElmsLabWindowText1:
	text "The window's open."

	para "A RAT is staring"
	line "at you."
	done

ElmsLabWindowText2:
	text "He broke in"
	line "through here!"
	
	para "The redhead dude,"
	line "not the RAT you"
	cont "saw earlier."
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Reading is hard!"
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Why would I read?"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "This book is just"
	line "poems? Ewww."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Perception is"
	line "reality..."
	done

ElmsLabTrashcanText:
	text "Who throws away"
	line "a PINECONE?"
	done

ElmsLabPCText:
	text "OBSERVATIONS ON"
	line "ANIMAL EVOLUTION"

	para "...It says on the"
	line "screen..."
	
	para "Do animals like it"
	line "when people watch"
	cont "them evolve?"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	def_coord_events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript
	coord_event  5,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls2

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	def_object_events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SkunkPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaimanPokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirrelPokeBallScript, EVENT_SQUIRREL_POKEBALL_IN_ELMS_LAB
	object_event  9,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineconePokeBallScript, EVENT_PINECONE_IN_ELMS_LAB
	object_event  5,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopScript, EVENT_COP_IN_ELMS_LAB
