	object_const_def
	const POKEMONFANCLUB_CHAIRMAN
	const POKEMONFANCLUB_RECEPTIONIST
	const POKEMONFANCLUB_CLEFAIRY_GUY
	const POKEMONFANCLUB_TEACHER
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_RADISH

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue .HeardSpeech
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftrue .HeardSpeechButBagFull
	writetext PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse .NotListening
	writetext PokemonFanClubChairmanHorseText
	promptbutton
.HeardSpeechButBagFull:
	writetext PokemonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	closetrainpic
	verbosegiveitem RARE_CANDY
	iffalse .BagFull
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	refreshscreen
	trainerpic GENTLEMAN
	writetext PokemonFanClubChairmanItsARareCandyText
	waitbutton
	closetrainpic
	closetext
	end

.HeardSpeech:
	writetext PokemonFanClubChairmanMoreTalesToTellText
	waitbutton
	closetrainpic
	closetext
	end

.NotListening:
	writetext PokemonFanClubChairmanHowDisappointingText
	waitbutton
.BagFull:
	closetrainpic
	closetext
	end

PokemonFanClubReceptionistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BEAUTY
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
PokemonFanClubClefairyGuyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue .GotLostItem
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .FoundClefairyDoll
	writetext PokemonFanClubClefairyGuyClefairyIsSoAdorableText
	waitbutton
	closetrainpic
	closetext
	end

.FoundClefairyDoll:
	writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue .MetCopycat
	waitbutton
	closetrainpic
	closetext
	end

.MetCopycat:
	promptbutton
	writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	giveitem LOST_ITEM
	iffalse .NoRoom
	disappear POKEMONFANCLUB_FAIRY
	writetext PokemonFanClubPlayerReceivedDollText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	closetrainpic
	closetext
	end

.GotLostItem:
	writetext PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	waitbutton
	closetrainpic
	closetext
	end

.NoRoom:
	writetext PokemonFanClubClefairyGuyPackIsJammedFullText
	waitbutton
	closetrainpic
	closetext
	end

PokemonFanClubTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
PokemonFanClubClefairyDollScript:
	jumptext PokemonFanClubClefairyDollText

PokemonFanClubKoalaScript:
	refreshscreen
	opentext
	pokepic KOALA
	writetext PokemonFanClubKoalaText
	cry KOALA
	waitbutton
	closetrainpic
	closetext
	end

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText

PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText:
	text "I'm the CHAIRMAN"
	line "of the ANIMAL FAN"
	cont "CLUB."

	para "I've raised over"
	line "150 ANIMALs."

	para "I'm very fussy"
	line "when it comes to"
	cont "ANIMALs."

	para "Did you visit just"
	line "to hear about my"
	cont "ANIMALs?"
	done

PokemonFanClubChairmanHorseText:
	text "Good!"
	line "Then listen up!"

	para "So... my favorite"
	line "HORSE..."
	
	para "..."
	para "..."
	para "..."
	para "..."
	para "..."
	para "..."
	para "..."

	cont "Oops! Look at the"
	cont "time! I've kept"
	cont "you too long!"
	done

PokemonFanClubChairmanIWantYouToHaveThisText:
	text "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done

PokemonFanClubChairmanItsARareCandyText:
	text "It's a RARE CANDY"
	line "that makes ANIMALs"
	cont "stronger."

	para "I prefer making my"
	line "ANIMALs stronger"

	para "by battling, so"
	line "you can have it."
	done

PokemonFanClubChairmanMoreTalesToTellText:
	text "Hello, <PLAY_G>!"

	para "Did you come see"
	line "me about my"
	cont "ANIMALs again?"

	para "No? Oh, I had more"
	line "tales to tell..."
	done

PokemonFanClubChairmanHowDisappointingText:
	text "How disappointing..."

	para "Come back if you"
	line "want to listen."
	done

PokemonFanClubReceptionistText:
	text "Our CHAIRMAN is"
	line "very vocal when it"
	cont "comes to ANIMALs."
	done

PokemonFanClubClefairyGuyClefairyIsSoAdorableText:
	text "I love the way"
	line "FAERIE waggles"

	para "its finger when"
	line "it's trying to use"

	para "METRONOME."
	line "It's so adorable!"
	done

PokemonFanClubClefairyGuyMakingDoWithADollIFoundText:
	text "I love FAERIE,"
	line "but I could never"

	para "catch one. So I'm"
	line "making do with an"

	para "ANIMAL DOLL that I"
	line "found."
	done

PokemonFanClubClefairyGuyTakeThisDollBackToGirlText:
	text "Oh, I see now. The"
	line "girl who lost this"

	para "DOLL is sad..."

	para "OK. Could you take"
	line "this ANIMAL DOLL"

	para "back to that poor"
	line "little girl?"

	para "I'll befriend a"
	line "real FAERIE on"

	para "my own one day."
	line "No worries!"
	done

PokemonFanClubPlayerReceivedDollText:
	text "<PLAYER> received"
	line "ANIMAL DOLL."
	done

PokemonFanClubClefairyGuyGoingToGetARealClefairyText:
	text "You watch. I'm"
	line "going to get a"

	para "real FAERIE as"
	line "my friend."
	done

PokemonFanClubClefairyGuyPackIsJammedFullText:
	text "Your PACK is"
	line "jammed full."
	done

PokemonFanClubTeacherText:
	text "Look at my darling"
	line "KOALA!"

	para "The leaf on its"
	line "head is so cute!"
	done

PokemonFanClubClefairyDollText:
	text "It's a FAERIE!"
	line "Huh?"

	para "Oh, right. It's a"
	line "FAERIE ANIMAL"
	cont "DOLL."
	done

PokemonFanClubKoalaText:
	text "KOALA: Li liif!"
	done

PokemonFanClubListenSignText:
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done

PokemonFanClubBraggingSignText:
	text "If someone brags,"
	line "brag right back!"
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  9,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  4,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyGuyScript, -1
	object_event  7,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubTeacherScript, -1
	object_event  2,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  7,  3, SPRITE_RADISH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubKoalaScript, -1
