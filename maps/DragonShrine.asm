	object_const_def
	const DRAGONSHRINE_ELDER1
	const DRAGONSHRINE_ELDER2
	const DRAGONSHRINE_ELDER3
	const DRAGONSHRINE_CLAIR

DragonShrine_MapScripts:
	def_scene_scripts
	scene_script .DragonShrineTest ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks

.DragonShrineTest:
	sdefer .DragonShrineTestScript
	end

.DummyScene:
	end

.DragonShrineTestScript:
	applymovement PLAYER, DragonShrinePlayerWalkInMovement
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderStepDownMovement
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineElderGreetingText
	promptbutton
.Question1:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	writetext DragonShrineQuestion1Text
	promptbutton
	closetrainpic
	loadmenu DragonShrineQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
	end

.Question2:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	writetext DragonShrineQuestion2Text
	promptbutton
	closetrainpic
	loadmenu DragonShrineQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.Question3:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	writetext DragonShrineQuestion3Text
	promptbutton
	closetrainpic
	loadmenu DragonShrineQuestion3_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .RightAnswer
.Question4:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	writetext DragonShrineQuestion4Text
	promptbutton
	closetrainpic
	loadmenu DragonShrineQuestion4_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
.Question5:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	writetext DragonShrineQuestion5Text
	promptbutton
	closetrainpic
	loadmenu DragonShrineQuestion5_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.RightAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .PassedTheTest
	writetext DragonShrineRightAnswerText
	promptbutton
	closetrainpic
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question2
.WrongAnswer:
	closetext
	closetrainpic
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	trainerpic SAGE
	writetext DragonShrineWrongAnswerText1
	waitbutton
	closetrainpic
	closetext
	turnobject DRAGONSHRINE_ELDER1, DOWN
	trainerpic SAGE
	opentext
	writetext DragonShrineWrongAnswerText2
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question1
.PassedTheTest:
	writetext DragonShrinePassedTestText
	waitbutton
	closetrainpic
	closetext
	playsound SFX_ENTER_DOOR
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_CLAIR
	appear DRAGONSHRINE_CLAIR
	waitsfx
	turnobject PLAYER, DOWN
	pause 30
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkInMovement
	turnobject DRAGONSHRINE_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	turnobject DRAGONSHRINE_ELDER1, LEFT
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineClairYouPassedText
	waitbutton
	closetrainpic
	closetext
	special FadeOutMusic
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairBigStepLeftMovement
	refreshscreen
	opentext
	trainerpic CLAIR
	writetext DragonShrineClairThatCantBeText
	waitbutton
	closetrainpic
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairSlowStepLeftMovement
	refreshscreen
	opentext
	trainerpic CLAIR
	writetext DragonShrineClairYoureLyingText
	waitbutton
	closetrainpic
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkToClairMovement
	turnobject DRAGONSHRINE_CLAIR, UP
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineMustIInformLanceText
	waitbutton
	closetrainpic
	closetext
	showemote EMOTE_SHOCK, DRAGONSHRINE_CLAIR, 15
	refreshscreen
	opentext
	trainerpic CLAIR
	writetext DragonShrineIUnderstandText
	waitbutton
	closetrainpic
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairTwoSlowStepsRightMovement
	refreshscreen
	opentext
	trainerpic CLAIR
	writetext DragonShrineHereRisingBadgeText
	waitbutton
	setflag ENGINE_RISINGBADGE
	playsound SFX_GET_BADGE
	waitsfx
	special RestartMapMusic
	specialphonecall SPECIALCALL_MASTERBALL
	setscene SCENE_FINISHED
	setmapscene DRAGONS_DEN_B1F, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM
	writetext DragonShrinePlayerReceivedRisingBadgeText
	promptbutton
	writetext DragonShrineRisingBadgeExplanationText
	waitbutton
	closetrainpic
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway1Movement
	turnobject DRAGONSHRINE_CLAIR, UP
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway2Movement
	turnobject PLAYER, UP
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineElderScoldsClairText
	waitbutton
	closetrainpic
	closetext
	refreshscreen
	opentext
	trainerpic CLAIR
	writetext DragonShrineSpeechlessText
	waitbutton
	closetrainpic
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkOutMovement
	playsound SFX_ENTER_DOOR
	disappear DRAGONSHRINE_CLAIR
	waitsfx
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DragonShrineElder1Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .DontGiveSerpentYet
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iftrue .ReceivedSerpent
	checkevent EVENT_GOT_SERPENT
	iffalse .GiveSerpent
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .BeatRivalInMtMoon
	writetext DragonShrineClairsGrandfatherText
	waitbutton
	closetrainpic
	closetext
	end

