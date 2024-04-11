Music_Route1:
	channel_count 4
	channel 1, Music_Route1_Ch1
	channel 2, Music_Route1_Ch2
	channel 3, Music_Route1_Ch3
	channel 4, Music_Route1_Ch4

Music_Route1_Ch1:
	tempo 213
	volume 7, 7
	duty_cycle 2
	vibrato 0, 3, 5
	note_type 12, 11, 2
.mainloop:
;Bar 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note C_, 1
	note E_, 1
	note __, 2
	note D_, 1
	note __, 1
	note C_, 4
	note __, 2
	note D_, 1
	note __, 1
;Bar 2
	note E_, 3
	note C_, 1
	note __, 2
	octave 2
	note A#, 4
	note __, 6
;Bar 3
	note G_, 1
	note A#, 1
	octave 3
	note C_, 1
	note E_, 1
	note __, 2
	note D_, 1
	note __, 1
	note F_, 4
	note __, 2
	note D_, 1
	note __, 1
;Bar 4
	note C_, 3
	octave 2
	note A#, 1
	note __, 2
	note G_, 4
	note __, 6
;Bar 5
	octave 3
	note E_, 3
	note C_, 1
	note __, 2
	octave 2
	note A#, 4
	note G_, 4
	note __, 2
;Bar 6
	octave 3
	note D_, 3
	note C_, 1
	note __, 2
	octave 2
	note A#, 4
	octave 3
	note C_, 4
	note __, 2
;Bar 7
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note C_, 1
	note E_, 1
	note __, 2
	note E_, 1
	note __, 1
	note F_, 4
	note __, 2
	note D_, 1
	note __, 1
;Bar 8
	note C_, 3
	octave 2
	note A#, 1
	note __, 2
	octave 3
	note D_, 4
	note __, 6
;Bar 9
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 1
	octave 2
	note A#, 4
	note __, 2
	note G_, 1
	note A#, 1
;Bar 10
	octave 3
	note C_, 2
	note __, 1
	note E_, 1
	note __, 2
	note D_, 1
	note __, 1
	octave 2
	note A#, 6
	note __, 2
;Bar 11
	octave 3
	note E_, 1
	note __, 2
	note E_, 1
	note __, 2
	note E_, 1
	note __, 1
	note C_, 4
	note __, 2
	note E_, 1
	note D_, 1
;Bar 12
	note C_, 2
	note __, 1
	octave 2
	note A#, 1
	note __, 2
	note G_, 1
	note __, 1
	note A#, 3
	note __, 1
	octave 3
	note C_, 4
	sound_loop 0, .mainloop

Music_Route1_Ch2:
	duty_cycle 2
	vibrato 0, 3, 6
	notetype 12, $a7
.mainloop:
;Bar 1
	octave 2
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 1
	note A#, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A#, 2
;Bar 2
	octave 2
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 4
	note C_, 2
	note D_, 3
	note __, 1
;Bar 3
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 1
	note A#, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A#, 2
;Bar 4
	octave 2
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note D_, 4
	octave 1
	note A#, 2
	octave 2
	note C_, 2
	note D_, 2
;Bar 5
	note C_, 1
	note __, 1
	note C_, 1
	note E_, 1
	note __, 2
	note F_, 1
	note __, 1
	note F_, 4
	note A#, 2
	note __, 2
;Bar 6
	note C_, 1
	note __, 1
	note C_, 1
	note E_, 1
	note __, 2
	note F_, 1
	note __, 1
	note F_, 4
	note D_, 2
	note __, 2
;Bar 7
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 1
	note A#, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A#, 2
;Bar 8
	octave 2
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 4
	note G_, 4
	note __, 2
;Bar 9
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 4
	note __, 2
	note E_, 1
	note __, 1
;Bar 10
	note G_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 1
	note A#, 4
	octave 2
	note D_, 4
	note __, 2
;Bar 11
	note E_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 1
	note A#, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A#, 2
;Bar 12
	octave 2
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 4
	note D_, 2
	note E_, 4
	sound_loop 0, .mainloop

Music_Route1_Ch3:
	note_type 12, 2, 6
	vibrato 0, 2, 7
.mainloop:
;Bar 1
	octave 1
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
;Bar 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note D_, 2
;Bar 3
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
;Bar 4
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note D_, 2
;Bar 5
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note G_, 2
;Bar 6
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 2
	note __, 2
	note F_, 2
	note G_, 2
	note __, 2
;Bar 7
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
;Bar 8
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note D_, 2
;Bar 9
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note G_, 2
;Bar 10
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note F_, 2
	note __, 2
	note F_, 2
	note G_, 2
	note __, 2
;Bar 11
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
;Bar 12
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note D_, 2
	sound_loop 0, .mainloop

Music_Route1_Ch4:
	toggle_noise 3
	drum_speed 12
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