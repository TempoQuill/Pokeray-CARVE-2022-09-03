Music_LookSibs:
; engine
; DEC 18 2019
	channel_count 3
	channel 1, Music_LookSibs_Ch1
	channel 2, Music_LookSibs_Ch2
	channel 3, Music_LookSibs_Ch3

Music_LookSibs_Ch1:
	tempo 245
	volume 7
	stereo_panning TRUE, FALSE
	pitch_inc_switch
	duty_cycle 2
	vibrato 9, 5, 3
	note_type 6, 10, 7
	octave 4
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 14
	vibrato 0, 0, 0
	stereo_panning FALSE, TRUE
	volume_envelope 10, 1
.mainloop:
	octave 3
	note D_, 4
	note D_, 4
	note D_, 4
	note F#, 4
	note D_, 4
	note D_, 4
	note C#, 4
	note C#, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note D_, 4
	octave 2
	note A_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 10, 6
	octave 3
	note E_, 1
	note G_, 1
	note F#, 6
	note F#, 1
	note G_, 1
	note A_, 4
	note F#, 4
	note D_, 8
	note C#, 6
	note G_, 1
	note A_, 1
	note B_, 4
	note G_, 4
	note E_, 4
	note G_, 2
	note A_, 2
	note F#, 6
	stereo_panning FALSE, TRUE
	volume_envelope 10, 1
	note F#, 4
	note A_, 4
	note F#, 4
	sound_jump .mainloop

Music_LookSibs_Ch2:
	stereo_panning FALSE, TRUE
	duty_cycle 3
	vibrato 9, 3, 3
	note_type 6, 13, 7
	octave 4
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 12
.mainloop:
	stereo_panning TRUE, TRUE
	note_type 3, 13, 7
	octave 3
	note F#, 12
	note F#, 2
	note G_, 2
	note A_, 7
	octave 4
	note C#, 1
	note D_, 8
	note E_, 12
	note F#, 4
	octave 3
	note A_, 16
	note A_, 12
	octave 4
	note C#, 2
	note D_, 2
	note E_, 7
	note F#, 1
	note G_, 8
	note F#, 12
	note E_, 4
	note D_, 12
	stereo_panning FALSE, TRUE
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note D_, 12
	note D_, 2
	note E_, 2
	note F#, 8
	note D_, 7
	note G#, 1
	note A_, 16
	octave 3
	note A_, 12
	octave 4
	note E_, 2
	note F#, 2
	note G_, 12
	note E_, 4
	note C#, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note_type 6, 13, 7
	note D_, 16
	sound_jump .mainloop

Music_LookSibs_Ch3:
	stereo_panning TRUE, TRUE
	note_type 6, 1, 4
	octave 4
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 6
	octave 2
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note C#, 1
	rest 1
.mainloop:
	sound_call .sub1
	stereo_panning TRUE, TRUE
	note E_, 1
	rest 1
	stereo_panning TRUE, FALSE
	note B_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 1
	rest 1
	stereo_panning TRUE, FALSE
	octave 3
	note B_, 1
	rest 1
.loop1:
	stereo_panning TRUE, TRUE
	note E_, 1
	rest 1
	stereo_panning TRUE, FALSE
	note A_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 1
	rest 1
	stereo_panning TRUE, FALSE
	octave 3
	note A_, 1
	rest 1
	sound_loop 3, .loop1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	note D_, 1
	rest 1
	stereo_panning TRUE, FALSE
	note F#, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 1
	rest 1
	stereo_panning TRUE, FALSE
	octave 3
	note A_, 1
	rest 1
	sound_loop 2, .sub1
	sound_ret
