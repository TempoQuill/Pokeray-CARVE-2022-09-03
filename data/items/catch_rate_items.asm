; leftover catchrate items
; by the time Pokemon Ray is done, this list will be much shorter
; most story-related/glitch items will be replaced by entirely new items
; currently works exactly like GSC's does, albeit in a different context
; but has many more items appear on the table, even story-related items
; some of these entries are unused because pokemon can't hold key items

TimeCapsule_CatchRateItems:
	db POKE_FLUTE,   FILLINGBERRY ; POKE_FLUTE
	db MYSTERY_EGG,  FILLINGBERRY ; DUCKY_AMULET
	db ITEM_46,      BERRY        ; CORNERTICKET
	db ITEM_73,      BERRY
	db ITEM_74,      BERRY
	db MACHINE_PART, BERRY
	db ITEM_81,      BERRY
	db LOST_ITEM,    BERRY
	db ITEM_87,      BERRY        ; STADIUM_BAND
	db ITEM_88,      BERRY        ; BLUE_LEAF
	db ITEM_89,      BERRY        ; WHITE_LEAF
	db ITEM_95,      BERRY        ; HEAVY_GENE
	db ITEM_99,      BERRY        ; SLEAK_GENE
	db ITEM_BE,      BERRY        ; HELIX_FOSSIL
	db -1,           BERRY
	db 0 ; end
