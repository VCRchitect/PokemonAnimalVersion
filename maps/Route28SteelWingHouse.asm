	object_const_def
	const ROUTE28STEELWINGHOUSE_CELEBRITY
	const ROUTE28STEELWINGHOUSE_VULTURE

Route28SteelWingHouse_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

Celebrity:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	checkevent EVENT_GOT_TM47_STEEL_WING
	iftrue .AlreadyGotItem
	writetext CelebrityText1
	promptbutton
	closetrainpic
	verbosegiveitem TM_STEEL_WING
	iffalse .Done
	setevent EVENT_GOT_TM47_STEEL_WING
.Done:
	closetrainpic
	closetext
	end
.AlreadyGotItem:
	trainerpic COOLTRAINERF
	writetext CelebrityText2
	waitbutton
	closetrainpic
	closetext
	end

CelebritysVulture:
	refreshscreen
	opentext
	pokepic VULTURE
	writetext CelebritysVultureText
	cry VULTURE
	waitbutton
	closepokepic
	closetext
	end

CelebrityHouseBookshelf:
	jumpstd MagazineBookshelfScript

CelebrityText1:
	text "Oh, dear."
	line "You've found me."

	para "Please don't tell"
	line "anyone about me."

	para "I'll give you this"
	line "for keeping my"
	cont "secret. Please?"
	done

CelebrityText2:
	text "It's tough being a"
	line "top celebrity."

	para "Everywhere I go,"
	line "people chase me."

	para "I just want to be"
	line "left alone..."
	done

CelebritysVultureText:
	text "VULTURE: Feero!"
	done

Route28SteelWingHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_28, 1
	warp_event  3,  7, ROUTE_28, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CelebrityHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CelebrityHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Celebrity, -1
	object_event  6,  5, SPRITE_FIREBIRD, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CelebritysVulture, -1
