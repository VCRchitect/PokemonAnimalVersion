	object_const_def
	const CERULEANTRADESPEECHHOUSE_GRANNY
	const CERULEANTRADESPEECHHOUSE_GRAMPS
	const CERULEANTRADESPEECHHOUSE_ROCK_KAIJU
	const CERULEANTRADESPEECHHOUSE_BAT

CeruleanTradeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeSpeechHouseGrannyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CeruleanTradeSpeechHouseGrampsScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CeruleanTradeSpeechHouseRock_KaijuScript:
	refreshscreen
	opentext
	pokepic KANGAROO
	writetext CeruleanTradeSpeechHouseRock_KaijuText
	cry KANGAROO
	waitbutton
	closepokepic
	closetext
	end

CeruleanTradeSpeechHouseBatScript:
	refreshscreen
	opentext
	pokepic BAT
	writetext CeruleanTradeSpeechHouseBatText
	cry BAT
	waitbutton
	closepokepic
	closetext
	end

CeruleanTradeSpeechHouseGrannyText:
	text "My husband lives"
	line "happily with #-"
	cont "MON he got through"
	cont "trades."
	done

CeruleanTradeSpeechHouseGrampsText:
	text "Ah... I'm so happy..."
	done

CeruleanTradeSpeechHouseRock_KaijuText:
	text "KANGAROO: Garu"
	line "garuu."
	done

CeruleanTradeSpeechHouseBatText:
	text "BAT: Zuba zubaa."
	done

CeruleanTradeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrannyScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrampsScript, -1
	object_event  5,  2, SPRITE_ROCK_KAIJU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseRock_KaijuScript, -1
	object_event  5,  6, SPRITE_BAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseBatScript, -1
