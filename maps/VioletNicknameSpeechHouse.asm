	object_const_def
	const VIOLETNICKNAMESPEECHHOUSE_TEACHER
	const VIOLETNICKNAMESPEECHHOUSE_LASS
	const VIOLETNICKNAMESPEECHHOUSE_BIRD

VioletNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletNicknameSpeechHouseTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext VioletNicknameSpeechHouseTeacherText
	waitbutton
	closetrainpic
	closetext
	end

VioletNicknameSpeechHouseLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	writetext VioletNicknameSpeechHouseLassText
	waitbutton
	closetrainpic
	closetext
	end

VioletNicknameSpeechHouseBirdScript:
	faceplayer
	refreshscreen
	opentext
	pokepic PIGEON
	writetext VioletNicknameSpeechHouseBirdText
	cry PIGEON
	waitbutton
	closepokepic
	closetext
	end

VioletNicknameSpeechHouseTeacherText:
	text "When I was a kid,"
	line "I noticed that my"
	cont "dad knew a lot of"

	para "people named"
	line "WILD MAN. I knew"
	cont "he had forgotten"

	para "their names, so"
	line "they were all"
	cont "WILD MAN."
	done

VioletNicknameSpeechHouseLassText:
	text "WILD MAN: I call"
	line "PIGEONs PIDGEYs!"
	done

VioletNicknameSpeechHouseBirdText:
	text "PIGEON: Pijji!"
	done

VioletNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 4
	warp_event  4,  7, VIOLET_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseTeacherScript, -1
	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseLassScript, -1
	object_event  5,  2, SPRITE_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseBirdScript, -1
