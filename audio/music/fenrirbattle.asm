Music_FenrirBattle:
	channel_count 4
	channel 1, Music_FenrirBattle_Ch1
	channel 2, Music_FenrirBattle_Ch2
	channel 3, Music_FenrirBattle_Ch3
	channel 4, Music_FenrirBattle_Ch4

Music_FenrirBattle_Ch1:
	tempo 160
	duty_cycle 1
	vibrato 18, 1, 5
	note_type 12, 11, 7
.mainloop:
	octave 4
	note __, 4
	octave 3
	note D_, 8
	note F_, 2
	note G_, 2
;Bar 2
	note A_, 8
	note G_, 4
	note __, 4
;Bar 3
	octave 4
	note C_, 8
	octave 3
	note A_, 4
	note __, 4
;Bar 4
	octave 4
	note D_, 8
	note C_, 8
;Bar 5
	octave 3
	note D_, 2
	note F_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note F_, 2
	note D_, 2
	note G_, 2
;Bar 6
	note __, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note __, 6
;Bar 7
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
;Bar 8
	octave 4
	note C_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note __, 8
;Bar 9
	octave 3
	note F_, 4
	note __, 2
	note F_, 4
	note __, 2
	note E_, 4
;Bar 10
	note A_, 4
	note __, 2
	note A_, 4
	note __, 2
	note G_, 4
;Bar 11
	octave 4
	note C_, 6
	note __, 2
	note C_, 2
	note D_, 4
	note C_, 10
;Bar 12
	note __, 12
;Bar 13
	octave 3
	note D_, 8
	note F_, 2
	note G_, 2
;Bar 14
	note A_, 10
	note __, 2
	octave 4
	note D_, 4
;Bar 15
	note C_, 8
	octave 3
	note F_, 2
	note E_, 2
	note F_, 4
;Bar 16
	note D_, 12
	note __, 4
;Bar 17
	note D_, 2
	note F_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note F_, 2
	note D_, 2
	note G_, 2
;Bar 18
	note __, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note __, 6
;Bar 19
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
;Bar 20
	octave 4
	note C_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note __, 8
;Bar 21
	octave 3
	note F_, 4
	note __, 2
	note F_, 4
	note __, 2
	note E_, 4
;Bar 22
	note A_, 4
	note __, 2
	note A_, 4
	note __, 2
	note G_, 4
;Bar 23
	octave 4
	note C_, 6
	note __, 2
	note C_, 2
	note D_, 4
	note C_, 16
	note C_, 2
	sound_loop 0, .mainloop

Music_FenrirBattle_Ch2:
	duty_cycle 1
	vibrato 20, 3, 4
	note_type 12, 12, 3
.mainloop:
	octave 3
	note D_, 12
	note D_, 4
;Bar 2
	octave 2
	note A#, 8
	note A#, 8
;Bar 3
	note G_, 12
	octave 3
	note D_, 4
;Bar 4
	note F_, 16
	sound_loop 0, .mainloop

Music_FenrirBattle_Ch3:
	note_type 12, 1, 6
.mainloop:
	octave 2
	note D_, 4
	note A_, 4
	note D_, 4
	note F_, 4
;Bar 2
	note D_, 4
	note A#, 4
	note D_, 4
	note F_, 4
;Bar 3
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
;Bar 4
	note F_, 4
	note C_, 4
	note A_, 4
	note C_, 4
	sound_loop 0, .mainloop

Music_FenrirBattle_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 11, 2

	drum_note 3, 2
	drum_note 11, 1
	drum_note 3, 2

	drum_note 11, 2
	drum_note 11, 1

	drum_note 3, 2
	drum_note 11, 2

	sound_loop 0, .mainloop