.GiveSerpent:
	writetext DragonShrineTakeThisSerpentText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	writetext DragonShrinePlayerReceivedSerpentText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke SERPENT, 15
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	special GiveSerpent
	setevent EVENT_GOT_SERPENT
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetrainpic
	closetext
	end

.PartyFull:
	writetext DragonShrinePartyFullText
	waitbutton
	closetrainpic
	closetext
	end

.BeatRivalInMtMoon:
	writetext DragonShrineSilverIsInTrainingText
	waitbutton
	closetrainpic
	closetext
	end

.DontGiveSerpentYet:
	writetext DragonShrineComeAgainText
	waitbutton
	closetrainpic
	closetext
	end

.ReceivedSerpent:
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetrainpic
	closetext
	end

DragonShrineElder2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineElder2Text
	waitbutton
	closetrainpic
	closetext
	end

DragonShrineElder3Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	writetext DragonShrineElder3Text
	waitbutton
	closetrainpic
	closetext
	end

DragonShrineQuestion1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Pal@"
	db "Underling@"
	db "Friend@"

DragonShrineQuestion2_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Strategy@"
	db "Raising@"
	db "Cheating@"

DragonShrineQuestion3_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Weak person@"
	db "Tough person@"
	db "Anybody@"

DragonShrineQuestion4_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Love@"
	db "Violence@"
	db "Knowledge@"

DragonShrineQuestion5_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Tough@"
	db "Both@"
	db "Weak@"

DragonShrinePlayerWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineElderStepDownMovement:
	slow_step DOWN
	step_end

DragonShrineElderWalkToClairMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head DOWN
	step_end

DragonShrineElderWalkAway1Movement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineElderWalkAway2Movement:
	slow_step RIGHT
	turn_head DOWN
	step_end

DragonShrineClairWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineClairBigStepLeftMovement:
	fix_facing
	big_step LEFT
	step_end

DragonShrineClairSlowStepLeftMovement:
	slow_step LEFT
	remove_fixed_facing
	step_end

DragonShrineClairTwoSlowStepsRightMovement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineClairWalkOutMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DragonShrineElderGreetingText:
	text "Hm... Good to see"
	line "you here."

	para "No need to explain"
	line "why you came."

	para "CLAIR sent you"
	line "here, didn't she?"

	para "That girl is a"
	line "handful..."

	para "I am sorry, but I"
	line "must test you."

	para "Not to worry, you"
	line "are to answer only"
	cont "a few questions."

	para "Ready?"
	done

DragonShrineQuestion1Text:
	text "What are ANIMALs"
	line "to you?"
	done

DragonShrineQuestion2Text:
	text "What helps you to"
	line "win battles?"
	done

DragonShrineQuestion3Text:
	text "What kind of"
	line "trainer do you"
	cont "wish to battle?"
	done

DragonShrineQuestion4Text:
	text "What is most"
	line "important for"
	cont "raising ANIMALs?"
	done

DragonShrineQuestion5Text:
	text "Strong ANIMALs."
	line "Weak ANIMALs."

	para "Which is more"
	line "important?"
	done

