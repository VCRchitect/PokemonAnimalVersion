	object_const_def
	const TEAMROCKETBASEB2F_ROCKET1
	const TEAMROCKETBASEB2F_ROCKET_GIRL
	const TEAMROCKETBASEB2F_LANCE
	const TEAMROCKETBASEB2F_DRAGON
	const TEAMROCKETBASEB2F_BOMB1
	const TEAMROCKETBASEB2F_BOMB2
	const TEAMROCKETBASEB2F_BOMB3
	const TEAMROCKETBASEB2F_BOMB4
	const TEAMROCKETBASEB2F_BOMB5
	const TEAMROCKETBASEB2F_BOMB6
	const TEAMROCKETBASEB2F_ROCKET2
	const TEAMROCKETBASEB2F_ROCKET3
	const TEAMROCKETBASEB2F_ROCKET4
	const TEAMROCKETBASEB2F_POKE_BALL

TeamRocketBaseB2F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS
	scene_script .DummyScene2 ; SCENE_TEAMROCKETBASEB2F_BOMBS
	scene_script .DummyScene3 ; SCENE_TEAMROCKETBASEB2F_NOTHING

	def_callbacks
	callback MAPCALLBACK_TILES, .TransmitterDoorCallback

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.TransmitterDoorCallback:
	checkevent EVENT_OPENED_DOOR_TO_ROCKET_HIDEOUT_TRANSMITTER
	iftrue .OpenDoor
	endcallback

.OpenDoor:
	changeblock 14, 12, $07 ; floor
	endcallback

RocketBaseBossFLeft:
	moveobject TEAMROCKETBASEB2F_LANCE, 9, 13
	sjump RocketBaseBossFScript

RocketBaseBossFRight:
	moveobject TEAMROCKETBASEB2F_ROCKET_GIRL, 21, 16
	moveobject TEAMROCKETBASEB2F_ROCKET1, 21, 16
	moveobject TEAMROCKETBASEB2F_DRAGON, 10, 13
	moveobject TEAMROCKETBASEB2F_LANCE, 10, 13
