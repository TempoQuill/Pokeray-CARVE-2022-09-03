Music_SunkernSwamp: ; JACK GETSCHMAN
; drum
; OCT 28, 2019
	channel_count 4
	channel 1, Music_SunkernSwamp_Ch1
	channel 2, Music_SunkernSwamp_Ch2
	channel 3, Music_SunkernSwamp_Ch3
	channel 4, Music_SunkernSwamp_Ch4

Music_SunkernSwamp_Ch1:
	tempo 158
	volume 7
	duty_cycle 2
	note_type 12, 0, 0
.mainloop:
	rest 16
	sound_loop 6, .mainloop
	rest 4
.loop1:
	sound_call Music_SunkernSwamp_Ch2.sub1
	note D_, 4
	sound_loop 3, .loop1
	sound_call Music_SunkernSwamp_Ch2.sub1
	note D_, 16
.loop2:
	rest 16
	sound_loop 9, .loop2
	sound_jump .mainloop

Music_SunkernSwamp_Ch2:
	duty_cycle 2
	note_type 12, 0, 0
	rest 16
.mainloop:
	rest 16
.loop1:
	sound_call .sub2
	sound_loop 20, .loop1
	rest 16
	rest 16
.loop2:
	sound_call .sub2
	sound_loop 4, .loop2
	rest 4
	sound_call .sub1
	note D_, 16
	sound_jump .mainloop

.sub1:
	stereo_panning FALSE, TRUE
	note_type 6, 6, 4
	octave 5
	note A_, 8
	octave 6
	note C_, 8
	note D_, 8
	octave 5
	note A_, 8
	note A_, 1
	volume_envelope 5, 4
	note A_, 1
	note A_, 1
	note A_, 5
	volume_envelope 6, 4
	octave 6
	note C_, 8
	note D_, 8
	octave 5
	note A_, 8
	note A_, 1
	volume_envelope 5, 4
	note A_, 1
	note A_, 1
	note A_, 5
	volume_envelope 6, 4
	octave 6
	note C_, 8
	note D_, 8
	octave 5
	note G_, 8
	note F_, 8
	note G_, 8
	note A_, 8
	note_type 12, 6, 4
	sound_ret

.sub2:
	stereo_panning TRUE, FALSE
	volume_envelope 7, 2
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note D_, 1
	octave 3
	note A_, 3
	note A_, 3
	note A_, 3
	note A_, 1
	note A_, 3
	sound_ret

Music_SunkernSwamp_Ch3:
	stereo_panning TRUE, TRUE
	note_type 12, 1, 0
.mainloop:
	octave 5
	note D_, 1
	rest 3
	sound_loop 112, .mainloop
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump .mainloop

Music_SunkernSwamp_Ch4:
	toggle_noise 6
	drum_speed 12
.mainloop:
	rest 16
	sound_loop 14, .mainloop
	stereo_panning TRUE, FALSE
	sound_call .sub1
.loop1:
	sound_call .sub3
	sound_call .sub2
	sound_loop 6, .loop1
	sound_call .sub3
	stereo_panning TRUE, TRUE
	drum_note 2, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	stereo_panning TRUE, TRUE
	drum_note 3, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	stereo_panning TRUE, TRUE
	sound_call .sub1
.loop2:
	sound_call .sub3
	sound_call .sub2
	sound_loop 2, .loop2
	sound_call .sub3
	stereo_panning TRUE, TRUE
	drum_note 2, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	drum_note 11, 1
	stereo_panning TRUE, TRUE
	drum_note 5, 1
.loop3:
	sound_call .sub3
	sound_call .sub2
	sound_loop 3, .loop3
	stereo_panning TRUE, TRUE
	drum_note 1, 1
	drum_note 5, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	stereo_panning TRUE, FALSE
	sound_call .sub1
.loop4:
	sound_call .sub3
	sound_call .sub2
	sound_loop 2, .loop4
	sound_call .sub3
	sound_call .sub4
	sound_call .sub3
	sound_call .sub2
	sound_call .sub3
	sound_call .sub4
.loop5:
	sound_call .sub3
	sound_call .sub2
	sound_loop 3, .loop5
	sound_call .sub3
	sound_call .sub4
	sound_call .sub3
	sound_call .sub2
	sound_call .sub3
	stereo_panning TRUE, TRUE
	drum_note 2, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	stereo_panning TRUE, TRUE
	drum_note 5, 1
	drum_note 2, 1
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump .mainloop

.sub1:
	drum_note 7, 2
	stereo_panning FALSE, TRUE
	drum_note 11, 1
	drum_note 10, 1
.sub2:
	stereo_panning TRUE, TRUE
	drum_note 2, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	drum_note 1, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	sound_ret

.sub4:
	stereo_panning TRUE, TRUE
	drum_note 2, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	stereo_panning TRUE, TRUE
	drum_note 1, 1
	stereo_panning FALSE, TRUE
	drum_note 10, 1
	sound_ret
