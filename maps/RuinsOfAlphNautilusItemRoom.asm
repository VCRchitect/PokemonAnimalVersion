	object_const_def
	const RUINSOFALPHNAUTILUSITEMROOM_POKE_BALL1
	const RUINSOFALPHNAUTILUSITEMROOM_POKE_BALL2
	const RUINSOFALPHNAUTILUSITEMROOM_POKE_BALL3
	const RUINSOFALPHNAUTILUSITEMROOM_POKE_BALL4

RuinsOfAlphNautilusItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphNautilusItemRoomMysteryberry:
	itemball MYSTERYBERRY

RuinsOfAlphNautilusItemRoomMysticWater:
	itemball MYSTIC_WATER

RuinsOfAlphNautilusItemRoomStardust:
	itemball STARDUST

RuinsOfAlphNautilusItemRoomStarPiece:
	itemball STAR_PIECE

RuinsOfAlphNautilusItemRoomAncientReplica:
	jumptext RuinsOfAlphNautilusItemRoomAncientReplicaText

RuinsOfAlphNautilusItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphNautilusItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_NAUTILUS_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_NAUTILUS_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_NAUTILUS_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_NAUTILUS_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphNautilusItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphNautilusItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphNautilusItemRoomMysteryberry, EVENT_PICKED_UP_MYSTERYBERRY_FROM_NAUTILUS_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphNautilusItemRoomMysticWater, EVENT_PICKED_UP_MYSTIC_WATER_FROM_NAUTILUS_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphNautilusItemRoomStardust, EVENT_PICKED_UP_STARDUST_FROM_NAUTILUS_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphNautilusItemRoomStarPiece, EVENT_PICKED_UP_STAR_PIECE_FROM_NAUTILUS_ITEM_ROOM
