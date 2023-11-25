	object_const_def
	const ECRUTEAKRYUJINSPEECHHOUSE_GRAMPS
	const ECRUTEAKRYUJINSPEECHHOUSE_YOUNGSTER

EcruteakRyujinSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakRyujinSpeechHouseGrampsScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
EcruteakRyujinSpeechHouseYoungsterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic YOUNGSTER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
RyujinSpeechHouseRadio:
	jumpstd Radio2Script

EcruteakRyujinSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 7
	warp_event  4,  7, ECRUTEAK_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RyujinSpeechHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakRyujinSpeechHouseGrampsScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakRyujinSpeechHouseYoungsterScript, -1
