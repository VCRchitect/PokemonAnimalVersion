	object_const_def
	const PEWTERPOKECENTER1F_NURSE
	const PEWTERPOKECENTER1F_TEACHER
	const PEWTERPOKECENTER1F_BLOONBUNCH
	const PEWTERPOKECENTER1F_BUG_CATCHER
	const PEWTERPOKECENTER1F_CHRIS

PewterPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

PewterPokecenter1FTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
PewterBloonbunch:
	refreshscreen
	opentext
	pokepic BLOONBUNCH
	writetext PewterBloonbunchText
	cry BLOONBUNCH
	waitbutton
	closepokepic
	closetext
	end

PewterPokecenter1FBugCatcherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Chris:
	faceplayer
	opentext
	trade NPC_TRADE_CHRIS
	waitbutton
	closetext
	end


PewterBloonbunchText:
	text "BLOONBUNCH: Puu"
	line "pupuu."
	done

PewterPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 4
	warp_event  4,  7, PEWTER_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FNurseScript, -1
	object_event  8,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FTeacherScript, -1
	object_event  1,  3, SPRITE_BLOONBUNCH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterBloonbunch, -1
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FBugCatcherScript, -1
	object_event  7,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Chris, -1
