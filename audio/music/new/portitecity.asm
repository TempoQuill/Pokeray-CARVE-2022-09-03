Music_PortiteCity:
	channel_count 4
	channel 1, Music_PortiteCity_Ch1
	channel 2, Music_PortiteCity_Ch2
	channel 3, Music_PortiteCity_Ch3
	channel 4, Music_PortiteCity_Ch4

Music_PortiteCity_Ch1:
	tempo 141
	volume 7
	note_type 8, 10, 2
	rest 12
	rest 12
	duty_cycle 1
	octave 4
	note D_, 4
	volume_envelope 5, 2
	note C_, 2
	note D_, 2
	volume_envelope 6, 2
	note C_, 2
	note D_, 2
	volume_envelope 7, 2
	note C_, 2
	note D_, 2
	volume_envelope 8, 2
	note C_, 2
	note D_, 2
	volume_envelope 9, 2
	note C_, 2
	note D_, 2
	note C_, 2
	rest 10
	rest 11
	volume_envelope 10, 1
	octave 2
	note A_, 1
	octave 3
	note C_, 1
	note F_, 3
	rest 7
	octave 2
	note G_, 1
	octave 3
	note C_, 1
	note E_, 3
	rest 8
.mainloop:
	volume_envelope 10, 1
	sound_call .sub1
	sound_call .sub2
	note A_, 6
	duty_cycle 2
	volume_envelope 13, 1
	octave 2
	note C_, 4
	rest 2
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note F_, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	note D_, 2
	rest 2
	note A#, 4
	octave 4
	note D_, 6
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	rest 12
	sound_call .sub1
	sound_call .sub2
	note A_, 8
	rest 4
	volume_envelope 10, 1
	note A#, 2
	note F_, 2
	note D_, 2
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	note G_, 2
	note E_, 2
	duty_cycle 2
	volume_envelope 13, 1
	octave 2
	note E_, 2
	duty_cycle 1
	volume_envelope 10, 1
	note A_, 6
	duty_cycle 2
	note_type 4, 13, 1
	octave 3
	note F_, 1
	note A_, 1
	note_type 8, 6, 8
	rest 16
	rest 1
	duty_cycle 1
	vibrato 14, 3, 4
	sound_call .sub3
	note A#, 6
	note G_, 4
	note A#, 2
	note A_, 6
	duty_cycle 2
	vibrato 0, 0, 0
	volume_envelope 13, 1
	octave 2
	note C_, 4
	rest 2
	duty_cycle 1
	vibrato 14, 3, 4
	volume_envelope 6, 8
	note F_, 6
	note A#, 6
	octave 3
	note D_, 4
	note F_, 6
	note G_, 2
	note F_, 12
	note E_, 12
	sound_call .sub3
	note A#, 6
	octave 4
	note C_, 4
	octave 3
	note A#, 2
	note A_, 4
	note G_, 2
	note F_, 4
	note E_, 2
	note F_, 12
	note E_, 6
	note C_, 4
	duty_cycle 2
	volume_envelope 13, 1
	octave 2
	note E_, 2
	duty_cycle 1
	volume_envelope 6, 8
	note A_, 16
	rest 2
	duty_cycle 2
	vibrato 0, 0, 0
	volume_envelope 13, 1
	octave 1
	note G_, 4
	note A_, 2
	sound_call .sub4
	sound_call .sub5
	note A_, 2
	note A#, 2
	volume_envelope 10, 1
	octave 4
	note C_, 2
	sound_call .sub4
	sound_call .sub5
	volume_envelope 10, 3
	octave 4
	note C_, 6
	sound_jump .mainloop

.sub1:
	octave 2
	note A_, 1
	octave 3
	note C_, 2
	rest 9
	octave 2
	note A_, 1
	octave 3
	note C_, 2
	rest 3
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	rest 4
	sound_ret

.sub2:
	note F_, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	note A#, 2
	volume_envelope 12, 2
	sound_ret

.sub3:
	note F_, 10
	octave 2
	note A#, 2
	note A_, 4
	octave 3
	note C_, 2
	note F_, 4
	note A_, 2
	sound_ret

