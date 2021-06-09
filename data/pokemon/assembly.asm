item_pokecombo: MACRO
	dw \1 ; species
rept (_NARG - 1) / 2
	db \2, \3 ; item, quantity
	shift 2
endr
	ds 9 - ((_NARG - 1) / 2)
ENDM

ItemPokemonCombinations:
	item_pokecombo MAGNEMITE, MAGNET,     2, SILVER_PEARL, 1
	item_pokecombo STARYU,    STAR_PIECE, 6, PEARL,        1, STARDUST, 1
