Music_HavocHideout: ; WILLIAM ANDERSON
; FEB 14 2020
	channel_count 4
	channel 1, Music_HavocHideout_Ch1
	channel 2, Music_HavocHideout_Ch2
	channel 3, Music_HavocHideout_Ch3
	channel 4, Music_HavocHideout_Ch4

Music_HavocHideout_Ch1:
	tempo 146
	volume 7
.mainloop:
	duty_cycle 1
	vibrato 14, 2, 2
	note_type 12, 7, 2
	rest 4
	sound_call .sub1
	sound_loop 3, .mainloop
	duty_cycle 2
	vibrato 14, 2, 2
	volume_envelope 13, 1
	rest 2
	octave 4
	note B_, 2
	duty_cycle 1
	volume_envelope 7, 2
	sound_call .sub1
	rest 2
	duty_cycle 2
	volume_envelope 10, 1
	sound_call .sub2
	sound_call .sub3
.loop1:
	note F#, 1
	note B_, 1
	octave 5
	note F#, 1
	octave 4
	note B_, 1
	sound_loop 3, .loop1
	note F#, 1
	note B_, 1
	note F#, 1
	note E_, 1
	sound_call .sub2
.loop2:
	note C#, 1
	note B_, 1
	octave 5
	note F#, 1
	octave 4
	note B_, 1
	sound_loop 4, .loop2
	octave 5
	note C#, 2
	note C#, 2
	note C#, 1
	octave 4
	note A#, 2
	note A#, 7
	sound_jump .mainloop

.sub1:
	octave 4
	note F#, 8
	volume_envelope 1, -5
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	vibrato 0, 2, 2
	volume_envelope 8, 8
	note D_, 12
	rest 4
	vibrato 14, 2, 2
	volume_envelope 7, 2
	octave 4
	note F#, 8
	volume_envelope 1, -5
	octave 3
	note F#, 4
	note A_, 4
	vibrato 0, 2, 2
	volume_envelope 8, 8
	note A_, 12
	sound_ret

.sub2:
	octave 4
	note D_, 1
	note G_, 1
	octave 5
	note D_, 1
	octave 4
	note G_, 1
	sound_loop 4, .sub2
.sub3:
	note E_, 1
	note A_, 1
	octave 5
	note E_, 1
	octave 4
	note A_, 1
	sound_loop 4, .sub3
	sound_ret

Music_HavocHideout_Ch2:
	duty_cycle 3
.mainloop:
	vibrato 7, 3, 3
	note_type 12, 10, 1
	rest 4
	octave 3
	note B_, 8
	volume_envelope 1, -4
	note F#, 4
	note A_, 4
	vibrato 0, 3, 3
	volume_envelope 10, 8
	note A_, 12
	rest 4
	vibrato 7, 3, 3
	volume_envelope 10, 1
	octave 3
	note B_, 8
	volume_envelope 1, -4
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	vibrato 0, 3, 3
	volume_envelope 10, 8
	note D_, 12
	sound_loop 2, .mainloop
	rest 2
	note_type 6, 13, 0
	octave 2
	note A#, 1
	note B_, 11
	octave 3
	note D_, 2
	note F#, 2
	note A_, 4
	note B_, 8
	note A_, 12
