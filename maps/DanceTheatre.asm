	object_const_def
	const DANCETHEATRE_KIMONO_GIRL1
	const DANCETHEATRE_KIMONO_GIRL2
	const DANCETHEATRE_KIMONO_GIRL3
	const DANCETHEATRE_KIMONO_GIRL4
	const DANCETHEATRE_KIMONO_GIRL5
	const DANCETHEATRE_GENTLEMAN
	const DANCETHEATRE_ROCK_KAIJU
	const DANCETHEATRE_COOLTRAINER_M
	const DANCETHEATRE_GRANNY

DanceTheatre_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic KIMONO_GIRL
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic KIMONO_GIRL
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic KIMONO_GIRL
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic KIMONO_GIRL
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	refreshscreen
	opentext
	trainerpic KIMONO_GIRL
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetrainpic
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	refreshscreen
	opentext
	trainerpic SWIMMERM
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext SurfGuyLadGiftText
	waitbutton
	closetrainpic
	closetext
	end

.PlayerIsFemale:
	writetext SurfGuyLassieGiftText
	waitbutton
	closetrainpic
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	closetrainpic
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	refreshscreen
	trainerpic SWIMMERM
	writetext SurfGuySurfExplanationText
	waitbutton
	closetrainpic
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetrainpic
	closetext
	end

DanceTheaterRock_Kaiju:
	refreshscreen
	opentext
	pokepic ROCK_KAIJU
	writetext Rock_KaijuText
	cry ROCK_KAIJU
	waitbutton
	closepokepic
	closetext
	end

DanceTheatreCooltrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

DanceTheatreGrannyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	writetext DanceTheatreGrannyText
	waitbutton
	closetrainpic
	closetext
	end

DanceTheatreFancyPanel:
	jumptext DanceTheatreFancyPanelText

KimonoGirlNaokoSeenText:
	text "You have lovely"
	line "ANIMALs. May I see"
	cont "them in battle?"
	
	para "Can I take some"
	line "pictures of them?"
	
	para "No? What about a"
	line "charcoal drawing?"
	done

KimonoGirlNaokoBeatenText:
	text "Oh, you are very"
	line "strong. It must be"
	para "from those hunky"
	line "ANIMALs with you."
	done

KimonoGirlNaokoAfterBattleText:
	text "I enjoyed that"
	line "bout. I would like"
	cont "to see you again."
	
	para "Maybe next time"
	line "I won't wear any"
	cont "pants."
	done

KimonoGirlSayoSeenText:
	text "I always dance"
	line "with my ANIMALs."

	para "Of course, I also"
	line "train them."
	
	para "You ever seen an"
	line "ANIMAL twerk?"
	
	para "It's for the best."
	done

KimonoGirlSayoBeatenText:
	text "Oh, so close!"
	line "I almost had you."
	done

KimonoGirlSayoAfterBattleText:
	text "Rhythm is impor-"
	line "tant for both"

	para "dancing and for"
	line "ANIMAL fights."
	
	para "That's why my"
	line "white friends are"
	cont "hella bad."
	done

KimonoGirlZukiSeenText:
	text "Isn't my barrette"
	line "pretty?"

	para "Oh. An ANIMAL"
	line "battle?"
	done

KimonoGirlZukiBeatenText:
	text "I don't have any"
	line "ANIMALs left..."
	done

KimonoGirlZukiAfterBattleText:
	text "I put a different"
	line "flower in my bar-"
	cont "rette every month."
	
	para "Yes, there are"
	line "enough to do that."
	done

KimonoGirlKuniSeenText:
	text "Oh, you're a cute"
	line "trainer. Would you"
	cont "like to battle?"
	
	para "You wan't dance?"
	line "You want happy"
	cont "ending?"
	
	para "I kid, I kid."
	done

KimonoGirlKuniBeatenText:
	text "You're stronger"
	line "than you look."
	
	para "And that face can"
	line "sand wood planks."
	done

KimonoGirlKuniAfterBattleText:
	text "I trained a lot,"
	line "so I thought I was"

	para "a capable trainer."
	line "I guess I'm not."
	done

KimonoGirlMikiSeenText:
	text "Do you like my"
	line "dancing? I'm good"
	cont "at ANIMALs too."
	
	para "But ANIMAL dancing"
	line "is a different"
	cont "story altogether."
	done

KimonoGirlMikiBeatenText:
	text "Ooh, you're good"
	line "at ANIMALs too."
	done

KimonoGirlMikiAfterBattleText:
	text "I can keep dancing"
	line "because there are"

	para "people who enjoy"
	line "what I do."

	para "My ANIMALs keep my"
	line "spirits up too."
	
	para "That and the daily"
	line "ZOLOFT I take."
	done

SurfGuyNeverLeftAScratchText:
	text "Not only are the"
	line "KIMONO GIRLS great"

	para "dancers, they're"
	line "also skilled at"
	cont "ANIMALs."

	para "I always challenge"
	line "them, but I've"

	para "never even left a"
	line "scratch..."
	done

SurfGuyLadGiftText:
	text "Lad! If you can"
	line "defeat all the"

	para "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

SurfGuyLassieGiftText:
	text "Lassie, if you can"
	line "defeat all the"

	para "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

SurfGuyLikeADanceText:
	text "The way you bat-"
	line "tled, it was like"
	cont "watching a dance."

	para "It was a rare"
	line "treat to see!"

	para "I want you to have"
	line "this. Don't worry"
	cont "--take it!"
	done

SurfGuySurfExplanationText:
	text "That's SURF."

	para "It's a move that"
	line "lets ANIMALs swim"
	cont "across water."
	done

SurfGuyElegantKimonoGirlsText:
	text "I wish my ANIMALs"
	line "were as elegant as"
	cont "the KIMONO GIRLS."
	done

Rock_KaijuText:
	text "ROCK KAIJU: Gugooh"
	line "gugogooh!"
	done

DanceTheatreCooltrainerMText:
	text "That man's always"
	line "with his ANIMAL."

	para "Says he wants an"
	line "ANIMAL that can"
	cont "SURF and dance."

	para "Is he trying to"
	line "make a synchro-"
	cont "nized swimming"
	cont "ANIMAL?"
	done

DanceTheatreGrannyText:
	text "The KIMONO GIRLS"
	line "are so beautiful,"

	para "But they have to"
	line "go through rigor-"
	cont "ous training."

	para "And they have to"
	line "learn to follow"

	para "customs before ap-"
	line "pearing in public."

	para "But if you love"
	line "something, any-"
	cont "thing is possible."
	done

DanceTheatreFancyPanelText:
	text "It's a fancy panel"
	line "that's decorated"
	cont "with flowers."
	done

DanceTheatre_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheatreFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheatreFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_ROCK_KAIJU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRock_Kaiju, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheatreCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheatreGrannyScript, -1
