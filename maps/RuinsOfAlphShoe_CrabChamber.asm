	object_const_def
	const RUINSOFALPHSHOE_CRABCHAMBER_RECEPTIONIST
	const RUINSOFALPHSHOE_CRABCHAMBER_SCIENTIST

RuinsOfAlphShoe_CrabChamber_MapScripts:
	def_scene_scripts
	scene_script .CheckWall ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.CheckWall:
	checkevent EVENT_WALL_OPENED_IN_SHOE_CRAB_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer .WallOpenScript
	end

.DummyScene:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_SHOE_CRAB_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_SHOE_CRAB_PUZZLE
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

RuinsOfAlphShoe_CrabChamberReceptionistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PICNICKER
	writetext RuinsOfAlphShoe_CrabChamberReceptionistText
	waitbutton
	closetrainpic
	closetext
	end

RuinsOfAlphShoe_CrabChamberPuzzle:
	refreshscreen
	setval LETTAHPUZZLE_SHOE_CRAB
	special LettahPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_SHOE_CRAB_PUZZLE
	setflag ENGINE_UNLOCKED_LETTAHS_A_TO_K
	setevent EVENT_RUINS_OF_ALPH_SHOE_CRAB_CHAMBER_RECEPTIONIST
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphShoe_CrabChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphShoe_CrabChamberScientistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .AllLettahCaught
	checkevent EVENT_WALL_OPENED_IN_SHOE_CRAB_CHAMBER
	iftrue .WallOpen
	checkevent EVENT_SOLVED_SHOE_CRAB_PUZZLE
	iffalse .PuzzleIncomplete
	writetext RuinsOfAlphShoe_CrabChamberScientistTremorText
	promptbutton
.PuzzleIncomplete:
	writetext RuinsOfAlphShoe_CrabChamberScientistCrypticText
	waitbutton
	closetrainpic
	closetext
	turnobject RUINSOFALPHSHOE_CRABCHAMBER_SCIENTIST, UP
	end

.WallOpen:
	writetext RuinsOfAlphShoe_CrabChamberScientistHoleText
	waitbutton
	closetrainpic
	closetext
	end

.AllLettahCaught:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllLettah
	waitbutton
	closetrainpic
	closetext
	end

RuinsOfAlphShoe_CrabChamberAncientReplica:
	jumptext RuinsOfAlphShoe_CrabChamberAncientReplicaText

RuinsOfAlphShoe_CrabChamberDescriptionSign:
	jumptext RuinsOfAlphShoe_CrabChamberDescriptionText

RuinsOfAlphShoe_CrabChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphShoe_CrabChamberWallPatternLeftText
	setval LETTAHWORDS_ESCAPE
	special DisplayLettahWords
	closetext
	end

RuinsOfAlphShoe_CrabChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_SHOE_CRAB_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphShoe_CrabChamberWallPatternRightText
	setval LETTAHWORDS_ESCAPE
	special DisplayLettahWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphShoe_CrabChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphShoe_CrabChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphShoe_CrabChamberReceptionistText:
	text "Welcome to this"
	line "chamber."

	para "There are sliding"
	line "panels that depict"

	para "an ANIMAL drawn by"
	line "the ancients."

	para "Slide the panels"
	line "around to form the"
	cont "picture."

	para "To the right is a"
	line "description of the"
	cont "ANIMALs."

	para "Scientists in the"
	line "back are examining"

	para "some newly found"
	line "patterns."
	done

RuinsOfAlphShoe_CrabChamberScientistCrypticText:
	text "Recently, strange,"
	line "cryptic patterns"
	cont "have appeared."

	para "It's odd. They"
	line "weren't here a"
	cont "little while ago."

	para "You should take a"
	line "look at the walls."
	done

RuinsOfAlphShoe_CrabChamberScientistHoleText:
	text "Ah! Here's another"
	line "huge hole!"

	para "It's big enough to"
	line "go through!"
	done

RuinsOfAlphShoe_CrabChamberScientistTremorText:
	text "That tremor was"
	line "pretty scary!"

	para "But I'm more"
	line "concerned about"
	cont "this wall here..."
	done

RuinsOfAlphShoe_CrabChamberUnusedText: ; unreferenced
	text "The patterns on"
	line "the wall appear to"
	cont "be words!"

	para "And those sliding"
	line "stone panels seem"

	para "to be signals of"
	line "some kind."

	para "I think they make"
	line "ANIMALs appear,"

	para "but it's not clear"
	line "yet..."
	done

RuinsOfAlphShoe_CrabChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphShoe_CrabChamberLettahText: ; unreferenced
	text "It's LETTAH text!"
	done

RuinsOfAlphShoe_CrabChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls..."
	done

RuinsOfAlphShoe_CrabChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphShoe_CrabChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphShoe_CrabChamberDescriptionText:
	text "An ANIMAL that hid"
	line "on the sea floor."

	para "Eyes on its back"
	line "scanned the area."
	done

RuinsOfAlphShoe_CrabChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 4
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 5
	warp_event  4,  0, RUINS_OF_ALPH_SHOE_CRAB_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphShoe_CrabChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphShoe_CrabChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphShoe_CrabChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphShoe_CrabChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphShoe_CrabChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphShoe_CrabChamberWallPatternRight

	def_object_events
	object_event  5,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphShoe_CrabChamberReceptionistScript, EVENT_RUINS_OF_ALPH_SHOE_CRAB_CHAMBER_RECEPTIONIST
	object_event  3,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphShoe_CrabChamberScientistScript, -1
