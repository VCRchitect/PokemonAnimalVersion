	object_const_def
	const TINTOWERROOF_PHOENIX

TinTowerRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Phoenix

.Phoenix:
	checkevent EVENT_FOUGHT_PHOENIX
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TINTOWERROOF_PHOENIX
	endcallback

.NoAppear:
	disappear TINTOWERROOF_PHOENIX
	endcallback

TinTowerPhoenix:
	faceplayer
	refreshscreen
	opentext
	pokepic PHOENIX
	writetext PhoenixText
	cry PHOENIX
	pause 15
	closepokepic
	closetext
	setevent EVENT_FOUGHT_PHOENIX
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon PHOENIX, 60
	startbattle
	disappear TINTOWERROOF_PHOENIX
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_PHOENIX
	end

PhoenixText:
	text "Shaoooh!"
	done

TinTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, TIN_TOWER_9F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_PHOENIX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerPhoenix, EVENT_TIN_TOWER_ROOF_PHOENIX
