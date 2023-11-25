	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUITARIST
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterScalebug
	yesorno
	iffalse .refusetotakeshuckie
	special GiveScalebug
	iffalse .partyfull
	writetext ManiaText_TakeCareOfScalebug
	promptbutton
	closetrainpic
	waitsfx
	writetext ManiaText_GotScalebug
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalse .returnshuckie
	writetext ManiaText_TakeCareOfScalebug
	waitbutton
	closetrainpic
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetrainpic
	closetext
	end

.refusetotakeshuckie
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetrainpic
	closetext
	end

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special ReturnShuckie
	ifequal SHUCKIE_WRONG_MON, .wrong
	ifequal SHUCKIE_REFUSED, .refused
	ifequal SHUCKIE_HAPPY, .superhappy
	ifequal SHUCKIE_FAINTED, .default_postevent
	; SHUCKIE_RETURNED
	writetext ManiaText_ThankYou
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	writetext ManiaText_ScalebugNotThere
	waitbutton
	closetrainpic
	closetext
	end

.superhappy
	writetext ManiaText_ScalebugLikesYou
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	waitbutton
	closetrainpic
	closetext
	end

.nothingleft ; unreferenced
	writetext ManiaText_ScalebugIsYourLastMon
	waitbutton
	closetext
	end

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetrainpic
	closetext
	end

ManiasHouseUnusedBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

ManiaText_AskLookAfterScalebug:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized ANIMALs!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my ANIMAL"
	line "for a while?"
	done

ManiaText_TakeCareOfScalebug:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotScalebug:
	text "<PLAYER> received"
	line "SCALE BUG."
	done

ManiaText_PartyFull:
	text "Your ANIMAL party"
	line "is full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no... What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my"
	line "ANIMAL?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done

ManiaText_ThankYou:
	text "Thank you!"
	done

ManiaText_ScalebugNotThere:
	text "Hey, you don't"
	line "have my ANIMAL"
	cont "with you."
	done

ManiaText_ScalebugLikesYou:
	text "My ANIMAL has"
	line "come to like you."

	para "All right, you"
	line "should keep it."

	para "But promise to"
	line "be good to it!"
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no. That's"
	line "the same as being"
	cont "robbed."
	done

ManiaText_HappinessSpeech:
	text "For ANIMALs, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done

ManiaText_ScalebugIsYourLastMon:
	text "If I take my"
	line "ANIMAL back, what"

	para "are you going to"
	line "use in battle?"
	done

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
