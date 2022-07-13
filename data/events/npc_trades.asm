npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1
	dw \2, \3
	db \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

; NPCTrades:
; entries correspond to NPCTRADE_* constants
; unused leftovers from Gold
	npctrade TRADE_DIALOGSET_COLLECTOR, DROWZEE,    MACHOP,     "MUSCLE@@@@@", $37, $66, FILLINGBERRY, 37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY@@@@@@", $96, $66, BITTER_BERRY, 48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY@@@@@@", $98, $88, SHINY_BERRY,  29189, "TIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    DRAGONAIR,  RHYDON,     "DON@@@@@@@@", $77, $66, BITTER_BERRY, 00283, "EMY@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_HAPPY,     GLOOM,      RAPIDASH,   "RUNNY@@@@@@", $96, $66, SPICY_BERRY,  15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    CHANSEY,    AERODACTYL, "AEROY@@@@@@", $96, $66, FILLINGBERRY, 26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER

NPCTrades:
; entries correspond to NPCTRADE_* constants
	npctrade TRADE_DIALOGSET_PETOWNER,  PIDGEY,     MURKROW,    "DEEJAY@@@@@", $64, $20, BLACKGLASSES, 61183, "JOHN@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, CROVEN,     TRIFOX,     "RONALD@@@@@", $fa, $aa, CHARCOAL,     28830, "BLAKE@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     RATTATA,    MIGHTALEX,  "KAKOA@@@@@@", $d8, $79, FILLINGBERRY, 48059, "JACK@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    MANKEY,     NYMOON,     "CARVE@@@@@@", $ce, $e6, BUDDING_SEED, 13538, "KIRA@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_SCIENTIST, PARABUD,    LARVITAR,   "DANA@@@@@@@", $ea, $cd, SOFT_SAND,    16253, "GREG@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    POUCHENT,   ESPAGLIDE,  "SOARIN@@@@@", $a8, $49, TWISTEDSPOON, 51886, "EILEEN@@@@@", TRADE_GENDER_EITHER
