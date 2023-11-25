	object_const_def
	const ROUTE40BATTLETOWERGATE_ROCKER
	const ROUTE40BATTLETOWERGATE_TWIN

Route40BattleTowerGate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .ShowSailor

.ShowSailor:
	clearevent EVENT_BATTLE_TOWER_OUTSIDE_SAILOR
	endcallback

Route40BattleTowerGateRockerScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUITARIST
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Route40BattleTowerGateTwinScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PICNICKER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end	

Route40BattleTowerGateUnusedText1: ; unreferenced
	text "Did you come to"
	line "see the BATTLE"
	cont "TOWER too?"

	para "But I guess you"
	line "can't go in yet."
	done

Route40BattleTowerGateUnusedText2: ; unreferenced
	text "BATTLE TOWER has"
	line "opened."

	para "I want to go, but"
	line "I haven't thought"

	para "up a cool line for"
	line "when I win."
	done

Route40BattleTowerGateRockerText:
	text "Are you going to"
	line "the BATTLE TOWER?"

	para "This is a secret,"
	line "but if you win a"

	para "whole lot, you can"
	line "win special gifts."
	done

Route40BattleTowerGateUnusedText3: ; unreferenced
	text "I'm going to train"
	line "my ANML so I'll"

	para "be all ready for"
	line "the BATTLE TOWER."
	done

Route40BattleTowerGateTwinText:
	text "The levels of the"
	line "ANML I want to"

	para "use are all"
	line "different."

	para "I have to go train"
	line "them now!"
	done

Route40BattleTowerGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_40, 1
	warp_event  5,  7, ROUTE_40, 1
	warp_event  4,  0, BATTLE_TOWER_OUTSIDE, 1
	warp_event  5,  0, BATTLE_TOWER_OUTSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateRockerScript, EVENT_BATTLE_TOWER_OUTSIDE_SAILOR
	object_event  7,  5, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateTwinScript, -1
