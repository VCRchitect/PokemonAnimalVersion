;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_TitleScreen:
	channel_count 4
	channel 1, Music_TitleScreen_Ch1
	channel 2, Music_TitleScreen_Ch2
	channel 3, Music_TitleScreen_Ch3
	channel 4, Music_TitleScreen_Ch4


Music_TitleScreen_Ch1:
	volume $77
	dutycycle $1
	notetype 12, $a7
	tempo 143
	vibrato 0, 3, 3

.mainloop:
;Bar 1
	octave 3
	note C_, 2
	note F_, 2
	note D#, 4
	note G_, 2
	note __, 2
	note G#, 2
	note G_, 2
;Bar 2
	note __, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note __, 2
	note D_, 2
	note __, 2
;Bar 3
	note C_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note __, 2
	note D_, 2
	note __, 2
	note D#, 2
	note D_, 10
;Bar 4
	note __, 8
;Bar 5
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note A#, 4
	octave 3
	note D_, 2
	note __, 2
	note D#, 2
	note D_, 2
;Bar 6
	note __, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 2
	note C_, 2
	note __, 2
	octave 2
	note A#, 2
	note __, 2
;Bar 7
	octave 3
	note D#, 2
	note D_, 2
	note C_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note __, 2
	note D_, 2
	note C_, 10
;Bar 8
	note __, 8
;Bar 9
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
;Bar 10
	note D_, 2
	octave 2
	note A#, 2
	note __, 2
	note G_, 10
;Bar 11
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
;Bar 12
	note __, 8
;Bar 13
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
;Bar 14
	note D_, 2
	note D#, 2
	note __, 2
	note F_, 10
;Bar 15
	note D_, 2
	note D#, 2
	note __, 2
	note D_, 2
	note __, 2
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note C_, 12
;Bar 16
	note __, 6
;Bar 17
	note A#, 2
	note __, 2
	note A#, 2
	note A_, 2
	note __, 2
	note F_, 2
	note __, 2
	note D_, 2
;Bar 18
	note F_, 2
	note G_, 2
	note D_, 2
	note F_, 8
	note __, 2
;Bar 19
	note A#, 2
	note __, 2
	note A#, 2
	note A_, 2
	note __, 2
	note F_, 2
	note __, 2
	note G_, 6
;Bar 20
	note __, 12
;Bar 21
	note A#, 2
	note __, 2
	note A#, 2
	note A_, 2
	note __, 2
	note F_, 2
	note __, 2
	note D_, 2
;Bar 22
	note F_, 2
	note G_, 4
	note A_, 8
	note __, 2
;Bar 23
	note A#, 2
	note __, 2
	note A#, 2
	note A_, 2
	note __, 2
	note A#, 2
	note __, 2
	octave 4
	note C_, 10
;Bar 24
	note __, 8
;Bar 25
	octave 3
	note A#, 2
	note A_, 2
	note F_, 2
	note D_, 2
	note __, 8
;Bar 26
	note G_, 2
	note F_, 2
	note D_, 2
	note C_, 2
	note __, 8
;Bar 27
	note G_, 2
	note F_, 2
	note D_, 2
	note C_, 2
	note __, 2
	note F_, 2
	note __, 4
;Bar 28
	note G_, 2
	note F_, 2
	note __, 2
	note G_, 10

	sound_loop 0, .mainloop

Music_TitleScreen_Ch2:
	dutycycle $1
	notetype 12, $a7
	vibrato 0, 6, 6
.mainloop:

;Bar 1
	octave 2
	note F_, 2
	note __, 2
	note G_, 2
	note D#, 2
	note C_, 2
	note __, 2
	note D#, 2
	octave 1
	note A#, 2
;Bar 2
	note __, 6
	octave 2
	note C_, 2
	note __, 4
	octave 1
	note A#, 2
	note __, 2
;Bar 3
	octave 2
	note F_, 2
	note __, 2
	note F_, 2
	note D#, 2
	note D_, 2
	octave 1
	note A#, 2
	note __, 2
	octave 2
	note C_, 2
;Bar 4
	note __, 16
;Bar 5
	note C_, 2
	note __, 2
	note D_, 2
	octave 1
	note A#, 2
	note G_, 2
	note __, 2
	note A#, 2
	note F_, 2
;Bar 6
	note __, 6
	note G_, 2
	note __, 4
	note F_, 2
	note __, 2
;Bar 7
	octave 2
	note C_, 2
	note __, 2
	note C_, 2
	octave 1
	note A#, 2
	note A_, 2
	note F_, 2
	note __, 2
	note G_, 2
;Bar 8
	note __, 16
;Bar 9
	octave 2
	note C_, 2
	note __, 4
	octave 1
	note A#, 2
	note __, 4
	note G_, 2
	note __, 2
;Bar 10
	octave 2
	note C_, 2
	note __, 4
	note D_, 2
	note __, 8
;Bar 11
	note C_, 2
	note __, 4
	note D#, 2
	note __, 4
	note D_, 2
	note __, 2
;Bar 12
	note F_, 2
	note __, 14
;Bar 13
	note C_, 2
	note __, 4
	octave 1
	note A#, 2
	note __, 4
	note G_, 2
	note __, 2
;Bar 14
	octave 2
	note C_, 2
	note __, 4
	note D_, 2
	note __, 8
;Bar 15
	note C_, 2
	note __, 4
	note D#, 2
	note __, 4
	note D_, 2
	note __, 2
;Bar 16
	note C_, 2
	note __, 14
;Bar 17
	note F_, 2
	note __, 4
	note G_, 2
	note __, 4
	note D#, 2
	note __, 2
;Bar 18
	octave 1
	note A#, 2
	note __, 14
;Bar 19
	octave 2
	note F_, 2
	note __, 4
	note G_, 2
	note __, 4
	note A#, 2
	note __, 2
;Bar 20
	note D#, 2
	note __, 4
	note D_, 2
	note __, 8
;Bar 21
	note F_, 2
	note __, 4
	note G_, 2
	note __, 4
	note D#, 2
	note __, 2
;Bar 22
	octave 1
	note A#, 2
	note __, 4
	octave 2
	note C_, 2
	note __, 8
;Bar 23
	note F_, 2
	note __, 4
	note G_, 2
	note __, 4
	note F_, 2
	note __, 2
;Bar 24
	note G_, 2
	note __, 14
;Bar 25
	note A#, 2
	note __, 2
	note A#, 2
	note __, 4
	note A_, 2
	note __, 4
;Bar 26
	note G_, 2
	note __, 2
	note G_, 2
	note __, 4
	note F_, 2
	note __, 4
;Bar 27
	note G_, 2
	note __, 2
	note G_, 2
	note __, 2
	note D_, 2
	note F_, 2
	note __, 2
	note G_, 16
	note G_, 2

	sound_loop 0, .mainloop

Music_TitleScreen_Ch3:
	note_type 12, 2, 6
.mainloop:
;Bar 1
	octave 2
	note C_, 2
	note G_, 2
	note A#, 2
	note __, 2
	octave 2
	note C_, 2
	note __, 2
	octave 1
	note A#, 2
	note G_, 2
;Bar 2
	note __, 2
	note F_, 2
	note __, 2
	note D#, 2
	note C_, 2
	note __, 2
	note D#, 2
	note __, 2
	sound_loop 0, .mainloop

Music_TitleScreen_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 3, 4
	sound_loop 0, .mainloop
; ============================================================================================================
