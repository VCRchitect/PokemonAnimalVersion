	object_const_def
	const MOLESCAVE_POKEFAN_M

MolesCave_MapScripts:
	def_scene_scripts

	def_callbacks

MolesCavePokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
MolesCaveHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_MOLES_CAVE_HIDDEN_MAX_REVIVE

MolesCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, VERMILION_CITY, 10
	warp_event  5, 31, MOLES_CAVE, 5
	warp_event 15,  5, ROUTE_2, 5
	warp_event 17,  3, MOLES_CAVE, 6
	warp_event 17, 33, MOLES_CAVE, 2
	warp_event  3,  3, MOLES_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_ITEM, MolesCaveHiddenMaxRevive

	def_object_events
	object_event  3, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MolesCavePokefanMScript, -1
