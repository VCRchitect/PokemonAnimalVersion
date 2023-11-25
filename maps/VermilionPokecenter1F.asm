	object_const_def
	const VERMILIONPOKECENTER1F_NURSE
	const VERMILIONPOKECENTER1F_FISHING_GURU
	const VERMILIONPOKECENTER1F_SAILOR
	const VERMILIONPOKECENTER1F_BUG_CATCHER

VermilionPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

VermilionPokecenter1FFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionPokecenter1FSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAILOR
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionPokecenter1FBugCatcherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

VermilionPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 2
	warp_event  4,  7, VERMILION_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FFishingGuruScript, -1
	object_event  6,  5, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FSailorScript, -1
	object_event  1,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FBugCatcherScript, -1
