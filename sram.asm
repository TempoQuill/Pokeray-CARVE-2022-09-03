SECTION "Scratch", SRAM

sScratch::

UNION
sDecompressScratch:: ds $188
sDecompressBuffer:: ds 7 * 7 tiles

NEXTU
sScratchTilemap:: ds BG_MAP_WIDTH * BG_MAP_HEIGHT
sScratchAttrmap:: ds $200
ENDU


SECTION "SRAM Bank 0", SRAM

sPartyMail::
sPartyMon1Mail:: mailmsg sPartyMon1Mail ; a600
sPartyMon2Mail:: mailmsg sPartyMon2Mail ; a630
sPartyMon3Mail:: mailmsg sPartyMon3Mail ; a660
sPartyMon4Mail:: mailmsg sPartyMon4Mail ; a690
sPartyMon5Mail:: mailmsg sPartyMon5Mail ; a6c0
sPartyMon6Mail:: mailmsg sPartyMon6Mail ; a6f0

sPartyMailBackup::
sPartyMon1MailBackup:: mailmsg sPartyMon1MailBackup ; a720
sPartyMon2MailBackup:: mailmsg sPartyMon2MailBackup ; a750
sPartyMon3MailBackup:: mailmsg sPartyMon3MailBackup ; a780
sPartyMon4MailBackup:: mailmsg sPartyMon4MailBackup ; a7b0
sPartyMon5MailBackup:: mailmsg sPartyMon5MailBackup ; a7e0
sPartyMon6MailBackup:: mailmsg sPartyMon6MailBackup ; a810

sMailboxCount:: db ; a840
sMailbox::
sMailbox1::  mailmsg sMailbox1  ; a841
sMailbox2::  mailmsg sMailbox2  ; a871
sMailbox3::  mailmsg sMailbox3  ; a8a1
sMailbox4::  mailmsg sMailbox4  ; a8d1
sMailbox5::  mailmsg sMailbox5  ; a901
sMailbox6::  mailmsg sMailbox6  ; a931
sMailbox7::  mailmsg sMailbox7  ; a961
sMailbox8::  mailmsg sMailbox8  ; a991
sMailbox9::  mailmsg sMailbox9  ; a9c1
sMailbox10:: mailmsg sMailbox10 ; a9f1

sMailboxCountBackup:: db ; aa21
sMailboxBackup::
sMailbox1Backup::  mailmsg sMailbox1Backup  ; aa22
sMailbox2Backup::  mailmsg sMailbox2Backup  ; aa52
sMailbox3Backup::  mailmsg sMailbox3Backup  ; aa82
sMailbox4Backup::  mailmsg sMailbox4Backup  ; aab2
sMailbox5Backup::  mailmsg sMailbox5Backup  ; aae2
sMailbox6Backup::  mailmsg sMailbox6Backup  ; ab12
sMailbox7Backup::  mailmsg sMailbox7Backup  ; ab42
sMailbox8Backup::  mailmsg sMailbox8Backup  ; ab72
sMailbox9Backup::  mailmsg sMailbox9Backup  ; aba2
sMailbox10Backup:: mailmsg sMailbox10Backup ; abd2

sMysteryGiftItem:: db ; ac02
sMysteryGiftUnlocked:: db ; ac03
sBackupMysteryGiftItem:: db ; ac04
sNumDailyMysteryGiftPartnerIDs:: db ; ac05
sDailyMysteryGiftPartnerIDs:: ds 5 * 2 ; ac06 ; maximum 5 per day, 2 bytes per ID
sMysteryGiftDecorationsReceived:: flag_array NUM_NON_TROPHY_DECOS ; ac10
sMysteryGiftTimer:: db ; ac1a
sMysteryGiftTimerStartDay:: db ; ac1b
sMysteryGiftTrainerHouseFlag:: db ; ac1c
sMysteryGiftPartnerName:: ds NAME_LENGTH ; ac1d
sMysteryGiftTrainer:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2 ; ac28
sBackupMysteryGiftItemEnd:: ; ac4e

	ds $12

