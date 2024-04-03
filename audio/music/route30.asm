Music_Route30:
	channel_count 4
	channel 1, Music_Route30_Ch1
	channel 2, Music_Route30_Ch2
	channel 3, Music_Route30_Ch3
	channel 4, Music_Route30_Ch4

Music_Route30_Ch1:
	tempo 144
	volume $77
	duty_cycle 3
	notetype 12, $a7
	vibrato 1, 4, 4
.mainloop
	;Bar 1
	octave 2
	note G_, 8
	note B_, 2
	note A_, 4
	octave 3
	note D_, 4
;Bar 2
	note E_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 4
	octave 2
	note B_, 4
;Bar 3
	note G_, 2
	note A_, 4
	note B_, 4
	note G_, 6
;Bar 4
	note E_, 16
;Bar 5
	note G_, 8
	note B_, 2
	note A_, 4
	octave 3
	note D_, 4
;Bar 6
	note E_, 2
	note D_, 2
	octave 2
	note B_, 2
	note A_, 4
	note B_, 4
;Bar 7
	octave 3
	note D_, 2
	note E_, 4
	note F#, 4
	note G_, 6
;Bar 8
	note D_, 16
;Bar 9
	octave 2
	note B_, 6
	octave 3
	note D_, 10
;Bar 10
	note E_, 6
	note D_, 10
;Bar 11
	octave 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 3
	note D_, 4
	octave 2
	note B_, 6
;Bar 12
	note A_, 16
;Bar 13
	note F#, 6
	note A_, 10
;Bar 14
	note B_, 6
	note A_, 10
;Bar 15
	note D_, 2
	note E_, 2
	note F#, 2
	note A_, 4
	note F#, 6
;Bar 16
	note G_, 10
	note F#, 2
	note E_, 2
	note F#, 2
	sound_loop 0, .mainloop

Music_Route30_Ch2:
	duty_cycle 2
	vibrato 18, 3, 6
	notetype 12, $a7
	volume $33
.mainloop
	octave 2
	note D_, 1
	note __, 3
	note D_, 1
	note __, 5
	note D_, 1
	note __, 5
;Bar 2
	note A_, 1
	note __, 1
	note G_, 1
	note __, 3
	note F#, 1
	note __, 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 3
;Bar 3
	octave 1
	note G_, 1
	note __, 3
	note B_, 1
	note __, 5
	octave 2
	note D_, 1
	note __, 5
;Bar 4
	note G_, 1
	note __, 1
	note F#, 1
	note __, 3
	note E_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note B_, 1
	note __, 3
;Bar 5
	octave 2
	note D_, 1
	note __, 3
	note D_, 1
	note __, 5
	note D_, 1
	note __, 5
;Bar 6
	note A_, 1
	note __, 1
	note G_, 1
	note __, 3
	note F#, 1
	note __, 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 3
;Bar 7
	octave 1
	note G_, 1
	note __, 3
	note B_, 1
	note __, 5
	octave 2
	note D_, 1
	note __, 5
;Bar 8
	note G_, 1
	note __, 5
	note E_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note B_, 1
	note __, 3
;Bar 9
	octave 2
	note G_, 1
	note __, 5
	note G_, 1
	note __, 3
	note A_, 1
	note __, 3
	note B_, 4
;Bar 10
	note __, 4
	note A_, 1
	note __, 1
	note G_, 1
	note __, 3
	note F#, 1
	note __, 3
;Bar 11
	octave 1
	note B_, 1
	note __, 3
	octave 2
	note F#, 1
	note __, 5
	note G_, 1
	note __, 3
	note D_, 6
;Bar 12
	note E_, 4
	note D_, 8
;Bar 13
	note D_, 1
	note __, 5
	note D_, 1
	note __, 3
	note E_, 1
	note __, 3
	note F#, 4
;Bar 14
	note __, 4
	note E_, 1
	note __, 1
	note D_, 1
	note __, 3
	note C#, 1
	note __, 3
;Bar 15
	octave 1
	note F#, 1
	note __, 3
	octave 2
	note C#, 1
	note __, 5
	note D_, 1
	note __, 3
	octave 1
	note B_, 6
;Bar 16
	octave 2
	note D_, 4
	octave 1
	note B_, 8
	sound_loop 0, .mainloop

Music_Route30_Ch3:
	volume $77
	notetype 12, $a6
.mainloop
;Bar 1
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	note G_, 2
	octave 3
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	note G_, 2
	octave 3
	note D_, 2
	sound_loop 0, .mainloop

Music_Route30_Ch4:
	toggle_noise 4
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