RocketBaseBossFScript:
	appear TEAMROCKETBASEB2F_ROCKET_GIRL
	appear TEAMROCKETBASEB2F_ROCKET1
	refreshscreen
	opentext
	trainerpic EXECUTIVEM 
	writetext RocketBaseExecutiveFHoldItText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RocketBasePlayerApproachesBossFMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement TEAMROCKETBASEB2F_ROCKET_GIRL, RocketBaseBossFApproachesPlayerMovement
	turnobject PLAYER, UP
	applymovement TEAMROCKETBASEB2F_ROCKET1, RocketBaseGruntApproachesPlayerMovement
	refreshscreen
	opentext
	trainerpic GRUNTF
	writetext RocketBaseBossFThrashText
	waitbutton
	closetrainpic
	closetext
	cry MASCOT
	turnobject TEAMROCKETBASEB2F_ROCKET_GIRL, LEFT
	turnobject PLAYER, LEFT
	appear TEAMROCKETBASEB2F_DRAGON
	applymovement TEAMROCKETBASEB2F_DRAGON, RocketBaseMascotAttacksMovement
	applymovement TEAMROCKETBASEB2F_ROCKET_GIRL, RocketBaseBossFHitMovement
	applymovement TEAMROCKETBASEB2F_ROCKET1, RocketBaseGruntProtectsBossFMovement
	appear TEAMROCKETBASEB2F_LANCE
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceApproachesBossFMovement
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RocketBaseLanceShareFunText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYER, RIGHT
	applymovement TEAMROCKETBASEB2F_ROCKET_GIRL, RocketBaseBossFFacesPlayerMovement
	refreshscreen
	opentext
	trainerpic EXECUTIVEF
	writetext RocketBaseBossDontMeddleText
	waitbutton
	closetrainpic
	closetext
	applymovement TEAMROCKETBASEB2F_ROCKET1, RocketBaseGruntBattlesLanceMovement
	applymovement TEAMROCKETBASEB2F_ROCKET_GIRL, RocketBaseBossFBattlesPlayerMovement
	winlosstext RocketBaseBossWinText, 0
	setlasttalked TEAMROCKETBASEB2F_ROCKET_GIRL
	loadtrainer EXECUTIVEF, EXECUTIVEF_2
	startbattle
	disappear TEAMROCKETBASEB2F_DRAGON
	setevent EVENT_TEAM_ROCKET_BASE_B2F_EXECUTIVE
	setevent EVENT_TEAM_ROCKET_BASE_B2F_GRUNT_WITH_EXECUTIVE
	setevent EVENT_TEAM_ROCKET_BASE_B2F_LANCE
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEF_2
	refreshscreen
	opentext
	trainerpic EXECUTIVEF
	writetext RocketBaseBossRetreatText
	waitbutton
	closetrainpic
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear TEAMROCKETBASEB2F_ROCKET1
	disappear TEAMROCKETBASEB2F_ROCKET_GIRL
	disappear TEAMROCKETBASEB2F_ROCKET2
	disappear TEAMROCKETBASEB2F_ROCKET3
	disappear TEAMROCKETBASEB2F_ROCKET4
	pause 15
	special FadeInQuickly
	setscene SCENE_TEAMROCKETBASEB2F_BOMBS
	clearevent EVENT_TEAM_ROCKET_BASE_B2F_LANCE
	turnobject TEAMROCKETBASEB2F_LANCE, DOWN
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RocketBaseLancePostBattleText
	waitbutton
	closetrainpic
	closetext
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceChecksPlayerMovement
	turnobject PLAYER, UP
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RocketBaseLancePowerOffText
	waitbutton
	closetrainpic
	closetext
	follow TEAMROCKETBASEB2F_LANCE, PLAYER
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceApproachesMachineMovement
	stopfollow
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLancePacesMovement
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RockerBaseLanceBombFaintText
	waitbutton
	closetrainpic
	closetext
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceApproachesBombsMovement
	disappear TEAMROCKETBASEB2F_LANCE

RocketBaseCantLeaveScript:
	applymovement PLAYER, RocketBasePlayerCantLeaveBombsMovement
	end

RocketBaseLancesSideScript:
	opentext
	writetext RocketBaseLancesSideText
	waitbutton
	closetext
	applymovement PLAYER, RocketBasePlayerCantGoRightMovement
	end

LanceHealsScript1:
	turnobject PLAYER, UP
	sjump LanceHealsCommon

LanceHealsScript2:
	turnobject PLAYER, RIGHT
	turnobject TEAMROCKETBASEB2F_LANCE, LEFT
LanceHealsCommon:
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext LanceHealsText1
	waitbutton
	closetrainpic
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext LanceHealsText2
	waitbutton
	closetrainpic
	closetext
	setscene SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS
	setevent EVENT_LANCE_HEALED_YOU_IN_TEAM_ROCKET_BASE
	readvar VAR_FACING
	ifequal RIGHT, .FacingRight
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceLeavesAfterHealMovement
	disappear TEAMROCKETBASEB2F_LANCE
	end

.FacingRight:
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceLeavesAfterHealRightMovement
	disappear TEAMROCKETBASEB2F_LANCE
	end

TrainerGruntM17:
	trainer GRUNTM, GRUNTM_17, EVENT_BEAT_ROCKET_GRUNTM_17, GruntM17SeenText, GruntM17BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM17AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntM18:
	trainer GRUNTM, GRUNTM_18, EVENT_BEAT_ROCKET_GRUNTM_18, GruntM18SeenText, GruntM18BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM18AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntM19:
	trainer GRUNTM, GRUNTM_19, EVENT_BEAT_ROCKET_GRUNTM_19, GruntM19SeenText, GruntM19BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM19AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

