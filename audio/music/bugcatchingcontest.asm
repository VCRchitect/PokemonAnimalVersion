Music_BugCatchingContest:
	channel_count 4
	channel 1, Music_BugCatchingContest_Ch1
	channel 2, Music_BugCatchingContest_Ch2
	channel 3, Music_BugCatchingContest_Ch3
	channel 4, Music_BugCatchingContest_Ch4

Music_BugCatchingContest_Ch1:
	tempo 128
	duty_cycle 1
	notetype 12, $a7
.mainloop:
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 8
;Bar 2
	octave 3
	note A_, 12
;Bar 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	note B_, 16
	note B_, 4
;Bar 5
	octave 4
	note D_, 4
	note C#, 4
	note D_, 4
	note A_, 8
;Bar 6
	note F#, 4
	note E_, 8
;Bar 7
	note D_, 4
	note E_, 4
	note C#, 4
	note D_, 16
	note D_, 4
;Bar 9
	note F#, 4
	note A_, 4
	note F#, 4
	octave 5
	note C#, 8
;Bar 10
	octave 4
	note B_, 4
	note A_, 4
	note F#, 4
;Bar 11
	octave 5
	note C#, 4
	note D_, 4
	note C#, 4
	octave 4
	note A_, 16
	note A_, 4
;Bar 13
	note E_, 4
	note F#, 4
	note E_, 4
	note A_, 8
;Bar 14
	note B_, 4
	note A_, 4
	note F#, 4
;Bar 15
	note A_, 4
	note F#, 4
	note E_, 4
	note A_, 16
	note A_, 4
;Bar 17
	note A_, 4
	note F#, 4
	note E_, 4
	note D_, 4
;Bar 18
	note A_, 4
	note F#, 4
	note E_, 4
	note D_, 4
;Bar 19
	note E_, 4
	note F#, 4
	note E_, 4
	note F#, 16
	note F#, 4
;Bar 21
	note E_, 4
	note F#, 4
	note A_, 4
	note F#, 4
;Bar 22
	note E_, 4
	note F#, 4
	note A_, 4
	note F#, 4
;Bar 23
	note B_, 4
	octave 5
	note C#, 4
	octave 4
	note B_, 4
	note A_, 16
	note A_, 4
;Bar 25
	note D_, 4
	note C#, 4
	note D_, 4
	note G_, 8
;Bar 26
	note F#, 4
	note E_, 8
;Bar 27
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 8
;Bar 28
	note F#, 4
	note D_, 8
;Bar 29
	note D_, 4
	note E_, 4
	note F#, 4
	note E_, 8
;Bar 30
	note F#, 4
	note A_, 8
;Bar 31
	note B_, 4
	note A_, 4
	note F#, 4
	note A_, 8
;Bar 32
	note F#, 4
	note E_, 8
;Bar 33
	note D_, 4
	note C#, 4
	note D_, 4
	note G_, 8
;Bar 34
	note F#, 4
	note E_, 8
;Bar 35
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 8
;Bar 36
	note F#, 4
	note D_, 8
;Bar 37
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note E_, 8
;Bar 38
	note D_, 4
	note E_, 8
;Bar 39
	note F#, 4
	note E_, 4
	note C#, 4
	note D_, 16
	note D_, 4
;Bar 41
	note A_, 4
	note F#, 4
	note E_, 4
	note D_, 4
;Bar 42
	note A_, 4
	note F#, 4
	note E_, 4
	note D_, 4
;Bar 43
	note E_, 4
	note F#, 4
	note E_, 4
	note F#, 16
	note F#, 4
;Bar 45
	note E_, 4
	note F#, 4
	note A_, 4
	note F#, 4
;Bar 46
	note E_, 4
	note F#, 4
	note A_, 4
	note F#, 4
;Bar 47
	note B_, 4
	octave 5
	note C#, 4
	octave 4
	note B_, 4
	note A_, 16
	note A_, 4
	sound_loop 0, .mainloop

Music_BugCatchingContest_Ch2:
	duty_cycle 2
	vibrato 32, 8, 2
	notetype 12, $a7
.mainloop:
	octave 2
	note D_, 8
	octave 3
	note D_, 8
;Bar 2
	note C#, 8
	octave 2
	note B_, 4
	octave 3
	note C#, 8
;Bar 3
	octave 2
	note A_, 12
;Bar 4
	note F#, 8
	note E_, 8
;Bar 5
	note A_, 4
	note B_, 4
	note A_, 4
	note F#, 4
;Bar 6
	note A_, 8
	note F#, 4
	note B_, 8
;Bar 7
	octave 3
	note C#, 4
	octave 2
	note A_, 4
	note F#, 4
	sound_loop 0, .mainloop

Music_BugCatchingContest_Ch3:
	note_type 12, 2, 7
.mainloop:
	octave 1
	note D_, 4
	note A_, 4
	note A_, 4
	note D_, 2
	note A_, 4
;Bar 2
	note A_, 2
	note D_, 2
	note A_, 4
	note D_, 2
	note A_, 4
;Bar 3
	note D_, 4
	note B_, 4
	note B_, 4
	note D_, 2
	note B_, 4
;Bar 4
	note B_, 2
	note D_, 2
	note B_, 4
	note D_, 2
	note B_, 4
;Bar 5
	note D_, 4
	note A_, 4
	note A_, 4
	note D_, 2
	note A_, 4
;Bar 6
	note A_, 2
	note D_, 2
	note A_, 4
	note D_, 2
	note A_, 4
;Bar 7
	note C#, 4
	note A_, 4
	note A_, 4
	note C#, 2
	note A_, 4
;Bar 8
	note A_, 2
	note C#, 2
	note A_, 4
	note C#, 2
	sound_loop 0, .mainloop

Music_BugCatchingContest_Ch4:
	volume $77
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 2
	drum_note 3, 4
	sound_loop 0, .mainloop
