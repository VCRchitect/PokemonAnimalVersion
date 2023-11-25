	object_const_def
	const COPYCATSHOUSE1F_POKEFAN_M
	const COPYCATSHOUSE1F_POKEFAN_F
	const COPYCATSHOUSE1F_CLEFAIRY

CopycatsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse1FPokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	writetext CopycatsHouse1FPokefanMText
	waitbutton
	closetrainpic
	closetext
	end

CopycatsHouse1FPokefanFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext CopycatsHouse1FPokefanFText
	waitbutton
	closetrainpic
	closetext
	end

.ReturnedMachinePart:
	writetext CopycatsHouse1FPokefanFText_ReturnedMachinePart
	waitbutton
	closetrainpic
	closetext
	end

CopycatsHouse1FBlisseyScript:
	refreshscreen
	opentext
	pokepic NURSE
	writetext CopycatsHouse1FBlisseyText
	cry NURSE
	waitbutton
	closepokepic
	closetext
	end

CopycatsHouse1FPokefanMText:
	text "My daughter likes"
	line "to mimic people."

	para "Her mimicry has"
	line "earned her the"

	para "nickname COPYCAT"
	line "around here."
	done

CopycatsHouse1FPokefanFText:
	text "My daughter is so"
	line "self-centered..."

	para "She only has a few"
	line "friends."
	
	para "Oh god. I just"
	line "heard myself. I"
	para "kind of suck as a"
	line "parent, huh?"
	done

CopycatsHouse1FPokefanFText_ReturnedMachinePart:
	text "She recently lost"
	line "the DOLL that"

	para "a boy gave her"
	line "three years ago."

	para "Ever since then,"
	line "she's gotten even"
	cont "better at mimicry."
	done

CopycatsHouse1FBlisseyText:
	text "NURSE: Bliisii!"
	done

CopycatsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 8
	warp_event  3,  7, SAFFRON_CITY, 8
	warp_event  2,  0, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanMScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanFScript, -1
	object_event  6,  6, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FBlisseyScript, -1
