Music_LookRocket:
	channel_count 4
	channel 1, Music_LookRocket_Ch1
	channel 2, Music_LookRocket_Ch2
	channel 3, Music_LookRocket_Ch3
	channel 4, Music_LookRocket_Ch4


Music_LookRocket_Ch1:
	tempo 123
	volume 7, 7
	transpose 0, 2
	duty_cycle 3
	vibrato 5, 6, 4
	note_type 12, 10, 8
;Bar 1
	octave 2
	note G_, 2
	note A#, 1
	octave 3
	note D_, 3
	note D#, 2
	note F_, 4
.mainloop:
;Bar 2
	octave 2
	note G_, 2
	note A#, 1
	note G_, 1
	note A#, 2
	octave 3
	note C_, 2
	note D#, 3
	note D_, 3
	octave 2
	note A#, 6
;Bar 3
	note G_, 2
	note F_, 2
	note G_, 3
	octave 3
	note C_, 5
;Bar 4
	octave 2
	note D_, 2
	note F_, 1
	note D_, 1
	note F_, 2
	note G_, 2
	note A#, 3
	note A_, 3
	note F_, 5
;Bar 5
	rest 1
	note G_, 2
	note A#, 2
	note A_, 3
	note F_, 5
;Bar 6
	note G_, 2
	note A#, 1
	note G_, 1
	note A#, 2
	octave 3
	note C_, 2
	note D#, 3
	note D_, 3
	note F_, 6
;Bar 7
	note A#, 2
	note A_, 2
	note F_, 6
	rest 2
;Bar 8
	note A#, 3
	note A_, 3
	note F_, 2
	note G_, 3
	note D_, 5
;Bar 9
	note G_, 3
	note F_, 3
	note G_, 6
	note F_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	sound_loop 0, .mainloop

Music_LookRocket_Ch2:
	transpose 0, 2
	vibrato 4, 6, 4
	duty_cycle 3
	note_type 12, 11, 7
	rest 12
	volume $55
.mainloop:
	octave 1
	note G_, 2
	rest 1
	note G_, 2
	rest 1
	note A#, 4
	note G_, 2
	note F_, 2
	note D#, 2
;Bar 3
	note A#, 2
	rest 1
	octave 2
	note C_, 2
	rest 1
	octave 1
	note A#, 4
	note F_, 2
	note D#, 2
	note F_, 2
	sound_loop 0, .mainloop

Music_LookRocket_Ch3:
	transpose 0, 2
	vibrato 4, 2, 2
	note_type 12, 1, 4
	volume $33
	rest 12
.mainloop:
	octave 1
	note G_, 2
	rest 1
	note G_, 1
	note G_, 2
	rest 1
	note G_, 1
	note G_, 2
	rest 1
	note G_, 1
	note G_, 4
	sound_loop 0, .mainloop

Music_LookRocket_Ch4:
	toggle_noise 4
	drum_speed 12
	volume $77
	rest 12
.mainloop:
	drum_note 11, 4
	drum_note 3, 3
	drum_note 11, 2
	drum_note 11, 3
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 3
	drum_note 11, 2
	drum_note 11, 3
	drum_note 3, 2
	drum_note 11, 2
	sound_loop 0, .mainloop