CrystalIntro:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wGBCPalettes)
	ldh [rSVBK], a
	ldh a, [hInMenu]
	push af
	ldh a, [hVBlank]
	push af
	call .InitRAMAddrs
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	jr nz, .ShutOffMusic
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done
	call IntroSceneJumper
	farcall PlaySpriteAnimations
	call DelayFrame
	jp .loop

.ShutOffMusic
	ld de, MUSIC_NONE
	call PlayMusic

.done
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	pop af
	ldh [hVBlank], a
	pop af
	ldh [hInMenu], a
	pop af
	ldh [rSVBK], a
	ret

.InitRAMAddrs:
	xor a
	ldh [hVBlank], a
	ld a, $1
	ldh [hInMenu], a
	xor a
	ldh [hMapAnims], a
	ld [wJumptableIndex], a
	ret

IntroSceneJumper:
	jumptable IntroScenes, wJumptableIndex

IntroScenes:
	dw IntroScene28

NextIntroScene:
	ld hl, wJumptableIndex
	inc [hl]
	ret

IntroScene28:
; Cut out when the music ends, and lead into the title screen.
	ld hl, wIntroSceneFrameCounter
	ld a, [hl]
	and a
	jr z, .done
	dec [hl]
	cp $18
	jr z, .clear
	cp $8
	ret nz

	ld de, SFX_INTRO_WHOOSH
	call PlaySFX
	ret

.clear
	call ClearBGPalettes
	ret

.done
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

Intro_Scene24_ApplyPaletteFade:
; load the (a)th palette from .FadePals to all wBGPals2
	ld hl, .FadePals
	add l
	ld l, a
	ld a, $0
	adc h
	ld h, a

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals2)
	ldh [rSVBK], a
	ld de, wBGPals2
	ld b, 8 ; number of BG pals
.loop1
	push hl
	ld c, 1 palettes
.loop2
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop2
	pop hl
	dec b
	jr nz, .loop1
	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.FadePals:
INCLUDE "gfx/intro/fade.pal"

CrystalIntro_InitLettahAnim:
	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_LETTAH
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $8
	ld a, SPRITE_ANIM_FRAMESET_INTRO_LETTAH_4
	call ReinitSpriteAnimFrame
	pop de

	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_LETTAH
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $18
	ld a, SPRITE_ANIM_FRAMESET_INTRO_LETTAH_3
	call ReinitSpriteAnimFrame
	pop de

	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_LETTAH
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $28
	ld a, SPRITE_ANIM_FRAMESET_INTRO_LETTAH_1
	call ReinitSpriteAnimFrame
	pop de

	ld a, SPRITE_ANIM_INDEX_INTRO_LETTAH
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $38
	ld a, SPRITE_ANIM_FRAMESET_INTRO_LETTAH_2
	call ReinitSpriteAnimFrame
	ret

CrystalIntro_LettahFade:
	add a
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, wBGPals2
	add hl, de
	inc hl
	inc hl
	ld a, [wIntroSceneTimer]
	and %111111
	cp %011111
	jr z, .okay
	jr c, .okay
	ld c, a
	ld a, %111111
	sub c
.okay

	ld c, a
	ld b, 0
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals2)
	ldh [rSVBK], a

	push hl
	push bc
	ld hl, wBGPals2
	ld bc, 8 palettes
	xor a
	call ByteFill
	pop bc
	pop hl

	push hl
	ld hl, .BWFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .BlackLBlueFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .BlackBlueFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.BWFade:
; Fade between black and white.
for hue, 32
	RGB hue, hue, hue
endr

.BlackLBlueFade:
; Fade between black and light blue.
for hue, 32
	RGB 0, hue / 2, hue
endr

.BlackBlueFade:
; Fade between black and blue.
for hue, 32
	RGB 0, 0, hue
endr

Intro_Scene20_AppearLettah:
; Spawn the palette for the nth Lettah
	and a
	jr nz, .load_pal_2

	ld hl, .pal1
	jr .got_pointer

.load_pal_2
	ld hl, .pal2

