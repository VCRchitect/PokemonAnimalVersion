Music_BattleTowerLobby:
	channel_count 4
	channel 1, Music_BattleTowerLobby_Ch1
	channel 2, Music_BattleTowerLobby_Ch2
	channel 3, Music_BattleTowerLobby_Ch3
	channel 4, Music_BattleTowerLobby_Ch4

Music_BattleTowerLobby_Ch1:
	tempo 160
	volume 7, 7
	duty_cycle 2
	pitch_offset 2
	vibrato 16, 2, 2
	notetype 12, $a7
.mainloop:
;Bar 1
	octave 3
	volume_envelope 9, 7
	note C_, 2
	rest 4
	note E_, 2
	octave 2
	note G_, 2
	rest 4
	note B_, 2
;Bar 2
	octave 3
	note C_, 2
	rest 4
	note E_, 2
	octave 2
	note G_, 2
	note B_, 2
	rest 2
	octave 3
	note C_, 2
;Bar 3
	octave 2
	note A_, 2
	rest 4
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	rest 4
	note G_, 2
;Bar 4
	note A_, 2
	rest 4
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	note G_, 2
	rest 2
	note A_, 2
;Bar 5
	note F_, 2
	rest 4
	note A_, 2
	note C_, 2
	rest 4
	note E_, 2
;Bar 6
	note F_, 2
	rest 4
	note A_, 2
	note C_, 2
	note E_, 2
	rest 2
	note F_, 2
;Bar 7
	note G_, 2
	rest 4
	note B_, 2
	note D_, 2
	rest 4
	note F_, 2
;Bar 8
	note G_, 2
	rest 4
	note B_, 2
	note D_, 2
	note F_, 2
	rest 2
	note G_, 2
;Bar 9
	octave 3
	note C_, 6
	rest 2
	note D_, 2
	rest 2
	note E_, 2
	octave 2
	note G_, 2
;Bar 10
	rest 4
	note A_, 2
	note B_, 2
	rest 2
	octave 3
	note C_, 2
	rest 4
;Bar 11
	note E_, 6
	rest 2
	note F_, 4
	note E_, 2
	note D_, 12
;Bar 12
	rest 6
;Bar 13
	note G_, 6
	rest 2
	note E_, 4
	note A_, 2
	note G_, 10
;Bar 14
	note F_, 2
	rest 2
	note E_, 2
	rest 2
;Bar 15
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	note D_, 10
;Bar 16
	rest 2
	note C_, 2
	octave 2
	note A_, 2
	note B_, 2
;Bar 17
	octave 3
	note C_, 2
	rest 2
	note C_, 2
	rest 1
	octave 2
	note B_, 2
	rest 1
	note G_, 2
	note A_, 2
	rest 1
	note B_, 1
;Bar 18
	octave 3
	note C_, 2
	rest 2
	note C_, 2
	rest 1
	octave 2
	note B_, 2
	rest 1
	note G_, 2
	note D_, 2
	rest 2
;Bar 19
	note A_, 2
	rest 2
	note A_, 2
	rest 1
	note G_, 2
	rest 1
	note E_, 2
	note F_, 2
	rest 1
	note G_, 1
;Bar 20
	note A_, 2
	rest 2
	note A_, 2
	rest 1
	note G_, 2
	rest 1
	note E_, 2
	note G_, 2
	rest 2
;Bar 21
	note F_, 2
	rest 2
	note F_, 2
	rest 1
	note E_, 2
	rest 1
	note C_, 2
	note D_, 2
	rest 1
	note E_, 1
;Bar 22
	note F_, 2
	rest 2
	note F_, 2
	rest 1
	note E_, 2
	rest 1
	note C_, 2
	note D_, 2
	rest 2
;Bar 23
	note G_, 2
	rest 2
	note G_, 2
	rest 1
	note F_, 2
	rest 1
	note E_, 2
	note F_, 2
	rest 1
	note F_, 1
;Bar 24
	note G_, 2
	rest 2
	note G_, 2
	rest 1
	note F_, 2
	rest 1
	note D_, 2
	note C_, 2
	rest 2
;Bar 25
	octave 3
	note C_, 6
	rest 2
	note D_, 2
	rest 2
	note E_, 2
	octave 2
	note G_, 2
;Bar 26
	rest 4
	note A_, 2
	note B_, 2
	rest 2
	octave 3
	note C_, 2
	rest 4
;Bar 27
	note E_, 6
	rest 2
	note F_, 4
	note E_, 2
	note D_, 12
;Bar 28
	rest 6
;Bar 29
	note G_, 6
	rest 2
	note E_, 4
	note A_, 2
	note G_, 10
;Bar 30
	note F_, 2
	rest 2
	note E_, 2
	rest 2
;Bar 31
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	note D_, 10
;Bar 32
	rest 2
	note C_, 2
	octave 2
	note A_, 2
	note B_, 2
	sound_loop 0, .mainloop

Music_BattleTowerLobby_Ch2:
	duty_cycle 0
	notetype 12, $a7
	vibrato 16, 2, 3
.mainloop:
	octave 2
	note C_, 1
	rest 3
	note E_, 1
	rest 2
	note E_, 1
	rest 4
	note C_, 1
	rest 1
	note D_, 1
	rest 1
;Bar 2
	note G_, 1
	rest 3
	note E_, 1
	rest 2
	note E_, 1
	rest 4
	note D_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 3
	octave 1
	note A_, 1
	rest 3
	octave 2
	note C_, 1
	rest 2
	note C_, 1
	rest 4
	octave 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 4
	octave 2
	note E_, 1
	rest 3
	note C_, 1
	rest 2
	note C_, 1
	rest 4
	octave 1
	note B_, 1
	rest 1
	note A_, 1
	rest 1
;Bar 5
	note A_, 1
	rest 3
	octave 2
	note C_, 1
	rest 2
	note C_, 1
	rest 4
	octave 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 6
	octave 2
	note F_, 1
	rest 3
	note C_, 1
	rest 2
	note C_, 1
	rest 4
	octave 1
	note B_, 1
	rest 1
	note A_, 1
	rest 1
;Bar 7
	note B_, 1
	rest 3
	octave 2
	note D_, 1
	rest 2
	note D_, 1
	rest 4
	octave 1
	note B_, 1
	rest 1
	octave 2
	note C_, 1
	rest 1
;Bar 8
	note G_, 1
	rest 3
	note D_, 1
	rest 2
	note D_, 1
	rest 4
	note C_, 1
	rest 1
	note B_, 2
	sound_loop 0, .mainloop

Music_BattleTowerLobby_Ch3:
	notetype 12, $a7
	volume 7, 7
.mainloop:
	rest 2
	octave 3
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 3
;Bar 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 3
;Bar 3
	octave 2 ;WARNING: octave 2 isn't supported, won't work correctly
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 3
;Bar 4
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 2
	note A_, 1
	rest 3
;Bar 5
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 3
;Bar 6
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 2
	note F_, 1
	rest 3
;Bar 7
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 3
;Bar 8
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 3
	sound_loop 0, .mainloop

Music_BattleTowerLobby_Ch4:
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 2
	drum_note 8, 2	
	drum_note 3, 2
	drum_note 8, 2
	drum_note 8, 2	
	drum_note 11, 2
	drum_note 3, 2
	drum_note 8, 2	
	sound_loop 0, .mainloop