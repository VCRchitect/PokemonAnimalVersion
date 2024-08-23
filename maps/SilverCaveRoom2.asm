	object_const_def
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3

SilverCaveRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	refreshscreen
	opentext
	writetext WendigoText
	waitbutton
	closetext
	pokepic WENDIGO
	cry WENDIGO
	waitbutton
	closepokepic
	refreshscreen
	opentext
	writetext WendigoText2
	yesorno
	iffalse WendigonopeScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	disappear SILVERCAVEROOM2_POKE_BALL2
	writetext ChoseWendigoText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, WENDIGO
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke WENDIGO, 50, BERRY
	closetext
	end
	
.partyfull
	refreshscreen
	writetext CarryMoreWendigoText
	waitbutton
	closetext
	end
	
WendigonopeScript:
	writetext DamnCreaturesText
	waitbutton
	closetext
	end

SilverCaveRoom2PPUp:
	itemball PP_UP

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION
	
WendigoText:
	text "Oh damn, there's"
	line "something in this"
	cont "cardboard box."
	done
	
WendigoText2:	
	text "Aw, shit. It's a"
	line "spooky WENDIGO!"		
	cont "You want it?"
	done
	
DamnCreaturesText:
	text "Yeah, I can't be"
	line "trifling with no"
	cont "spooky monsters!"
	done
	
ChoseWendigoText:
	text "Against your best"
	line "judgement, you"
	cont "adopted a WENDIGO!"
	done
	
CarryMoreWendigoText:
	text "You already have"
	line "six ANIMALs with"
	cont "you, though..."
	done
	
	

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	def_coord_events

	def_bg_events
	bg_event 14, 31, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion

	def_object_events
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