RocketBomb1:
	cry BOMB
	loadwildmon BOMB, 23
	startbattle
	iftrue TeamRocketBaseB2FReloadMap
	disappear TEAMROCKETBASEB2F_BOMB1
	disappear TEAMROCKETBASEB2F_BOMB4
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_1
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_2
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_3
	iffalse TeamRocketBaseB2FReloadMap
	reloadmapafterbattle
	special PlayMapMusic
	applymovement PLAYER, RocketBasePlayerLeavesBombsMovement1
	sjump RocketBaseBombScript

RocketBomb2:
	cry BOMB
	loadwildmon BOMB, 23
	startbattle
	iftrue TeamRocketBaseB2FReloadMap
	disappear TEAMROCKETBASEB2F_BOMB2
	disappear TEAMROCKETBASEB2F_BOMB5
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_1
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_2
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_3
	iffalse TeamRocketBaseB2FReloadMap
	reloadmapafterbattle
	special PlayMapMusic
	applymovement PLAYER, RocketBasePlayerLeavesBombsMovement2
	sjump RocketBaseBombScript

RocketBomb3:
	cry BOMB
	loadwildmon BOMB, 23
	startbattle
	iftrue TeamRocketBaseB2FReloadMap
	disappear TEAMROCKETBASEB2F_BOMB3
	disappear TEAMROCKETBASEB2F_BOMB6
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_1
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_2
	iffalse TeamRocketBaseB2FReloadMap
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_BOMB_3
	iffalse TeamRocketBaseB2FReloadMap
	reloadmapafterbattle
	special PlayMapMusic
	applymovement PLAYER, RocketBasePlayerLeavesBombsMovement3
	sjump RocketBaseBombScript

TeamRocketBaseB2FReloadMap:
	reloadmapafterbattle
	end

RocketBaseBombScript:
	moveobject TEAMROCKETBASEB2F_LANCE, 18, 6
	appear TEAMROCKETBASEB2F_LANCE
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceLeavesBombsMovement
	turnobject PLAYER, RIGHT
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RocketBaseLanceBombDoneText
	promptbutton
	closetrainpic
	verbosegiveitem HM_WHIRLPOOL
	setevent EVENT_GOT_HM06_WHIRLPOOL
	refreshscreen
	trainerpic CHAMPION
	writetext RocketBaseLanceWhirlpoolText
	waitbutton
	closetrainpic
	closetext
	turnobject TEAMROCKETBASEB2F_LANCE, DOWN
	refreshscreen
	opentext
	trainerpic CHAMPION
	writetext RocketBaseLanceMonMasterText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYER, DOWN
	applymovement TEAMROCKETBASEB2F_LANCE, RocketBaseLanceLeavesBaseMovement
	disappear TEAMROCKETBASEB2F_LANCE
	setevent EVENT_CLEARED_ROCKET_HIDEOUT
	clearflag ENGINE_ROCKET_SIGNAL_ON_CH20
	setevent EVENT_ROUTE_43_GATE_ROCKETS
	setevent EVENT_MAHOGANY_TOWN_POKEFAN_M_BLOCKS_GYM
	setscene SCENE_TEAMROCKETBASEB2F_NOTHING
	clearevent EVENT_LAKE_OF_RAGE_CIVILIANS
	setevent EVENT_TURNED_OFF_SECURITY_CAMERAS
	setevent EVENT_SECURITY_CAMERA_1
	setevent EVENT_SECURITY_CAMERA_2
	setevent EVENT_SECURITY_CAMERA_3
	setevent EVENT_SECURITY_CAMERA_4
	setevent EVENT_SECURITY_CAMERA_5
	end

TeamRocketBaseB2FLockedDoor:
	conditional_event EVENT_OPENED_DOOR_TO_ROCKET_HIDEOUT_TRANSMITTER, .Script

.Script:
	opentext
	checkevent EVENT_LEARNED_HAIL_GIOVANNI
	iftrue .KnowsPassword
	writetext RocketBaseDoorNoPasswordText
	waitbutton
	closetext
	end

