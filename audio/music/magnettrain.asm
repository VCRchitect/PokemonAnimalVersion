Music_MagnetTrain:
	channel_count 4
	channel 1, Music_MagnetTrain_Ch1
	channel 2, Music_MagnetTrain_Ch2
	channel 3, Music_MagnetTrain_Ch3
	channel 4, Music_MagnetTrain_Ch4

Music_MagnetTrain_Ch1:
	tempo 144
	vibrato 20, 2, 3
	duty_cycle 0
	transpose 1,0
	note_type 12, 11, 2
.mainloop:
	octave 3
	note F_, 8
	octave 4
	note C_, 8
;Bar 2
	octave 3
	note A#, 6
	note A_, 10
;Bar 3
	octave 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 8
;Bar 4
	note A_, 2
	note A#, 4
	octave 4
	note C_, 10
;Bar 5
	octave 3
	note C_, 8
	note G_, 8
;Bar 6
	note F_, 6
	note E_, 10
;Bar 7
	note A_, 4
	note G_, 4
	note F_, 8
;Bar 8
	note E_, 2
	note F_, 4
	note G_, 10
;Bar 9
	note F_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 2
	note A_, 6
;Bar 10
	octave 4
	note D_, 2
	note C_, 4
	octave 3
	note A#, 4
	note G_, 6
;Bar 11
	note C_, 4
	note G_, 4
	note F_, 2
	note E_, 6
;Bar 12
	note A_, 2
	note G_, 4
	note F_, 4
	note G_, 6
;Bar 13
	note F_, 8
	note G_, 8
;Bar 14
	note A_, 6
	note A#, 10
;Bar 15
	note F_, 4
	note G_, 4
	note A_, 8
;Bar 16
	note A#, 2
	note G_, 4
	note F_, 10
	sound_loop 0, .mainloop

Music_MagnetTrain_Ch2:
	duty_cycle 1
	vibrato 28, 1, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note C_, 4
	octave 1
	note A_, 8
	note G_, 8
;Bar 2
	note F_, 12
;Bar 3
	note A_, 4
	note A#, 8
	note A_, 8
;Bar 4
	octave 2
	note C_, 10
	note __, 2
;Bar 5
	note C_, 4
	octave 1
	note A_, 8
	note G_, 8
;Bar 6
	note F_, 12
;Bar 7
	note A_, 4
	note A#, 8
	note A_, 8
;Bar 8
	octave 2
	note C_, 10
	note __, 2
;Bar 9
	note C_, 4
	octave 1
	note A_, 8
	note G_, 8
;Bar 10
	note F_, 12
;Bar 11
	note A_, 4
	note A#, 8
	note A_, 8
;Bar 12
	octave 2
	note C_, 10
	note __, 2
;Bar 13
	note C_, 4
	octave 1
	note A_, 8
	note G_, 8
;Bar 14
	note F_, 12
;Bar 15
	note A_, 4
	note A#, 8
	note A_, 8
;Bar 16
	octave 2
	note C_, 12
	sound_loop 0, .mainloop

Music_MagnetTrain_Ch3:
	notetype 12, $a6
.mainloop:
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 2
	note A_, 2
	note A#, 4
	note A_, 8
	note __, 2
;Bar 3
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 4
	note A_, 2
	note A#, 4
	note F_, 8
	note __, 2
;Bar 5
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 4
	note __, 2
;Bar 6
	note F_, 2
	note E_, 2
	note F_, 2
	note A#, 4
	note A_, 6
;Bar 7
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 8
	note A_, 2
	note G_, 4
	note F_, 8
	note __, 2
;Bar 9
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 10
	note A_, 2
	note A#, 4
	note A_, 8
	note __, 2
;Bar 11
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 12
	note A_, 2
	note A#, 4
	note F_, 8
	note __, 2
;Bar 13
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 4
	note __, 2
;Bar 14
	note F_, 2
	note E_, 2
	note F_, 2
	note A#, 4
	note A_, 6
;Bar 15
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	note E_, 4
	note F_, 6
;Bar 16
	note A_, 2
	note G_, 4
	note F_, 10
	sound_loop 0, .mainloop

Music_MagnetTrain_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 8, 2
	drum_note 3, 2
	drum_note 8, 2

	sound_loop 0, .mainloop