.got_pointer
	ld a, [wIntroSceneTimer]
	and $7
	add a
	add a
	add a
	ld c, a
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals2)
	ldh [rSVBK], a

	push bc
	ld de, wBGPals2

	ld a, c
	add e
	ld e, a
	ld a, $0
	adc d
	ld d, a

	ld bc, 1 palettes
	call CopyBytes
	pop bc

	ld de, wBGPals1
	ld a, c
	add e
	ld e, a
	ld a, $0
	adc d
	ld d, a

	ld bc, 1 palettes
	call CopyBytes

	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.pal1:
INCLUDE "gfx/intro/lettah_1.pal"

.pal2:
INCLUDE "gfx/intro/lettah_2.pal"

Intro_FadeLettahWordPals:
	add a
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, wBGPals2
	add hl, de
rept 4
	inc hl
endr
	ld a, [wIntroSceneTimer]
	add a
	ld c, a
	ld b, 0

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals2)
	ldh [rSVBK], a

	push hl
	ld hl, .FastFadePalettes
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .SlowFadePalettes
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.FastFadePalettes:
hue = 31
rept 8
	RGB hue, hue, hue
hue -= 1
	RGB hue, hue, hue
hue -= 2
endr

.SlowFadePalettes:
hue = 31
rept 16
	RGB hue, hue, hue
hue -= 1
endr

Intro_LoadTilemap:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	ld hl, wDecompressScratch
	decoord 0, 0
	ld b, SCREEN_HEIGHT
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	ld a, BG_MAP_WIDTH - SCREEN_WIDTH
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	dec b
	jr nz, .row

	pop af
	ldh [rSVBK], a
	ret

Intro_Scene16_AnimateFenrir:
	ld a, [wIntroSceneFrameCounter]
	and $3
	jr z, Intro_ColoredFenrirFrameSwap
	cp $3
	jr z, .PrepareForFenrirSwap
	ret

.PrepareForFenrirSwap:
	xor a
	ldh [hBGMapMode], a
	ret

Intro_ColoredFenrirFrameSwap:
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
.loop
	ld a, [hl]
	and a
	jr z, .skip
	cp $80
	jr nc, .skip
	xor $8
	ld [hl], a
.skip
	inc hl
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ld a, $1
	ldh [hBGMapMode], a
	ret

Intro_RustleGrass:
	ld a, [wIntroSceneFrameCounter]
	cp 36
	ret nc
	and $c
	srl a
	ld e, a
	ld d, 0
	ld hl, .RustlingGrassPointers
	add hl, de
	ld a, [hli]
	ld [wRequested2bppSource], a
	ld a, [hli]
	ld [wRequested2bppSource + 1], a
	ld a, LOW(vTiles2 tile $09)
	ld [wRequested2bppDest], a
	ld a, HIGH(vTiles2 tile $09)
	ld [wRequested2bppDest + 1], a
	ld a, 4
	ld [wRequested2bppSize], a
	ret

.RustlingGrassPointers:
	dw IntroGrass1GFX
	dw IntroGrass2GFX
	dw IntroGrass3GFX
	dw IntroGrass2GFX

Intro_SetCGBPalUpdate:
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

Intro_ClearBGPals:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals2)
	ldh [rSVBK], a

	ld hl, wBGPals2
	ld bc, 16 palettes
	xor a
	call ByteFill

	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	call DelayFrame
	call DelayFrame
	ret

Intro_DecompressRequest2bpp_128Tiles:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push de
	ld de, wDecompressScratch
	call Decompress
	pop hl

	ld de, wDecompressScratch
	lb bc, $01, $80
	call Request2bpp

	pop af
	ldh [rSVBK], a
	ret

Intro_DecompressRequest2bpp_255Tiles:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push de
	ld de, wDecompressScratch
	call Decompress
	pop hl

	ld de, wDecompressScratch
	lb bc, $01, $ff
	call Request2bpp

	pop af
	ldh [rSVBK], a
	ret

Intro_DecompressRequest2bpp_64Tiles:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push de
	ld de, wDecompressScratch
	call Decompress
	pop hl

	ld de, wDecompressScratch
	lb bc, $01, $40
	call Request2bpp

	pop af
	ldh [rSVBK], a
	ret

Intro_ResetLYOverrides:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	xor a
	call ByteFill

	pop af
	ldh [rSVBK], a
	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a
	ret

