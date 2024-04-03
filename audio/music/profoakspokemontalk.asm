Music_ProfOaksPokemonTalk:
	channel_count 4
	channel 1, Music_ProfOaksPokemonTalk_Ch1
	channel 2, Music_ProfOaksPokemonTalk_Ch2
	channel 3, Music_ProfOaksPokemonTalk_Ch3
	channel 4, Music_ProfOaksPokemonTalk_Ch4


Music_ProfOaksPokemonTalk_Ch1:
	tempo 164
	vibrato 0, 2, 6
	volume $77
	dutycycle $2
	notetype 12, $a7
	octave 2
	note C_, 2
	note D_, 2
	note D#, 2
	note E_, 2
	note G_, 2
	note A_, 2
	octave 3
	note C_, 2
	note G_, 2		
.mainloop:
;;Bar 1
	octave 2
	note A_, 2
	note __, 2
	note A_, 2
	note G_, 2
	note A_, 2
	octave 3
	note C_, 2
	note __, 2
	note D_, 4
;Bar 2
	note D#, 2
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note G_, 2
	note A_, 2
	note G_, 2
;Bar 3
	note A_, 2
	note __, 2
	note E_, 2
	note G_, 4
	note A_, 2
	note __, 2
	note A_, 2
;Bar 4
	note __, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	octave 1
	note A_, 4
	note __, 2
;Bar 5
	octave 3
	note C_, 2
	note __, 2
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note D_, 2
	note __, 2
	note E_, 4
;Bar 6
	note D#, 2
	note D_, 2
	note D#, 2
	note C_, 2
	octave 2
	note A_, 2
	note G_, 2
	note A_, 2
;Bar 7
	note A_, 2
	note __, 4
	note E_, 2
	note G_, 2
	note A_, 2
	note __, 2
	octave 3
	note C_, 2
;Bar 8
	note __, 2
	note C_, 2
	octave 2
	note A_, 2
	note E_, 2
	note G_, 2
	note A_, 6
	sound_loop 0, .mainloop

Music_ProfOaksPokemonTalk_Ch2:
	volume $44
	dutycycle $2
	notetype 12, $a7
.mainloop
;Bar 1
	octave 2
	intensity $97
	note C_, 1
	note __, 3
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 2
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note A_, 1
	note __, 3
	note A_, 1
	note __, 2
	note A_, 1
	note __, 2
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
;Bar 3
	octave 2
	note C_, 1
	note __, 3
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
;Bar 4
	note D_, 1
	note __, 3
	note D_, 1
	note __, 2
	note D_, 1
	note __, 2
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 5
	note C_, 1
	note __, 3
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 6
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note A_, 1
	note __, 3
	note A_, 1
	note __, 2
	note A_, 1
	note __, 2
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
;Bar 7
	octave 2
	note C_, 1
	note __, 3
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
;Bar 8
	note D_, 1
	note __, 3
	note D_, 1
	note __, 2
	note D_, 1
	note __, 2
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 2
	sound_loop 0, .mainloop

Music_ProfOaksPokemonTalk_Ch3:
	note_type 12, 7, 6
.mainloop:
;Bar 1
	octave 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 2
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 3
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 4
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 5
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 6
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 7
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 8
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note __, 1
	note D_, 1
	note __, 1
	note D_, 2
	sound_loop 0, .mainloop

Music_ProfOaksPokemonTalk_Ch4:
	volume $77
	toggle_noise 4
	drum_speed 12
.mainloop:
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 4
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 4
	sound_loop 0, .mainloop