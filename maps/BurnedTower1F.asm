	object_const_def
	const BURNEDTOWER1F_ROCK
	const BURNEDTOWER1F_EUSINE
	const BURNEDTOWER1F_SILVER
	const BURNEDTOWER1F_JASON
	const BURNEDTOWER1F_POKE_BALL

BurnedTower1F_MapScripts:
	def_scene_scripts
	scene_script .EusineScene ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_BURNEDTOWER1F_RIVAL_BATTLE
	scene_script .DummyScene2 ; SCENE_BURNEDTOWER1F_NOTHING

	def_callbacks
	callback MAPCALLBACK_TILES, .HoleAndLadder

.EusineScene:
	sdefer .MeetEusine
	end

.DummyScene1:
	end

.DummyScene2:
	end

.HoleAndLadder:
	checkevent EVENT_HOLE_IN_BURNED_TOWER
	iftrue .KeepHoleOpen
	changeblock 10, 8, $32 ; floor
.KeepHoleOpen:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .HideBasement
	changeblock 6, 14, $09 ; ladder
.HideBasement:
	endcallback

.MeetEusine:
	turnobject BURNEDTOWER1F_EUSINE, DOWN
	showemote EMOTE_SHOCK, BURNEDTOWER1F_EUSINE, 15
	applymovement BURNEDTOWER1F_EUSINE, BurnedTower1FEusineMovement
	refreshscreen
	opentext
	trainerpic MYSTICALMAN
	writetext BurnedTower1FEusineIntroText
	waitbutton
	closetrainpic
	closetext
	moveobject BURNEDTOWER1F_EUSINE, 9, 14
	setscene SCENE_BURNEDTOWER1F_RIVAL_BATTLE
	end

BurnedTowerRivalBattleScript:
	showemote EMOTE_SHOCK, BURNEDTOWER1F_SILVER, 15
	special FadeOutMusic
	pause 15
	turnobject BURNEDTOWER1F_SILVER, RIGHT
	pause 15
	applymovement PLAYER, BurnedTowerMovement_PlayerWalksToSilver
	applymovement BURNEDTOWER1F_SILVER, BurnedTowerMovement_SilverWalksToPlayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	refreshscreen
	opentext
	trainerpic RIVAL1
	writetext BurnedTowerSilver_BeforeText
	waitbutton
	closetrainpic
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .caiman
	checkevent EVENT_GOT_SQUIRREL_FROM_ELM
	iftrue .squirrel
	winlosstext BurnedTowerSilver_WinText, BurnedTowerSilver_LossText
	setlasttalked BURNEDTOWER1F_SILVER
	loadtrainer RIVAL1, RIVAL1_3_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.caiman
	winlosstext BurnedTowerSilver_WinText, BurnedTowerSilver_LossText
	setlasttalked BURNEDTOWER1F_SILVER
	loadtrainer RIVAL1, RIVAL1_3_SQUIRREL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.squirrel
	winlosstext BurnedTowerSilver_WinText, BurnedTowerSilver_LossText
	setlasttalked BURNEDTOWER1F_SILVER
	loadtrainer RIVAL1, RIVAL1_3_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.returnfrombattle
	playmusic MUSIC_RIVAL_AFTER
	refreshscreen
	opentext
	trainerpic RIVAL1
	writetext BurnedTowerSilver_AfterText1
	waitbutton
	closetrainpic
	closetext
	setscene SCENE_BURNEDTOWER1F_NOTHING
	setevent EVENT_RIVAL_BURNED_TOWER
	special FadeOutMusic
	pause 15
	earthquake 50
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 10, 8, $25 ; hole
	reloadmappart
	pause 15
	applymovement PLAYER, BurnedTower1FMovement_PlayerStartsToFall
	playsound SFX_KINESIS
	showemote EMOTE_SHOCK, BURNEDTOWER1F_SILVER, 20
	refreshscreen
	opentext
	trainerpic RIVAL1
	writetext BurnedTowerSilver_AfterText2
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_HOLE_IN_BURNED_TOWER
	pause 15
	warpcheck
	end

BurnedTower1FEusineScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic MYSTICALMAN
	writetext BurnedTower1FEusineText
	waitbutton
	closetrainpic
	closetext
	end

BurnedTower1FJasonScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic JASON
	writetext BurnedTower1FJasonText
	waitbutton
	closetrainpic
	closetext
	end

BurnedTower1FRock:
	jumpstd SmashRockScript

BurnedTower1FHiddenEther:
	hiddenitem ETHER, EVENT_BURNED_TOWER_1F_HIDDEN_ETHER

