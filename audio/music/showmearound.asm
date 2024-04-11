Music_ShowMeAround:
	channel_count 4
	channel 1, Music_ShowMeAround_Ch1
	channel 2, Music_ShowMeAround_Ch2
	channel 3, Music_ShowMeAround_Ch3
	channel 4, Music_ShowMeAround_Ch4

Music_ShowMeAround_Ch1:
	tempo 160
	transpose 1,0
	duty_cycle 2
	vibrato 16, 2, 2
	notetype 12, $a7
.mainloop:
;Bar 1
	octave 3
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note G_, 2
	note B_, 2
	note __, 6
;Bar 2
	octave 4
	note C_, 2
	note __, 1
	octave 3
	note B_, 2
	note __, 1
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note __, 6
;Bar 3
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note G_, 2
	note B_, 2
	note __, 6
;Bar 4
	octave 4
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note __, 6
;Bar 5
	note C_, 2
	note __, 1
	octave 3
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 6
	note G_, 2
	note __, 1
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 7
	octave 4
	note C_, 2
	note __, 1
	octave 3
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 8
	octave 4
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note __, 6
;Bar 9
	note D_, 4
	note __, 2
	octave 3
	note B_, 4
	note __, 6
;Bar 10
	octave 4
	note C_, 4
	note __, 2
	octave 3
	note B_, 4
	note __, 6
;Bar 11
	octave 4
	note C_, 4
	note __, 2
	note D_, 4
	note __, 6
;Bar 12
	note E_, 4
	note __, 2
	note D_, 4
	note __, 6
;Bar 13
	octave 3
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note G_, 2
	note B_, 2
	note __, 6
;Bar 14
	octave 4
	note C_, 2
	note __, 1
	octave 3
	note B_, 2
	note __, 1
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note __, 6
;Bar 15
	note C_, 2
	note __, 1
	note E_, 2
	note __, 1
	note G_, 2
	note B_, 2
	note __, 6
;Bar 16
	octave 4
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note __, 6
;Bar 17
	note C_, 2
	note __, 1
	octave 3
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 18
	note G_, 2
	note __, 1
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 19
	octave 4
	note C_, 2
	note __, 1
	octave 3
	note A_, 2
	note __, 1
	note E_, 2
	note G_, 2
	note __, 6
;Bar 20
	octave 4
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note __, 6
;Bar 21
	note D_, 4
	note __, 2
	octave 3
	note B_, 4
	note __, 6
;Bar 22
	octave 4
	note C_, 4
	note __, 2
	octave 3
	note B_, 4
	note __, 6
;Bar 23
	octave 4
	note C_, 4
	note __, 2
	note D_, 4
	note __, 6
;Bar 24
	note E_, 4
	note __, 2
	note D_, 4
	note __, 6
;Bar 25
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 3
	note B_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note __, 2
;Bar 26
	octave 4
	note D_, 2
	note __, 1
	note E_, 2
	note __, 1
	note D_, 2
	note C_, 6
	note __, 2
;Bar 27
	note E_, 2
	note __, 1
	note G_, 2
	note __, 1
	note E_, 2
	note A_, 4
	note G_, 4
;Bar 28
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note B_, 2
	octave 4
	note C_, 6
	note __, 2
;Bar 29
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 3
	note B_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note __, 2
;Bar 30
	octave 4
	note D_, 2
	note __, 1
	note E_, 2
	note __, 1
	note D_, 2
	note C_, 6
	note __, 2
;Bar 31
	note E_, 2
	note __, 1
	note G_, 2
	note __, 1
	note E_, 2
	note A_, 4
	note G_, 4
;Bar 32
	note E_, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note B_, 2
	octave 4
	note C_, 8
	sound_loop 0, .mainloop

Music_ShowMeAround_Ch2:
	duty_cycle 1
	vibrato 28, 1, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note C_, 2
	note __, 6
	note E_, 2
	note __, 1
	note G_, 2
	note __, 1
	note A_, 2
;Bar 2
	note __, 8
	note B_, 2
	note __, 1
	octave 3
	note C_, 2
	note __, 1
	octave 2
	note B_, 2
;Bar 3
	note __, 8
	octave 3
	note D_, 2
	note __, 1
	note C_, 2
	note __, 1
	octave 2
	note B_, 2
;Bar 4
	note __, 8
	note A_, 2
	note __, 1
	note F_, 2
	note __, 1
	note G_, 2
	sound_loop 0, .mainloop

Music_ShowMeAround_Ch3:
	notetype 12, $a6
.mainloop:
	octave 2
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
;Bar 2
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note G_, 2
	note __, 1
	note G_, 2
	note __, 1
	note G_, 2
;Bar 3
	note C_, 2
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
;Bar 4
	note A_, 2
	note __, 1
	note A_, 2
	note __, 1
	note A_, 2
	note G_, 2
	note __, 1
	note G_, 2
	note __, 1
	note G_, 2
	sound_loop 0, .mainloop

Music_ShowMeAround_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 11, 1
	drum_note 11, 1
	
	drum_note 3, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	
	drum_note 3, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	
	sound_loop 0, .mainloop
