	object_const_def
	const ROUTE31_FISHER
	const ROUTE31_YOUNGSTER
	const ROUTE31_BUG_CATCHER
	const ROUTE31_COOLTRAINER_M
	const ROUTE31_FRUIT_TREE
	const ROUTE31_POKE_BALL1
	const ROUTE31_POKE_BALL2

Route31_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CheckMomCall

.CheckMomCall:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iffalse .DoMomCall
	endcallback

.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	endcallback

TrainerBugCatcherWade1:
	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcherWade1SeenText, BugCatcherWade1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_WADE
	endifjustbattled
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .WadeRematch
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .WadeItem
	checkcellnum PHONE_BUG_CATCHER_WADE
	iftrue .AcceptedNumberSTD
	checkevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	refreshscreen
	trainerpic BUG_CATCHER
	writetext BugCatcherWade1AfterText
	waitbutton
	closetrainpic
	setevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumberSTD
	sjump .Continue

.AskAgain:
	scall .AskAgainSTD
.Continue:
	askforphonenumber PHONE_BUG_CATCHER_WADE
	ifequal PHONE_CONTACTS_FULL, .PhoneFullSTD
	ifequal PHONE_CONTACT_REFUSED, .DeclinedNumberSTD
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	scall .RegisterNumberSTD
	sjump .AcceptedNumberSTD

.WadeRematch:
	scall .RematchSTD
	winlosstext BugCatcherWade1BeatenText, 0
	readmem wWadeFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
.Fight2:
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer BUG_CATCHER, WADE1
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 1
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, WADE2
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 2
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, WADE3
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 3
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer BUG_CATCHER, WADE4
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 4
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer BUG_CATCHER, WADE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.WadeItem:
	scall .ItemSTD
	checkevent EVENT_WADE_HAS_BERRY
	iftrue .Berry
	checkevent EVENT_WADE_HAS_PSNCUREBERRY
	iftrue .Psncureberry
	checkevent EVENT_WADE_HAS_PRZCUREBERRY
	iftrue .Przcureberry
	checkevent EVENT_WADE_HAS_BITTER_BERRY
	iftrue .BitterBerry
.Berry:
	verbosegiveitem BERRY
	iffalse .PackFull
	sjump .Done
.Psncureberry:
	verbosegiveitem PSNCUREBERRY
	iffalse .PackFull
	sjump .Done
.Przcureberry:
	verbosegiveitem PRZCUREBERRY
	iffalse .PackFull
	sjump .Done
.BitterBerry:
	verbosegiveitem BITTER_BERRY
	iffalse .PackFull
.Done:
	clearflag ENGINE_WADE_HAS_ITEM
	sjump .AcceptedNumberSTD
.PackFull:
	sjump .PackFullSTD

.AskPhoneNumberSTD:
	jumpstd AskNumber1MScript
	end

.AskAgainSTD:
	jumpstd AskNumber2MScript
	end

.RegisterNumberSTD:
	jumpstd RegisteredNumberMScript
	end

.AcceptedNumberSTD:
	jumpstd NumberAcceptedMScript
	end

.DeclinedNumberSTD:
	jumpstd NumberDeclinedMScript
	end

.PhoneFullSTD:
	jumpstd PhoneFullMScript
	end

.RematchSTD:
	jumpstd RematchMScript
	end

.ItemSTD:
	jumpstd GiftMScript
	end

.PackFullSTD:
	jumpstd PackFullMScript
	end

Route31MailRecipientScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	checkevent EVENT_GOT_TM50_NIGHTMARE
	iftrue .DescribeNightmare
	checkevent EVENT_GOT_KENYA
	iftrue .TryGiveKenya
	writetext Text_Route31SleepyMan
	waitbutton
	closetrainpic
	closetext
	end

.TryGiveKenya:
	writetext Text_Route31SleepyManGotMail
	promptbutton
	closetrainpic
	checkpokemail ReceivedSparrowMailText
	ifequal POKEMAIL_WRONG_MAIL, .WrongMail
	ifequal POKEMAIL_REFUSED, .Refused
	ifequal POKEMAIL_NO_MAIL, .NoMail
	ifequal POKEMAIL_LAST_MON, .LastMon
	; POKEMAIL_CORRECT
	writetext Text_Route31HandOverMailMon
	promptbutton
	writetext Text_Route31ReadingMail
	promptbutton
	setevent EVENT_GAVE_KENYA
	verbosegiveitem TM_NIGHTMARE
	iffalse .NoRoomForItems
	setevent EVENT_GOT_TM50_NIGHTMARE
.DescribeNightmare:
	trainerpic FISHER
	writetext Text_Route31DescribeNightmare
	waitbutton
.NoRoomForItems:
	closetrainpic
	closetext
	end

.WrongMail:
	writetext Text_Route31WrongMail
	waitbutton
	closetrainpic
	closetext
	end

.NoMail:
	writetext Text_Route31MissingMail
	waitbutton
	closetrainpic
	closetext
	end

.Refused:
	writetext Text_Route31DeclinedToHandOverMail
	waitbutton
	closetrainpic
	closetext
	end

.LastMon:
	writetext Text_Route31CantTakeLastMon
	waitbutton
	closetrainpic
	closetext
	end

ReceivedSparrowMailText:
	db   "DARK CAVE leads"
	next "to another road@"

