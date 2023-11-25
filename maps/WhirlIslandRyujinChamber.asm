	object_const_def
	const WHIRLISLANDRYUJINCHAMBER_RYUJIN

WhirlIslandRyujinChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ryujin

.Ryujin:
	checkevent EVENT_FOUGHT_RYUJIN
	iftrue .NoAppear
	checkitem SILVER_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear WHIRLISLANDRYUJINCHAMBER_RYUJIN
	endcallback

.NoAppear:
	disappear WHIRLISLANDRYUJINCHAMBER_RYUJIN
	endcallback

Ryujin:
	faceplayer
	refreshscreen
	opentext
	pokepic RYUJIN
	writetext RyujinText
	cry RYUJIN
	pause 15
	closepokepic
	closetext
	setevent EVENT_FOUGHT_RYUJIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon RYUJIN, 60
	startbattle
	disappear WHIRLISLANDRYUJINCHAMBER_RYUJIN
	reloadmapafterbattle
	end

RyujinText:
	text "Gyaaas!"
	done

WhirlIslandRyujinChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, WHIRL_ISLAND_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_RYUJIN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Ryujin, EVENT_WHIRL_ISLAND_RYUJIN_CHAMBER_RYUJIN
