; used in data/pokemon/base_stats/*.asm
tmhm: MACRO
; initialize bytes to 0
for n, (NUM_TM_HM_TUTOR + 7) / 8
_tm{d:n} = 0
endr
; set bits of bytes
rept _NARG
	if DEF(\1_TMNUM)
n = (\1_TMNUM - 1) / 8
i = (\1_TMNUM - 1) % 8
_tm{d:n} |= 1 << i
	else
		fail "\1 is not a TM, HM, or tutor move"
	endc
	shift
endr
; output bytes
for n, (NUM_TM_HM_TUTOR + 7) / 8
	db _tm{d:n}
endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
INCLUDE "data/pokemon/base_stats/chives.asm"
INCLUDE "data/pokemon/base_stats/shallots.asm"
INCLUDE "data/pokemon/base_stats/onion.asm"
INCLUDE "data/pokemon/base_stats/salamander.asm"
INCLUDE "data/pokemon/base_stats/chameleon.asm"
INCLUDE "data/pokemon/base_stats/red_dragon.asm"
INCLUDE "data/pokemon/base_stats/sea_turtle.asm"
INCLUDE "data/pokemon/base_stats/tortoise.asm"
INCLUDE "data/pokemon/base_stats/bad_turtle.asm"
INCLUDE "data/pokemon/base_stats/caterpilla.asm"
INCLUDE "data/pokemon/base_stats/chrysalis.asm"
INCLUDE "data/pokemon/base_stats/butterfly.asm"
INCLUDE "data/pokemon/base_stats/larva.asm"
INCLUDE "data/pokemon/base_stats/pupa.asm"
INCLUDE "data/pokemon/base_stats/bee.asm"
INCLUDE "data/pokemon/base_stats/pigeon.asm"
INCLUDE "data/pokemon/base_stats/osprey.asm"
INCLUDE "data/pokemon/base_stats/eagle.asm"
INCLUDE "data/pokemon/base_stats/rat.asm"
INCLUDE "data/pokemon/base_stats/molerat.asm"
INCLUDE "data/pokemon/base_stats/sparrow.asm"
INCLUDE "data/pokemon/base_stats/vulture.asm"
INCLUDE "data/pokemon/base_stats/snake.asm"
INCLUDE "data/pokemon/base_stats/cobra.asm"
INCLUDE "data/pokemon/base_stats/clicker.asm"
INCLUDE "data/pokemon/base_stats/jerboa.asm"
INCLUDE "data/pokemon/base_stats/shrew.asm"
INCLUDE "data/pokemon/base_stats/echidna.asm"
INCLUDE "data/pokemon/base_stats/girlhyrax.asm"
INCLUDE "data/pokemon/base_stats/janekalope.asm"
INCLUDE "data/pokemon/base_stats/kaijuqueen.asm"
INCLUDE "data/pokemon/base_stats/boyhyrax.asm"
INCLUDE "data/pokemon/base_stats/jackalope.asm"
INCLUDE "data/pokemon/base_stats/kaijuking.asm"
INCLUDE "data/pokemon/base_stats/faerie.asm"
INCLUDE "data/pokemon/base_stats/angel.asm"
INCLUDE "data/pokemon/base_stats/fox.asm"
INCLUDE "data/pokemon/base_stats/kitsune.asm"
INCLUDE "data/pokemon/base_stats/bloonbunch.asm"
INCLUDE "data/pokemon/base_stats/bloondog.asm"
INCLUDE "data/pokemon/base_stats/bat.asm"
INCLUDE "data/pokemon/base_stats/scary_bat.asm"
INCLUDE "data/pokemon/base_stats/radish.asm"
INCLUDE "data/pokemon/base_stats/mandrake.asm"
INCLUDE "data/pokemon/base_stats/rafflesia.asm"
INCLUDE "data/pokemon/base_stats/nymph.asm"
INCLUDE "data/pokemon/base_stats/hermitcrab.asm"
INCLUDE "data/pokemon/base_stats/gnat.asm"
INCLUDE "data/pokemon/base_stats/moth.asm"
INCLUDE "data/pokemon/base_stats/mole.asm"
INCLUDE "data/pokemon/base_stats/threemoles.asm"
INCLUDE "data/pokemon/base_stats/cat.asm"
INCLUDE "data/pokemon/base_stats/cougar.asm"
INCLUDE "data/pokemon/base_stats/fluffyduck.asm"
INCLUDE "data/pokemon/base_stats/kappa.asm"
INCLUDE "data/pokemon/base_stats/monkey.asm"
INCLUDE "data/pokemon/base_stats/gorilla.asm"
INCLUDE "data/pokemon/base_stats/kai_ken.asm"
INCLUDE "data/pokemon/base_stats/shisa.asm"
INCLUDE "data/pokemon/base_stats/tadpole.asm"
INCLUDE "data/pokemon/base_stats/legtadpole.asm"
INCLUDE "data/pokemon/base_stats/toad.asm"
INCLUDE "data/pokemon/base_stats/bag_lady.asm"
INCLUDE "data/pokemon/base_stats/hagabond.asm"
INCLUDE "data/pokemon/base_stats/homelass.asm"
INCLUDE "data/pokemon/base_stats/scrawny.asm"
INCLUDE "data/pokemon/base_stats/hunk.asm"
INCLUDE "data/pokemon/base_stats/beefcake.asm"
INCLUDE "data/pokemon/base_stats/beansprout.asm"
INCLUDE "data/pokemon/base_stats/drysprout.asm"
INCLUDE "data/pokemon/base_stats/mungsprout.asm"
INCLUDE "data/pokemon/base_stats/jellyfish.asm"
INCLUDE "data/pokemon/base_stats/manowar.asm"
INCLUDE "data/pokemon/base_stats/rocky.asm"
INCLUDE "data/pokemon/base_stats/hard_rock.asm"
INCLUDE "data/pokemon/base_stats/rubble.asm"
INCLUDE "data/pokemon/base_stats/pony.asm"
INCLUDE "data/pokemon/base_stats/horse.asm"
INCLUDE "data/pokemon/base_stats/beaver.asm"
INCLUDE "data/pokemon/base_stats/sazae_oni.asm"
INCLUDE "data/pokemon/base_stats/magnet.asm"
INCLUDE "data/pokemon/base_stats/electromag.asm"
INCLUDE "data/pokemon/base_stats/duck.asm"
INCLUDE "data/pokemon/base_stats/dodo.asm"
INCLUDE "data/pokemon/base_stats/two_dodos.asm"
INCLUDE "data/pokemon/base_stats/seal.asm"
INCLUDE "data/pokemon/base_stats/dugong.asm"
INCLUDE "data/pokemon/base_stats/grime.asm"
INCLUDE "data/pokemon/base_stats/mud.asm"
INCLUDE "data/pokemon/base_stats/clam.asm"
INCLUDE "data/pokemon/base_stats/oyster.asm"
INCLUDE "data/pokemon/base_stats/drifter.asm"
INCLUDE "data/pokemon/base_stats/spooky.asm"
INCLUDE "data/pokemon/base_stats/phantom.asm"
INCLUDE "data/pokemon/base_stats/wyrm.asm"
INCLUDE "data/pokemon/base_stats/tapir.asm"
INCLUDE "data/pokemon/base_stats/baku.asm"
INCLUDE "data/pokemon/base_stats/crab.asm"
INCLUDE "data/pokemon/base_stats/coco_crab.asm"
INCLUDE "data/pokemon/base_stats/explosive.asm"
INCLUDE "data/pokemon/base_stats/bomb.asm"
INCLUDE "data/pokemon/base_stats/dozen_Eggs.asm"
INCLUDE "data/pokemon/base_stats/coconuts.asm"
INCLUDE "data/pokemon/base_stats/cave_man.asm"
INCLUDE "data/pokemon/base_stats/cave_ogre.asm"
INCLUDE "data/pokemon/base_stats/bruce_lee.asm"
INCLUDE "data/pokemon/base_stats/jackiechan.asm"
INCLUDE "data/pokemon/base_stats/pervert.asm"
INCLUDE "data/pokemon/base_stats/virus.asm"
INCLUDE "data/pokemon/base_stats/bactophage.asm"
INCLUDE "data/pokemon/base_stats/rhino.asm"
INCLUDE "data/pokemon/base_stats/rock_kaiju.asm"
INCLUDE "data/pokemon/base_stats/big_egg.asm"
INCLUDE "data/pokemon/base_stats/medusa.asm"
INCLUDE "data/pokemon/base_stats/kangaroo.asm"
INCLUDE "data/pokemon/base_stats/seahorse.asm"
INCLUDE "data/pokemon/base_stats/hydra.asm"
INCLUDE "data/pokemon/base_stats/goldfish.asm"
INCLUDE "data/pokemon/base_stats/narwhal.asm"
INCLUDE "data/pokemon/base_stats/starfish.asm"
INCLUDE "data/pokemon/base_stats/seastar.asm"
INCLUDE "data/pokemon/base_stats/crackhead.asm"
INCLUDE "data/pokemon/base_stats/mantis.asm"
INCLUDE "data/pokemon/base_stats/drag_queen.asm"
INCLUDE "data/pokemon/base_stats/raijin.asm"
INCLUDE "data/pokemon/base_stats/karura.asm"
INCLUDE "data/pokemon/base_stats/stagbeetle.asm"
INCLUDE "data/pokemon/base_stats/bull.asm"
INCLUDE "data/pokemon/base_stats/carp.asm"
INCLUDE "data/pokemon/base_stats/ikanymba.asm"
INCLUDE "data/pokemon/base_stats/plesiosaur.asm"
INCLUDE "data/pokemon/base_stats/slime.asm"
INCLUDE "data/pokemon/base_stats/wolf.asm"
INCLUDE "data/pokemon/base_stats/wet_dog.asm"
INCLUDE "data/pokemon/base_stats/greyhound.asm"
INCLUDE "data/pokemon/base_stats/hot_dog.asm"
INCLUDE "data/pokemon/base_stats/lopolyface.asm"
INCLUDE "data/pokemon/base_stats/nautilus.asm"
INCLUDE "data/pokemon/base_stats/cuttlefish.asm"
INCLUDE "data/pokemon/base_stats/shoe_crab.asm"
INCLUDE "data/pokemon/base_stats/seascorpio.asm"
INCLUDE "data/pokemon/base_stats/pteranodon.asm"
INCLUDE "data/pokemon/base_stats/panda.asm"
INCLUDE "data/pokemon/base_stats/yeti.asm"
INCLUDE "data/pokemon/base_stats/thundabird.asm"
INCLUDE "data/pokemon/base_stats/firebird.asm"
INCLUDE "data/pokemon/base_stats/serpent.asm"
INCLUDE "data/pokemon/base_stats/leviathan.asm"
INCLUDE "data/pokemon/base_stats/mascot.asm"
INCLUDE "data/pokemon/base_stats/wendigo.asm"
INCLUDE "data/pokemon/base_stats/brain.asm"
INCLUDE "data/pokemon/base_stats/squirrel.asm"
INCLUDE "data/pokemon/base_stats/koala.asm"
INCLUDE "data/pokemon/base_stats/sloth.asm"
INCLUDE "data/pokemon/base_stats/skunk.asm"
INCLUDE "data/pokemon/base_stats/tazdevil.asm"
INCLUDE "data/pokemon/base_stats/badger.asm"
INCLUDE "data/pokemon/base_stats/caiman.asm"
INCLUDE "data/pokemon/base_stats/monitor.asm"
INCLUDE "data/pokemon/base_stats/crocodile.asm"
INCLUDE "data/pokemon/base_stats/raccoon.asm"
INCLUDE "data/pokemon/base_stats/ferret.asm"
INCLUDE "data/pokemon/base_stats/owl.asm"
INCLUDE "data/pokemon/base_stats/hornedowl.asm"
INCLUDE "data/pokemon/base_stats/ladybug.asm"
INCLUDE "data/pokemon/base_stats/firefly.asm"
INCLUDE "data/pokemon/base_stats/spider.asm"
INCLUDE "data/pokemon/base_stats/wasp.asm"
INCLUDE "data/pokemon/base_stats/big_bat.asm"
INCLUDE "data/pokemon/base_stats/fooba_fish.asm"
INCLUDE "data/pokemon/base_stats/anglerfish.asm"
INCLUDE "data/pokemon/base_stats/gerbil.asm"
INCLUDE "data/pokemon/base_stats/cherub.asm"
INCLUDE "data/pokemon/base_stats/balloon.asm"
INCLUDE "data/pokemon/base_stats/hobo_clown.asm"
INCLUDE "data/pokemon/base_stats/badclown.asm"
INCLUDE "data/pokemon/base_stats/kakapo.asm"
INCLUDE "data/pokemon/base_stats/quetzal.asm"
INCLUDE "data/pokemon/base_stats/lamb.asm"
INCLUDE "data/pokemon/base_stats/sheep.asm"
INCLUDE "data/pokemon/base_stats/Ram.asm"
INCLUDE "data/pokemon/base_stats/hula_girl.asm"
INCLUDE "data/pokemon/base_stats/water_rat.asm"
INCLUDE "data/pokemon/base_stats/rabbit.asm"
INCLUDE "data/pokemon/base_stats/fake_bush.asm"
INCLUDE "data/pokemon/base_stats/frog.asm"
INCLUDE "data/pokemon/base_stats/cotton.asm"
INCLUDE "data/pokemon/base_stats/daisy.asm"
INCLUDE "data/pokemon/base_stats/dandelion.asm"
INCLUDE "data/pokemon/base_stats/chimpanzee.asm"
INCLUDE "data/pokemon/base_stats/seed.asm"
INCLUDE "data/pokemon/base_stats/sunflower.asm"
INCLUDE "data/pokemon/base_stats/dragonfly.asm"
INCLUDE "data/pokemon/base_stats/shags2dope.asm"
INCLUDE "data/pokemon/base_stats/violent_j.asm"
INCLUDE "data/pokemon/base_stats/terrier.asm"
INCLUDE "data/pokemon/base_stats/xolo_dog.asm"
INCLUDE "data/pokemon/base_stats/crow.asm"
INCLUDE "data/pokemon/base_stats/warlock.asm"
INCLUDE "data/pokemon/base_stats/banshee.asm"
INCLUDE "data/pokemon/base_stats/lettah.asm"
INCLUDE "data/pokemon/base_stats/rolypoly.asm"
INCLUDE "data/pokemon/base_stats/giraffe.asm"
INCLUDE "data/pokemon/base_stats/pinecone.asm"
INCLUDE "data/pokemon/base_stats/fortress.asm"
INCLUDE "data/pokemon/base_stats/tsuchinoko.asm"
INCLUDE "data/pokemon/base_stats/mothman.asm"
INCLUDE "data/pokemon/base_stats/deathworm.asm"
INCLUDE "data/pokemon/base_stats/frenchie.asm"
INCLUDE "data/pokemon/base_stats/bulldog.asm"
INCLUDE "data/pokemon/base_stats/blowfish.asm"
INCLUDE "data/pokemon/base_stats/mantidfly.asm"
INCLUDE "data/pokemon/base_stats/scalebug.asm"
INCLUDE "data/pokemon/base_stats/beetle.asm"
INCLUDE "data/pokemon/base_stats/weasel.asm"
INCLUDE "data/pokemon/base_stats/teddybear.asm"
INCLUDE "data/pokemon/base_stats/bear.asm"
INCLUDE "data/pokemon/base_stats/slug.asm"
INCLUDE "data/pokemon/base_stats/snail.asm"
INCLUDE "data/pokemon/base_stats/boar.asm"
INCLUDE "data/pokemon/base_stats/mammoth.asm"
INCLUDE "data/pokemon/base_stats/coral.asm"
INCLUDE "data/pokemon/base_stats/remora.asm"
INCLUDE "data/pokemon/base_stats/octopus.asm"
INCLUDE "data/pokemon/base_stats/santa.asm"
INCLUDE "data/pokemon/base_stats/manta.asm"
INCLUDE "data/pokemon/base_stats/condor.asm"
INCLUDE "data/pokemon/base_stats/rottweiler.asm"
INCLUDE "data/pokemon/base_stats/doberman.asm"
INCLUDE "data/pokemon/base_stats/sea_dragon.asm"
INCLUDE "data/pokemon/base_stats/elebaby.asm"
INCLUDE "data/pokemon/base_stats/elephant.asm"
INCLUDE "data/pokemon/base_stats/lopolykiwi.asm"
INCLUDE "data/pokemon/base_stats/elk.asm"
INCLUDE "data/pokemon/base_stats/artist.asm"
INCLUDE "data/pokemon/base_stats/john_cena.asm"
INCLUDE "data/pokemon/base_stats/dreidel.asm"
INCLUDE "data/pokemon/base_stats/bowlcut.asm"
INCLUDE "data/pokemon/base_stats/plug.asm"
INCLUDE "data/pokemon/base_stats/booby.asm"
INCLUDE "data/pokemon/base_stats/cow.asm"
INCLUDE "data/pokemon/base_stats/nurse.asm"
INCLUDE "data/pokemon/base_stats/barghest.asm"
INCLUDE "data/pokemon/base_stats/cerberus.asm"
INCLUDE "data/pokemon/base_stats/fenrir.asm"
INCLUDE "data/pokemon/base_stats/raptor.asm"
INCLUDE "data/pokemon/base_stats/ironmaiden.asm"
INCLUDE "data/pokemon/base_stats/trex.asm"
INCLUDE "data/pokemon/base_stats/ryujin.asm"
INCLUDE "data/pokemon/base_stats/phoenix.asm"
INCLUDE "data/pokemon/base_stats/jerzydevil.asm"
	assert_table_length NUM_POKEMON