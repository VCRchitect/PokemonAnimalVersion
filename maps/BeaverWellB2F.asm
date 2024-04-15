	object_const_def
	const BEAVERWELLB2F_GYM_GUIDE
	const BEAVERWELLB2F_POKE_BALL

BeaverWellB2F_MapScripts:
	def_scene_scripts

	def_callbacks

BeaverWellB2FGymGuideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	checkevent EVENT_GOT_KINGS_ROCK_IN_BEAVER_WELL
	iftrue .GotKingsRock
	writetext BeaverWellB2FGymGuideText
	promptbutton
	verbosegiveitem KINGS_ROCK
	iffalse .NoRoom
	setevent EVENT_GOT_KINGS_ROCK_IN_BEAVER_WELL
.NoRoom:
	closetrainpic
	closetext
	end

.GotKingsRock:
	writetext BeaverWellB2FGymGuideText_GotKingsRock
	waitbutton
	closetrainpic
	closetext
	end

BeaverWellB2FTMRainDance:
	itemball TM_RAIN_DANCE

BeaverWellB2FGymGuideText:
	text "I'm waiting to see"
	line "BEAVER's moment"
	cont "of evolution."

	para "Through observa-"
	line "tion, I made a new"
	cont "discovery."

	para "A BEAVER with a"
	line "KING'S ROCK often"

	para "gets bitten by a"
	line "CLAM."
	
	para "I don't know what"
	line "that has to do"
	
	para "with anything, but"
	line "it may be useful."

	para "Here, I'll share a"
	line "KING'S ROCK with"
	cont "you."
	done

BeaverWellB2FGymGuideText_GotKingsRock:
	text "I'm going to be"
	line "like BEAVERs and"
	cont "rot my brain."
	done

BeaverWellB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, BEAVER_WELL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, BeaverWellB2FGymGuideScript, -1
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BeaverWellB2FTMRainDance, EVENT_BEAVER_WELL_B2F_TM_RAIN_DANCE
