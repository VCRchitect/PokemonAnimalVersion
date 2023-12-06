; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const CHIVES  ; 01
	const SHALLOTS    ; 02
	const ONION   ; 03
	const SALAMANDER ; 04
	const CHAMELEON ; 05
	const RED_DRAGON  ; 06
	const SEA_TURTLE   ; 07
	const TORTOISE  ; 08
	const BAD_TURTLE  ; 09
	const CATERPILLA   ; 0a
	const CHRYSALIS    ; 0b
	const BUTTERFLY ; 0c
	const LARVA     ; 0d
	const PUPA     ; 0e
	const BEE   ; 0f
	const PIGEON     ; 10
	const OSPREY  ; 11
	const EAGLE    ; 12
	const RAT    ; 13
	const MOLERAT   ; 14
	const SPARROW    ; 15
	const VULTURE     ; 16
	const SNAKE      ; 17
	const COBRA      ; 18
	const CLICKER    ; 19
	const JERBOA     ; 1a
	const SHREW  ; 1b
	const ECHIDNA  ; 1c
	const GIRLHYRAX  ; 1d
	const JANEKALOPE   ; 1e
	const KAIJUQUEEN  ; 1f
	const BOYHYRAX  ; 20
	const JACKALOPE   ; 21
	const KAIJUKING   ; 22
	const FAERIE   ; 23
	const ANGEL   ; 24
	const FOX     ; 25
	const KITSUNE  ; 26
	const BLOONBUNCH ; 27
	const BLOONDOG ; 28
	const BAT      ; 29
	const SCARY_BAT     ; 2a
	const RADISH     ; 2b
	const MANDRAKE      ; 2c
	const RAFFLESIA  ; 2d
	const NYMPH      ; 2e
	const HERMITCRAB   ; 2f
	const GNAT    ; 30
	const MOTH   ; 31
	const MOLE    ; 32
	const THREEMOLES    ; 33
	const CAT     ; 34
	const COUGAR    ; 35
	const FLUFFYDUCK    ; 36
	const KAPPA    ; 37
	const MONKEY     ; 38
	const GORILLA   ; 39
	const KAI_KEN  ; 3a
	const SHISA   ; 3b
	const TADPOLE    ; 3c
	const LEGTADPOLE  ; 3d
	const TOAD  ; 3e
	const BAG_LADY       ; 3f
	const HAGABOND    ; 40
	const HOMELASS   ; 41
	const SCRAWNY     ; 42
	const HUNK    ; 43
	const BEEFCAKE    ; 44
	const BEANSPROUT ; 45
	const DRYSPROUT ; 46
	const MUNGSPROUT ; 47
	const JELLYFISH  ; 48
	const MANOWAR ; 49
	const ROCKY    ; 4a
	const HARD_ROCK   ; 4b
	const RUBBLE      ; 4c
	const PONY     ; 4d
	const HORSE   ; 4e
	const BEAVER   ; 4f
	const SAZAE_ONI    ; 50
	const MAGNET  ; 51
	const ELECTROMAG   ; 52
	const DUCK ; 53
	const DODO      ; 54
	const TWO_DODOS     ; 55
	const SEAL       ; 56
	const DUGONG    ; 57
	const GRIME     ; 58
	const MUD        ; 59
	const CLAM   ; 5a
	const OYSTER   ; 5b
	const DRIFTER     ; 5c
	const SPOOKY    ; 5d
	const PHANTOM     ; 5e
	const WYRM       ; 5f
	const TAPIR    ; 60
	const BAKU      ; 61
	const CRAB     ; 62
	const COCO_CRAB    ; 63
	const EXPLOSIVE    ; 64
	const BOMB  ; 65
	const DOZEN_EGGS  ; 66
	const COCONUTS  ; 67
	const CAVE_MAN     ; 68
	const CAVE_OGRE    ; 69
	const BRUCE_LEE  ; 6a
	const JACKIECHAN ; 6b
	const PERVERT  ; 6c
	const VIRUS    ; 6d
	const BACTOPHAGE    ; 6e
	const RHINO    ; 6f
	const ROCK_KAIJU     ; 70
	const BIG_EGG    ; 71
	const MEDUSA    ; 72
	const KANGAROO ; 73
	const SEAHORSE     ; 74
	const HYDRA     ; 75
	const GOLDFISH    ; 76
	const NARWHAL    ; 77
	const STARFISH     ; 78
	const SEASTAR    ; 79
	const CRACKHEAD   ; 7a
	const MANTIS    ; 7b
	const DRAG_QUEEN       ; 7c
	const RAIJIN ; 7d
	const KARURA     ; 7e
	const STAGBEETLE     ; 7f
	const BULL     ; 80
	const CARP   ; 81
	const INKANYAMBA   ; 82
	const PLESIOSAUR     ; 83
	const SLIME      ; 84
	const WOLF      ; 85
	const WET_DOG   ; 86
	const GREYHOUND    ; 87
	const HOT_DOG    ; 88
	const LOPOLYFACE    ; 89
	const NAUTILUS    ; 8a
	const CUTTLEFISH    ; 8b
	const SHOE_CRAB     ; 8c
	const SEASCORPIO   ; 8d
	const PTERANODON ; 8e
	const PANDA    ; 8f
	const YETI   ; 90
	const THUNDABIRD     ; 91
	const FIREBIRD    ; 92
	const SERPENT    ; 93
	const LEVIATHAN  ; 94
	const MASCOT  ; 95
	const WENDIGO     ; 96
	const BRAIN        ; 97