.KnowsPassword:
	writetext RocketBaseDoorKnowPasswordText
	waitbutton
	playsound SFX_ENTER_DOOR
	changeblock 14, 12, $07 ; floor
	reloadmappart
	closetext
	setevent EVENT_OPENED_DOOR_TO_ROCKET_HIDEOUT_TRANSMITTER
	waitsfx
	end

TeamRocketBaseB2FTransmitterScript:
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .Deactivated
	writetext RocketBaseB2FTransmitterText
	waitbutton
	closetext
	end

.Deactivated:
	writetext RocketBaseB2FDeactivateTransmitterText
	waitbutton
	closetext
	end

TeamRocketBaseB2FTMThief:
	itemball TM_THIEF

TeamRocketBaseB2FHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_TEAM_ROCKET_BASE_B2F_HIDDEN_FULL_HEAL

RocketBaseLanceLeavesAfterHealMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBaseLanceLeavesAfterHealRightMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBasePlayerApproachesBossFMovement:
	step DOWN
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

RocketBaseBossFApproachesPlayerMovement:
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_end

RocketBaseGruntApproachesPlayerMovement:
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

RocketBaseMascotAttacksMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

RocketBaseBossFHitMovement:
	fix_facing
	set_sliding
	jump_step RIGHT
	remove_sliding
	remove_fixed_facing
	step_end

RocketBaseBossFFacesPlayerMovement:
	slow_step DOWN
	turn_head LEFT
	step_end

RocketBaseLanceApproachesBossFMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBaseBossFBattlesPlayerMovement:
	big_step LEFT
	step_end

RocketBaseGruntBattlesLanceMovement:
	big_step LEFT
	step_end

RocketBaseGruntProtectsBossFMovement:
	big_step LEFT
	big_step UP
	turn_head LEFT
	step_end

RocketBaseLanceChecksPlayerMovement:
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

RocketBaseLanceApproachesMachineMovement:
	step UP
	step UP
	step UP
	step_end

RocketBaseLancePacesMovement:
	step_sleep 8
	step LEFT
	step LEFT
	turn_head UP
	step_sleep 8
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_sleep 8
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

RocketBaseLanceApproachesBombsMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

RocketBasePlayerCantLeaveBombsMovement:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

RocketBasePlayerCantGoRightMovement:
	step LEFT
	step_end

RocketBaseLanceLeavesBombsMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

RocketBaseLanceLeavesBaseMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

RocketBasePlayerLeavesBombsMovement1:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBasePlayerLeavesBombsMovement2:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBasePlayerLeavesBombsMovement3:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RocketBaseExecutiveFHoldItText:
	text "Hold it right"
	line "there!"
	done

RocketBaseBossFThrashText:
	text "We can't have a"
	line "brat like you on"
	cont "the loose."

	para "It's harmful to"
	line "TEAM ROCKET's"
	cont "pride, you see."

	para "However strong you"
	line "may be, you can't"

	para "take both of us at"
	line "the same time."

	para "Sorry, baby. Now"
	line "get ready to be"
	cont "thrashed."
	done

RocketBaseLanceShareFunText:
	text "Hey! Don't be so"
	line "selfish. Spread"
	cont "the fun around."
	done

RocketBaseBossDontMeddleText:
	text "What? You had an"
	line "accomplice?"

	para "Where is your"
	line "sense of honor?"

	para "As the interim"
	line "boss in place of"

	para "GIOVANNI, I'll"
	line "show you how wrong"

	para "it is to meddle"
	line "with TEAM ROCKET!"
	done

RocketBaseBossWinText:
	text "Tch, you really"
	line "are strong."

	para "It's too bad."

	para "If you were to"
	line "join TEAM ROCKET,"

	para "you could become"
	line "an EXECUTIVE."
	done

