	object_const_def
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_TEACHER

CherrygrovePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CherrygrovePokecenter1FFisherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
		
CherrygrovePokecenter1FTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CHERRYGROVE_CITY, 2
	warp_event  4,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
