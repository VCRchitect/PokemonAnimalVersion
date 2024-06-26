	object_const_def
	const CELADONCAFE_SUPER_NERD
	const CELADONCAFE_FISHER1
	const CELADONCAFE_FISHER2
	const CELADONCAFE_FISHER3
	const CELADONCAFE_TEACHER

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChef:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	writetext ChefText_Eatathon
	waitbutton
	closetrainpic
	closetext
	end

CeladonCafeFisher1:
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher1Text_Snarfle
	waitbutton
	closetrainpic
	closetext
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher1Text_Concentration
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_FISHER1, LEFT
	end

CeladonCafeFisher2:
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher2Text_GulpChew
	waitbutton
	closetrainpic
	closetext
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher2Text_Quantity
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_FISHER2, RIGHT
	end

CeladonCafeFisher3:
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher3Text_MunchMunch
	waitbutton
	closetrainpic
	closetext
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	writetext Fisher3Text_GoldenrodIsBest
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_FISHER3, RIGHT
	end

CeladonCafeTeacher:
	checkitem COIN_CASE
	iftrue .HasCoinCase
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext TeacherText_CrunchCrunch
	waitbutton
	closetrainpic
	closetext
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext TeacherText_NoCoinCase
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

.HasCoinCase:
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext TeacherText_KeepEating
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_TEACHER, RIGHT
	refreshscreen
	opentext
	trainerpic TEACHER
	writetext TeacherText_MoreChef
	waitbutton
	closetrainpic
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

EatathonContestPoster:
	jumptext EatathonContestPosterText

CeladonCafeTrashcan:
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end

.PackFull:
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	promptbutton
	writetext NoRoomForLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript

ChefText_Eatathon:
	text "Hi!"

	para "We're holding an"
	line "eatathon contest."

	para "No professionals"
	line "allowed, as I see"
	cont "you clearly are."
	done

Fisher1Text_Snarfle:
	text "...Snarfle, chew."
	done

Fisher1Text_Concentration:
	text "Don't talk to me!"

	para "You'll break my"
	line "concentration!"
	done

Fisher2Text_GulpChew:
	text "...Gulp... Chew..."
	done

Fisher2Text_Quantity:
	text "I take quantity"
	line "over quality!"

	para "I'm happy when I'm"
	line "full!"
	done

Fisher3Text_MunchMunch:
	text "Munch, munch..."
	done

Fisher3Text_GoldenrodIsBest:
	text "The food is good"
	line "here, but GOLDEN-"
	cont "ROD has the best"
	cont "food anywhere."
	done

TeacherText_CrunchCrunch:
	text "Crunch... Crunch."
	done

TeacherText_NoCoinCase:
	text "Nobody here will"
	line "give you a COIN"

	para "CASE. You should"
	line "look in JOHTO in"
	cont "Goldenrod City."
	done

TeacherText_KeepEating:
	text "Crunch... Crunch."

	para "I can keep eating!"
	done

TeacherText_MoreChef:
	text "More, CHEF!"
	done

EatathonContestPosterText:
	text "Eatathon Contest!"
	line "No time limit!"

	para "A battle without"
	line "end! The biggest"

	para "muncher gets it"
	line "all for free!"
	done

FoundLeftoversText:
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

NoRoomForLeftoversText:
	text "But <PLAYER> can't"
	line "hold another item."
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 9
	warp_event  7,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, EatathonContestPoster
	bg_event  7,  1, BGEVENT_READ, CeladonCafeTrashcan

	def_object_events
	object_event  9,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeChef, -1
	object_event  4,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher1, -1
	object_event  1,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher2, -1
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher3, -1
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeTeacher, -1
