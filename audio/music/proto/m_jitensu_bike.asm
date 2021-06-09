Jitensu:
; wav, drum
	channel_count 4
	channel 1, Jitensu_Ch1
	channel 2, Jitensu_Ch2
	channel 3, Jitensu_Ch3
	channel 4, Jitensu_Ch4
	
Jitensu_Ch1:
	tempo 139
	volume 7
	duty_cycle 3
	vibrato 7, 4, 2
	note_type 12, 10, 3
	rest 16
	octave 3
	note B_, 4
	note G_, 4
	note F#, 4
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	note F#, 1
	note A_, 1
.mainloop:
	sound_call .sub1
	note A_, 2
	note G_, 2
	note A_, 2
	sound_call .sub1
	note G_, 2
	note D_, 2
	note C_, 1
	note D_, 1
	note E_, 4
	note D_, 4
	note C_, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note A_, 4
	note D_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note E_, 4
	note D_, 2
	note C_, 1
	note D_, 1
	note E_, 2
	note C_, 2
	note G_, 2
	note E_, 2
	note D_, 4
	note G_, 2
	note A_, 1
	note G_, 1
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	note G_, 2
	duty_cycle 2
	volume_envelope 6, -7
	note C_, 4
	note E_, 4
	note G_, 4
	note A_, 2
	note G_, 2
	note F#, 3
	rest 1
	duty_cycle 0
	volume_envelope 10, 3
	octave 4
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 4
	duty_cycle 3
	octave 3
	note D_, 4
	sound_jump .mainloop

.sub1:
	note B_, 2
	note G_, 2
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note G_, 2
	note D_, 2
	note E_, 2
	note G_, 1
	note B_, 1
	note A_, 1
	note D_, 1
	note F#, 1
	note A_, 1
	note D_, 1
	note F#, 1
	note A_, 1
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A_, 1
	note F#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note D_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	note C_, 2
	note D_, 1
	note C_, 1
	octave 3
	note B_, 3
	octave 4
	note C_, 1
	note D_, 2
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 2
	sound_ret

Jitensu_Ch2:
	duty_cycle 3
	note_type 6, 10, 1
.loop1:
	octave 3
	note G_, 2
	note A_, 2
	sound_loop 4, .loop1
	note B_, 4
	octave 4
	note C_, 4
	note D_, 4
	note C_, 4
	duty_cycle 2
	volume_envelope 12, 2
	octave 3
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
.mainloop:
	octave 2
	note G_, 4
	note B_, 1
	rest 3
	note D_, 4
	note B_, 1
	rest 3
	note E_, 4
	note B_, 1
	rest 3
	octave 1
	note B_, 4
	octave 2
	note B_, 1
	rest 3
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note F#, 4
	sound_call .sub1
	sound_loop 2, .mainloop
	sound_call .sub2
	octave 2
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	octave 1
	note A_, 4
	sound_call .sub1
	sound_call .sub2
	octave 2
	note G_, 4
	note B_, 1
	rest 3
	note D_, 4
	note B_, 1
	rest 3
	octave 1
	note B_, 4
	octave 2
	note B_, 1
	rest 3
	note D_, 4
	note B_, 1
	rest 3
	octave 1
	note A_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note E_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note D_, 8
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 8
	octave 2
	note F#, 8
	sound_jump .mainloop

.sub1:
	octave 3
	note C_, 1
	rest 3
	octave 2
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note E_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note F#, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	octave 1
	note A_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note G_, 4
	note B_, 1
	rest 3
	note F#, 4
	note B_, 1
	rest 3
	note E_, 4
	note B_, 1
	rest 3
	note D_, 4
	octave 3
	note C_, 1
	rest 3
	sound_ret

.sub2:
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	rest 3
	octave 1
	note G_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	rest 3
	octave 2
	note E_, 4
	octave 3
	note C_, 1
	rest 3
	sound_ret

Jitensu_Ch3:
	vibrato 10, 1, 3
	note_type 6, 1, 4
	octave 5
	note D_, 12
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 4
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	octave 5
	note D_, 2
	rest 6
	note D_, 2
	rest 6
.mainloop:
	sound_call .sub1
	volume_envelope 1, -4
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note C_, 1
.loop1:
	note D_, 1
	note E_, 1
	sound_loop 4, .loop1
	note D_, 4
	sound_call .sub2
	note A_, 2
	note B_, 6
	volume_envelope 1, -4
	octave 6
	note G_, 1
	note A_, 1
	note B_, 2
	note G_, 2
	note D_, 2
	note C_, 2
	octave 5
	note B_, 2
	note G_, 2
	volume_envelope 1, 4
	octave 4
	note E_, 2
	note F#, 2
	sound_call .sub1
	note_type 8, 1, -4
	octave 5
	note A_, 1
	octave 6
	note D_, 1
	note F#, 1
	note_type 6, 1, -4
	note A_, 5
	volume_envelope 2, -4
	note A_, 5
	volume_envelope 3, -4
	note A_, 2
	sound_call .sub2
	note D_, 2
	note G_, 4
	volume_envelope 1, -4
	octave 5
	note B_, 1
	octave 6
	note D_, 1
	note E_, 1
	note F#, 1
.loop2:
	note G_, 1
	note A_, 1
	sound_loop 4, .loop2
	note G_, 4
	volume_envelope 2, 7
	octave 4
	note E_, 2
	note F#, 2
	note G_, 12
	note F#, 4
	note E_, 8
	note G_, 8
	note F#, 12
	note G_, 4
	note A_, 12
	rest 4
	note F#, 8
	note A_, 8
	note F#, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 12
	note A_, 4
	note A#, 1
	note B_, 11
	rest 4
	volume_envelope 1, 2
	octave 5
	note C_, 6
	rest 2
	octave 4
	note D#, 1
	note E_, 5
	note G_, 2
	octave 5
	note C_, 12
	rest 4
	octave 4
	note B_, 6
	rest 2
	note C#, 1
	note D_, 5
	note G_, 2
	note B_, 12
	rest 4
	note A_, 4
	rest 2
	note G_, 2
	note A_, 4
	note B_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note C_, 4
	note E_, 4
	note D_, 6
	rest 2
	volume_envelope 2, 7
	note D_, 2
	note A_, 2
	octave 6
	note C_, 2
	note E_, 2
	note F#, 6
	rest 2
	volume_envelope 1, 4
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	note F#, 2
	sound_jump .mainloop

.sub1:
	octave 4
	note G_, 2
	rest 2
	note D_, 6
	rest 2
	note G_, 2
	rest 2
	note B_, 6
	rest 2
	note A_, 6
	note G_, 2
	note F#, 4
	note D_, 4
	rest 4
	sound_ret

.sub2:
	volume_envelope 1, 4
	octave 4
	note D_, 2
	note E_, 2
	note F#, 2
	rest 2
	note A_, 6
	rest 2
	note D_, 4
	note E_, 6
	rest 2
	note F#, 6
	note A_, 2
	note G_, 6
	sound_ret

Jitensu_Ch4:
	toggle_noise 6
	drum_speed 12
	rest 16
	rest 8
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_loop 7, .mainloop
	sound_call .sub1
	drum_note 10, 4
	drum_note 11, 4
	sound_jump .mainloop

.sub1:
	drum_note 10, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 10, 2
	drum_note 11, 2
	drum_note 10, 2
	drum_note 11, 2
.sub2:
	drum_note 10, 2
	drum_note 11, 2
	drum_note 10, 2
	drum_note 11, 2
	sound_ret
