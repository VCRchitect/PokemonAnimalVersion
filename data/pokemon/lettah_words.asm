lettahword: MACRO
for n, CHARLEN(\1)
	db CHARSUB(\1, n + 1) - "A" + FIRST_LETTAH_CHAR
endr
	db -1
ENDM

LettahWords:
; entries correspond to LETTAH_* form constants
	table_width 2, LettahWords
	dw LettahWordA ; unused
	dw LettahWordA
	dw LettahWordB
	dw LettahWordC
	dw LettahWordD
	dw LettahWordE
	dw LettahWordF
	dw LettahWordG
	dw LettahWordH
	dw LettahWordI
	dw LettahWordJ
	dw LettahWordK
	dw LettahWordL
	dw LettahWordM
	dw LettahWordN
	dw LettahWordO
	dw LettahWordP
	dw LettahWordQ
	dw LettahWordR
	dw LettahWordS
	dw LettahWordT
	dw LettahWordU
	dw LettahWordV
	dw LettahWordW
	dw LettahWordX
	dw LettahWordY
	dw LettahWordZ
	assert_table_length NUM_LETTAH + 1

LettahWordA: lettahword "ANGRY"
LettahWordB: lettahword "BEAR"
LettahWordC: lettahword "CHASE"
LettahWordD: lettahword "DIRECT"
LettahWordE: lettahword "ENGAGE"
LettahWordF: lettahword "FIND"
LettahWordG: lettahword "GIVE"
LettahWordH: lettahword "HELP"
LettahWordI: lettahword "INCREASE"
LettahWordJ: lettahword "JOIN"
LettahWordK: lettahword "KEEP"
LettahWordL: lettahword "LAUGH"
LettahWordM: lettahword "MAKE"
LettahWordN: lettahword "NUZZLE"
LettahWordO: lettahword "OBSERVE"
LettahWordP: lettahword "PERFORM"
LettahWordQ: lettahword "QUICKEN"
LettahWordR: lettahword "REASSURE"
LettahWordS: lettahword "SEARCH"
LettahWordT: lettahword "TELL"
LettahWordU: lettahword "UNDO"
LettahWordV: lettahword "VANISH"
LettahWordW: lettahword "WANT"
LettahWordX: lettahword "XXXXX"
LettahWordY: lettahword "YIELD"
LettahWordZ: lettahword "ZOOM"