DragonShrinePassedTestText:
	text "Hm... I see..."

	para "You care deeply"
	line "for ANIMALs."

	para "Very commendable."

	para "That conviction is"
	line "what is important!"

	para "<PLAYER>, don't"
	line "lose that belief."

	para "It will see you"
	line "through at the"
	cont "ANIMAL LEAGUE."
	done

DragonShrineMustIInformLanceText:
	text "CLAIR!"

	para "This child is"
	line "impeccable, in"
	cont "skill and spirit!"

	para "Admit defeat and"
	line "confer the RISING-"
	cont "BADGE!"

	para "Or must I inform"
	line "LANCE of this?"
	done

DragonShrineElderScoldsClairText:
	text "CLAIR..."

	para "Reflect upon what"
	line "it is that you"

	para "lack and this"
	line "child has."
	done

DragonShrineComeAgainText:
	text "Come again, if you"
	line "so desire."
	done

DragonShrineTakeThisSerpentText:
	text "Hm... Good to see"
	line "you here."

	para "Your arrival is"
	line "most fortunate."

	para "I have something"
	line "for you."

	para "Take this SERPENT"
	line "as proof that I"

	para "have recognized"
	line "your worth."
	done

DragonShrinePlayerReceivedSerpentText:
	text "<PLAYER> received"
	line "SERPENT!"
	done

DragonShrinePartyFullText:
	text "Hm? Your ANIMAL"
	line "party is full."
	done

DragonShrineSymbolicDragonText:
	text "Dragon ANIMALs are"
	line "symbolic of our"
	cont "clan."

	para "You have shown"
	line "that you can be"

	para "entrusted with"
	line "one."
	done

DragonShrineClairsGrandfatherText:
	text "CLAIR appears to"
	line "have learned an"

	para "invaluable lesson"
	line "from you."

	para "I thank you as her"
	line "grandfather."
	done

DragonShrineSilverIsInTrainingText:
	text "A boy close to"
	line "your age is in"
	cont "training here."

	para "He is much like"
	line "CLAIR when she was"

	para "younger. It is a"
	line "little worrisome."
	done

DragonShrineWrongAnswerText1:
	text "Hah? I didn't"
	line "quite catch that..."
	done

DragonShrineWrongAnswerText2:
	text "What was it you"
	line "said?"
	done

DragonShrineRightAnswerText:
	text "Oh, I understand..."
	done

DragonShrineElder2Text:
	text "It's been quite"
	line "some time since a"

	para "trainer has gained"
	line "our MASTER's rare"
	cont "approval."

	para "In fact, not since"
	line "Master LANCE."
	done

DragonShrineElder3Text:
	text "You know young"
	line "Master LANCE?"

	para "He looks so much"
	line "like our MASTER"
	cont "did in his youth."

	para "It's in their"
	line "blood."
	done

DragonShrineClairYouPassedText:
	text "So how did it go?"

	para "I guess there's no"
	line "point in asking."

	para "You did fail?"

	para "..."

	para "What? You passed?"
	done

DragonShrineClairThatCantBeText:
	text "That can't be!"
	done

DragonShrineClairYoureLyingText:
	text "You're lying!"

	para "Even I haven't"
	line "been approved!"
	done

DragonShrineIUnderstandText:
	text "I-I understand..."
	done

DragonShrineHereRisingBadgeText:
	text "Here, this is the"
	line "RISINGBADGE..."

	para "Hurry up! Take it!"
	done

DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER> received"
	line "RISINGBADGE."
	done

DragonShrineRisingBadgeExplanationText:
	text "RISINGBADGE will"
	line "enable your"

	para "ANIMALs to use the"
	line "move for climbing"
	cont "waterfalls."

	para "Also, all ANIMALs"
	line "will recognize you"

	para "as a trainer and"
	line "obey your every"

	para "command without"
	line "question."
	done

DragonShrineSpeechlessText:
	text "..."
	done

DragonShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, DRAGONS_DEN_B1F, 2
	warp_event  5,  9, DRAGONS_DEN_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder1Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  2,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder2Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder3Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  8, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGON_SHRINE_CLAIR
