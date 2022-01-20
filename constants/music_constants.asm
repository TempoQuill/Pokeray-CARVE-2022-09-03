; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def

	const MUSIC_NONE                         ; 00
	const MUSIC_RS_OPENING                   ; 01 ; RS_OPENING
	const MUSIC_RS_OPENING_2                 ; 02 ; RS_OPENING_2
	const MUSIC_TITLE                        ; 03
	const MUSIC_MAIN_MENU                    ; 04
	const MUSIC_HEAL                         ; 05
	const MUSIC_ROUTE_29                     ; 06 ; ROUTE_49
	const MUSIC_ROUTE_52                     ; 07
	const MUSIC_ROUTE_55                     ; 08
	const MUSIC_MOM                          ; 09
	const MUSIC_SHOW_ME_AROUND               ; 0a
	const MUSIC_RBY_FM_TRADE                 ; 0b ; HOUSE_ENROUTE
	const MUSIC_POKEMON_CENTER               ; 0c
	const MUSIC_COTTAGE_TOWN                 ; 0d
	const MUSIC_TRAVERSAL_CITY               ; 0e
	const MUSIC_WILD_BATTLE                  ; 0f
	const MUSIC_TRAINER_BATTLE               ; 10
	const MUSIC_GYM_LEADER_BATTLE            ; 11
	const MUSIC_PARTY_HOST_BATTLE            ; 12
	const MUSIC_SHAGGY_BATTLE                ; 13
	const MUSIC_PARKER_BATTLE                ; 14
	const MUSIC_OFFICER_ENCOUNTER            ; 15
	const MUSIC_LASS_ENCOUNTER               ; 16
	const MUSIC_HIKER_ENCOUNTER              ; 17
	const MUSIC_YOUNGSTER_ENCOUNTER          ; 18
	const MUSIC_BEAUTY_ENCOUNTER             ; 19
	const MUSIC_SIBLING_ENCOUNTER            ; 1a
	const MUSIC_PARTY_HOST_ENCOUNTER         ; 1b
	const MUSIC_ARTIST_ENCOUNTER             ; 1c
	const MUSIC_RIVAL_ENCOUNTER              ; 1d
	const MUSIC_PROF_LARCH                   ; 1e
	const MUSIC_RIVAL_AFTER                  ; 1f
	const MUSIC_CAPTURE                      ; 20
	const MUSIC_WILD_VICTORY                 ; 21
	const MUSIC_TRAINER_VICTORY              ; 22
	const MUSIC_GYM_VICTORY                  ; 23
	const MUSIC_GYM                          ; 24
	const MUSIC_RG_OLD_HEAL                  ; 25 ; NON_PC_HEAL
; added after demo build
	const MUSIC_GAME_CORNER                  ; 26
	const MUSIC_BICYCLE                      ; 27
	const MUSIC_HALL_OF_FAME                 ; 28
	const MUSIC_ODDISH_FARM                  ; 29
	const MUSIC_EVOLUTION                    ; 2a
	const MUSIC_CREDITS                      ; 2b
	const MUSIC_LANAWE_FOREST                ; 2c
	const MUSIC_FIRE_FLOWER                  ; 2d ; SS_VAPOR
	const MUSIC_RBY_POKEMON_CENTER           ; 2e ; DILAP_POKEMON_CENTER
	const MUSIC_STARMAN                      ; 2f ; LIGHTHOUSE
	const MUSIC_EAST_COAST_STOP              ; 30
	const MUSIC_INDIGO_PLATEAU               ; 31 ; EQUINTO_LEAGUE
	const MUSIC_GOLEM_PALACE                 ; 32
	const MUSIC_HYPERCOIN_CITY               ; 33
	const MUSIC_DIGLETT_CAVE                 ; 34 ; MT_VACUUM
	const MUSIC_NORGEO_TOWN                  ; 35
	const MUSIC_PORTITE_CITY                 ; 36
	const MUSIC_POST_CREDITS                 ; 37
	const MUSIC_PRINTER                      ; 38
	const MUSIC_ROUTE_61                     ; 39
	const MUSIC_HAVOC_ENCOUNTER              ; 3a
	const MUSIC_HAVOC_THEME                  ; 3b
	const MUSIC_RBY_SURF                     ; 3c ; SS_VAPOR_DEPARTURE
	const MUSIC_STAMP_TOWN                   ; 3d
	const MUSIC_SUNKERN_SWAMP                ; 3e
	const MUSIC_SURF                         ; 3f
	const MUSIC_ROCKET_HIDEOUT               ; 40 ; HAVOC_HIDEOUT
	const MUSIC_VS_MENU_1                    ; 41 ; TRADE_MENU_1
	const MUSIC_VS_MENU_2                    ; 42 ; TRADE_MENU_2
FINAL_MUSIC_TRACK EQU const_value - 1
NUM_MUSIC_IDS EQU FINAL_MUSIC_TRACK

; speical track behavior regarding linked games
; doesn't affect map music behavior
LINK_MUSIC_1 EQU $41
LINK_MUSIC_2 EQU $42

; map music with this value will be redirected to a valid track
SPECIAL_MAP_MUSIC EQU $fd
; ExitPokegearRadio_HandleMusic uses these values
RESTART_MAP_MUSIC EQU $fe
ENTER_MAP_MUSIC   EQU $ff

; G/S leftovers (rs constants)   ; (gs constants in comment)
MUSIC_MAGNET_TRAIN       EQU $25 ; $05
MUSIC_ROUTE_30           EQU $07 ; $2b
MUSIC_ROCKET_ENCOUNTER   EQU $3a ; $39
MUSIC_POKE_FLUTE_CHANNEL EQU $41 ; $40
MUSIC_POKEMON_LULLABY    EQU $42 ; $50
MUSIC_POKEMON_MARCH      EQU $3c ; $51
MUSIC_GS_OPENING         EQU $01 ; $52
MUSIC_GS_OPENING_2       EQU $02 ; $53
MUSIC_ROCKET_OVERTURE    EQU $3b ; $56