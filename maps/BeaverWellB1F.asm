	object_const_def
	const BEAVERWELLB1F_ROCKET1
	const BEAVERWELLB1F_ROCKET2
	const BEAVERWELLB1F_ROCKET3
	const BEAVERWELLB1F_ROCKET_GIRL
	const BEAVERWELLB1F_BEAVER1
	const BEAVERWELLB1F_BEAVER2
	const BEAVERWELLB1F_KURT
	const BEAVERWELLB1F_BOULDER
	const BEAVERWELLB1F_POKE_BALL

BeaverWellB1F_MapScripts:
	def_scene_scripts

	def_callbacks

BeaverWellB1FKurtScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic KURT
	writetext BeaverWellB1FKurtText
	waitbutton
	closetrainpic
	closetext
	end
	
TrainerGruntM29:
	trainer GRUNTM, GRUNTM_29, EVENT_BEAT_ROCKET_GRUNTM_29, GruntM29SeenText, GruntM29BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM29AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntM1:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, GruntM1SeenText, GruntM1BeatenText, 0, .Script

.Script:
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext TrainerGruntM1WhenTalkText
	waitbutton
	closetrainpic
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear BEAVERWELLB1F_ROCKET1
	disappear BEAVERWELLB1F_ROCKET2
	disappear BEAVERWELLB1F_ROCKET3
	disappear BEAVERWELLB1F_ROCKET_GIRL
	pause 15
	special FadeInQuickly
	disappear BEAVERWELLB1F_KURT
	moveobject BEAVERWELLB1F_KURT, 11, 6
	appear BEAVERWELLB1F_KURT
	applymovement BEAVERWELLB1F_KURT, KurtBeaverWellVictoryMovementData
	turnobject PLAYER, RIGHT
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtLeaveBeaverWellText
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_CLEARED_BEAVER_WELL
	variablesprite SPRITE_AZALEA_ROCKET, SPRITE_SILVER
	setmapscene AZALEA_TOWN, SCENE_AZALEATOWN_RIVAL_BATTLE
	clearevent EVENT_ILEX_FOREST_APPRENTICE
	clearevent EVENT_ILEX_FOREST_DUCK
	setevent EVENT_CHARCOAL_KILN_DUCK
	setevent EVENT_CHARCOAL_KILN_APPRENTICE
	setevent EVENT_BEAVER_WELL_BEAVERS
	setevent EVENT_BEAVER_WELL_KURT
	clearevent EVENT_AZALEA_TOWN_BEAVERS
	clearevent EVENT_KURTS_HOUSE_BEAVER
	clearevent EVENT_KURTS_HOUSE_KURT_1
	special FadeOutPalettes
	special HealParty
	pause 15
	warp KURTS_HOUSE, 3, 3
	end

TrainerGruntM2:
	trainer GRUNTM, GRUNTM_2, EVENT_BEAT_ROCKET_GRUNTM_2, GruntM2SeenText, GruntM2BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext GruntM2AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerGruntF1:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_ROCKET_GRUNTF_1, GruntF1SeenText, GruntF1BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic GRUNTF
	writetext GruntF1AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

BeaverWellB1FBeaverWithMailScript:
	faceplayer
	refreshscreen
	pokepic BEAVER
	opentext
	cry BEAVER
	writetext BeaverWellB1FBeaverWithMailText
	yesorno
	iftrue .ReadMail
	closepokepic
	closetext
	end

.ReadMail:
	writetext BeaverWellB1FBeaverMailText
	waitbutton
	closepokepic
	closetext
	end

BeaverWellB1FTaillessBeaverScript:
	faceplayer
	refreshscreen
	opentext
	pokepic BEAVER
	writetext BeaverWellB1FTaillessBeaverText
	cry BEAVER
	waitbutton
	closepokepic
	closetext
	end

BeaverWellB1FBoulder:
	jumpstd StrengthBoulderScript

BeaverWellB1FSuperPotion:
	itemball SUPER_POTION

KurtBeaverWellVictoryMovementData:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_sleep 8
	step_sleep 8
	step_sleep 8
	step LEFT
	step UP
	step UP
	step_sleep 8
	step_sleep 8
	step_sleep 8
	turn_head LEFT
	step_end