.sub4:
	duty_cycle 1
	volume_envelope 11, 1
	octave 4
	note D_, 6
	note D_, 4
	note E_, 2
	note D_, 6
	note D_, 4
	note_type 4, 4, 8
	rest 3
	octave 2
	note B_, 1
	note_type 8, 6, 8
	octave 3
	note C_, 12
	note F_, 12
	vibrato 14, 3, 4
	note E_, 12
	note D_, 12
	note C_, 12
	octave 2
	note A#, 4
	volume_envelope 4, 8
	octave 3
	note C_, 1
	octave 2
	note A#, 1
	volume_envelope 6, 8
	note A_, 6
	volume_envelope 8, 7
	octave 4
	note D_, 9
	rest 1
	note D_, 5
	rest 5
	note D_, 1
	rest 1
	note D_, 1
	note_type 4, 5, 1
	rest 1
	octave 3
	note B_, 1
	note_type 8, 8, 7
	octave 4
	note C_, 4
	rest 1
	octave 3
	note B_, 6
	note A_, 8
	rest 6
	volume_envelope 9, 1
.sub4loop1:
	octave 3
	note C_, 2
	note F_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	sound_loop 2, .sub4loop1
	sound_ret

.sub5:
	octave 3
	note C_, 2
	note E_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	sound_ret

Music_PortiteCity_Ch2:
	duty_cycle 2
	note_type 4, 13, 1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub3
	sound_call .sub1
	sound_call .sub1
	note_type 8, 13, 1
	octave 2
	note C_, 12
	note C_, 2
	note D_, 2
	note E_, 2
	octave 3
	note C_, 6
	note_type 4, 13, 1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub4
	sound_call .sub5
	sound_call .sub6
	sound_call .sub7
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub8
	sound_call .sub5
	sound_call .sub7
	octave 2
	note F_, 8
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 8
	octave 3
	note C_, 2
	rest 2
	octave 2
	note F_, 8
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 4
	note D_, 4
	note E_, 4
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub4
	sound_call .sub5
	sound_call .sub6
	sound_call .sub7
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub8
	sound_call .sub5
	sound_call .sub7
	sound_call .sub1
	octave 1
	note F_, 6
	sound_call .sub2
.loop1:
	sound_call .sub4
	sound_call .sub4
	sound_call .sub1
	sound_call .sub1
	sound_call .sub9
	sound_call .sub9
	sound_call .sub1
	sound_call .sub1
	sound_call .sub4
	sound_call .sub4
	sound_call .sub1
	sound_call .sub1
	sound_call .sub6
	sound_call .sub6
	sound_call .sub9
	sound_call .sub9
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 2
	note F_, 6
.sub2:
	rest 2
	octave 3
	note C_, 2
	rest 2
	note F_, 1
	note A_, 1
	rest 6
	note C_, 2
	rest 2
	sound_ret

.sub3:
	octave 2
	note F_, 6
	rest 2
	octave 3
	note D_, 2
	rest 2
	note F_, 1
	note A#, 1
	rest 6
	note D_, 2
	rest 2
	sound_ret

.sub4:
	octave 1
	note A#, 6
	rest 2
	octave 3
	note D_, 2
	rest 2
	note F_, 1
	note A#, 1
	rest 6
	note D_, 2
	rest 2
	sound_ret

.sub5:
	octave 1
	note A#, 6
	rest 2
	octave 3
	note D_, 2
	rest 2
	note F_, 1
	note A#, 1
	rest 2
	note D_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	sound_ret

.sub6:
	octave 2
	note C_, 6
	rest 2
	octave 3
	note C_, 2
	rest 2
	note F_, 1
	note A_, 1
	rest 6
	note C_, 2
	rest 2
	sound_ret

.sub7:
	octave 2
	note C_, 6
	rest 2
	octave 3
	note C_, 2
	rest 2
	note E_, 1
	note G_, 1
	rest 2
	octave 2
	note D_, 4
	octave 3
	note C_, 2
	rest 2
	sound_ret

.sub8:
	octave 2
	note F_, 6
	rest 2
	octave 3
	note C_, 2
	rest 2
	note F_, 1
	note A_, 1
	rest 2
	note C_, 2
	rest 2
	octave 2
	note C_, 4
	sound_ret

.sub9:
	octave 2
	note C_, 6
	rest 2
	octave 3
	note C_, 2
	rest 2
	note E_, 1
	note G_, 1
	rest 6
	note C_, 2
	rest 2
	sound_ret

