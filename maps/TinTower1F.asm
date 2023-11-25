	object_const_def
	const TINTOWER1F_FENRIR
	const TINTOWER1F_BARGHEST
	const TINTOWER1F_CERBERUS
	const TINTOWER1F_EUSINE
	const TINTOWER1F_SAGE1
	const TINTOWER1F_SAGE2
	const TINTOWER1F_SAGE3
	const TINTOWER1F_SAGE4
	const TINTOWER1F_SAGE5
	const TINTOWER1F_SAGE6

TinTower1F_MapScripts:
	def_scene_scripts
	scene_script .FaceFenrir ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .NPCsCallback
	callback MAPCALLBACK_TILES, .StairsCallback

.FaceFenrir:
	sdefer .FenrirBattle
	end

.DummyScene:
	end

.NPCsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .GotRainbowWing
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .FaceBeasts
	special BeastsCheck
	iffalse .FaceBeasts
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
.GotRainbowWing:
	checkevent EVENT_FOUGHT_PHOENIX
	iffalse .Done
	appear TINTOWER1F_EUSINE
.Done:
	endcallback

.FaceBeasts:
	checkevent EVENT_FOUGHT_FENRIR
	iftrue .FoughtFenrir
	appear TINTOWER1F_FENRIR
	setval BARGHEST
	special MonCheck
	iftrue .NoBarghest
	appear TINTOWER1F_BARGHEST
	sjump .CheckCerberus

.NoBarghest:
	disappear TINTOWER1F_BARGHEST
.CheckCerberus:
	setval CERBERUS
	special MonCheck
	iftrue .NoCerberus
	appear TINTOWER1F_CERBERUS
	sjump .BeastsDone

.NoCerberus:
	disappear TINTOWER1F_CERBERUS
.BeastsDone:
	endcallback

.FoughtFenrir:
	disappear TINTOWER1F_FENRIR
	disappear TINTOWER1F_BARGHEST
	disappear TINTOWER1F_CERBERUS
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	endcallback

.StairsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .DontHideStairs
	changeblock 10, 2, $09 ; floor
.DontHideStairs:
	endcallback

.FenrirBattle:
	applymovement PLAYER, TinTower1FPlayerEntersMovement
	pause 15
	setval BARGHEST
	special MonCheck
	iftrue .Next1 ; if player caught Barghest, it doesn't appear in Tin Tower
	applymovement TINTOWER1F_BARGHEST, TinTower1FBarghestApproachesMovement
	turnobject PLAYER, LEFT
	cry BARGHEST
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_BARGHEST, TinTower1FBarghestLeavesMovement
	disappear TINTOWER1F_BARGHEST
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next1:
	setval CERBERUS
	special MonCheck
	iftrue .Next2 ; if player caught Cerberus, it doesn't appear in Tin Tower
	applymovement TINTOWER1F_CERBERUS, TinTower1FCerberusApproachesMovement
	turnobject PLAYER, RIGHT
	cry CERBERUS
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_CERBERUS, TinTower1FCerberusLeavesMovement
	disappear TINTOWER1F_CERBERUS
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next2:
	turnobject PLAYER, UP
	pause 10
	applymovement PLAYER, TinTower1FPlayerBacksUpMovement
	applymovement TINTOWER1F_FENRIR, TinTower1FFenrirApproachesMovement
	cry FENRIR
	pause 20
	loadwildmon FENRIR, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	startbattle
	dontrestartmapmusic
	disappear TINTOWER1F_FENRIR
	setevent EVENT_FOUGHT_FENRIR
	setevent EVENT_SAW_FENRIR_ON_ROUTE_42
	setmapscene ROUTE_42, SCENE_ROUTE42_NOTHING
	setevent EVENT_SAW_FENRIR_ON_ROUTE_36
	setmapscene ROUTE_36, SCENE_ROUTE36_NOTHING
	setevent EVENT_SAW_FENRIR_AT_CIANWOOD_CITY
	setmapscene CIANWOOD_CITY, SCENE_CIANWOODCITY_NOTHING
	setscene SCENE_FINISHED
	clearevent EVENT_SET_WHEN_FOUGHT_PHOENIX
	reloadmapafterbattle
	pause 20
	turnobject PLAYER, DOWN
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_EUSINE, 10, 15
	appear TINTOWER1F_EUSINE
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineEntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE1, 9, 15
	appear TINTOWER1F_SAGE1
	applymovement TINTOWER1F_SAGE1, TinTower1FSage1EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE2, 9, 15
	appear TINTOWER1F_SAGE2
	applymovement TINTOWER1F_SAGE2, TinTower1FSage2EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE3, 9, 15
	appear TINTOWER1F_SAGE3
	applymovement TINTOWER1F_SAGE3, TinTower1FSage3EntersMovement
	moveobject TINTOWER1F_SAGE1, 7, 13
	moveobject TINTOWER1F_SAGE2, 9, 13
	moveobject TINTOWER1F_SAGE3, 11, 13
	turnobject PLAYER, RIGHT
	opentext
	writetext TinTower1FEusineFenrirText
	waitbutton
	closetext
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineLeavesMovement
	playsound SFX_EXIT_BUILDING
	disappear TINTOWER1F_EUSINE
	waitsfx
	special FadeOutMusic
	pause 20
	playmapmusic
	end

