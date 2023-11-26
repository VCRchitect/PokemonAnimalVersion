	object_const_def
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_YOUNGSTER

CherrygroveEvolutionSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveEvolutionSpeechHouseYoungsterScript:
	refreshscreen
	opentext
	trainerpic CAMPER
	writetext CherrygroveEvolutionSpeechHouseYoungsterText
	waitbutton
	closetrainpic
	closetext
	end

CherrygroveEvolutionSpeechHouseLassScript:
	refreshscreen
	opentext
	trainerpic PICNICKER
	writetext CherrygroveEvolutionSpeechHouseLassText
	waitbutton
	closetrainpic
	closetext
	applymovement CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	applymovement CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	end

CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd MagazineBookshelfScript


CherrygroveAbuseMovement:
	fix_facing
	big_step LEFT
	big_step RIGHT
	step_end

CherrygroveEvolutionSpeechHouseYoungsterText:
	text "I am so sick of"
	line "this! Every day I"

	para "wake up and hate"
	line "my life!"
	
	para "It hurts to live."
	done

CherrygroveEvolutionSpeechHouseLassText:
	text "So just give up,"
	line "you weakling."

	para "My mother was" 
	line "right. You're a"
	cont "loser, Mark!"
	done

CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseLassScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseYoungsterScript, -1
