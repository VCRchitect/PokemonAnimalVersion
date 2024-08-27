LizGossipRandomScript:
	random 10
	ifequal 0, .RuinsOfAlph
	ifequal 1, .Big_Bird
	ifequal 2, .Earl
	ifequal 3, .SurfClicker
	ifequal 4, .MooMooMilk
	ifequal 5, .Salon
	ifequal 6, .Lara
	ifequal 7, .BugCatchingContest
	ifequal 8, .BeautifulTrainer
	ifequal 9, .Forgot

.RuinsOfAlph:
	farwritetext LizRuinsOfAlphGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Big_Bird:
	farwritetext LizBig_BirdGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Earl:
	farwritetext LizEarlGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.SurfClicker:
	farwritetext LizSurfClickerGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.MooMooMilk:
	farwritetext LizMooMooMilkGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Salon:
	farwritetext LizSalonGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Lara:
	farwritetext LizLaraGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.BugCatchingContest:
	farwritetext LizBugCatchingContestGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.BeautifulTrainer:
	farwritetext LizBeautifulTrainerGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Forgot:
	farwritetext LizForgotGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female
