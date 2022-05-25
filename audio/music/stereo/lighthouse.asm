Music_Lighthouse: ; JUNICHI MASUDA
; engine, wav
; SEP 13 2019
	channel_count 3
	channel 1, Music_Lighthouse_Ch1
	channel 2, Music_Lighthouse_Ch2
	channel 3, Music_Lighthouse_Ch3
	channel 4 ; from Lighthouse and Starman BGM

Music_Lighthouse_Ch1:
	tempo 144
	volume 7
	stereo_panning FALSE, TRUE
	pitch_inc_switch
	duty_cycle 3
	note_type 6, 11, 1
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note D_, 4
.mainloop:
	sound_call .sub1
	note E_, 2
	note G_, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note A_, 2
	sound_call .sub1
	note B_, 4
	octave 4
	note C_, 4
	note D_, 4
	note E_, 4
	octave 3
	note G_, 4
	note F_, 4
	note G_, 4
	note E_, 4
	note C_, 4
	note E_, 4
	note G_, 4
	note F_, 4
	note D_, 4
	note F_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note D_, 4
	note F_, 4
	note G_, 4
	note B_, 4
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	note D_, 4
	note G_, 4
	note A_, 2
	note B_, 2
	note A_, 8
	note C_, 4
	note F_, 2
	note G_, 2
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note G_, 8
	octave 2
	note B_, 6
	octave 3
	note E_, 2
	note C#, 4
	note G_, 4
	note C#, 4
	note G_, 4
	note F_, 4
	note D_, 2
	note E_, 2
	note F_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note F_, 4
	note B_, 8
	note B_, 2
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note B_, 8
	octave 3
	note D_, 4
	note G_, 2
	note F_, 2
	note E_, 4
	note E_, 8
	note G_, 8
	note A_, 8
	note G_, 4
	note F_, 4
	note F_, 8
	note A_, 8
	note B_, 8
	note A_, 4
	note G_, 4
	note G_, 8
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 8
	octave 4
	note C#, 4
	note D_, 4
	note C_, 4
	note D_, 4
	note F_, 12
	octave 3
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 8
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	note D_, 8
	octave 3
	note G_, 4
	note B_, 4
	octave 4
	note C_, 8
	octave 3
	note F_, 4
	note E_, 4
	note D_, 4
	note G_, 4
	octave 4
	note D_, 4
	note F_, 4
.loop1:
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	note D_, 4
	note E_, 4
	octave 3
	note G_, 4
	octave 4
	note D_, 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	sound_loop 2, .loop1
	vibrato 20, 5, 4
	volume_envelope 11, 7
	note F_, 16
	note C_, 16
	note G_, 16
	note D_, 16
	vibrato 0, 0, 0
	sound_jump .mainloop

.sub1:
	volume_envelope 11, 1
	note G_, 4
	note E_, 8
	note E_, 4
	note G_, 8
	note F_, 6
	note E_, 2
	note D_, 4
	note D_, 8
	note A_, 4
	note G_, 4
	octave 4
	note E_, 4
	note D_, 8
	octave 3
	note F_, 4
	note F_, 8
	note D_, 4
	note C_, 8
	note D_, 6
	note F_, 2
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 4
	note E_, 2
	note F_, 2
	note G_, 4
	sound_ret

Music_Lighthouse_Ch2:
	stereo_panning TRUE, FALSE
	duty_cycle 2
	note_type 12, 6, 3
	octave 2
	note C_, 3
	note G_, 1
	octave 3
	note C_, 4
	octave 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 1
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
.mainloop:
	stereo_panning TRUE, FALSE
	volume_envelope 6, 3
	sound_call .sub1
	octave 1
	note G_, 2
	octave 2
	note E_, 2
	sound_call .sub2
	octave 1
	note B_, 2
	note A_, 2
	note G_, 2
	sound_call .sub1
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	sound_call .sub2
	stereo_panning TRUE, TRUE
	duty_cycle 3
	vibrato 20, 4, 3
	volume_envelope 10, 3
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 6
	octave 3
	note B_, 2
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 6
	octave 4
	note C_, 2
	note D_, 8
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	octave 3
	note B_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 6
	note D_, 2
	note E_, 8
	note F_, 4
	octave 3
	note A_, 3
	octave 4
	note C_, 1
	note F_, 8
	note E_, 4
	octave 3
	note G_, 3
	note B_, 1
	octave 4
	note E_, 8
	note D_, 3
	note C_, 1
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note A_, 2
	note G_, 16
	stereo_panning TRUE, FALSE
	duty_cycle 2
	vibrato 0, 0, 0
	volume_envelope 6, 4
	octave 2
	note C_, 2
	note C_, 4
	note E_, 2
	note G_, 2
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	note D_, 2
	note D_, 4
	note F_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 2
	note E_, 2
	note G_, 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note A_, 2
	note A_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note G_, 2
	note A_, 2
	note B_, 4
	octave 3
	note D_, 2
	note F_, 2
	note G_, 2
	octave 2
	note C_, 8
	note G_, 8
	note F_, 8
	note G_, 8
	note C_, 4
	note E_, 4
	note G_, 4
	note E_, 4
	note F_, 4
	note A_, 4
	note G_, 6
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	note F_, 4
	note D_, 4
	octave 2
	note B_, 4
	note G_, 4
	octave 1
	note G_, 4
	sound_jump .mainloop

