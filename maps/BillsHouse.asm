	object_const_def
	const BILLSHOUSE_GRAMPS

BillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsGrandpa:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .JustShowedSomething
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue .MetGrandpa
	writetext BillsGrandpaIntroText
	promptbutton
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_GERBIL_TO_BILLS_GRANDPA
	iftrue .ShowedGerbil
	checkevent EVENT_SHOWED_KAI_KEN_FOX_TO_BILLS_GRANDPA
	iftrue .ShowedKai_KenFox
	checkevent EVENT_SHOWED_STARFISH_TO_BILLS_GRANDPA
	iftrue .ShowedStarfish
	checkevent EVENT_SHOWED_RADISH_TO_BILLS_GRANDPA
	iftrue .ShowedRadish
	checkevent EVENT_SHOWED_PERVERT_TO_BILLS_GRANDPA
	iftrue .ShowedPervert
	writetext BillsGrandpaPervertText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal PERVERT, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PERVERT_TO_BILLS_GRANDPA
	sjump .ShowedPervert

.GotEverstone:
	writetext BillsGrandpaRadishText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal RADISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_RADISH_TO_BILLS_GRANDPA
	sjump .ShowedRadish

.GotLeafStone:
	writetext BillsGrandpaStarfishText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal STARFISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARFISH_TO_BILLS_GRANDPA
	sjump .ShowedStarfish

.GotWaterStone:
	checkver
	iftrue .AskFox
	writetext BillsGrandpaKai_KenText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal KAI_KEN, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_KAI_KEN_FOX_TO_BILLS_GRANDPA
	sjump .ShowedKai_KenFox

.AskFox:
	writetext BillsGrandpaFoxText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal FOX, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_KAI_KEN_FOX_TO_BILLS_GRANDPA
	sjump .ShowedKai_KenFox

.GotFireStone:
	writetext BillsGrandpaGerbilText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal GERBIL, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GERBIL_TO_BILLS_GRANDPA
	sjump .ShowedGerbil

.ShowedPervert:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetrainpic
	closetext
	end

.ShowedRadish:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse .BagFull
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetrainpic
	closetext
	end

.ShowedStarfish:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse .BagFull
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetrainpic
	closetext
	end

.ShowedKai_KenFox:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetrainpic
	closetext
	end

.ShowedGerbil:
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	closetrainpic
	closetext
	end

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	promptbutton
	end

.SaidNo:
	writetext BillsGrandpaYouDontHaveItTextText
	waitbutton
	closetrainpic
	closetext
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	promptbutton
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	promptbutton
	end

.JustShowedSomething:
	writetext BillsGrandpaComeAgainText
	waitbutton
	closetrainpic
	closetext
	end

.GotThunderstone:
	writetext BillsGrandpaShownAllThePokemonText
	waitbutton
	closetrainpic
	closetext
	end

.WrongPokemon:
	writetext BillsGrandpaWrongPokemonText
	waitbutton
	closetrainpic
	closetext
	end

.BagFull:
	closetext
	end

BillsGrandpaIntroText:
	text "Hm? You know BILL?"
	line "He's my grandson."

	para "He's in JOHTO. He"
	line "does something"

	para "with PCs, so I'm"
	line "house-sitting."
	done

BillsGrandpaAskToSeeMonText:
	text "If you have that"
	line "ANIMAL, may I see"
	cont "it, please?"
	done

BillsGrandpaExcitedToSeeText:
	text "You will show me?"
	line "How good of you!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "You don't have it?"
	line "That's too bad..."
	done

BillsGrandpaShownPokemonText:
	text "Ah, so that is"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Isn't it cute!"
	line "That's so kind of"
	cont "you."
	done

BillsGrandpaTokenOfAppreciationText:
	text "Thanks!"

	para "This is a token of"
	line "my appreciation."
	done

BillsGrandpaComeAgainText:
	text "Come visit again"
	line "sometime."
	done

BillsGrandpaShownAllThePokemonText:
	text "Thanks for showing"
	line "me so many cute"
	cont "ANIMALs."

	para "I really enjoyed"
	line "myself. I'm glad"

	para "I've lived such a"
	line "long life."
	done

BillsGrandpaWrongPokemonText:
	text "Hm?"

	para "That's not the"
	line "ANIMAL that I was"
	cont "told about."
	done

BillsGrandpaPervertText:
	text "My grandson BILL"
	line "told me about an"

	para "ANIMAL that has a"
	line "rock band? KISS?"
	done

BillsGrandpaRadishText:
	text "Ah, my grandson"
	line "mentioned a round,"

	para "green ANIMAL that"
	line "is a RADISH."
	done

BillsGrandpaStarfishText:
	text "Do you know of a"
	line "sea ANIMAL"
	line "that's shaped like"
	cont "a star?"

	para "I heard that it"
	line "appears at night."

	para "I would surely"
	line "like to see it."
	done

BillsGrandpaKai_KenText:
	text "BILL told me about"
	line "an ANIMAL that is"

	para "very loyal to its"
	line "trainer."

	para "I think it is a"
	line "KAI KEN?"
	done

BillsGrandpaFoxText:
	text "I heard about a"
	line "cute ANIMAL that"
	cont "is pretty foxy."

	para "I would love to"
	line "hug a cute ANIMAL"
	cont "like that."
	done

BillsGrandpaGerbilText:
	text "Do you know that"
	line "hugely popular"
	cont "ANIMAL? GERBIL?"

	para "I would love to"
	line "see what it looks"

	para "like before it"
	line "evolves."
	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
