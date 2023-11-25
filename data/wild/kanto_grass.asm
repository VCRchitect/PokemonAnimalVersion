; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons MOLES_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 3, MOLE
	db 6, MOLE
	db 12, MOLE
	db 24, MOLE
	db 24, THREEMOLES
	db 24, THREEMOLES
	db 24, THREEMOLES
	; day
	db 2, MOLE
	db 4, MOLE
	db 8, MOLE
	db 16, MOLE
	db 16, THREEMOLES
	db 16, THREEMOLES
	db 16, THREEMOLES
	; nite
	db 4, MOLE
	db 8, MOLE
	db 16, MOLE
	db 32, MOLE
	db 32, THREEMOLES
	db 32, THREEMOLES
	db 32, THREEMOLES
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 6, BAT
	db 8, ROCK
	db 8, SHREW
	db 12, NYMPH
	db 10, ROCK
	db 8, FAERIE
	db 8, FAERIE
	; day
	db 6, BAT
	db 8, ROCK
	db 8, SHREW
	db 12, NYMPH
	db 10, ROCK
	db 8, FAERIE
	db 8, FAERIE
	; nite
	db 6, BAT
	db 8, ROCK
	db 8, FAERIE
	db 12, NYMPH
	db 10, ROCK
	db 12, FAERIE
	db 12, FAERIE
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 10, CAVE_MAN
	db 11, ROCK
	db 12, SCRAWNY
	db 12, BAT
	db 15, HUNK
	db 12, CAVE_OGRE
	db 12, CAVE_OGRE
	; day
	db 10, CAVE_MAN
	db 11, ROCK
	db 12, SCRAWNY
	db 12, BAT
	db 15, HUNK
	db 12, CAVE_OGRE
	db 12, CAVE_OGRE
	; nite
	db 12, BAT
	db 11, ROCK
	db 12, ROCK
	db 17, SPOOKY
	db 15, BAT
	db 15, BAT
	db 15, BAT
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 12, CAVE_MAN
	db 14, ROCK
	db 16, WYRM
	db 12, BAT
	db 15, CAVE_OGRE
	db 15, KANGAROO
	db 15, KANGAROO
	; day
	db 12, CAVE_MAN
	db 14, ROCK
	db 16, WYRM
	db 12, BAT
	db 15, CAVE_OGRE
	db 15, KANGAROO
	db 15, KANGAROO
	; nite
	db 12, BAT
	db 14, ROCK
	db 16, WYRM
	db 15, BAT
	db 15, SPOOKY
	db 15, SCARY_BAT
	db 15, SCARY_BAT
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 34, HARD_ROCK
	db 32, RHINO
	db 33, WYRM
	db 34, SCARY_BAT
	db 35, ECHIDNA
	db 35, ROCK_KAIJU
	db 35, ROCK_KAIJU
	; day
	db 34, HARD_ROCK
	db 32, RHINO
	db 33, WYRM
	db 34, SCARY_BAT
	db 35, ECHIDNA
	db 35, ROCK_KAIJU
	db 35, ROCK_KAIJU
	; nite
	db 34, SCARY_BAT
	db 34, HARD_ROCK
	db 32, WYRM
	db 36, HARD_ROCK
	db 38, HARD_ROCK
	db 40, HARD_ROCK
	db 40, HARD_ROCK
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 22, BAT
	db 22, MOLERAT
	db 24, SCARY_BAT
	db 21, BEAVER
	db 20, RAT
	db 23, BEAVER
	db 23, BEAVER
	; day
	db 22, BAT
	db 22, MOLERAT
	db 24, SCARY_BAT
	db 21, BEAVER
	db 20, RAT
	db 23, BEAVER
	db 23, BEAVER
	; nite
	db 22, BAT
	db 22, MOLERAT
	db 24, SCARY_BAT
	db 21, BEAVER
	db 20, RAT
	db 23, BEAVER
	db 23, BEAVER
	end_grass_wildmons

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PIGEON
	db 2, RAT
	db 3, RACCOON
	db 3, PIGEON
	db 6, FERRET
	db 4, PIGEON
	db 4, PIGEON
	; day
	db 2, PIGEON
	db 2, RAT
	db 3, RACCOON
	db 3, PIGEON
	db 6, FERRET
	db 4, PIGEON
	db 4, PIGEON
	; nite
	db 2, OWL
	db 2, RAT
	db 3, RAT
	db 3, OWL
	db 6, MOLERAT
	db 4, OWL
	db 4, OWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, CATERPILLA
	db 3, LADYBUG
	db 5, PIGEON
	db 7, BUTTERFLY
	db 7, FIREFLY
	db 4, CLICKER
	db 4, CLICKER
	; day
	db 3, CATERPILLA
	db 3, PIGEON
	db 5, PIGEON
	db 7, BUTTERFLY
	db 7, OSPREY
	db 4, CLICKER
	db 4, CLICKER
	; nite
	db 3, OWL
	db 3, SPIDER
	db 5, OWL
	db 7, HORNEDOWL
	db 7, WASP
	db 4, HORNEDOWL
	db 4, HORNEDOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 5, SPARROW
	db 5, RAT
	db 8, SNAKE
	db 10, MOLERAT
	db 10, COBRA
	db 10, SHREW
	db 10, SHREW
	; day
	db 5, SPARROW
	db 5, RAT
	db 8, SNAKE
	db 10, MOLERAT
	db 10, COBRA
	db 10, SHREW
	db 10, SHREW
	; nite
	db 5, RAT
	db 10, RAT
	db 10, MOLERAT
	db 6, BAT
	db 5, RAT
	db 6, FAERIE
	db 6, FAERIE
	end_grass_wildmons

	def_grass_wildmons ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 5, SPARROW
	db 5, RAT
	db 8, SNAKE
	db 10, MOLERAT
	db 10, COBRA
	db 10, SHREW
	db 10, SHREW
	; day
	db 5, SPARROW
	db 5, RAT
	db 8, SNAKE
	db 10, MOLERAT
	db 10, COBRA
	db 10, SHREW
	db 10, SHREW
	; nite
	db 5, RAT
	db 10, RAT
	db 10, MOLERAT
	db 6, BAT
	db 5, RAT
	db 6, FAERIE
	db 6, FAERIE
	end_grass_wildmons

	def_grass_wildmons ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIGEON
	db 13, FRENCHIE
	db 15, OSPREY
	db 12, BAG_LADY
	db 14, BLOONBUNCH
	db 14, BAG_LADY
	db 14, BAG_LADY
	; day
	db 13, PIGEON
	db 13, FRENCHIE
	db 15, OSPREY
	db 12, BAG_LADY
	db 14, BLOONBUNCH
	db 14, BAG_LADY
	db 14, BAG_LADY
	; nite
	db 13, OWL
	db 13, CAT
	db 15, HORNEDOWL
	db 12, BAG_LADY
	db 14, BLOONBUNCH
	db 14, BAG_LADY
	db 14, BAG_LADY
	end_grass_wildmons

	def_grass_wildmons ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, RAT
	db 13, FRENCHIE
	db 14, MAGNET
	db 15, MOLERAT
	db 12, BLOONBUNCH
	db 15, BULLDOG
	db 15, BULLDOG
	; day
	db 13, RAT
	db 13, FRENCHIE
	db 14, MAGNET
	db 15, MOLERAT
	db 12, BLOONBUNCH
	db 15, BULLDOG
	db 15, BULLDOG
	; nite
	db 13, CAT
	db 13, TAPIR
	db 14, MAGNET
	db 15, FLUFFYDUCK
	db 12, BLOONBUNCH
	db 15, MOLERAT
	db 15, MOLERAT
	end_grass_wildmons

	def_grass_wildmons ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, RAT
	db 17, SPARROW
	db 18, FRENCHIE
	db 18, MOLERAT
	db 18, BLOONBUNCH
	db 16, BAG_LADY
	db 16, BAG_LADY
	; day
	db 17, RAT
	db 17, SPARROW
	db 18, FRENCHIE
	db 18, MOLERAT
	db 18, BLOONBUNCH
	db 16, BAG_LADY
	db 16, BAG_LADY
	; nite
	db 17, CAT
	db 17, CROW
	db 18, ROTTWEILER
	db 18, COUGAR
	db 18, BLOONBUNCH
	db 16, BAG_LADY
	db 16, BAG_LADY
	end_grass_wildmons

	def_grass_wildmons ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, FRENCHIE
	db 19, OSPREY
	db 16, BAG_LADY
	db 17, KAI_KEN
	db 16, BLOONBUNCH
	db 18, HAGABOND
	db 18, HAGABOND
	; day
	db 17, FRENCHIE
	db 19, OSPREY
	db 16, BAG_LADY
	db 17, KAI_KEN
	db 16, BLOONBUNCH
	db 18, HAGABOND
	db 18, HAGABOND
	; nite
	db 17, CAT
	db 20, HORNEDOWL
	db 16, BAG_LADY
	db 17, SPOOKY
	db 16, BLOONBUNCH
	db 18, HAGABOND
	db 18, HAGABOND
	end_grass_wildmons

	def_grass_wildmons ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, RAT
	db 15, SPARROW
	db 15, MOLERAT
	db 15, VULTURE
	db 15, VULTURE
	db 18, CAVE_OGRE
	db 18, CAVE_OGRE
	; day
	db 15, RAT
	db 15, SPARROW
	db 15, MOLERAT
	db 15, VULTURE
	db 15, VULTURE
	db 18, CAVE_OGRE
	db 18, CAVE_OGRE
	; nite
	db 15, RAT
	db 15, GNAT
	db 15, MOLERAT
	db 15, MOTH
	db 15, BAT
	db 18, MOLERAT
	db 18, MOLERAT
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, SPARROW
	db 17, EXPLOSIVE
	db 15, MOLERAT
	db 15, VULTURE
	db 15, CAVE_OGRE
	db 16, RAIJIN
	db 16, RAIJIN
	; day
	db 15, SPARROW
	db 17, EXPLOSIVE
	db 15, MOLERAT
	db 15, VULTURE
	db 15, CAVE_OGRE
	db 18, RAIJIN
	db 18, RAIJIN
	; nite
	db 15, GNAT
	db 17, EXPLOSIVE
	db 15, MOLERAT
	db 15, MOTH
	db 15, BAT
	db 16, RAIJIN
	db 16, RAIJIN
	end_grass_wildmons

	def_grass_wildmons ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, COTTON
	db 13, MOLERAT
	db 15, MAGNET
	db 16, OSPREY
	db 16, RAT
	db 16, COTTON
	db 16, COTTON
	; day
	db 14, COTTON
	db 13, MOLERAT
	db 15, MAGNET
	db 16, OSPREY
	db 16, RAT
	db 16, COTTON
	db 16, COTTON
	; nite
	db 14, TAPIR
	db 13, CAT
	db 15, MAGNET
	db 16, HORNEDOWL
	db 16, MOLERAT
	db 16, BAKU
	db 16, BAKU
	end_grass_wildmons

	def_grass_wildmons ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, JACKALOPE
	db 23, JANEKALOPE
	db 25, OSPREY
	db 25, COTTON
	db 27, COTTON
	db 27, COTTON
	db 25, BIG_EGG
	; day
	db 23, JACKALOPE
	db 23, JANEKALOPE
	db 25, OSPREY
	db 25, COTTON
	db 27, COTTON
	db 27, COTTON
	db 25, BIG_EGG
	; nite
	db 23, GNAT
	db 23, VIOLENT_J
	db 25, HORNEDOWL
	db 25, MOTH
	db 25, VIOLENT_J
	db 25, VIOLENT_J
	db 25, BIG_EGG
	end_grass_wildmons

	def_grass_wildmons ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, JACKALOPE
	db 26, JANEKALOPE
	db 28, OSPREY
	db 28, COTTON
	db 30, DAISY
	db 30, DAISY
	db 28, BIG_EGG
	; day
	db 26, JACKALOPE
	db 26, JANEKALOPE
	db 28, OSPREY
	db 28, COTTON
	db 30, DAISY
	db 30, DAISY
	db 28, BIG_EGG
	; nite
	db 26, GNAT
	db 26, VIOLENT_J
	db 28, HORNEDOWL
	db 28, MOTH
	db 28, VIOLENT_J
	db 28, VIOLENT_J
	db 28, BIG_EGG
	end_grass_wildmons

	def_grass_wildmons ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, JACKALOPE
	db 23, JANEKALOPE
	db 25, OSPREY
	db 25, COTTON
	db 27, COTTON
	db 27, COTTON
	db 25, BIG_EGG
	; day
	db 23, JACKALOPE
	db 23, JANEKALOPE
	db 25, OSPREY
	db 25, COTTON
	db 27, COTTON
	db 27, COTTON
	db 25, BIG_EGG
	; nite
	db 23, GNAT
	db 23, VIOLENT_J
	db 25, HORNEDOWL
	db 25, MOTH
	db 25, VIOLENT_J
	db 25, VIOLENT_J
	db 25, BIG_EGG
	end_grass_wildmons

	def_grass_wildmons ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIME
	db 27, VULTURE
	db 28, GRIME
	db 29, VULTURE
	db 29, VULTURE
	db 30, MUD
	db 30, MUD
	; day
	db 26, GRIME
	db 27, VULTURE
	db 28, GRIME
	db 29, VULTURE
	db 29, SLUG
	db 30, MUD
	db 30, MUD
	; nite
	db 26, GRIME
	db 27, GRIME
	db 28, GRIME
	db 29, CROW
	db 29, CROW
	db 30, MUD
	db 30, MUD
	end_grass_wildmons

	def_grass_wildmons ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 30, VULTURE
	db 29, GRIME
	db 31, GRIME
	db 32, VULTURE
	db 33, GRIME
	db 33, MUD
	db 33, MUD
	; day
	db 30, VULTURE
	db 29, SLUG
	db 29, GRIME
	db 32, VULTURE
	db 32, SLUG
	db 33, MUD
	db 33, MUD
	; nite
	db 30, GRIME
	db 29, GRIME
	db 31, GRIME
	db 32, GRIME
	db 33, GRIME
	db 33, MUD
	db 33, MUD
	end_grass_wildmons

	def_grass_wildmons ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIME
	db 27, VULTURE
	db 28, GRIME
	db 29, VULTURE
	db 29, VULTURE
	db 30, MUD
	db 30, MUD
	; day
	db 26, GRIME
	db 27, VULTURE
	db 28, GRIME
	db 29, VULTURE
	db 29, SLUG
	db 30, MUD
	db 30, MUD
	; nite
	db 26, GRIME
	db 27, GRIME
	db 28, GRIME
	db 29, GRIME
	db 29, GRIME
	db 30, MUD
	db 30, MUD
	end_grass_wildmons

	def_grass_wildmons ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, MEDUSA
	db 25, RAT
	db 35, MEDUSA
	db 20, MOLERAT
	db 30, CRACKHEAD
	db 28, CRACKHEAD
	db 28, CRACKHEAD
	; day
	db 30, MEDUSA
	db 25, RAT
	db 35, MEDUSA
	db 20, MOLERAT
	db 28, CRACKHEAD
	db 30, CRACKHEAD
	db 30, CRACKHEAD
	; nite
	db 30, MEDUSA
	db 25, RAT
	db 35, MEDUSA
	db 20, MOLERAT
	db 30, MEDUSA
	db 28, MEDUSA
	db 28, MEDUSA
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, RAT
	db 3, SPARROW
	db 5, SPARROW
	db 4, DODO
	db 6, PONY
	db 7, VULTURE
	db 7, VULTURE
	; day
	db 3, RAT
	db 3, SPARROW
	db 5, SPARROW
	db 4, DODO
	db 6, PONY
	db 7, VULTURE
	db 7, VULTURE
	; nite
	db 3, RAT
	db 3, TADPOLE
	db 5, RAT
	db 4, TADPOLE
	db 6, RAT
	db 7, RAT
	db 7, RAT
	end_grass_wildmons

	def_grass_wildmons ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 8, CATERPILLA
	db 10, CATERPILLA
	db 12, CHRYSALIS
	db 12, BAG_LADY
	db 10, BEANSPROUT
	db 14, BUTTERFLY
	db 14, BUTTERFLY
	; day
	db 8, CATERPILLA
	db 12, SEED
	db 10, CATERPILLA
	db 12, BAG_LADY
	db 10, BEANSPROUT
	db 14, BUTTERFLY
	db 14, BUTTERFLY
	; nite
	db 10, GNAT
	db 10, RADISH
	db 12, RADISH
	db 12, BAG_LADY
	db 10, BEANSPROUT
	db 14, MANDRAKE
	db 14, MANDRAKE
	end_grass_wildmons

	def_grass_wildmons ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, CATERPILLA
	db 10, PIGEON
	db 12, OSPREY
	db 12, CHRYSALIS
	db 10, BEANSPROUT
	db 14, BUTTERFLY
	db 14, BUTTERFLY
	; day
	db 10, CATERPILLA
	db 10, PIGEON
	db 12, OSPREY
	db 12, CHRYSALIS
	db 10, BEANSPROUT
	db 14, BUTTERFLY
	db 14, BUTTERFLY
	; nite
	db 10, RADISH
	db 10, OWL
	db 10, GNAT
	db 12, HORNEDOWL
	db 10, BEANSPROUT
	db 14, HORNEDOWL
	db 14, HORNEDOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODO
	db 28, ECHIDNA
	db 32, PONY
	db 30, MOLERAT
	db 30, DODO
	db 30, COBRA
	db 30, COBRA
	; day
	db 28, DODO
	db 28, ECHIDNA
	db 32, PONY
	db 30, MOLERAT
	db 30, DODO
	db 30, COBRA
	db 30, COBRA
	; nite
	db 28, HORNEDOWL
	db 28, MOLERAT
	db 32, HORNEDOWL
	db 30, MOLERAT
	db 30, VIOLENT_J
	db 30, VIOLENT_J
	db 30, VIOLENT_J
	end_grass_wildmons

	def_grass_wildmons ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODO
	db 28, COBRA
	db 30, MOLERAT
	db 30, DODO
	db 32, PONY
	db 30, TWO_DODOS
	db 30, TWO_DODOS
	; day
	db 28, DODO
	db 28, COBRA
	db 30, MOLERAT
	db 30, DODO
	db 32, PONY
	db 30, TWO_DODOS
	db 30, TWO_DODOS
	; nite
	db 28, VIOLENT_J
	db 28, HORNEDOWL
	db 30, MOLERAT
	db 30, VIOLENT_J
	db 32, HORNEDOWL
	db 32, HORNEDOWL
	db 32, HORNEDOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 39, MEDUSA
	db 40, PONY
	db 40, HORSE
	db 42, COBRA
	db 41, DODO
	db 43, TWO_DODOS
	db 43, TWO_DODOS
	; day
	db 39, MEDUSA
	db 40, PONY
	db 40, HORSE
	db 42, COBRA
	db 41, DODO
	db 43, TWO_DODOS
	db 43, TWO_DODOS
	; nite
	db 39, MEDUSA
	db 40, LEGTADPOLE
	db 40, SCARY_BAT
	db 40, LEGTADPOLE
	db 42, SCARY_BAT
	db 42, SCARY_BAT
	db 42, SCARY_BAT
	end_grass_wildmons

	db -1 ; end
