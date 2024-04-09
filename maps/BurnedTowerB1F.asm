	object_const_def
	const BURNEDTOWERB1F_BOULDER
	const BURNEDTOWERB1F_BARGHEST1
	const BURNEDTOWERB1F_CERBERUS1
	const BURNEDTOWERB1F_FENRIR1
	const BURNEDTOWERB1F_BARGHEST2
	const BURNEDTOWERB1F_CERBERUS2
	const BURNEDTOWERB1F_FENRIR2
	const BURNEDTOWERB1F_POKE_BALL
	const BURNEDTOWERB1F_EUSINE

BurnedTowerB1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .LadderCallback

.DummyScene0:
	end

.DummyScene1:
	end

.LadderCallback:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .HideLadder
	changeblock 6, 14, $02 ; floor
.HideLadder:
	endcallback

ReleaseTheBeasts:
	playmusic MUSIC_NONE
	pause 30
	appear BURNEDTOWERB1F_BARGHEST1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_BARGHEST2
	pause 15
	cry BARGHEST
	appear BURNEDTOWERB1F_CERBERUS1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_CERBERUS2
	pause 15
	cry CERBERUS
	appear BURNEDTOWERB1F_FENRIR1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_FENRIR2
	pause 15
	cry FENRIR
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, LEFT
	applymovement BURNEDTOWERB1F_BARGHEST1, BurnedTowerBarghestMovement
	disappear BURNEDTOWERB1F_BARGHEST1
	waitsfx
	playsound SFX_WARP_FROM
	turnobject PLAYER, RIGHT
	applymovement BURNEDTOWERB1F_CERBERUS1, BurnedTowerCerberusMovement
	disappear BURNEDTOWERB1F_CERBERUS1
	waitsfx
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, UP
	applymovement BURNEDTOWERB1F_FENRIR1, BurnedTowerFenrirMovement1
	playsound SFX_WARP_FROM
	turnobject PLAYER, DOWN
	applymovement BURNEDTOWERB1F_FENRIR1, BurnedTowerFenrirMovement2
	turnobject PLAYER, UP
	pause 20
	cry FENRIR
	pause 30
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_FENRIR1, BurnedTowerFenrirMovement3
	turnobject PLAYER, DOWN
	disappear BURNEDTOWERB1F_FENRIR1
	waitsfx
	special RestartMapMusic
	setscene SCENE_FINISHED
	setevent EVENT_RELEASED_THE_BEASTS
	special InitRoamMons
	setmapscene ECRUTEAK_GYM, SCENE_FINISHED
	setmapscene CIANWOOD_CITY, SCENE_CIANWOODCITY_FENRIR_AND_EUSINE
	clearevent EVENT_SAW_FENRIR_AT_CIANWOOD_CITY
	setevent EVENT_ECRUTEAK_GYM_GRAMPS
	clearevent EVENT_ECRUTEAK_CITY_GRAMPS
	setevent EVENT_BURNED_TOWER_JASON
	setevent EVENT_BURNED_TOWER_1F_EUSINE
	appear BURNEDTOWERB1F_EUSINE
	refreshscreen
	changeblock 6, 14, $1b ; ladder
	reloadmappart
	closetrainpic
	closetext
	setscene SCENE_FINISHED
	end

BurnedTowerB1FEusine:
	faceplayer
	refreshscreen
	opentext
	trainerpic MYSTICALMAN
	writetext BurnedTowerB1FEusineText
	waitbutton
	closetrainpic
	closetext
	readvar VAR_FACING
	ifequal UP, .Movement2
	applymovement BURNEDTOWERB1F_EUSINE, BurnedTowerB1FEusineMovement1
	sjump .Finish

.Movement2:
	applymovement BURNEDTOWERB1F_EUSINE, BurnedTowerB1FEusineMovement2
.Finish:
	disappear BURNEDTOWERB1F_EUSINE
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

BurnedTowerB1FTMEndure:
	itemball TM_ENDURE

BurnedTowerB1FBoulder:
	jumpstd StrengthBoulderScript

BurnedTowerBarghestMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step LEFT
	remove_sliding
	step_end

BurnedTowerCerberusMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step RIGHT
	remove_sliding
	step_end

BurnedTowerFenrirMovement1:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step LEFT
	remove_sliding
	step_end

BurnedTowerFenrirMovement2:
	set_sliding
	fast_jump_step LEFT
	fast_jump_step UP
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

BurnedTowerUnusedMovement: ; unreferenced
	set_sliding
	big_step DOWN
	remove_sliding
	step_end

BurnedTowerFenrirMovement3:
	set_sliding
	big_step UP
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	remove_sliding
	step_end

BurnedTowerB1FEusineMovement2:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step_end

BurnedTowerB1FEusineMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

BurnedTowerB1FEusineText:
	text "EUSINE: I dug a"
	line "hole here, too..."

	para "I was shocked!"

	para "FENRIR raced by"
	line "like a blur, right"

	para "in front of my"
	line "eyes!"

	para "For ten years I"
	line "chased FENRIR,"

	para "and I finally got"
	line "to see it."

	para "I'm all choked up!"

	para "<PLAYER>, I owe"
	line "this all to you!"

	para "Thank you!"

	para "I heard that the"
	line "legendary ANIMALs"

	para "of ECRUTEAK test"
	line "chosen humans by"

	para "allowing them to"
	line "get close."

	para "I'm going to track"
	line "FENRIR."

	para "<PLAYER>, let's"
	line "meet again!"

	para "Farewell!"
	done

BurnedTowerB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  9, BURNED_TOWER_1F, 3
	warp_event 17,  7, BURNED_TOWER_1F, 7
	warp_event 10,  8, BURNED_TOWER_1F, 9
	warp_event  3, 13, BURNED_TOWER_1F, 10
	warp_event 17, 14, BURNED_TOWER_1F, 12
	warp_event  7, 15, BURNED_TOWER_1F, 14

	def_coord_events
	coord_event 10,  6, SCENE_DEFAULT, ReleaseTheBeasts

	def_bg_events

	def_object_events
	object_event 17,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FBoulder, -1
	object_event  7,  3, SPRITE_BARGHEST, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 12,  3, SPRITE_CERBERUS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 10,  4, SPRITE_FENRIR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event  7,  3, SPRITE_BARGHEST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 12,  3, SPRITE_CERBERUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 10,  4, SPRITE_FENRIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTowerB1FTMEndure, EVENT_BURNED_TOWER_B1F_TM_ENDURE
	object_event 10, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FEusine, EVENT_EUSINE_IN_BURNED_TOWER