sRTCStatusFlags:: ds 8 ; ac60
sLuckyNumberDay:: db ; ac68
sLuckyIDNumber::  dw ; ac69


SECTION "Backup Save 1", SRAM

sBackupPlayerData3:: ds wPlayerDataEnd - wPlayerData3 ; ac6b
sBackupPokemonData:: ds wPokemonDataEnd - wPokemonData ; b126
sBackupPlayerData1:: ds wPlayerData1End - wPlayerData ; b605


SECTION "SRAM Stack", SRAM

sStackTop:: dw ; b828
sRTCHaltCheckValue:: dw ; b82a


SECTION "SRAM Window Stack", SRAM

sWindowStackBottom:: ; b82c
	ds $7d3
sWindowStack::
sWindowStackTop:: ; bfff
	ds 1


SECTION "Save", SRAM

sOptions:: ds wOptionsEnd - wOptions ; a000

sCheckValue1:: db ; a008 ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption

sGameData::
sPlayerData::
sPlayerData1::  ds wPlayerData1End - wPlayerData1 ; a009
sPlayerData2::  ds wPlayerData2End - wPlayerData2 ; a22c
sPlayerData3::  ds wPlayerData3End - wPlayerData3 ; a3a7
sCurMapData::   ds wCurMapDataEnd - wCurMapData ; a862
sPokemonData::  ds wPokemonDataEnd - wPokemonData ; a896
sGameDataEnd::

sChecksum:: dw ; ad75

sCheckValue2:: db ; ad77 ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption


SECTION "Active Box", SRAM

; CURRENT_BOX EQU 
sBox:: curbox sBox ; ad78


SECTION "Link Battle Data", SRAM

sLinkBattleStats::
sLinkBattleWins::   dw ; b19e
sLinkBattleLosses:: dw ; b1a0 
sLinkBattleDraws::  dw ; b1a2 

sLinkBattleRecord::
sLinkBattleRecord1:: link_battle_record sLinkBattleRecord1 ; b1a4
sLinkBattleRecord2:: link_battle_record sLinkBattleRecord2 ; b1b6
sLinkBattleRecord3:: link_battle_record sLinkBattleRecord3 ; b1c8
sLinkBattleRecord4:: link_battle_record sLinkBattleRecord4 ; b1da
sLinkBattleRecord5:: link_battle_record sLinkBattleRecord5 ; b1ec
sLinkBattleStatsEnd:: ; b1fe


SECTION "SRAM Hall of Fame", SRAM

sHallOfFame::
sHallOfFame01:: hall_of_fame sHallOfFame01 ; b1fe
sHallOfFame02:: hall_of_fame sHallOfFame02 ; b266
sHallOfFame03:: hall_of_fame sHallOfFame03 ; b2ce
sHallOfFame04:: hall_of_fame sHallOfFame04 ; b336
sHallOfFame05:: hall_of_fame sHallOfFame05 ; b39e
sHallOfFame06:: hall_of_fame sHallOfFame06 ; b406
sHallOfFame07:: hall_of_fame sHallOfFame07 ; b46e
sHallOfFame08:: hall_of_fame sHallOfFame08 ; b4d6
sHallOfFame09:: hall_of_fame sHallOfFame09 ; b53e
sHallOfFame10:: hall_of_fame sHallOfFame10 ; b5a6
sHallOfFame11:: hall_of_fame sHallOfFame11 ; b60e
sHallOfFame12:: hall_of_fame sHallOfFame12 ; b676
sHallOfFame13:: hall_of_fame sHallOfFame13 ; b6de
sHallOfFame14:: hall_of_fame sHallOfFame14 ; b746
sHallOfFame15:: hall_of_fame sHallOfFame15 ; b7ae
sHallOfFame16:: hall_of_fame sHallOfFame16 ; b816
sHallOfFame17:: hall_of_fame sHallOfFame17 ; b87e
sHallOfFame18:: hall_of_fame sHallOfFame18 ; b8e6
sHallOfFame19:: hall_of_fame sHallOfFame19 ; b94e
sHallOfFame20:: hall_of_fame sHallOfFame20 ; b9b6
sHallOfFame21:: hall_of_fame sHallOfFame21 ; ba1e
sHallOfFame22:: hall_of_fame sHallOfFame22 ; ba86
sHallOfFame23:: hall_of_fame sHallOfFame23 ; baee
sHallOfFame24:: hall_of_fame sHallOfFame24 ; bb56
sHallOfFame25:: hall_of_fame sHallOfFame25 ; bbbe
sHallOfFame26:: hall_of_fame sHallOfFame26 ; bc26
sHallOfFame27:: hall_of_fame sHallOfFame27 ; bc8e
sHallOfFame28:: hall_of_fame sHallOfFame28 ; bcf6
sHallOfFame29:: hall_of_fame sHallOfFame29 ; bd5e
sHallOfFame30:: hall_of_fame sHallOfFame30 ; bdc6
sHallOfFameEnd::