Music_PortiteCity_Ch3:
	vibrato 11, 2, 3
	note_type 8, 1, 8
	rest 12
	rest 12
	octave 4
	note A#, 1
	rest 3
	volume_envelope 3, 8
	note A_, 2
	note A#, 2
	volume_envelope 2, 8
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	volume_envelope 1, 8
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	rest 10
	rest 11
	volume_envelope 2, -6
	octave 2
	note C_, 1
	volume_envelope 1, -6
	note A_, 4
	rest 8
	note G_, 4
	rest 8
.mainloop:
	sound_call .sub1
	note D_, 12
	note A#, 12
	note A_, 8
	note G_, 4
	note A_, 8
	note G_, 4
	note_type 8, 2, 7
	note F_, 16
	note_type 4, 1, 5
	rest 4
	note F_, 1
	note A_, 1
	rest 6
	note C_, 2
	rest 2
	sound_call .sub1
	note D_, 12
	note A#, 12
	octave 5
	note C_, 8
	octave 4
	note A#, 4
	note A_, 8
	note G_, 4
	note_type 8, 2, 7
	note F_, 16
	note_type 4, 1, 2
	rest 4
	octave 5
	note F_, 8
	rest 3
	volume_envelope 2, 2
	note A_, 1
	volume_envelope 1, 2
	note A#, 10
	rest 2
	note A#, 8
	octave 6
	note C_, 4
	octave 5
	note A#, 10
	rest 2
	note F_, 8
	rest 3
	volume_envelope 2, 2
	note G#, 1
	volume_envelope 1, 2
	note A_, 8
	note G_, 4
	note A_, 8
	note G_, 4
	note F_, 16
	rest 4
	note C_, 2
	rest 1
	volume_envelope 2, 2
	note F#, 1
	volume_envelope 1, 2
	note G_, 6
	rest 2
	note G_, 6
	rest 5
	volume_envelope 2, 2
	note F#, 1
	volume_envelope 1, 2
	note G_, 16
	rest 8
	note A_, 4
	note A#, 8
	note A_, 4
	rest 4
	note G_, 4
	rest 3
	volume_envelope 2, 2
	note F#, 1
	volume_envelope 1, 2
	note G_, 8
	volume_envelope 2, 2
	note A_, 2
	note G_, 2
	volume_envelope 1, 2
	note F_, 10
	rest 1
	volume_envelope 2, 2
	note A_, 1
	note_type 8, 1, 2
	note A#, 9
	rest 1
	note A#, 5
	rest 5
	note A#, 1
	rest 1
	note F_, 1
	note_type 4, 2, 2
	rest 1
	note G#, 1
	volume_envelope 1, 2
	note A_, 6
	rest 2
	note G_, 12
	note F_, 16
	rest 8
	note C_, 2
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note_type 8, 1, 2
	note G_, 12
	note G_, 12
	volume_envelope 2, 6
	octave 3
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	octave 4
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	octave 3
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	octave 4
	note E_, 1
	volume_envelope 3, 6
	note E_, 1
	volume_envelope 2, 6
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	octave 3
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	octave 4
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 3, 6
	note E_, 1
	volume_envelope 2, 6
	note F_, 1
	volume_envelope 3, 6
	note F_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	note_type 4, 1, 2
	octave 5
	note F_, 2
	rest 1
	volume_envelope 2, 2
	note A_, 1
	volume_envelope 1, 2
	note A#, 6
	rest 2
	note A#, 8
	rest 3
	volume_envelope 2, 2
	note A_, 2
	volume_envelope 1, 2
	note A#, 9
	rest 2
	note F_, 10
	rest 2
	note A_, 12
	rest 3
	volume_envelope 3, 2
	note F_, 1
	volume_envelope 2, 2
	note F#, 1
	volume_envelope 1, 2
	note G_, 5
	rest 2
	note F_, 10
	rest 14
	note C_, 2
	rest 1
	volume_envelope 2, 2
	note F#, 1
	volume_envelope 1, 2
	note G_, 6
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 6
	note G_, 3
	rest 1
	note G_, 12
	note A_, 12
	note A#, 8
	note A_, 4
	rest 8
	note_type 8, 1, 2
	note F_, 10
	rest 2
	note C_, 1
	note_type 4, 2, 2
	rest 1
	note A_, 1
	volume_envelope 1, 2
	note A#, 6
	rest 2
	note A#, 10
	rest 2
	note A#, 10
	rest 10
	note A#, 2
	rest 2
	note F_, 2
	rest 1
	volume_envelope 2, 2
	note G#, 1
	volume_envelope 1, 2
	note A_, 6
	rest 2
	note G_, 12
	note F_, 16
	rest 8
	note C_, 2
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note_type 8, 1, 2
	note G_, 16
	volume_envelope 2, 6
	octave 3
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 1, 2
	octave 5
	note A_, 4
	note G_, 16
	volume_envelope 2, 6
	octave 4
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	note D_, 1
	volume_envelope 3, 6
	note D_, 1
	volume_envelope 2, 6
	note E_, 2
	volume_envelope 3, 6
	note E_, 2
	rest 2
	sound_jump .mainloop

