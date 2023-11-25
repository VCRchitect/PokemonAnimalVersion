	object_const_def
	const VIRIDIANPOKECENTER1F_NURSE
	const VIRIDIANPOKECENTER1F_COOLTRAINER_M
	const VIRIDIANPOKECENTER1F_COOLTRAINER_F
	const VIRIDIANPOKECENTER1F_BUG_CATCHER

ViridianPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

ViridianPokecenter1FCooltrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

ViridianPokecenter1FCooltrainerFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

ViridianPokecenter1FBugCatcherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

ViridianPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 5
	warp_event  4,  7, VIRIDIAN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FCooltrainerMScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FCooltrainerFScript, -1
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FBugCatcherScript, -1
