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
	xor a
	ld [wAssemblyProject], a
.loop
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
	ret

GotComboSearchResult:
	ld hl, wAssemblySearchResult
	ld a, [wAssemblyProject]
	scf
.loop
	ld d, 0
	rl d
	and a
	jr z, .done
	dec a
	jr .loop
.done
	ld a, d
	or [hl]
	ld [hl], a
	ret

INCLUDE "data/pokemon/assembly.asm"
