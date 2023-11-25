	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	writetext ElmsWifeText
	waitbutton
	closetrainpic
	closetext
	end

ElmsSon:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCHOOLBOY
	writetext ElmsSonText
	waitbutton
	closetrainpic
	closetext
	end

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "Hi, <PLAY_G>! My"
	line "husband's always"

	para "so busy--I hope"
	line "he's not a cheat."

	para "When he's caught"
	line "up in his ANIMALs,"

	para "he forgets all"
	line "about his family."
	done

ElmsSonText:
	text "When I grow up,"
	line "I'm going to be"
	cont "just like my dad!"

	para "I'm going to work"
	line "and have regrets!"
	done

ElmsHouseLabFoodText: ; unreferenced
	text "There's some food"
	line "here. It must be"
	cont "for the kid."
	done

ElmsHousePokemonFoodText: ; unreferenced
	text "There's some food"
	line "here. This must be"
	cont "for poor people."
	done

ElmsHousePCText:
	text "ANIMALs. Where do"
	line "they come from?"

	para "Where do they go?"

	para "Why has no one"
	line "ever learned about"
	cont "Cotton Eye Joe?"
	
	para "I want to know! I"
	line "will dedicate my"

	para "weekend to writing"
	line "ANIMAL poetry!"

	para "..."

	para "It's a part of"
	line "PROF.ELM's re-"
	cont "search papers."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
