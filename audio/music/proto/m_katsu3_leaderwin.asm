Katsu3:
; engine, wav
	channel_count 4
	channel 1, Katsu3_Ch1
	channel 2, Katsu3_Ch2
	channel 3, Katsu3_Ch3
	channel 4, Katsu3_Ch4

Katsu3_Ch1:
	tempo 245
	volume 7
	duty_cycle 3
	vibrato 6, 3, 2
	note_type 6, 10, 6
	octave 4
	note D_, 6
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note F#, 6
	note D_, 1
	note F#, 1
	note A_, 6
	note F#, 1
	note A_, 1
	octave 5
	note D_, 8
.mainloop:
	sound_call .sub2
	sound_call .sub1
	note F#, 6
	volume_envelope 10, 1
	note D_, 1
	note E_, 1
	sound_call .sub2
	sound_call .sub1
	note F#, 8
.loop1:
	sound_call .sub3
	transpose 0, 2
	sound_call .sub3
	transpose 0, 0
	note E_, 6
	note C#, 1
	note E_, 1
	note G_, 8
	note E_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note F#, 6
	note A_, 4
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 10
	note E_, 2
	note F#, 2
	note A_, 2
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	note C#, 4
	note C#, 1
	note D_, 1
	note E_, 1
	note A_, 1
.sub2:
	volume_envelope 13, 1
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 1
	note F#, 1
	note E_, 2
	note G_, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 1
	note E_, 1
	note D_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	sound_ret

.sub3:
	volume_envelope 10, 7
	note F#, 6
	note D_, 1
	note F#, 1
	note A_, 4
	note D_, 4
	octave 4
	note D_, 6
	octave 3
	note A_, 6
	note F#, 4
	sound_ret

Katsu3_Ch2:
	duty_cycle 2
	vibrato 15, 7, 5
	note_type 6, 12, 7
	octave 2
	note F#, 16
	note D_, 10
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note C#, 2
.mainloop:
	sound_call .sub1
	note A_, 2
	rest 2
	octave 2
	note C#, 4
	sound_call .sub1
	octave 2
	note D_, 2
	rest 6
	sound_loop 2, .mainloop
.loop1:
	note D_, 4
	rest 2
	octave 1
	note A_, 3
	rest 1
	note B_, 2
	octave 2
	note C#, 3
	rest 1
	note D_, 4
	rest 2
	octave 1
	note A_, 3
	rest 1
	note B_, 2
	octave 2
	note C#, 2
	note D_, 2
	note E_, 4
	rest 2
	octave 1
	note B_, 3
	rest 1
	octave 2
	note C#, 2
	note D_, 3
	rest 1
	note E_, 4
	rest 2
	octave 1
	note B_, 3
	rest 1
	octave 2
	note C#, 2
	note D_, 2
	note E_, 2
	octave 1
	note A_, 4
	rest 2
	note B_, 3
	rest 1
	note E_, 2
	octave 2
	note C#, 3
	rest 1
	octave 1
	note A_, 4
	rest 2
	octave 2
	note E_, 3
	rest 1
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	note D_, 4
	rest 2
	note F#, 3
	rest 1
	note D_, 2
	note A_, 3
	rest 1
	octave 3
	note D_, 4
	rest 2
	note C#, 3
	rest 1
	octave 2
	note B_, 2
	note A_, 2
	note E_, 2
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	note D_, 2
	rest 4
	octave 1
	note A_, 2
	octave 2
	note C#, 2
	rest 4
	octave 1
	note A_, 2
	note B_, 2
	rest 4
	note G_, 2
	sound_ret

Katsu3_Ch3:
	vibrato 9, 1, 3
	note_type 6, 1, -6
	octave 5
	note A_, 6
	note F#, 1
	note A_, 1
	octave 6
	note D_, 6
	octave 5
	note A_, 1
	octave 6
	note D_, 1
	note F#, 6
	note_type 3, 1, -6
	note F#, 7
	volume_envelope 2, -6
	note F#, 7
	volume_envelope 3, -6
	note F#, 6
	note_type 6, 1, -3
.mainloop:
	sound_call .sub2
	sound_call .sub1
	note D_, 1
	rest 5
	volume_envelope 1, -2
	note B_, 1
	octave 6
	note C#, 1
	sound_call .sub2
	sound_call .sub1
	note D_, 1
	rest 7
	volume_envelope 1, -4
	sound_call .sub3
	note F#, 4
	note E_, 4
	note D_, 14
	octave 5
	note B_, 2
	note A_, 14
	rest 2
	volume_envelope 1, 0
	sound_call .sub3
	octave 5
	note A_, 4
	octave 6
	note C#, 4
	note D_, 14
	note E_, 2
	note D_, 12
	volume_envelope 1, -3
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note C#, 1
	sound_jump .mainloop

.sub1:
	note A_, 1
	rest 3
	note A_, 4
.sub2:
	octave 6
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 5
	note B_, 1
	rest 3
	octave 6
	note C#, 1
	rest 1
	octave 5
	note B_, 1
	rest 1
	note A_, 1
	rest 3
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 2
	sound_ret

.sub3:
	note A_, 6
	note F#, 1
	note A_, 1
	octave 6
	note D_, 8
	note D_, 16
	octave 5
	note B_, 6
	note G#, 1
	note B_, 1
	octave 6
	note E_, 8
	note E_, 16
	octave 5
	note G_, 6
	note E_, 1
	note G_, 1
	octave 6
	note C#, 16
	sound_ret

Katsu3_Ch4:
	toggle_noise 6
	drum_speed 3
	drum_note 7, 16
	rest 16
	drum_note 7, 16
	rest 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 8
.mainloop:
	sound_call .sub3
	sound_call .sub1
	drum_note 1, 16
	sound_call .sub2
	sound_call .sub1
	drum_note 1, 8
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 8
	sound_call .sub4
	sound_call .sub4
	sound_jump .mainloop

.sub1:
	drum_note 2, 4
	drum_note 1, 4
	drum_note 2, 8
.sub2:
	drum_note 1, 8
.sub3:
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 8
	drum_note 2, 8
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	sound_ret

.sub4:
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 2, 8
	drum_note 1, 8
	sound_loop 7, .sub4
	drum_note 2, 4
	drum_note 1, 4
.sub4loop1:
	drum_note 10, 1
	sound_loop 8, .sub4loop1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 7, 8
	sound_ret
