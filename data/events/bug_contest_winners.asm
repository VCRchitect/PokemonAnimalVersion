BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw PUPA,     300
	dbw CHRYSALIS,    285
	dbw CATERPILLA,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw BUTTERFLY, 286
	dbw BUTTERFLY, 251
	dbw CATERPILLA,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw MANTIS,    357
	dbw BUTTERFLY, 349
	dbw STAGBEETLE,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw STAGBEETLE,     332
	dbw BUTTERFLY, 324
	dbw GNAT,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw BUTTERFLY, 318
	dbw LARVA,     295
	dbw CATERPILLA,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw STAGBEETLE,     366
	dbw GNAT,    329
	dbw PUPA,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw BUTTERFLY, 341
	dbw CHRYSALIS,    301
	dbw CATERPILLA,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw MANTIS,    326
	dbw BUTTERFLY, 292
	dbw CHRYSALIS,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw LARVA,     270
	dbw STAGBEETLE,     282
	dbw CATERPILLA,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw GNAT,    267
	dbw NYMPH,      254
	dbw PUPA,     259
