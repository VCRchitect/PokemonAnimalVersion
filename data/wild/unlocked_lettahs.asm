lettah_set: MACRO
rept _NARG
	db LETTAH_\1
	shift
endr
	db -1
ENDM

UnlockedLettahLetterSets:
; entries correspond to wUnlockedLettahs bits
	dw .Set_A_K ; ENGINE_UNLOCKED_LETTAHS_A_TO_K
	dw .Set_L_R ; ENGINE_UNLOCKED_LETTAHS_L_TO_R
	dw .Set_S_W ; ENGINE_UNLOCKED_LETTAHS_S_TO_W
	dw .Set_X_Z ; ENGINE_UNLOCKED_LETTAHS_X_TO_Z
.End

.Set_A_K:
	lettah_set A, B, C, D, E, F, G, H, I, J, K
.Set_L_R:
	lettah_set L, M, N, O, P, Q, R
.Set_S_W:
	lettah_set S, T, U, V, W
.Set_X_Z:
	lettah_set X, Y, Z
