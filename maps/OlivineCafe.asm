	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAILOR
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	closetrainpic
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	refreshscreen
	trainerpic SAILOR
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetrainpic
	closetext
	end

OlivineCafeFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
OlivineCafeSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAILOR
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
OlivineCafeStrengthSailorText:
	text "Hah! Your ANIMALs"
	line "sure look like"
	cont "lightweights!"

	para "They don't have"
	line "the power to move"
	cont "boulders aside."

	para "Here, use this"
	line "and teach them"
	cont "STRENGTH!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "On the sea, the"
	line "only thing you can"

	para "count on is your"
	line "own good self!"

	para "I'm so proud of my"
	line "buff bod!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
