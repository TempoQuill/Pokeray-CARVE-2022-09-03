YDemo:
	channel_count 3
	channel 1, YDemo_Ch1
	channel 2, YDemo_Ch2
	channel 3, YDemo_Ch3

YDemo_Ch1:
	tempo 267
	volume 7
	pitch_offset -1
	duty_cycle 3
	note_type 6, 10, 3
	octave 3
	note G#, 4
	note F#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note B_, 4
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	octave 4
	note E_, 9
	octave 3
	note G_, 1
	note G#, 2
	note G#, 2
	note B_, 2
	note B_, 1
	note A#, 1
	note B_, 10
	octave 4
	note E_, 1
	note D#, 1
	note E_, 6
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 4
	note G#, 2
	note E_, 2
	note A#, 4
	note G_, 4
	note E_, 4
	note C#, 4
	note C#, 4
	octave 2
	note B_, 4
	note A_, 4
	note B_, 4
	octave 3
	note E_, 1
	octave 2
	note A_, 1
	note G#, 1
	note B_, 1
	octave 3
	note E_, 2
	note G#, 2
	note E_, 6
	note G#, 2
	note B_, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note A_, 4
	note F#, 4
	note A_, 4
	note G#, 2
	note A_, 2
	note G#, 2
	note B_, 2
	note E_, 2
	octave 2
	note B_, 3
	octave 3
	note A#, 1
	note B_, 2
	note E_, 2
	note D#, 2
	note B_, 2
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 2
	note C#, 2
	note E_, 4
	note E_, 3
	note E_, 1
	note F#, 2
	note F#, 2
	note E_, 2
	note F#, 1
.loop1:
	note F_, 1
	note F#, 4
	octave 3
	note B_, 1
	note A#, 1
	note B_, 4
	octave 4
	note F#, 1
	sound_loop 2, .loop1
	note F_, 1
	note F#, 4
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 1
	volume_envelope 10, 1
	note G#, 4
	sound_ret

YDemo_Ch2:
	duty_cycle 2
	note_type 6, 10, 2
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note C#, 2
	note D#, 2
.loop2:
	sound_call .sub1
	sound_loop 4, .loop2
.loop3:
	octave 2
	note E_, 2
	volume_envelope 13, 1
	octave 3
	note G_, 2
	volume_envelope 10, 2
	octave 1
	note A#, 2
	volume_envelope 13, 1
	octave 3
	note G_, 2
	volume_envelope 10, 2
	sound_loop 2, .loop3
	octave 2
	note E_, 2
	volume_envelope 13, 1
	octave 3
	note F#, 2
	volume_envelope 10, 2
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note B_, 2
	volume_envelope 10, 2
	octave 2
	note D#, 2
	volume_envelope 13, 1
	octave 3
	note A_, 2
	volume_envelope 10, 2
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note A_, 2
	volume_envelope 10, 2
	sound_call .sub1
	sound_call .sub1
	octave 2
	note E_, 2
	volume_envelope 13, 1
	octave 3
	note E_, 2
	volume_envelope 10, 2
	sound_call .sub2
	sound_call .sub1
.loop4:
	sound_call .sub3
	octave 2
	note C#, 2
	volume_envelope 13, 1
	octave 3
	note E_, 2
	volume_envelope 10, 2
	sound_loop 2, .loop4
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note F#, 2
	volume_envelope 10, 2
	octave 2
	note F#, 2
	volume_envelope 13, 1
	octave 3
	note F#, 2
	volume_envelope 10, 2
	octave 1
	note B_, 1
	volume_envelope 13, 1
	octave 3
	note F_, 1
	note F#, 2
	volume_envelope 10, 2
	octave 2
	note D#, 2
	volume_envelope 13, 1
	octave 3
	note F#, 2
	volume_envelope 10, 2
.loop5:
	octave 2
	note E_, 2
	volume_envelope 13, 1
	note B_, 2
	volume_envelope 10, 2
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 2
	note B_, 2
	volume_envelope 10, 2
	sound_loop 2, .loop5