RocketBaseBossRetreatText:
	text "...This hideout is"
	line "done for..."

	para "But that's fine."
	line "The broadcast ex-"
	cont "periment was a"
	cont "total success."

	para "It doesn't matter"
	line "what happens to"
	cont "this hideout now."

	para "We have much big-"
	line "ger plans."

	para "You'll come to"
	line "appreciate TEAM"

	para "ROCKET's true"
	line "power soon enough."

	para "Enjoy yourself"
	line "while you can..."

	para "Fufufufu..."
	done

RocketBaseLancePostBattleText:
	text "LANCE: That did"
	line "it. We defeated"

	para "all the ROCKETS"
	line "here."

	para "But I'm concerned"
	line "about the young"

	para "guy I battled in"
	line "the process..."
	done

RocketBaseLancePowerOffText:
	text "Sorry, <PLAY_G>."
	line "I saw how well you"

	para "were doing, so I"
	line "just hung back."

	para "Now all there is"
	line "left to do is to"

	para "turn off that odd"
	line "radio signal."
	done

RockerBaseLanceBombFaintText:
	text "It's this machine"
	line "that's causing all"
	cont "the problems."

	para "I don't see a"
	line "switch on it..."

	para "We have no choice."
	line "We have to make"

	para "all the BOMB"
	line "faint."

	para "That should stop"
	line "this machine from"

	para "transmitting that"
	line "strange signal."

	para "It's no fault of"
	line "the ANIMALs, so it"

	para "makes me feel"
	line "guilty."

	para "<PLAY_G>, let's"
	line "split the job."
	done

RocketBaseLancesSideText:
	text "LANCE: Leave this"
	line "side to me."
	done

RocketBaseLanceBombDoneText:
	text "LANCE: That odd"
	line "signal has finally"
	cont "stopped."

	para "The LAKE should be"
	line "back to normal."

	para "You're the hero!"
	line "Let me thank you"

	para "on behalf of all"
	line "the ANIMALs."

	para "Oh, yes. You"
	line "should take this."

	para "I found it here,"
	line "but I don't have"
	cont "any need for it."
	done

RocketBaseReceivedHM06Text: ; unreferenced
	text "<PLAYER> received"
	line "HM06."
	done

RocketBaseLanceWhirlpoolText:
	text "That's WHIRLPOOL."
	line "Teach it to a"

	para "ANIMAL to get"
	line "across wild water."

	para "But keep this in"
	line "mind."

	para "You can use that"
	line "out of battle only"

	para "with the BADGE"
	line "from MAHOGANY GYM."
	done

RocketBaseLanceMonMasterText:
	text "<PLAY_G>..."

	para "The journey to be-"
	line "coming the ANIMAL"

	para "KING is long and"
	line "difficult."

	para "Knowing that, will"
	line "you keep going?"

	para "..."

	para "I see. No, you're"
	line "right."

	para "If you would give"
	line "up that easily,"

	para "you would have"
	line "never chased that"

	para "dream in the first"
	line "place."

	para "I look forward to"
	line "seeing you again!"
	done

LanceHealsText1:
	text "LANCE: Are you all"
	line "right?"

	para "Your ANIMALs are"
	line "hurt and tired."

	para "Here, give them"
	line "some of my medi-"
	cont "cine."
	done

LanceHealsText2:
	text "LANCE: <PLAY_G>,"
	line "let's give it our"
	cont "best for ANIMALs."
	done

GruntM17SeenText:
	text "The door won't"
	line "open?"

	para "Well, duh."
	line "It has to have a"

	para "password that only"
	line "TEAM ROCKET knows."
	done

GruntM17BeatenText:
	text "What? I lost?"
	done

GruntM17AfterBattleText:
	text "Heh, I'm just a"
	line "GRUNT."

	para "I don't know the"
	line "password. Too bad"
	cont "for you."
	done

GruntM18SeenText:
	text "Oh, a kid? I don't"
	line "really like this,"

	para "but eliminate you"
	line "I must."
	done

GruntM18BeatenText:
	text "I knew I'd lose..."
	done

