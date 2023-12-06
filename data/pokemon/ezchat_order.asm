; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rock_Kaiju is missing (it should be before Rhino).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db SNAKE, COBRA, NARWHAL, WASP, MONITOR, LETTAH, -1
.i:        db WOLF, ROCK, SPIDER, MAMMOTH, WYRM, -1
.u:        db SHISA, FAKE_BUSH, DRYSPROUT, MUNGSPROUT, SHAGS2DOPE, BOAR, -1
.e:        db CONDOR, CHIMPANZEE, TERRIER, JACKIECHAN, PLUG, RAIJIN, CERBERUS, -1
.o:        db CROCODILE, FERRET, OCTOPUS, GORILLA, RACCOON, ELK, SPARROW, VULTURE, CUTTLEFISH, NAUTILUS, -1
.ka_ga:    db KAI_KEN, BEEFCAKE, MASCOT, STAGBEETLE, PANDA, SHOE_CRAB, SEASCORPIO, DREIDEL, TORTOISE, BAD_TURTLE, DUCK, CAVE_MAN, CAVE_OGRE, KANGAROO, -1
.ki_gi:    db SUNFLOWER, CATERPILLA, INKANYAMBA, HORSE, KITSUNE, GIRAFFE, HULA_GIRL, SEA_DRAGON, COCO_CRAB, -1
.ku_gu:    db MANDRAKE, PINECONE, MOTHMAN, CRAB, BULLDOG, BIG_BAT, -1
.ke_ge:    db BAG_LADY, PHANTOM, BULL, -1
.ko_go:    db CARP, MAGNET, DRIFTER, SPOOKY, HUNK, PUPA, FLUFFYDUCK, ELEBABY, RAT, KAPPA, SCARY_BAT, RUBBLE, HARD_ROCK, GNAT, -1
.sa_za:    db RHINO, IRONMAIDEN, CORAL, BRUCE_LEE, THUNDABIRD, GREYHOUND, SHREW, ECHIDNA, -1 ; ROCK_KAIJU should lead this list
.shi_ji:   db HYDRA, CLAM, WET_DOG, DUGONG, -1
.su_zu:    db FENRIR, SEASTAR, MANTIS, BAT, BEE, BAKU, TAPIR, -1
.se_ze:    db SEA_TURTLE, JERZYDEVIL, -1
.so_zo:    db ROLYPOLY, -1
.ta_da:    db THREEMOLES, SEAHORSE, DOZEN_EGGS, -1
.chi_dhi:  db SQUIRREL, FOOBA_FISH, -1
.tsu_du:   db SCALEBUG, -1
.te_de:    db MOLE, REMORA, SANTA, ROTTWEILER, RAM, -1
.to_do:    db DODO, TWO_DODOS, ARTIST, VIRUS, MANOWAR, BADCLOWN, HOBO_CLOWN, GOLDFISH, CHRYSALIS, ELEPHANT, -1
.na:       db RADISH, COCONUTS, -1
.ni:       db KAIJUKING, KAIJUQUEEN, BOYHYRAX, GIRLHYRAX, JANEKALOPE, JACKALOPE, CAT, WEASEL, LEGTADPOLE, FROG, TOAD, TADPOLE, -1
.nu:       db VIOLENT_J, -1
.ne:       db KAKAPO, QUETZAL, -1
.no:       db TSUCHINOKO, -1
.ha_ba_pa: db SEAL, DEATHWORM, BADGER, LEVIATHAN, BUTTERFLY, MANTIDFLY, COTTON, NURSE, NYMPH, HERMITCRAB, BLOWFISH, CRACKHEAD, JOHN_CENA, OYSTER, TREX, -1
.hi_bi_pi: db CHERUB, LARVA, CLICKER, ANGEL, EAGLE, OSPREY, GERBIL, FAERIE, SALAMANDER, STARFISH, SKUNK, SEED, TEDDYBEAR, EXPLOSIVE, -1
.fu_bu_pu: db FIREBIRD, HOT_DOG, HOMELASS, KARURA, FORTRESS, BLOONDOG, SHALLOTS, CHIVES, ONION, PTERANODON, BOOBY, BALLOON, XOLO_DOG, YETI, BLOONBUNCH, FRENCHIE, -1
.he_be_pe: db KOALA, GRIME, MUD, BEETLE, DOBERMAN, COUGAR, PERVERT, -1
.ho_bo_po: db PHOENIX, OWL, PIGEON, PONY, DAISY, LOPOLYFACE, LOPOLYKIWI, -1
.ma:       db SNAIL, SLUG, TAZDEVIL, BEANSPROUT, BACTOPHAGE, WATER_RAT, RABBIT, BOMB, MONKEY, MANTA, -1
.mi:       db SERPENT, BRAIN, WENDIGO, COW, -1
.mu:       db BANSHEE, BOWLCUT, -1
.me:       db SLOTH, SLIME, JELLYFISH, LAMB, -1
.mo:       db SHEEP, MOTH, MEDUSA, -1
.ya:       db WARLOCK, SAZAE_ONI, BEAVER, CROW, DRAGONFLY, -1
.yu:       db HAGABOND, -1
.yo:       db RAPTOR, HORNEDOWL, -1
.ra:       db BARGHEST, JERBOA, BIG_EGG, MOLERAT, PLESIOSAUR, RAFFLESIA, ANGLERFISH, -1
.ri:       db CHAMELEON, RED_DRAGON, BEAR, -1
.ru:       db DRAG_QUEEN, RYUJIN, -1
.re:       db ELECTROMAG, FIREFLY, LADYBUG, -1
.ro:       db FOX, -1
.wa:       db DANDELION, CAIMAN, SCRAWNY ;, -1
.end:      db -1
