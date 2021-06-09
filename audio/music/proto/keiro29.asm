Keiro29:
; engine
	channel_count 4
	channel 1, Keiro29_Ch1
	channel 2, Keiro29_Ch2
	channel 3, Keiro29_Ch3
	channel 4, Keiro29_Ch4

Keiro29_Ch1:
	tempo 149
	volume 7
	pitch_inc_switch
	duty_cycle 2
	note_type 12, 7, 2
	rest 4
.mainloop:
	sound_call .sub1
	note D_, 6
	sound_call .sub1
	note D_, 4
	sound_call .sub2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note D_, 2
	note G_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note A_, 2
	note G_, 2
	note F#, 2
	sound_call .sub2
	note B_, 2
	note A_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F#, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note A_, 2
	note A_, 6
	sound_jump .mainloop

.sub1:
	octave 3
	note A_, 2
	note F#, 2
	note D_, 2
	rest 2
	note G_, 2
	note A_, 2
	note F#, 2
	rest 2
	note B_, 2
	note A_, 2
	note E_, 2
	note G_, 2
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note A_, 2
	rest 2
	note A_, 2
	note F#, 2
	note D_, 2
	rest 2
	note G_, 2
	note A_, 2
	note F#, 2
	rest 2
	note G_, 2
	note B_, 2
	note A_, 2
	note F#, 2
	note D_, 2
	sound_ret

.sub2:
	note D_, 2
	note G_, 2
	note G_, 2
	note B_, 2
	note B_, 2
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note D_, 2
	note F#, 2
	note F#, 2
	note A_, 2
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
	note D_, 2
	sound_ret

Keiro29_Ch2:
	duty_cycle 2
	note_type 12, 12, 2
.mainloop:
	sound_call .sub1
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note B_, 2
	note A_, 2
	sound_call .sub1
	note E_, 2
	note C#, 2
	note D_, 2
	octave 3
	note A_, 2
	note F#, 2
	sound_loop 2, .mainloop
	note D_, 2
	sound_call .sub2
	octave 3
	note G_, 2
	note G_, 2
	note B_, 2
	note B_, 2
	octave 4
	note D_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	sound_call .sub2
	note G_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note F#, 4
	note E_, 4
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note D_, 2
	note D_, 2
	sound_jump .mainloop

.sub1:
	octave 4
	note D_, 1
	note E_, 1
	note F#, 2
	note F#, 2
	note A_, 2
	note A_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note D_, 2
	note G_, 1
	note F#, 1
	note E_, 2
	sound_ret

.sub2:
	note B_, 2
	note B_, 2
	octave 4
	note D_, 2
	note D_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	octave 3
	note A_, 2
	note A_, 2
	octave 4
	note D_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	note G_, 2
	note F#, 2
	sound_ret

Keiro29_Ch3:
	vibrato 11, 3, 3
	note_type 12, 1, 3
.mainloop:
	rest 2
.loop1:
	octave 4
	note D_, 8
	octave 3
	note A_, 8
	note G_, 4
	note G#, 4
	note A_, 4
	octave 4
	note C#, 4
	note D_, 8
	octave 3
	note A_, 8
	note G_, 4
	note A_, 4
	octave 4
	note D_, 8
	sound_loop 2, .loop1
.loop2:
	octave 3
	note G_, 16
	octave 4
	note D_, 16
	sound_loop 3, .loop2
	octave 3
	note G_, 8
	note A_, 8
	octave 4
	note D_, 9
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_jump .mainloop

Keiro29_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 4
.mainloop:
	drum_note 7, 4
	sound_loop 6, .mainloop
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 4
	sound_jump .mainloop
