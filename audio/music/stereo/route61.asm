Music_Route61:
; wav, drum
; AUG 15 2019
	channel_count 4
	channel 1, Music_Route61_Ch1
	channel 2, Music_Route61_Ch2
	channel 3, Music_Route61_Ch3
	channel 4, Music_Route61_Ch4

Music_Route61_Ch1:
	tempo 140
	volume 7
	duty_cycle 2
	vibrato 4, 5, 2
	stereo_panning FALSE, TRUE
	note_type 12, 0, 0
	rest 2
.mainloop:
	sound_call .sub1
	octave 4
	note C#, 2
	note C_, 2
.loop1:
	octave 3
	note F_, 2
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note A#, 2
	sound_loop 2, .loop1
.loop2:
	note D#, 2
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	sound_loop 2, .loop2
	note C#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note C#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note D#, 2
	note G_, 2
	note A#, 2
	note G_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	note G_, 2
	sound_call .sub1
	note A#, 2
	note G#, 2
	volume_envelope 10, 2
	note G_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 10, 1
	note D#, 4
	stereo_panning FALSE, TRUE
	volume_envelope 10, 3
	note G_, 4
	note G_, 2
	note A#, 2
	note G#, 2
	note F#, 2
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note G#, 2
	note A#, 4
	note G#, 2
	note F#, 2
	note C#, 2
	volume_envelope 10, 1
	note D#, 2
	note G#, 2
	note D#, 2
	volume_envelope 10, 2
	note C#, 4
	volume_envelope 10, 1
	note D#, 2
	note C#, 2
	note D#, 2
	volume_envelope 10, 2
	note F_, 4
	octave 2
	note G#, 4
	note A#, 4
	octave 3
	note C_, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 10, 1
	octave 2
	note G#, 2
	octave 3
	note C#, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note C#, 2
	note F_, 2
	note C#, 2
	note A#, 2
	note C#, 2
	note G#, 2
	note F#, 2
	note G#, 2
	note C#, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note G#, 2
	octave 4
	note C#, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 3
	note G#, 2
	note F_, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note F_, 2
	note G#, 2
	sound_ret

Music_Route61_Ch2:
	duty_cycle 1
	note_type 6, 13, 1
	rest 4
.mainloop:
	sound_call .sub1
	octave 2
	note C#, 4
	sound_loop 3, .mainloop
	sound_call .sub1
	octave 1
	note G#, 4
.loop1:
	sound_call .sub1
	octave 2
	note C#, 4
	sound_loop 3, .loop1
	note C_, 4
	note C_, 4
	stereo_panning TRUE, FALSE
	octave 3
	note D#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 4
.loop2:
	octave 1
	note A#, 4
	note A#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 4
	sound_loop 2, .loop2
.loop3:
	note G#, 4
	note G#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note D#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 4
	sound_loop 2, .loop3
.loop4:
	note F#, 4
	note F#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C#, 1
	note F#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note F#, 4
	sound_loop 2, .loop4
	octave 2
	note D#, 4
	note D#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note D#, 4
	note D#, 4
	note D#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	octave 2
	note C_, 2
.loop5:
	sound_call .sub1
	octave 2
	note C#, 4
	sound_loop 3, .loop5
	sound_call .sub1
	octave 1
	note G#, 4
.loop6:
	sound_call .sub1
	octave 2
	note C#, 4
	sound_loop 4, .loop6
	note D#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note G_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 13, 2
	octave 1
	note D#, 8
	volume_envelope 13, 1
	note D#, 4
	volume_envelope 13, 2
	note F_, 8
	volume_envelope 13, 1
	note F#, 4
	stereo_panning TRUE, FALSE
	octave 2
	note A#, 2
	rest 2
	octave 3
	note C#, 1
	note F#, 1
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 13, 2
	octave 2
	note F#, 8
	volume_envelope 13, 1
	note C#, 4
	volume_envelope 13, 2
	octave 1
	note F#, 8
	volume_envelope 13, 1
	note G#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C_, 2
	rest 2
	note D#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 13, 2
	octave 2
	note G#, 8
	volume_envelope 13, 1
	note D#, 4
	octave 1
	note G#, 4
	octave 2
	note G#, 4
	note C#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 4
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note G#, 1
	rest 2
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	octave 2
	note C#, 4
	note C#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C#, 1
	note G#, 1
	rest 2
	stereo_panning TRUE, TRUE
	sound_ret

Music_Route61_Ch3:
	stereo_panning TRUE, TRUE
	vibrato 10, 2, 3
	note_type 6, 1, 3
	rest 4
.mainloop:
	sound_call .sub1
	note_type 12, 1, -6
	octave 5
	note F_, 2
	note D#, 2
	note C#, 8
	note F_, 2
	note D#, 2
	note C#, 2
	note D#, 8
	note C_, 4
	note C#, 2
	note D#, 2
	note C#, 10
	rest 2
	volume_envelope 1, -4
	octave 6
	note C#, 2
	note C_, 2
	octave 5
	note A#, 2
	rest 2
	note D#, 2
	rest 2
	note G_, 4
	note F_, 2
	note D#, 2
	rest 2
	sound_call .sub1
	note_type 12, 1, 4
	octave 5
	note C#, 2
	note C_, 2
	octave 4
	note A#, 2
	rest 4
	octave 5
	note D#, 6
	note C#, 2
	note C_, 2
	octave 4
	note A#, 4
	octave 5
	note C_, 2
	note C#, 10
	note C_, 3
	rest 1
	note C_, 2
	octave 4
	note A#, 4
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	note C#, 8
	volume_envelope 2, 5
	octave 4
	note C#, 1
	note D#, 1
	note F_, 1
	note G#, 1
	octave 5
	note C#, 1
	note D#, 1
	note F_, 1
	note G#, 1
	sound_jump .mainloop

.sub1:
	note_type 6, 1, 3
	rest 8
	octave 5
	note C#, 4
	note D#, 4
	note F_, 8
	note C#, 8
	note F_, 1
	note F#, 7
	note F_, 4
	note D#, 4
	note F_, 8
	note C#, 8
	rest 8
	note F_, 4
	note F#, 4
	note G#, 8
	note F_, 4
	note C#, 4
	octave 4
	note G#, 16
	rest 8
	sound_ret

Music_Route61_Ch4:
	toggle_noise 8
	stereo_panning TRUE, TRUE
	drum_speed 6
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
.mainloop:
	stereo_panning FALSE, TRUE
	drum_note 5, 4
.loop1:
	sound_call .sub1
	drum_note 4, 4
	sound_loop 7, .loop1
	sound_call .sub1
	stereo_panning FALSE, TRUE
	drum_note 5, 4
.loop2:
	sound_call .sub1
	drum_note 4, 4
	sound_loop 3, .loop2
	sound_call .sub1
.loop3:
	stereo_panning FALSE, TRUE
	drum_note 5, 8
	stereo_panning TRUE, FALSE
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	stereo_panning FALSE, TRUE
	drum_note 5, 12
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	drum_note 10, 2
	drum_note 10, 2
	drum_note 10, 2
	sound_loop 3, .loop3
	stereo_panning FALSE, TRUE
	drum_note 5, 8
	stereo_panning TRUE, TRUE
	drum_note 1, 8
	drum_note 1, 8
	stereo_panning TRUE, FALSE
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, FALSE
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	sound_ret
