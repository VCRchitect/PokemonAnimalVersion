	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F
	const ROUTE35GOLDENRODGATE_FISHER

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

RandyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	closetrainpic
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPARROW, 10, NO_ITEM, GiftSparrowName, GiftSparrowOTName
	givepokemail GiftSparrowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	trainerpic OFFICER
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetrainpic
	closetext
	end

.partyfull
	trainerpic OFFICER
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetrainpic
	closetext
	end

.refused
	trainerpic OFFICER
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetrainpic
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	closetrainpic
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	trainerpic OFFICER
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetrainpic
	closetext
	end

GiftSparrowMail:
	db FLOWER_MAIL
	db   "DARK CAVE leads"
	next "to another road@"

GiftSparrowName:
	db "KENYA@"

GiftSparrowOTName:
	db "RANDY@"

	db 0 ; unused

Route35GoldenrodGatePokefanFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

Route35GoldenrodGateFisherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Excuse me, kid!"
	line "Can you do a guy"
	cont "a favor?"

	para "Can you take this"
	line "ANIMAL with MAIL"
	cont "to my friend?"

	para "He's on ROUTE 31."
	done

Route35GoldenrodGateRandyThanksText:
	text "You will? Perfect!"
	line "Thanks, kid!"

	para "My pal's a chubby"
	line "guy who snoozes"
	cont "all the time."

	para "You'll recognize"
	line "him right away!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> got an"
	line "ANIMAL with MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "You can read it,"
	line "but don't lose it!"
	cont "ROUTE 31!"

	para "Oh, yeah. There"
	line "was a weird tree"
	cont "blocking the road."

	para "I wonder if it's"
	line "been cleared?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "You can't carry"
	line "another ANIMAL..."
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Oh... Never mind,"
	line "then..."
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Thanks, kid! You"
	line "made the delivery"
	cont "for me!"

	para "Here's something"
	line "for your trouble!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "My pal was snooz-"
	line "ing, right? Heh,"
	cont "what'd I say?"
	done

Route35GoldenrodGatePokefanFText:
	text "A strange tree is"
	line "blocking the road."

	para "It wriggles around"
	line "if you talk to it."

	para "I heard it became"
	line "wild when someone"

	para "watered it with a"
	line "SQUIRTBOTTLE."
	done

Route35GoldenrodGatePokefanFText_FoughtFake_Bush:
	text "I like the ANIMAL"
	line "Lullaby they play"
	cont "on the radio."
	done

Route35GoldenrodGateFisherText:
	text "I wonder how many"
	line "kinds of ANIMALs"

	para "there are in the"
	line "world."

	para "Three years ago,"
	line "PROF.OAK said that"

	para "there were 150"
	line "different kinds."
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1
