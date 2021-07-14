Music_SunkernSwamp: ; JEROEN TEL
; engine, wav
; OCT 28, 2019
	channel_count 4
	channel 1, Music_SunkernSwamp_Ch1
	channel 2, Music_SunkernSwamp_Ch2
	channel 3, Music_SunkernSwamp_Ch3
	channel 4, Music_SunkernSwamp_Ch4

Music_SunkernSwamp_Ch1:
	tempo 154
	volume 7
	duty_cycle 2
	note_type 6, 5, 2
	rest 7
	octave 3
	note F_, 4
	note G_, 4
	note G#, 4
	octave 4
	note C_, 4
	note F_, 4
	note G_, 4
	note G#, 4
	sound_call .sub1
	sound_call .sub2
	pitch_inc_switch
.loop1:
	sound_call .sub3
	sound_call .sub4
	sound_loop 2, .loop1
.mainloop:
	sound_call .sub3
	sound_call .sub4
	sound_loop 3, .mainloop
	sound_call .sub3
	pitch_inc_switch
	sound_call .sub2
	pitch_inc_switch
	sound_jump .mainloop

.sub1:
	octave 5
	note C_, 4
	volume_envelope 2, 2
	note C_, 4
	volume_envelope 1, 3
	note C_, 4
	volume_envelope 1, 4
	note C_, 4
	volume_envelope 1, 5
	note C_, 4
	volume_envelope 1, 6
	note C_, 4
	volume_envelope 1, 7
	note C_, 5
	sound_ret

.sub2:
	rest 7
	volume_envelope 5, 2
	octave 3
	note D_, 4
	note F_, 4
	note G_, 4
	note B_, 4
	octave 4
	note D_, 4
	note F_, 4
	note G_, 4
	note B_, 4
	volume_envelope 2, 2
	note B_, 4
	volume_envelope 1, 3
	note B_, 4
	volume_envelope 1, 4
	note B_, 4
	volume_envelope 1, 5
	note B_, 4
	volume_envelope 1, 6
	note B_, 4
	volume_envelope 1, 7
	note B_, 12
	volume_envelope 5, 2
	octave 3
	note C#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	octave 4
	note C#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	volume_envelope 2, 2
	note A#, 4
	volume_envelope 1, 3
	note A#, 4
	volume_envelope 1, 4
	note A#, 4
	volume_envelope 1, 5
	note A#, 4
	volume_envelope 1, 6
	note A#, 4
	volume_envelope 1, 7
	note A#, 12
	volume_envelope 5, 2
	octave 3
	note C_, 4
	note F_, 4
	note G_, 4
	octave 4
	note C_, 4
	note F_, 4
	note G_, 4
	note A#, 4
	sound_jump .sub1

.sub3:
	volume_envelope 10, 1
	octave 3
	note F_, 4
	note G_, 4
	note G#, 4
	octave 4
	note C_, 4
	note F_, 4
	note G_, 4
	note G#, 4
.sub3_f4:
	octave 5
	note C_, 4
	volume_envelope 5, 2
	note C_, 4
	volume_envelope 3, 3
	note C_, 4
	volume_envelope 2, 4
	note C_, 4
	volume_envelope 2, 5
	note C_, 4
	volume_envelope 1, 6
	note C_, 4
	volume_envelope 1, 7
	note C_, 12
	sound_ret

.sub4:
	volume_envelope 10, 1
	octave 3
	note D_, 4
	note F_, 4
	note G_, 4
	note B_, 4
	octave 4
	note D_, 4
	note F_, 4
	note G_, 4
	note B_, 4
	volume_envelope 5, 2
	note B_, 4
	volume_envelope 3, 3
	note B_, 4
	volume_envelope 2, 4
	note B_, 4
	volume_envelope 2, 5
	note B_, 4
	volume_envelope 1, 6
	note B_, 4
	volume_envelope 1, 7
	note B_, 12
	volume_envelope 10, 1
	octave 3
	note C#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	octave 4
	note C#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	volume_envelope 5, 2
	note A#, 4
	volume_envelope 3, 3
	note A#, 4
	volume_envelope 2, 4
	note A#, 4
	volume_envelope 2, 5
	note A#, 4
	volume_envelope 1, 6
	note A#, 4
	volume_envelope 1, 7
	note A#, 12
	volume_envelope 10, 1
	octave 3
	note C_, 4
	note F_, 4
	note G_, 4
	octave 4
	note C_, 4
	note F_, 4
	note G_, 4
	note A#, 4
	sound_jump .sub3_f4

