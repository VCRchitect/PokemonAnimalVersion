; Pokémon swarms in grass

SwarmGrassWildMons:

; Tsuchinoko swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, ROCK
	db 3, TSUCHINOKO
	db 2, BAT
	db 2, ROCK
	db 2, TSUCHINOKO
	db 4, TSUCHINOKO
	db 4, TSUCHINOKO
	; day
	db 3, ROCK
	db 3, TSUCHINOKO
	db 2, BAT
	db 2, ROCK
	db 2, TSUCHINOKO
	db 4, TSUCHINOKO
	db 4, TSUCHINOKO
	; nite
	db 3, ROCK
	db 3, TSUCHINOKO
	db 2, BAT
	db 2, ROCK
	db 2, TSUCHINOKO
	db 4, TSUCHINOKO
	db 4, TSUCHINOKO

; Dragonfly swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, BOYHYRAX
	db 12, GIRLHYRAX
	db 12, DRAGONFLY
	db 14, DRAGONFLY
	db 14, PIGEON
	db 10, SLIME
	db 10, SLIME
	; day
	db 12, BOYHYRAX
	db 12, GIRLHYRAX
	db 12, DRAGONFLY
	db 14, DRAGONFLY
	db 14, PIGEON
	db 10, SLIME
	db 10, SLIME
	; nite
	db 12, BOYHYRAX
	db 12, GIRLHYRAX
	db 12, DRAGONFLY
	db 14, DRAGONFLY
	db 14, OWL
	db 10, SLIME
	db 10, SLIME

	db -1 ; end
