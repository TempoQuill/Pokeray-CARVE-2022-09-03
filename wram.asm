INCLUDE "constants.asm"

INCLUDE "macros/wram.asm"


INCLUDE "vram.asm"


SECTION "Audio RAM", WRAM0

wMusic:: ; c000

; nonzero if playing
wMusicPlaying:: db ; 0

wChannels::
wChannel1:: channel_struct wChannel1 ; 1   1
wChannel2:: channel_struct wChannel2 ; 51  33
wChannel3:: channel_struct wChannel3 ; 101 65
wChannel4:: channel_struct wChannel4 ; 151 97

wSFXChannels::
wChannel5:: channel_struct wChannel5 ; 201 c9
wChannel6:: channel_struct wChannel6 ; 251 fb
wChannel7:: channel_struct wChannel7 ; 301 12d
wChannel8:: channel_struct wChannel8 ; 351 15f


wCurTrackDuty::           db ; 401 191
wCurTrackVolumeEnvelope:: db ; 402 192
wCurTrackFrequency::      dw ; 403 193
wUnusedBCDNumber::        db ; 405 195 ; BCD value, dummied out
wCurNoteDuration::        db ; 406 196 ; used in Music_PitchSlide and LoadNote
wCurMusicByte::           db ; 407 197
wCurChannel::             db ; 408 198

