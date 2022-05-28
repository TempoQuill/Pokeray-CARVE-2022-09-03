	dw ORKID ; 257

	db 102,  39, 203,  70,  98,  11
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 152 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 179 ; step cycles to hatch
INCBIN "gfx/pokemon/orkid/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CUT, FLASH
	; end
