	object_const_def
	const BATTLETOWERBATTLEROOM_YOUNGSTER
	const BATTLETOWERBATTLEROOM_RECEPTIONIST

BattleTowerBattleRoom_MapScripts:
	def_scene_scripts
	scene_script .EnterBattleRoom ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks

.EnterBattleRoom:
	disappear BATTLETOWERBATTLEROOM_YOUNGSTER
	sdefer Script_BattleRoom
	setscene SCENE_FINISHED
.DummyScene:
	end

Script_BattleRoom:
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerWalksIn
; beat all 7 opponents in a row
Script_BattleRoomLoop:
	setval BATTLETOWERBATTLEROOM_YOUNGSTER
	special LoadOpponentTrainerAndPokemonWithOTSprite
	appear BATTLETOWERBATTLEROOM_YOUNGSTER
	warpsound
	waitsfx
	applymovement BATTLETOWERBATTLEROOM_YOUNGSTER, MovementData_BattleTowerBattleRoomOpponentWalksIn
	trainerpic YOUNGSTER
	opentext
	battletowertext BATTLETOWERTEXT_INTRO
	promptbutton
	closetrainpic
	closetext
	special BattleTowerBattle ; predef StartBattle
	special FadeOutPalettes
	reloadmap
	ifnotequal $0, Script_FailedBattleTowerChallenge
	readmem wNrOfBeatenBattleTowerTrainers
	ifequal BATTLETOWER_STREAK_LENGTH, Script_BeatenAllTrainers
	applymovement BATTLETOWERBATTLEROOM_YOUNGSTER, MovementData_BattleTowerBattleRoomOpponentWalksOut
	warpsound
	disappear BATTLETOWERBATTLEROOM_YOUNGSTER
	applymovement BATTLETOWERBATTLEROOM_RECEPTIONIST, MovementData_BattleTowerBattleRoomReceptionistWalksToPlayer
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerTurnsToFaceReceptionist
	opentext
	trainerpic BEAUTY
	writetext Text_YourMonWillBeHealedToFullHealth
	waitbutton
	closetrainpic
	closetext
	playmusic MUSIC_HEAL
	special FadeOutPalettes
	special LoadMapPalettes
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	trainerpic BEAUTY
	opentext
	writetext Text_NextUpOpponentNo
	yesorno
	iffalse Script_DontBattleNextOpponent
Script_ContinueAndBattleNextOpponent:
	closetrainpic
	closetext
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerTurnsToFaceNextOpponent
	applymovement BATTLETOWERBATTLEROOM_RECEPTIONIST, MovementData_BattleTowerBattleRoomReceptionistWalksAway
	sjump Script_BattleRoomLoop

Script_DontBattleNextOpponent:
	writetext Text_SaveAndEndTheSession
	yesorno
	iffalse Script_DontSaveAndEndTheSession
	setval BATTLETOWERACTION_SAVELEVELGROUP ; save level group
	special BattleTowerAction
	setval BATTLETOWERACTION_SAVEOPTIONS ; choose reward
	special BattleTowerAction
	setval BATTLETOWERACTION_SAVE_AND_QUIT ; quicksave
	special BattleTowerAction
	playsound SFX_SAVE
	waitsfx
	special FadeOutPalettes
	special Reset
Script_DontSaveAndEndTheSession:
	writetext Text_CancelYourBattleRoomChallenge
	yesorno
	iffalse Script_ContinueAndBattleNextOpponent
	setval BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	setval BATTLETOWERACTION_06
	special BattleTowerAction
	closetrainpic
	closetext
	special FadeOutPalettes
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
	trainerpic BEAUTY
	opentext
	sjump Script_BattleTowerHopeToServeYouAgain

Script_FailedBattleTowerChallenge:
	pause 60
	special BattleTowerFade
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
	setval BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext Text_ThanksForVisiting
	waitbutton
	closetrainpic
	closetext
	end

Script_BeatenAllTrainers:
	pause 60
	special BattleTowerFade
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
Script_BeatenAllTrainers2:
	refreshscreen
	trainerpic BEAUTY
	opentext
	writetext Text_CongratulationsYouveBeatenAllTheTrainers
	sjump Script_GivePlayerHisPrize

Script_TooMuchTimeElapsedNoRegister: ; unreferenced
	setval BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	opentext
	writetext Text_TooMuchTimeElapsedNoRegister
	waitbutton
	closetext
	end

Script_ChallengeCanceled: ; unreferenced
	setval BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	setval BATTLETOWERACTION_06
	special BattleTowerAction
	opentext
	writetext Text_ThanksForVisiting
	writetext Text_WeHopeToServeYouAgain
	waitbutton
	closetext
	end

Text_ReturnedAfterSave_Mobile: ; unreferenced
	text "You'll be returned"
	line "after you SAVE."
	done

BattleTowerBattleRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BATTLE_TOWER_HALLWAY, 4
	warp_event  4,  7, BATTLE_TOWER_HALLWAY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  0, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BATTLE_TOWER_BATTLE_ROOM_YOUNGSTER
	object_event  1,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