wVolume:: ; 409 199
; corresponds to rNR50
; Channel control / ON-OFF / Volume (R/W)
;   bit 7 - Vin->SO2 ON/OFF
;   bit 6-4 - SO2 output level (volume) (# 0-7)
;   bit 3 - Vin->SO1 ON/OFF
;   bit 2-0 - SO1 output level (volume) (# 0-7)
	db

wSoundOutput:: ; 410 19a
; corresponds to rNR51
; bit 4-7: ch1-4 so2 on/off
; bit 0-3: ch1-4 so1 on/off
	db

wPitchSweep:: ; 411 19b
; corresponds to rNR10
; bit 7:   sweep
; bit 4-6: sweep time
; bit 3:   sweep direction
; but 0-2: sweep shift
	db

wMusicID::             dw ; 412 19c
wMusicBank::           db ; 414 19e
wNoiseSampleAddress::  dw ; 415 19f
wNoiseSampleDelay::    db ; 417 1a1
wMusicNoiseSampleSet:: db ; 418 1a2
wSFXNoiseSampleSet::   db ; 419 1a3

wLowHealthAlarm:: ; 420 1a4
; bit 7: on/off
; bit 4: pitch
; bit 0-3: counter
	db

wMusicFade:: ; 421 1a5
; fades volume over x frames
; bit 7: fade in/out
; bit 0-5: number of frames for each volume level
; $00 = none (default)
	db

wMusicFadeCount:: db ; 422 1a6
wMusicFadeID::    dw ; 423 1a7
wCryPitch::       dw ; 425 1a9
wCryLength::      dw ; 427 1ab
wLastVolume::     db ; 429 1ad
wSoundEventFlag:: db ; 430 1ae
; if nonzero, turn off music when playing sfx
wSFXPriority::    db ; 431 1af

wChannel1JumpCondition:: db ; 432 1b0
wChannel2JumpCondition:: db ; 433 1b1
wChannel3JumpCondition:: db ; 434 1b2
wChannel4JumpCondition:: db ; 435 1b3
wStereoPanningMask::     db ; 436 1b4

wCryTracks:: ; 437 1b5
; plays only in left or right track depending on what side the monster is on
; both tracks active outside of battle
	db

wSFXDuration:: db ; 438 1b6
; id of sfx currently playing
wCurSFX::      db ; 439 1b7

wChannelsEnd:: ; 440 1b8

wMapMusic::                 db
wDontPlayMapMusicOnReload:: db ; 441 1b9
wFrameSwap::                db ; 442 1ba
wMusicEnd::                    ; 443 1bb

	ds 7

SECTION "WRAM", WRAM0

; c1c2
wLZAddress::               dw ; 0  0
wLZBank::                  db ; 2  2
wInputType::               db ; 3  3
wAutoInputAddress::        dw ; 4  4
wAutoInputBank::           db ; 6  6
wAutoInputLength::         db ; 7  7
wDebugFlags::              db ; 8  8
wGameLogicPaused::         db ; 9  9
wSpriteUpdatesEnabled::    db ; 10 a
wUnusedScriptByteBuffer::  db ; 11 b
wMapTimeOfDay::            db ; 12 c
wPrinterConnectionOpen::   db ; 13 d
wPrinterOpcode::           db ; 14 e
wDisableTextAcceleration:: db ; 15 f
wPCItemsCursor::           db ; 16 10
wPCItemsScrollPosition::   db ; 17 11
wPrevDexEntry::            dw ; 18 12

	ds 42 ; 20 14


SECTION "GBC Palettes", WRAM0

; c200
; eight 4-color palettes each
wBGPals1:: ds 8 palettes ; 0   0
wOBPals1:: ds 8 palettes ; 64  40
wBGPals2:: ds 8 palettes ; 128 80
wOBPals2:: ds 8 palettes ; 192 c0


SECTION "Sprites", WRAM0

wVirtualOAM:: ; c300
wVirtualOAMSprite00:: sprite_oam_struct wVirtualOAMSprite00 ; 0   0
wVirtualOAMSprite01:: sprite_oam_struct wVirtualOAMSprite01 ; 4   4
wVirtualOAMSprite02:: sprite_oam_struct wVirtualOAMSprite02 ; 8   8
wVirtualOAMSprite03:: sprite_oam_struct wVirtualOAMSprite03 ; 12  c
wVirtualOAMSprite04:: sprite_oam_struct wVirtualOAMSprite04 ; 16  10
wVirtualOAMSprite05:: sprite_oam_struct wVirtualOAMSprite05 ; 20  14
wVirtualOAMSprite06:: sprite_oam_struct wVirtualOAMSprite06 ; 24  18
wVirtualOAMSprite07:: sprite_oam_struct wVirtualOAMSprite07 ; 28  1c
wVirtualOAMSprite08:: sprite_oam_struct wVirtualOAMSprite08 ; 32  20
wVirtualOAMSprite09:: sprite_oam_struct wVirtualOAMSprite09 ; 36  24
wVirtualOAMSprite10:: sprite_oam_struct wVirtualOAMSprite10 ; 40  28
wVirtualOAMSprite11:: sprite_oam_struct wVirtualOAMSprite11 ; 44  2c
wVirtualOAMSprite12:: sprite_oam_struct wVirtualOAMSprite12 ; 48  30
wVirtualOAMSprite13:: sprite_oam_struct wVirtualOAMSprite13 ; 52  34
wVirtualOAMSprite14:: sprite_oam_struct wVirtualOAMSprite14 ; 56  38
wVirtualOAMSprite15:: sprite_oam_struct wVirtualOAMSprite15 ; 60  3c
wVirtualOAMSprite16:: sprite_oam_struct wVirtualOAMSprite16 ; 64  40
wVirtualOAMSprite17:: sprite_oam_struct wVirtualOAMSprite17 ; 68  44
wVirtualOAMSprite18:: sprite_oam_struct wVirtualOAMSprite18 ; 72  48
wVirtualOAMSprite19:: sprite_oam_struct wVirtualOAMSprite19 ; 76  4c
wVirtualOAMSprite20:: sprite_oam_struct wVirtualOAMSprite20 ; 80  50
wVirtualOAMSprite21:: sprite_oam_struct wVirtualOAMSprite21 ; 84  54
wVirtualOAMSprite22:: sprite_oam_struct wVirtualOAMSprite22 ; 88  58
wVirtualOAMSprite23:: sprite_oam_struct wVirtualOAMSprite23 ; 92  5c
wVirtualOAMSprite24:: sprite_oam_struct wVirtualOAMSprite24 ; 96  60
wVirtualOAMSprite25:: sprite_oam_struct wVirtualOAMSprite25 ; 100 64
wVirtualOAMSprite26:: sprite_oam_struct wVirtualOAMSprite26 ; 104 68
wVirtualOAMSprite27:: sprite_oam_struct wVirtualOAMSprite27 ; 108 6c
wVirtualOAMSprite28:: sprite_oam_struct wVirtualOAMSprite28 ; 112 70
wVirtualOAMSprite29:: sprite_oam_struct wVirtualOAMSprite29 ; 116 74
wVirtualOAMSprite30:: sprite_oam_struct wVirtualOAMSprite30 ; 120 78
wVirtualOAMSprite31:: sprite_oam_struct wVirtualOAMSprite31 ; 124 7c
wVirtualOAMSprite32:: sprite_oam_struct wVirtualOAMSprite32 ; 128 80
wVirtualOAMSprite33:: sprite_oam_struct wVirtualOAMSprite33 ; 132 84
wVirtualOAMSprite34:: sprite_oam_struct wVirtualOAMSprite34 ; 136 88
wVirtualOAMSprite35:: sprite_oam_struct wVirtualOAMSprite35 ; 140 8c
wVirtualOAMSprite36:: sprite_oam_struct wVirtualOAMSprite36 ; 144 90
wVirtualOAMSprite37:: sprite_oam_struct wVirtualOAMSprite37 ; 148 94
wVirtualOAMSprite38:: sprite_oam_struct wVirtualOAMSprite38 ; 152 98
wVirtualOAMSprite39:: sprite_oam_struct wVirtualOAMSprite39 ; 156 9c
wVirtualOAMEnd::                                            ; 160 a0


SECTION "Tilemap", WRAM0
; c3a0
wTilemap::
; 20x18 grid of 8x8 tiles
	ds SCREEN_WIDTH * SCREEN_HEIGHT
wTilemapEnd:: ; 360 168


SECTION "Miscellaneous", WRAM0

; This union spans 504 bytes. (c508-c700)
UNION ; c508
; surrounding tiles
; This buffer determines the size for the rest of the union;
; it uses 480 bytes
wSurroundingTiles:: ds SURROUNDING_WIDTH * SURROUNDING_HEIGHT
	ds 24 ; filler for RAM

NEXTU ; c508
; box save buffer
; SaveBoxAddress uses this buffer in three steps because it
; needs more space than the buffer can hold.
wBoxPartialData:: ds 480
wBoxPartialDataEnd::

NEXTU ; c508
; 20x18 grid of 8x8 tiles
wTempTilemap::
	ds SCREEN_WIDTH * SCREEN_HEIGHT

NEXTU ; c508
; unown puzzle
wUnownPuzzle::
	ds 200
wPuzzlePieces:: ds 6 * 6
	ds 244
wUnownPuzzleEnd:: ; 480 1e0

NEXTU ; c508

; This union spans 200 bytes (c508 - c5d0).
UNION ; c508
; wSpriteAnimDict is a 10x2 dictionary
; keys: taken from third column of SpriteAnimSeqData
; values: vTiles
wSpriteAnimDict:: ds 10 * 2

wSpriteAnimationStructs:: ; 20 14
; field  0:   index
; fields 1-3: loaded from SpriteAnimSeqData
wSpriteAnim10:: sprite_anim_struct wSpriteAnim1  ; 20  14
wSpriteAnim1::  sprite_anim_struct wSpriteAnim2  ; 36  24
wSpriteAnim2::  sprite_anim_struct wSpriteAnim3  ; 52  34
wSpriteAnim3::  sprite_anim_struct wSpriteAnim4  ; 68  44
wSpriteAnim4::  sprite_anim_struct wSpriteAnim5  ; 84  54
wSpriteAnim5::  sprite_anim_struct wSpriteAnim6  ; 100 64
wSpriteAnim6::  sprite_anim_struct wSpriteAnim7  ; 116 74
wSpriteAnim7::  sprite_anim_struct wSpriteAnim8  ; 132 84
wSpriteAnim8::  sprite_anim_struct wSpriteAnim9  ; 148 94
wSpriteAnim9::  sprite_anim_struct wSpriteAnim10 ; 164 a4
wSpriteAnimationStructsEnd::

wSpriteAnimCount::   db ; 180 b4
wCurSpriteOAMAddr::  db ; 181 b5
wCurIcon::           db ; 182 b6
wCurIconTile::       db ; 183 b7
wSpriteAnimAddrBackup:: ; 184 b8
wSpriteAnimIDBuffer::
wCurSpriteOAMFlags::
	dw
wCurAnimVTile::      db ; 186 ba
wCurAnimXCoord::     db ; 187 bb
wCurAnimYCoord::     db ; 188 bc
wCurAnimXOffset::    db ; 189 bd
wCurAnimYOffset::    db ; 190 be
wGlobalAnimYOffset:: db ; 191 bf
wGlobalAnimXOffset:: db ; 192 c0
wSpriteAnimsEnd::       ; 193 c1
	ds 7

NEXTU ; c508
; timeset temp storage
wTimeSetBuffer::
	ds 20
wInitHourBuffer::   db ; 20 14
	ds 9
wInitMinuteBuffer:: db ; 29 1d
	ds 19
wTimeSetBufferEnd::    ; 48 30

NEXTU ; c508
; hall of fame temp struct
wHallOfFameTemp:: hall_of_fame wHallOfFameTemp

NEXTU ; c508
; link engine data
wLink_c508:: ds 10
wc512::      ds 10 ; 10 a

NEXTU ; c508
; unused (engine/menus/debug.asm)
wc508:: ds 13
ENDU ; c5d0

; This union spans 304 bytes. (c5d0 - c700)
UNION ; c5d0
; pokegear
wPokegearPhoneLoadNameBuffer::    db
wPokegearPhoneCursorPosition::    db ; 1  1
wPokegearPhoneScrollPosition::    db ; 2  2
wPokegearPhoneSelectedPerson::    db ; 3  3
wPokegearPhoneSubmenuCursor::     db ; 4  4
wPokegearMapCursorObjectPointer:: dw ; 5  5
wPokegearMapCursorLandmark::      db ; 7  7
wPokegearMapPlayerIconLandmark::  db ; 8  8
wPokegearRadioChannelBank::       db ; 9  9
wPokegearRadioChannelAddr::       dw ; 10 a
wPokegearRadioMusicPlaying::      db ; 11 b
; 12 c
	ds 292

NEXTU ; c5d0
; trade
wTrademons::
wPlayerTrademon:: trademon wPlayerTrademon
wOTTrademon::     trademon wOTTrademon     ; 50  32
wTrademonsEnd::                            ; 100 64
wTradeAnimAddress:: dw
wLinkPlayer1Name:: ds NAME_LENGTH          ; 102 66
wLinkPlayer2Name:: ds NAME_LENGTH          ; 113 71
wLinkTradeSendmonSpecies:: dw              ; 124 7c
wLinkTradeGetmonSpecies::  dw              ; 126 7e

NEXTU ; c5d0
; naming screen
wNamingScreenDestinationPointer::  dw
wNamingScreenCurNameLength::       db ; 2 2
wNamingScreenMaxNameLength::       db ; 3 3
wNamingScreenType::                db ; 4 4
wNamingScreenCursorObjectPointer:: dw ; 5 5
wNamingScreenLastCharacter::       db ; 7 7
wNamingScreenStringEntryCoord::    dw ; 8 8

NEXTU ; c5d0
; slot machine
wSlots::
wReel1::         slot_reel wReel1
wReel2::         slot_reel wReel2 ; 16  10
wReel3::         slot_reel wReel3 ; 32  20
wReel1Stopped::              ds 3 ; 48  30
wReel2Stopped::              ds 3 ; 51  33
wReel3Stopped::              ds 3 ; 54  36
wSlotBias::                    db ; 57  39
wSlotBet::                     db ; 58  3a
wFirstTwoReelsMatching::       db ; 59  3b
wFirstTwoReelsMatchingSevens:: db ; 60  3c
wSlotMatched::                 db ; 61  3d
wCurReelStopped::            ds 3 ; 62  3e
wPayout::                      dw ; 65  41
wCurReelXCoord::               db ; 67  43
wCurReelYCoord::               db ; 68  44
	ds 2
wSlotBuildingMatch::           db ; 71  47
wSlotsDataEnd::                   ; 72  48
	ds 28
wSlotsEnd::                       ; 100 64

NEXTU ; c5d0
; card flip
wCardFlip::
wDeck:: ds 24
wDeckEnd::                   ; 24 18
wCardFlipNumCardsPlayed:: db
wCardFlipFaceUpCard::     db ; 25 19
wDiscardPile::         ds 24 ; 26 1a
wDiscardPileEnd::            ; 50 32
wCardFlipEnd::

NEXTU ; c5d0
; dummy game
wDummyGame::
wDummyGameCards::          ds 9 * 5
wDummyGameCardsEnd::                ; 45 2d
wDummyGameLastCardPicked::       db
wDummyGameCard1::                db ; 46 2e
wDummyGameCard2::                db ; 47 2f
wDummyGameCard1Location::        db ; 48 30
wDummyGameCard2Location::        db ; 49 31
wDummyGameNumberTriesRemaining:: db ; 50 32
wDummyGameLastMatches::        ds 5 ; 51 33
wDummyGameCounter::              db ; 56 38
wDummyGameNumCardsMatched::      db ; 57 39
wDummyGameEnd::                     ; 58 3a

NEXTU ; c5d0
; beta poker game
	ds 50
wBetaPokerSGBPals:: db ; 50 32
	ds 2
wBetaPokerSGBAttr:: db ; 53 35
wBetaPokerSGBCol:: db  ; 54 36
wBetaPokerSGBRow:: db  ; 55 37
ENDU ; c700

ENDU ; c700



SECTION "Overworld Map", WRAM0

UNION ; c700
; overworld map blocks
wOverworldMapBlocks:: ds 1300
wOverworldMapBlocksEnd:: ; 1300 514

NEXTU ; c700
; decompress buffer in wram
wDecompressScratch:: ds 40 tiles

NEXTU ; c700
; GB Printer screen RAM
wGameboyPrinterRAM::
wGameboyPrinterScreen:: ds SCREEN_HEIGHT * SCREEN_WIDTH
wGameboyPrinterScreenEnd::

NEXTU ; c700
; GB Printer data
wGameboyPrinter2bppSource:: ds 40 tiles
wGameboyPrinter2bppSourceEnd:: ; 640 280
wc980::                     db
wPrinterRowIndex::          db ; 641 281

; Printer data
wPrinterData:: ds 4    ; 642 282
wPrinterChecksum:: dw  ; 646 286
wPrinterHandshake:: db ; 648 288
wPrinterStatusFlags::  ; 649 289
; bit 7: set if error 1 (battery low)
; bit 6: set if error 4 (too hot or cold)
; bit 5: set if error 3 (paper jammed or empty)
; if this and the previous byte are both $ff: error 2 (connection error)
	db

wHandshakeFrameDelay:: db     ; 650 28a
wPrinterSerialFrameDelay:: db ; 651 28b
wPrinterSendByteOffset:: dw   ; 652 28c
wPrinterSendByteCounter:: dw  ; 654 28e

; tilemap backup?
wPrinterTilemapBuffer:: ds SCREEN_HEIGHT * SCREEN_WIDTH ; 656 290
wPrinterTilemapBufferEnd:: ; 1016 3f8
wPrinterStatus:: db
	ds 1
; High nibble is for margin before the image, low nibble is for after.
wPrinterMargins:: db       ; 1018 3fa
wPrinterExposureTime:: db  ; 1019 3fb
	ds 16              ; 1020 3fc
wGameboyPrinterRAMEnd::    ; 1036 40c

NEXTU ; c700
; bill's pc data
wBillsPCData::
wBillsPCPokemonList::
; (species, box number, list index) x30
	ds 4 * 30
	ds 720                     ; 120 78
wBillsPC_ScrollPosition:: db       ; 840 348
wBillsPC_CursorPosition:: db       ; 841 349
wBillsPC_NumMonsInBox:: db         ; 842 34a
wBillsPC_NumMonsOnScreen:: db      ; 843 34b
wBillsPC_LoadedBox:: db ; 0 if party, 1 - 21 if box, 22 if active box
wBillsPC_BackupScrollPosition:: db ; 845 34d
wBillsPC_BackupCursorPosition:: db ; 846 34e
wBillsPC_BackupLoadedBox:: db      ; 847 34f
wBillsPC_MonHasMail:: db           ; 848 350
	ds 5                       ; 849 351
wBillsPCDataEnd::                  ; 854 356

NEXTU ; c700
; Hall of Fame data
wHallOfFamePokemonList:: hall_of_fame wHallOfFamePokemonList

NEXTU ; c700
; raw link data
wLinkData:: ds $514
wLinkDataEnd:: ; 1300 514

NEXTU ; c700
; unused (engine/gfx/sprite_anims.asm)
	ds 4
wc704:: ds 19 ; 4  4
wc717:: ds 1  ; 23 17

NEXTU ; c700
; link data members
wLinkPlayerName:: ds NAME_LENGTH
wLinkPartyCount:: db                    ; 11 b
wLinkPartySpecies:: ds PARTY_LENGTH * 2 ; 12 c
wLinkPartyEnd:: db                      ; 24 18
; older code doesn't check PartyCount   ; 25 19

UNION ; c719
; time capsule party data
wTimeCapsulePlayerData::
wTimeCapsulePartyMon1:: gold_party_struct wTimeCapsulePartyMon1
wTimeCapsulePartyMon2:: gold_party_struct wTimeCapsulePartyMon2 ; 48  30
wTimeCapsulePartyMon3:: gold_party_struct wTimeCapsulePartyMon3 ; 96  60
wTimeCapsulePartyMon4:: gold_party_struct wTimeCapsulePartyMon4 ; 144 90
wTimeCapsulePartyMon5:: gold_party_struct wTimeCapsulePartyMon5 ; 192 c0
wTimeCapsulePartyMon6:: gold_party_struct wTimeCapsulePartyMon6 ; 240 f0
wTimeCapsulePartyMonOTNames:: ds PARTY_LENGTH * NAME_LENGTH     ; 288 120
wTimeCapsulePartyMonNicks:: ds PARTY_LENGTH * MON_NAME_LENGTH   ; 354 162
wTimeCapsulePlayerDataEnd::                                     ; 420 1a4

NEXTU ; c719
; link player data
wLinkPlayerData::
wLinkPlayerPartyMon1:: party_struct wLinkPlayerPartyMon1
wLinkPlayerPartyMon2:: party_struct wLinkPlayerPartyMon2     ; 44  2c
wLinkPlayerPartyMon3:: party_struct wLinkPlayerPartyMon3     ; 88  58
wLinkPlayerPartyMon4:: party_struct wLinkPlayerPartyMon4     ; 132 84
wLinkPlayerPartyMon5:: party_struct wLinkPlayerPartyMon5     ; 176 b0
wLinkPlayerPartyMon6:: party_struct wLinkPlayerPartyMon6     ; 220 dc
wLinkPlayerPartyMonOTNames:: ds PARTY_LENGTH * NAME_LENGTH   ; 264 108
wLinkPlayerPartyMonNicks:: ds PARTY_LENGTH * MON_NAME_LENGTH ; 330 16a
wLinkPlayerDataEnd::                                         ; 396 18c
ENDU ; c8cd

NEXTU ; c700
; mystery gift data
wMysteryGiftPartyTemp:: ; ds PARTY_LENGTH * (1 + 1 + NUM_MOVES)
wMysteryGiftStaging::
wc700:: ds 80

wMysteryGiftTrainerData:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2 ; 80  50
wMysteryGiftTrainerDataEnd::                                        ; 118 76

	ds 138

wMysteryGiftPartnerData::                                           ; 256 100
wc800:: db
wMysteryGiftPartnerID:: dw                                          ; 257 101
wMysteryGiftPartnerName:: ds NAME_LENGTH                            ; 259 103
wMysteryGiftPartnerDexCaught:: db                                   ; 270 10e
wc80f::
wMysteryGiftPartnerSentDeco:: db                                    ; 271 10f
wMysteryGiftPartnerWhichItem:: db                                   ; 272 110
wMysteryGiftPartnerWhichDeco:: db                                   ; 273 111
wMysteryGiftPartnerBackupItem:: db                                  ; 274 112
	ds 1
wMysteryGiftPartnerDataEnd::                                        ; 276 114

	ds 60

wMysteryGiftPlayerData::                                            ; 336 150
	ds 1
wMysteryGiftPlayerID:: dw                                           ; 337 151
wMysteryGiftPlayerName:: ds NAME_LENGTH                             ; 339 153
wMysteryGiftPlayerDexCaught:: db                                    ; 350 15e
wMysteryGiftPlayerSentDeco:: db                                     ; 351 15f
wMysteryGiftPlayerWhichItem:: db                                    ; 352 160
wMysteryGiftPlayerWhichDeco:: db                                    ; 353 161
wMysteryGiftPlayerBackupItem:: db                                   ; 354 162
	ds 1
wMysteryGiftPlayerDataEnd::                                         ; 356 164

	ds 144

wc8f4:: ds 5 ; 500 1f4
wc8f9:: ds 7 ; 505 1f9

NEXTU ; c700
; LCD expects wLYOverrides to have an alignment of $100
wLYOverrides:: ds SCREEN_HEIGHT_PX
wLYOverridesEnd::

UNION ; c7a0
	ds 16
wLYOverrides2:: ds SCREEN_HEIGHT_PX
wLYOverrides2End::

NEXTU ; c7a0
	ds $100 - SCREEN_HEIGHT_PX
wLYOverridesBackup:: ds SCREEN_HEIGHT_PX
wLYOverridesBackupEnd:: ds $100 - SCREEN_HEIGHT_PX
ENDU ; c900

UNION ; c900
; blank credits tile buffer
wCreditsBlankFrame2bpp:: ds 4 * 4 tiles
wCreditsBlankFrame2bppEnd:: ; 256 100

NEXTU ; c900
; mystery gift data
wc900:: db
wc901:: db
wc902:: db

NEXTU ; c900
; link
	ds 191
wc9bf:: ds 79
wca0e:: ds 5
wca13:: ds 113
wca84:: ds 100
wcae8:: dw
wLinkOTPartyMonTypes:: ds 2 * PARTY_LENGTH
	ds 84
wcb4a:: ds 84
wcb9e:: ds 130

NEXTU ; c900
; battle
wBattleAnimTileDict:: ds 10 ; c900

wActiveAnimObjects:: ; c90a
wAnimObject01:: battle_anim_struct wAnimObject01
wAnimObject02:: battle_anim_struct wAnimObject02 ; 24  18
wAnimObject03:: battle_anim_struct wAnimObject03 ; 48  30
wAnimObject04:: battle_anim_struct wAnimObject04 ; 72  48
wAnimObject05:: battle_anim_struct wAnimObject05 ; 96  60
wAnimObject06:: battle_anim_struct wAnimObject06 ; 120 78
wAnimObject07:: battle_anim_struct wAnimObject07 ; 144 90
wAnimObject08:: battle_anim_struct wAnimObject08 ; 168 a8
wAnimObject09:: battle_anim_struct wAnimObject09 ; 192 c0
wAnimObject10:: battle_anim_struct wAnimObject10 ; 216 d8
wActiveAnimObjectsEnd::                          ; 240 f0

wActiveBGEffects::
wBGEffect1:: battle_bg_effect wBGEffect1
wBGEffect2:: battle_bg_effect wBGEffect2 ; 244 f4
wBGEffect3:: battle_bg_effect wBGEffect3 ; 248 f8
wBGEffect4:: battle_bg_effect wBGEffect4 ; 252 fc
wBGEffect5:: battle_bg_effect wBGEffect5 ; 256 100
wActiveBGEffectsEnd::                    ; 260 104

wLastAnimObjectIndex:: db

wBattleAnimFlags:: db        ; 261 105
wBattleAnimAddress:: dw      ; 262 106
wBattleAnimDelay:: db        ; 264 108
wBattleAnimParent:: dw       ; 265 109
wBattleAnimLoops:: db        ; 267 10b
wBattleAnimVar:: db          ; 268 10c
wBattleAnimByte:: db         ; 269 10d
wBattleAnimOAMPointerLo:: db ; 270 10e

UNION ; ca19
; unidentified
wBattleAnimTemp0:: db
wBattleAnimTemp1:: db
wBattleAnimTemp2:: db
wBattleAnimTemp3:: db

NEXTU ; ca19
wBattleObjectTempID:: db
wBattleObjectTempXCoord:: db
wBattleObjectTempYCoord:: db
wBattleObjectTempParam:: db

NEXTU ; ca19
wBattleAnimTempOAMFlags:: db
wBattleAnimTempField02:: db
wBattleAnimTempTileID:: db
wBattleAnimTempXCoord:: db
wBattleAnimTempYCoord:: db
wBattleAnimTempXOffset:: db
wBattleAnimTempYOffset:: db
wBattleAnimTempFrameOAMFlags:: db
wBattleAnimTempPalette:: db
ENDU ; ca22

UNION ; ca22
	ds $32
wBattleAnimEnd:: ; 50 32

NEXTU ; ca22
wSurfWaveBGEffect:: ds $40
wSurfWaveBGEffectEnd:: ; 64 40
ENDU ; ca62

wBattleMon:: battle_struct wBattleMon

	ds 100 ; 34  22

wBattle::
wEnemyMoveStruct:: move_struct wEnemyMoveStruct   ; 134 86
wPlayerMoveStruct:: move_struct wPlayerMoveStruct ; 141 8d

wEnemyMonNick:: ds MON_NAME_LENGTH  ; 148 94
wBattleMonNick:: ds MON_NAME_LENGTH ; 159 9f

; intro water/grass/fire cutscene data
	ds 4              ; 170 aa
wIntroJumptableIndex:: db ; 174 ae
wIntroBGMapPointer:: dw   ; 175 af
wIntroTilemapPointer:: dw ; 177 b1
wIntroTilesPointer:: dw   ; 179 b3
wIntroFrameCounter1:: db  ; 181 b5
wIntroFrameCounter2:: db  ; 182 b6
wcb19:: db                ; 183 b7
ENDU ; cb2c 184 b8

	ds 2

wEnemyTrainerItem1:: db ; cb2e
wEnemyTrainerItem2:: db ; cb2f
wEnemyTrainerBaseReward:: db ; cb30

	ds 2

wOTClassName:: ds TRAINER_CLASS_NAME_LENGTH ; cb33

wCurOTMon:: dw ; cb40

wBattleParticipantsNotFainted:: ; cb42
; Bit array.  Bits 0 - 5 correspond to party members 1 - 6.
; Bit set if the mon appears in battle.
; Bit cleared if the mon faints.
; Backed up if the enemy switches.
; All bits cleared if the enemy faints.
	db

wTypeModifier:: ; cb43
; >10: super-effective
;  10: normal
; <10: not very effective
; bit 7: stab
	db

wCriticalHit:: ; cb44
; 0 if not critical
; 1 for a critical hit
; 2 for a OHKO
	db

wAttackMissed:: ; cb45
; nonzero for a miss
	db

wPlayerSubStatus1:: cb46
; bit
; 0 nightmare/1 curse/2 protect/3 id'd/4 perish song/5 endure/6 rollout/7 love
	db
wPlayerSubStatus2:: ; cb47
; bit 0 curled/1-7 unused
	db
wPlayerSubStatus3:: ; cb48
; bit
; 0 bide/1 rampage/2 loop/3 flinch/4 charge/5 underground/6 flying/7 confused
	db
wPlayerSubStatus4:: ; cb49
; bit
; 0 x acc./1 mist/2 focus energy/3/4 substitute/5 recharge/6 rage/7 leech seed
	db
wPlayerSubStatus5:: ; cb4a
; bit 0 toxic/1/2/3 transformed/4 encored/5 lock-on/6 destiny bond/7 can't run
	db

wEnemySubStatus1:: ; cb4b
; see wPlayerSubStatus1
	db
wEnemySubStatus2:: ; cb4c
; see wPlayerSubStatus2
	db
wEnemySubStatus3:: ; cb4d
; see wPlayerSubStatus3
	db
wEnemySubStatus4:: ; cb4e
; see wPlayerSubStatus4
	db
wEnemySubStatus5:: ; cb4f
; see wPlayerSubStatus5
	db

wPlayerRolloutCount:: db ; cb50
wPlayerConfuseCount:: db ; cb51
wPlayerToxicCount:: db ; cb52
wPlayerDisableCount:: db ; cb53
wPlayerEncoreCount:: db ; cb54
wPlayerPerishCount:: db ; cb55
wPlayerFuryCutterCount:: db ; cb56
wPlayerProtectCount:: db ; cb57

wEnemyRolloutCount:: db ; cb58
wEnemyConfuseCount:: db ; cb59
wEnemyToxicCount:: db ; cb5a
wEnemyDisableCount:: db ; cb5b
wEnemyEncoreCount:: db ; cb5c
wEnemyPerishCount:: db ; cb5d
wEnemyFuryCutterCount:: db ; cb5e
wEnemyProtectCount:: db ; cb5f

wPlayerDamageTaken:: dw ; cb60
wEnemyDamageTaken:: dw ; cb62

wBattleReward:: ds 3 ; cb64

wBattleAnimParam:: db ; cb67

wBattleScriptBuffer:: ds 40 ; cb68

wBattleScriptBufferBank:: db ; cb90
wBattleScriptBufferAddress:: dw ; cb91
wTurnEnded:: db ; cb93

wPlayerStats::
wPlayerAttack:: dw ; cb94
wPlayerDefense:: dw ; cb96
wPlayerSpeed:: dw ; cb98
wPlayerSpAtk:: dw ; cb9a
wPlayerSpDef:: dw ; cb9c
	ds 1

wEnemyStats::
wEnemyAttack:: dw ; cb9f
wEnemyDefense:: dw ; cba1
wEnemySpeed:: dw ; cba3
wEnemySpAtk:: dw ; cba5
wEnemySpDef:: dw ; cba7
	ds 1

wPlayerStatLevels::
; 07 neutral
wPlayerAtkLevel:: db ; cbaa
wPlayerDefLevel:: db ; cbab
wPlayerSpdLevel:: db ; cbac
wPlayerSAtkLevel:: db ; cbad
wPlayerSDefLevel:: db ; cbae
wPlayerAccLevel:: db ; cbaf
wPlayerEvaLevel:: db ; cbb0
	ds 1
wPlayerStatLevelsEnd::

wEnemyStatLevels::
; 07 neutral
wEnemyAtkLevel:: db ; cbb2
wEnemyDefLevel:: db ; cbb3
wEnemySpdLevel:: db ; cbb4
wEnemySAtkLevel:: db ; cbb5
wEnemySDefLevel:: db ; cbb6
wEnemyAccLevel:: db ; cbb7
wEnemyEvaLevel:: db ; cbb8
	ds 1

wEnemyTurnsTaken:: db ; cbba
wPlayerTurnsTaken:: db ; cbbb
	ds 1

wPlayerSubstituteHP:: db ; cbbd
wEnemySubstituteHP:: db ; cbbe

wUnusedPlayerLockedMove:: db ; cbbf
	ds 1

wCurPlayerMove:: db ; cbc1
wCurEnemyMove:: db ; cbc2

wLinkBattleRNCount:: ; cbc3
; how far through the prng stream
	db

wEnemyItemState:: db ; cbc4
	ds 2
wCurEnemyMoveNum:: db ; cbc7

wEnemyHPAtTimeOfPlayerSwitch:: dw ; cbc8
wPayDayMoney:: ds 3 ; cbca

wPowerBallMoney:: ds 3 ; cbcd
wEnemyBackupDVs:: dw   ; cbd0
wAlreadyDisobeyed:: db ; cbd2

wDisabledMove:: db ; cbd3
wEnemyDisabledMove:: db ; cbd4
wWhichMonFaintedFirst:: db ; cbd5

; exists so you can't counter on switch
wLastPlayerCounterMove:: db ; cbd6
wLastEnemyCounterMove:: db ; cbd7

wEnemyMinimized:: db ; cbd8

wAlreadyFailed:: db ; cbd9

wBattleParticipantsIncludingFainted:: db ; cbda
wBattleLowHealthAlarm:: db ; cbdb
wPlayerMinimized:: db ; cbdc
wPlayerScreens:: ; cbdd
; bit 0 spikes/1/2 safeguard/3 light screen/4 reflect/5-7 unused
	db

wEnemyScreens:: ; cbde
; see wPlayerScreens
	db

wPlayerSafeguardCount:: db ; cbdf
wPlayerLightScreenCount:: db ; cbe0
wPlayerReflectCount:: db ; cbe1
	ds 1

wEnemySafeguardCount:: db ; cbe3
wEnemyLightScreenCount:: db ; cbe4
wEnemyReflectCount:: db ; cbe5
	ds 2

wBattleWeather:: ; cbe8
; 00 normal
; 01 rain
; 02 sun
; 03 sandstorm
; 04 rain stopped
; 05 sunliight faded
; 06 sandstorm subsided
	db

wWeatherCount:: ; cbe9
; # turns remaining
	db

wLoweredStat:: db ; cbea
wEffectFailed:: db ; cbeb
wFailedMessage:: db ; cbec
wEnemyGoesFirst:: db ; cbed

wPlayerIsSwitching:: db ; cbee
wEnemyIsSwitching:: db ; cbef

wPlayerUsedMoves:: ; cbf0
; add a move that has been used once by the player
; added in order of use
	ds NUM_MOVES

wEnemyAISwitchScore:: db ; cbf4
wEnemySwitchMonParam:: db ; cbf5
wEnemySwitchMonIndex:: db ; cbf6
wTempLevel:: db ; cbf7
wLastPlayerMon:: db ; cbf8
wLastPlayerMove:: db ; cbf9
wLastEnemyMove:: db ; cbfa

wPlayerFutureSightCount:: db ; cbfb
wEnemyFutureSightCount:: db ; cbfc

wGivingExperienceToExpShareHolders:: db ; cbfd

wBackupEnemyMonBaseStats:: ds 5 ; cbfe
wBackupEnemyMonCatchRate:: db ; cc03
wBackupEnemyMonBaseExp:: db ; cc04

wPlayerFutureSightDamage:: dw ; cc05
wEnemyFutureSightDamage:: dw ; cc07
wPlayerRageCounter:: db ; cc09
wEnemyRageCounter:: db ; cc0a

wBeatUpHitAtLeastOnce:: db ; cc0b

wPlayerTrappingMove:: db ; cc0c
wEnemyTrappingMove:: db ; cc0d
wPlayerWrapCount:: db ; cc0e
wEnemyWrapCount:: db ; cc0f
wPlayerCharging:: db ; cc10
wEnemyCharging:: db ; cc11

wBattleEnded:: db ; cc12

wWildMonMoves:: ds NUM_MOVES ; cc13
wWildMonPP:: ds NUM_MOVES ; cc17

wAmuletCoin:: db ; cc1b

wSomeoneIsRampaging:: db ; cc1c

wPlayerJustGotFrozen:: db ; cc1d
wEnemyJustGotFrozen:: db ; cc1e
wBattleEnd:: ; cc1f

	ds 1

ENDU ; cc20


SECTION "Video", WRAM0

; wBGMapBuffer
wBGMapBuffer::     ds 40 ; cc20
wBGMapPalBuffer::  ds 40 ; cc48
wBGMapBufferPtrs:: ds 40 ; cc70 ; 20 bg map addresses (16x8 tiles)
wBGMapBufferEnd::

wDefaultSGBLayout:: db ; cc98

wPlayerHPPal:: db ; cc99
wPlayerHPPalBank:: db ; cc9a
wEnemyHPPal:: db ; cc9b
wEnemyHPPalBank:: db ; cc9c

wHPPals:: ds PARTY_LENGTH ; cc9d
wCurHPPal:: db ; cca3
wCurHPPalBank:: db ; cca4

	ds 4 ; cca5

wSGBPals:: ds 48 ; cca9

wAttrmap:: ; ccd9
; 20x18 grid of bg tile attributes for 8x8 tiles
; read horizontally from the top row
;		bit 7: priority
;		bit 6: y flip
;		bit 5: x flip
;		bit 4: pal # (non-cgb)
;		bit 3: vram bank (cgb only)
;		bit 2-0: pal # (cgb only)
	ds SCREEN_WIDTH * SCREEN_HEIGHT
wAttrmapEnd:: ; ce41

wTileAnimBuffer:: ds 1 tiles

wOtherPlayerLinkMode:: db ; ce51
wOtherPlayerLinkAction::  ; ce52
wBattleAction:: db
	ds 3
wPlayerLinkAction:: db ; ce56
wce57:: db
	ds 2
wLinkTimeoutFrames:: dw ; ce5b
wce5d:: dw

wMonType:: db ; ce5f

wCurSpecies:: dw ; ce60

wNamedObjectTypeBuffer:: db ; ce62

wJumptableIndex:: dw ; ce63

UNION ; ce64
; unidentified
wce64:: db
wce65:: db
wce66:: db

NEXTU ; ce64
; intro data
wIntroSceneFrameCounter:: db
wIntroSceneTimer:: db

NEXTU ; ce64
; title data
wTitleScreenSelectedOption:: db
wTitleScreenTimer:: dw

NEXTU ; ce64
; credits data
wCreditsBorderFrame:: db
wCreditsBorderMon:: db
wCreditsLYOverride:: db

NEXTU ; ce64
; pokedex
wPrevDexEntryJumptableIndex:: db
wPrevDexEntryBackup::
wPokedexStatus:: db

NEXTU ; ce64
; pokegear
wPokegearCard:: db
wPokegearMapRegion:: db

NEXTU ; ce64
; pack
wPackJumptableIndex:: db
wCurPocket:: db
wPackUsedItem:: db

NEXTU ; ce64
; trainer card badges
wTrainerCardBadgeFrameCounter:: db
wTrainerCardBadgeTileID:: db
wTrainerCardBadgeAttributes:: db

NEXTU ; ce64
; card flip data
wCardFlipCursorY:: db
wCardFlipCursorX:: db
wCardFlipWhichCard:: db

NEXTU ; ce64
; magnet train
wMagnetTrainOffset:: db
wMagnetTrainPosition:: db
wMagnetTrainWaitCounter:: db

NEXTU ; ce64
; unown puzzle data
wHoldingUnownPuzzlePiece:: db
wUnownPuzzleCursorPosition:: db
wUnownPuzzleHeldPiece:: db

NEXTU ; ce64
; miscellaneous
wFrameCounter::
wMomBankDigitCursorPosition::
wNamingScreenLetterCase::
wHallOfFameMonCounter::
wSlotsDelay::
	db
wPrinterQueueLength:: db
ENDU ; ce67

wRequested2bpp::
wRequested2bppSize:: db ; ce67
wRequested2bppSource:: dw ; ce68
wRequested2bppDest:: dw ; ce6a

wRequested1bpp::
wRequested1bppSize:: db ; ce6c
wRequested1bppSource:: dw ; ce6d
wRequested1bppDest:: dw ; ce6f

wSecondsSince:: db ; ce71
wMinutesSince:: db ; ce72
wHoursSince:: db ; ce73
wDaysSince:: db ; ce74

	ds 12

wPlayerBGMapOffsetX:: db ; ce81 ; used in FollowNotExact; unit is pixels
wPlayerBGMapOffsetY:: db ; ce82 ; used in FollowNotExact; unit is pixels

wPlayerStepVectorX:: db ; ce83
wPlayerStepVectorY:: db ; ce84
wPlayerStepFlags:: db ; ce85
wPlayerStepDirection:: db ; ce86

wPlayerNextMovement:: db ; ce87
wPlayerMovement:: db ; ce88

	ds 2

wMovementObject:: db ; ce8b
wMovementDataBank:: db ; ce8c
wMovementDataAddress:: dw ; ce8d
wce8f:: dw ; ce8f

	ds 2

wMovementByteWasControlSwitch:: db ; ce83

UNION ; ce84
wObjectPriorities:: ds NUM_OBJECT_STRUCTS

NEXTU ; ce84
wMovementPointer:: dw
	ds 3
wTempObjectCopyMapObjectIndex:: db
wTempObjectCopySprite:: db
wTempObjectCopySpriteVTile:: db
wTempObjectCopyPalette:: db
wTempObjectCopyMovement:: db
wTempObjectCopyRange:: db
wTempObjectCopyX:: db
wTempObjectCopyY:: db
wTempObjectCopyRadius:: db
ENDU ; cea2

	ds 1

wTileDown::  db ; cea3
wTileUp::    db ; cea4
wTileLeft::  db ; cea5
wTileRight:: db ; cea6

wTilePermissions:: db ; cea7

wWindowStackPointer:: dw ; cea8
wMenuJoypad:: db ; ceaa
wMenuSelection:: db ; ceab
wMenuSelectionQuantity:: db ; ceac
wWhichIndexSet:: db ; cead
wScrollingMenuCursorPosition:: db ; ceae
wWindowStackSize:: db ; ceaf

	ds 8 ; ceb0

; menu header
wMenuHeader::
wMenuFlags:: db ; ceb8
wMenuBorderTopCoord:: db ; ceb9
wMenuBorderLeftCoord:: db ; ceba
wMenuBorderBottomCoord:: db ; cebb
wMenuBorderRightCoord:: db ; cebc
wMenuDataPointer:: dw ; cebd
wMenuCursorBuffer:: dw ; cebf
	ds 7
wMenuHeaderEnd:: ; cec8

wMenuData::
wMenuDataFlags:: db

UNION ; cec9
; Vertical Menu/DoNthMenu/SetUpMenu
wMenuDataItems:: db
wMenuDataIndicesPointer:: dw
wMenuDataDisplayFunctionPointer:: dw
wMenuDataPointerTableAddr:: dw

NEXTU ; cec9
; 2D Menu
wMenuData_2DMenuDimensions:: db
wMenuData_2DMenuSpacing:: db
wMenuData_2DMenuItemStringsBank:: db
wMenuData_2DMenuItemStringsAddr:: dw
wMenuData_2DMenuFunctionBank:: db
wMenuData_2DMenuFunctionAddr:: dw

NEXTU ; cec9
; Scrolling Menu
wMenuData_ScrollingMenuHeight:: db
wMenuData_ScrollingMenuWidth:: db
wMenuData_ScrollingMenuItemFormat:: db
wMenuData_ItemsPointerBank:: db
wMenuData_ItemsPointerAddr:: dw
wMenuData_ScrollingMenuFunction1:: ds 3
wMenuData_ScrollingMenuFunction2:: ds 3
wMenuData_ScrollingMenuFunction3:: ds 3
ENDU ; ced8
wMenuDataEnd::

w2DMenuData::
w2DMenuCursorInitY:: db ; ced8
w2DMenuCursorInitX:: db ; ced9
w2DMenuNumRows:: db ; ceda
w2DMenuNumCols:: db ; cedb
w2DMenuFlags1:: ; cedc
; bit 7: Disable checking of wMenuJoypadFilter
; bit 6: Enable sprite animations
; bit 5: Wrap around vertically
; bit 4: Wrap around horizontally
; bit 3: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 5 is disabled and we tried to go too far down
; bit 2: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 5 is disabled and we tried to go too far up
; bit 1: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 4 is disabled and we tried to go too far left
; bit 0: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 4 is disabled and we tried to go too far right
	db
w2DMenuFlags2:: db ; cedd
w2DMenuCursorOffsets:: db ; cede
wMenuJoypadFilter:: db ; cedf
w2DMenuDataEnd::
wMenuCursorY:: db ; cee0
wMenuCursorX:: db ; cee1
wCursorOffCharacter:: db ; cee2
wCursorCurrentTile:: dw ; cee3

wLinkMusic:: dw

wOverworldDelay:: db ; cee7
wTextDelayFrames:: db ; cee8
wVBlankOccurred:: db ; cee9

wceea:: db

wDefaultSpawnpoint:: db ; ceeb

UNION ; ceec
; mail temp storage
wTempMail:: mailmsg wTempMail

NEXTU ; ceec
; magnet train
wMagnetTrain:: ; used only for BANK(wMagnetTrain)
wMagnetTrainDirection:: db
wMagnetTrainInitPosition:: db
wMagnetTrainHoldPosition:: db
wMagnetTrainFinalPosition:: db
wMagnetTrainPlayerSpriteInitX:: db

NEXTU ; ceec
; credits
wCreditsPos:: dw
wCreditsTimer:: db

NEXTU ; ceec
; mon buffer
wBufferMonNick:: ds MON_NAME_LENGTH
wBufferMonOT:: ds NAME_LENGTH
wBufferMon:: party_struct wBufferMon
	ds 8

NEXTU ; ceec
; mart items
wMartItem1BCD:: ds 3
wMartItem2BCD:: ds 3
wMartItem3BCD:: ds 3
wMartItem4BCD:: ds 3
wMartItem5BCD:: ds 3
wMartItem6BCD:: ds 3
wMartItem7BCD:: ds 3
wMartItem8BCD:: ds 3
wMartItem9BCD:: ds 3
wMartItem10BCD:: ds 3

NEXTU ; ceec
; town map data
wTownMapPlayerIconLandmark:: db
UNION ; ceed
wTownMapCursorLandmark:: db
wTownMapCursorObjectPointer:: dw
NEXTU ; ceed
wTownMapCursorCoordinates:: dw
ENDU ; cef0

NEXTU ; ceec
; phone call data
wPhoneScriptBank:: db
wPhoneCaller:: dw

NEXTU ; ceec
; radio data
wCurRadioLine:: db
wNextRadioLine:: db
wRadioTextDelay:: db
wNumRadioLinesPrinted:: db
wOaksPKMNTalkSegmentCounter:: db
	ds 5
wRadioText:: ds 2 * SCREEN_WIDTH
wRadioTextEnd::

NEXTU ; ceec
; lucky number show
wLuckyNumberDigitsBuffer:: ds 5

NEXTU ; ceec
; movement buffer data
wMovementBufferCount:: db
wMovementBufferObject:: db
wUnusedMovementBufferBank:: db
wUnusedMovementBufferPointer:: dw
wMovementBuffer:: ds 55

NEXTU ; ceec
; box printing
wWhichBoxMonToPrint:: db
wFinishedPrintingBox:: db
wAddrOfBoxToPrint:: dw
wBankOfBoxToPrint:: db
wWhichBoxToPrint:: db

NEXTU ; ceec
; trainer HUD data
	ds 1
wPlaceBallsDirection:: db
wTrainerHUDTiles:: ds 4

NEXTU ; ceec
; earthquake data buffer
wEarthquakeMovementDataBuffer:: ds 5

NEXTU ; ceec
; miscellaneous
wTempDayOfWeek::
wKeepSevenBiasChance:: ; used in the slots to handle the favoring of 7 symbol streaks
	db
	ds 2
wStartFlypoint:: db
wEndFlypoint:: db

NEXTU ; ceec
; unidentified
wceed:: db
wceee:: db
wceef:: ds 9
wcef8:: ds 2
wcefa:: ds 2
wcefc:: ds 1
wcefd:: ds 44

UNION ; cf28
; trainer data
wSeenTrainerBank:: db
wSeenTrainerDistance:: db
wSeenTrainerDirection:: db
wTempTrainer::
wTempTrainerEventFlag:: dw
wTempTrainerClass:: db
wTempTrainerID:: db
wSeenTextPointer:: dw
wWinTextPointer:: dw
wLossTextPointer:: dw
wScriptAfterPointer:: dw
wRunningTrainerBattleScript:: db
wTempTrainerEnd::

NEXTU ; cf28
; menu items list
wMenuItemsList:: ds 16
wMenuItemsListEnd::

NEXTU ; cf28
; fruit tree data
wCurFruitTree:: db
wCurFruit:: db

NEXTU ; cf28
; item ball data
wItemBallData::
wItemBallItemID:: db
wItemBallQuantity:: db
wItemBallDataEnd::

NEXTU ; cf28
; hidden item data
wHiddenItemData::
wHiddenItemEvent:: dw
wHiddenItemID:: db
wHiddenItemDataEnd::

NEXTU ; cf28
; elevator data
wElevatorData::
wElevatorPointerBank:: db
wElevatorPointer:: dw
wElevatorOriginFloor:: db
wElevatorDataEnd::

NEXTU ; cf28
; coord event data
wCurCoordEvent::
wCurCoordEventSceneID:: db
wCurCoordEventMapY:: db
wCurCoordEventMapX:: db
	ds 1
wCurCoordEventScriptAddr:: dw

NEXTU ; cf28
; BG event data
wCurBGEvent::
wCurBGEventYCoord:: db
wCurBGEventXCoord:: db
wCurBGEventType:: db
wCurBGEventScriptAddr:: dw

NEXTU ; cf28
; mart data
wMartType:: db
wMartPointerBank:: db
wMartPointer:: dw
wMartJumptableIndex:: db
wBargainShopFlags:: db

NEXTU ; cf28
; player movement data
wCurInput::
wFacingTileID:: db
wWalkingIntoNPC:: db
wWalkingIntoLand:: db
wWalkingIntoEdgeWarp:: db
wMovementAnimation:: db
wWalkingDirection:: db
wFacingDirection:: db
wWalkingX:: db
wWalkingY:: db
wWalkingTile:: db
	ds 6
wPlayerTurningDirection:: db

NEXTU ; cf28
; std script buffer
	ds 1
wJumpStdScriptBuffer:: ds 3

NEXTU ; cf28
; phone script data
wCheckedTime:: db
wEMailListIndex:: db
wNumAvailableCallers:: db
wAvailableCallers:: ds CONTACT_LIST_SIZE

NEXTU ; cf28
; phone caller contact
	ds 1
wCallerContact:: ds EMAIL_CONTACT_SIZE

NEXTU ; cf28
; backup menu data
	ds 7
wMenuCursorBufferBackup:: db
wMenuScrollPositionBackup:: db

NEXTU ; cf28
; poison step data
wPoisonStepData::
wPoisonStepFlagSum:: db
wPoisonStepPartyFlags:: ds PARTY_LENGTH
wPoisonStepDataEnd::
ENDU ; cf3a

wBoxAlignment:: db
wUnusedBufferCF3C:: dw
wFXAnimID:: dw
ENDU ; cf3f

wPlaceBallsX:: db ; cf3f
wPlaceBallsY:: db ; cf40
wTileAnimationTimer:: db ; cf41

; palette backups?
wBGP:: db ; cf42
wOBP0:: db ; cf43
wOBP1:: db ; cf44

wNumHits:: db ; cf45

wMonOrItemNameBuffer:: ds 22 ; cf46
wTMHMMoveNameBackup:: ds MOVE_NAME_LENGTH ; cf5c

wStringBuffer1:: ds 19 ; cf69
wStringBuffer2:: ds 19 ; cf7c
wStringBuffer3:: ds 19 ; cf8f
wStringBuffer4:: ds 19 ; cfa2
wStringBuffer5:: ds 13 ; cfb5

wBattleMenuCursorBuffer:: dw ; cfc2
wCurBattleMon:: db ; cfc4
wCurMoveNum:: db ; cfc5
wLastPocket:: db ; cfc6

wPartyMenuCursor:: db ; cfc7
wItemsPocketCursor:: db ; cfc8
wKeyItemsPocketCursor:: db ; cfc9
wBallsPocketCursor:: db ; cfca
wTMHMPocketCursor:: db ; cfcb
wMedicinePocketCursor:: db ; cfcc
wFruitPocketCursor:: db ; cfcd
wAssemblyPocketCursor:: db ; cfce
wEvolutionPocketCursor:: db ; cfcf

wItemsPocketScrollPosition:: db ; cfd0
wKeyItemsPocketScrollPosition:: db ; cfd1
wBallsPocketScrollPosition:: db ; cfd2
wTMHMPocketScrollPosition:: db ; cfd3
wMedicinePocketScrollPosition:: db ; cfd4
wFruitPocketScrollPosition:: db ; cfd5
wAssemblyPocketScrollPosition:: db ; cfd6
wEvolutionPocketScrollPosition:: db ; cfd7

; cfd8
wSwitchMon::
wSwitchItem::
wMoveSwapBuffer::
	db

wMenuScrollPosition:: ds 4 ; cfd9

wQueuedScriptBank:: db ; cfdd
wQueuedScriptAddr:: dw ; cfde

wPredefID:: db ; cfe0
wPredefTemp:: dw ; cfe1
wPredefAddress:: dw ; cfe3
wFarCallBCBuffer:: dw ; cfe5

wNumMoves:: db ; cfe7

; cfe8
wFieldMoveSucceeded::
wItemEffectSucceeded::
wBattlePlayerAction::
; 0 - use move/1 - use item/2 - switch
wSolvedUnownPuzzle::
	db

wVramState:: ; cfe9
; bit 0: overworld sprite updating on/off
; bit 5: can animate object $0/$4 to music
; bit 6: something to do with text
; bit 7: on when surf initiates
;        flickers when climbing waterfall
	db

wBattleResult:: ; cfea
; WIN, LOSE, or DRAW
; bit 7: box full
	db


wUsingItemWithSelect:: db ; cfeb

UNION ; cfec
; mart data
wCurMart:: ds 16
wCurMartEnd::

NEXTU ; cfec
; elevator data
wCurElevator:: db
wCurElevatorFloors:: db

NEXTU ; cfec
; mailbox data
wCurMessageScrollPosition:: db
wCurMessageIndex:: db
wMailboxCount:: db
wMailboxItems:: ds MAILBOX_CAPACITY
wMailboxEnd::
ENDU ; cffc

wListPointer:: dw ; cffc
wUnusedCFFE:: dw


SECTION "WRAM 1", WRAMX

wItemAttributesPtr:: dw ; d000

wCurItem:: db ; d002
wCurItemQuantity::
wMartItemID::
	db ; d003

wCurPartySpecies:: dw ; d004

wCurPartyMon::
; contains which monster in a party
; is being dealt with at the moment
; 0-5
	db ; d006

wWhichHPBar:: ; d007
; 0: Enemy/1: Player/2: Party Menu
	db

wPokemonWithdrawDepositParameter:: ; d008
; 0: Take from PC/1: Put into PC/2: Take from Day-Care/3: Put into Day-Care
	db

wItemQuantityChangeBuffer:: db ; d009
wItemQuantityBuffer:: db ; d00a

wTempMon:: party_struct wTempMon ; d00b

wSpriteFlags:: db ; d037

wHandlePlayerStep:: db ; d038

wPartyMenuActionText:: db ; d039

wItemAttributeParamBuffer:: db ; d03a

wCurPartyLevel:: db ; d03b

wScrollingMenuListSize:: db ; d03c

wLinkMode:: db ; d03d
; 0 not in link battle
; 1 link battle

; used when following a map warp
wNextWarp:: db ; d03e
wNextMapGroup:: db ; d03f
wNextMapNumber:: db ; d040
wPrevWarp:: db ; d041
wPrevMapGroup:: db ; d042
wPrevMapNumber:: db ; d043

wUnusedD05A:: db ; d044

wBGMapAnchor:: dw ; d045

wUsedSprites:: ds SPRITE_GFX_LIST_CAPACITY * 2 ; d047
wUsedSpritesEnd:: ; d05f
	ds 30

wOverworldMapAnchor:: dw ; d07d
wMetatileStandingY:: db ; d07f
wMetatileStandingX:: db ; d080

wMapPartial::
wMapAttributesBank:: db ; d081
wMapTileset:: db ; d082
wEnvironment:: db ; d083
wMapAttributesPointer:: dw ; d084
wMapPartialEnd::

wMapAttributes::
wMapBorderBlock:: db ; d086
; width/height are in blocks (2x2 walkable tiles, 4x4 graphics tiles)
wMapHeight:: db ; d087
wMapWidth:: db ; d088
wMapBlocksBank:: db ; d089
wMapBlocksPointer:: dw ; d08a
wMapScriptsBank:: db ; d08c
wMapScriptsPointer:: dw ; d08d
wMapEventsPointer:: dw ; d08f
; bit set
wMapConnections:: db ; d091
wMapAttributesEnd::

wNorthMapConnection:: map_connection_struct wNorth ; d092
wSouthMapConnection:: map_connection_struct wSouth ; d09e
wWestMapConnection::  map_connection_struct wWest  ; d0aa
wEastMapConnection::  map_connection_struct wEast  ; d0b6

wTileset::
wTilesetBank:: db ; d0c2
wTilesetAddress:: dw ; d0c3
wTilesetBlocksBank:: db ; d0c5
wTilesetBlocksAddress:: dw ; d0c6
wTilesetCollisionBank:: db ; d0c8
wTilesetCollisionAddress:: dw ; d0c9
wTilesetAnim:: dw ; bank 3f ; d0cb
wTilesetPalettes:: dw ; bank 3f ; d0cd
wTilesetEnd::

wEvolvableFlags:: flag_array PARTY_LENGTH ; d0cf

wForceEvolution:: db ; d0d0

UNION ; d0d1
; general-purpose buffers
wBuffer1:: db
wBuffer2:: db
wBuffer3:: db
wBuffer4:: db
wBuffer5:: db
wBuffer6:: db
	ds 10

NEXTU ; d0d1
; HP bar animations
wCurHPAnimMaxHP::   dw
wCurHPAnimOldHP::   dw
wCurHPAnimNewHP::   dw
wCurHPAnimPal::     db
wCurHPBarPixels::   db
wNewHPBarPixels::   db
wCurHPAnimDeltaHP:: dw
wCurHPAnimLowHP::   db
wCurHPAnimHighHP::  db

NEXTU ; d0d1
; evolution data
wEvolutionOldSpecies:: dw
wEvolutionNewSpecies:: dw
wEvolutionPicOffset:: db
wEvolutionCanceled:: db

NEXTU ; d0d1

	ds 9

wLinkBattleRNPreamble:: ds 1

NEXTU ; d0d1
; miscellaneous
wSelectedDecoration:: db
wOtherDecoration::    db
wCurEnemyItem:: db
ENDU ; d0e1


wLinkBattleRNs:: ds 10 ; d0e1

wTempEnemyMonSpecies::  dw ; d0eb
wTempBattleMonSpecies:: dw ; d0ed

wEnemyMon:: battle_struct wEnemyMon ; d0ef
wEnemyMonBuild:: db ; d111
wEnemyMonBaseStats:: ds 5 ; d112
wEnemyMonCatchRate:: db ; d117
wEnemyMonBaseExp::   db ; d118
wEnemyMonEnd::

wBattleMode:: ; d119
; 0: overworld
; 1: wild battle
; 2: trainer battle
	db

wTempWildMonSpecies:: dw ; d11a

wOtherTrainerClass::
; class (Youngster, Bug Catcher, etc.) of opposing trainer
; 0 if opponent is a wild Pokémon, not a trainer
	db ; d11c

; BATTLETYPE_* values
wBattleType:: db ; d11d


wOtherTrainerID::
; which trainer of the class that you're fighting
; (Joey, Mikey, Albert, etc.)
	db ; d11e

wForcedSwitch:: db ; d11f

wTrainerClass:: db ; d120

wUnownLetter:: db ; d121

wMoveSelectionMenuType:: db ; d122

; corresponds to the data/pokemon/base_stats/*.asm contents
wCurBaseData::
wBaseDexNo:: dw ; d123
wBaseStats::
wBaseHP:: db ; d125
wBaseAttack:: db ; d126
wBaseDefense:: db ; d127
wBaseSpeed:: db ; d128
wBaseSpecialAttack:: db ; d129
wBaseSpecialDefense:: db ; d12a
wBaseType::
wBaseType1:: db ; d12b
wBaseType2:: db ; d12c
wBaseCatchRate:: db ; d12d
wBaseExp:: db ; d12e
wBaseItems::
wBaseItem1:: db ; d12f
wBaseItem2:: db ; d130
wBaseGender:: db ; d131
wBaseUnknown1:: db ; d132
wBaseEggSteps:: db ; d133
wBaseUnknown2:: db ; d134
wBasePicSize:: db ; d135
wBaseUnusedFrontpic:: dw ; d136
wBaseUnusedBackpic:: dw ; d138
wBaseGrowthRate:: db ; d13a
wBaseEggGroups:: db ; d13b
wBaseTMHM:: flag_array NUM_TM_HM ; d13c
wCurBaseDataEnd::

wCurDamage:: dw ; d143

wTempSpecies::
wTempIconSpecies:: dw ; d145

wMornEncounterRate::  db ; d147
wDayEncounterRate::   db ; d148
wNiteEncounterRate::  db ; d149
wWaterEncounterRate:: db ; d14a
wListMoves_MoveIndicesBuffer:: ds NUM_MOVES ; d14b
wPutativeTMHMMove:: db ; d14f
wInitListType:: db ; d150
wWildMon:: dw ; d151
wBattleHasJustStarted:: db ; d153

; wd154 has many different short-term uses
wTempByteValue::
wNumSetBits::
wTypeMatchup::
wCurType::
wTempTMHM::
wTempPP::
wNextBoxOrPartyIndex::
wChosenCableClubRoom::
wBreedingCompatibility::
wMoveGrammar::
wApplyStatLevelMultipliersToEnemy::
wUsePPUp::
wd154::
	db

wFailedToFlee:: db ; d155
wNumFleeAttempts:: db ; d156
wMonTriedToEvolve:: db ; d157

wROMBankBackup:: db ; d158
wFarByte::
wTempBank:: db ; d159

wTimeOfDay:: db ; d15a

wMapStatus:: db ; d15b
wMapEventStatus:: db ; d15c

wScriptFlags:: ; d15d
; bit 3: priority jump
	db
wScriptFlags2:: ; d15e
	db
wScriptFlags3:: ; d15f
; bit 0: count steps
; bit 1: coord events
; bit 2: warps and connections
; bit 4: wild encounters
; bit 5: unknown
	db

wScriptMode:: db ; d160
wScriptRunning:: db ; d161
wScriptBank:: db ; d162
wScriptPos:: dw ; d163

wScriptStackSize:: db ; d165
wScriptStack:: ds 3 * 5 ; d166
wScriptVar:: dw ; d175
wScriptDelay:: db ; d177

; d178
wPriorityScriptBank::
wScriptTextBank::
	db
; d179
wPriorityScriptAddr::
wScriptTextAddr::
	dw
wWildEncounterCooldown:: db ; d17b
wXYComparePointer:: dw ; c17c

wd17e:: flag_array 32

wBattleScriptFlags:: db ; d182
wPlayerSpriteSetupFlags:: ; d183
	db

wMapReentryScriptQueueFlag:: db ; d184
wMapReentryScriptBank:: db ; d185
wMapReentryScriptAddress:: dw ; d186

wNamedObjectIndexBuffer:: dw ; d188

wTimeCyclesSinceLastCall:: db ; d18a
wReceiveCallDelay_MinsRemaining:: db ; d18b
wReceiveCallDelay_StartTime:: ds 3 ; d18c

wMapStatusEnd::

wOptions:: ; d18f
; bit 0-2: number of frames to delay when printing text
;   fast 1; mid 3; slow 5
; bit 3: ?
; bit 4: no text delay
; bit 5: stereo off/on
; bit 6: battle style shift/set
; bit 7: battle scene off/on
	db

wSaveFileExists:: db ; d190
wTextboxFrame:: ; d191
; bits 0-2: textbox frame 0-7
	db

wTextboxFlags:: ; d192
; bit 0: 1-frame text delay
; bit 1: when unset, no text delay
	db
wGBPrinterBrightness:: ; d193
; bit 0-6: brightness
;   lightest: $00
;   lighter:  $20
;   normal:   $40 (default)
;   darker:   $60
;   darkest:  $7F
	db
wOptions2:: ; d194
; bit 0: menu account off/on
	db

wOptionsEnd:: ; d195


SECTION "Game Data", WRAMX

; d195
wGameData::
wPlayerData::
wPlayerData1::
wPlayerID:: dw

wPlayerName:: ds NAME_LENGTH ; d197
wMomsName::   ds NAME_LENGTH ; d1a2
wRivalName::  ds NAME_LENGTH ; d1ad
wRedsName::   ds NAME_LENGTH ; d1b8
wGreensName:: ds NAME_LENGTH ; d1c3

wSavedAtLeastOnce:: db ; d1ce
wSpawnAfterChampion:: db ; d1cf

; init time set at newgame
wStartDay:: db ; d1d0
wStartHour:: db ; d1d1
wStartMinute:: db ; d1d2
wStartSecond:: db ; d1d3

wRTC:: ds 4 ; d1d4

wDSTBackupDay:: db ; d1d8
wDSTBackupHours:: db ; d1d9
wDSTBackupMinutes:: db ; d1da
wDSTBackupSeconds:: db ; d1db

wDST:: ; d1dc
; bit 7: dst
	db

; used to temporarily store wCurItem before going to \1CaughtItem
wBallUsedBuffer:: db ; d1dd

wGameTimeCap::     db ; d1de
wGameTimeHours::   dw ; d1df
wGameTimeMinutes:: db ; d1e1
wGameTimeSeconds:: db ; d1e2
wGameTimeFrames::  db ; d1e3

wCurDay:: db ; d1e4

wObjectFollow_Leader:: db ; d1e5
wObjectFollow_Follower:: db ; d1e6
wCenteredObject:: db ; d1e7
wFollowerMovementQueueLength:: db ; d1e8
wFollowMovementQueue:: ds 5 ; d1e9

wObjectStructs::
wPlayerStruct::   object_struct wPlayer   ; d1ee
wObject1Struct::  object_struct wObject1  ; d216
wObject2Struct::  object_struct wObject2  ; d23e
wObject3Struct::  object_struct wObject3  ; d266
wObject4Struct::  object_struct wObject4  ; d28e
wObject5Struct::  object_struct wObject5  ; d2b6
wObject6Struct::  object_struct wObject6  ; d2de
wObject7Struct::  object_struct wObject7  ; d306
wObject8Struct::  object_struct wObject8  ; d32e
wObject9Struct::  object_struct wObject9  ; d356
wObject10Struct:: object_struct wObject10 ; d38e

UNION ; d3a6
	ds 18
wPlayerData1End:: ; d3b8
wPlayerData2::
NEXTU ; d3a6
wObject11Struct:: object_struct wObject11
wObject12Struct:: object_struct wObject12
wObjectStructsEnd::
ENDU ; d3f6

wCmdQueue:: ds CMDQUEUE_CAPACITY * CMDQUEUE_ENTRY_SIZE ; d3f6

wMapObjects::
wPlayerObject:: map_object wPlayer ; d40e
wMap1Object::   map_object wMap1
wMap2Object::   map_object wMap2
wMap3Object::   map_object wMap3
wMap4Object::   map_object wMap4
wMap5Object::   map_object wMap5
wMap6Object::   map_object wMap6
wMap7Object::   map_object wMap7
wMap8Object::   map_object wMap8
wMap9Object::   map_object wMap9
wMap10Object::  map_object wMap10
wMap11Object::  map_object wMap11
wMap12Object::  map_object wMap12
wMap13Object::  map_object wMap13
wMap14Object::  map_object wMap14
wMap15Object::  map_object wMap15
wMapObjectsEnd::

wObjectMasks:: ds NUM_OBJECTS ; d51e

wVariableSprites:: ds $10 ; d52e

wEnteredMapFromContinue:: db ; d53e
wTimeOfDayPal:: db ; d53f
wTimeOfDayPalFlags:: db ; d530
wTimeOfDayPalset:: db ; d531
wCurTimeOfDay:: db ; d532

; d533
wPlayerData2End::
wPlayerData3::
wStatusFlags::
	db
wStatusFlags2:: db ; d534

wMoney:: ds 3 ; d535

wCoins:: dw ; d538

wBadges::
wEquintoBadges:: flag_array NUM_EQUINTO_BADGES ; d53a

wTMs:: ds NUM_TMS ; d53b
wHMs:: flag_array NUM_HMS ; d56d
wMoveItemsEnd:: ; d56e

wNumItems:: db ; d56e
wItems:: ds MAX_ITEMS * 2 + 1 ; d56f
wItemsEnd:: ; d598

wNumKeyItems:: db ; d598
wKeyItems:: ds MAX_KEY_ITEMS + 1 ; d599
wKeyItemsEnd:: ; d5af

wNumBalls:: db ; d5af
wBalls:: ds MAX_BALLS * 2 + 1 ; d5b0
wBallsEnd:: ; d5c9

wNumMedicine:: db ; d5c9
wMedicine:: ds MAX_MEDICINE * 2 + 1 ; d5ca
wMedicineEnd::

wNumFruit:: db ; d5f3
wFruit:: ds MAX_FRUIT * 2 + 1 ; d5f4
wFruitEnd::

wNumAssemblyItems:: db ; d609
wAssemblyItems:: ds MAX_ASM_ITEMS * 2 + 1 ; d60a
wAssemblyItemsEnd::

wNumEvolutionItems:: db ; d633
wEvolutionItems:: ds MAX_EVO_ITEMS * 2 + 1 ; d634
wEvolutionItemsEnd::

wNumPCItems:: db ; d65d
wPCItems:: ds MAX_PC_ITEMS * 2 + 1 ; d65e
wPCItemsEnd::

wPokegearFlags:: ; d6c3
; bit 0: map
; bit 1: radio
; bit 2: phone
; bit 3: expn
; bit 7: on/off
	db

wRadioTuningKnob:: db ; d6c4
wLastDexMode:: db ; d6c5
wWhichRegisteredItem:: db ; d6c6
wRegisteredItem:: db ; d6c7

wPlayerState:: db ; d6c8

wHallOfFameCount:: db ; d6c9
wTradeFlags:: flag_array NUM_NPC_TRADES ; d6ca

wCottageTownSceneID::                             db ; d6cb
wPlayersHouse1FSceneID::                          db ; d6cc
wLarchesHouseSceneID::                            db ; d6cd
wRoute49HouseSceneID::                            db ; d6ce

	ds $120

wEventFlags:: flag_array NUM_EVENTS ; d7ef

	ds $d8 ; d7be

wd8cc:: db

wGameTimerPause:: db ; d8cd

wd8ce::
; bits 4, 6, or 7 can be used to disable joypad input
; bit 4
; bit 6: mon fainted?
; bit 7: SGB flag?
	db

wCurBox:: db ; d8cf

; 8 chars + $50
wBoxNames:: ds BOX_NAME_LENGTH * NUM_BOXES ; d8d0

wBikeFlags:: ; d98d
; bit 0: using strength
; bit 1: always on bike
; bit 2: downhill
	db

wCurMapSceneScriptPointer:: dw ; d98e

wCurCaller:: dw ; d990
wCurMapWarpCount:: db ; d992
wCurMapWarpsPointer:: dw ; d993
wCurMapCoordEventCount:: db ; d995
wCurMapCoordEventsPointer:: dw ; d996
wCurMapBGEventCount:: db ; d998
wCurMapBGEventsPointer:: dw ; d999
wCurMapObjectEventCount:: db ; d99b
wCurMapObjectEventsPointer:: dw ; d99c
wCurMapSceneScriptCount:: db ; d99e
wCurMapSceneScriptsPointer:: dw ; d99f
wCurMapCallbackCount:: db ; d9a1
wCurMapCallbacksPointer:: dw ; d9a2

; Sprite id of each decoration
wDecoBed::           db ; d9a4
wDecoCarpet::        db ; d9a5
wDecoPlant::         db ; d9a6
wDecoPoster::        db ; d9a7
wDecoConsole::       db ; d9a8
wDecoLeftOrnament::  db ; d9a9
wDecoRightOrnament:: db ; d9aa
wDecoBigDoll::       db ; d9ab

; Items bought from Mom
wWhichMomItem:: db ; d9ac
wWhichMomItemSet:: db ; d9ad

wDailyResetTimer:: dw ; d9ae
wDailyFlags1:: db ; d9b0
wDailyFlags2:: db ; d9b1
wTimerEventStartDay:: db ; d9b2

wFruitTreeFlags:: flag_array NUM_FRUIT_TREES ; d9b3

	ds 6

wLuckyNumberDayBuffer:: dw ; d9ba
wSpecialPhoneCallID:: db ; d9bc

wStepCount:: db ; d9bd
wPoisonStepCount:: db ; d9be
wDeciramBuffer:: dw ; d9bf
wHappinessStepCount:: db ; d9c1
wUsingSurfBoard:: db ; d9c2

wParkBallsRemaining::
wSafariBallsRemaining:: db ; d9c3
wSafariTimeRemaining:: dw ; d9c4

wEMailList:: ds CONTACT_LIST_SIZE + 1 ; d9c6

	ds 17

wLuckyNumberShowFlag:: db ; d9e7
	ds 1
wLuckyIDNumber:: dw ; d9e9

wRepelEffect:: db ; d9eb ; If a Repel is in use, it contains the nr of steps it's still active
wBikeStep:: dw ; d9ec

wPlayerData3End::
wPlayerDataEnd::

wCurMapData::

wVisitedSpawns:: flag_array NUM_SPAWNS ; d9ee
	ds 3

wDigWarpNumber:: db ; d9f2
wDigMapGroup::   db ; d9f3
wDigMapNumber::  db ; d9f4

; used on maps like second floor pokécenter, which are reused, so we know which
; map to return to
wBackupWarpNumber:: db ; d9f5
wBackupMapGroup::   db ; d9f6
wBackupMapNumber::  db ; d9f7

	ds 3

wLastSpawnMapGroup:: db ; d9fb
wLastSpawnMapNumber:: db ; d9fc

	ds 2

wWarpNumber:: db ; d9ff
wMapGroup:: db ; da00
wMapNumber:: db ; da01
wYCoord:: db ; da02
wXCoord:: db ; da03
wScreenSave:: ds SCREEN_META_WIDTH * SCREEN_META_HEIGHT ; da04

wCurMapDataEnd:: ; da22


SECTION "Party", WRAMX

wPokemonData::
wPartyCount::   db ; da22
wPartySpecies:: ds PARTY_LENGTH * 2 ; da23
wPartyEnd::     db ; da2f ; older code doesn't check wPartyCount

wPartyMons::
wPartyMon1:: party_struct wPartyMon1 ; da30
wPartyMon2:: party_struct wPartyMon2 ; da5c
wPartyMon3:: party_struct wPartyMon3 ; da88
wPartyMon4:: party_struct wPartyMon4 ; dab4
wPartyMon5:: party_struct wPartyMon5 ; dae0
wPartyMon6:: party_struct wPartyMon6 ; db0c

wPartyMonOT:: ds NAME_LENGTH * PARTY_LENGTH ; db38

wPartyMonNicknames:: ds MON_NAME_LENGTH * PARTY_LENGTH ; db7a
wPartyMonNicknamesEnd:: ; dbbc

	ds 8

wPokedexCaught:: flag_array NUM_POKEMON ; dbc4
	ds 16
wEndPokedexCaught::

wPokedexSeen:: flag_array NUM_POKEMON ; dbf4
	ds 16
wEndPokedexSeen::

wUnownDex:: ds NUM_UNOWN ; dc24
wUnlockedUnowns:: db ; dc3e
wFirstUnownSeen:: db ; dc3f

wDayCareMan:: ; dc40
; bit 7: active
; bit 6: egg ready
; bit 5: monsters are compatible
; bit 0: monster 1 in day-care
	db

wBreedMon1::
wBreedMon1Nick::  ds MON_NAME_LENGTH ; dc41
wBreedMon1OT::    ds NAME_LENGTH ; dc4c
wBreedMon1Stats:: box_struct wBreedMon1 ; dc57
	ds 3

wDayCareLady:: ; dc77
; bit 7: active
; bit 0: monster 2 in day-care
	db

wStepsToEgg:: ; dc78
	db
wBreedMotherOrNonDitto:: ; dc79
;  z: yes
; nz: no
	db

wBreedMon2::
wBreedMon2Nick::  ds MON_NAME_LENGTH ; dc7a
wBreedMon2OT::    ds NAME_LENGTH ; dc85
wBreedMon2Stats:: box_struct wBreedMon2 ; dc90
	ds 3

wEggNick:: ds MON_NAME_LENGTH ; dcb0
wEggOT::   ds NAME_LENGTH ; dcbb
wEggMon::  box_struct wEggMon ; dcc6
	ds 5

wSwarmMapGroup:: db ; dd14
wSwarmMapNumber:: db ; dd15
wFishingSwarmFlag:: db ; dd16

wRoamMon1:: roam_struct wRoamMon1 ; dd17
wRoamMon2:: roam_struct wRoamMon2 ; dd1f
wRoamMon3:: roam_struct wRoamMon3 ; dd27

wRoamMons_CurMapNumber:: db ; dd2f
wRoamMons_CurMapGroup:: db ; dd30
wRoamMons_LastMapNumber:: db ; dd31
wRoamMons_LastMapGroup:: db ; dd32

wBestMagikarpLengthFeet:: db ; dd33
wBestMagikarpLengthInches:: db ; dd34
wMagikarpRecordHoldersName:: ds NAME_LENGTH ; dd35

UNION ; dd40
wPokedexShowPointerAddr:: dw
wPokedexShowPointerBank:: db

NEXTU ; dd40
wUnusedEggHatchFlag:: db

NEXTU ; dd41
; enemy party
wOTPlayerName:: ds NAME_LENGTH
wOTPlayerID:: dw
wOTPartyCount::   db
wOTPartySpecies:: ds PARTY_LENGTH * 2
wOTPartyEnd::     db ; older code doesn't check PartyCount
ENDU ; dd5d

; ot party mons
wOTPartyMons::
wOTPartyMon1:: party_struct wOTPartyMon1 ; dd5d
wOTPartyMon2:: party_struct wOTPartyMon2 ; dd89
wOTPartyMon3:: party_struct wOTPartyMon3 ; ddb5
wOTPartyMon4:: party_struct wOTPartyMon4 ; dde1
wOTPartyMon5:: party_struct wOTPartyMon5 ; de0d
wOTPartyMon6:: party_struct wOTPartyMon6 ; de39
wOTPartyMonsEnd::

wOTPartyMonOT:: ds NAME_LENGTH * PARTY_LENGTH ; de65
wOTPartyMonNicknames:: ds MON_NAME_LENGTH * PARTY_LENGTH ; dea7
wOTPartyDataEnd:: ; dee9
	ds $18
wPokemonDataEnd:: ; df01
wGameDataEnd::


SECTION "Stack", WRAMX

	ds 2
wStackBottom::
	ds $fc
wStack::
wStackTop::
	ds 1


INCLUDE "sram.asm"

INCLUDE "hram.asm"
