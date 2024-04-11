Music_ViridianCity:
	channel_count 4
	channel 1, Music_ViridianCity_Ch1
	channel 2, Music_ViridianCity_Ch2
	channel 3, Music_ViridianCity_Ch3
	channel 4, Music_ViridianCity_Ch4

Music_ViridianCity_Ch1:
	tempo 204
	duty_cycle 1
	vibrato 18, 1, 5
	transpose 1,0
	note_type 12, 11, 7
.mainloop:
	octave 3
	note A#, 2
	note __, 2
	note A#, 2
	note __, 1
	note A#, 1
	note A#, 1
	note __, 3
	note G_, 2
	note F_, 2
;Bar 2
	note A#, 4
	note G_, 2
	note A#, 4
	note __, 2
	note G_, 2
	note A#, 2
;Bar 3
	octave 4
	note C_, 4
	note __, 2
	note C_, 6
	octave 3
	note G_, 2
	note A#, 2
;Bar 4
	octave 4
	note C_, 4
	note __, 2
	note C_, 6
	note __, 4
;Bar 5
	octave 3
	note A#, 2
	note __, 2
	note A#, 2
	note __, 1
	note A#, 1
	note A#, 1
	note __, 3
	note G_, 2
	note F_, 2
;Bar 6
	note A#, 4
	note G_, 2
	note A#, 4
	note __, 2
	note G_, 2
	note A#, 2
;Bar 7
	octave 4
	note C_, 4
	note D_, 2
	octave 3
	note A#, 4
	note __, 2
	note G_, 2
	note A#, 2
;Bar 8
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note A#, 6
	note __, 2
;Bar 9
	note D#, 4
	note D#, 2
	note F_, 2
	note D#, 4
	note D#, 2
	note C_, 2
;Bar 10
	note D#, 4
	note F_, 2
	note G_, 6
	note __, 4
;Bar 11
	note G_, 4
	note G_, 2
	note F_, 2
	note G_, 4
	note F_, 2
	note G_, 2
;Bar 12
	note A#, 4
	note G_, 2
	note A#, 6
	note __, 4
;Bar 13
	note G_, 2
	note __, 2
	note G_, 2
	note __, 1
	note G_, 1
	note G_, 1
	note __, 3
	note F_, 2
	note D#, 2
;Bar 14
	octave 2
	note A#, 4
	note __, 2
	octave 3
	note C_, 4
	note __, 2
	note D#, 2
	note F_, 2
;Bar 15
	note G_, 2
	note __, 2
	note G_, 2
	note __, 1
	note G_, 1
	note G_, 1
	note __, 3
	note F_, 2
	note G_, 2
;Bar 16
	note A#, 4
	note G_, 2
	note A#, 6
	note __, 4
;Bar 17
	note G_, 2
	note __, 2
	note G_, 2
	note __, 1
	note G_, 1
	note G_, 1
	note __, 3
	note F_, 2
	note D#, 2
;Bar 18
	octave 2
	note A#, 4
	note __, 2
	octave 3
	note C_, 4
	note __, 2
	note F_, 2
	note D#, 2
;Bar 19
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 4
	note __, 2
	note F_, 2
	note G_, 2
;Bar 20
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 6
	note __, 4
;Bar 21
	note D#, 4
	note D#, 2
	note F_, 2
	note D#, 4
	note D#, 2
	note C_, 2
;Bar 22
	note D#, 4
	note F_, 2
	note G_, 6
	note __, 4
;Bar 23
	note G_, 4
	note G_, 2
	note F_, 2
	note G_, 4
	note F_, 2
	note G_, 2
;Bar 24
	note A#, 4
	note G_, 2
	note A#, 10
	sound_loop 0, .mainloop
	
Music_ViridianCity_Ch2:
	duty_cycle 2
	vibrato 20, 3, 4
	transpose 1,0
	note_type 12, 12, 3
.mainloop:	
	octave 2
	note G_, 8
	note D#, 4
	octave 3
	note C_, 4
;Bar 2
	octave 2
	note A#, 8
	note G_, 4
	octave 3
	note D#, 4
;Bar 3
	note D_, 8
	octave 2
	note A#, 4
	octave 3
	note D_, 4
;Bar 4
	note C_, 8
	octave 2
	note A#, 8
	sound_loop 0, .mainloop	

Music_ViridianCity_Ch3:
	notetype 12, $a6
.mainloop:
	octave 1
	note G_, 4
	note G_, 4
	note D#, 4
	note D#, 4
;Bar 2
	note A#, 4
	note A#, 4
	note C_, 4
	note C_, 4
;Bar 3
	note D#, 4
	note D#, 4
	note G_, 4
	note G_, 4
;Bar 4
	note F_, 4
	note D#, 4
	note F_, 4
	note D#, 4

	sound_loop 0, .mainloop

Music_ViridianCity_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 8, 1

	drum_note 3, 2
	drum_note 8, 1 
	drum_note 3, 1

	drum_note 11, 2
	drum_note 3, 2

	drum_note 8, 2
	drum_note 8, 2

	sound_loop 0, .mainloop
