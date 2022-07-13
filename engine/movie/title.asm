MapOutTitleSprite:
	ld bc, 144
	ld de, wScratch
	ld hl, Title_ObjectMap
.loop1
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop1
	ld bc, 1072
	ld de, vTiles0
	ld hl, Title_CHRData
.loop2
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop2
	ld a, b
	and a
	ret z
	dec b
	jr .loop2

FindTitleSpriteFrames:
	ld a, [wCurrentAnimationZone]
	ld de, Title_AnimationZones
	rla
	ld c, a
	ld b, 0
	ld hl, .jumptable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.jumptable
	dw .eye
	dw .paw
	dw .tail

.eye
	ld bc, Title_Paw - Title_Eyes
	ld a, [de]
	ld e, a
	ld d, 0
	ld hl, wScratch
	add hl, de
	ret

.paw
	ld hl, Title_Paw - Title_Eyes
	add hl, de
	ld bc, Title_Tail - Title_Paw
	ld a, [hl]
	ld e, a
	ld d, 0
	ld hl, wScratch
	add hl, de
	ret

.tail
	ld hl, Title_Tail - Title_Eyes
	add hl, de
	ld bc, Title_AnimationZonesEnd - Title_Tail
	ld a, [hl]
	ld e, a
	ld d, 0
	ld hl, wScratch
	add hl, de
	ret

INCLUDE "data/sprite_anims/intro_anim_zones.asm"

Title_ObjectMap:
INCBIN "gfx/title/map_helicelia.bin"

Title_CHRData:
INCBIN "gfx/title/helicelia_ray.bmp"

TitleScreen:
	call ClearBGPalettes
	xor a
	ld [wTimeOfDayPal], a
	; MUSIC_NONE: faster/smaller than 11 00 00
	ld d, a
	ld e, a
	call PlayMusic
	call ClearTilemap
	call DisableLCD
	call ClearSprites

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a

	ldh [hMapAnims], a
	ldh [hSCY], a
	ldh [hSCX], a

	; new code
	ld hl, wScratch
	ld bc, wScratchEnd - wScratch
	xor a
	call ByteFill

	ld hl, vTiles0
	ld bc, $200 tiles
	xor a
	call ByteFill
	farcall ClearSpriteAnims

; Decompress lower part of title screen
	ld hl, TitleScreenGFX1
	ld de, vTiles2
	ld a, BANK(TitleScreenGFX1)
	call FarDecompress

; Decompress upper part of title screen
	ld hl, TitleScreenGFX2
	ld de, vTiles1
	ld a, BANK(TitleScreenGFX2)
	call FarDecompress

	; map out helicelia / selenumia
	call MapOutTitleSprite

	jr .got_tile_data
	; dummy out G/S code

; Decompress Ho-Oh/Lugia sprite
	ld hl, TitleScreenGFX4
	ld de, vTiles0
	ld a, BANK(TitleScreenGFX4)
	call FarDecompress

; Ho-Oh/Lugia title trail.
; This should only copy 4 tiles; there are 4 extra whitespace tiles in Gold
; before Ho-Oh gfx, but Silver reads the first 64 bytes of the compressed
; Lugia gfx and writes them to VRAM (but never displays them on screen).
	ld hl, TitleScreenGFX3
	ld de, vTiles1 tile $78
	ld bc, 8 tiles
	ld a, BANK(TitleScreenGFX3)
	call FarCopyBytes

.got_tile_data
	call FillTitleScreenPals
	call LoadTitleScreenTilemap
	ld hl, wSpriteAnimDict
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, rLCDC
	set rLCDC_SPRITE_SIZE, [hl]
	call EnableLCD

; Reset timing variables
	xor a
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTitleScreenSelectedOption
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1
	; new segment
	ld hl, wRSTitleScreenOpticalTimer
	ld [hli], a ; wRSTitleScreenOpticalTimer
	ld [hli], a ; wRSTitleScreenPlegicTimer
	ld [hl], a ; wRSTitleScreenRearTimer
	ld hl, wTitleSpriteFrames
	ld [hli], a ; wTitleSpriteFrames
	ld [hli], a
	ld [hli], a
	ld [hl], a ; wCurrentAnimationZone
	ld hl, wVramState
	ld a, [hl]
	and $f1 ; reset timer flags
	ld [hl], a

	depixel 15, 11
	ld a, SPRITE_ANIM_INDEX_RS_INTRO_EYE
	call InitSpriteAnimStruct
	ld a, SPRITE_ANIM_INDEX_RS_INTRO_PAW
	call InitSpriteAnimStruct
	ld a, SPRITE_ANIM_INDEX_RS_INTRO_TAIL
	call InitSpriteAnimStruct
	jr .init_anim

	; more G/S leftovers
	depixel 12, 11
	ld a, SPRITE_ANIM_INDEX_GS_INTRO_HO_OH_LUGIA
	call InitSpriteAnimStruct
.init_anim
	ld hl, wSpriteAnim1
	ld de, wSpriteAnim10
	ld bc, NUM_SPRITE_ANIM_STRUCTS
	call CopyBytes
	ld hl, wSpriteAnim1
	ld [hl], 0

	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	xor a
	call ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a
	ld b, SCGB_GS_TITLE_SCREEN
	call GetSGBLayout
	call LoadTitleScreenPals
	ld de, MUSIC_TITLE
	call PlayMusic
	ret

LoadTitleScreenPals:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	jr nz, .sgb
	ld a, %11011000
	ldh [rBGP], a)
	ld a, %11111111
	ldh [rOBP0], a
	ld a, %11111000
	ldh [rOBP1], a
	ret

.sgb
	ld a, %11100100
	ldh [rBGP], a
	ld a, %11111111
	ldh [rOBP0], a
	ld a, %11100100
	ldh [rOBP1], a
	ret

.cgb
	ld a, %11100100
	call DmgToCgbBGPals
	call DmgToCgbObjPal0
	ret

FillTitleScreenPals:
	ldh a, [hCGB]
	and a
	ret z
	ld a, 1
	ldh [rVBK], a
	hlbgcoord 0, 0
	ld bc, 18 * BG_MAP_WIDTH
	xor a
	call ByteFill
	hlbgcoord 0, 0, vBGMap2
	lb bc, 7, SCREEN_WIDTH
	ld a, 1
	call DrawTitleGraphic
	hlbgcoord 5, 6, vBGMap2
	lb bc, 1, 10
	ld a, 3
	call DrawTitleGraphic
	hlbgcoord 0, 12, vBGMap2
	ld bc, 5 * BG_MAP_WIDTH
	ld a, 4
	call ByteFill
	ld a, 0
	ldh [rVBK], a
	ret

DrawTitleGraphic:
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, BG_MAP_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, DrawTitleGraphic
	ret

LoadTitleScreenTilemap:
	ld hl, TitleScreenTilemap
	debgcoord 0, 0
.loop
	ld a, BANK(TitleScreenTilemap)
	call GetFarByte
	cp -1
	jr z, .done
	inc hl
	ld [de], a
	inc de
	jr .loop

.done
	ldh a, [hCGB]
	and a
	ret nz
	hlbgcoord 0, 11
	ld bc, BG_MAP_WIDTH
	ld a, "@"
	call ByteFill
	ret
