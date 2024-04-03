Music_NewBarkTown:
	channel_count 4
	channel 1, Music_NewBarkTown_Ch1
	channel 2, Music_NewBarkTown_Ch2
	channel 3, Music_NewBarkTown_Ch3
	channel 4, Music_NewBarkTown_Ch4


Music_NewBarkTown_Ch1:
	volume $66
	dutycycle $1
	vibrato 2, 8, 8
	tempo 192
	notetype 12, $a7
.mainloop
;Bar 1
	octave 2
	intensity $97
	note C_, 8
	octave 1
	note B_, 6
	note G_, 4
;Bar 2
	note E_, 2
	note G_, 2
	note B_, 2
	note A_, 8
;Bar 3
	octave 2
	note C_, 2
	note D_, 4
	note F#, 2
	note G_, 6
	note D_, 16
;Bar 4
	note __, 2
;Bar 5
	note G_, 8
	note F#, 6
	note D_, 4
;Bar 6
	octave 1
	note B_, 2
	octave 2
	note D_, 2
	octave 1
	note B_, 2
	octave 2
	note D_, 8
;Bar 7
	note E_, 2
	note D_, 4
	octave 1
	note G_, 2
	note A_, 6
	note B_, 16
;Bar 8
	note __, 2
;Bar 9
	note D_, 2
	note G_, 2
	note B_, 2
	octave 2
	note C_, 8
	note __, 2
;Bar 10
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	note F#, 8
	note __, 2
;Bar 11
	octave 1
	note D_, 2
	note G_, 2
	note B_, 2
	octave 2
	note C_, 8
	note __, 2
;Bar 12
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	note C_, 8
	note __, 2
;Bar 13
	octave 1
	note G_, 2
	note F#, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note B_, 16
;Bar 14
	note __, 2
;Bar 15
	note B_, 2
	note A_, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note G_, 10
;Bar 16
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	sound_loop 0, .mainloop

Music_NewBarkTown_Ch2:
	volume $44
	dutycycle $2
	notetype 12, $a7
.mainloop
;Bar 1
	octave 3
	note C_, 2
	note __, 6
	octave 2
	note B_, 2
	note __, 4
	note G_, 2
;Bar 2
	note __, 2
	note E_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note __, 6
;Bar 3
	octave 3
	note C_, 2
	note D_, 2
	note __, 2
	note F#, 2
	note __, 2
	note G_, 2
	note __, 2
	note D_, 2
;Bar 4
	note __, 16
;Bar 5
	note G_, 2
	note __, 6
	note F#, 2
	note __, 4
	note D_, 2
;Bar 6
	note __, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note __, 6
;Bar 7
	note E_, 2
	note D_, 2
	note __, 2
	octave 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note B_, 2
;Bar 8
	note __, 16
;Bar 9
	note D_, 2
	note G_, 2
	note B_, 2
	octave 3
	note C_, 2
	note __, 8
;Bar 10
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note F#, 2
	note __, 8
;Bar 11
	octave 2
	note D_, 2
	note G_, 2
	note B_, 2
	octave 3
	note C_, 2
	note __, 8
;Bar 12
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	note C_, 2
	note __, 8
;Bar 13
	octave 2
	note G_, 2
	note F#, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note B_, 2
;Bar 14
	note __, 16
;Bar 15
	note B_, 2
	note A_, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note G_, 2
;Bar 16
	note __, 8
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	sound_loop 0, .mainloop

Music_NewBarkTown_Ch3:
	volume $77
	note_type 12, 2, 6
.mainloop:
;Bar 1
	octave 2
	note C_, 2
	note E_, 2
	note G_, 6
	note E_, 4
	note C_, 4
;Bar 2
	note E_, 6
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 2
;Bar 3
	note G_, 6
	note A_, 8
	note G_, 4
;Bar 4
	note F#, 4
	note D_, 6
	note E_, 2
	note F#, 2
;Bar 5
	note G_, 2
	note B_, 2
	octave 3
	note D_, 6
	octave 2
	note B_, 4
	note G_, 10
;Bar 6
	note F#, 2
	note G_, 2
	note A_, 4
;Bar 7
	note E_, 8
	note D_, 6
	note E_, 4
;Bar 8
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note D_, 6
	note __, 2
;Bar 9
	note D_, 4
	note E_, 2
	note C_, 4
	note E_, 6
;Bar 10
	note D_, 6
	octave 1
	note B_, 10
;Bar 11
	octave 2
	note D_, 4
	note E_, 2
	note C_, 4
	note E_, 6
;Bar 12
	note D_, 6
	note C_, 10
;Bar 13
	octave 1
	note G_, 6
	note A_, 10
;Bar 14
	note B_, 6
	note F#, 6
	note G_, 4
;Bar 15
	note B_, 6
	note A_, 10
;Bar 16
	note B_, 6
	note G_, 10
	sound_loop 0, .mainloop

Music_NewBarkTown_Ch4:
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
	sound_loop 0, .mainloop
