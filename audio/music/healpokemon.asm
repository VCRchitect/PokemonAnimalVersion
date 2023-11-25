Music_HealPokemon:
	channel_count 4
	channel 1, Music_HealPokemon_Ch1
	channel 2, Music_HealPokemon_Ch2
	channel 3, Music_HealPokemon_Ch3
	channel 4, Music_HealPokemon_Ch4

Music_HealPokemon_Ch1:
	tempo 144
	volume 7, 7
	duty_cycle 0
	pitch_offset 1
	note_type 12, 8, 1
	octave 3
	note E_, 1
	rest 2
	note E_, 1
	rest 2
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 2
	sound_ret

Music_HealPokemon_Ch2:
	duty_cycle 1
	note_type 12, 12, 3
	volume 7, 7
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	note E_, 1
	rest 1
	octave 1
	note B_, 1
	rest 1
	octave 2
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 2
	sound_ret

Music_HealPokemon_Ch3:
	note_type 12, 1, 0
;Bar 1
	octave 2
	volume 7, 7
	note B_, 1
	rest 2
	note B_, 1
	rest 2
	note B_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 2
	sound_ret

Music_HealPokemon_Ch4:
	toggle_noise 4
	drum_speed 12
	volume $77
	drum_note 4, 2
	drum_note 8, 2
	drum_note 3, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 3, 2
	drum_note 8, 2
	sound_ret