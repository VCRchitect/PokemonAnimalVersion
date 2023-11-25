decoration: MACRO
	; type, name, action, event flag, tile/sprite
	db \1, \2, \3
	dw \4
	db \5
ENDM

DecorationAttributes:
; entries correspond to deco constants
	table_width DECOATTR_STRUCT_LENGTH, DecorationAttributes
	decoration DECO_PLANT,   0,               0,                 EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_BED,      EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_BED,     FEATHERY_BED,    SET_UP_BED,        EVENT_DECO_BED_1,                   $1b
	decoration DECO_BED,     PINK_BED,        SET_UP_BED,        EVENT_DECO_BED_2,                   $1c
	decoration DECO_BED,     POLKADOT_BED,    SET_UP_BED,        EVENT_DECO_BED_3,                   $1d
	decoration DECO_BED,     CLICKER_BED,     SET_UP_BED,        EVENT_DECO_BED_4,                   $1e
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_CARPET,   EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_CARPET,  RED_CARPET,      SET_UP_CARPET,     EVENT_DECO_CARPET_1,                $08
	decoration DECO_CARPET,  BLUE_CARPET,     SET_UP_CARPET,     EVENT_DECO_CARPET_2,                $0b
	decoration DECO_CARPET,  YELLOW_CARPET,   SET_UP_CARPET,     EVENT_DECO_CARPET_3,                $0e
	decoration DECO_CARPET,  GREEN_CARPET,    SET_UP_CARPET,     EVENT_DECO_CARPET_4,                $11
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_PLANT,    EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_PLANT,   MAGNAPLANT,      SET_UP_PLANT,      EVENT_DECO_PLANT_1,                 $20
	decoration DECO_PLANT,   TROPICPLANT,     SET_UP_PLANT,      EVENT_DECO_PLANT_2,                 $21
	decoration DECO_PLANT,   JUMBOPLANT,      SET_UP_PLANT,      EVENT_DECO_PLANT_3,                 $22
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_POSTER,   EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_PLANT,   TOWN_MAP_POSTER, SET_UP_POSTER,     EVENT_DECO_POSTER_1,                $1f
	decoration DECO_POSTER,  CLICKER,         SET_UP_POSTER,     EVENT_DECO_POSTER_2,                $23
	decoration DECO_POSTER,  FAERIE,        SET_UP_POSTER,     EVENT_DECO_POSTER_3,                $24
	decoration DECO_POSTER,  BLOONBUNCH,      SET_UP_POSTER,     EVENT_DECO_POSTER_4,                $25
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_CONSOLE,  EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_PLANT,   FAMICOM,         SET_UP_CONSOLE,    EVENT_DECO_FAMICOM,                 SPRITE_FAMICOM
	decoration DECO_PLANT,   SUPER_NES,       SET_UP_CONSOLE,    EVENT_DECO_SNES,                    SPRITE_SNES
	decoration DECO_PLANT,   NINTENDO_64,     SET_UP_CONSOLE,    EVENT_DECO_N64,                     SPRITE_N64
	decoration DECO_PLANT,   VIRTUAL_BOY,     SET_UP_CONSOLE,    EVENT_DECO_VIRTUAL_BOY,             SPRITE_VIRTUAL_BOY
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_BIG_DOLL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_BIGDOLL, PANDA,         SET_UP_BIG_DOLL,   EVENT_DECO_BIG_PANDA_DOLL,        SPRITE_BIG_PANDA
	decoration DECO_BIGDOLL, WYRM,            SET_UP_BIG_DOLL,   EVENT_DECO_BIG_WYRM_DOLL,           SPRITE_BIG_WYRM
	decoration DECO_BIGDOLL, PLESIOSAUR,          SET_UP_BIG_DOLL,   EVENT_DECO_BIG_PLESIOSAUR_DOLL,         SPRITE_BIG_PLESIOSAUR
	decoration DECO_PLANT,   PUT_IT_AWAY,     PUT_AWAY_DOLL,     EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, 0
	decoration DECO_DOLL,    CLICKER,         SET_UP_DOLL,       EVENT_DECO_CLICKER_DOLL,            SPRITE_CLICKER
	decoration DECO_PLANT,   SURF_PIKA_DOLL,  SET_UP_DOLL,       EVENT_DECO_SURFING_CLICKER_DOLL,    SPRITE_SURFING_CLICKER
	decoration DECO_DOLL,    FAERIE,        SET_UP_DOLL,       EVENT_DECO_CLEFAIRY_DOLL,           SPRITE_CLEFAIRY
	decoration DECO_DOLL,    BLOONBUNCH,      SET_UP_DOLL,       EVENT_DECO_BLOONBUNCH_DOLL,         SPRITE_BLOONBUNCH
	decoration DECO_DOLL,    CHIVES,       SET_UP_DOLL,       EVENT_DECO_BULBASAUR_DOLL,          SPRITE_BULBASAUR
	decoration DECO_DOLL,    SALAMANDER,      SET_UP_DOLL,       EVENT_DECO_SALAMANDER_DOLL,         SPRITE_SALAMANDER
	decoration DECO_DOLL,    SEA_TURTLE,        SET_UP_DOLL,       EVENT_DECO_SEA_TURTLE_DOLL,           SPRITE_SEA_TURTLE
	decoration DECO_DOLL,    TADPOLE,         SET_UP_DOLL,       EVENT_DECO_TADPOLE_DOLL,            SPRITE_TADPOLE
	decoration DECO_DOLL,    MOLE,         SET_UP_DOLL,       EVENT_DECO_MOLE_DOLL,            SPRITE_MOLE
	decoration DECO_DOLL,    STARFISH,          SET_UP_DOLL,       EVENT_DECO_SEASTAR_DOLL,            SPRITE_SEASTAR
	decoration DECO_DOLL,    CARP,        SET_UP_DOLL,       EVENT_DECO_CARP_DOLL,           SPRITE_CARP
	decoration DECO_DOLL,    RADISH,          SET_UP_DOLL,       EVENT_DECO_RADISH_DOLL,             SPRITE_RADISH
	decoration DECO_DOLL,    PHANTOM,          SET_UP_DOLL,       EVENT_DECO_PHANTOM_DOLL,             SPRITE_PHANTOM
	decoration DECO_DOLL,    CLAM,        SET_UP_DOLL,       EVENT_DECO_CLAM_DOLL,           SPRITE_CLAM
	decoration DECO_DOLL,    GRIME,          SET_UP_DOLL,       EVENT_DECO_GRIME_DOLL,             SPRITE_GRIME
	decoration DECO_DOLL,    EXPLOSIVE,         SET_UP_DOLL,       EVENT_DECO_EXPLOSIVE_DOLL,            SPRITE_EXPLOSIVE
	decoration DECO_DOLL,    LARVA,          SET_UP_DOLL,       EVENT_DECO_LARVA_DOLL,             SPRITE_LARVA
	decoration DECO_DOLL,    LETTAH,           SET_UP_DOLL,       EVENT_DECO_LETTAH_DOLL,              SPRITE_LETTAH
	decoration DECO_DOLL,    ROCK,         SET_UP_DOLL,       EVENT_DECO_ROCK_DOLL,            SPRITE_ROCK
	decoration DECO_DOLL,    SCRAWNY,          SET_UP_DOLL,       EVENT_DECO_SCRAWNY_DOLL,             SPRITE_SCRAWNY
	decoration DECO_DOLL,    JELLYFISH,       SET_UP_DOLL,       EVENT_DECO_JELLYFISH_DOLL,          SPRITE_JELLYFISH
	decoration DECO_PLANT,   GOLD_TROPHY,     SET_UP_DOLL,       EVENT_DECO_GOLD_TROPHY,             SPRITE_GOLD_TROPHY
	decoration DECO_PLANT,   SILVER_TROPHY,   SET_UP_DOLL,       EVENT_DECO_SILVER_TROPHY,           SPRITE_SILVER_TROPHY
	assert_table_length NUM_DECOS + NUM_DECO_CATEGORIES + 1
