	object_const_def
	const MAHOGANYREDIKANYMBASPEECHHOUSE_BLACK_BELT
	const MAHOGANYREDIKANYMBASPEECHHOUSE_TEACHER

MahoganyRedIkanymbaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyRedIkanymbaSpeechHouseBlackBeltScript:
	jumptextfaceplayer MahoganyRedIkanymbaSpeechHouseBlackBeltText

MahoganyRedIkanymbaSpeechHouseTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .RocketsInRadioTower
	writetext MahoganyRedIkanymbaSpeechHouseTeacherText
	waitbutton
	closetrainpic
	closetext
	end

.RocketsInRadioTower:
	writetext MahoganyRedIkanymbaSpeechHouseTeacherText_RocketsInRadioTower
	waitbutton
	closetrainpic
	closetext
	end

MahoganyRedIkanymbaSpeechHouseUnusedBookshelf1: ; unreferenced
	jumpstd PictureBookshelfScript

MahoganyRedIkanymbaSpeechHouseUnusedBookshelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

MahoganyRedIkanymbaSpeechHouseBlackBeltText:
	text "I heard that a red"
	line "IKANYMBA appeared"
	cont "at the LAKE."

	para "That's odd, since"
	line "even ordinary"

	para "IKANYMBA are rare"
	line "in that lake..."
	done

MahoganyRedIkanymbaSpeechHouseTeacherText:
	text "My favorite radio"
	line "program? I'd say"
	cont "ANIMAL MUSIC."
	done

MahoganyRedIkanymbaSpeechHouseTeacherText_RocketsInRadioTower:
	text "I've been hearing"
	line "laughter on the"

	para "radio..."
	line "It's creepy."
	done

MahoganyRedIkanymbaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedIkanymbaSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedIkanymbaSpeechHouseTeacherScript, -1
