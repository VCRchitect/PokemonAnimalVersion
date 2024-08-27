	object_const_def
	const OLIVINELIGHTHOUSE6F_DIANA
	const OLIVINELIGHTHOUSE6F_MONSTER
	const OLIVINELIGHTHOUSE6F_POKE_BALL

OlivineLighthouse6F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineLighthouseDiana:
	faceplayer
	refreshscreen
	opentext
	trainerpic DIANA
	checkitem SECRETPOTION
	iftrue .BroughtSecretpotion
	checkevent EVENT_DIANA_EXPLAINED_AMPHYS_SICKNESS
	iftrue .ExplainedSickness
	writetext DianaCianwoodPharmacyText
	promptbutton
	setevent EVENT_DIANA_EXPLAINED_AMPHYS_SICKNESS
.ExplainedSickness:
	writetext DianaGetSomeMedicineText
	waitbutton
	closetrainpic
	closetext
	end

.BroughtSecretpotion:
	writetext DianaCureAmphyText
	closetrainpic
	yesorno
	iffalse .Refused
	writetext PlayerHandedSecretpotionText
	promptbutton
	takeitem SECRETPOTION
	refreshscreen
	trainerpic DIANA
	writetext DianaDontBeOffendedText
	waitbutton
	closetrainpic
	closetext
	turnobject OLIVINELIGHTHOUSE6F_DIANA, RIGHT
	pause 15
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	opentext
	playmusic MUSIC_HEAL
	refreshscreen
	trainerpic DIANA
	writetext DianaAmphyHowAreYouFeelingText
	pause 60
	promptbutton
	closetrainpic
	closetext
	special RestartMapMusic
	cry RAM
	special FadeOutPalettes
	pause 10
	special FadeInPalettes
	refreshscreen
	opentext
	pokepic RAM
	writetext AmphyPaluPaluluText
	waitbutton
	closepokepic
	closetext
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, RIGHT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, RIGHT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	pause 10
	faceplayer
	refreshscreen
	opentext
	trainerpic DIANA
	writetext DianaThankYouText
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_DIANA_RETURNED_TO_GYM
	clearevent EVENT_OLIVINE_GYM_DIANA
	readvar VAR_FACING
	ifequal DOWN, .FacingDown
	ifequal RIGHT, .FacingRight
	applymovement OLIVINELIGHTHOUSE6F_DIANA, OlivineLighthouseDianaLeavesUpMovement
	disappear OLIVINELIGHTHOUSE6F_DIANA
	end

.FacingDown:
	applymovement OLIVINELIGHTHOUSE6F_DIANA, OlivineLighthouseDianaLeavesDownMovement
	disappear OLIVINELIGHTHOUSE6F_DIANA
	end

.FacingRight:
	applymovement OLIVINELIGHTHOUSE6F_DIANA, OlivineLighthouseDianaLeavesRightMovement
	disappear OLIVINELIGHTHOUSE6F_DIANA
	end

.Refused:
	refreshscreen
	trainerpic DIANA
	writetext DianaISeeText
	waitbutton
	closetrainpic
	closetext
	turnobject OLIVINELIGHTHOUSE6F_DIANA, RIGHT
	pause 15
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	refreshscreen
	opentext
	trainerpic DIANA
	writetext DianaAmphyHangOnText
	waitbutton
	closetrainpic
	closetext
	end

.Unused: ; unreferenced
	end

OlivineLighthouseAmphy:
	faceplayer
	refreshscreen
	opentext
	pokepic RAM
	checkevent EVENT_DIANA_RETURNED_TO_GYM
	iftrue .HealthyNow
	writetext AmphyPalPalooText
	setval RAM
	special PlaySlowCry
	promptbutton
	closepokepic
	writetext AmphyBreathingLaboredText
	waitbutton
	closetext
	end

.HealthyNow:
	writetext AmphyPaluPaluluText
	cry RAM
	waitbutton
	closetext
	special FadeOutPalettes
	special FadeInPalettes
	special FadeOutPalettes
	special FadeInPalettes
	end

OlivineLighthouse6FSuperPotion:
	itemball SUPER_POTION

OlivineLighthouseDianaLeavesUpMovement:
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_sleep 8
	step_sleep 8
	step_end

OlivineLighthouseDianaLeavesDownMovement:
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

OlivineLighthouseDianaLeavesRightMovement:
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step UP
	step_sleep 8
	step_end

DianaCianwoodPharmacyText:
	text "DIANA: This"
	line "ANIMAL always"

	para "kept the sea lit"
	line "at night."

	para "...But it suddenly"
	line "got sick... It's"
	cont "gasping for air..."

	para "...I understand"
	line "that there is a"

	para "wonderful PHARMACY"
	line "in CIANWOOD..."

	para "But that's across"
	line "the sea..."

	para "And I can't leave"
	line "AMPHY unattended..."
	done

DianaGetSomeMedicineText:
	text "May I ask you to"
	line "get some medicine"
	cont "for me? Please?"
	done

DianaCureAmphyText:
	text "DIANA: ...Will"
	line "that medicine cure"
	cont "AMPHY?"
	done

PlayerHandedSecretpotionText:
	text "<PLAYER> handed the"
	line "SECRETPOTION to"
	cont "DIANA."
	done

DianaDontBeOffendedText:
	text "DIANA: ...Um,"
	line "please don't be"
	cont "offended..."

	para "...AMPHY will not"
	line "take anything from"
	cont "anyone but me..."
	done

DianaAmphyHowAreYouFeelingText:
	text "DIANA: ..."

	para "AMPHY, how are you"
	line "feeling?"
	done

DianaThankYouText:
	text "DIANA: Oh, I'm"
	line "so relieved..."

	para "This is just so"
	line "wonderful..."

	para "Thank you so very,"
	line "very much."

	para "...I will return to"
	line "the GYM..."
	done

DianaISeeText:
	text "DIANA: ...I see."
	done

DianaAmphyHangOnText:
	text "...AMPHY, hang on!"
	done

AmphyPalPalooText:
	text "AMPHY: ..."
	line "...Pa-paloo..."
	done

AmphyBreathingLaboredText:
	text "Its breathing is"
	line "terribly labored."
	done

AmphyPaluPaluluText:
	text "AMPHY: Palu!"
	line "Palulu!"
	done

OlivineLighthouse6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, OLIVINE_LIGHTHOUSE_5F, 1
	warp_event 16,  5, OLIVINE_LIGHTHOUSE_5F, 6
	warp_event 17,  5, OLIVINE_LIGHTHOUSE_5F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  8, SPRITE_DIANA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineLighthouseDiana, EVENT_OLIVINE_LIGHTHOUSE_DIANA
	object_event  9,  8, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OlivineLighthouseAmphy, -1
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse6FSuperPotion, EVENT_OLIVINE_LIGHTHOUSE_6F_SUPER_POTION
