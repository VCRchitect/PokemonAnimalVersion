time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Serpent_Old,          .Serpent_Good,          .Serpent_Super
	fishgroup 50 percent + 1, .Blowfish_Swarm_Old,   .Blowfish_Swarm_Good,   .Blowfish_Swarm_Super
	fishgroup 50 percent + 1, .Remora_Swarm_Old,   .Remora_Swarm_Good,   .Remora_Swarm_Super
	fishgroup 50 percent + 1, .Inkanyamba_Old,         .Inkanyamba_Good,         .Inkanyamba_Super
	fishgroup 50 percent + 1, .Serpent_2_Old,        .Serpent_2_Good,        .Serpent_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Blowfish_Old,         .Blowfish_Good,         .Blowfish_Super
	fishgroup 50 percent + 1, .Remora_Old,         .Remora_Good,         .Remora_Super
	fishgroup 50 percent + 1, .Blowfish_NoSwarm_Old, .Blowfish_NoSwarm_Good, .Blowfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     CRAB,     10
.Shore_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     CRAB,     20
	db  90 percent + 1, CRAB,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     CRAB,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, CRAB,     40
	db 100 percent,     COCO_CRAB,    40

.Ocean_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     JELLYFISH,  10
.Ocean_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     JELLYFISH,  20
	db  90 percent + 1, FOOBA_FISH,   20
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     FOOBA_FISH,   40
	db  70 percent,     time_group 3
	db  90 percent + 1, MANOWAR, 40
	db 100 percent,     ANGLERFISH,    40

.Lake_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     GOLDFISH,    10
.Lake_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     GOLDFISH,    20
	db  90 percent + 1, GOLDFISH,    20
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     GOLDFISH,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, CARP,   40
	db 100 percent,     NARWHAL,    40

.Pond_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     TADPOLE,    10
.Pond_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     TADPOLE,    20
	db  90 percent + 1, TADPOLE,    20
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     TADPOLE,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, CARP,   40
	db 100 percent,     TADPOLE,    40

.Serpent_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     CARP,   10
.Serpent_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     CARP,   20
	db  90 percent + 1, CARP,   20
	db 100 percent,     time_group 8
.Serpent_Super:
	db  40 percent,     CARP,   40
	db  70 percent,     time_group 9
	db  90 percent + 1, CARP,   40
	db 100 percent,     LEVIATHAN,  40

.Blowfish_Swarm_Old:
	db  70 percent + 1, CARP,   5
	db  85 percent + 1, CARP,   5
	db 100 percent,     BLOWFISH,   5
.Blowfish_Swarm_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     BLOWFISH,   20
	db  90 percent + 1, BLOWFISH,   20
	db 100 percent,     time_group 10
.Blowfish_Swarm_Super:
	db  40 percent,     BLOWFISH,   40
	db  70 percent,     time_group 11
	db  90 percent + 1, BLOWFISH,   40
	db 100 percent,     BLOWFISH,   40

.Remora_Swarm_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     REMORA,   10
.Remora_Swarm_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     REMORA,   20
	db  90 percent + 1, REMORA,   20
	db 100 percent,     time_group 12
.Remora_Swarm_Super:
	db  40 percent,     REMORA,   40
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORA,   40
	db 100 percent,     REMORA,   40

.Inkanyamba_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     CARP,   10
.Inkanyamba_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     CARP,   20
	db  90 percent + 1, CARP,   20
	db 100 percent,     time_group 14
.Inkanyamba_Super:
	db  40 percent,     CARP,   40
	db  70 percent,     time_group 15
	db  90 percent + 1, CARP,   40
	db 100 percent,     CARP,   40

.Serpent_2_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     CARP,   10
.Serpent_2_Good:
	db  35 percent,     CARP,   10
	db  70 percent,     CARP,   10
	db  90 percent + 1, CARP,   10
	db 100 percent,     time_group 16
.Serpent_2_Super:
	db  40 percent,     CARP,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, CARP,   10
	db 100 percent,     LEVIATHAN,  10

.WhirlIslands_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     CRAB,     10
.WhirlIslands_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     CRAB,     20
	db  90 percent + 1, CRAB,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     CRAB,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, COCO_CRAB,    40
	db 100 percent,     HYDRA,     40

.Blowfish_NoSwarm_Old:
.Blowfish_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     JELLYFISH,  10
.Blowfish_NoSwarm_Good:
.Blowfish_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     JELLYFISH,  20
	db  90 percent + 1, JELLYFISH,  20
	db 100 percent,     time_group 20
.Blowfish_NoSwarm_Super:
.Blowfish_Super:
	db  40 percent,     JELLYFISH,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, CARP,   40
	db 100 percent,     BLOWFISH,   40

.Remora_Old:
	db  70 percent + 1, CARP,   10
	db  85 percent + 1, CARP,   10
	db 100 percent,     TADPOLE,    10
.Remora_Good:
	db  35 percent,     CARP,   20
	db  70 percent,     TADPOLE,    20
	db  90 percent + 1, TADPOLE,    20
	db 100 percent,     time_group 6
.Remora_Super:
	db  40 percent,     TADPOLE,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, CARP,   40
	db 100 percent,     REMORA,   40

TimeFishGroups:
	;  day              nite
	db CORAL,    20,  STARFISH,     20 ; 0
	db CORAL,    40,  STARFISH,     40 ; 1
	db CLAM,   20,  CLAM,   20 ; 2
	db CLAM,   40,  CLAM,   40 ; 3
	db GOLDFISH,    20,  GOLDFISH,    20 ; 4
	db GOLDFISH,    40,  GOLDFISH,    40 ; 5
	db TADPOLE,    20,  TADPOLE,    20 ; 6
	db TADPOLE,    40,  TADPOLE,    40 ; 7
	db SERPENT,    20,  SERPENT,    20 ; 8
	db SERPENT,    40,  SERPENT,    40 ; 9
	db BLOWFISH,   20,  BLOWFISH,   20 ; 10
	db BLOWFISH,   40,  BLOWFISH,   40 ; 11
	db REMORA,   20,  REMORA,   20 ; 12
	db REMORA,   40,  REMORA,   40 ; 13
	db INKANYAMBA,   20,  INKANYAMBA,   20 ; 14
	db INKANYAMBA,   40,  INKANYAMBA,   40 ; 15
	db SERPENT,    10,  SERPENT,    10 ; 16
	db SERPENT,    10,  SERPENT,    10 ; 17
	db SEAHORSE,     20,  SEAHORSE,     20 ; 18
	db SEAHORSE,     40,  SEAHORSE,     40 ; 19
	db JELLYFISH,  20,  JELLYFISH,  20 ; 20
	db JELLYFISH,  40,  JELLYFISH,  40 ; 21
