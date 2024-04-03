Music_LavenderTown:
	channel_count 4
	channel 1, Music_LavenderTown_Ch1
	channel 2, Music_LavenderTown_Ch2
	channel 3, Music_LavenderTown_Ch3
	channel 4, Music_LavenderTown_Ch4

Music_LavenderTown_Ch1:
	tempo 107
	duty_cycle 1
	vibrato 16, 2, 2
	notetype 12, $a7
.mainloop:
;Bar 1
	octave 3
	note E_, 4
	note D_, 4
	note E_, 4
	note B_, 4
;Bar 2
	octave 4
	note E_, 12
	note D_, 12
;Bar 3
	note __, 4
	octave 3
	note B_, 4
;Bar 4
	octave 4
	note D_, 4
	note __, 4
	octave 3
	note B_, 4
	note __, 4
;Bar 5
	note A_, 4
	note B_, 4
	note A_, 4
	note E_, 4
;Bar 6
	note G_, 12
	note E_, 12
;Bar 7
	note D_, 8
;Bar 8
	octave 2
	note B_, 8
	note __, 8
;Bar 9
	note B_, 4
	note A_, 4
	note B_, 4
	octave 3
	note E_, 4
;Bar 10
	note G_, 12
	note F#, 12
;Bar 11
	note __, 4
	note F#, 4
;Bar 12
	note G_, 4
	note __, 4
	note F#, 4
	note __, 4
;Bar 13
	note E_, 4
	note F#, 4
	note E_, 4
	octave 2
	note B_, 4
;Bar 14
	octave 3
	note D_, 12
	note E_, 16
	note E_, 12
;Bar 16
	note __, 8
;Bar 17
	note E_, 4
	note D_, 4
	note E_, 4
	note B_, 4
;Bar 18
	octave 4
	note E_, 12
	note D_, 12
;Bar 19
	note __, 4
	octave 3
	note B_, 4
;Bar 20
	octave 4
	note D_, 4
	note __, 4
	octave 3
	note B_, 4
	note __, 4
;Bar 21
	note A_, 4
	note B_, 4
	note A_, 4
	note E_, 4
;Bar 22
	note G_, 12
	note E_, 12
;Bar 23
	note D_, 8
;Bar 24
	octave 2
	note B_, 8
	note __, 8
;Bar 25
	note B_, 4
	note A_, 4
	note B_, 4
	octave 3
	note E_, 4
;Bar 26
	note G_, 12
	note F#, 12
;Bar 27
	note __, 4
	note F#, 4
;Bar 28
	note G_, 4
	note __, 4
	note F#, 4
	note __, 4
;Bar 29
	note E_, 4
	note F#, 4
	note E_, 4
	octave 2
	note B_, 4
;Bar 30
	octave 3
	note D_, 12
	note E_, 16
	note E_, 16
	note E_, 4
	sound_loop 0, .mainloop

Music_LavenderTown_Ch2:
	duty_cycle 0
	vibrato 28, 1, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note E_, 6
	note G_, 6
	note B_, 4
;Bar 2
	note A_, 6
	note G_, 6
	note F#, 8
;Bar 3
	note G_, 8
	note B_, 4
;Bar 4
	note A_, 12
	note __, 4
;Bar 5
	note F#, 6
	note G_, 6
	note A_, 6
;Bar 6
	note G_, 6
	note E_, 8
;Bar 7
	note D_, 6
	note E_, 6
	note F#, 16
;Bar 8
	note __, 4
;Bar 9
	note E_, 6
	note G_, 6
	note B_, 4
;Bar 10
	note A_, 6
	note G_, 6
	note F#, 8
;Bar 11
	note G_, 8
	note B_, 4
;Bar 12
	note A_, 12
	note __, 4
;Bar 13
	note F#, 6
	note G_, 6
	note A_, 6
;Bar 14
	note G_, 6
	note E_, 8
;Bar 15
	note D_, 6
	note E_, 6
	note F#, 4
	sound_loop 0, .mainloop

Music_LavenderTown_Ch3:
	notetype 12, $a6
.mainloop:
	octave 1
	note E_, 4
	note E_, 8
	note E_, 4
;Bar 2
	note D_, 4
	note D_, 8
	note D_, 4
;Bar 3
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 4
	note D_, 4
	note D_, 8
	note D_, 4
;Bar 5
	note E_, 4
	note E_, 8
	note E_, 4
;Bar 6
	note D_, 4
	note D_, 8
	note D_, 4
;Bar 7
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 8
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	sound_loop 0, .mainloop

Music_LavenderTown_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 8
	drum_note 11, 8
	sound_loop 0, .mainloop
