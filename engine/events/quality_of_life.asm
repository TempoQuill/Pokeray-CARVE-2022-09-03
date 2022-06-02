GetFirstPokemonQualityOfLife:
	ld hl, wPartyMon1QualityOfLife
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wPartySpecies + 1
.loop
	cdev EGG, .skip, .done
.skip
	inc de
	inc de
	add hl, bc
	jr .loop

.done
	ld [wNamedObjectIndexBuffer], a
	ld a, [hl]
	ld [wScriptVar], a
	call GetPokemonName
	jp CopyPokemonName_Buffer1_Buffer3

ChangeQualityOfLife:
; Perform QOL action c on wCurPartyMon

	ld a, [wCurPartyMon]
	inc a
	ld e, a
	ld d, 0
	ld hl, wPartySpecies - 1
	add hl, de
	ld a, [hli]
	cp LOW(EGG)
	jr nz, .skip
	ld a, [hl]
	cp HIGH(EGG)
	ret z

.skip
	push bc
	ld hl, wPartyMon1QualityOfLife
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	pop bc

	ld d, h
	ld e, l

	push de
	ld a, [de]
	cp QUALITY_OF_LIFE_THRESHOLD_1
	ld e, 0
	jr c, .ok
	inc e
	cp QUALITY_OF_LIFE_THRESHOLD_2
	jr c, .ok
	inc e

.ok
	dec c
	ld b, 0
	ld hl, QualityOfLifeChanges
	add hl, bc
	add hl, bc
	add hl, bc
	ld d, 0
	add hl, de
	ld a, [hl]
	cp $80
	pop de

	jr nc, .negative
	ld a, [de]
	add [hl]
	call TryDoubleQualityOfLifeChanges
	jr z, .no_double
	add [hl]
.no_double
	jr nc, .done
	ld a, -1
	jr .done

.negative
	ld a, [de]
	add [hl]
	jr c, .done
	xor a

.done
	ld [de], a
	ld a, [wBattleMode]
	and a
	ret z
	ld a, [wCurPartyMon]
	ld b, a
	ld a, [wPartyMenuCursor]
	cp b
	ret nz
	ld a, [de]
	ld [wBattleMonHappiness], a
	ret

INCLUDE "data/events/qol_changes.asm"

TryDoubleQualityOfLifeChanges:
	push af
	push de
	push bc
	push hl
	farcall GetItemHeldEffect
	ld a, HELD_DOUBLE_QUALITY_OF_LIFE
	cp b
	pop hl
	pop bc
	pop de
	pop af
	ret
