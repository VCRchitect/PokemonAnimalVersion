	object_const_def
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DaisyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BEAUTY
	readvar VAR_HOUR
	ifequal 15, .ThreePM
	writetext DaisyHelloText
	waitbutton
	closetrainpic
	closetext
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetrainpic
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetrainpic
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetrainpic
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetrainpic
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetrainpic
	closetext
	end

DaisyHelloText:
	text "DAISY: My brother"
	line "is Gary from the"
	cont "POKEMON anime."
	done

DaisyOfferGroomingText:
	text "DAISY: Hi! Good"
	line "timing. I'm about"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your ANIMALs"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "DAISY: Which one"
	line "should I groom?"
	done

DaisyAlrightText:
	text "DAISY: haha, wow."
	line "You are really"
	
	para "mature for your"
	line "age, ANIMAL."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "DAISY: There you"
	line "go! All done."

	para "See? Groomed."
	done

DaisyAlreadyGroomedText:
	text "DAISY: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done

DaisyRefusedText:
	text "DAISY: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done

DaisyCantGroomEggText:
	text "DAISY: Oh, sorry."
	line "I honestly can't"
	cont "groom an EGG."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
