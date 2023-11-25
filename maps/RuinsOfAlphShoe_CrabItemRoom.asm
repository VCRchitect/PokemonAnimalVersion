	object_const_def
	const RUINSOFALPHSHOE_CRABITEMROOM_POKE_BALL1
	const RUINSOFALPHSHOE_CRABITEMROOM_POKE_BALL2
	const RUINSOFALPHSHOE_CRABITEMROOM_POKE_BALL3
	const RUINSOFALPHSHOE_CRABITEMROOM_POKE_BALL4

RuinsOfAlphShoe_CrabItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphShoe_CrabItemRoomBerry:
	itemball BERRY

RuinsOfAlphShoe_CrabItemRoomPsncureberry:
	itemball PSNCUREBERRY

RuinsOfAlphShoe_CrabItemRoomHealPowder:
	itemball HEAL_POWDER

RuinsOfAlphShoe_CrabItemRoomEnergypowder:
	itemball ENERGYPOWDER

RuinsOfAlphShoe_CrabItemRoomAncientReplica:
	jumptext RuinsOfAlphShoe_CrabItemRoomAncientReplicaText

RuinsOfAlphShoe_CrabItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphShoe_CrabItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_SHOE_CRAB_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_SHOE_CRAB_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_SHOE_CRAB_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_SHOE_CRAB_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphShoe_CrabItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphShoe_CrabItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphShoe_CrabItemRoomBerry, EVENT_PICKED_UP_BERRY_FROM_SHOE_CRAB_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphShoe_CrabItemRoomPsncureberry, EVENT_PICKED_UP_PSNCUREBERRY_FROM_SHOE_CRAB_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphShoe_CrabItemRoomHealPowder, EVENT_PICKED_UP_HEAL_POWDER_FROM_SHOE_CRAB_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphShoe_CrabItemRoomEnergypowder, EVENT_PICKED_UP_ENERGYPOWDER_FROM_SHOE_CRAB_ITEM_ROOM
