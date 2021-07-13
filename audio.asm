INCLUDE "constants.asm"


SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "audio/notes.asm"
INCLUDE "audio/wave_samples.asm"
INCLUDE "audio/wavetable_groups.asm"
INCLUDE "audio/volume_envelope_groups.asm"
INCLUDE "audio/drumkits.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/route36.asm"
; INCLUDE "audio/music/new/route55.asm"
INCLUDE "audio/music/rivalbattle.asm"
; INCLUDE "audio/music/new/partyhostbattle.asm"
INCLUDE "audio/music/rocketbattle.asm"
; INCLUDE "audio/music/rby/finalbattle.asm"
INCLUDE "audio/music/elmslab.asm"
; INCLUDE "audio/music/new/larch.asm"
INCLUDE "audio/music/darkcave.asm"
; INCLUDE "audio/music/new/lanaweforest.asm"
INCLUDE "audio/music/johtogymbattle.asm"
; INCLUDE "audio/music/new/gymbattle.asm"
INCLUDE "audio/music/championbattle.asm"
INCLUDE "audio/music/ssaqua.asm"
; INCLUDE "audio/music/yoshi/fireflower.asm"
INCLUDE "audio/music/newbarksilent.asm"
; INCLUDE "audio/music/new/cottagetown.asm"
INCLUDE "audio/music/goldenrodcity.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/ruinsofalphinterior.asm"
; INCLUDE "audio/music/rby/pokecenter.asm"
INCLUDE "audio/music/trainervictory.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/pokemoncenter.asm"
INCLUDE "audio/music/looklass.asm"
INCLUDE "audio/music/lookofficer.asm"
INCLUDE "audio/music/route2.asm"
; INCLUDE "audio/music/new/eastcoaststop.asm"
INCLUDE "audio/music/mtmoon.asm"
; INCLUDE "audio/music/rby/diglettcave.asm"
INCLUDE "audio/music/showmearound.asm"
INCLUDE "audio/music/gamecorner.asm"
INCLUDE "audio/music/bicycle.asm"
INCLUDE "audio/music/lighthouse.asm"
; INCLUDE "audio/music/yoshi/starman.asm"
INCLUDE "audio/music/indigoplateau.asm"
INCLUDE "audio/music/rockethideout.asm"
; INCLUDE "audio/music/new/hideout.asm"
INCLUDE "audio/music/lookbeauty.asm"
INCLUDE "audio/music/route26.asm"
; INCLUDE "audio/music/new/route61.asm"
INCLUDE "audio/music/ecruteakcity.asm"
; INCLUDE "audio/music/new/lookartist.asm"
INCLUDE "audio/music/magnettrain.asm"
; INCLUDE "audio/music/rby/oldheal.asm"
INCLUDE "audio/music/lavendertown.asm"
; INCLUDE "audio/music/rby/trade.asm
INCLUDE "audio/music/contestresults.asm"
; INCLUDE "audio/music/new/lookpartyhost.asm"
INCLUDE "audio/music/route30.asm"
; INCLUDE "audio/music/new/route52.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/violetcity.asm"
; INCLUDE "audio/music/yoshi/vsmatch.asm"
INCLUDE "audio/music/route29.asm"
; INCLUDE "audio/music/proto/keiro29.asm"
INCLUDE "audio/music/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/evolution.asm"
INCLUDE "audio/music/printer.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/celadoncity.asm"
; INCLUDE "audio/music/new/hypercoincity.asm"
INCLUDE "audio/music/wildpokemonvictory.asm"
INCLUDE "audio/music/successfulcapture.asm"
INCLUDE "audio/music/gymleadervictory.asm"
INCLUDE "audio/music/mtmoonsquare.asm"
; INCLUDE "audio/music/new/looksibs.asm"
INCLUDE "audio/music/gym.asm"
INCLUDE "audio/music/pallettown.asm"
; INCLUDE "audio/music/new/oddishfarm.asm"
INCLUDE "audio/music/lookrival.asm"
INCLUDE "audio/music/aftertherivalfight.asm"
INCLUDE "audio/music/surf.asm"
INCLUDE "audio/music/nationalpark.asm"
; INCLUDE "audio/music/new/golempalace.asm"
INCLUDE "audio/music/azaleatown.asm"
; INCLUDE "audio/music/new/norgeotown.asm"
INCLUDE "audio/music/cherrygrovecity.asm"
; INCLUDE "audio/music/proto/traversalcity.asm"
INCLUDE "audio/music/unioncave.asm"
; INCLUDE "audio/music/new/sunkernswamp.asm"
INCLUDE "audio/music/johtowildbattle.asm"
; INCLUDE "audio/music/new/wildbattle.asm"
INCLUDE "audio/music/johtotrainerbattle.asm"
; INCLUDE "audio/music/new/trainerbattle.asm"
INCLUDE "audio/music/lookyoungster.asm"
INCLUDE "audio/music/mom.asm"
INCLUDE "audio/music/pokemonlullaby.asm"
; INCLUDE "audio/music/yoshi/vsmenu.asm"
INCLUDE "audio/music/pokemonmarch.asm"
; INCLUDE "audio/music/rby/surfing.asm"
INCLUDE "audio/music/goldsilveropening.asm"
; INCLUDE "audio/music/new/rayshadeopening1.asm"
INCLUDE "audio/music/goldsilveropening2.asm"
; INCLUDE "audio/music/new/rayshadeopening2.asm"
INCLUDE "audio/music/lookhiker.asm"
INCLUDE "audio/music/lookrocket.asm"
; INCLUDE "audio/music/new/lookhavoc.asm"
INCLUDE "audio/music/rockettheme.asm"
; INCLUDE "audio/music/new/havoctheme.asm"
INCLUDE "audio/music/mainmenu.asm"
INCLUDE "audio/music/pokeflutechannel.asm"


SECTION "Extra Songs 1", ROMX

INCLUDE "audio/music/credits.asm"
; INCLUDE "audio/music/new/staffroll.asm"
INCLUDE "audio/music/postcredits.asm"
; INCLUDE "audio/music/proto/m_end2.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Cry Bases", ROMX

INCLUDE "audio/cries.asm"

SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

SECTION "New Sound Effects" ROMX

INCLUDE "audio/crystal_sfx.asm"
INCLUDE "audio/yoshi_sfx.asm"