Music_SunkernSwamp_Ch2:
	pitch_inc_switch
	duty_cycle 2
	note_type 6, 10, 1
	sound_call Music_SunkernSwamp_Ch1.sub3
	sound_call Music_SunkernSwamp_Ch1.sub4
	pitch_inc_switch
	vibrato 4, 1, 3
	note_type 12, 9, 3
	rest 12
	octave 5
	note F_, 2
	note G_, 2
	note G#, 4
	note F_, 8
	note C_, 2
	note D_, 14
	note C_, 2
	octave 4
	note B_, 6
	note B_, 4
	octave 5
	note C_, 4
	note D_, 4
.loop1:
	octave 5
	note F_, 4
	note G_, 2
	note F_, 6
	note C_, 2
	octave 4
	note A#, 2
	sound_loop 2, .loop1
	octave 5
	note C#, 4
	note C_, 2
	note C_, 6
	octave 4
	note A#, 4
	octave 5
	note C#, 4
	note C_, 2
	note C_, 4
	note E_, 2
	note F_, 2
	note G_, 2
	note A#, 2
	octave 6
	note C_, 4
	octave 5
	note G#, 6
	note G_, 2
	note A#, 6
	note G#, 4
	note G_, 2
	note F_, 6
	note D_, 4
	note G_, 4
	note A_, 2
	note B_, 4
	octave 6
	note D_, 16
	note C_, 2
	note D#, 2
	note C#, 4
	octave 5
	note G#, 4
	note G_, 4
	note F_, 2
	note D#, 4
	note C#, 4
	note C_, 4
	octave 4
	note A#, 4
	octave 5
	note C#, 4
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 10
	octave 4
	note C#, 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 10
.mainloop:
	vibrato 8, 3, 4
	sound_call .sub1
	volume_envelope 12, 8
	note C_, 12
	volume_envelope 12, 7
	note C_, 8
	sound_call .sub1
	volume_envelope 12, 7
	note C_, 4
	volume_envelope 1, -7
	octave 4
	note A#, 12
	volume_envelope 12, 7
	note A#, 4
	vibrato 8, 2, 4
	volume_envelope 11, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 4
	note G#, 4
	note G_, 4
	note F_, 4
	note D#, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 3
	note B_, 4
	note A#, 4
	note G#, 4
	note G_, 4
	note F_, 4
	note D#, 4
	note C#, 4
	note C_, 4
	octave 2
	note A#, 4
	note G#, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note C#, 4
	note C_, 4
	octave 1
	note G_, 4
	note G#, 4
	vibrato 0, 4, 3
	volume_envelope 8, 8
.loop2:
	octave 4
	note G#, 2
	note G_, 2
	sound_loop 4, .loop2
	volume_envelope 9, 7
	note G#, 16
	vibrato 0, 0, 0
	sound_call Music_SunkernSwamp_Ch1.sub4
	sound_jump .mainloop

.sub1:
	volume_envelope 1, -7
	octave 4
	note F_, 12
	volume_envelope 12, 7
	note F_, 4
	volume_envelope 1, -7
	octave 5
	note C_, 12
	volume_envelope 12, 7
	note C_, 4
	volume_envelope 1, -7
	note D_, 12
	volume_envelope 12, 7
	note D_, 4
	volume_envelope 1, -7
	octave 4
	note B_, 12
	volume_envelope 12, 7
	note B_, 4
	volume_envelope 1, -7
	note A#, 12
	volume_envelope 12, 7
	note A#, 4
	volume_envelope 1, -7
	octave 5
	note C#, 12
	volume_envelope 12, 7
	note C#, 4
	volume_envelope 1, -7
	note C_, 12
	sound_ret

Music_SunkernSwamp_Ch3:
	vibrato 26, 5, 3
	note_type 12, 1, -2
.loop1:
	rest 16
	sound_loop 8, .loop1
.mainloop:
	octave 3
	note F_, 11
	rest 1
	note C_, 3
	rest 1
	octave 2
	note F_, 15
	rest 1
	note G_, 11
	rest 1
	octave 3
	note D_, 3
	rest 1
	note G_, 15
	rest 1
	note C#, 11
	rest 1
	note F_, 3
	rest 1
	note G_, 15
	rest 1
	note C_, 11
	rest 1
	octave 2
	note G_, 3
	rest 1
	note C_, 15
	rest 1
	sound_jump .mainloop

Music_SunkernSwamp_Ch4:
	toggle_noise 4
	drum_speed 12
.loop1:
	rest 16
	sound_loop 24, .loop1
.mainloop:
	sound_call .sub1
	drum_note 7, 4
	sound_loop 3, .mainloop
	sound_call .sub1
	drum_note 7, 2
	drum_note 5, 2
	sound_jump .mainloop

.sub1:
	drum_note 4, 4
	drum_note 7, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 7, 2
	drum_note 4, 4
	drum_note 7, 2
	drum_note 4, 4
	drum_note 7, 2
	drum_note 5, 4
	sound_ret
