	object_const_def
	const BLACKTHORNDRAGONSPEECHHOUSE_GRANNY
	const BLACKTHORNDRAGONSPEECHHOUSE_SNAKE

BlackthornDragonSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornDragonSpeechHouseGrannyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
BlackthornDragonSpeechHouseSerpentScript:
	refreshscreen
	opentext
	pokepic SERPENT
	writetext BlackthornDragonSpeechHouseSerpentText
	cry SERPENT
	waitbutton
	closepokepic
	closetext
	end

BlackthornDragonSpeechHousePictureBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

BlackthornDragonSpeechHouseMagazineBookshelf: ; unreferenced
	jumpstd MagazineBookshelfScript

BlackthornDragonSpeechHouseGrannyText:
	text "CornPop was a bad"
	line "dude. And he ran"
	cont "some bad boys."
	done

BlackthornDragonSpeechHouseSerpentText:
	text "SERPENT: Draa!"
	done

BlackthornDragonSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 2
	warp_event  3,  7, BLACKTHORN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseGrannyScript, -1
	object_event  5,  5, SPRITE_SNAKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseSerpentScript, -1