BeaverWellB1FKurtText:
	text "KURT: Hey there,"
	line "<PLAYER>!"

	para "The guard up top"
	line "took off when I"
	cont "shouted at him."

	para "But then I took a"
	line "tumble down the"
	cont "WELL."

	para "I slammed down"
	line "hard on my back,"
	cont "so I can't move."

	para "It looks like I"
	line "have a case of"
	cont "quadriplegic."
	done

KurtLeaveBeaverWellText:
	text "KURT: Way to go,"
	line "<PLAYER>!"

	para "TEAM ROCKET has"
	line "taken off."

	para "I also fixed my"
	line "back just through"
	
	para "my incredible"
	line "willpower."

	done

GruntM29SeenText:
	text "Darn! I was stand-"
	line "ing guard up top"

	para "when some old coot"
	line "yelled at me."

	para "He startled me so"
	line "much that I fell"
	cont "down here."

	para "My concussion says"
	line "I should fight!"
	done

GruntM29BeatenText:
	text "Arrgh! This is NOT"
	line "my day!"
	done

GruntM29AfterBattleText:
	text "Sure, we've been"
	line "hacking the tails"

	para "off BEAVERs and"
	line "selling them."

	para "Everything we do"
	line "is for profit."

	para "That's right!"
	line "We're capitalists!"

	para "We'll do any-"
	line "thing for money!"
	done

GruntM1SeenText:
	text "What do you want?"

	para "You want to see"
	line "the battle screen?"
	done

GruntM1BeatenText:
	text "Ok, but don't you"
	line "think I show just"
	cont "anyone!"
	done

TrainerGruntM1WhenTalkText:
	text "Yeah, TEAM ROCKET"
	line "was broken up"
	cont "three years ago."

	para "We're like the"
	line "kids after a big"
	cont "divorce!"
	done

GruntM2SeenText:
	text "Quit taking the"
	line "BEAVERTAILS?"

	para "What's next?"
	line "Leave COWs alone?"
	done

GruntM2BeatenText:
	text "Just..."
	line "Ridiculous."
	done

GruntM2AfterBattleText:
	text "We need the money,"
	line "but selling"
	cont "BEAVERTAILS?"

	para "Why couldn't it"
	line "be a LEMONADE"
	cont "stand though?"
	done

GruntF1SeenText:
	text "Stop taking TAILS?"

	para "No, thank you."
	
	done

GruntF1BeatenText:
	text "You rotten brat!"
	done

GruntF1AfterBattleText:
	text "BEAVERTAILS"
	line "grow back fast!"

	para "What's wrong with"
	line "selling them?"
	done

BeaverWellB1FBeaverWithMailText:
	text "A BEAVER with"
	line "its TAIL cut off..."

	para "Huh? It has MAIL."
	line "Read it?"
	done

BeaverWellB1FBeaverMailText:
	text "<PLAYER> read the"
	line "MAIL."

	para "Be good and look"
	line "after the house"

	para "with Grandpa and"
	line "BEAVER."

	para "Love, Dad"
	
	para "P.S. Don't read"
	line "people's mail."
	cont "It's a felony."
	done

BeaverWellB1FTaillessBeaverText:
	text "A BEAVER with"
	line "its TAIL cut off..."
	done

BeaverWellB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, AZALEA_TOWN, 6
	warp_event  7, 11, BEAVER_WELL_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM29, EVENT_BEAVER_WELL_ROCKETS
	object_event  5,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM1, EVENT_BEAVER_WELL_ROCKETS
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM2, EVENT_BEAVER_WELL_ROCKETS
	object_event 10,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntF1, EVENT_BEAVER_WELL_ROCKETS
	object_event  7,  4, SPRITE_BEAVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BeaverWellB1FBeaverWithMailScript, EVENT_BEAVER_WELL_BEAVERS
	object_event  6,  2, SPRITE_BEAVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BeaverWellB1FTaillessBeaverScript, EVENT_BEAVER_WELL_BEAVERS
	object_event 16, 14, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BeaverWellB1FKurtScript, EVENT_BEAVER_WELL_KURT
	object_event  3,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BeaverWellB1FBoulder, -1
	object_event 10,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BeaverWellB1FSuperPotion, EVENT_BEAVER_WELL_B1F_SUPER_POTION
