PokeCenter:
; wav
	channel_count 4
	channel 1, PokeCenter_Ch1
	channel 2, PokeCenter_Ch2
	channel 3, PokeCenter_Ch3
	channel 4, PokeCenter_Ch4

PokeCenter_Ch1:
	tempo 144
	volume 7
	duty_cycle 3
	vibrato 11, 2, 2
;	toggle_perfect_pitch
.mainloop:
	note_type 12, 10, 3
	octave 3
	note F#, 2
	note F_, 2
	note F#, 2
	note_type 12, 11, 5
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 3
	note A_, 2
	note E_, 2
	note A_, 2
	note_type 12, 11, 5
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note_type 12, 10, 3
	octave 3
	note F#, 2
	note F_, 2
	note F#, 2
	note_type 12, 11, 5
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 3
	note A_, 2
	note E_, 2
	note A_, 2
	note_type 12, 11, 5
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note F#, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 8
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 4
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	sound_jump .mainloop

PokeCenter_Ch2:
	duty_cycle 2
	note_type 12, 12, 1
;	note_type 12, 2, 8
.mainloop:
;	stereo_panning TRUE, FALSE
	octave 2
	note D_, 1
	rest 5
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	sound_call .sub1
	sound_call .sub2
	note F#, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 5
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	sound_call .sub1
	sound_call .sub2
	note D_, 1
	rest 5
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	sound_call .sub3
	note G_, 1
	rest 5
	note B_, 1
	rest 3
	note B_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 5
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note F#, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	sound_call .sub3
	note G_, 1
	rest 5
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note B_, 1
	rest 1
	note E_, 1
	rest 5
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note F#, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	sound_jump .mainloop

.sub1:
	note E_, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	sound_ret

.sub2:
	note E_, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	sound_ret

.sub3:
	note F#, 1
	rest 5
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	sound_ret

PokeCenter_Ch3:
	sound_call .sub1
	note D_, 3
	volume_envelope 2, -3
	note D_, 1
	volume_envelope 1, -3
	note F#, 3
	volume_envelope 2, -3
	note F#, 3
	volume_envelope 3, -3
	note F#, 3
	rest 3
	volume_envelope 1, 0
	octave 4
	note A_, 5
	volume_envelope 2, 0
	note A_, 3
	volume_envelope 1, 0
	note E_, 5
	volume_envelope 2, 0
	note E_, 3
	sound_call .sub1
	sound_call .sub5
	volume_envelope 1, 0
	octave 4
	note D_, 5
	volume_envelope 2, 0
	note D_, 3
	volume_envelope 1, 0
	note E_, 5
	volume_envelope 2, 0
	note E_, 3
	sound_call .sub2
	note A_, 4
	note G_, 4
	note F#, 4
	sound_call .sub3
	volume_envelope 1, -3
	note C#, 5
	volume_envelope 2, -3
	note C#, 5
	volume_envelope 3, -3
	note C#, 5
	rest 1
	sound_call .sub3
	sound_call .sub4
	sound_call .sub2
	note F#, 4
	note G_, 4
	note A_, 4
	note B_, 5
	volume_envelope 2, -3
	note B_, 5
	volume_envelope 3, -3
	note B_, 5
	rest 1
	volume_envelope 1, -3
	note A_, 5
	volume_envelope 2, -3
	note A_, 3
	volume_envelope 1, -3
	note G_, 4
	note F#, 4
	volume_envelope 1, -3
	note G_, 5
	volume_envelope 2, -3
	note G_, 5
	volume_envelope 3, -3
	note G_, 5
	rest 1
	sound_call .sub4
	sound_jump PokeCenter_Ch3

.sub1:
	note_type 6, 1, -3
	octave 5
	note D_, 3
	volume_envelope 2, -3
	note D_, 1
	volume_envelope 1, -3
	octave 4
	note A_, 3
	volume_envelope 2, -3
	note A_, 1
	volume_envelope 1, -3
	octave 5
	note D_, 3
	volume_envelope 2, -3
	note D_, 1
	volume_envelope 1, -3
	note A_, 3
	volume_envelope 2, -3
	note A_, 3
	volume_envelope 3, -3
	note A_, 2
	volume_envelope 1, -3
	note G_, 3
	volume_envelope 2, -3
	note G_, 3
	volume_envelope 3, -3
	note G_, 2
	volume_envelope 1, -3
	note F#, 3
	volume_envelope 2, -3
	note F#, 1
	volume_envelope 1, -3
	note E_, 3
	volume_envelope 2, -3
	note E_, 1
	volume_envelope 1, -3
	note C#, 3
	volume_envelope 2, -3
	note C#, 3
	volume_envelope 3, -3
	note C#, 3
	rest 3
	volume_envelope 1, 0
	octave 4
	note A_, 5
	volume_envelope 2, 0
	note A_, 3
	volume_envelope 1, 0
	note G_, 5
	volume_envelope 2, 0
	note G_, 3
	volume_envelope 1, -3
	octave 5
	note C#, 3
	volume_envelope 2, -3
	note C#, 1
	volume_envelope 1, -3
	octave 4
	note A_, 3
	volume_envelope 2, -3
	note A_, 1
	volume_envelope 1, -3
	octave 5
	note C#, 3
	volume_envelope 2, -3
	note C#, 1
	volume_envelope 1, -3
	note F#, 3
	volume_envelope 2, -3
	note F#, 3
	volume_envelope 3, -3
	note F#, 2
	volume_envelope 1, -3
	note E_, 3
	volume_envelope 2, -3
	note E_, 3
	volume_envelope 3, -3
	note E_, 2
	volume_envelope 1, -3
	note C#, 3
	volume_envelope 2, -3
	note C#, 1
	volume_envelope 1, -3
	sound_ret

.sub2:
	volume_envelope 1, -3
	octave 5
	note F#, 5
	volume_envelope 2, -3
	note F#, 5
	volume_envelope 3, -3
	note F#, 5
	rest 1
	volume_envelope 1, -3
	note A_, 5
	volume_envelope 2, -3
	note A_, 5
	volume_envelope 3, -3
	note A_, 5
	rest 1
	volume_envelope 1, -3
	note G_, 4
	sound_ret

.sub3:
	volume_envelope 1, -3
	note E_, 5
	volume_envelope 2, -3
	note E_, 5
	volume_envelope 3, -3
	note E_, 5
	rest 1
	sound_ret

.sub4:
	volume_envelope 1, -3
	note F#, 4
	note G_, 4
	note F#, 4
	note E_, 4
.sub5:
	note D_, 5
	volume_envelope 2, -3
	note D_, 5
	volume_envelope 3, -3
	note D_, 5
	rest 1
	sound_ret

PokeCenter_Ch4:
	toggle_noise 1
	drum_speed 12
.mainloop:
	drum_note 12, 6
	drum_note 12, 4
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 6
	drum_note 12, 6
	drum_note 12, 2
	drum_note 12, 2
	sound_jump .mainloop