.loop6:
	octave 2
	note E_, 2
	volume_envelope 13, 1
	octave 3
	note C#, 2
	volume_envelope 10, 2
	octave 2
	note C#, 2
	volume_envelope 13, 1
	octave 3
	note C#, 2
	volume_envelope 10, 2
	sound_loop 2, .loop6
.loop7:
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note C#, 2
	volume_envelope 10, 2
	octave 2
	note F#, 2
	volume_envelope 13, 1
	octave 3
	note C#, 2
	volume_envelope 10, 2
	sound_loop 2, .loop7
	sound_call .sub2
	sound_call .sub3
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note D#, 2
	volume_envelope 10, 2
	octave 2
	note F#, 2
	volume_envelope 13, 1
	octave 3
	note D#, 2
	volume_envelope 10, 2
	octave 2
	note E_, 4
	sound_ret

.sub1:
	octave 2
	note E_, 2
	volume_envelope 13, 1
	octave 3
	note G#, 2
	volume_envelope 10, 2
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note G#, 2
	volume_envelope 10, 2
	sound_ret

.sub2:
	octave 1
	note B_, 2
	volume_envelope 13, 1
	octave 3
	note E_, 2
	volume_envelope 10, 2
	sound_ret

.sub3:
	octave 2
	note F#, 2
	volume_envelope 13, 1
	octave 3
	note E_, 2
	volume_envelope 10, 2
	sound_ret

YDemo_Ch3:
	vibrato 10, 1, 3
	note_type 3, 1, 2
	octave 4
	note B_, 2
.loop1:
	rest 2
	octave 3
	note E_, 6
	sound_loop 6, .loop1
	rest 1
	note D#, 2
	note E_, 3
	rest 1
	note E_, 6
	rest 2
	volume_envelope 1, 4
	octave 4
	note G#, 2
	note G_, 2
	note G#, 8
	volume_envelope 1, 0
	octave 3
	note B_, 2
	note A#, 2
	note B_, 8
	volume_envelope 1, 4
	octave 4
	note B_, 2
	note A#, 2
	note B_, 8
	volume_envelope 1, 0
	note E_, 1
	note D#, 1
	volume_envelope 1, 4
	note E_, 8
	note G#, 8
	note B_, 8
	octave 5
	note C#, 16
	volume_envelope 1, 7
	octave 4
	note C#, 2
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	octave 4
	note E_, 2
	note C#, 2
	octave 3
	note G_, 2
	octave 4
	note C#, 2
	note A_, 8
	note G#, 8
	note F#, 8
	note E_, 8
.loop2:
	octave 3
	note B_, 12
	octave 4
	note E_, 2
	rest 2
	sound_loop 2, .loop2
	note G#, 12
	note B_, 2
	rest 2
	note G#, 12
	note B_, 2
	rest 2
	octave 5
	note C#, 8
	octave 4
	note A_, 8
	octave 5
	note C#, 8
	note D#, 7
	rest 1
	note D#, 1
	note E_, 3
	note D#, 4
	note C#, 4
	note D#, 7
	rest 1
	note E_, 1
	note D#, 3
	note C#, 4
	octave 4
	note B_, 3
	rest 1
	volume_envelope 1, 8
	octave 5
	note E_, 2
	rest 2
	note G#, 6
	rest 2
	note G#, 6
	rest 2
	note G#, 6
	rest 2
	note G#, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 6
	rest 2
	note A_, 5
	rest 1
	note F#, 2
	note A_, 3
	rest 1
	note A_, 6
	rest 2
	note B_, 2
	note A#, 2
	note B_, 8
	volume_envelope 2, 5
	octave 4
	note E_, 2
	rest 6
	note E_, 2
	rest 2
	volume_envelope 1, 8
	octave 5
	note B_, 2
	note A#, 2
	note B_, 8
	volume_envelope 2, 5
	octave 4
	note G#, 2
	rest 6
	note G#, 2
	rest 6
	note A_, 2
	rest 2
	vibrato 0, 1, 3
	volume_envelope 1, 3
	octave 6
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note E_, 2
	rest 6
	sound_ret
