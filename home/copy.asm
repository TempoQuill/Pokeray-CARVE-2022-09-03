CopyBytes::
; copy bc bytes from hl to de
	ld a, c
	and a
	jr nz, .CopyByte
	ld a, b
	and a
	ret z
.CopyByte:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .CopyByte
	dec b
	jr nz, .CopyByte
	ret

GetFarByte::
; retrieve a single byte from a:hl, and return it in a.
	; bankswitch to new bank
	ld [wTempBank], a
	ldh a, [hROMBank]
	push af
	ld a, [wTempBank]
	rst Bankswitch

	; get byte from new bank
	ld a, [hl]
	ld [wFarByte], a

	; bankswitch to previous bank
	pop af
	rst Bankswitch

	; return retrieved value in a
	ld a, [wFarByte]
	ret

GetFarHalfword::
; retrieve a halfword from a:hl, and return it in hl.
	; bankswitch to new bank
	ld [wTempBank], a
	ldh a, [hROMBank]
	push af
	ld a, [wTempBank]
	rst Bankswitch

	; get halfword from new bank, put it in hl
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; bankswitch to previous bank and return
	pop af
	rst Bankswitch
	ret

ByteFill::
; fill bc bytes with the value of a, starting at hl
	inc b ; we bail the moment b hits 0, so include the last run
	inc c ; same thing; include last byte
	jr .HandleLoop
.PutByte:
	ld [hli], a
.HandleLoop:
	dec c
	jr nz, .PutByte
	dec b
	jr nz, .PutByte
	ret
