; Footprints are 2x2 tiles each, but are stored as a 16x64-tile image
; (32 rows of 8 footprints per row).
; That means there's a row of the top two tiles for eight footprints,
; then a row of the bottom two tiles for those eight footprints.

; These macros help extract the first and the last two tiles, respectively.
footprint_top    EQUS "0,                 2 * LEN_1BPP_TILE"
footprint_bottom EQUS "2 * LEN_1BPP_TILE, 2 * LEN_1BPP_TILE"

Footprints:
; Entries correspond to Pokémon species, two apiece, 8 tops then 8 bottoms
	table_width LEN_1BPP_TILE * 4, Footprints

; 001-008 top halves
INCBIN "gfx/footprints/chives.1bpp",  footprint_top
INCBIN "gfx/footprints/shallots.1bpp",    footprint_top
INCBIN "gfx/footprints/onion.1bpp",   footprint_top
INCBIN "gfx/footprints/salamander.1bpp", footprint_top
INCBIN "gfx/footprints/chameleon.1bpp", footprint_top
INCBIN "gfx/footprints/red_dragon.1bpp",  footprint_top
INCBIN "gfx/footprints/sea_turtle.1bpp",   footprint_top
INCBIN "gfx/footprints/tortoise.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/chives.1bpp",  footprint_bottom
INCBIN "gfx/footprints/shallots.1bpp",    footprint_bottom
INCBIN "gfx/footprints/onion.1bpp",   footprint_bottom
INCBIN "gfx/footprints/salamander.1bpp", footprint_bottom
INCBIN "gfx/footprints/chameleon.1bpp", footprint_bottom
INCBIN "gfx/footprints/red_dragon.1bpp",  footprint_bottom
INCBIN "gfx/footprints/sea_turtle.1bpp",   footprint_bottom
INCBIN "gfx/footprints/tortoise.1bpp",  footprint_bottom
; 009-016 top halves
INCBIN "gfx/footprints/bad_turtle.1bpp",  footprint_top
INCBIN "gfx/footprints/caterpilla.1bpp",   footprint_top
INCBIN "gfx/footprints/chrysalis.1bpp",    footprint_top
INCBIN "gfx/footprints/butterfly.1bpp", footprint_top
INCBIN "gfx/footprints/larva.1bpp",     footprint_top
INCBIN "gfx/footprints/pupa.1bpp",     footprint_top
INCBIN "gfx/footprints/bee.1bpp",   footprint_top
INCBIN "gfx/footprints/pigeon.1bpp",     footprint_top
; 009-016 bottom halves
INCBIN "gfx/footprints/bad_turtle.1bpp",  footprint_bottom
INCBIN "gfx/footprints/caterpilla.1bpp",   footprint_bottom
INCBIN "gfx/footprints/chrysalis.1bpp",    footprint_bottom
INCBIN "gfx/footprints/butterfly.1bpp", footprint_bottom
INCBIN "gfx/footprints/larva.1bpp",     footprint_bottom
INCBIN "gfx/footprints/pupa.1bpp",     footprint_bottom
INCBIN "gfx/footprints/bee.1bpp",   footprint_bottom
INCBIN "gfx/footprints/pigeon.1bpp",     footprint_bottom
; 017-024 top halves
INCBIN "gfx/footprints/osprey.1bpp",  footprint_top
INCBIN "gfx/footprints/eagle.1bpp",    footprint_top
INCBIN "gfx/footprints/rat.1bpp",    footprint_top
INCBIN "gfx/footprints/molerat.1bpp",   footprint_top
INCBIN "gfx/footprints/sparrow.1bpp",    footprint_top
INCBIN "gfx/footprints/vulture.1bpp",     footprint_top
INCBIN "gfx/footprints/snake.1bpp",      footprint_top
INCBIN "gfx/footprints/cobra.1bpp",      footprint_top
; 017-024 bottom halves
INCBIN "gfx/footprints/osprey.1bpp",  footprint_bottom
INCBIN "gfx/footprints/eagle.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rat.1bpp",    footprint_bottom
INCBIN "gfx/footprints/molerat.1bpp",   footprint_bottom
INCBIN "gfx/footprints/sparrow.1bpp",    footprint_bottom
INCBIN "gfx/footprints/vulture.1bpp",     footprint_bottom
INCBIN "gfx/footprints/snake.1bpp",      footprint_bottom
INCBIN "gfx/footprints/cobra.1bpp",      footprint_bottom
; 025-032 top halves
INCBIN "gfx/footprints/clicker.1bpp",    footprint_top
INCBIN "gfx/footprints/jerboa.1bpp",     footprint_top
INCBIN "gfx/footprints/shrew.1bpp",  footprint_top
INCBIN "gfx/footprints/echidna.1bpp",  footprint_top
INCBIN "gfx/footprints/girlhyrax.1bpp",  footprint_top
INCBIN "gfx/footprints/janekalope.1bpp",   footprint_top
INCBIN "gfx/footprints/kaijuqueen.1bpp",  footprint_top
INCBIN "gfx/footprints/boyhyrax.1bpp",  footprint_top
; 025-032 bottom halves
INCBIN "gfx/footprints/clicker.1bpp",    footprint_bottom
INCBIN "gfx/footprints/jerboa.1bpp",     footprint_bottom
INCBIN "gfx/footprints/shrew.1bpp",  footprint_bottom
INCBIN "gfx/footprints/echidna.1bpp",  footprint_bottom
INCBIN "gfx/footprints/girlhyrax.1bpp",  footprint_bottom
INCBIN "gfx/footprints/janekalope.1bpp",   footprint_bottom
INCBIN "gfx/footprints/kaijuqueen.1bpp",  footprint_bottom
INCBIN "gfx/footprints/boyhyrax.1bpp",  footprint_bottom
; 033-040 top halves
INCBIN "gfx/footprints/jackalope.1bpp",   footprint_top
INCBIN "gfx/footprints/kaijuking.1bpp",   footprint_top
INCBIN "gfx/footprints/faerie.1bpp",   footprint_top
INCBIN "gfx/footprints/angel.1bpp",   footprint_top
INCBIN "gfx/footprints/fox.1bpp",     footprint_top
INCBIN "gfx/footprints/kitsune.1bpp",  footprint_top
INCBIN "gfx/footprints/bloonbunch.1bpp", footprint_top
INCBIN "gfx/footprints/bloondog.1bpp", footprint_top
; 033-040 bottom halves
INCBIN "gfx/footprints/jackalope.1bpp",   footprint_bottom
INCBIN "gfx/footprints/kaijuking.1bpp",   footprint_bottom
INCBIN "gfx/footprints/faerie.1bpp",   footprint_bottom
INCBIN "gfx/footprints/angel.1bpp",   footprint_bottom
INCBIN "gfx/footprints/fox.1bpp",     footprint_bottom
INCBIN "gfx/footprints/kitsune.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bloonbunch.1bpp", footprint_bottom
INCBIN "gfx/footprints/bloondog.1bpp", footprint_bottom
; 041-048 top halves
INCBIN "gfx/footprints/bat.1bpp",      footprint_top
INCBIN "gfx/footprints/scary_bat.1bpp",     footprint_top
INCBIN "gfx/footprints/radish.1bpp",     footprint_top
INCBIN "gfx/footprints/mandrake.1bpp",      footprint_top
INCBIN "gfx/footprints/rafflesia.1bpp",  footprint_top
INCBIN "gfx/footprints/nymph.1bpp",      footprint_top
INCBIN "gfx/footprints/hermitcrab.1bpp",   footprint_top
INCBIN "gfx/footprints/gnat.1bpp",    footprint_top
; 041-048 bottom halves
INCBIN "gfx/footprints/bat.1bpp",      footprint_bottom
INCBIN "gfx/footprints/scary_bat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/radish.1bpp",     footprint_bottom
INCBIN "gfx/footprints/mandrake.1bpp",      footprint_bottom
INCBIN "gfx/footprints/rafflesia.1bpp",  footprint_bottom
INCBIN "gfx/footprints/nymph.1bpp",      footprint_bottom
INCBIN "gfx/footprints/hermitcrab.1bpp",   footprint_bottom
INCBIN "gfx/footprints/gnat.1bpp",    footprint_bottom
; 049-056 top halves
INCBIN "gfx/footprints/moth.1bpp",   footprint_top
INCBIN "gfx/footprints/mole.1bpp",    footprint_top
INCBIN "gfx/footprints/threemoles.1bpp",    footprint_top
INCBIN "gfx/footprints/cat.1bpp",     footprint_top
INCBIN "gfx/footprints/cougar.1bpp",    footprint_top
INCBIN "gfx/footprints/fluffyduck.1bpp",    footprint_top
INCBIN "gfx/footprints/kappa.1bpp",    footprint_top
INCBIN "gfx/footprints/monkey.1bpp",     footprint_top
; 049-056 bottom halves
INCBIN "gfx/footprints/moth.1bpp",   footprint_bottom
INCBIN "gfx/footprints/mole.1bpp",    footprint_bottom
INCBIN "gfx/footprints/threemoles.1bpp",    footprint_bottom
INCBIN "gfx/footprints/cat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/cougar.1bpp",    footprint_bottom
INCBIN "gfx/footprints/fluffyduck.1bpp",    footprint_bottom
INCBIN "gfx/footprints/kappa.1bpp",    footprint_bottom
INCBIN "gfx/footprints/monkey.1bpp",     footprint_bottom
; 057-064 top halves
INCBIN "gfx/footprints/gorilla.1bpp",   footprint_top
INCBIN "gfx/footprints/kai_ken.1bpp",  footprint_top
INCBIN "gfx/footprints/shisa.1bpp",   footprint_top
INCBIN "gfx/footprints/tadpole.1bpp",    footprint_top
INCBIN "gfx/footprints/legtadpole.1bpp",  footprint_top
INCBIN "gfx/footprints/toad.1bpp",  footprint_top
INCBIN "gfx/footprints/bag_lady.1bpp",       footprint_top
INCBIN "gfx/footprints/hagabond.1bpp",    footprint_top
; 057-064 bottom halves
INCBIN "gfx/footprints/gorilla.1bpp",   footprint_bottom
INCBIN "gfx/footprints/kai_ken.1bpp",  footprint_bottom
INCBIN "gfx/footprints/shisa.1bpp",   footprint_bottom
INCBIN "gfx/footprints/tadpole.1bpp",    footprint_bottom
INCBIN "gfx/footprints/legtadpole.1bpp",  footprint_bottom
INCBIN "gfx/footprints/toad.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bag_lady.1bpp",       footprint_bottom
INCBIN "gfx/footprints/hagabond.1bpp",    footprint_bottom
; 065-072 top halves
INCBIN "gfx/footprints/homelass.1bpp",   footprint_top
INCBIN "gfx/footprints/scrawny.1bpp",     footprint_top
INCBIN "gfx/footprints/hunk.1bpp",    footprint_top
INCBIN "gfx/footprints/beefcake.1bpp",    footprint_top
INCBIN "gfx/footprints/beansprout.1bpp", footprint_top
INCBIN "gfx/footprints/drysprout.1bpp", footprint_top
INCBIN "gfx/footprints/mungsprout.1bpp", footprint_top
INCBIN "gfx/footprints/jellyfish.1bpp",  footprint_top
; 065-072 bottom halves
INCBIN "gfx/footprints/homelass.1bpp",   footprint_bottom
INCBIN "gfx/footprints/scrawny.1bpp",     footprint_bottom
INCBIN "gfx/footprints/hunk.1bpp",    footprint_bottom
INCBIN "gfx/footprints/beefcake.1bpp",    footprint_bottom
INCBIN "gfx/footprints/beansprout.1bpp", footprint_bottom
INCBIN "gfx/footprints/drysprout.1bpp", footprint_bottom
INCBIN "gfx/footprints/mungsprout.1bpp", footprint_bottom
INCBIN "gfx/footprints/jellyfish.1bpp",  footprint_bottom
; 073-080 top halves
INCBIN "gfx/footprints/manowar.1bpp", footprint_top
INCBIN "gfx/footprints/rocky.1bpp",    footprint_top
INCBIN "gfx/footprints/hard_rock.1bpp",   footprint_top
INCBIN "gfx/footprints/rubble.1bpp",      footprint_top
INCBIN "gfx/footprints/pony.1bpp",     footprint_top
INCBIN "gfx/footprints/horse.1bpp",   footprint_top
INCBIN "gfx/footprints/beaver.1bpp",   footprint_top
INCBIN "gfx/footprints/sazae_oni.1bpp",    footprint_top
; 073-080 bottom halves
INCBIN "gfx/footprints/manowar.1bpp", footprint_bottom
INCBIN "gfx/footprints/rocky.1bpp",    footprint_bottom
INCBIN "gfx/footprints/hard_rock.1bpp",   footprint_bottom
INCBIN "gfx/footprints/rubble.1bpp",      footprint_bottom
INCBIN "gfx/footprints/pony.1bpp",     footprint_bottom
INCBIN "gfx/footprints/horse.1bpp",   footprint_bottom
INCBIN "gfx/footprints/beaver.1bpp",   footprint_bottom
INCBIN "gfx/footprints/sazae_oni.1bpp",    footprint_bottom
; 081-088 top halves
INCBIN "gfx/footprints/magnet.1bpp",  footprint_top
INCBIN "gfx/footprints/electromag.1bpp",   footprint_top
INCBIN "gfx/footprints/duck.1bpp", footprint_top
INCBIN "gfx/footprints/dodo.1bpp",      footprint_top
INCBIN "gfx/footprints/two_dodos.1bpp",     footprint_top
INCBIN "gfx/footprints/seal.1bpp",       footprint_top
INCBIN "gfx/footprints/dugong.1bpp",    footprint_top
INCBIN "gfx/footprints/grime.1bpp",     footprint_top
; 081-088 bottom halves
INCBIN "gfx/footprints/magnet.1bpp",  footprint_bottom
INCBIN "gfx/footprints/electromag.1bpp",   footprint_bottom
INCBIN "gfx/footprints/duck.1bpp", footprint_bottom
INCBIN "gfx/footprints/dodo.1bpp",      footprint_bottom
INCBIN "gfx/footprints/two_dodos.1bpp",     footprint_bottom
INCBIN "gfx/footprints/seal.1bpp",       footprint_bottom
INCBIN "gfx/footprints/dugong.1bpp",    footprint_bottom
INCBIN "gfx/footprints/grime.1bpp",     footprint_bottom
; 089-096 top halves
INCBIN "gfx/footprints/mud.1bpp",        footprint_top
INCBIN "gfx/footprints/clam.1bpp",   footprint_top
INCBIN "gfx/footprints/oyster.1bpp",   footprint_top
INCBIN "gfx/footprints/drifter.1bpp",     footprint_top
INCBIN "gfx/footprints/spooky.1bpp",    footprint_top
INCBIN "gfx/footprints/phantom.1bpp",     footprint_top
INCBIN "gfx/footprints/wyrm.1bpp",       footprint_top
INCBIN "gfx/footprints/tapir.1bpp",    footprint_top
; 089-096 bottom halves
INCBIN "gfx/footprints/mud.1bpp",        footprint_bottom
INCBIN "gfx/footprints/clam.1bpp",   footprint_bottom
INCBIN "gfx/footprints/oyster.1bpp",   footprint_bottom
INCBIN "gfx/footprints/drifter.1bpp",     footprint_bottom
INCBIN "gfx/footprints/spooky.1bpp",    footprint_bottom
INCBIN "gfx/footprints/phantom.1bpp",     footprint_bottom
INCBIN "gfx/footprints/wyrm.1bpp",       footprint_bottom
INCBIN "gfx/footprints/tapir.1bpp",    footprint_bottom
; 097-104 top halves
INCBIN "gfx/footprints/baku.1bpp",      footprint_top
INCBIN "gfx/footprints/crab.1bpp",     footprint_top
INCBIN "gfx/footprints/coco_crab.1bpp",    footprint_top
INCBIN "gfx/footprints/explosive.1bpp",    footprint_top
INCBIN "gfx/footprints/bomb.1bpp",  footprint_top
INCBIN "gfx/footprints/dozen_Eggs.1bpp",  footprint_top
INCBIN "gfx/footprints/coconuts.1bpp",  footprint_top
INCBIN "gfx/footprints/cave_man.1bpp",     footprint_top
; 097-104 bottom halves
INCBIN "gfx/footprints/baku.1bpp",      footprint_bottom
INCBIN "gfx/footprints/crab.1bpp",     footprint_bottom
INCBIN "gfx/footprints/coco_crab.1bpp",    footprint_bottom
INCBIN "gfx/footprints/explosive.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bomb.1bpp",  footprint_bottom
INCBIN "gfx/footprints/dozen_Eggs.1bpp",  footprint_bottom
INCBIN "gfx/footprints/coconuts.1bpp",  footprint_bottom
INCBIN "gfx/footprints/cave_man.1bpp",     footprint_bottom
; 105-112 top halves
INCBIN "gfx/footprints/cave_ogre.1bpp",    footprint_top
INCBIN "gfx/footprints/bruce_lee.1bpp",  footprint_top
INCBIN "gfx/footprints/jackiechan.1bpp", footprint_top
INCBIN "gfx/footprints/pervert.1bpp",  footprint_top
INCBIN "gfx/footprints/virus.1bpp",    footprint_top
INCBIN "gfx/footprints/bactophage.1bpp",    footprint_top
INCBIN "gfx/footprints/rhino.1bpp",    footprint_top
INCBIN "gfx/footprints/rock_kaiju.1bpp",     footprint_top
; 105-112 bottom halves
INCBIN "gfx/footprints/cave_ogre.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bruce_lee.1bpp",  footprint_bottom
INCBIN "gfx/footprints/jackiechan.1bpp", footprint_bottom
INCBIN "gfx/footprints/pervert.1bpp",  footprint_bottom
INCBIN "gfx/footprints/virus.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bactophage.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rhino.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rock_kaiju.1bpp",     footprint_bottom
; 113-120 top halves
INCBIN "gfx/footprints/big_egg.1bpp",    footprint_top
INCBIN "gfx/footprints/medusa.1bpp",    footprint_top
INCBIN "gfx/footprints/kangaroo.1bpp", footprint_top
INCBIN "gfx/footprints/seahorse.1bpp",     footprint_top
INCBIN "gfx/footprints/hydra.1bpp",     footprint_top
INCBIN "gfx/footprints/goldfish.1bpp",    footprint_top
INCBIN "gfx/footprints/narwhal.1bpp",    footprint_top
INCBIN "gfx/footprints/starfish.1bpp",     footprint_top
; 113-120 bottom halves
INCBIN "gfx/footprints/big_egg.1bpp",    footprint_bottom
INCBIN "gfx/footprints/medusa.1bpp",    footprint_bottom
INCBIN "gfx/footprints/kangaroo.1bpp", footprint_bottom
INCBIN "gfx/footprints/seahorse.1bpp",     footprint_bottom
INCBIN "gfx/footprints/hydra.1bpp",     footprint_bottom
INCBIN "gfx/footprints/goldfish.1bpp",    footprint_bottom
INCBIN "gfx/footprints/narwhal.1bpp",    footprint_bottom
INCBIN "gfx/footprints/starfish.1bpp",     footprint_bottom
; 121-128 top halves
INCBIN "gfx/footprints/seastar.1bpp",    footprint_top
INCBIN "gfx/footprints/crackhead.1bpp",   footprint_top
INCBIN "gfx/footprints/mantis.1bpp",    footprint_top
INCBIN "gfx/footprints/drag_queen.1bpp",       footprint_top
INCBIN "gfx/footprints/raijin.1bpp", footprint_top
INCBIN "gfx/footprints/karura.1bpp",     footprint_top
INCBIN "gfx/footprints/stagbeetle.1bpp",     footprint_top
INCBIN "gfx/footprints/bull.1bpp",     footprint_top
; 121-128 bottom halves
INCBIN "gfx/footprints/seastar.1bpp",    footprint_bottom
INCBIN "gfx/footprints/crackhead.1bpp",   footprint_bottom
INCBIN "gfx/footprints/mantis.1bpp",    footprint_bottom
INCBIN "gfx/footprints/drag_queen.1bpp",       footprint_bottom
INCBIN "gfx/footprints/raijin.1bpp", footprint_bottom
INCBIN "gfx/footprints/karura.1bpp",     footprint_bottom
INCBIN "gfx/footprints/stagbeetle.1bpp",     footprint_bottom
INCBIN "gfx/footprints/bull.1bpp",     footprint_bottom
; 129-136 top halves
INCBIN "gfx/footprints/carp.1bpp",   footprint_top
INCBIN "gfx/footprints/inkanyamba.1bpp",   footprint_top
INCBIN "gfx/footprints/plesiosaur.1bpp",     footprint_top
INCBIN "gfx/footprints/slime.1bpp",      footprint_top
INCBIN "gfx/footprints/wolf.1bpp",      footprint_top
INCBIN "gfx/footprints/wet_dog.1bpp",   footprint_top
INCBIN "gfx/footprints/greyhound.1bpp",    footprint_top
INCBIN "gfx/footprints/hot_dog.1bpp",    footprint_top
; 129-136 bottom halves
INCBIN "gfx/footprints/carp.1bpp",   footprint_bottom
INCBIN "gfx/footprints/inkanyamba.1bpp",   footprint_bottom
INCBIN "gfx/footprints/plesiosaur.1bpp",     footprint_bottom
INCBIN "gfx/footprints/slime.1bpp",      footprint_bottom
INCBIN "gfx/footprints/wolf.1bpp",      footprint_bottom
INCBIN "gfx/footprints/wet_dog.1bpp",   footprint_bottom
INCBIN "gfx/footprints/greyhound.1bpp",    footprint_bottom
INCBIN "gfx/footprints/hot_dog.1bpp",    footprint_bottom
; 137-144 top halves
INCBIN "gfx/footprints/lopolyface.1bpp",    footprint_top
INCBIN "gfx/footprints/nautilus.1bpp",    footprint_top
INCBIN "gfx/footprints/cuttlefish.1bpp",    footprint_top
INCBIN "gfx/footprints/shoe_crab.1bpp",     footprint_top
INCBIN "gfx/footprints/seascorpio.1bpp",   footprint_top
INCBIN "gfx/footprints/pteranodon.1bpp", footprint_top
INCBIN "gfx/footprints/panda.1bpp",    footprint_top
INCBIN "gfx/footprints/yeti.1bpp",   footprint_top
; 137-144 bottom halves
INCBIN "gfx/footprints/lopolyface.1bpp",    footprint_bottom
INCBIN "gfx/footprints/nautilus.1bpp",    footprint_bottom
INCBIN "gfx/footprints/cuttlefish.1bpp",    footprint_bottom
INCBIN "gfx/footprints/shoe_crab.1bpp",     footprint_bottom
INCBIN "gfx/footprints/seascorpio.1bpp",   footprint_bottom
INCBIN "gfx/footprints/pteranodon.1bpp", footprint_bottom
INCBIN "gfx/footprints/panda.1bpp",    footprint_bottom
INCBIN "gfx/footprints/yeti.1bpp",   footprint_bottom
; 145-152 top halves
INCBIN "gfx/footprints/thundabird.1bpp",     footprint_top
INCBIN "gfx/footprints/firebird.1bpp",    footprint_top
INCBIN "gfx/footprints/serpent.1bpp",    footprint_top
INCBIN "gfx/footprints/leviathan.1bpp",  footprint_top
INCBIN "gfx/footprints/mascot.1bpp",  footprint_top
INCBIN "gfx/footprints/wendigo.1bpp",     footprint_top
INCBIN "gfx/footprints/brain.1bpp",        footprint_top
INCBIN "gfx/footprints/squirrel.1bpp",  footprint_top
; 145-152 bottom halves
INCBIN "gfx/footprints/thundabird.1bpp",     footprint_bottom
INCBIN "gfx/footprints/firebird.1bpp",    footprint_bottom
INCBIN "gfx/footprints/serpent.1bpp",    footprint_bottom
INCBIN "gfx/footprints/leviathan.1bpp",  footprint_bottom
INCBIN "gfx/footprints/mascot.1bpp",  footprint_bottom
INCBIN "gfx/footprints/wendigo.1bpp",     footprint_bottom
INCBIN "gfx/footprints/brain.1bpp",        footprint_bottom
INCBIN "gfx/footprints/squirrel.1bpp",  footprint_bottom
; 153-160 top halves
INCBIN "gfx/footprints/koala.1bpp",    footprint_top
INCBIN "gfx/footprints/sloth.1bpp",   footprint_top
INCBIN "gfx/footprints/skunk.1bpp",  footprint_top
INCBIN "gfx/footprints/tazdevil.1bpp",    footprint_top
INCBIN "gfx/footprints/badger.1bpp", footprint_top
INCBIN "gfx/footprints/caiman.1bpp",   footprint_top
INCBIN "gfx/footprints/monitor.1bpp",   footprint_top
INCBIN "gfx/footprints/crocodile.1bpp", footprint_top
; 153-160 bottom halves
INCBIN "gfx/footprints/koala.1bpp",    footprint_bottom
INCBIN "gfx/footprints/sloth.1bpp",   footprint_bottom
INCBIN "gfx/footprints/skunk.1bpp",  footprint_bottom
INCBIN "gfx/footprints/tazdevil.1bpp",    footprint_bottom
INCBIN "gfx/footprints/badger.1bpp", footprint_bottom
INCBIN "gfx/footprints/caiman.1bpp",   footprint_bottom
INCBIN "gfx/footprints/monitor.1bpp",   footprint_bottom
INCBIN "gfx/footprints/crocodile.1bpp", footprint_bottom
; 161-168 top halves
INCBIN "gfx/footprints/raccoon.1bpp",    footprint_top
INCBIN "gfx/footprints/ferret.1bpp",     footprint_top
INCBIN "gfx/footprints/owl.1bpp",   footprint_top
INCBIN "gfx/footprints/hornedowl.1bpp",    footprint_top
INCBIN "gfx/footprints/ladybug.1bpp",     footprint_top
INCBIN "gfx/footprints/firefly.1bpp",     footprint_top
INCBIN "gfx/footprints/spider.1bpp",   footprint_top
INCBIN "gfx/footprints/wasp.1bpp",    footprint_top
; 161-168 bottom halves
INCBIN "gfx/footprints/raccoon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/ferret.1bpp",     footprint_bottom
INCBIN "gfx/footprints/owl.1bpp",   footprint_bottom
INCBIN "gfx/footprints/hornedowl.1bpp",    footprint_bottom
INCBIN "gfx/footprints/ladybug.1bpp",     footprint_bottom
INCBIN "gfx/footprints/firefly.1bpp",     footprint_bottom
INCBIN "gfx/footprints/spider.1bpp",   footprint_bottom
INCBIN "gfx/footprints/wasp.1bpp",    footprint_bottom
; 169-176 top halves
INCBIN "gfx/footprints/big_bat.1bpp",     footprint_top
INCBIN "gfx/footprints/fooba_fish.1bpp",   footprint_top
INCBIN "gfx/footprints/anglerfish.1bpp",    footprint_top
INCBIN "gfx/footprints/gerbil.1bpp",      footprint_top
INCBIN "gfx/footprints/cherub.1bpp",     footprint_top
INCBIN "gfx/footprints/balloon.1bpp",  footprint_top
INCBIN "gfx/footprints/hobo_clown.1bpp",     footprint_top
INCBIN "gfx/footprints/badclown.1bpp",    footprint_top
; 169-176 bottom halves
INCBIN "gfx/footprints/big_bat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/fooba_fish.1bpp",   footprint_bottom
INCBIN "gfx/footprints/anglerfish.1bpp",    footprint_bottom
INCBIN "gfx/footprints/gerbil.1bpp",      footprint_bottom
INCBIN "gfx/footprints/cherub.1bpp",     footprint_bottom
INCBIN "gfx/footprints/balloon.1bpp",  footprint_bottom
INCBIN "gfx/footprints/hobo_clown.1bpp",     footprint_bottom
INCBIN "gfx/footprints/badclown.1bpp",    footprint_bottom
; 177-184 top halves
INCBIN "gfx/footprints/kakapo.1bpp",       footprint_top
INCBIN "gfx/footprints/quetzal.1bpp",       footprint_top
INCBIN "gfx/footprints/lamb.1bpp",     footprint_top
INCBIN "gfx/footprints/sheep.1bpp",    footprint_top
INCBIN "gfx/footprints/Ram.1bpp",   footprint_top
INCBIN "gfx/footprints/hula_girl.1bpp",  footprint_top
INCBIN "gfx/footprints/water_rat.1bpp",     footprint_top
INCBIN "gfx/footprints/rabbit.1bpp",  footprint_top
; 177-184 bottom halves
INCBIN "gfx/footprints/kakapo.1bpp",       footprint_bottom
INCBIN "gfx/footprints/quetzal.1bpp",       footprint_bottom
INCBIN "gfx/footprints/lamb.1bpp",     footprint_bottom
INCBIN "gfx/footprints/sheep.1bpp",    footprint_bottom
INCBIN "gfx/footprints/Ram.1bpp",   footprint_bottom
INCBIN "gfx/footprints/hula_girl.1bpp",  footprint_bottom
INCBIN "gfx/footprints/water_rat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/rabbit.1bpp",  footprint_bottom
; 185-192 top halves
INCBIN "gfx/footprints/fake_bush.1bpp",  footprint_top
INCBIN "gfx/footprints/frog.1bpp",   footprint_top
INCBIN "gfx/footprints/cotton.1bpp",     footprint_top
INCBIN "gfx/footprints/daisy.1bpp",   footprint_top
INCBIN "gfx/footprints/dandelion.1bpp",   footprint_top
INCBIN "gfx/footprints/chimpanzee.1bpp",      footprint_top
INCBIN "gfx/footprints/seed.1bpp",    footprint_top
INCBIN "gfx/footprints/sunflower.1bpp",   footprint_top
; 185-192 bottom halves
INCBIN "gfx/footprints/fake_bush.1bpp",  footprint_bottom
INCBIN "gfx/footprints/frog.1bpp",   footprint_bottom
INCBIN "gfx/footprints/cotton.1bpp",     footprint_bottom
INCBIN "gfx/footprints/daisy.1bpp",   footprint_bottom
INCBIN "gfx/footprints/dandelion.1bpp",   footprint_bottom
INCBIN "gfx/footprints/chimpanzee.1bpp",      footprint_bottom
INCBIN "gfx/footprints/seed.1bpp",    footprint_bottom
INCBIN "gfx/footprints/sunflower.1bpp",   footprint_bottom
; 193-200 top halves
INCBIN "gfx/footprints/dragonfly.1bpp",      footprint_top
INCBIN "gfx/footprints/shags2dope.1bpp",     footprint_top
INCBIN "gfx/footprints/violent_j.1bpp",   footprint_top
INCBIN "gfx/footprints/terrier.1bpp",     footprint_top
INCBIN "gfx/footprints/xolo_dog.1bpp",    footprint_top
INCBIN "gfx/footprints/crow.1bpp",    footprint_top
INCBIN "gfx/footprints/warlock.1bpp",   footprint_top
INCBIN "gfx/footprints/banshee.1bpp", footprint_top
; 193-200 bottom halves
INCBIN "gfx/footprints/dragonfly.1bpp",      footprint_bottom
INCBIN "gfx/footprints/shags2dope.1bpp",     footprint_bottom
INCBIN "gfx/footprints/violent_j.1bpp",   footprint_bottom
INCBIN "gfx/footprints/terrier.1bpp",     footprint_bottom
INCBIN "gfx/footprints/xolo_dog.1bpp",    footprint_bottom
INCBIN "gfx/footprints/crow.1bpp",    footprint_bottom
INCBIN "gfx/footprints/warlock.1bpp",   footprint_bottom
INCBIN "gfx/footprints/banshee.1bpp", footprint_bottom
; 201-208 top halves
INCBIN "gfx/footprints/lettah.1bpp",      footprint_top
INCBIN "gfx/footprints/rolypoly.1bpp",  footprint_top
INCBIN "gfx/footprints/giraffe.1bpp",  footprint_top
INCBIN "gfx/footprints/pinecone.1bpp",     footprint_top
INCBIN "gfx/footprints/fortress.1bpp", footprint_top
INCBIN "gfx/footprints/tsuchinoko.1bpp",  footprint_top
INCBIN "gfx/footprints/mothman.1bpp",     footprint_top
INCBIN "gfx/footprints/deathworm.1bpp",    footprint_top
; 201-208 bottom halves
INCBIN "gfx/footprints/lettah.1bpp",      footprint_bottom
INCBIN "gfx/footprints/rolypoly.1bpp",  footprint_bottom
INCBIN "gfx/footprints/giraffe.1bpp",  footprint_bottom
INCBIN "gfx/footprints/pinecone.1bpp",     footprint_bottom
INCBIN "gfx/footprints/fortress.1bpp", footprint_bottom
INCBIN "gfx/footprints/tsuchinoko.1bpp",  footprint_bottom
INCBIN "gfx/footprints/mothman.1bpp",     footprint_bottom
INCBIN "gfx/footprints/deathworm.1bpp",    footprint_bottom
; 209-216 top halves
INCBIN "gfx/footprints/frenchie.1bpp",   footprint_top
INCBIN "gfx/footprints/bulldog.1bpp",   footprint_top
INCBIN "gfx/footprints/blowfish.1bpp",   footprint_top
INCBIN "gfx/footprints/mantidfly.1bpp",     footprint_top
INCBIN "gfx/footprints/scalebug.1bpp",    footprint_top
INCBIN "gfx/footprints/beetle.1bpp",  footprint_top
INCBIN "gfx/footprints/weasel.1bpp",    footprint_top
INCBIN "gfx/footprints/teddybear.1bpp",  footprint_top
; 209-216 bottom halves
INCBIN "gfx/footprints/frenchie.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulldog.1bpp",   footprint_bottom
INCBIN "gfx/footprints/blowfish.1bpp",   footprint_bottom
INCBIN "gfx/footprints/mantidfly.1bpp",     footprint_bottom
INCBIN "gfx/footprints/scalebug.1bpp",    footprint_bottom
INCBIN "gfx/footprints/beetle.1bpp",  footprint_bottom
INCBIN "gfx/footprints/weasel.1bpp",    footprint_bottom
INCBIN "gfx/footprints/teddybear.1bpp",  footprint_bottom
; 217-224 top halves
INCBIN "gfx/footprints/bear.1bpp",   footprint_top
INCBIN "gfx/footprints/slug.1bpp",     footprint_top
INCBIN "gfx/footprints/snail.1bpp",   footprint_top
INCBIN "gfx/footprints/boar.1bpp",     footprint_top
INCBIN "gfx/footprints/mammoth.1bpp",  footprint_top
INCBIN "gfx/footprints/coral.1bpp",    footprint_top
INCBIN "gfx/footprints/remora.1bpp",   footprint_top
INCBIN "gfx/footprints/octopus.1bpp",  footprint_top
; 217-224 bottom halves
INCBIN "gfx/footprints/bear.1bpp",   footprint_bottom
INCBIN "gfx/footprints/slug.1bpp",     footprint_bottom
INCBIN "gfx/footprints/snail.1bpp",   footprint_bottom
INCBIN "gfx/footprints/boar.1bpp",     footprint_bottom
INCBIN "gfx/footprints/mammoth.1bpp",  footprint_bottom
INCBIN "gfx/footprints/coral.1bpp",    footprint_bottom
INCBIN "gfx/footprints/remora.1bpp",   footprint_bottom
INCBIN "gfx/footprints/octopus.1bpp",  footprint_bottom
; 225-232 top halves
INCBIN "gfx/footprints/santa.1bpp",   footprint_top
INCBIN "gfx/footprints/manta.1bpp",    footprint_top
INCBIN "gfx/footprints/condor.1bpp",   footprint_top
INCBIN "gfx/footprints/rottweiler.1bpp",   footprint_top
INCBIN "gfx/footprints/doberman.1bpp",   footprint_top
INCBIN "gfx/footprints/sea_dragon.1bpp",    footprint_top
INCBIN "gfx/footprints/elebaby.1bpp",     footprint_top
INCBIN "gfx/footprints/elephant.1bpp",    footprint_top
; 225-232 bottom halves
INCBIN "gfx/footprints/santa.1bpp",   footprint_bottom
INCBIN "gfx/footprints/manta.1bpp",    footprint_bottom
INCBIN "gfx/footprints/condor.1bpp",   footprint_bottom
INCBIN "gfx/footprints/rottweiler.1bpp",   footprint_bottom
INCBIN "gfx/footprints/doberman.1bpp",   footprint_bottom
INCBIN "gfx/footprints/sea_dragon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/elebaby.1bpp",     footprint_bottom
INCBIN "gfx/footprints/elephant.1bpp",    footprint_bottom
; 233-240 top halves
INCBIN "gfx/footprints/lopolykiwi.1bpp",   footprint_top
INCBIN "gfx/footprints/elk.1bpp",   footprint_top
INCBIN "gfx/footprints/artist.1bpp",   footprint_top
INCBIN "gfx/footprints/john_cena.1bpp",    footprint_top
INCBIN "gfx/footprints/dreidel.1bpp",  footprint_top
INCBIN "gfx/footprints/bowlcut.1bpp",   footprint_top
INCBIN "gfx/footprints/plug.1bpp",     footprint_top
INCBIN "gfx/footprints/booby.1bpp",      footprint_top
; 233-240 bottom halves
INCBIN "gfx/footprints/lopolykiwi.1bpp",   footprint_bottom
INCBIN "gfx/footprints/elk.1bpp",   footprint_bottom
INCBIN "gfx/footprints/artist.1bpp",   footprint_bottom
INCBIN "gfx/footprints/john_cena.1bpp",    footprint_bottom
INCBIN "gfx/footprints/dreidel.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bowlcut.1bpp",   footprint_bottom
INCBIN "gfx/footprints/plug.1bpp",     footprint_bottom
INCBIN "gfx/footprints/booby.1bpp",      footprint_bottom
; 241-248 top halves
INCBIN "gfx/footprints/cow.1bpp",    footprint_top
INCBIN "gfx/footprints/nurse.1bpp",    footprint_top
INCBIN "gfx/footprints/barghest.1bpp",     footprint_top
INCBIN "gfx/footprints/cerberus.1bpp",      footprint_top
INCBIN "gfx/footprints/fenrir.1bpp",    footprint_top
INCBIN "gfx/footprints/raptor.1bpp",   footprint_top
INCBIN "gfx/footprints/ironmaiden.1bpp",    footprint_top
INCBIN "gfx/footprints/trex.1bpp",  footprint_top
; 241-248 bottom halves
INCBIN "gfx/footprints/cow.1bpp",    footprint_bottom
INCBIN "gfx/footprints/nurse.1bpp",    footprint_bottom
INCBIN "gfx/footprints/barghest.1bpp",     footprint_bottom
INCBIN "gfx/footprints/cerberus.1bpp",      footprint_bottom
INCBIN "gfx/footprints/fenrir.1bpp",    footprint_bottom
INCBIN "gfx/footprints/raptor.1bpp",   footprint_bottom
INCBIN "gfx/footprints/ironmaiden.1bpp",    footprint_bottom
INCBIN "gfx/footprints/trex.1bpp",  footprint_bottom
; 249-256 top halves
INCBIN "gfx/footprints/ryujin.1bpp",      footprint_top
INCBIN "gfx/footprints/phoenix.1bpp",      footprint_top
INCBIN "gfx/footprints/jerzydevil.1bpp",     footprint_top
INCBIN "gfx/footprints/252.1bpp",        footprint_top
INCBIN "gfx/footprints/253.1bpp",        footprint_top
INCBIN "gfx/footprints/254.1bpp",        footprint_top
INCBIN "gfx/footprints/255.1bpp",        footprint_top
INCBIN "gfx/footprints/256.1bpp",        footprint_top
; 249-256 bottom halves
INCBIN "gfx/footprints/ryujin.1bpp",      footprint_bottom
INCBIN "gfx/footprints/phoenix.1bpp",      footprint_bottom
INCBIN "gfx/footprints/jerzydevil.1bpp",     footprint_bottom
INCBIN "gfx/footprints/252.1bpp",        footprint_bottom
INCBIN "gfx/footprints/253.1bpp",        footprint_bottom
INCBIN "gfx/footprints/254.1bpp",        footprint_bottom
INCBIN "gfx/footprints/255.1bpp",        footprint_bottom
INCBIN "gfx/footprints/256.1bpp",        footprint_bottom

	assert_table_length $100
