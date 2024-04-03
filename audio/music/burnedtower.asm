Music_BurnedTower:
	channel_count 4
	channel 1, Music_BurnedTower_Ch1
	channel 2, Music_BurnedTower_Ch2
	channel 3, Music_BurnedTower_Ch3
	channel 4, Music_BurnedTower_Ch4

Music_BurnedTower_Ch1:
	tempo 134
	duty_cycle 1
	notetype 12, $a7
.mainloop:
	octave 4
	note D_, 8
	octave 3
	note G_, 8
;Bar 2
	note A#, 4
	note A_, 4
	note G_, 8
;Bar 3
	note F_, 4
	note G_, 4
	note F_, 4
	note D_, 4
;Bar 4
	note F_, 8
	note G_, 8
;Bar 5
	octave 4
	note C_, 8
	octave 3
	note F_, 8
;Bar 6
	note A#, 4
	note A_, 4
	note G_, 8
;Bar 7
	note F_, 4
	note D_, 4
	note F_, 4
	note D_, 4
;Bar 8
	note C_, 8
	note D_, 8
;Bar 9
	octave 4
	note D_, 8
	octave 3
	note G_, 8
;Bar 10
	octave 4
	note D_, 4
	note F_, 4
	note E_, 8
;Bar 11
	note C_, 4
	note D_, 4
	note C_, 4
	octave 3
	note F_, 4
;Bar 12
	note G_, 4
	note F_, 4
	note G_, 8
;Bar 13
	octave 4
	note C_, 8
	octave 3
	note F_, 8
;Bar 14
	note A#, 4
	note A_, 4
	note F_, 8
;Bar 15
	note D_, 4
	note F_, 4
	note D_, 4
	note F_, 4
;Bar 16
	note G_, 16
;Bar 17
	octave 4
	note D_, 4
	octave 3
	note G_, 4
	note A#, 2
	note __, 1
	note A_, 2
	note __, 1
	note G_, 4
;Bar 18
	note __, 2
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2
	note F_, 4
;Bar 19
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note __, 1
	note A#, 2
	note __, 1
	note A_, 4
;Bar 20
	note F_, 2
	note D_, 4
	note F_, 4
	note G_, 4
;Bar 21
	octave 4
	note D_, 4
	octave 3
	note G_, 4
	octave 4
	note D_, 2
	note __, 1
	note F_, 2
	note __, 1
	note G_, 4
;Bar 22
	note __, 2
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2
	note F_, 4
;Bar 23
	note A#, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note __, 1
	note A_, 2
	note __, 1
	note G_, 4
;Bar 24
	note A_, 2
	note G_, 4
	note F_, 4
	note D_, 4
	sound_loop 0, .mainloop

Music_BurnedTower_Ch2:
	duty_cycle 2
	vibrato 32, 8, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note D_, 8
	note G_, 4
	note F_, 8
;Bar 2
	note D_, 4
	note C_, 4
	note D_, 4
;Bar 3
	note F_, 8
	note D_, 4
	note F_, 16
	note F_, 4
;Bar 5
	note A#, 4
	note A_, 4
	note F_, 4
	note D_, 8
;Bar 6
	note F_, 4
	note D_, 4
	note F_, 4
;Bar 7
	note D_, 4
	note F_, 4
	note C_, 4
	note D_, 16
	note D_, 4
;Bar 9
	note G_, 8
	note A#, 4
	note A_, 8
;Bar 10
	note F_, 4
	note D_, 4
	note F_, 4
;Bar 11
	note A#, 8
	octave 3
	note C_, 4
	octave 2
	note A_, 16
	note A_, 4
;Bar 13
	octave 3
	note D_, 8
	octave 2
	note A_, 4
	octave 3
	note C_, 8
;Bar 14
	octave 2
	note A_, 4
	note A#, 4
	note A_, 4
;Bar 15
	note G_, 8
	note F_, 4
	note G_, 16
	note G_, 4
;Bar 17
	octave 3
	note D_, 4
	octave 2
	note G_, 4
	note A#, 2
	note __, 1
	note A_, 2
	note __, 1
	note G_, 4
;Bar 18
	note __, 2
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2
	note F_, 4
;Bar 19
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note __, 1
	note A#, 2
	note __, 1
	note A_, 4
;Bar 20
	note F_, 2
	note D_, 4
	note F_, 4
	note G_, 4
;Bar 21
	octave 3
	note D_, 4
	octave 2
	note G_, 4
	octave 3
	note D_, 2
	note __, 1
	note F_, 2
	note __, 1
	note G_, 4
;Bar 22
	note __, 2
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2
	note F_, 4
;Bar 23
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note __, 1
	note A_, 2
	note __, 1
	note G_, 4
;Bar 24
	note A_, 2
	note G_, 4
	note F_, 4
	note D_, 4
	sound_loop 0, .mainloop

Music_BurnedTower_Ch3:
	note_type 12, 1, 4
.mainloop:
	octave 2
	note D_, 16
;Bar 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 3
	note A#, 16
;Bar 4
	note G_, 16
;Bar 5
	octave 2
	note D_, 16
;Bar 6
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 7
	note G_, 16
;Bar 8
	note A#, 16
;Bar 9
	octave 2
	note D_, 16
;Bar 10
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 11
	note A#, 16
;Bar 12
	note G_, 16
;Bar 13
	octave 2
	note D_, 16
;Bar 14
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 15
	note G_, 16
;Bar 16
	note A#, 16
;Bar 17
	octave 2
	note D_, 16
;Bar 18
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 19
	note A#, 16
;Bar 20
	note G_, 16
;Bar 21
	octave 2
	note D_, 16
;Bar 22
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 16
;Bar 23
	note G_, 16
;Bar 24
	note A#, 16
	sound_loop 0, .mainloop

Music_BurnedTower_Ch4:
	volume $77
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 3
	drum_note 11, 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 3
	drum_note 3, 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 2
	drum_note 11, 2

	sound_loop 0, .mainloop
