	object_const_def
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL1
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL2
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL3
	const RUINSOFALPHHOOHITEMROOM_POKE_BALL4

RuinsOfAlphPhoenixItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphPhoenixItemRoomGoldBerry:
	itemball GOLD_BERRY

RuinsOfAlphPhoenixItemRoomMysteryberry:
	itemball MYSTERYBERRY

RuinsOfAlphPhoenixItemRoomRevivalHerb:
	itemball REVIVAL_HERB

RuinsOfAlphPhoenixItemRoomCharcoal:
	itemball CHARCOAL

RuinsOfAlphPhoenixItemRoomAncientReplica:
	jumptext RuinsOfAlphPhoenixItemRoomAncientReplicaText

RuinsOfAlphPhoenixItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphPhoenixItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_PHOENIX_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_PHOENIX_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_PHOENIX_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_PHOENIX_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphPhoenixItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphPhoenixItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPhoenixItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_PHOENIX_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPhoenixItemRoomMysteryberry, EVENT_PICKED_UP_MYSTERYBERRY_FROM_PHOENIX_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPhoenixItemRoomRevivalHerb, EVENT_PICKED_UP_REVIVAL_HERB_FROM_PHOENIX_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPhoenixItemRoomCharcoal, EVENT_PICKED_UP_CHARCOAL_FROM_PHOENIX_ITEM_ROOM
