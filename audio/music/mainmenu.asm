Music_MainMenu:
	channel_count 4
	channel 1, Music_MainMenu_Ch1
	channel 2, Music_MainMenu_Ch2
	channel 3, Music_MainMenu_Ch3
	channel 4, Music_MainMenu_Ch4

Music_MainMenu_Ch1:
	volume $77
	dutycycle $0
	notetype 12, $a7
	vibrato 1, 4, 4
.mainloop:
;Bar 1
	octave 3
	intensity $97
	note C_, 2
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	note C_, 2
;Bar 2
	note D_, 2
	octave 2
	note A#, 2
	note __, 2
	note G_, 10
;Bar 3
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	octave 2
	note G_, 2
	note __, 2
	note A#, 10
;Bar 4
	note __, 8
;Bar 5
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	note C_, 2
;Bar 6
	note D_, 2
	note D#, 2
	note __, 2
	note F_, 10
;Bar 7
	note D_, 2
	note D#, 2
	note __, 2
	note D_, 2
	note __, 2
	octave 2
	note A#, 2
	note __, 2
	note G_, 16
	note G_, 16
	note G_, 2
	sound_loop 0, .mainloop

Music_MainMenu_Ch2:
	dutycycle $1
	note_type 12, 5, 0

.mainloop:
	octave 2
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2 
	note D#, 2
	octave 2
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2 
	note D#, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	note G_, 2 
	note A#, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	note G_, 2 
	note A#, 2
	sound_loop 0, .mainloop

Music_MainMenu_Ch3:
.mainloop:
	volume $77
	note_type 12, 2, 2
;Bar 1
	octave 1
	note C_, 8
	note G_, 8
;Bar 2
	note A#, 16
;Bar 3
	octave 2
	note C_, 16
;Bar 4
	octave 1
	note A#, 8
	note G_, 16
;Bar 5
	note F_, 16
;Bar 6
	note D#, 8
;Bar 7
	note C_, 16
;Bar 8
	note D#, 16
	note D#, 16
	sound_loop 0, .mainloop

Music_MainMenu_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	sound_loop 0, .mainloop
; ===============================
