	object_const_def
	const CHERRYGROVEGYMSPEECHHOUSE_POKEFAN_M
	const CHERRYGROVEGYMSPEECHHOUSE_BUG_CATCHER

CherrygroveGymSpeechHouse_MapScripts:
	def_scene_scripts
	def_callbacks

CherrygroveGymSpeechHousePokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CherrygroveGymSpeechHouseBugCatcherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CherrygroveGymSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanMScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseBugCatcherScript, -1