BurnedTower1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_BURNED_TOWER_1F_HIDDEN_ULTRA_BALL

BurnedTower1FHPUp:
	itemball HP_UP

BurnedTowerMovement_PlayerWalksToSilver:
	step LEFT
	step_end

BurnedTowerMovement_SilverWalksToPlayer:
	step RIGHT
	step_end

BurnedTower1FMovement_PlayerStartsToFall:
	skyfall_top
	step_end

BurnedTower1FEusineMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

BurnedTowerSilver_BeforeText:
	text "... ... ... ..."

	para "I came here to"
	line "follow the smell"
	
	para "of hickory smoked"
	line "ANIMALs."
	
	para "Instead, I find"
	line "a burned building"	
	cont "and an ugly idiot."
	
	para "W-what? No, I am"
	line "not holding a"
	
	para "mirror! Grr!"
	done

BurnedTowerSilver_WinText:
	text "Maybe I'm the ugly"
	line "idiot after all?"
	done

BurnedTowerSilver_AfterText1:
	text "Anyway, I'm going"
	line "to go get some BBQ"
	cont "from another town."
	done

BurnedTowerSilver_LossText:
	text "I'm a handsome"
	line "man and everyone"
	cont "says so."
	done

BurnedTowerSilver_AfterText2:
	text "Now my self-esteem"
	line "is weird. Thanks!"
	done

BurnedTower1FEusineIntroText:
	text "EUSINE: My name's"
	line "EUSINE."

	para "I'm on the trail"
	line "of an ANIMAL named"
	cont "FENRIR."

	para "And you are...?"

	para "<PLAYER>? Glad to"
	line "meet you!"

	para "I heard rumors"
	line "that FENRIR is in"

	para "this BURNED TOWER,"
	line "so I came to look."

	para "But where exactly"
	line "could it be?"
	done

BurnedTower1FEusineText:
	text "EUSINE: I heard"
	line "that FENRIR is in"

	para "this BURNED TOWER,"
	line "so I came to look."

	para "But where exactly"
	line "could it be?"
	done

BurnedTower1FJasonText:
	text "JASON: ECRUTEAK's"
	line "GYM LEADER has to"

	para "study what are"
	line "said to be the"

	para "legendary ANIMALs"
	line "--FENRIR, CERBERUS"
	cont "and BARGHEST."

	para "EUSINE is here, so"
	line "I've decided to"

	para "investigate the"
	line "TOWER with him."
	
	para "The poor idiot is"
	line "a danger to his"
	cont "own safety."
	done

BurnedTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 13
	warp_event 10, 15, ECRUTEAK_CITY, 13
	warp_event 10,  9, BURNED_TOWER_B1F, 1
	warp_event  5,  5, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event  5,  6, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event  4,  6, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event 15,  4, BURNED_TOWER_B1F, 2 ; inaccessible, left over from G/S
	warp_event 15,  5, BURNED_TOWER_B1F, 2 ; inaccessible, left over from G/S
	warp_event 10,  7, BURNED_TOWER_B1F, 3 ; inaccessible, left over from G/S
	warp_event  5, 14, BURNED_TOWER_B1F, 4 ; inaccessible, left over from G/S
	warp_event  4, 14, BURNED_TOWER_B1F, 4 ; inaccessible, left over from G/S
	warp_event 14, 14, BURNED_TOWER_B1F, 5 ; inaccessible, left over from G/S
	warp_event 15, 14, BURNED_TOWER_B1F, 5 ; inaccessible, left over from G/S
	warp_event  7, 15, BURNED_TOWER_B1F, 6 ; inaccessible, left over from G/S

	def_coord_events
	coord_event 11,  9, SCENE_BURNEDTOWER1F_RIVAL_BATTLE, BurnedTowerRivalBattleScript

	def_bg_events
	bg_event  8,  7, BGEVENT_ITEM, BurnedTower1FHiddenEther
	bg_event 13, 11, BGEVENT_ITEM, BurnedTower1FHiddenUltraBall

	def_object_events
	object_event 15,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 12, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BurnedTower1FEusineScript, EVENT_BURNED_TOWER_1F_EUSINE
	object_event  8,  9, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, ObjectEvent, EVENT_RIVAL_BURNED_TOWER
	object_event 14, 14, SPRITE_JASON, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BurnedTower1FJasonScript, EVENT_BURNED_TOWER_JASON
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTower1FHPUp, EVENT_BURNED_TOWER_1F_HP_UP