JOHTO_POKEMON EQU const_value
	const SQUIRREL  ; 98
	const KOALA    ; 99
	const SLOTH   ; 9a
	const SKUNK  ; 9b
	const TAZDEVIL    ; 9c
	const BADGER ; 9d
	const CAIMAN   ; 9e
	const MONITOR   ; 9f
	const CROCODILE ; a0
	const RACCOON    ; a1
	const FERRET     ; a2
	const OWL   ; a3
	const HORNEDOWL    ; a4
	const LADYBUG     ; a5
	const FIREFLY     ; a6
	const SPIDER   ; a7
	const WASP    ; a8
	const BIG_BAT     ; a9
	const FOOBA_FISH   ; aa
	const ANGLERFISH    ; ab
	const GERBIL      ; ac
	const CHERUB     ; ad
	const BALLOON  ; ae
	const HOBO_CLOWN     ; af
	const BADCLOWN    ; b0
	const KAKAPO       ; b1
	const QUETZAL       ; b2
	const LAMB     ; b3
	const SHEEP    ; b4
	const RAM   ; b5
	const HULA_GIRL  ; b6
	const WATER_RAT     ; b7
	const RABBIT  ; b8
	const FAKE_BUSH  ; b9
	const FROG   ; ba
	const COTTON     ; bb
	const DAISY   ; bc
	const DANDELION   ; bd
	const CHIMPANZEE      ; be
	const SEED    ; bf
	const SUNFLOWER   ; c0
	const DRAGONFLY      ; c1
	const SHAGS2DOPE     ; c2
	const VIOLENT_J   ; c3
	const TERRIER     ; c4
	const XOLO_DOG    ; c5
	const CROW    ; c6
	const WARLOCK   ; c7
	const BANSHEE ; c8
	const LETTAH      ; c9
	const ROLYPOLY  ; ca
	const GIRAFFE  ; cb
	const PINECONE     ; cc
	const FORTRESS ; cd
	const TSUCHINOKO  ; ce
	const MOTHMAN     ; cf
	const DEATHWORM    ; d0
	const FRENCHIE   ; d1
	const BULLDOG   ; d2
	const BLOWFISH   ; d3
	const MANTIDFLY     ; d4
	const SCALEBUG    ; d5
	const BEETLE  ; d6
	const WEASEL    ; d7
	const TEDDYBEAR  ; d8
	const BEAR   ; d9
	const SLUG     ; da
	const SNAIL   ; db
	const BOAR     ; dc
	const MAMMOTH  ; dd
	const CORAL    ; de
	const REMORA   ; df
	const OCTOPUS  ; e0
	const SANTA   ; e1
	const MANTA    ; e2
	const CONDOR   ; e3
	const ROTTWEILER   ; e4
	const DOBERMAN   ; e5
	const SEA_DRAGON    ; e6
	const ELEBABY     ; e7
	const ELEPHANT    ; e8
	const LOPOLYKIWI   ; e9
	const ELK   ; ea
	const ARTIST   ; eb
	const JOHN_CENA    ; ec
	const DREIDEL  ; ed
	const BOWLCUT   ; ee
	const PLUG     ; ef
	const BOOBY      ; f0
	const COW    ; f1
	const NURSE    ; f2
	const BARGHEST     ; f3
	const CERBERUS      ; f4
	const FENRIR    ; f5
	const RAPTOR   ; f6
	const IRONMAIDEN    ; f7
	const TREX  ; f8
	const RYUJIN      ; f9
	const PHOENIX      ; fa
	const JERZYDEVIL     ; fb
NUM_POKEMON EQU const_value - 1
	const_skip       ; fc
	const EGG        ; fd

; Lettah forms
; indexes for:
; - LettahWords (see data/pokemon/lettah_words.asm)
; - LettahPicPointers (see data/pokemon/lettah_pic_pointers.asm)
; - LettahAnimationPointers (see gfx/pokemon/lettah_anim_pointers.asm)
; - LettahAnimationIdlePointers (see gfx/pokemon/lettah_idle_pointers.asm)
; - LettahBitmasksPointers (see gfx/pokemon/lettah_bitmask_pointers.asm)
; - LettahFramesPointers (see gfx/pokemon/lettah_frame_pointers.asm)
	const_def 1
	const LETTAH_A ;  1
	const LETTAH_B ;  2
	const LETTAH_C ;  3
	const LETTAH_D ;  4
	const LETTAH_E ;  5
	const LETTAH_F ;  6
	const LETTAH_G ;  7
	const LETTAH_H ;  8
	const LETTAH_I ;  9
	const LETTAH_J ; 10
	const LETTAH_K ; 11
	const LETTAH_L ; 12
	const LETTAH_M ; 13
	const LETTAH_N ; 14
	const LETTAH_O ; 15
	const LETTAH_P ; 16
	const LETTAH_Q ; 17
	const LETTAH_R ; 18
	const LETTAH_S ; 19
	const LETTAH_T ; 20
	const LETTAH_U ; 21
	const LETTAH_V ; 22
	const LETTAH_W ; 23
	const LETTAH_X ; 24
	const LETTAH_Y ; 25
	const LETTAH_Z ; 26
NUM_LETTAH EQU const_value - 1 ; 26
