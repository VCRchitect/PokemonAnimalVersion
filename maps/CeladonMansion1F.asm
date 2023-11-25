	object_const_def
	const CELADONMANSION1F_GRANNY
	const CELADONMANSION1F_KAI_KEN1
	const CELADONMANSION1F_CLEFAIRY
	const CELADONMANSION1F_KAI_KEN2

CeladonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionManager:
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	writetext CeladonMansionManagerText
	waitbutton
	closetrainpic
	closetext
	end

CeladonMansion1FCat:
	refreshscreen
	opentext
	pokepic CAT
	writetext CeladonMansion1FCatText
	cry CAT
	waitbutton
	closepokepic
	closetext
	end

CeladonMansion1FClefairy:
	refreshscreen
	opentext
	pokepic FAERIE
	writetext CeladonMansion1FClefairyText
	cry FAERIE
	waitbutton
	closepokepic
	closetext
	end

CeladonMansion1FNidoranF:
	refreshscreen
	opentext
	pokepic GIRLHYRAX
	writetext CeladonMansion1FNidoranFText
	cry GIRLHYRAX
	waitbutton
	closepokepic
	closetext
	end

CeladonMansionManagersSuiteSign:
	jumptext CeladonMansionManagersSuiteSignText

CeladonMansion1FBookshelf:
	jumpstd PictureBookshelfScript

CeladonMansionManagerText:
	text "My dear ANIMALs"
	line "keep me company,"

	para "so I don't ever"
	line "feel lonely."

	para "CAT even brings"
	line "money home."
	
	para "I try not to ask"
	line "where it comes"
	cont "from."
	done

CeladonMansion1FCatText:
	text "CAT: Meow!"
	done

CeladonMansion1FClefairyText:
	text "FAERIE: Clef"
	line "cleff!"
	done

CeladonMansion1FNidoranFText:
	text "NIDORAN: Kya"
	line "kyaoo!"
	done

CeladonMansionManagersSuiteSignText:
	text "CELADON MANSION"
	line "MANAGER'S SUITE"
	done

CeladonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, CELADON_CITY, 2
	warp_event  7,  9, CELADON_CITY, 2
	warp_event  3,  0, CELADON_CITY, 3
	warp_event  0,  0, CELADON_MANSION_2F, 1
	warp_event  7,  0, CELADON_MANSION_2F, 4

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, CeladonMansionManagersSuiteSign
	bg_event  0,  3, BGEVENT_READ, CeladonMansion1FBookshelf
	bg_event  2,  3, BGEVENT_READ, CeladonMansion1FBookshelf

	def_object_events
	object_event  1,  5, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionManager, -1
	object_event  2,  6, SPRITE_KAI_KEN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FCat, -1
	object_event  3,  4, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FClefairy, -1
	object_event  4,  4, SPRITE_KAI_KEN, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FNidoranF, -1
