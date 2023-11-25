RuinsOfAlphPteranodonChamber_MapScripts:
	def_scene_scripts
	scene_script .CheckWall ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.CheckWall:
	checkevent EVENT_WALL_OPENED_IN_PTERANODON_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer .WallOpenScript
	end

.DummyScene:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_PTERANODON_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_PTERANODON_PUZZLE
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

RuinsOfAlphPteranodonChamberPuzzle:
	refreshscreen
	setval LETTAHPUZZLE_PTERANODON
	special LettahPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_PTERANODON_PUZZLE
	setflag ENGINE_UNLOCKED_LETTAHS_S_TO_W
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphPteranodonChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphPteranodonChamberAncientReplica:
	jumptext RuinsOfAlphPteranodonChamberAncientReplicaText

RuinsOfAlphPteranodonChamberDescriptionSign:
	jumptext RuinsOfAlphPteranodonChamberDescriptionText

RuinsOfAlphPteranodonChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphPteranodonChamberWallPatternLeftText
	setval LETTAHWORDS_LIGHT
	special DisplayLettahWords
	closetext
	end

RuinsOfAlphPteranodonChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_PTERANODON_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphPteranodonChamberWallPatternRightText
	setval LETTAHWORDS_LIGHT
	special DisplayLettahWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphPteranodonChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphPteranodonChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphPteranodonChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphPteranodonChamberLettahText: ; unreferenced
	text "It's LETTAH text!"
	done

RuinsOfAlphPteranodonChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphPteranodonChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphPteranodonChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphPteranodonChamberDescriptionText:
	text "This flying ANIMAL"
	line "attacked its"

	para "prey with saw-like"
	line "fangs."
	done

RuinsOfAlphPteranodonChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 8
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 9
	warp_event  4,  0, RUINS_OF_ALPH_PTERANODON_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphPteranodonChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphPteranodonChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphPteranodonChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphPteranodonChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphPteranodonChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphPteranodonChamberWallPatternRight

	def_object_events
