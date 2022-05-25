Music_MtVacuum: ; JUNICHI MASUDA
; engine, wav
; SEP 8 2019
	channel_count 3
	channel 1, Music_MtVacuum_Ch1
	channel 2, Music_MtVacuum_Ch2
	channel 3, Music_MtVacuum_Ch3
	channel 4 ; from Mt Moon

Music_MtVacuum_Ch1:
	tempo 158
	volume 7
	stereo_panning FALSE, TRUE
	transpose 0, 12
	duty_cycle 1
	note_type 12, 0, 0
	rest 1
.mainloop:
	sound_call .sub1
	octave 4
	note C_, 2
	transpose 0, 0
	sound_loop 7, .mainloop
	sound_call .sub1
	octave 4
	note C_, 1
	duty_cycle 2
	volume_envelope 8, 2
	octave 3
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 2
.loop1:
	note G#, 2
	note G_, 2
	note G#, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	sound_loop 2, .loop1
	note G#, 2
	note G_, 2
	note G#, 2
	note G_, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note G#, 2
	note G_, 2
	note F_, 2
	note E_, 2
	rest 1
	duty_cycle 1
	transpose 1, 11
.loop2:
	sound_call .sub1
	octave 4
	note C_, 2
	sound_call .sub1
	octave 4
	note C_, 2
	transpose 1, 10
	sound_loop 2, .loop2
	transpose 1, 9
	sound_call .sub1
	octave 4
	note C_, 2
	sound_call .sub1
	octave 4
	note C_, 1
	transpose 0, 0
	volume_envelope 7, 2
.loop3:
	note D#, 2
	sound_loop 16, .loop3
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	transpose 0, 1
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 1, 10
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 0, 0
.loop4:
	note D#, 2
	sound_loop 16, .loop4
	rest 1
	sound_jump .mainloop

.sub1:
	volume_envelope 3, 3
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note F#, 2
	note G#, 2
	octave 4
	note C_, 2
	volume_envelope 1, 3
	octave 3
	note G#, 2
	sound_ret

.sub2:
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	sound_ret

Music_MtVacuum_Ch2:
	stereo_panning TRUE, TRUE
	transpose 0, 12
	duty_cycle 1
.mainloop:
	sound_call .sub1
	transpose 0, 0
	sound_loop 12, .mainloop
	transpose 1, 11
	sound_call .sub1
	sound_call .sub1
	transpose 1, 10
	sound_call .sub1
	sound_call .sub1
	transpose 1, 9
.loop1:
	sound_call .sub1
	sound_loop 4, .loop1
	transpose 0, 0
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	transpose 0, 1
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 1, 10
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 0, 0
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	note_type 12, 10, 1
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note F#, 2
	note G#, 2
	octave 4
	note C_, 2
	volume_envelope 5, 1
	octave 3
	note G#, 2
	octave 4
	note C_, 2
	sound_ret

.sub2:
	volume_envelope 10, 1
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note F#, 2
	note G#, 2
	octave 4
	note C_, 2
	sound_loop 2, .sub2
	sound_ret

Music_MtVacuum_Ch3:
	stereo_panning TRUE, TRUE
	vibrato 8, 3, 3
	note_type 12, 1, -4
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	transpose 1, 11
	sound_call .sub2
	transpose 0, 0
	rest 16
	rest 16
	vibrato 0, 1, 3
	sound_call .sub3
	sound_call .sub4
	transpose 1, 11
	sound_call .sub4
	transpose 0, 0
	sound_call .sub4
	transpose 0, 1
	sound_call .sub4
	transpose 0, 0
	sound_call .sub4
	transpose 1, 11
	sound_call .sub4
	transpose 1, 10
	sound_call .sub4
	transpose 1, 11
	sound_call .sub4
	transpose 0, 0
	sound_call .sub3
	sound_jump Music_MtVacuum_Ch3

.sub1:
	octave 5
	note C_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, -4
	note C_, 2
.sub1loop1:
	stereo_panning TRUE, TRUE
	volume_envelope 1, -4
	note D_, 2
	note D#, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, -4
	note D#, 2
	sound_loop 3, .sub1loop1
.sub1loop2:
	stereo_panning TRUE, TRUE
	volume_envelope 1, -4
	note F_, 2
	note F#, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, -4
	note F#, 2
	sound_loop 2, .sub1loop2
	stereo_panning TRUE, TRUE
	volume_envelope 1, -4
	note F_, 2
	note D#, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, -4
	note D#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, -4
	note D_, 2
	note C_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, -4
	note C_, 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, -4
	octave 4
	note A#, 2
	sound_ret

.sub2:
	rest 16
	stereo_panning TRUE, FALSE
	volume_envelope 1, -4
	octave 3
	note D#, 1
	volume_envelope 2, -4
	note D#, 1
	volume_envelope 1, -4
	note B_, 1
	volume_envelope 2, -4
	note B_, 1
	volume_envelope 1, -4
	note A_, 1
	volume_envelope 2, -4
	note A_, 1
	volume_envelope 1, -4
	note F_, 1
	volume_envelope 2, -4
	note F_, 1
	volume_envelope 1, -4
	note G_, 1
	volume_envelope 2, -4
	note G_, 1
	volume_envelope 1, -4
	note B_, 1
	volume_envelope 2, -4
	note B_, 1
	note G_, 1
	volume_envelope 3, -4
	note G_, 1
	volume_envelope 2, -4
	note B_, 1
	volume_envelope 3, -4
	note B_, 1
	sound_ret

.sub3:
	volume_envelope 1, 6
	octave 6
	note C#, 1
	volume_envelope 2, 6
	note C#, 1
	sound_loop 16, .sub3
	sound_ret

.sub4:
	rest 2
	volume_envelope 1, 6
	note C#, 1
	volume_envelope 2, 6
	note C#, 1
	sound_loop 6, .sub4
	sound_ret
