	object_const_def
	const VIRIDIANNICKNAMESPEECHHOUSE_POKEFAN_M
	const VIRIDIANNICKNAMESPEECHHOUSE_LASS
	const VIRIDIANNICKNAMESPEECHHOUSE_SPEARY
	const VIRIDIANNICKNAMESPEECHHOUSE_RATTEY

ViridianNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianNicknameSpeechHousePokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

ViridianNicknameSpeechHouseLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

Speary:
	refreshscreen
	opentext
	pokepic SPARROW
	writetext SpearyText
	cry SPARROW
	waitbutton
	closetrainpic
	closetext
	end

Rattey:
	refreshscreen
	opentext
	trainerpic RAT
	writetext RatteyText
	cry RAT
	waitbutton
	closetrainpic
	closetext
	end

SpearyText:
	text "SPEARY: Ch-chun!"
	done

RatteyText:
	text "RATTEY: Kikiii!"
	done

ViridianNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 2
	warp_event  3,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHousePokefanMScript, -1
	object_event  5,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHouseLassScript, -1
	object_event  5,  2, SPRITE_FIREBIRD, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Speary, -1
	object_event  6,  3, SPRITE_KAI_KEN, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Rattey, -1
