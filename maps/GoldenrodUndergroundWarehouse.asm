	object_const_def
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET1
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET2
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET3
	const GOLDENRODUNDERGROUNDWAREHOUSE_GENTLEMAN
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL1
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL2
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL3

GoldenrodUndergroundWarehouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ResetSwitches

.ResetSwitches:
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_4
	clearevent EVENT_SWITCH_5
	clearevent EVENT_SWITCH_6
	clearevent EVENT_SWITCH_7
	clearevent EVENT_SWITCH_8
	clearevent EVENT_SWITCH_9
	clearevent EVENT_SWITCH_10
	clearevent EVENT_SWITCH_11
	clearevent EVENT_SWITCH_12
	clearevent EVENT_SWITCH_13
	clearevent EVENT_SWITCH_14
	setval 0
	writemem wUndergroundSwitchPositions
	endcallback

TrainerGruntM24:
	trainer GRUNTM, GRUNTM_24, EVENT_BEAT_ROCKET_GRUNTM_24, GruntM24SeenText, GruntM24BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM24AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntM14:
	trainer GRUNTM, GRUNTM_14, EVENT_BEAT_ROCKET_GRUNTM_14, GruntM14SeenText, GruntM14BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM14AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntM15:
	trainer GRUNTM, GRUNTM_15, EVENT_BEAT_ROCKET_GRUNTM_15, GruntM15SeenText, GruntM15BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM15AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

GoldenrodUndergroundWarehouseDirectorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	checkevent EVENT_RECEIVED_CARD_KEY
	iftrue .GotCardKey
	writetext DirectorIntroText
	promptbutton
	closetrainpic
	verbosegiveitem CARD_KEY
	setevent EVENT_RECEIVED_CARD_KEY
	setevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_3
	trainerpic GENTLEMAN
	writetext DirectorCardKeyText
	promptbutton
.GotCardKey:
	writetext DirectorAfterText
	waitbutton
	closetrainpic
	closetext
	end

GoldenrodUndergroundWarehouseMaxEther:
	itemball MAX_ETHER

GoldenrodUndergroundWarehouseTMSleepTalk:
	itemball TM_SLEEP_TALK

GoldenrodUndergroundWarehouseUltraBall:
	refreshscreen
	opentext
	writetext FirebirdText
	pokepic FIREBIRD
	cry FIREBIRD
	waitbutton
	closepokepic
	refreshscreen
	writetext FirebirdText2
	yesorno
	iffalse FirebirdnopeScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull	
	disappear GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL3
	writetext ChoseFirebirdText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, FIREBIRD
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke FIREBIRD, 25, BERRY
	closetext
	end
	
.partyfull
	refreshscreen
	writetext CarryMoreFirebirdText
	waitbutton
	closetext
	end
	
FirebirdnopeScript:
	writetext DamnClassicCarsText
	waitbutton
	closetext
	end

CarryMoreFirebirdText:
	text "You already have"
	line "six ANIMALs with"
	cont "you, though..."
	done

GruntM24SeenText:
	text "How did you get"
	line "this far?"

	para "I guess it can't"
	line "be helped. I'll"
	cont "dispose of you."
	
	para "How do you feel"
	line "about pianos on"
	para "ropes that are"
	line "way too weak and"
	cont "frayed?"
	done

GruntM24BeatenText:
	text "I sure hope that"
	line "piano doesn't fall"
	cont "on me!"
	done

GruntM24AfterBattleText:
	text "TEAM ROCKET will"
	line "keep going, wait-"
	cont "ing for the return"
	cont "of GIOVANNI."

	para "We'll do whatever"
	line "it takes."
	
	para "We love GIOVANNI."
	line "That guy makes the"
	cont "best pasta ever."
	done

GruntM14SeenText:
	text "You're not going"
	line "any farther!"

	para "I don't show mercy"
	line "to my enemies, not"
	cont "even brats!"
	
	para "Here, smoke this"
	line "cigar that totally"
	para "won't explode in"
	line "your face and make"
	para "you all covered in"
	line "soot and junk."
	done

GruntM14BeatenText:
	text "Blast it!"
	done

GruntM14AfterBattleText:
	text "I lost! I will"
	line "smoke this cigar"
	para "to make myself"
	line "feel a bit better."
	done

GruntM15SeenText:
	text "Hyuck-hyuck-hyuck!"
	line "I remember you!"

	para "You got me good"
	line "at our hideout!"
	done

GruntM15BeatenText:
	text "Hyuck-hyuck-hyuck!"
	line "So, that's how?"
	done

GruntM15AfterBattleText:
	text "Hyuck-hyuck-hyuck!"
	line "That was a blast!"
	cont "I'll remember you!"
	done

DirectorIntroText:
	text "DIRECTOR: Who?"
	line "What? You came to"
	cont "rescue me?"

	para "Thank you!"

	para "The RADIO TOWER!"

	para "What's happening"
	line "there?"

	para "Taken over by TEAM"
	line "ROCKET?"

	para "Here. Take this"
	line "CARD KEY."
	done

DirectorCardKeyText:
	text "DIRECTOR: Use that"
	line "to open the shut-"
	cont "ters on 3F."
	done

DirectorAfterText:
	text "I'm begging you to"
	line "help."

	para "There's no telling"
	line "what they'll do if"

	para "they control the"
	line "transmitter."

	para "They may even be"
	line "able to control"

	para "ANIMALs using a"
	line "special signal!"

	para "You're the only"
	line "one I can call on."
	
	para "The police are so"
	line "useless in this"
	
	para "city that I have"
	line "to call on the aid"
	cont "of a child."

	para "Please save the"
	line "RADIO TOWER..."

	para "And all the little"
	line "ANIMALs!"
	done

FirebirdText:
	text "Oh damn, there's"
	line "something in this"
	cont "cardboard box."
	done
	
FirebirdText2:	
	text "Aw, shit. It's a"
	line "whole ass car!"
	
	para "Someone parked a"
	line "vintage FIREBIRD"
	cont "down here."
	
	para "You want it?"
	done
	
DamnClassicCarsText:
	text "Yeah, I can't be"
	line "trifling with no"
	cont "classic cars!"
	
	para "It's too much to"
	line "maintain them!"
	done
	
ChoseFirebirdText:
	text "Against your best"
	line "judgement, you"
	cont "got a FIREBIRD!"
	done


GoldenrodUndergroundWarehouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 2
	warp_event  3, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 3
	warp_event 17,  2, GOLDENROD_DEPT_STORE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM24, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM14, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM15, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundWarehouseDirectorScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 18, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseMaxEther, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_MAX_ETHER
	object_event 13,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseTMSleepTalk, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_TM_SLEEP_TALK
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundWarehouseUltraBall, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_ULTRA_BALL
