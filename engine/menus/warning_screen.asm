WarningScreen:
; Reinitialize everything
	call ClearBGPalettes
	call ClearTilemap
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a ; LOW(vBGMap0)
	ldh [hBGMapAddress], a
	ldh [hJoyDown], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	call WaitBGMap
	ld b, SCGB_GAMEFREAK_LOGO
	call GetSGBLayout
	call SetPalettes
	ld c, 10
	call DelayFrames

	call ClearTilemapEtc
	hlcoord 0, 1
	ld de, DisclaimerText
	jp PlaceString

	call WaitBGMap
	ld c, 200
	call DelayFrames
	call ClearTilemap

; high bits of wJumptableIndex are recycled for some flags
; this was set if user canceled by pressing a button
	ld a, [wJumptableIndex]
	bit 6, a
	jr nz, .canceled

; clear carry flag
	and a
	ret

.canceled
	scf
	ret

INCLUDE "data/text/disclaimer.asm"