	object_const_def
	const CERULEANPOLICESTATION_FISHING_GURU
	const CERULEANPOLICESTATION_POKEFAN_F
	const CERULEANPOLICESTATION_MOLE

CeruleanPoliceStation_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPoliceStationFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CeruleanPoliceStationPokefanFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
CeruleanMole:
	refreshscreen
	opentext
	pokepic MOLE
	writetext CeruleanMoleText
	cry MOLE
	waitbutton
	closepokepic
	closetext
	end

CeruleanPoliceStationFishingGuruText:
	text "I heard that some"
	line "shady character is"
	cont "skulking about."

	para "I won't stand for"
	line "it if he turns out"
	cont "to be a thief."
	done

CeruleanPoliceStationPokefanFText:
	text "We were held up by"
	line "robbers before."
	done

CeruleanMoleText:
	text "MOLE: Dug dug."
	done

CeruleanPoliceStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationFishingGuruScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationPokefanFScript, -1
	object_event  3,  5, SPRITE_MOLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanMole, -1
