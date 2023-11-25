	object_const_def
	const RUINSOFALPHPTERANODONITEMROOM_POKE_BALL1
	const RUINSOFALPHPTERANODONITEMROOM_POKE_BALL2
	const RUINSOFALPHPTERANODONITEMROOM_POKE_BALL3
	const RUINSOFALPHPTERANODONITEMROOM_POKE_BALL4

RuinsOfAlphPteranodonItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphPteranodonItemRoomGoldBerry:
	itemball GOLD_BERRY

RuinsOfAlphPteranodonItemRoomMoonStone:
	itemball MOON_STONE

RuinsOfAlphPteranodonItemRoomHealPowder:
	itemball HEAL_POWDER

RuinsOfAlphPteranodonItemRoomEnergyRoot:
	itemball ENERGY_ROOT

RuinsOfAlphPteranodonItemRoomAncientReplica:
	jumptext RuinsOfAlphPteranodonItemRoomAncientReplicaText

RuinsOfAlphPteranodonItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient ANIMAL."
	done

RuinsOfAlphPteranodonItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_PTERANODON_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_PTERANODON_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_PTERANODON_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_PTERANODON_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphPteranodonItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphPteranodonItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteranodonItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_PTERANODON_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteranodonItemRoomMoonStone, EVENT_PICKED_UP_MOON_STONE_FROM_PTERANODON_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteranodonItemRoomHealPowder, EVENT_PICKED_UP_HEAL_POWDER_FROM_PTERANODON_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteranodonItemRoomEnergyRoot, EVENT_PICKED_UP_ENERGY_ROOT_FROM_PTERANODON_ITEM_ROOM
