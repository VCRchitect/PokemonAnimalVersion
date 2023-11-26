	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	refreshscreen
	opentext
	trainerpic MOM
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	promptbutton
	closetrainpic
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	refreshscreen
	trainerpic MOM
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	sjump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetrainpic
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "ANMLGEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	refreshscreen
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_DEFAULT
	refreshscreen
	opentext
	trainerpic MOM
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetrainpic
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetrainpic
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetrainpic
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetrainpic
	closetext
	end

NeighborScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime EVE | NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	promptbutton
	sjump .Main

.DayScript:
	writetext NeighborDayIntroText
	promptbutton
	sjump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	promptbutton
	sjump .Main

.Main:
	writetext NeighborText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	turn_head LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Oh, <PLAYER>! Our"
	line "neighbor, PROF."

	para "ELM, was looking"
	line "for you."

	para "He has an errand"
	line "for you to run."

	para "Oh! I almost for-"
	line "got! Your ANIMAL"

	para "GEAR is back from"
	line "the repair shop."

	para "Here you go!"
	done

MomGivesPokegearText:
	text "ANIMAL GEAR, or"
	line "just ANMLGEAR."

	para "It looks like a"
	line "cheap watch."

	para "Oh, the day of the"
	line "week isn't set."

	para "I remembered that!"
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."

	para "By the way, do you"
	line "know how to use"
	cont "the PHONE?"

	para "I feel like you're"
	line "a simple kid..."
	done

KnowTheInstructionsText:
	text "Don't you just"
	line "turn the ANMLGEAR"

	para "on and select the"
	line "PHONE icon?"
	done

DontKnowTheInstructionsText:
	text "I'll read the"
	line "instructions."

	para "Turn the ANMLGEAR"
	line "on and select the"
	cont "PHONE icon."
	done

InstructionsNextText:
	text "Phone numbers are"
	line "stored in memory."

	para "Just choose a name"
	line "you want to call."

	para "Even you couldn't"
	line "forget that!"
	done

HurryUpElmIsWaitingText:
	text "PROF.ELM is wait-"
	line "ing for you."

	para "Hurry up, kid!"
	done

SoWhatWasProfElmsErrandText:
	text "So, what was PROF."
	line "ELM's errand?"

	para "..."

	para "That does sound"
	line "dangerous."

	para "But, you should be"
	line "proud that people"
	cont "have job offers."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you if"
	line "you get stabbed!"
	
	para "We have insurance!"
	done

NeighborMornIntroText:
	text "Good morning,"
	line "<PLAY_G>!"

	para "I'm visiting!"

	para "Afer my husband"
	line "got hit by a train"
	cont "I feel so free!"

	done

NeighborDayIntroText:
	text "Hello, <PLAY_G>!"
	line "I'm still here!"
	done

NeighborNiteIntroText:
	text "Good evening,"
	line "<PLAY_G>!"

	para "I'm staying here!"
	done

NeighborText:
	text "<PLAY_G>, have you"
	line "heard?"

	para "My daughter is"
	line "adamant about"

	para "something called"
	line "'internet clout.'"

	para "She'll do anything"
	line "for attention!"
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "Burnt Toast!"
	done

PlayersHouse1FSinkText:
	text "The sink smells"
	line "like egg farts."
	cont "I hate it here."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge..."

	para "Box Wine and"
	line "tap water!"
	done

PlayersHouse1FTVText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train..."

	para "I wish I were a"
	line "hobo too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  7,  7, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  8,  4, SCENE_DEFAULT, MeetMomLeftScript
	coord_event  9,  4, SCENE_DEFAULT, MeetMomRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, EVE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2

	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
