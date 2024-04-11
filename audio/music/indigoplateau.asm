Music_IndigoPlateau:
	channel_count 4
	channel 1, Music_IndigoPlateau_Ch1
	channel 2, Music_IndigoPlateau_Ch2
	channel 3, Music_IndigoPlateau_Ch3
	channel 4, Music_IndigoPlateau_Ch4

Music_IndigoPlateau_Ch1:
	tempo 174
	duty_cycle 1
	vibrato 18, 1, 5
	transpose 1,0
	note_type 12, 11, 7
.mainloop:
	octave 3
	note D_, 8
	note E_, 4
	note F_, 4
;Bar 2
	note G_, 8
	note F_, 4
	note E_, 4
;Bar 3
	octave 4
	note C_, 8
	octave 3
	note A#, 6
	note A_, 2
;Bar 4
	note G_, 8
	note F_, 8
;Bar 5
	note A_, 8
	note G_, 4
	note E_, 2
	note F_, 2
;Bar 6
	note E_, 8
	note D_, 8
;Bar 7
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note F_, 4
	note E_, 4
;Bar 8
	note D_, 8
	note E_, 8
;Bar 9
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note A_, 8
;Bar 10
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 8
;Bar 11
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 8
;Bar 12
	note E_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 8
;Bar 13
	note D_, 8
	note E_, 4
	note F_, 4
;Bar 14
	note G_, 8
	note F_, 4
	note E_, 4
;Bar 15
	note D_, 4
	note F_, 4
	note E_, 4
	note D_, 4
;Bar 16
	note C_, 8
	octave 2
	note A_, 8
;Bar 17
	octave 3
	note A_, 8
	note G_, 4
	note E_, 2
	note F_, 2
;Bar 18
	note E_, 8
	note D_, 8
;Bar 19
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note F_, 4
	note E_, 4
;Bar 20
	note D_, 8
	note E_, 8
;Bar 21
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note A_, 8
;Bar 22
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 8
;Bar 23
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 8
;Bar 24
	note E_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 8
;Bar 25
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
;Bar 26
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	note E_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	note E_, 2
;Bar 27
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
;Bar 28
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 4
;Bar 29
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
;Bar 30
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	note E_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	note E_, 2
;Bar 31
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
;Bar 32
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 4

	sound_loop 0, .mainloop
	
Music_IndigoPlateau_Ch2:
	duty_cycle 2
	vibrato 20, 3, 4
	note_type 12, 12, 3
	transpose 1,0
.mainloop:
	octave 2
	note A_, 16
;Bar 2
	note E_, 16
;Bar 3
	note A#, 16
;Bar 4
	note A_, 16
	sound_loop 0, .mainloop	

Music_IndigoPlateau_Ch3:
	notetype 12, $a6
.mainloop:
	octave 1

	note A_, 8
	octave 2
	note D_, 8
;Bar 2
	note C_, 8
	octave 1
	note A_, 8
;Bar 3
	note G_, 8
	note A#, 8
;Bar 4
	note A_, 8
	octave 2
	note C_, 8
	sound_loop 0, .mainloop

Music_IndigoPlateau_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 8, 2
	
	drum_note 3, 2
	drum_note 8, 1 
	drum_note 11, 1
	
	drum_note 3, 2
	drum_note 8, 2

	sound_loop 0, .mainloop
