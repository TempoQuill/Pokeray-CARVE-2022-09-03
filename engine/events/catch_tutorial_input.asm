_AutoInput_A::
	ld hl, AutoInput_A
	jr _AutoInput

_AutoInput_RightA:
	ld hl, AutoInput_RightA
	jr _AutoInput

_AutoInput_DownA:
	ld hl, AutoInput_DownA
	jr _AutoInput

_AutoInput:
	ld a, BANK(AutoInputs)
	call StartAutoInput
	ret

AutoInputs: ; used only for BANK(AutoInputs)

AutoInput_A:
	db NO_INPUT, $0f
	db A_BUTTON, $00
	db NO_INPUT, $ff ; end

AutoInput_RightA:
	db NO_INPUT, $08
	db D_RIGHT,  $00
	db NO_INPUT, $08
	db A_BUTTON, $00
	db NO_INPUT, $ff ; end

AutoInput_DownA:
	db NO_INPUT, $04
	db D_DOWN,   $00
	db NO_INPUT, $0b
	db A_BUTTON, $00
	db NO_INPUT, $ff ; end
