	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic POKEFANM
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic POKEFANM 
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

Route6PokefanMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My ELEBABY is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My ELEBABY!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my ELEBABY acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDYBEAR is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDYBEAR!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my TEDDYBEAR acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  3, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  5, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event 17,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  9, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
