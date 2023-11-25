	object_const_def
	const OLIVINEHOUSEBETA_TEACHER
	const OLIVINEHOUSEBETA_ROCK_KAIJU

OlivineHouseBeta_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineHouseBetaTeacherScript:
	jumptextfaceplayer OlivineHouseBetaTeacherText

OlivineHouseBetaRock_KaijuScript:
	opentext
	writetext OlivineHouseBetaRock_KaijuText
	cry ROCK_KAIJU
	waitbutton
	closetext
	end

OlivineHouseBetaBookshelf1:
	jumpstd PictureBookshelfScript

OlivineHouseBetaBookshelf2:
	jumpstd MagazineBookshelfScript

OlivineHouseBetaTeacherText:
	text "When my ANML"
	line "got sick, the"

	para "PHARMACIST in"
	line "ECRUTEAK made some"
	cont "medicine for me."
	done

OlivineHouseBetaRock_KaijuText:
	text "ROCK_KAIJU: Gugooh!"
	done

OlivineHouseBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 4
	warp_event  3,  7, OLIVINE_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, OlivineHouseBetaBookshelf1
	bg_event  1,  1, BGEVENT_READ, OlivineHouseBetaBookshelf2

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaTeacherScript, -1
	object_event  6,  4, SPRITE_ROCK_KAIJU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaRock_KaijuScript, -1
