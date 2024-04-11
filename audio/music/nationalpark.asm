Music_NationalPark:
	channel_count 4
	channel 1, Music_NationalPark_Ch1
	channel 2, Music_NationalPark_Ch2
	channel 3, Music_NationalPark_Ch3
	channel 4, Music_NationalPark_Ch4

Music_NationalPark_Ch1:
	tempo 128
	duty_cycle 1
	vibrato 18, 1, 5
	note_type 12, 11, 7
.mainloop:
	octave 3
	note D_, 16
;Bar 2
	note C#, 8
	note D_, 8
;Bar 3
	note F#, 16
;Bar 4
	note E_, 16
;Bar 5
	note A_, 16
;Bar 6
	note B_, 8
	note F#, 8
;Bar 7
	note A_, 16
;Bar 8
	note F#, 16
;Bar 9
	note F#, 16
;Bar 10
	note A_, 8
	note B_, 8
;Bar 11
	note F#, 16
;Bar 12
	note E_, 16
;Bar 13
	octave 4
	note D_, 8
	note C#, 8
;Bar 14
	octave 3
	note F#, 8
	note G_, 8
;Bar 15
	note F#, 16
;Bar 16
	note E_, 16
;Bar 17
	note B_, 16
;Bar 18
	note A_, 8
	note F#, 8
;Bar 19
	note A_, 16
;Bar 20
	note F#, 16
;Bar 21
	note B_, 16
;Bar 22
	octave 4
	note C#, 8
	note D_, 8
;Bar 23
	octave 3
	note G_, 16
;Bar 24
	note F#, 16
;Bar 25
	note D_, 4
	note C#, 4
	note D_, 4
	note A_, 8
;Bar 26
	note G_, 4
	note F#, 4
	note E_, 4
;Bar 27
	note D_, 4
	note C#, 4
	note D_, 4
	note B_, 8
;Bar 28
	octave 4
	note C#, 4
	octave 3
	note A_, 8
;Bar 29
	note D_, 4
	note C#, 4
	note D_, 4
	note A_, 8
;Bar 30
	note G_, 4
	note F#, 4
	note E_, 4
;Bar 31
	note D_, 4
	note C#, 4
	note E_, 4
	note D_, 16
	note D_, 4
	sound_loop 0, .mainloop
	
Music_NationalPark_Ch2:
	duty_cycle 1
	transpose 1,0
	vibrato 20, 3, 4
	note_type 12, 12, 3

.mainloop:
	octave 2
	note D_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note D_, 2
	note A_, 2
;Bar 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note D_, 2
	note A_, 2
	note __, 2
;Bar 3
	note D_, 2
	note __, 2
	note B_, 2
	note __, 2
	note B_, 2
	note __, 2
	note D_, 2
	note B_, 2
;Bar 4
	note __, 2
	note B_, 2
	note D_, 2
	note B_, 2
	note __, 2
	note D_, 2
	note B_, 2
	note __, 2
;Bar 5
	note D_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note D_, 2
	note A_, 2
;Bar 6
	note __, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note __, 2
	note D_, 2
	note A_, 2
	note __, 2
;Bar 7
	note C#, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note C#, 2
	note A_, 2
;Bar 8
	note __, 2
	note A_, 2
	note C#, 2
	note A_, 2
	note __, 2
	note C#, 2
	note A_, 4
	sound_loop 0, .mainloop	

Music_NationalPark_Ch3:
	notetype 12, $a6
.mainloop:
	octave 2
	note D_, 16
	note D_, 16
;Bar 3
	note G_, 16
	note G_, 16
;Bar 5
	note D_, 16
	note D_, 16
;Bar 7
	note C#, 16
	note C#, 16
	sound_loop 0, .mainloop

Music_NationalPark_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2

	sound_loop 0, .mainloop
