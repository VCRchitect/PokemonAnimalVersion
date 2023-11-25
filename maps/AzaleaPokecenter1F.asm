	object_const_def
	const AZALEAPOKECENTER1F_NURSE
	const AZALEAPOKECENTER1F_GENTLEMAN
	const AZALEAPOKECENTER1F_FISHING_GURU
	const AZALEAPOKECENTER1F_POKEFAN_F

AzaleaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

AzaleaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AzaleaPokecenter1FGentlemanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end


AzaleaPokecenter1FFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end


AzaleaPokecenter1FPokefanFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end


AzaleaPokecenter1FGentlemanText:
	text "My RACCOON stepped"
	line "on a thorn."

	para "I don't have any"
	line "insurance. This"

	para "might get very"
	line "expensive."
	done

AzaleaPokecenter1FUnusedText: ; unreferenced
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "ANIMALS in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "ANIMALS per BOX."
	done

AzaleaPokecenter1FFishingGuruText:
	text "I don't get the"
	line "appeal of DIGIMON."
	
	para "They're just"
	line "ANIMALS with guns."
	done

AzaleaPokecenter1FPokefanFText:
	text "I think there are"
	line "times when the"

	para "morality of ANIMAL"
	line "battles seems to"

	para "be very gray."
	done

AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 1
	warp_event  4,  7, AZALEA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FFishingGuruScript, -1
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FPokefanFScript, -1
