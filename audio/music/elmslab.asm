Music_ElmsLab:
	channel_count 4
	channel 1, Music_ElmsLab_Ch1
	channel 2, Music_ElmsLab_Ch2
	channel 3, Music_ElmsLab_Ch3
	channel 4, Music_ElmsLab_Ch4

Music_ElmsLab_Ch1:
	tempo 174
	duty_cycle $0
	vibrato 0, 3, 5
	notetype 12, $a7
.mainloop:
;Bar 1
	octave 2
	note C_, 1
	note __, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 2
	note A_, 1
	note __, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note __, 1
	note D_, 1
	note G_, 4
	note __, 5
;Bar 3
	note C_, 1
	note __, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 4
	note A_, 1
	note __, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note __, 1
	note D_, 1
	note C_, 4
	note __, 5
;Bar 5
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note D_, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note D_, 1
	note C_, 1
	note __, 2
	note D_, 1
	note __, 1
;Bar 6
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note C_, 5
	note __, 4
;Bar 7
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note D_, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note D_, 1
	note C_, 1
	note __, 2
	note D_, 1
	note __, 1
;Bar 8
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	note G_, 1
	note A_, 5
	note __, 4
;Bar 9
	octave 2
	note E_, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 2
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	octave 2
	note C_, 1
	note __, 2
	note D_, 1
	note __, 1
;Bar 10
	note D#, 1
	note __, 3
	note D_, 1
	note __, 2
	note E_, 1
	note __, 8
;Bar 11
	note E_, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 2
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	octave 2
	note C_, 1
	note __, 2
	note D_, 1
	note __, 1
;Bar 12
	note D#, 1
	note __, 3
	note D_, 1
	note __, 2
	note C_, 3
	note __, 6
;Bar 13
	note D_, 1
	note __, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 2
	octave 1
	note A_, 1
	note __, 4
;Bar 14
	octave 2
	note C_, 1
	note __, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 2
	note G_, 1
	note __, 4
;Bar 15
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
;Bar 16
	note E_, 1
	note __, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 2
	note C_, 5

	sound_loop 0, .mainloop

Music_ElmsLab_Ch2:
	duty_cycle 3
	vibrato 16, 2, 6
	note_type 12, 4, 3
.mainloop:
;Bar 1
	octave 1
	note G_, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note __, 1
;Bar 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 1
	note G_, 2
	sound_loop 0, .mainloop

Music_ElmsLab_Ch3:
	note_type 12, 2, 6
.mainloop:
	octave 1
	note C_, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note __, 1
;Bar 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note C_, 1
	note __, 1
	note C_, 2
	sound_loop 0, .mainloop

Music_ElmsLab_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 4, 4
	drum_note 3, 3
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 3, 4
	drum_note 4, 3
	drum_note 4, 1
	drum_note 3, 3
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	sound_loop 0, .mainloop