.sub1:
	note_type 4, 2, 7
	octave 4
	note A_, 6
	rest 2
	note A_, 6
	rest 6
	note G_, 4
	note F_, 4
	rest 8
	note C_, 4
	rest 7
	note C#, 2
	note D_, 1
	note_type 8, 2, 7
	note D_, 9
	note C_, 1
	rest 1
	note C_, 8
	rest 2
	volume_envelope 2, 5
	octave 2
	note B_, 2
	note_type 4, 2, 7
	octave 4
	note D_, 10
	rest 2
	note E_, 8
	volume_envelope 2, 6
	octave 3
	note A#, 2
	volume_envelope 3, 6
	note A#, 1
	volume_envelope 2, 7
	octave 4
	note E_, 2
	note F_, 7
	note A#, 12
	note A_, 4
	note_type 8, 2, 7
	note G_, 11
	volume_envelope 3, 6
	note F_, 1
	volume_envelope 2, 6
	octave 5
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	octave 4
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 3, 6
	note E_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 3, 6
	note G_, 1
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 3, 6
	note E_, 1
	volume_envelope 2, 5
	octave 3
	note E_, 2
	note_type 4, 2, 7
	octave 4
	note A_, 6
	rest 2
	note A_, 6
	rest 6
	note G_, 4
	note F_, 4
	rest 8
	note C_, 4
	rest 7
	note C#, 2
	note D_, 11
	note F_, 12
	note C_, 16
	volume_envelope 2, 6
	note G_, 2
	volume_envelope 3, 6
	note G_, 2
	volume_envelope 2, 6
	note A_, 2
	volume_envelope 2, 7
	note C#, 2
	sound_ret

Music_PortiteCity_Ch4:
	toggle_noise 4
	drum_speed 4
.loop1:
	rest 12
	drum_note 3, 16
	rest 4
	drum_note 2, 4
	drum_note 3, 12
	sound_loop 3, .loop1
	rest 12
	drum_note 3, 16
	rest 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 2, 4
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	drum_note 11, 8
	drum_note 2, 4
	drum_note 5, 8
	drum_note 4, 4
	drum_note 11, 4
	drum_note 5, 4
	drum_note 4, 3
	drum_note 2, 1
	drum_note 5, 4
	drum_note 5, 4
	drum_note 5, 4
	sound_loop 2, .mainloop
.loop2:
	sound_call .sub1
	sound_loop 7, .loop2
	drum_note 11, 8
	drum_note 2, 4
	drum_note 5, 8
	drum_note 4, 4
	drum_note 5, 4
	drum_note 5, 4
	drum_note 4, 4
	drum_note 5, 4
	drum_note 2, 4
	drum_note 5, 4
.loop3:
	sound_call .sub1
	sound_loop 7, .loop3
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	drum_note 11, 8
	drum_note 2, 4
	drum_note 5, 8
	drum_note 4, 4
	drum_note 11, 4
	drum_note 2, 4
	drum_note 4, 4
	drum_note 5, 8
	drum_note 7, 4
	sound_ret

.sub2:
	drum_note 11, 8
	drum_note 2, 4
	drum_note 5, 8
	drum_note 4, 4
	drum_note 11, 4
	drum_note 2, 4
	drum_note 4, 4
	drum_note 5, 4
	drum_note 5, 4
	drum_note 5, 4
	sound_ret
