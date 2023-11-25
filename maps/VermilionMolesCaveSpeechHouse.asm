	object_const_def
	const VERMILIONMOLESCAVESPEECHHOUSE_GENTLEMAN

VermilionMolesCaveSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMolesCaveSpeechHouseGentlemanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionMolesCaveSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 6
	warp_event  3,  7, VERMILION_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMolesCaveSpeechHouseGentlemanScript, -1
