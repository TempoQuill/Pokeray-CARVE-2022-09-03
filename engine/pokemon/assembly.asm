PokemonAssembly::
	ld hl, 0
	ld de, ASM_PARAMETER_LENGTH
	ld a, [wAssemblyProject]
	and a
	jr z, .done
.loop1
	add hl, de
	dec a
	jr nz, .loop1
.done
	ld de, ItemPokemonCombinations
	add hl, de
	ld de, wAssemblyProjectParams
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

CheckASMItems::
	ld hl, wAssemblyProjectParams
.loop1:
	; reset the parameters
	ld a, [wNumAssemblyItems]
	ld e, a
	ld d, 0
	ld bc, wAssemblyItems
	; first two bytes are the #MON species
	inc hl
	inc hl
.loop2:
	; does the selected item in our pack match?
	call LoadASMItem
	ret z ; return if no item to compare with exists
	ret c ; return if we didn't find the item we need
	cp [hl]
	jr nz, .loop2
	; do we satisfy the amount needed?
	inc hl
	ld a, [hld]
	cp d
	jr z, .loop2
	jr c, .loop2
	ld a, LOW(wAssemblyProjectEnd)
	cp l
	ret z ; return if we reached the end of the RAM area
	jr .loop1

LoadASMItem:
	ld a, e
	and a
	jr z, .out_of_slots
	ld a, [hl]
	and a
	jr z, .params_done
	ld a, [bc]
	inc bc
	push af
	ld a, [bc]
	ld d, a
	pop af
	inc bc
	ccf
	ret
.out_of_slots
.params_done
	scf
	ret

SearchForItemPokeCombo:
; output - a / wScriptVar
; 1 - No ASM items
; 2 - ASM items not matched to any project requisite
; 3 - ASM items matched to a project (whichever result comes first)
	xor a
	ld [wAssemblyProject], a
.loop
	ld a, [wAssemblySearchResult]
	and a
	jr nz, .store
	call PokemonAssembly
	call CheckASMItems
	call z, GotComboSearchResult
	ld a, NUM_ITEM_POKECOMBOS
	ld hl, wAssemblyProject
	inc [hl]
	cp [hl]
	jr z, .store
	jr nc, .loop
.store
	ld a, NUM_ITEM_POKECOMBOS
	ld [wAssemblyProject], a
	ld a, [wNumAssemblyItems]
	and a
	ld a, 1
	ld [wScriptVar], a
	ret z
	ld a, [wAssemblySearchResult]
	and a
	ld a, 2
	jr z, .var
	ld a, 3
.var
	ld [wScriptVar], a
	ret

GotComboSearchResult:
; we come here when we get a combo search result
	; load the necessary location
	ld hl, wAssemblySearchResult
	; current project
	ld a, [wAssemblyProject]
	scf
	ld d, 0
.loop
	sla d
	and a
	jr z, .done
	dec a
	jr .loop
.done
	ld [hl], d
	ret

ItemsForMon:
	push de
	push af
	push hl
	ld a, [wAssemblySearchResult]
	ld hl, 0
	ld de, ASM_PARAMETER_LENGTH
.loop1
	add hl, de
	sra a
	jr nz, .loop1
	ld de, ItemPokemonCombinations
	add hl, de
	ld e, ASM_PARAMETER_LENGTH / 2
	ld a, [hli]
	ld [wAssemblySpecies], a
	ld a, [hli]
	ld [wAssemblySpecies + 1], a
	dec e
.loop2
	ld a, [hli]
	and a
	jr z, .clean
	ld [wCurItem], a
	ld a, [hli]
	ld [wItemQuantityChangeBuffer], a
	push de
	push hl
	ld hl, wNumAssemblyItems
	call TossItem
	pop hl
	pop de
	dec e
	jr z, .loop2
.clean
	ld a, [wAssemblySpecies]
	ld [wCurPartySpecies], a
	ld a, [wAssemblySpecies + 1]
	ld [wCurPartySpecies + 1], a
	ld a, 5
	ld [wCurPartyLevel], a
	xor a
	ld [wCurItem], a
	farcall GivePoke
	pop hl
	pop af
	pop de
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Build
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	set NAT_OR_ASM_F, [hl]
	ret

INCLUDE "data/pokemon/assembly.asm"
