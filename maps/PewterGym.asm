	object_const_def
	const PEWTERGYM_KID_ROCK
	const PEWTERGYM_YOUNGSTER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymKid_RockScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic KID_ROCK
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext Kid_RockIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext Kid_RockWinLossText, 0
	loadtrainer KID_ROCK, KID_ROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KID_ROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	refreshscreen
	trainerpic KID_ROCK
	writetext Kid_RockBoulderBadgeText
	waitbutton
	closetrainpic
	closetext
	end

.FightDone:
	writetext Kid_RockFightDoneText
	waitbutton
	closetrainpic
	closetext
	end

TrainerCamperJerry:
	trainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic CAMPER
	writetext CamperJerryAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

PewterGymGuideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUIDE
	checkevent EVENT_BEAT_KID_ROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	waitbutton
	closetrainpic
	closetext
	end

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetrainpic
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, KID_ROCK, KID_ROCK1
	jumpstd GymStatue2Script

Kid_RockIntroText:
	text "KID ROCK: MY NAME"
	line "IS KIIIIIIIIID..."

	para "KID ROCK!"

	para "I'm an expert on"
	line "rocks."

	para "My ANIMALs have"
	line "been hit with all"

	para "physical attacks."
	line "You'll have a hard"

	para "time causing"
	line "any damage."

	para "Come on!"
	done

Kid_RockWinLossText:
	text "KID ROCK:"
	line "BAWITADABA DABANG!"

	para "Go ahead--take"
	line "this BADGE."
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "BOULDERBADGE."
	done

Kid_RockBoulderBadgeText:
	text "KID ROCK: <PLAY_G>,"
	line "thanks. I enjoyed"

	para "battling you, even"
	line "though I am a bit"
	cont "upset."

	para "That BOULDERBADGE"
	line "will make your"

	para "ANIMALs even more"
	line "powerful."
	done

Kid_RockFightDoneText:
	text "KID ROCK: Earth"
	line "is huge. There are"

	para "still many strong"
	line "trainers like you."

	para "Just wait and see."
	line "I'm going to be-"
	cont "come a lot strong-"
	cont "er too."
	done

CamperJerrySeenText:
	text "The trainers of"
	line "this GYM use rock-"
	cont "type ANIMALs."

	para "The rock-type has"
	line "high DEFENSE."

	para "Battles could end"
	line "up going a long"

	para "time. Are you"
	line "ready for this?"
	done

CamperJerryBeatenText:
	text "I have to win"
	line "these battles..."
	done

CamperJerryAfterBattleText:
	text "Hey, you! Trainer"
	line "from JOHTO! KROCK"

	para "is tough. He'll"
	line "punish you if you"

	para "don't take him"
	line "seriously."
	done

PewterGymGuideText:
	text "Yo! CHAMP in"
	line "making! You're"

	para "really rocking."
	line "Are you battling"

	para "the GYM LEADERS of"
	line "KANTO?"

	para "They're strong and"
	line "dedicated people,"

	para "just like JOHTO's"
	line "GYM LEADERS."
	done

PewterGymGuideWinText:
	text "Yo! CHAMP in"
	line "making! That GYM"

	para "didn't give you"
	line "much trouble."

	para "The way you took"
	line "charge was really"

	para "inspiring. I mean"
	line "that seriously."
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_KID_ROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterGymKid_RockScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJerry, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
