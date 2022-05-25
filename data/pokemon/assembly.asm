item_pokecombo: MACRO
	dw \1 ; species
rept (_NARG - 1) / 2
	db \2, \3 ; item, quantity
	shift 2
endr
	ds 9 - _NARG, 0
ENDM

ItemPokemonCombinations:
	item_pokecombo MAGNEMITE, LUGNUT,      3,  MAGNET,       2, SILVER_PEARL, 1
	item_pokecombo STARYU,    STAR_PIECE,  5,  PEARL,        1, STARDUST,     1, METAL_WREATH, 1
	item_pokecombo PARAS,     MUSHROOM,    2,  BUDDING_SEED, 1
	item_pokecombo METABEAK,  GOLD_LEAF,   12, PIPE_FEATHER, 6, SILVER_LEAF,  2
;	item_pokecombo FOSSLIX,   BRICK_PIECE, 10, FOSSIL_ROCK,  3
;	item_pokecombo PARABUD,   MUSHROOM,    1,  BUDDING_SEED, 1
;	item_pokecombo KURSTRAW,  LARGE_PIN,   1,  POKE_DOLL,    1
;	item_pokecombo PANGSHI,   NAPKIN,      1,  POKE_DOLL,    1
