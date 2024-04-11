Music_PokemonLullaby:
	channel_count 3
	channel 1, Music_PokemonLullaby_Ch1
	channel 2, Music_PokemonLullaby_Ch2
	channel 3, Music_PokemonLullaby_Ch3

Music_PokemonLullaby_Ch1:
	transpose 1, 0
	tempo 224
	duty_cycle 3
	pitch_offset 1
	note_type 12, 10, 7
.mainloop:
	octave 3
	note D#, 2
	note G_, 2
	octave 4
	note D_, 2
	note D#, 4
	note __, 2
	note D_, 2
	note C_, 2
;Bar 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 4
	note __, 6
;Bar 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
;Bar 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 6
	note __, 4
;Bar 5
	note D#, 2
	note G_, 2
	octave 4
	note D_, 2
	note D#, 4
	note __, 2
	note D_, 2
	note C_, 2
;Bar 6
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 4
	note __, 6
;Bar 7
	octave 4
	note D_, 2
	note D#, 2
	note F_, 2
	note G_, 4
	note G#, 2
	note G_, 2
	note G#, 2
;Bar 8
	note A#, 2
	note G_, 2
	note F_, 2
	note G_, 4
	note __, 6
;Bar 9
	octave 3
	note D#, 2
	note G_, 2
	octave 4
	note D_, 2
	note D#, 4
	note __, 2
	note D_, 2
	note C_, 2
;Bar 10
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 4
	note __, 6
;Bar 11
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
;Bar 12
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 6
	note __, 4
;Bar 13
	note D#, 2
	note __, 1
	note G_, 2
	note __, 1
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	note __, 1
	octave 4
	note D_, 2
	note __, 1
	note D#, 2
;Bar 14
	note F_, 2
	note __, 1
	note D#, 2
	note __, 1
	note F_, 2
	note D_, 4
	note __, 4
;Bar 15
	note D#, 2
	note __, 1
	note D_, 2
	note __, 1
	note D#, 2
	note F_, 2
	note __, 1
	note D#, 2
	note __, 1
	note F_, 2
;Bar 16
	note G_, 2
	note __, 1
	octave 5
	note C_, 2
	note __, 1
	octave 4
	note A#, 2
	note G_, 4
	note __, 4
;Bar 17
	note D#, 2
	note __, 1
	note G_, 2
	note __, 1
	octave 5
	note D_, 2
	octave 4
	note A#, 2
	note __, 6
;Bar 18
	octave 5
	note D_, 2
	note __, 1
	note D#, 2
	note __, 1
	note D_, 2
	octave 4
	note A#, 2
	note __, 6
;Bar 19
	octave 5
	note C_, 2
	note __, 1
	octave 4
	note A#, 2
	note __, 1
	note A#, 2
	octave 5
	note C_, 2
	note __, 6
;Bar 20
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	note __, 6
;Bar 21
	octave 4
	note D#, 2
	note __, 1
	note G_, 2
	note __, 1
	octave 5
	note D_, 2
	octave 4
	note A#, 2
	note __, 6
;Bar 22
	octave 5
	note D_, 2
	note __, 1
	note D#, 2
	note __, 1
	note D_, 2
	octave 4
	note A#, 2
	note __, 6
;Bar 23
	octave 5
	note C_, 2
	note __, 1
	octave 4
	note A#, 2
	note __, 1
	note A#, 2
	octave 5
	note C_, 2
	note __, 6
;Bar 24
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 4
	note A#, 2
	octave 5
	note C_, 8
	sound_loop 0, .mainloop

Music_PokemonLullaby_Ch2:
	vibrato 16, 1, 4
	duty_cycle 0
	note_type 12, 11, 4
.mainloop:
	octave 2
	note D#, 6
	note G_, 6
	note D_, 4
;Bar 2
	octave 1
	note A#, 16
;Bar 3
	octave 2
	note D_, 6
	note D#, 4
	note __, 2
	note D_, 4
;Bar 4
	octave 1
	note A#, 16
;Bar 5
	octave 2
	note C_, 6
	octave 1
	note A#, 6
	note A#, 4
;Bar 6
	octave 2
	note C_, 16
;Bar 7
	note D_, 6
	note C_, 6
	octave 1
	note A#, 4
	sound_loop 0, .mainloop

Music_PokemonLullaby_Ch3:
	note_type 12, 1, 1
.mainloop:
	octave 1
	note D#, 4
	note G_, 4
	octave 2
	note D_, 4
	octave 1
	note A#, 2
	note G_, 2
;Bar 2
	note D#, 4
	note G_, 4
	octave 2
	note D#, 4
	note C_, 2
	octave 1
	note G_, 2
;Bar 3
	note D#, 4
	note G#, 4
	octave 2
	note D#, 4
	note C_, 2
	octave 1
	note G#, 2
;Bar 4
	note D#, 4
	note G_, 4
	octave 2
	note G_, 4
	note D#, 2
	sound_loop 0, .mainloop
