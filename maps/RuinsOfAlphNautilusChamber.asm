RuinsOfAlphNautilusChamber_MapScripts:
	def_scene_scripts
	scene_script .CheckWall ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.CheckWall:
	special NautilusChamber
	checkevent EVENT_WALL_OPENED_IN_NAUTILUS_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer .WallOpenScript
	end

.DummyScene:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_NAUTILUS_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_NAUTILUS_PUZZLE
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

RuinsOfAlphNautilusChamberPuzzle:
	refreshscreen
	setval LETTAHPUZZLE_NAUTILUS
	special LettahPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_NAUTILUS_PUZZLE
	setflag ENGINE_UNLOCKED_LETTAHS_L_TO_R
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphNautilusChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphNautilusChamberAncientReplica:
	jumptext RuinsOfAlphNautilusChamberAncientReplicaText

RuinsOfAlphNautilusChamberDescriptionSign:
	jumptext RuinsOfAlphNautilusChamberDescriptionText

RuinsOfAlphNautilusChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphNautilusChamberWallPatternLeftText
	setval LETTAHWORDS_WATER
	special DisplayLettahWords
	closetext
	end

RuinsOfAlphNautilusChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_NAUTILUS_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphNautilusChamberWallPatternRightText
	setval LETTAHWORDS_WATER
	special DisplayLettahWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphNautilusChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphNautilusChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphNautilusChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphNautilusChamberLettahText: ; unreferenced
	text "It's LETTAH text!"
	done

RuinsOfAlphNautilusChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphNautilusChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphNautilusChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphNautilusChamberDescriptionText:
	text "This ANIMAL"
	line "drifted in the"

	para "sea by twisting"
	line "its ten tentacles."
	done

RuinsOfAlphNautilusChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7
	warp_event  4,  0, RUINS_OF_ALPH_NAUTILUS_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphNautilusChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphNautilusChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphNautilusChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphNautilusChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphNautilusChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphNautilusChamberWallPatternRight

	def_object_events