GruntM18AfterBattleText:
	text "I got wiped out on"
	line "the last mission"
	cont "by a kid too."

	para "When we were ab-"
	line "ducting ANIMALs,"

	para "this kid with long"
	line "red hair and mean-"

	para "looking eyes just"
	line "creamed me..."
	done

GruntM19SeenText:
	text "You rotten little"
	line "pest!"
	done

GruntM19BeatenText:
	text "Grrrr..."
	done

GruntM19AfterBattleText:
	text "Heh, only the boss"
	line "knows the password"
	cont "for that door."

	para "Where's the boss?"
	line "Who knows? Go look"
	cont "for yourself."
	done

RocketBaseDoorNoPasswordText:
	text "The door's closed."

	para "It needs a pass-"
	line "word to open."
	done

RocketBaseDoorKnowPasswordText:
	text "The door's closed."

	para "<PLAYER> entered"
	line "the password."

	para "The door opened!"
	done

RocketBaseB2FTransmitterText:
	text "It's the radio"
	line "transmitter that's"

	para "sending the"
	line "sinister signal."

	para "It's working at"
	line "full capacity."
	done

RocketBaseB2FDeactivateTransmitterText:
	text "The radio trans-"
	line "mitter has finally"

	para "stopped its evil"
	line "broadcast."
	done

TeamRocketBaseB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 14, TEAM_ROCKET_BASE_B1F, 2
	warp_event  3,  2, TEAM_ROCKET_BASE_B3F, 1
	warp_event 27,  2, TEAM_ROCKET_BASE_B3F, 2
	warp_event  3,  6, TEAM_ROCKET_BASE_B3F, 3
	warp_event 27, 14, TEAM_ROCKET_BASE_B3F, 4

	def_coord_events
	coord_event  5, 14, SCENE_DEFAULT, LanceHealsScript1
	coord_event  4, 13, SCENE_DEFAULT, LanceHealsScript2
	coord_event 14, 11, SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS, RocketBaseBossFLeft
	coord_event 15, 11, SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS, RocketBaseBossFRight
	coord_event 14, 12, SCENE_TEAMROCKETBASEB2F_BOMBS, RocketBaseCantLeaveScript
	coord_event 15, 12, SCENE_TEAMROCKETBASEB2F_BOMBS, RocketBaseCantLeaveScript
	coord_event 12,  3, SCENE_TEAMROCKETBASEB2F_BOMBS, RocketBaseLancesSideScript
	coord_event 12, 10, SCENE_TEAMROCKETBASEB2F_BOMBS, RocketBaseLancesSideScript
	coord_event 12, 11, SCENE_TEAMROCKETBASEB2F_BOMBS, RocketBaseLancesSideScript

	def_bg_events
	bg_event 14, 12, BGEVENT_IFNOTSET, TeamRocketBaseB2FLockedDoor
	bg_event 15, 12, BGEVENT_IFNOTSET, TeamRocketBaseB2FLockedDoor
	bg_event 17,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 16,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 15,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 14,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 13,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  9, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  8, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  7, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  6, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  5, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 12,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 13,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 14,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 15,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 16,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 17,  4, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 17,  5, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 17,  6, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 17,  7, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 17,  8, BGEVENT_READ, TeamRocketBaseB2FTransmitterScript
	bg_event 26,  7, BGEVENT_ITEM, TeamRocketBaseB2FHiddenFullHeal

	def_object_events
	object_event 20, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_GRUNT_WITH_EXECUTIVE
	object_event 20, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_EXECUTIVE
	object_event  5, 13, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_LANCE
	object_event  9, 13, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_MASCOT
	object_event  7,  5, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketBomb1, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_1
	object_event  7,  7, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketBomb2, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_2
	object_event  7,  9, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketBomb3, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_3
	object_event 22,  5, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_1
	object_event 22,  7, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_2
	object_event 22,  9, SPRITE_EXPLOSIVE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_BOMB_3
	object_event 25, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM17, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  4,  1, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM18, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 21, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM19, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB2FTMThief, EVENT_TEAM_ROCKET_BASE_B2F_TM_THIEF
