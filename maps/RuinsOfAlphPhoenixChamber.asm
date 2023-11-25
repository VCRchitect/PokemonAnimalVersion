RuinsOfAlphPhoenixChamber_MapScripts:
	def_scene_scripts
	scene_script .CheckWall ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.CheckWall:
	special PhoenixChamber
	checkevent EVENT_WALL_OPENED_IN_PHOENIX_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer .WallOpenScript
	end

.DummyScene:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_PHOENIX_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_PHOENIX_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

.WallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $30 ; open wall
	reloadmappart
	earthquake 50
	setscene SCENE_FINISHED
	closetext
	end

RuinsOfAlphPhoenixChamberPuzzle:
	refreshscreen
	setval LETTAHPUZZLE_PHOENIX
	special LettahPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_PHOENIX_PUZZLE
	setflag ENGINE_UNLOCKED_LETTAHS_X_TO_Z
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphPhoenixChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphPhoenixChamberAncientReplica:
	jumptext RuinsOfAlphPhoenixChamberAncientReplicaText

RuinsOfAlphPhoenixChamberDescriptionSign:
	jumptext RuinsOfAlphPhoenixChamberDescriptionText

RuinsOfAlphPhoenixChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphPhoenixChamberWallPatternLeftText
	setval LETTAHWORDS_PHOENIX
	special DisplayLettahWords
	closetext
	end

RuinsOfAlphPhoenixChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_PHOENIX_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphPhoenixChamberWallPatternRightText
	setval LETTAHWORDS_PHOENIX
	special DisplayLettahWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphPhoenixChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphPhoenixChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphPhoenixChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphPhoenixChamberLettahText: ; unreferenced
	text "It's LETTAH text!"
	done

RuinsOfAlphPhoenixChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphPhoenixChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphPhoenixChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphPhoenixChamberDescriptionText:
	text "An ANIMAL that"
	line "flew gracefully on"

	para "rainbow-colored"
	line "wings."
	done

RuinsOfAlphPhoenixChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 2
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 3
	warp_event  4,  0, RUINS_OF_ALPH_PHOENIX_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphPhoenixChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphPhoenixChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphPhoenixChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphPhoenixChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphPhoenixChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphPhoenixChamberWallPatternRight

	def_object_events
