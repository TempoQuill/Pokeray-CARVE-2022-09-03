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

INCLUDE "audio/music/new/route55.asm"
INCLUDE "audio/music/new/partyhostbattle.asm"
INCLUDE "audio/music/rby/finalbattle.asm"
INCLUDE "audio/music/new/larch.asm"
INCLUDE "audio/music/new/lanaweforest.asm"
INCLUDE "audio/music/new/gymbattle.asm"
INCLUDE "audio/music/championbattle.asm"
INCLUDE "audio/music/yoshi/fireflower.asm"
INCLUDE "audio/music/new/cottagetown.asm"
INCLUDE "audio/music/new/portitecity.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/new/delappokecenter.asm"
INCLUDE "audio/music/trainervictory.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/pokemoncenter.asm"
INCLUDE "audio/music/looklass.asm"
INCLUDE "audio/music/lookofficer.asm"
INCLUDE "audio/music/new/eastcoaststop.asm"
INCLUDE "audio/music/rby/diglettcave.asm"
INCLUDE "audio/music/showmearound.asm"
INCLUDE "audio/music/gamecorner.asm"
INCLUDE "audio/music/bicycle.asm"
INCLUDE "audio/music/yoshi/starman.asm"
INCLUDE "audio/music/indigoplateau.asm"
INCLUDE "audio/music/new/hideout.asm"
INCLUDE "audio/music/new/lookwoman.asm"
INCLUDE "audio/music/new/route61.asm"
INCLUDE "audio/music/new/lookartist.asm"
INCLUDE "audio/music/rby/oldheal.asm"
INCLUDE "audio/music/rby/trade.asm"
INCLUDE "audio/music/new/lookpartyhost.asm"
INCLUDE "audio/music/new/route52.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/yoshi/vsmatch.asm"
INCLUDE "audio/music/proto/keiro29.asm"
INCLUDE "audio/music/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/evolution.asm"
INCLUDE "audio/music/printer.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/new/hypercoincity.asm"
INCLUDE "audio/music/wildpokemonvictory.asm"
INCLUDE "audio/music/successfulcapture.asm"
INCLUDE "audio/music/gymleadervictory.asm"
INCLUDE "audio/music/new/looksibs.asm"
INCLUDE "audio/music/gym.asm"
INCLUDE "audio/music/new/oddishfarm.asm"
INCLUDE "audio/music/lookrival.asm"
INCLUDE "audio/music/aftertherivalfight.asm"
INCLUDE "audio/music/surf.asm"
INCLUDE "audio/music/new/golempalace.asm"
INCLUDE "audio/music/azaleatown.asm"
INCLUDE "audio/music/proto/traversalcity.asm"
INCLUDE "audio/music/new/sunkernswamp.asm"
INCLUDE "audio/music/new/wildbattle.asm"
INCLUDE "audio/music/new/trainerbattle.asm"
INCLUDE "audio/music/lookyoungster.asm"
INCLUDE "audio/music/mom.asm"
INCLUDE "audio/music/rby/bikeriding.asm"
INCLUDE "audio/music/bugcatchingcontestext.asm"
INCLUDE "audio/music/rby/surfing.asm"
INCLUDE "audio/music/new/rayshadeopening1.asm"
INCLUDE "audio/music/new/rayshadeopening2.asm"
INCLUDE "audio/music/lookhiker.asm"
INCLUDE "audio/music/new/lookhavoc.asm"
INCLUDE "audio/music/new/teamhavoctheme.asm"
INCLUDE "audio/music/mainmenu.asm"


SECTION "Extra Songs 1", ROMX

INCLUDE "audio/music/creditsext.asm"
INCLUDE "audio/music/postcredits.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Cry Bases", ROMX

INCLUDE "audio/cries.asm"

SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

SECTION "New Sound Effects" ROMX

INCLUDE "audio/crystal_sfx.asm"
INCLUDE "audio/yoshi_sfx.asm"
