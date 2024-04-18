Music_Route37:
	channel_count 4
	channel 1, Music_Route37_Ch1
	channel 2, Music_Route37_Ch2
	channel 3, Music_Route37_Ch3
	channel 4, Music_Route37_Ch4

Music_Route37_Ch1:
	tempo 213
	duty_cycle 2
	vibrato 16, 2, 2
	notetype 12, $a7
	transpose 1,0
.mainloop:
	octave 4
	note G_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 4
	note B_, 2
	note A_, 2
	note B_, 2
;Bar 2
	octave 4
	note D_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 8
	note __, 2
;Bar 3
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note D_, 4
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
;Bar 4
	note A_, 2
	note G_, 2
	note A_, 2
	note G_, 8
	note __, 2
;Bar 5
	octave 4
	note G_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 4
	note B_, 2
	note A_, 2
	note B_, 2
;Bar 6
	octave 4
	note D_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 8
	note __, 2
;Bar 7
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note D_, 4
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
;Bar 8
	note A_, 2
	note G_, 2
	note E_, 2
	note D_, 8
	note __, 2
;Bar 9
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
;Bar 10
	octave 4
	note D_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 6
	note __, 2
;Bar 11
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
;Bar 12
	octave 4
	note D_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	note G_, 8
	sound_loop 0, .mainloop

Music_Route37_Ch2:
	duty_cycle 0
	vibrato 28, 1, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note G_, 6
	note D_, 6
	note E_, 2
	note G_, 2
;Bar 2
	note B_, 6
	note G_, 6
	note E_, 2
	note G_, 2
;Bar 3
	octave 3
	note D_, 6
	note E_, 6
	note D_, 2
	octave 2
	note B_, 2
;Bar 4
	note A_, 6
	note E_, 6
	note D_, 2
	note E_, 2
	sound_loop 0, .mainloop

Music_Route37_Ch3:
	note_type 12, 2, 7
.mainloop:
	octave 1
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 4
	note D_, 2
	octave 1
	note B_, 2
	note G_, 2
;Bar 2
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 4
	octave 1
	note B_, 2
	note G_, 2
	note E_, 2
;Bar 3
	note C_, 2
	note E_, 2
	note G_, 2
	note B_, 4
	note A_, 2
	note G_, 2
	note E_, 2
;Bar 4
	note G_, 2
	note E_, 2
	note D_, 2
	note G_, 4
	note E_, 2
	sound_loop 0, .mainloop

Music_Route37_Ch4:
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
