Music_Mom:
	channel_count 4
	channel 1, Music_Mom_Ch1
	channel 2, Music_Mom_Ch2
	channel 3, Music_Mom_Ch3
	channel 4, Music_Mom_Ch4

Music_Mom_Ch1:
	volume 7, 7
	tempo 206
	duty_cycle $2
	note_type 12, 11, 3
	octave 3
	note C_, 1
	octave 4
	note E_, 1
	note F#, 1
	note G_, 1
	note C_, 12
.mainloop:
;Bar 1
	octave 3
	note G_, 3
	note F#, 1
	note E_, 2
	note C_, 4
	note D_, 2
	note E_, 2
	note F#, 4
;Bar 2
	note A_, 1
	note G_, 1
	note F#, 2
	note E_, 2
	note D_, 8
;Bar 3
	note F#, 2
	note G_, 2
	note F#, 2
	note D_, 4
	note C_, 2
	note D_, 2
	note E_, 2
;Bar 4
	note F#, 3
	note E_, 3
	note D_, 8
	note __, 2
;Bar 5
	note G_, 3
	note F#, 1
	note E_, 2
	note C_, 4
	note D_, 2
	note E_, 2
	note F#, 4
;Bar 6
	note G_, 1
	note F#, 1
	note E_, 2
	note D_, 2
	octave 2
	note A_, 8
;Bar 7
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 4
	note C_, 2
	note D_, 2
	note E_, 2
;Bar 8
	note F#, 3
	note E_, 3
	note D_, 6
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	sound_loop 0, .mainloop

Music_Mom_Ch2:
	volume $44
	duty_cycle $3
	notetype 12, $a5	
	octave 2
	note C_, 1
	note E_, 1
	octave 3
	note F#, 1
	note G_, 1
	note C_, 12
.mainloop
;Bar 1
	octave 1
	note C_, 16
;Bar 2
	note E_, 8
	note D_, 8
;Bar 3
	note F#, 16
;Bar 4
	note E_, 8
	note D_, 8
;Bar 5
	note C_, 16
;Bar 6
	note E_, 8
	note D_, 8
;Bar 7
	note F#, 16
;Bar 8
	note E_, 8
	note D_, 8
	sound_loop 0, .mainloop

Music_Mom_Ch3:
	note_type 12, 5, 4
	octave 3
	note C_, 1
	note E_, 1
	octave 4
	note F#, 1
	note G_, 1
	note C_, 12
.mainloop:
	octave 3
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	note E_, 1
	note G_, 1
	octave 4
	note E_, 1
	note __, 1
	note C_, 1
	octave 3
	note G_, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
;Bar 2
	note D_, 1
	note __, 1
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	note F#, 1
	note A_, 1
	octave 4
	note F#, 1
	note __, 1
	note D_, 1
	octave 3
	note A_, 1
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	sound_loop 0, .mainloop

Music_Mom_Ch4:
	toggle_noise 4
	drum_speed 12
	rest 16
.mainloop:
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 1
	drum_note 4, 3
	drum_note 4, 2
	drum_note 3, 4
	sound_loop 0, .mainloop
