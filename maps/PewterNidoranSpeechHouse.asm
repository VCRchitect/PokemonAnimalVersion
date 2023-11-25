	object_const_def
	const PEWTERNIDORANSPEECHHOUSE_SUPER_NERD
	const PEWTERNIDORANSPEECHHOUSE_BOYHYRAX

PewterNidoranSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranSpeechHouseSuperNerdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
PewterNidoran:
	refreshscreen
	opentext
	pokepic BOYHYRAX
	writetext PewterNidoranText
	cry BOYHYRAX
	waitbutton
	closetrainpic
	closetext
	end

PewterNidoranSpeechHouseSuperNerdText:
	text "NIDORAN, shake!"
	done

PewterNidoranText:
	text "BOYHYRAX: Gau gau!"
	done

PewterNidoranSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 1
	warp_event  3,  7, PEWTER_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHouseSuperNerdScript, -1
	object_event  4,  5, SPRITE_KAI_KEN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterNidoran, -1
