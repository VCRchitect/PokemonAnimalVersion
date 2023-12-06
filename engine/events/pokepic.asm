Pokepic::
	ld hl, PokepicMenuHeader
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld de, wBGPals1 palette PAL_BG_TEXT color 1
	farcall LoadPokemonPalette
	call UpdateTimePals
	xor a
	ldh [hBGMapMode], a
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld de, vTiles3 tile $CB
	predef GetMonFrontpic
_Displaypic:
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $CB
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	call WaitBGMap
	ret

Trainerpic::
	ld hl, PokepicMenuHeader2
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld de, wBGPals1 palette PAL_BG_TEXT color 1
	farcall LoadTrainerPalette
	call UpdateTimePals
	xor a
	ldh [hBGMapMode], a
	ld a, [wTrainerClass]
	ld de, vTiles3 tile $CB
	farcall GetTrainerPic
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $CB
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	call WaitBGMap
	ret

PBTrainerpic::
	ld hl, PokepicMenuHeader2
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld de, wBGPals1 palette PAL_BG_TEXT color 1
	farcall LoadTrainerPalette
	call UpdateTimePals
	xor a
	ldh [hBGMapMode], a
	ld a, [wTrainerClass]
	ld de, vTiles3 tile $CB
	farcall GetTrainerPic
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $CB
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	call WaitBGMap
	ret

ClosePokepic::
	ld hl, PokepicMenuHeader
	call CopyMenuHeader
	call ClearMenuBoxInterior
	call WaitBGMap
	call GetMemSGBLayout
	xor a
	ldh [hBGMapMode], a
	call OverworldTextModeSwitch
	call CopyTilemapAtOnce
	call UpdateSprites
	call LoadStandardFont
	ret

CloseTrainpic::
	ld hl, PokepicMenuHeader2
	call CopyMenuHeader
	call ClearMenuBoxInterior
	call WaitBGMap
	call GetMemSGBLayout
	xor a
	ldh [hBGMapMode], a
	call OverworldTextModeSwitch
	call CopyTilemapAtOnce
	call UpdateSprites
	call LoadStandardFont
	ret

PokepicMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 3, 13, 11
	dw NULL
	db 1 ; default option

PokepicMenuHeader2:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 3, 13, 11
	dw NULL
	db 1 ; default option
