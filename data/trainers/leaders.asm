; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db BIG_BIRD
	db WHITNEY
	db BUGSY
	db JASON
	db PRYCE
	db JASMINE
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
	db LT_SURGE
	db ERIKA
	db JANINE
	db SABRINA
	db BLAINE
	db BLUE
	db -1
