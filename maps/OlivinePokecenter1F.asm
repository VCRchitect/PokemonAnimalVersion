	object_const_def
	const OLIVINEPOKECENTER1F_NURSE
	const OLIVINEPOKECENTER1F_FISHING_GURU
	const OLIVINEPOKECENTER1F_FISHER
	const OLIVINEPOKECENTER1F_TEACHER

OlivinePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

OlivinePokecenter1FFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
OlivinePokecenter1FFisherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
OlivinePokecenter1FTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
OlivinePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLIVINE_CITY, 1
	warp_event  4,  7, OLIVINE_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFishingGuruScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFisherScript, -1
	object_event  7,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FTeacherScript, -1
