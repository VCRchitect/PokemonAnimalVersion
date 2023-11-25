# Delete these rules if you don't care about matching.

%.lz: LZFLAGS = --compressor multipass

gfx/battle_anims/%.lz: LZFLAGS += --method 2 --align 4

gfx/battle/dude.2bpp.lz: LZFLAGS += --align 4

gfx/diploma/diploma.2bpp.lz: LZFLAGS += --method 8 --align 1

gfx/memory_game/memory_game.2bpp.lz: LZFLAGS += --method 2 --align 4

gfx/intro/%.lz: LZFLAGS += --align 4
gfx/intro/fenrir_close.2bpp.lz: LZFLAGS += --method 2 --align 4
gfx/intro/lettah_back.2bpp.lz: LZFLAGS += --method 2 --align 4

gfx/mobile/mobile_trade.%.lz: LZFLAGS += --align 4
gfx/mobile/mobile_trade_sprites.2bpp.lz: LZFLAGS += --align 4

gfx/new_game/shrink1.2bpp.lz: LZFLAGS += --align 4
gfx/new_game/shrink2.2bpp.lz: LZFLAGS += --align 4

gfx/pc/pc.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1

gfx/player/chris_back.2bpp.lz: LZFLAGS += --align 4

gfx/pokedex/pokedex.2bpp.lz: LZFLAGS += --method 8 --align 1
gfx/pokedex/pokedex_sgb.2bpp.lz: LZFLAGS += --method 8 --align 1
gfx/pokedex/question_mark.2bpp.lz: LZFLAGS += --align 4
gfx/pokedex/beaver.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1

gfx/pokegear/pokegear.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/pokegear/pokegear_sprites.2bpp.lz: LZFLAGS += --align 4
gfx/pokegear/town_map.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1

gfx/pokemon/coral/front.animated.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/dreidel/back.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/girlhyrax/front.animated.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/gorilla/front.animated.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/mantis/front.animated.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/lettah_g/front.animated.2bpp.lz: LZFLAGS += --method 4
gfx/pokemon/explosive/front.animated.2bpp.lz: LZFLAGS += --method 4

gfx/sgb/gbc_only.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1

gfx/slots/slots_1.2bpp.lz: LZFLAGS += --method 2 --align 4
gfx/slots/slots_2.2bpp.lz: LZFLAGS += --align 4
gfx/slots/slots_3.2bpp.lz: LZFLAGS += --align 4

gfx/splash/slime.2bpp.lz: LZFLAGS += --method 2 --align 4

gfx/tilesets/%.lz: LZFLAGS += --align 4
gfx/tilesets/pteranodon_word_room.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/battle_tower_outside.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/beta_word_room.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/phoenix_word_room.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/house.2bpp.lz: LZFLAGS += --method 2 --align 4
gfx/tilesets/johto.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/johto_modern.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/shoe_crab_word_room.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/kanto.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/mansion.2bpp.lz: LZFLAGS += --method 2 --align 4
gfx/tilesets/mart.2bpp.lz: LZFLAGS += --method 2 --align 4
gfx/tilesets/nautilus_word_room.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/players_room.2bpp.lz: LZFLAGS += --method 4 --align 4
gfx/tilesets/ruins_of_alph.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/tilesets/tower.2bpp.lz: LZFLAGS += --method 2 --align 4

gfx/title/crystal.2bpp.lz: LZFLAGS += --align 4
gfx/title/logo.2bpp.lz: LZFLAGS = --compressor null --method 1 --align 1
gfx/title/fenrir.2bpp.lz: LZFLAGS += --align 4

gfx/lettah_puzzle/%.lz: LZFLAGS += --align 4
gfx/lettah_puzzle/start_cancel.2bpp.lz: LZFLAGS += --method 8 --align 1
