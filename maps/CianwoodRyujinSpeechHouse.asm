	object_const_def
	const CIANWOODRYUJINSPEECHHOUSE_TEACHER
	const CIANWOODRYUJINSPEECHHOUSE_LASS
	const CIANWOODRYUJINSPEECHHOUSE_TWIN

CianwoodRyujinSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodRyujinSpeechHouseTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext CianwoodRyujinSpeechHouseTeacherText
	waitbutton
	closetrainpic
	closetext
	end

CianwoodRyujinSpeechHouseLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	writetext CianwoodRyujinSpeechHouseLassText
	waitbutton
	closetrainpic
	closetext
	end

CianwoodRyujinSpeechHouseTwinScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PICNICKER
	writetext CianwoodRyujinSpeechHouseTwinText
	waitbutton
	closetrainpic
	closetext
	end

CianwoodRyujinSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CianwoodRyujinSpeechHouseTeacherText:
	text "You came from"
	line "OLIVINE?"

	para "Do you remember"
	line "the four islands"
	cont "along the way?"

	para "I heard that a "
	line "mythical sea crea-"
	cont "ture is hiding in"
	cont "them."
	done

CianwoodRyujinSpeechHouseLassText:
	text "I heard that you"
	line "can only see it if"

	para "you have a SILVER"
	line "WING."

	para "It must have the"
	line "same scent as the"
	cont "creature."
	done

CianwoodRyujinSpeechHouseTwinText:
	text "I've heard that"
	line "the whirlpools"

	para "around the islands"
	line "are caused by the"
	cont "sea creature."

	para "You might need a"
	line "special move to"
	cont "get past them."
	done

CianwoodRyujinSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 6
	warp_event  3,  7, CIANWOOD_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodRyujinSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodRyujinSpeechHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodRyujinSpeechHouseTeacherScript, -1
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodRyujinSpeechHouseLassScript, -1
	object_event  0,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodRyujinSpeechHouseTwinScript, -1
