	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	writetext MrFujiText
	waitbutton
	closetrainpic
	closetext
	end

SoulHouseTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

SoulHouseLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

SoulHouseGrannyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm... You appear to"
	line "be raising your"

	para "ANIMALs in a kind"
	line "and loving manner."

	para "ANIMAL lovers"
	line "come here to pay"

	para "their respects to"
	line "departed ANIMALs."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted ANIMALs."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
