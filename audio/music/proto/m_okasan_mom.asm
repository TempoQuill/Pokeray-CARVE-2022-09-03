Okasan:
; wav
	channel_count 3
	channel 1, Okasan_Ch1
	channel 2, Okasan_Ch2
	channel 3, Okasan_Ch3

Okasan_Ch1:
	tempo 265
	volume 7
	duty_cycle 2
	note_type 12, 10, 1
	rest 4
.mainloop:
	octave 3
	note E_, 1
	note C#, 3
	note F#, 1
	note D_, 3
	note E_, 1
	note C#, 3
	note D_, 1
	note D_, 3
	sound_jump .mainloop

Okasan_Ch2:
	duty_cycle 3
	note_type 3, 13, 2
	octave 2
	note E_, 1
	octave 1
	note B_, 1
	note G#, 1
	note F#, 1
	note E_, 8
.mainloop:
	note A_, 4
	sound_call .sub1
	octave 2
	note C#, 4
	note D_, 4
	sound_call .sub1
	octave 2
	note D_, 4
	note C#, 4
	sound_call .sub1
	octave 2
	note D_, 4
	note E_, 4
	transpose 1, 11
	sound_call .sub1
	transpose 0, 0
	octave 1
	note E_, 4
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	octave 3
	note A_, 4
	note A_, 4
	duty_cycle 3
	sound_ret

Okasan_Ch3:
	note_type 3, 1, -6
	octave 4
	note B_, 1
	octave 5
	note E_, 1
	note G#, 1
	note A_, 1
	note B_, 2
	volume_envelope 2, -6
	note B_, 2
	volume_envelope 3, -6
	note B_, 2
	rest 6
.mainloop:
	volume_envelope 1, -4
	octave 4
	note C#, 2
	rest 2
	note E_, 2
	rest 6
	note D_, 2
	rest 2
	note F#, 2
	rest 6
	note C#, 2
	rest 2
	note E_, 2
	rest 6
	note E_, 2
	rest 2
	note E_, 2
	rest 6
	sound_jump .mainloop
