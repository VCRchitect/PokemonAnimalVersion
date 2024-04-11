Music_RocketHideout:
	channel_count 4
	channel 1, Music_RocketHideout_Ch1
	channel 2, Music_RocketHideout_Ch2
	channel 3, Music_RocketHideout_Ch3
	channel 4, Music_RocketHideout_Ch4

Music_RocketHideout_Ch1:
	tempo 147
	duty_cycle 0
	transpose 1,0
	vibrato 18, 1, 5
	note_type 12, 11, 7
.mainloop:
	octave 3
	note E_, 2
	note G_, 2
	note B_, 2
	octave 4
	note E_, 2
	note __, 2
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
;Bar 2
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note E_, 2
	note __, 6
;Bar 3
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note G_, 2
	note B_, 2
	note __, 2
	note G_, 2
	note D_, 2
	octave 2
	note B_, 2
;Bar 4
	octave 3
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note E_, 2
	note __, 6
;Bar 5
	note E_, 6
	note __, 2
	note E_, 2
	note D_, 2
	note __, 2
	note G_, 4
;Bar 6
	note __, 2
	note A_, 2
	note B_, 2
	note E_, 4
	note __, 4
;Bar 7
	note B_, 6
	note __, 2
	note B_, 2
	note A_, 2
	note __, 2
	octave 4
	note D_, 8
;Bar 8
	note __, 10
;Bar 9
	note E_, 6
	note __, 2
	note D_, 2
	octave 3
	note B_, 2
	note __, 2
	octave 4
	note D_, 4
;Bar 10
	note __, 2
	octave 3
	note A_, 2
	note B_, 2
	note E_, 6
	note __, 2
;Bar 11
	note E_, 4
	note D_, 4
	note E_, 2
	note G_, 2
	note __, 2
	note E_, 6
;Bar 12
	note __, 12
;Bar 13
	note E_, 2
	note G_, 2
	note B_, 2
	octave 4
	note E_, 2
	note __, 2
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
;Bar 14
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note E_, 2
	note __, 6
;Bar 15
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note G_, 2
	note B_, 2
	note __, 2
	note G_, 2
	note D_, 2
	octave 2
	note B_, 2
;Bar 16
	octave 3
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note E_, 2
	note __, 6
;Bar 17
	note E_, 4
	note __, 2
	note D_, 4
	note __, 6
;Bar 18
	note G_, 4
	note __, 2
	note E_, 4
	note __, 6
;Bar 19
	note B_, 4
	note __, 2
	note G_, 4
	note __, 6
;Bar 20
	note D_, 4
	note __, 2
	note E_, 10
	sound_loop 0, .mainloop
	
Music_RocketHideout_Ch2:
	duty_cycle 0
	transpose 1,0
	vibrato 20, 3, 4
	note_type 12, 12, 3

.mainloop:
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note E_, 2
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note D_, 2
	note E_, 2
	note __, 2
;Bar 2
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note E_, 2
	note __, 2
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note E_, 2
	note __, 2
;Bar 3
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note E_, 2
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note D_, 2
	note E_, 2
	note __, 2
;Bar 4
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note E_, 2
	note __, 2
	note B_, 2
	note __, 2
	note E_, 4
	sound_loop 0, .mainloop	

Music_RocketHideout_Ch3:
	notetype 12, $a6
.mainloop:
	octave 2
	note E_, 2
	note __, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	note __, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
;Bar 2
	octave 2
	note G_, 2
	note __, 2
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	note __, 2
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	octave 1
	note G_, 2
;Bar 3
	octave 2
	note D_, 2
	note __, 2
	octave 1
	note D_, 2
	octave 2
	note D_, 2
	note __, 2
	octave 1
	note D_, 2
	octave 2
	note D_, 2
	octave 1
	note D_, 2
;Bar 4
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 8
	sound_loop 0, .mainloop

Music_RocketHideout_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	sound_loop 0, .mainloop
