;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_JohtoTrainerBattle:
	channel_count 4
	channel 1, Music_JohtoTrainerBattle_Ch1
	channel 2, Music_JohtoTrainerBattle_Ch2
	channel 3, Music_JohtoTrainerBattle_Ch3
	channel 4, Music_JohtoTrainerBattle_Ch4

Music_JohtoTrainerBattle_Ch1:
	volume $77
	dutycycle $1
	notetype 12, $a7
	tempo 120
	octave 4
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	octave 4
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
;Bar 2
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note A#, 1
	note A_, 1
.mainloop:
;Bar 1
	octave 2
	note E_, 6
	note G_, 2
	note B_, 12
;Bar 2
	note A_, 4
	note B_, 4
	octave 3
	note C_, 4
;Bar 3
	octave 2
	note B_, 6
	note A_, 2
	note F#, 16
	note F#, 8
;Bar 5
	note E_, 6
	note G_, 2
	note B_, 12
;Bar 6
	note A_, 4
	note B_, 4
	octave 3
	note C_, 4
;Bar 7
	note D_, 6
	note C_, 2
	octave 2
	note B_, 16
	note B_, 8
;Bar 9
	octave 3
	note E_, 6
	octave 2
	note B_, 2
	octave 3
	note D_, 12
;Bar 10
	note E_, 4
	note F#, 4
	note D_, 4
;Bar 11
	octave 2
	note B_, 16
	note B_, 16
;Bar 13
	note A_, 6
	note F#, 2
	note A_, 12
;Bar 14
	octave 3
	note F#, 4
	note G_, 4
	note F#, 4
;Bar 15
	note E_, 16
	note E_, 12
;Bar 16
	rest 4
;Bar 17
	octave 3
	note B_, 6
	note G_, 2
	note E_, 4
	note G_, 2
	note E_, 2
;Bar 18
	rest 2
	note E_, 2
	note D_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
;Bar 19
	octave 2
	note B_, 6
	note G_, 2
	note E_, 4
	note G_, 2
	note E_, 2
;Bar 20
	rest 2
	note D_, 2
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note B_, 2
	octave 2
	note D_, 2
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note B_, 2
	rest 2
	octave 2
	note D_, 2
	rest 2
;Bar 21
	octave 3
	note A_, 6
	note F#, 2
	note D_, 4
	note F#, 2
	note E_, 2
;Bar 22
	rest 2
	note E_, 2
	note D_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
;Bar 23
	note G_, 6
	note F#, 2
	note E_, 4
	note E_, 2
	note D_, 2
;Bar 24
	rest 2
	note D_, 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note D_, 2
	rest 2
;Bar 25
	note G_, 2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
;Bar 26
	rest 2
	note E_, 2
	note D_, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
;Bar 27
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	note A_, 2
	note B_, 2
	rest 2
	note A_, 2
	note B_, 2
;Bar 28
	rest 2
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note D_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
;Bar 29
	octave 3
	note G_, 2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
;Bar 30
	rest 2
	note E_, 2
	note D_, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
;Bar 31
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note B_, 2
;Bar 32
	rest 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
;Bar 33
	octave 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 4
	note A_, 12
;Bar 34
	rest 2
	note B_, 2
	rest 2
	note B_, 2
;Bar 35
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	note A_, 2
	note B_, 16
	note B_, 5
;Bar 36
	rest 5
;Bar 37
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 4
	note A_, 12
;Bar 38
	rest 2
	note B_, 2
	rest 2
	note B_, 2
;Bar 39
	note A_, 2
	note F#, 2
	note G_, 2
	note F#, 16
	note F#, 5
;Bar 40
	rest 5
;Bar 41
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note E_, 10
;Bar 42
	note F#, 4
	note G_, 4
	note F#, 4
	note D_, 16
	note D_, 10
;Bar 44
	rest 8
;Bar 45
	octave 2
	note B_, 2
	note A_, 2
	note F#, 2
	note G_, 2
	note A_, 10
;Bar 46
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 16
	note E_, 16
	note E_, 2
	sound_loop 0, .mainloop

Music_JohtoTrainerBattle_Ch2:
	dutycycle $0
	notetype 12, $a7
	volume $33
	octave 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 1
	note A#, 2
	note A_, 2
;Bar 2
	octave 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 1
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
.mainloop:
	octave 1
	note B_, 8
	note B_, 8
	note B_, 8
	note B_, 8
;Bar 3
	note C#, 8
	note C#, 8
	note C#, 8
	note C#, 8
;Bar 5
	note B_, 8
	note B_, 8
	note B_, 8
	note B_, 8
;Bar 7
	note C#, 8
	note C#, 8
	note C#, 8
	note C#, 8
;Bar 9
	note D_, 8
	note D_, 8
	note D_, 8
	note D_, 8
;Bar 11
	note C#, 8
	note C#, 8
	note C#, 8
	note C#, 8
;Bar 13
	note C#, 8
	note C#, 8
	note C#, 8
	note C#, 8
;Bar 15
	note D_, 8
	note D_, 8
	note D_, 8
	note D_, 8
	sound_loop 0, .mainloop

Music_JohtoTrainerBattle_Ch3:
	note_type 12, 2, 6
	volume $55
	octave 1
	note A_, 4
	octave 2
	note A_, 4
	octave 1
	note A_, 4
	octave 2
	note A_, 4
;Bar 2
	octave 1
	note A_, 4
	octave 2
	note A_, 4
	octave 1
	note A_, 4
	octave 2
	note A_, 4
.mainloop:
	octave 1
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
;Bar 2
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
;Bar 3
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 4
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 5
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
;Bar 6
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
;Bar 7
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 8
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 9
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
;Bar 10
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
;Bar 11
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 12
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 13
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 14
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
;Bar 15
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
;Bar 16
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	sound_loop 0, .mainloop

Music_JohtoTrainerBattle_Ch4:
	toggle_noise 4
	drum_speed 12
	volume $77
.mainloop:
	drum_note 4, 2
	drum_note 8, 2
	drum_note 3, 2
	drum_note 8, 2
	sound_loop 0, .mainloop
; ============================================================================================================
