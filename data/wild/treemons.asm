TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 50, SPARROW,    10
	db 15, SPARROW,    10
	db 15, SPARROW,    10
	db 10, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db -1
; rare
	db 50, SPARROW,    10
	db 15, BEETLE,  10
	db 15, BEETLE,  10
	db 10, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db -1

TreeMonSet_Town:
; common
	db 50, SPARROW,    10
	db 15, SNAKE,      10
	db 15, SPARROW,    10
	db 10, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db -1
; rare
	db 50, SPARROW,    10
	db 15, BEETLE,  10
	db 15, BEETLE,  10
	db 10, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db  5, CHIMPANZEE,      10
	db -1

TreeMonSet_Route:
; common
	db 50, OWL,   10
	db 15, SPIDER,   10
	db 15, LADYBUG,     10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1
; rare
	db 50, OWL,   10
	db 15, PINECONE,     10
	db 15, PINECONE,     10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1

TreeMonSet_Kanto:
; common
	db 50, OWL,   10
	db 15, SNAKE,      10
	db 15, OWL,   10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1
; rare
	db 50, OWL,   10
	db 15, PINECONE,     10
	db 15, PINECONE,     10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1

TreeMonSet_Lake:
; common
	db 50, OWL,   10
	db 15, GNAT,    10
	db 15, OWL,   10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1
; rare
	db 50, OWL,   10
	db 15, PINECONE,     10
	db 15, PINECONE,     10
	db 10, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db  5, DOZEN_EGGS,  10
	db -1

TreeMonSet_Forest:
; common
	db 50, OWL,   10
	db 15, PINECONE,     10
	db 15, PINECONE,     10
	db 10, HORNEDOWL,    10
	db  5, BUTTERFLY, 10
	db  5, BEE,   10
	db -1
; rare
	db 50, OWL,   10
	db 15, CATERPILLA,   10
	db 15, LARVA,     10
	db 10, OWL,   10
	db  5, CHRYSALIS,    10
	db  5, PUPA,     10
	db -1

TreeMonSet_Rock:
	db 90, CRAB,     15
	db 10, SCALEBUG,    15
	db -1
