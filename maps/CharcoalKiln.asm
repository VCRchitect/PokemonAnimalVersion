	object_const_def
	const CHARCOALKILN_BLACK_BELT
	const CHARCOALKILN_YOUNGSTER
	const CHARCOALKILN_FIREBIRD

CharcoalKiln_MapScripts:
	def_scene_scripts

	def_callbacks

CharcoalKilnBoss:
	faceplayer
	refreshscreen
	opentext
	trainerpic BLACKBELT_T
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	checkevent EVENT_CLEARED_BEAVER_WELL
	iftrue .SavedBeaver
	writetext CharcoalKilnBossText1
	waitbutton
	closetrainpic
	closetext
	end

.SavedBeaver:
	writetext CharcoalKilnBossText2
	waitbutton
	closetrainpic
	closetext
	end

.GotCut:
	writetext CharcoalKilnBossText3
	waitbutton
	closetrainpic
	closetext
	end

CharcoalKilnApprentice:
	faceplayer
	refreshscreen
	opentext
	trainerpic YOUNGSTER
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue .YoureTheCoolest
	checkevent EVENT_GOT_HM01_CUT
	iftrue .Thanks
	writetext CharcoalKilnApprenticeText1
	waitbutton
	closetrainpic
	closetext
	end

.Thanks:
	writetext CharcoalKilnApprenticeText2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse .Done
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetrainpic
	closetext
	end

.YoureTheCoolest:
	writetext CharcoalKilnApprenticeText3
	waitbutton
.Done:
	closetrainpic
	closetext
	end

CharcoalKilnDuck:
	faceplayer
	refreshscreen
	opentext
	pokepic DUCK
	writetext DuckText
	cry DUCK
	waitbutton
	closepokepic
	closetext
	end

CharcoalKilnBookshelf:
	jumpstd MagazineBookshelfScript

CharcoalKilnRadio:
	jumpstd Radio2Script

CharcoalKilnBossText1:
	text "All the BEAVERS"
	line "have disappeared"
	cont "from the town."

	para "The forest's pro-"
	line "tector may be"
	cont "angry with us..."

	para "It may be a bad"
	line "omen. We should"
	cont "stay in."
	done

CharcoalKilnBossText2:
	text "The BEAVERs have"
	line "returned..."

	para "But my APPRENTICE"
	line "hasn't come back"
	cont "from ILEX FOREST."

	para "Where in the world"
	line "is that lazy guy?"
	done

CharcoalKilnBossText3:
	text "You chased off"
	line "TEAM ROCKET and"

	para "went to ILEX"
	line "FOREST alone?"

	para "That takes guts!"
	line "I like that. Come"
	cont "train with us."
	done

CharcoalKilnApprenticeText1:
	text "Where have all the"
	line "BEAVERs gone?"

	para "Are they out play-"
	line "ing somewhere?"
	done

CharcoalKilnApprenticeText2:
	text "I'm sorry--I for-"
	line "got to thank you."

	para "This is CHARCOAL"
	line "that I made."

	para "Fire-type ANIMALs"
	line "would be happy to"
	cont "hold that."
	done

CharcoalKilnApprenticeText3:
	text "The BEAVERs came"
	line "back, and you even"
	cont "found DUCK."

	para "You're the cool-"
	line "est, man!"
	done

DuckText:
	text "DUCK: Kwaa!"
	done

CharcoalKiln_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 2
	warp_event  3,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  1,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  7,  1, BGEVENT_READ, CharcoalKilnRadio

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  5,  6, SPRITE_FIREBIRD, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CharcoalKilnDuck, EVENT_CHARCOAL_KILN_DUCK
