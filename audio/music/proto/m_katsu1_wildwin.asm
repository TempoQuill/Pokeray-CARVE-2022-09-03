Katsu1:
; engine, wav
	channel_count 3
	channel 1, Katsu1_Ch1
	channel 2, Katsu1_Ch2
	channel 3, Katsu1_Ch3

Katsu12:
; engine, wav
	channel_count 3
	channel 1, Katsu12_Ch1
	channel 2, Katsu12_Ch2
	channel 3, Katsu12_Ch3

Katsu1_Ch1:
	tempo 251
	volume 7
	pitch_inc_switch
	duty_cycle 3
	vibrato 6, 3, 2
	note_type 6, 10, 1
	octave 4
	note E_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	octave 5
	note D#, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	rest 3
Katsu12_Ch1:
	tempo 251
	volume 7
	pitch_inc_switch
	duty_cycle 3
	vibrato 6, 3, 2
.mainloop:
	sound_call .sub2
	sound_call .sub1
	note G#, 4
	transpose 0, 1
	volume_envelope 10, 5
	octave 3
	note D#, 4
	sound_call .sub2
	sound_call .sub1
	note G#, 4
	transpose 0, 0
	volume_envelope 10, 5
	octave 3
	note D#, 4
	sound_jump .mainloop

.sub1:
	note F#, 2
	note F#, 2
	note F#, 2
	octave 3
	note F#, 2
.sub2:
	note_type 6, 10, 1
	octave 3
	note G#, 1
	note B_, 1
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note G#, 2
	note E_, 2
	note E_, 1
	note A_, 1
	octave 4
	note C#, 2
	note E_, 2
	note A_, 2
	sound_ret

Katsu1_Ch2:
	duty_cycle 2
	vibrato 15, 3, 4
	note_type 6, 10, 1
	octave 4
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	volume_envelope 12, 6
	note B_, 12
Katsu12_Ch2:
	duty_cycle 2
	vibrato 15, 9, 4
.mainloop:
	note_type 6, 12, 5
	sound_call .sub2
	sound_call .sub1
	note E_, 2
	rest 2
	transpose 0, 1
	volume_envelope 12, 7
	octave 1
	note B_, 4
	sound_call .sub2
	sound_call .sub1
	note E_, 2
	rest 2
	transpose 0, 0
	volume_envelope 12, 7
	octave 1
	note B_, 4
	sound_jump .mainloop

.sub1:
	note D#, 2
	note C#, 2
	octave 1
	note B_, 3
	rest 1
.sub2:
	octave 2
	note E_, 2
	rest 4
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	note C#, 2
	rest 4
	note C#, 2
	sound_ret

Katsu1_Ch3:
	vibrato 9, 4, 6
	note_type 3, 1, 7
	octave 4
	note B_, 1
	volume_envelope 2, 7
	note B_, 1
	volume_envelope 1, 7
	note A_, 1
	volume_envelope 2, 7
	note A_, 1
	volume_envelope 1, 7
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
	volume_envelope 1, 7
	note F#, 1
	volume_envelope 2, 7
	note F#, 1
	volume_envelope 1, 7
	note E_, 8
	volume_envelope 2, 7
	note E_, 8
	volume_envelope 3, 7
	note E_, 8
Katsu12_Ch3:
	vibrato 9, 4, 6
	sound_call .sub2
	sound_call .sub1
	transpose 0, 1
	rest 3
	volume_envelope 1, 4
	octave 3
	note F#, 4
	sound_call .sub2
	sound_call .sub1
	transpose 0, 0
	rest 3
	volume_envelope 1, 4
	octave 3
	note F#, 4
	sound_jump .mainloop

.sub1:
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 3
.sub2:
	note_type 6, 1, -3
	octave 5
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 3
	octave 6
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 3
	octave 5
	note B_, 1
	sound_ret