TinTower1FSage1Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TinTower1FSage2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TinTower1FSage3Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TinTower1FSage4Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TinTower1FSage5Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	checkevent EVENT_FOUGHT_PHOENIX
	iftrue .FoughtPhoenix
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .GotRainbowWing
	writetext TinTower1FSage5Text1
	promptbutton
	closetrainpic
	verbosegiveitem RAINBOW_WING
	closetext
	refreshscreen
	earthquake 72
	waitsfx
	playsound SFX_STRENGTH
	changeblock 10, 2, $20 ; stairs
	reloadmappart
	setevent EVENT_GOT_RAINBOW_WING
	closetext
	refreshscreen
	opentext
.GotRainbowWing:
	trainerpic SAGE
	writetext TinTower1FSage5Text2
	waitbutton
	closetrainpic
	closetext
	end

.FoughtPhoenix:
	writetext TinTower1FSage5Text3
	waitbutton
	closetrainpic
	closetext
	end

TinTower1FSage6Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAGE
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

TinTower1FEusine:
	faceplayer
	refreshscreen
	opentext
	trainerpic MYSTICALMAN
	writetext TinTower1FEusinePhoenixText
	waitbutton
	closetrainpic
	closetext
	end
	
TinTower1FPlayerEntersMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

TinTower1FBarghestApproachesMovement:
	set_sliding
	fast_jump_step DOWN
	remove_sliding
	step_end

TinTower1FBarghestLeavesMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step RIGHT
	fast_jump_step DOWN
	remove_sliding
	step_end

TinTower1FCerberusApproachesMovement:
	set_sliding
	fast_jump_step DOWN
	remove_sliding
	step_end

TinTower1FCerberusLeavesMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step LEFT
	fast_jump_step DOWN
	remove_sliding
	step_end

TinTower1FFenrirApproachesMovement:
	set_sliding
	fast_jump_step DOWN
	remove_sliding
	step_end

TinTower1FPlayerBacksUpMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

TinTower1FEusineEntersMovement:
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

TinTower1FEusineLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

TinTower1FSage1EntersMovement:
	step UP
	step UP
	step LEFT
	step LEFT
	turn_head UP
	step_end

TinTower1FSage2EntersMovement:
	step UP
	step UP
	step_end

TinTower1FSage3EntersMovement:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step_end

TinTower1FEusineFenrirText:
	text "EUSINE: Awesome!"
	line "Too awesome, even!"

	para "I've never seen a"
	line "battle that great."

	para "That was truly"
	line "inspiring to see."

	para "FENRIR was tough,"
	line "but you were even"

	para "more incredible,"
	line "<PLAYER>."

	para "I heard FENRIR's"
	line "mystic power"

	para "summons a rainbow-"
	line "colored ANIMAL."

	para "Maybe, just maybe,"
	line "what went on today"

	para "will cause that"
	line "ANIMAL to appear."

	para "I'm going to study"
	line "the legends more."

	para "Thanks for showing"
	line "me that fantastic"
	cont "battle."

	para "Later, <PLAYER>!"
	done

TinTower1FSage5Text1:
	text "This will protect"
	line "you. Take it."
	done

TinTower1FSage5Text2:
	text "Now, go."
	done

TinTower1FEusinePhoenixText:
	text "I knew it."

	para "I knew you'd get"
	line "to see the ANIMAL"

	para "of rainbow colors,"
	line "<PLAYER>."

	para "It happened just"
	line "as I envisioned."

	para "My research isn't"
	line "bad, I might say."

	para "I'm going to keep"
	line "studying ANIMALs"

	para "to become a famous"
	line "ANIMAL MANIAC!"
	done

TinTower1FSage5Text3:
	text "When the legendary"
	line "ANIMALs appeared,"

	para "They struck terror"
	line "in those who saw"
	cont "their rise."

	para "And..."

	para "Some even took to"
	line "futile attacks."

	para "The legendary"
	line "ANIMALs, knowing"

	para "their own power,"
	line "fled, ignoring the"
	cont "frightened people."
	done

TinTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 12
	warp_event 10, 15, ECRUTEAK_CITY, 12
	warp_event 10,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_FENRIR, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TIN_TOWER_1F_FENRIR
	object_event  7,  9, SPRITE_BARGHEST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TIN_TOWER_1F_BARGHEST
	object_event 12,  9, SPRITE_CERBERUS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TIN_TOWER_1F_CERBERUS
	object_event  8,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TinTower1FEusine, EVENT_TIN_TOWER_1F_EUSINE
	object_event  5,  9, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage1Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage2Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 14,  6, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage3Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage4Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event  9,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage5Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event 14,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage6Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
