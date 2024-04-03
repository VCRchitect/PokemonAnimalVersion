Music_Gym:
	channel_count 4
	channel 1, Music_Gym_Ch1
	channel 2, Music_Gym_Ch2
	channel 3, Music_Gym_Ch3
	channel 4, Music_Gym_Ch4

Music_Gym_Ch1:
	tempo 120
	vibrato 18, 2, 4
	duty_cycle 1
	note_type 12, 11, 7
.mainloop:
	octave 3
	note A#, 4
	note G_, 8
	note F_, 8
;Bar 2
	note D#, 4
	note __, 8
;Bar 3
	note A#, 4
	note G_, 8
	octave 4
	note C_, 8
;Bar 4
	octave 3
	note A#, 4
	note __, 8
;Bar 5
	octave 4
 	note D_, 4
	note D#, 4
	note D_, 4
	octave 3
	note A#, 8
;Bar 6
	note G_, 4
	note __, 8
;Bar 7
	octave 4
	note D_, 4
	note D#, 4
	note D_, 4
	octave 3
	note A#, 8
;Bar 8
	octave 4
	note C_, 4
	note __, 8
;Bar 9
	octave 3
	note A#, 4
	note G_, 8
	note F_, 8
;Bar 2
	note D#, 4
	note __, 8
;Bar 3
	note A#, 4
	note G_, 8
	octave 4
	note C_, 8
;Bar 4
	octave 3
	note A#, 4
	note __, 8
;Bar 5
	octave 4
 	note D_, 4
	note D#, 4
	note D_, 4
	octave 3
	note A#, 8
;Bar 6
	note G_, 4
	note __, 8
;Bar 7
	octave 4
	note D_, 4
	note D#, 4
	note D_, 4
	octave 3
	note A#, 8
;Bar 8
	octave 4
	note C_, 4
	note __, 8
;Bar 17
	note C_, 12
	octave 3
	note A#, 12
;Bar 18
	note G_, 8
;Bar 19
	octave 4
	note C_, 12
	octave 3
	note A#, 16
;Bar 20
	note __, 4
;Bar 21
	octave 4
	note D#, 12
	note F_, 12
;Bar 22
	note D#, 8
;Bar 23
	note D_, 12
	octave 3
	note G_, 16
	note G_, 4
	sound_loop 0, .mainloop

Music_Gym_Ch2:
	duty_cycle 1
	note_type 12, 12, 3
.mainloop:
	octave 2
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	note G_, 2
	note __, 2
	note C_, 2
	note G_, 2
;Bar 2
	note __, 4
	note D#, 4
	note __, 2
	note D#, 2
	note __, 4
;Bar 3
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	note G_, 2
	note __, 2
	note C_, 2
	note G_, 2
;Bar 4
	note __, 4
	note D#, 4
	note __, 2
	note G_, 2
	note __, 4
;Bar 5
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	note G_, 2
	note __, 2
	note C_, 2
	note G_, 2
;Bar 6
	note __, 4
	note D#, 4
	note __, 2
	note D#, 2
	note __, 4
;Bar 7
	note C_, 2
	note __, 2
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note A#, 2
	note __, 2
	note G_, 2
	note A#, 2
;Bar 8
	note __, 2
	note A#, 2
	note G_, 2
	note __, 2
	note A#, 2
	note __, 2
	sound_loop 0, .mainloop

Music_Gym_Ch3:
	note_type 12, 2, 5
.mainloop:
	octave 2
	note C_, 6
	note C_, 6
	note C_, 6
;Bar 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 6
	note G_, 4
	note A#, 4
;Bar 3
	octave 2
	note C_, 6
	note C_, 6
	note C_, 6
;Bar 4
	note D#, 6
	note D#, 4
	note D_, 4
;Bar 5
	note C_, 6
	note C_, 6
	note C_, 6
;Bar 6
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 6
	note G_, 4
	note A#, 4
;Bar 7
	octave 2
	note C_, 6
	note C_, 6
	note C_, 6
;Bar 8
	note D#, 6
	note D#, 4
	sound_loop 0, .mainloop

Music_Gym_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 3, 1
	sound_loop 0, .mainloop
