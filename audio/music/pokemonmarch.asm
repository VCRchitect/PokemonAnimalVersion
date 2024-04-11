Music_PokemonMarch:
	channel_count 4
	channel 1, Music_PokemonMarch_Ch1
	channel 2, Music_PokemonMarch_Ch2
	channel 3, Music_PokemonMarch_Ch3
	channel 4, Music_PokemonMarch_Ch4

Music_PokemonMarch_Ch1:
	tempo 144
.mainloop:
	rest 16
	sound_loop 0, .mainloop

Music_PokemonMarch_Ch2:
.mainloop:
	rest 16
	sound_loop 0, .mainloop

Music_PokemonMarch_Ch3:
.mainloop:
	rest 16
	sound_loop 0, .mainloop

Music_PokemonMarch_Ch4:
	toggle_noise 5
	drum_speed 8
	sound_call .sub2
.mainloop:
	sound_call .sub1
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 5
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_speed 8
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub2
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 6
	drum_note 1, 2
	drum_speed 4
	rest 5
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 8
	sound_call .sub2
	sound_loop 0, .mainloop

.sub1:
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	sound_ret

.sub2:
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	sound_ret