.loop1:
	note G#, 2
	note A_, 2
	sound_loop 4, .loop1
	duty_cycle 2
	volume_envelope 13, 1
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note F#, 2
	note A_, 2
	note B_, 4
	duty_cycle 3
	volume_envelope 13, 0
	octave 3
	note A#, 1
	note B_, 3
	note A_, 4
	note F#, 4
	note F_, 4
	note D_, 4
	octave 2
	note B_, 4
	note_type 12, 13, 0
	octave 3
	note D_, 14
	duty_cycle 2
	volume_envelope 13, 1
	octave 4
	note D_, 1
	note F_, 1
	note F#, 1
	note A_, 1
	duty_cycle 3
	note_type 6, 13, 0
	octave 3
	note C#, 1
	note D_, 3
	octave 2
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	note E_, 4
	note D_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 1
	note F#, 3
	note A_, 7
	note A#, 1
	note_type 12, 13, 0
	note B_, 12
	note_type 6, 13, 0
	octave 4
	note D_, 3
	octave 3
	note A#, 1
	note B_, 4
	note A_, 4
	note F#, 4
	note F_, 4
	note E_, 4
	note D_, 4
	octave 2
	note A_, 4
	note_type 12, 13, 0
	note B_, 16
	duty_cycle 0
	octave 3
	note A_, 1
	note_type 6, 13, 0
	rest 1
	note A#, 1
	note B_, 8
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	octave 4
	note D_, 4
	note E_, 2
	rest 2
	octave 3
	note B_, 2
	rest 1
	octave 4
	note C_, 1
	note C#, 12
	octave 2
	note G_, 2
	rest 4
	note A_, 2
	rest 4
	note B_, 2
	rest 4
	octave 3
	note C#, 2
	note E_, 2
	note F_, 2
	note F#, 8
	note A_, 2
	rest 2
	note B_, 2
	rest 1
	octave 4
	note C_, 1
	note C#, 4
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 3
	note B_, 14
	octave 2
	note B_, 2
	rest 4
	duty_cycle 1
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note D_, 2
	note E_, 2
	note F#, 2
	note A_, 2
	duty_cycle 0
	octave 3
	note E_, 2
	note F#, 2
	note G_, 8
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	octave 2
	note B_, 4
	octave 3
	note C#, 15
	note G#, 1
	note A_, 12
	note G_, 4
	note A_, 2
	note G_, 2
	note_type 12, 13, 0
	note F#, 16
	duty_cycle 1
	volume_envelope 13, 1
	note B_, 2
	note B_, 2
	note B_, 1
	note F#, 2
	note F#, 7
	sound_jump .mainloop

Music_HavocHideout_Ch3:
	note_type 12, 0, 0
	rest 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note A_, 2
	volume_envelope 2, 7
	note A_, 14
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note G_, 2
	volume_envelope 2, 7
	note G_, 14
	sound_call .sub3
	sound_loop 2, .mainloop
	volume_envelope 1, 7
	sound_call .sub4
	octave 3
	note E_, 1
	note C#, 1
	octave 2
	note A_, 1
	octave 3
	note F#, 1
	note E_, 1
	octave 2
	note A_, 1
	octave 3
	note G_, 1
	note E_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	sound_call .sub5
	note A_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	octave 3
	note F#, 1
	octave 2
	note B_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	octave 3
	note D_, 1
	note F#, 1
	note A_, 1
	octave 4
	note D_, 1
	sound_call .sub4
	note A_, 1
	octave 3
	note C#, 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note E_, 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note E_, 1
	octave 2
	note A_, 1
	rest 1
	sound_call .sub5
	octave 2
	note B_, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	octave 3
	note C#, 1
	rest 1
	note C#, 1
	rest 6
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 7
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 7
	note F#, 2
	volume_envelope 2, 7
	note F#, 2
	volume_envelope 1, 7
	sound_ret

.sub2:
	note F_, 2
	volume_envelope 2, 7
	note F_, 14
.sub3:
	volume_envelope 1, 7
	octave 2
	note F#, 1
	volume_envelope 2, 7
	note F#, 1
	sound_ret

.sub4:
	octave 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note G_, 1
	note D_, 1
	octave 2
	note G_, 1
	octave 3
	note F#, 1
	rest 1
	note D_, 1
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	sound_ret

.sub5:
	octave 3
	note E_, 1
	octave 2
	note A_, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 3
	note F#, 1
	note C#, 1
	octave 2
	note F#, 1
	octave 3
	note F#, 1
	rest 1
	note C#, 1
	octave 2
	note F#, 1
	octave 3
	note C#, 1
	note F#, 1
	rest 1
	sound_ret

Music_HavocHideout_Ch4:
	toggle_noise 3
	drum_speed 6
	drum_note 1, 2
	drum_note 2, 2
.mainloop:
	drum_note 5, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 3, 2
	sound_call .sub1
	drum_note 8, 2
	drum_note 9, 1
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	sound_call .sub1
	drum_note 3, 2
	drum_note 9, 2
	drum_note 8, 2
	sound_loop 8, .mainloop
.loop1:
	sound_call .sub2
	drum_note 9, 2
	drum_note 1, 2
	sound_call .sub2
	drum_note 1, 2
	drum_note 1, 2
	sound_loop 3, .loop1
	sound_call .sub2
	drum_note 9, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_jump .mainloop

.sub1:
	drum_note 5, 2
	drum_note 3, 2
	drum_note 5, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 9, 2
	drum_note 3, 2
	sound_ret

.sub2:
	drum_note 11, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 9, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
	sound_ret
