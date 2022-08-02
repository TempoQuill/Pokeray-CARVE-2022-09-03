Tour:
; wav
	channel_count 3
	channel 1, Tour_Ch1
	channel 2, Tour_Ch2
	channel 3, Tour_Ch3
	channel 4 ; gen 1 and 2 both had channel 4 in their tour music

Tour_Ch1:
	tempo 265
	volume 7
	note_type 6, 0, 0
	rest 16
.mainloop:
	duty_cycle 1
	vibrato 0, 0, 0
	volume_envelope 10, 2
	octave 3
	note G#, 1
	rest 1
	note B_, 1
	rest 1
	note G#, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note G#, 1
	note E_, 1
	octave 2
	note B_, 1
	note G#, 1
	rest 6
	volume_envelope 10, 1
	sound_call .sub1
	note E_, 6
	sound_call .sub1
	note E_, 4
	sound_call .sub2
	note A_, 4
	octave 5
	note E_, 2
	octave 4
	note A_, 2
	note A_, 4
	note B_, 2
	note G#, 2
	note G#, 4
	sound_call .sub2
	note A_, 2
	octave 5
	note E_, 2
	octave 4
	note B_, 2
	note G#, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note C#, 2
	note C#, 6
	sound_call .sub1
	duty_cycle 0
	note E_, 1
	note A_, 1
	octave 4
	note C#, 1
	note D_, 1
	vibrato 16, 5, 5
	volume_envelope 10, 7
	note E_, 16
	sound_jump .mainloop

.sub1:
	octave 3
	note E_, 2
	note C#, 6
	note F#, 2
	note D_, 6
	note E_, 2
	note C#, 6
	note D_, 2
	note D_, 6
	note E_, 2
	note C#, 6
	note F#, 2
	note D_, 6
	note G#, 4
	note E_, 4
	note E_, 2
	sound_ret

.sub2:
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note A_, 4
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	sound_ret

Tour_Ch2:
	duty_cycle 1
	note_type 6, 13, 1
	octave 4
	note G#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	duty_cycle 3
	note E_, 4
	octave 2
	note B_, 4
	note E_, 4
	octave 1
	note E_, 1
	note F#, 1
	note G#, 1
	note B_, 1
	sound_call .sub2
	note C#, 2
	sound_call .sub1
	note C#, 2
	sound_call .sub3
	octave 2
	note D_, 2
	note C#, 2
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note E_, 2
	note C#, 2
	duty_cycle 3
	volume_envelope 13, 1
	octave 2
	note D_, 2
	note E_, 2
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note D_, 2
	note D_, 2
	volume_envelope 13, 1
	sound_call .sub3
	octave 2
	note D#, 2
	note E_, 2
	duty_cycle 3
	volume_envelope 10, 1
	octave 3
	note G#, 2
	duty_cycle 1
	volume_envelope 13, 1
	octave 1
	note E_, 2
	duty_cycle 3
	volume_envelope 10, 1
	octave 3
	note E_, 2
	duty_cycle 1
	volume_envelope 13, 1
	octave 1
	note A_, 2
	duty_cycle 3
	volume_envelope 10, 1
	octave 3
	note E_, 2
	note E_, 2
	volume_envelope 13, 1
	sound_call .sub1
	note C#, 4
	sound_jump Tour_Ch2

.sub1:
	duty_cycle 3
	octave 1
	note E_, 2
.sub2:
	note A_, 2
	duty_cycle 1
	octave 3
	note A_, 2
	note A_, 2
	duty_cycle 3
	octave 2
	note C#, 2
	note D_, 2
	duty_cycle 1
	octave 3
	note A_, 2
	note A_, 2
	duty_cycle 3
	octave 2
	note D_, 2
	note C#, 2
	duty_cycle 1
	octave 3
	note A_, 2
	note A_, 2
	duty_cycle 3
	octave 2
	note D_, 2
	note E_, 2
	duty_cycle 1
	octave 3
	note G#, 2
	note G#, 2
	duty_cycle 3
	octave 1
	note E_, 2
	note A_, 2
	duty_cycle 1
	octave 3
	note A_, 2
	note A_, 2
	duty_cycle 3
	octave 2
	note C#, 2
	note D_, 2
	duty_cycle 1
	octave 3
	note A_, 2
	note A_, 2
	duty_cycle 3
	octave 2
	note D#, 2
	note E_, 2
	duty_cycle 1
	octave 3
	note B_, 2
	duty_cycle 3
	octave 1
	note E_, 2
	duty_cycle 1
	octave 3
	note B_, 2
	duty_cycle 3
	octave 1
	note A_, 2
	duty_cycle 1
	octave 4
	note C#, 2
	sound_ret

.sub3:
	duty_cycle 3
	octave 1
	note E_, 2
	note A_, 2
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note E_, 2
	note C#, 2
	duty_cycle 3
	volume_envelope 13, 1
	octave 2
	note C#, 2
	note D_, 2
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note F#, 2
	note D_, 2
	duty_cycle 3
	volume_envelope 13, 1
	sound_ret

Tour_Ch3:
	note_type 6, 1, -6
	octave 6
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 5
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	note F#, 1
	note G#, 1
	note B_, 1
	octave 6
	note E_, 1
	rest 9
	sound_call .sub1
.loop1:
	sound_call .sub3
	note F#, 1
	rest 1
	note A_, 1
	rest 3
	sound_call .sub3
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note G#, 2
	sound_call .sub3
	note F#, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	sound_call .sub2
	sound_loop 2, .loop1
	rest 2
	sound_call .sub1
	sound_jump Tour_Ch3

.sub1:
	volume_envelope 1, -4
	octave 4
	note C#, 1
	rest 1
	note E_, 1
	rest 5
	note D_, 1
	rest 1
	note F#, 1
	rest 5
	note C#, 1
	rest 1
	note E_, 1
	rest 5
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	note C#, 1
	rest 1
	note E_, 1
	rest 5
	note D_, 1
	rest 1
	note F#, 1
	rest 5
	note E_, 1
	rest 3
	note G#, 1
	rest 3
.sub2:
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	sound_ret

.sub3:
	volume_envelope 1, 2
	octave 4
	note A_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	note E_, 1
	rest 3
	note D_, 1
	rest 1
	sound_ret
