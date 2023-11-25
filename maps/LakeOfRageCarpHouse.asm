	object_const_def
	const LAKEOFRAGECARPHOUSE_FISHING_GURU

LakeOfRageCarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CarpLengthRaterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_CARP
	iftrue .AskedForCarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_CARP
	iftrue .ExplainedHistory
	writetext CarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_CARP
	end

.ExplainedHistory:
	writetext CarpLengthRaterText_MenInBlack
	waitbutton
	closetrainpic
	closetext
	end

.ClearedRocketHideout:
	writetext CarpLengthRaterText_WorldsLargestCarp
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_CARP
	end

.AskedForCarp:
	setval CARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext CarpLengthRaterText_YouHaveACarp
	waitbutton
	special CheckCarpLength
	ifequal CARPLENGTH_NOT_CARP, .NotCarp
	ifequal CARPLENGTH_REFUSED, .Refused
	ifequal CARPLENGTH_TOO_SHORT, .TooShort
	; CARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext CarpLengthRaterText_Memento
	promptbutton
	closetrainpic
	verbosegiveitem ELIXER
	iffalse .NoRoom
	refreshscreen
	trainerpic FISHER
	writetext CarpLengthRaterText_Bonus
	waitbutton
	closetrainpic
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetrainpic
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	writetext CarpLengthRaterText_TooShort
	waitbutton
	closetrainpic
	closetext
	end

.NotCarp:
	writetext CarpLengthRaterText_NotCarp
	waitbutton
	closetrainpic
	closetext
	end

.Refused:
	writetext CarpLengthRaterText_Refused
	waitbutton
	closetrainpic
	closetext
	end

LakeOfRageCarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageCarpHouseUnusedRecordText

CarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

CarpLengthRaterText_LakeOfRageHistory:
	text "LAKE OF RAGE is"
	line "actually a crater"

	para "made by rampaging"
	line "IKANYMBA."

	para "The crater filled"
	line "up with rainwater"

	para "and the LAKE was"
	line "formed."

	para "That's the story"
	line "passed on from my"

	para "Grandpa's great-"
	line "great-grandpa."

	para "It used to be that"
	line "you could catch"

	para "lively CARP"
	line "there, but..."

	para "I don't understand"
	line "what's happening."
	done

CarpLengthRaterText_MenInBlack:
	text "The LAKE hasn't"
	line "been normal since"

	para "those men wearing"
	line "black arrived."
	done

CarpLengthRaterText_WorldsLargestCarp:
	text "LAKE OF RAGE is"
	line "back to normal."

	para "The CARP have"
	line "returned."

	para "I may yet realize"
	line "my dream of see-"
	cont "ing the world's"
	cont "largest CARP."

	para "Do you have a ROD?"
	line "Please help me if"
	cont "you do."
	done

CarpLengthRaterText_YouHaveACarp:
	text "Ah, you have a"
	line "CARP! Let's"

	para "see how big that"
	line "baby is."
	done

CarpLengthRaterText_Memento:
	text "Wow! This one is"
	line "outstanding!"

	para "I tip my hat to"
	line "you!"

	para "Take this as a"
	line "memento!"
	done

CarpLengthRaterText_Bonus:
	text "The record is the"
	line "important thing."

	para "Think of that as"
	line "a bonus!"
	done

CarpLengthRaterText_TooShort:
	text "Wow! This one is"
	line "outstanding!"

	para "...I wish I could"
	line "say that, but I've"

	para "seen a bigger one"
	line "before."
	done

CarpLengthRaterText_NotCarp:
	text "What? That's not a"
	line "CARP!"
	done

CarpLengthRaterText_Refused:
	text "Oh... So you didn't"
	line "get one good"

	para "enough to show me?"
	line "Maybe next time."
	done

LakeOfRageCarpHouseUnusedRecordText:
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer3
	text " caught by"
	line "@"
	text_ram wStringBuffer4
	text_end

LakeOfRageCarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageCarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CarpLengthRaterScript, -1
