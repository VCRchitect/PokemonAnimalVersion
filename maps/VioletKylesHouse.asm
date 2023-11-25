	object_const_def
	const VIOLETKYLESHOUSE_POKEFAN_M
	const VIOLETKYLESHOUSE_KYLE

VioletKylesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletKylesHousePokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Kyle:
	faceplayer
	opentext
	trade NPC_TRADE_KYLE
	waitbutton
	closetext
	end

VioletKylesHousePokefanMText:
	text "You're brave for"
	line "coming into houses"
	cont "unannounced."

	para "If this game took"
	line "place in Texas,"
	cont "you'd be dead!"
	done

VioletKylesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 6
	warp_event  4,  7, VIOLET_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletKylesHousePokefanMScript, -1
	object_event  6,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Kyle, -1
