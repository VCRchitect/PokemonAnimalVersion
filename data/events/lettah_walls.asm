lettahwall: MACRO
for n, CHARLEN(\1)
x = CHARSUB(\1, n + 1)
if x == "-"
	db $64
elif x >= "Y"
	db 2 * (x - "Y") + $60
elif x >= "Q"
	db 2 * (x - "Q") + $40
elif x >= "I"
	db 2 * (x - "I") + $20
else
	db 2 * (x - "A")
endc
endr
	db -1 ; end
ENDM

LettahWalls:
; LETTAHWORDS_ESCAPE
	; db $08, $44, $04, $00, $2e, $08, -1
	lettahwall "ESCAPE"
; LETTAHWORDS_LIGHT
	; db $26, $20, $0c, $0e, $46, -1
	lettahwall "LIGHT"
; LETTAHWORDS_WATER
	; db $4c, $00, $46, $08, $42, -1
	lettahwall "WATER"
; LETTAHWORDS_PHOENIX
	; db $0e, $2c, $64, $2c, $0e, -1
	lettahwall "HO-OH"

MenuHeaders_LettahWalls:
; LETTAHWORDS_ESCAPE
	db MENU_BACKUP_TILES ; flags
	menu_coords 3, 4, 16, 9
; LETTAHWORDS_LIGHT
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
; LETTAHWORDS_WATER
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
; LETTAHWORDS_PHOENIX
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
