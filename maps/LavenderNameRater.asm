	object_const_def
	const LAVENDERNAMERATER_NAME_RATER

LavenderNameRater_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

LavenderNameRater:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	special NameRater
	waitbutton
	closetrainpic
	closetext
	end

LavenderNameRaterUnusedBookshelf: ; unreferenced
	jumpstd DifficultBookshelfScript

LavenderNameRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 4
	warp_event  3,  7, LAVENDER_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderNameRater, -1
