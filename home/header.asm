; rst vectors (called through the rst instruction)

SECTION "rst0", ROM0[$0000]
RebootPRG::
	di
	jp Start

SECTION "rst8", ROM0[$0008]
FarCall::
	jp FarCall_hl

SECTION "rst10", ROM0[$0010]
Bankswitch::
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

SECTION "rst18", ROM0[$0018]
BankJump:
	rst Bankswitch
	jp _JumpTable

SECTION "rst20", ROM0[$0020]
	rst Lockup

SECTION "rst28", ROM0[$0028]
JumpTable::
	jp _JumpTable

SECTION "rst30", ROM0[$0030]
	rst Lockup

SECTION "rst38", ROM0[$0038]
Lockup::
; used for debugging, makes spotting ACE easier
	rst Lockup


; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp VBlank

SECTION "lcd", ROM0[$0048]
	jp LCD

SECTION "timer", ROM0[$0050]
	reti

SECTION "serial", ROM0[$0058]
	jp Serial

SECTION "joypad", ROM0[$0060]
	jp Joypad


SECTION "Header", ROM0[$0100]

Start::
; Most Game Boy ROMs opt to begin with a nop ($00) and a jp ($C3)
; to the starting address.
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @, $00