.sub1:
	octave 2
	note C_, 2
	note G_, 2
	octave 1
	note G_, 2
	octave 2
	note E_, 2
	note C_, 2
	note G_, 2
	sound_ret

.sub2:
	note G_, 2
	note B_, 4
	octave 3
	note F_, 2
	note D_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 4
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	note D_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note C_, 2
	sound_ret

Music_Lighthouse_Ch3:
	stereo_panning TRUE, TRUE
	vibrato 11, 2, 3
	note_type 12, 1, 2
	octave 5
	note G_, 6
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note G_, 1
	rest 3
	note G_, 1
	rest 3
.mainloop:
	stereo_panning TRUE, TRUE
	sound_call .sub1
	note D_, 2
	note E_, 6
	rest 2
	sound_call .sub1
	octave 4
	note G_, 2
	octave 5
	note C_, 6
	rest 2
	stereo_panning TRUE, FALSE
	vibrato 0, 0, 0
	volume_envelope 2, 5
	octave 3
	note C_, 2
	rest 1
	note G_, 1
	note C_, 2
	rest 2
	note C_, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	rest 1
	note D_, 2
	rest 1
	note A_, 1
	note D_, 2
	rest 2
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note G_, 2
	rest 1
	octave 3
	note D_, 1
	note G_, 2
	rest 2
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note F_, 2
	rest 1
	octave 3
	note C_, 1
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note E_, 2
	rest 1
	note B_, 1
	octave 3
	note E_, 2
	rest 2
.loop1:
	octave 3
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_loop 2, .loop1
	octave 3
	note D_, 2
	rest 1
	note A_, 1
	octave 4
	note D_, 2
	rest 2
.loop2:
	octave 3
	note A_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	sound_loop 2, .loop2
	note D_, 1
	rest 3
	note_type 6, 1, -3
	note G_, 2
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	note G_, 4
	rest 4
	octave 4
	note G_, 4
	rest 4
	octave 5
	note C_, 2
	rest 2
	octave 4
	note G_, 2
	rest 6
	octave 5
	note C_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	rest 6
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	octave 4
	note A_, 2
	rest 6
	octave 5
	note D_, 2
	rest 2
	note F_, 2
	rest 2
	note G_, 2
	rest 6
	note F_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	rest 6
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 6
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	note G_, 2
	rest 10
	stereo_panning TRUE, TRUE
	vibrato 11, 2, 3
	volume_envelope 1, 2
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
.loop3:
	octave 6
	note C_, 4
	rest 4
	note C_, 4
	octave 5
	note G_, 4
	note B_, 4
	rest 4
	note B_, 4
	note G_, 4
	note A_, 4
	rest 4
	note A_, 4
	note G_, 4
	note B_, 4
	rest 4
	note B_, 4
	note G_, 4
	sound_loop 3, .loop3
	note_type 12, 1, -4
	octave 4
	note A_, 16
	note B_, 16
	sound_jump .mainloop

.sub1:
	volume_envelope 1, -4
	octave 5
	note C_, 1
	rest 1
	octave 4
	note G_, 1
	rest 3
	octave 5
	note C_, 1
	rest 1
	note E_, 2
	rest 2
	note D_, 1
	rest 2
	note C_, 1
	octave 4
	note B_, 1
	rest 1
	note G_, 1
	rest 13
	note B_, 1
	rest 1
	octave 5
	note D_, 1
	rest 3
	octave 4
	note G_, 1
	rest 1
	note A_, 2
	rest 2
	note B_, 1
	rest 2
	octave 5
	note D_, 1
	note C_, 4
	rest 2
	sound_ret