Route31YoungsterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic YOUNGSTER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Route31Sign:
	jumptext Route31SignText

DarkCaveSign:
	jumptext DarkCaveSignText

Route31CooltrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
Route31FruitTree:
	fruittree FRUITTREE_ROUTE_31

Route31Potion:
	refreshscreen
	opentext
	writetext BrainText
	waitbutton
	closetext
	pokepic BRAIN
	cry BRAIN
	waitbutton
	closepokepic
	refreshscreen
	opentext
	writetext BrainText2
	yesorno
	iffalse BrainnopeScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	disappear ROUTE31_POKE_BALL1
	writetext ChoseBrainText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BRAIN
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BRAIN, 5, BERRY
	closetext
	end

.partyfull
	refreshscreen
	writetext CarryMoreBrainText
	waitbutton
	closetext
	end

	
BrainnopeScript:
	writetext DamnOrgansText
	waitbutton
	closetext
	end



Route31PokeBall:
	itemball POKE_BALL

CarryMoreBrainText:
	text "You already have"
	line "six ANIMALs with"
	cont "you, though..."
	done

Route31CooltrainerMText:
	text "DARK CAVE..."

	para "If an ANIMAL knew"
	line "HM05-Flash, I'd"
	cont "explore it."
	done

BugCatcherWade1SeenText:
	text "I caught a bunch"
	line "of ANIMALs. Let me"
	cont "battle with you!"
	done

BugCatcherWade1BeatenText:
	text "Awwwww..."
	done

BugCatcherWade1AfterText:
	text "You can catch"
	line "ANIMALs even if"

	para "you have six with"
	line "you."

	para "If you catch one,"
	line "it'll go to your"
	cont "PC automatically."
	done

Text_Route31SleepyMan:
	text "... Hnuurg... Huh?"

	para "I walked too far"
	line "today looking for"
	cont "ANIMALs."

	para "My feet hurt and"
	line "I'm sleepy..."

	para "If I were a wild"
	line "ANIMAL, I'd be"
	cont "easy to catch..."

	para "...Zzzz..."
	done

Text_Route31SleepyManGotMail:
	text "...Zzzz... Huh?"

	para "What's that? You"
	line "have MAIL for me?"
	done

Text_Route31HandOverMailMon:
	text "<PLAYER> handed"
	line "over the ANIMAL"
	cont "holding the MAIL."
	done

Text_Route31ReadingMail:
	text "Let's see..."

	para "...DARK CAVE leads"
	line "to another road..."

	para "That's good to"
	line "know."

	para "Thanks for bring-"
	line "ing this to me."

	para "My friend's a good"
	line "guy, and you're"
	cont "swell too!"

	para "I'd like to do"
	line "something good in"
	cont "return too!"

	para "I know! I want you"
	line "to have this!"
	done

Text_Route31DescribeNightmare:
	text "TM50 is NIGHTMARE."

	para "It's a wicked move"
	line "that steadily cuts"

	para "the HP of a sleep-"
	line "ing enemy."

	para "Ooooh..."
	line "That's scary..."

	para "I don't want to"
	line "have bad dreams."
	done

Text_Route31WrongMail:
	text "This MAIL isn't"
	line "for me."
	done

Text_Route31MissingMail:
	text "Why is this"
	line "ANIMAL so special?"

	para "It doesn't have"
	line "any MAIL."
	done

Text_Route31DeclinedToHandOverMail:
	text "What? You don't"
	line "want anything?"
	done

Text_Route31CantTakeLastMon:
	text "If I take that"
	line "ANIMAL from you,"

	para "what are you going"
	line "to use in battle?"
	done

Route31YoungsterText:
	text "I found a good"
	line "ANIMAL in DARK"
	cont "CAVE."

	para "I'm going to raise"
	line "it to take on"
	cont "BIG BIRD."

	para "He's the leader of"
	line "VIOLET CITY's GYM."
	done

Route31SignText:
	text "ROUTE 31"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
	done

DarkCaveSignText:
	text "DARK CAVE"
	
	para "NAMED FOR THE FACT"
	line "THAT IT'S DARK AND"
	cont "A CAVE."
	done
	
BrainText:
	text "Oh damn, there's"
	line "something in this"
	cont "cardboard box."
	done
	
BrainText2:	
	text "Aw, shit. It's a"
	line "fuckin' brain!"
		
	para "You want it?"
	line "Looks gently used."
	done
	
DamnOrgansText:
	text "Yeah, I can't be"
	line "trifling with no"
	cont "human organs!"
	done
	
ChoseBrainText:
	text "Against your best"
	line "judgement, you"
	cont "adopted a BRAIN!"
	done
	
	

Route31_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4
	warp_event 34,  5, DARK_CAVE_VIOLET_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event  7,  5, BGEVENT_READ, Route31Sign
	bg_event 31,  5, BGEVENT_READ, DarkCaveSign

	def_object_events
	object_event 17,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31MailRecipientScript, -1
	object_event  9,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31YoungsterScript, -1
	object_event 21, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherWade1, -1
	object_event 33,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31CooltrainerMScript, -1
	object_event 16,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31FruitTree, -1
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31Potion, EVENT_ROUTE_31_POTION
	object_event 19, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31PokeBall, EVENT_ROUTE_31_POKE_BALL
