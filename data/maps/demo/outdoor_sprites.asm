
; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw CottageGroupSprites ; GROUP_COTTAGE
	dw CottageGroupSprites ; GROUP_TRAVERSAL
	dw CottageGroupSprites ; GROUP_FOLIAGE

CottageGroupSprites:
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_MONSTER
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_GRANNY
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
