	object_const_def
	const BILLSFAMILYSHOUSE_BILL
	const BILLSFAMILYSHOUSE_POKEFAN_F
	const BILLSFAMILYSHOUSE_TWIN

BillsFamilysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BILL
	checkevent EVENT_GOT_WOLF
	iftrue .GotWolf
	writetext BillTakeThisWolfText
	yesorno
	iffalse .Refused
	writetext BillImCountingOnYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedWolfText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke WOLF, 20
	setevent EVENT_GOT_WOLF
	writetext BillWolfMayEvolveText
	waitbutton
	closetrainpic
	closetext
	end

.NoRoom:
	writetext BillPartyFullText
	waitbutton
	closetrainpic
	closetext
	end

.Refused:
	writetext BillNoWolfText
	waitbutton
	closetrainpic
	closetext
	end

.GotWolf:
	writetext BillPopWontWorkText
	waitbutton
	closetrainpic
	closetext
	end

BillsMomScript:
	refreshscreen
	faceplayer
	opentext
	trainerpic POKEFANF
	checkevent EVENT_MET_BILL
	iffalse .HaventMetBill
	writetext BillsMomText_BeforeEcruteak
	waitbutton
	closetrainpic
	closetext
	end

.HaventMetBill:
	writetext BillsMomText_AfterEcruteak
	waitbutton
	closetrainpic
	closetext
	end

BillsSisterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillsSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	writetext BillsSisterStorageSystemText
	waitbutton
	closetrainpic
	closetext
	end

.Refused:
	writetext BillsSisterRefusedNumberText
	waitbutton
	closetrainpic
	closetext
	end

.NoRoom:
	writetext BillsSisterPhoneFullText
	promptbutton
	sjump .Refused

BillsHouseBookshelf1:
	jumpstd PictureBookshelfScript

BillsHouseBookshelf2:
	jumpstd MagazineBookshelfScript

BillsHouseRadio:
	jumpstd Radio2Script

BillTakeThisWolfText:
	text "BILL: Hi, <PLAYER>!"
	line "Do us a favor and"
	cont "take this WOLF."

	para "It came over when"
	line "I was adjusting"
	cont "the TIME CAPSULE."

	para "Someone has to"
	line "take care of it,"

	para "but I don't like"
	line "being outside and"
	
	para "I can't be messing"
	line "with any ANIMAL"
	
	para "that can travel"
	line "through time."

	para "Can I count on you"
	line "to play with it,"
	cont "<PLAYER>?"
	done

BillImCountingOnYouText:
	text "BILL: I knew you'd"
	line "come through!"

	para "Way to go! You're"
	line "the real deal!"

	para "OK, I'm counting"
	line "on you."

	para "Take good care of"
	line "it!"
	done

ReceivedWolfText:
	text "<PLAYER> received"
	line "WOLF!"
	done

BillWolfMayEvolveText:
	text "BILL: PROF.ELM"
	line "claims WOLF may"

	para "evolve in new and"
	line "unknown ways."
	done

BillPartyFullText:
	text "Whoa, wait. You"
	line "can't carry any"
	cont "more ANIMALs."
	done

BillNoWolfText:
	text "Oh... Now what to"
	line "do?"
	done

BillPopWontWorkText:
	text "BILL: My pop, he"
	line "won't work. All he"

	para "does is goof off"
	line "all day long."

	para "He's getting to be"
	line "a real headache..."
	done

BillsMomText_BeforeEcruteak:
	text "Oh, you collect"
	line "ANIMALs? My son"
	cont "BILL is an expert."

	para "He just got called"
	line "to the ANIMAL"

	para "CENTER in ECRUTEAK"
	line "CITY."

	para "My husband went"
	line "off to the GAME"

	para "CORNER without"
	line "being called..."
	done

BillsMomText_AfterEcruteak:
	text "My husband was"
	line "once known as a"

	para "ANIMAL-MANIAC."
	line "BILL must have"

	para "taken after his"
	line "father."
	done

BillsSisterUsefulNumberText:
	text "Are you a trainer?"

	para "I've got a useful"
	line "phone number for"
	cont "you."
	done

RecordedBillsNumberText:
	text "<PLAYER> recorded"
	line "BILL's number."
	done

BillsSisterRefusedNumberText:
	text "My brother made"
	line "the PC ANIMAL"
	cont "storage system."

	para "I was going to"
	line "give you BILL's"
	cont "number..."
	done

BillsSisterPhoneFullText:
	text "You can't record"
	line "any more numbers."
	done

BillsSisterStorageSystemText:
	text "My big brother"
	line "BILL made the PC"

	para "ANIMAL storage"
	line "system."
	done

BillsFamilysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BillsHouseBookshelf2
	bg_event  1,  1, BGEVENT_READ, BillsHouseBookshelf1
	bg_event  7,  1, BGEVENT_READ, BillsHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillScript, EVENT_MET_BILL
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSisterScript, -1