Intro_PerspectiveScrollBG:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a
	; Scroll the grass every frame.
	; Scroll the trees every other frame and at half speed.
	; This creates an illusion of perspective.
	ld a, [wIntroSceneFrameCounter]
	and $1
	jr z, .skip
	; trees in the back
	ld hl, wLYOverrides
	ld a, [hl]
	inc a
	ld bc, $5f
	call ByteFill
.skip
	; grass in the front
	ld hl, wLYOverrides + $5f
	ld a, [hl]
	inc a
	inc a
	ld bc, $31
	call ByteFill
	ld a, [wLYOverrides + 0]
	ldh [hSCX], a
	pop af
	ldh [rSVBK], a
	ret

IntroFenrirRunGFX:
INCBIN "gfx/intro/fenrir_run.2bpp.lz"

IntroGerbilShags2DopeGFX:
INCBIN "gfx/intro/gerbil_shags2dope.2bpp.lz"

IntroBackgroundGFX:
INCBIN "gfx/intro/background.2bpp.lz"

IntroBackgroundTilemap:
INCBIN "gfx/intro/background.tilemap.lz"

IntroBackgroundAttrmap:
INCBIN "gfx/intro/background.attrmap.lz"

IntroBackgroundPalette:
INCLUDE "gfx/intro/background.pal"

IntroLettahsGFX:
INCBIN "gfx/intro/lettahs.2bpp.lz"

IntroPulseGFX:
INCBIN "gfx/intro/pulse.2bpp.lz"

IntroLettahATilemap:
INCBIN "gfx/intro/lettah_a.tilemap.lz"

IntroLettahAAttrmap:
INCBIN "gfx/intro/lettah_a.attrmap.lz"

IntroLettahHITilemap:
INCBIN "gfx/intro/lettah_hi.tilemap.lz"

IntroLettahHIAttrmap:
INCBIN "gfx/intro/lettah_hi.attrmap.lz"

IntroLettahsTilemap:
INCBIN "gfx/intro/lettahs.tilemap.lz"

IntroLettahsAttrmap:
INCBIN "gfx/intro/lettahs.attrmap.lz"

IntroLettahsPalette:
INCLUDE "gfx/intro/lettahs.pal"

IntroCrystalLettahsGFX:
INCBIN "gfx/intro/crystal_lettahs.2bpp.lz"

IntroCrystalLettahsTilemap:
INCBIN "gfx/intro/crystal_lettahs.tilemap.lz"

IntroCrystalLettahsAttrmap:
INCBIN "gfx/intro/crystal_lettahs.attrmap.lz"

IntroCrystalLettahsPalette:
INCLUDE "gfx/intro/crystal_lettahs.pal"

IntroFenrirCloseGFX:
INCBIN "gfx/intro/fenrir_close.2bpp.lz"

IntroFenrirCloseTilemap:
INCBIN "gfx/intro/fenrir_close.tilemap.lz"

IntroFenrirCloseAttrmap:
INCBIN "gfx/intro/fenrir_close.attrmap.lz"

IntroFenrirClosePalette:
INCLUDE "gfx/intro/fenrir_close.pal"

IntroFenrirJumpGFX:
INCBIN "gfx/intro/fenrir_jump.2bpp.lz"

IntroFenrirBackGFX:
INCBIN "gfx/intro/fenrir_back.2bpp.lz"

IntroFenrirJumpTilemap:
INCBIN "gfx/intro/fenrir_jump.tilemap.lz"

IntroFenrirJumpAttrmap:
INCBIN "gfx/intro/fenrir_jump.attrmap.lz"

IntroFenrirBackTilemap:
INCBIN "gfx/intro/fenrir_back.tilemap.lz"

IntroFenrirBackAttrmap:
INCBIN "gfx/intro/fenrir_back.attrmap.lz"

IntroFenrirPalette:
INCLUDE "gfx/intro/fenrir.pal"

IntroLettahBackGFX:
INCBIN "gfx/intro/lettah_back.2bpp.lz"

IntroGrass1GFX:
INCBIN "gfx/intro/grass1.2bpp"
IntroGrass2GFX:
INCBIN "gfx/intro/grass2.2bpp"
IntroGrass3GFX:
INCBIN "gfx/intro/grass3.2bpp"
IntroGrass4GFX:
INCBIN "gfx/intro/grass4.2bpp"
