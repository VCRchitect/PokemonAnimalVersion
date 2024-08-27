; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db BIG_BIRD
	db LARA
	db TPAIN
	db JASON
	db LINCOLN
	db DIANA
	db JOSE
	db PEELY
	db WILL
	db BRUNO
	db KAREN
	db KOGA
	db CHAMPION
	db RED
; fallthrough
KantoGymLeaders:
	db KID_ROCK
	db MISTY
	db ARNOLD
	db ERIKA
	db JANINE
	db SABRINA
	db BLAINE
	db BLUE
	db -1
