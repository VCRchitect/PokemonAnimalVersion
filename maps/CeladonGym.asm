	object_const_def
	const CELADONGYM_ERIKA
	const CELADONGYM_LASS1
	const CELADONGYM_LASS2
	const CELADONGYM_BEAUTY
	const CELADONGYM_TWIN1
	const CELADONGYM_TWIN2

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	trainerpic ERIKA
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext ErikaBeforeBattleText
	waitbutton
	closetrainpic
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	opentext
	writetext PlayerReceivedRainbowBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
.FightDone:
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue .GotGigaDrain
	refreshscreen
	trainerpic ERIKA
	writetext ErikaExplainTMText
	promptbutton
	closetrainpic
	verbosegiveitem TM_GIGA_DRAIN
	iffalse .GotGigaDrain
	setevent EVENT_GOT_TM19_GIGA_DRAIN
.GotGigaDrain:
	refreshscreen
	trainerpic ERIKA
	writetext ErikaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerLassMichelle:
	trainer LASS, MICHELLE, EVENT_BEAT_LASS_MICHELLE, LassMichelleSeenText, LassMichelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	trainerpic LASS
	opentext
	writetext LassMichelleAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerPicnickerTanya:
	trainer PICNICKER, TANYA, EVENT_BEAT_PICNICKER_TANYA, PicnickerTanyaSeenText, PicnickerTanyaBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	trainerpic PICNICKER
	opentext
	writetext PicnickerTanyaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerBeautyJulia:
	trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	trainerpic BEAUTY
	opentext
	writetext BeautyJuliaAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerTwinsJoAndZoe1:
	trainer TWINS, JOANDZOE1, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe1SeenText, TwinsJoAndZoe1BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	trainerpic TWINS
	opentext
	writetext TwinsJoAndZoe1AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerTwinsJoAndZoe2:
	trainer TWINS, JOANDZOE2, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe2SeenText, TwinsJoAndZoe2BeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	trainerpic TWINS
	opentext
	writetext TwinsJoAndZoe2AfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

CeladonGymStatue:
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	jumpstd GymStatue2Script

ErikaBeforeBattleText:
	text "ERIKA: Hello..."
	line "Lovely weather,"

	para "isn't it?"
	line "It's so pleasant."

	para "I'm afraid I may"
	line "doze off..."

	para "My name is ERIKA."
	line "I am the LEADER of"
	cont "CELADON GYM."

	para "I was hoping that"
	line "my comment would"
	
	para "show you that"
	line "you're boring me."
	done

ErikaBeatenText:
	text "ERIKA: Oh!"
	line "I just got my shit"
	cont "kicked."

	para "I shall give you"
	line "RAINBOWBADGE..."
	done

PlayerReceivedRainbowBadgeText:
	text "<PLAYER> received"
	line "RAINBOWBADGE."
	done

ErikaExplainTMText:
	text "ERIKA: That was a"
	line "fucking wild time."

	para "You knocked the"
	line "docile out of me!"
	
	para "Take this TM."

	para "It is GIGA DRAIN."

	para "It is a wonderful"
	line "move that drains"

	para "half the damage it"
	line "inflicts to heal"
	cont "your ANIMALs."
	done

ErikaAfterBattleText:
	text "ERIKA: Losing"
	line "leaves a bitter"

	para "aftertaste, like"
	line "a shit sandwich."
	done

LassMichelleSeenText:
	text "Do you think a"
	line "girls-only GYM"
	cont "is rare?"
	
	para "It's how we avoid"
	line "registry-members"
	cont "like yourself."
	done

LassMichelleBeatenText:
	text "Oh, bleah!"
	done

LassMichelleAfterBattleText:
	text "I just got care-"
	line "less, that's all!"

	para "If I hadn't been"
	line "distracted by my"
	
	para "own beauty, I'd"
	line "have kicked the"
	
	para "total horseshit"
	line "out of you."
	done

PicnickerTanyaSeenText:
	text "Oh, a battle?"
	line "That's kind of"
	cont "scary, but OK!"
	
	para "I'll get my gun!"
	done

PicnickerTanyaBeatenText:
	text "Oh, that's it?"
	
	para "Hopefully you're"
	line "more exciting at"
	cont "other stuff."
	done

PicnickerTanyaAfterBattleText:
	text "Oh, look at all"
	line "your BADGES. No"

	para "wonder I couldn't"
	line "win!"
	
	para "I even see that"
	line "you have the"
	
	para "BIGGEST NOSE"
	line "badge!"
	done

BeautyJuliaSeenText:
	text "Were you looking"
	line "at these flowers"
	cont "or at me?"
	done

BeautyJuliaBeatenText:
	text "How annoying!"
	done

BeautyJuliaAfterBattleText:
	text "How do I go about"
	line "becoming ladylike"
	cont "like ERIKA?"
	
	para "I already gave up"
	line "cigarettes and"
	cont "short skirts!"
	done

TwinsJoAndZoe1SeenText:
	text "We'll show you"
	line "ANIMAL moves that"
	cont "ERIKA taught us!"
	done

TwinsJoAndZoe1BeatenText:
	text "Oh... We lost..."
	done

TwinsJoAndZoe1AfterBattleText:
	text "ERIKA will get you"
	line "back for us!"
	
	para "She's a crazy"
	line "bitch for sure!"
	done

TwinsJoAndZoe2SeenText:
	text "We're going to"
	line "protect ERIKA!"
	
	para "Even though she"
	line "could wreck any"
	cont "of us..."
	done

TwinsJoAndZoe2BeatenText:
	text "We couldn't win..."
	done

TwinsJoAndZoe2AfterBattleText:
	text "ERIKA is much,"
	line "much stronger!"
	
	para "I once saw her"
	line "pull a guy's eye"
	
	para "through his pants"
	line "zipper!"
	done

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  5,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  7,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassMichelle, -1
	object_event  2,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerTanya, -1
	object_event  3,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulia, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe2, -1
