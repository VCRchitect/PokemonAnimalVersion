	object_const_def
	const MRFUJISHOUSE_SUPER_NERD
	const MRFUJISHOUSE_LASS
	const MRFUJISHOUSE_FLUFFYDUCK
	const MRFUJISHOUSE_JACKALOPE
	const MRFUJISHOUSE_PIGEON

MrFujisHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFujisHouseSuperNerdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
MrFujisHouseLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
MrFujisFluffyduck:
	refreshscreen
	opentext
	pokepic FLUFFYDUCK
	writetext MrFujisFluffyduckText
	cry FLUFFYDUCK
	waitbutton
	closepokepic
	closetext
	end

MrFujisJackalope:
	refreshscreen
	opentext
	pokepic JACKALOPE
	writetext MrFujisJackalopeText
	cry JACKALOPE
	waitbutton
	closepokepic
	closetext
	end

MrFujisPigeon:
	refreshscreen
	opentext
	pokepic PIGEON
	writetext MrFujisPigeonText
	cry PIGEON
	waitbutton
	closepokepic
	closetext
	end

MrFujisHouseBookshelf:
	jumpstd DifficultBookshelfScript

MrFujisFluffyduckText:
	text "FLUFFYDUCK: Gu-guwa?"
	done

MrFujisJackalopeText:
	text "JACKALOPE: Gyun!"
	done

MrFujisPigeonText:
	text "PIGEON: Pijji!"
	done

MrFujisHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrFujisHouseBookshelf

	def_object_events
	object_event  4,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MrFujisHouseSuperNerdScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouseLassScript, -1
	object_event  7,  4, SPRITE_ROCK_KAIJU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisFluffyduck, -1
	object_event  5,  5, SPRITE_KAI_KEN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFujisJackalope, -1
	object_event  1,  3, SPRITE_FIREBIRD, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MrFujisPigeon, -1