SECTION "Backup Save 2", SRAM

sBackupPlayerData2:: ds wPlayerData2End - wPlayerData2 ; be2e


SECTION "Boxes 1-7", SRAM

sBox1::  box sBox1 ; a000
sBox2::  box sBox2 ; a426
sBox3::  box sBox3 ; a84c
sBox4::  box sBox4 ; ac72
sBox5::  box sBox5 ; b098
sBox6::  box sBox6 ; b4be
sBox7::  box sBox7 ; b8e4

SECTION "Boxes 8-14", SRAM

sBox8::  box sBox8
sBox9::  box sBox9
sBox10:: box sBox10
sBox11:: box sBox11
sBox12:: box sBox12
sBox13:: box sBox13
sBox14:: box sBox14


SECTION "Boxes 15-21", SRAM

sBox15:: box sBox15
sBox16:: box sBox16
sBox17:: box sBox17
sBox18:: box sBox18
sBox19:: box sBox19
sBox20:: box sBox20
sBox21:: box sBox21

SECTION "Pokedex", SRAM

sPokedexDataStart:: ; a000
sPokedexOrder:: ds NUM_POKEMON * 2
sPokedexOrderEnd:: ; a300
sDexListingScrollOffset:: db ; offset of the first displayed entry from the start
sDexListingCursor:: dw ; a301 ; Dex cursor
sDexListingEnd:: dw ; a303 ; Last mon to display
sDexListingHeight:: db ; a305 ; number of entries displayed at once in the dex listing
sCurDexMode:: db ; a306 ; Pokedex Mode
sDexSearchMonType1:: db ; a307 ; first type to search
sDexSearchMonType2:: db ; a308 ; second type to search
sDexSearchResultCount:: db ; a309
sDexArrowCursorPosIndex:: db ; a30a
sDexArrowCursorDelayCounter:: db ; a30b
sDexArrowCursorBlinkCounter:: db ; a30c
sDexSearchSlowpokeFrame:: db ; a30d
sUnlockedUnownMode:: db ; a30e
sDexCurUnownIndex:: db ; a30f
sDexUnownCount:: db ; a310
sDexConvertedMonType:: db ; a311 ; mon type converted from dex search mon type
sDexListingScrollOffsetBackup:: db ; a312
sDexListingCursorBackup:: dw ; a313
sBackupDexListingCursor:: dw ; a315
sBackupDexListingPage:: db ; a317
sDexCurLocation:: db ; a318
sPokedexDataEnd::


SECTION "Backup Save 3", SRAM

sBackupOptions:: ds wOptionsEnd - wOptions ; bd0a
sBackupCheckValue1:: db ; bd10 ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption
sBackupCurMapData:: ds wCurMapDataEnd - wCurMapData ; bd11
sBackupChecksum:: dw ; bd45
sBackupCheckValue2:: db ; bd47 ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption
; bd48
