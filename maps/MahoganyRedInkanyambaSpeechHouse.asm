	object_const_def
	const MAHOGANYREDINKANYAMBASPEECHHOUSE_BLACK_BELT
	const MAHOGANYREDINKANYAMBASPEECHHOUSE_TEACHER

MahoganyRedInkanyambaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyRedInkanyambaSpeechHouseBlackBeltScript:
	jumptextfaceplayer MahoganyRedInkanyambaSpeechHouseBlackBeltText

MahoganyRedInkanyambaSpeechHouseTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .RocketsInRadioTower
	writetext MahoganyRedInkanyambaSpeechHouseTeacherText
	waitbutton
	closetrainpic
	closetext
	end

.RocketsInRadioTower:
	writetext MahoganyRedInkanyambaSpeechHouseTeacherText_RocketsInRadioTower
	waitbutton
	closetrainpic
	closetext
	end

MahoganyRedInkanyambaSpeechHouseUnusedBookshelf1: ; unreferenced
	jumpstd PictureBookshelfScript

MahoganyRedInkanyambaSpeechHouseUnusedBookshelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

MahoganyRedInkanyambaSpeechHouseBlackBeltText:
	text "I heard that a red"
	line "INKANYAMBA appeared"
	cont "at the LAKE."

	para "That's odd, since"
	line "even ordinary"

	para "INKANYAMBA are rare"
	line "in that lake..."
	done

MahoganyRedInkanyambaSpeechHouseTeacherText:
	text "My favorite radio"
	line "program? I'd say"
	cont "ANIMAL MUSIC."
	done

MahoganyRedInkanyambaSpeechHouseTeacherText_RocketsInRadioTower:
	text "I've been hearing"
	line "laughter on the"

	para "radio..."
	line "It's creepy."
	done

MahoganyRedInkanyambaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedInkanyambaSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedInkanyambaSpeechHouseTeacherScript, -1
