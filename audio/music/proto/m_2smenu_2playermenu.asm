2SMenu:
; engine
	channel_count 2
	channel 1, 2SMenu_Ch1
	channel 2, 2SMenu_Ch2

2SMenu_Ch1:
	tempo 138
	volume 7
	pitch_inc_switch
	duty_cycle 2
	sound_call .sub1
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	note_type 8, 7, 2
	octave 4
	note C_, 3
	note C_, 1
	note C_, 1
	note C_, 1
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note C_, 4
	note C_, 2
	sound_ret

.sub2:
	octave 4
	note E_, 3
	note E_, 1
	note E_, 1
	note E_, 1
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	note E_, 4
	note E_, 2
	note C_, 3
	note C_, 1
	note C_, 1
	note C_, 1
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note C_, 4
	note C_, 2
	note E_, 4
	note E_, 2
	note G_, 4
	note G_, 2
	octave 5
	note C_, 4
	note C_, 2
	octave 4
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 2
	octave 5
	note C_, 4
	note C_, 2
	note E_, 4
	note E_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note E_, 6
	note C_, 2
	note C_, 2
	note C_, 2
	note E_, 6
.sub2loop1:
	octave 4
	note G_, 2
	note G_, 2
	note G_, 2
	octave 5
	note C_, 6
	sound_loop 2, .sub2loop1
	sound_ret

2SMenu_Ch2:
	duty_cycle 2
.mainloop:
	sound_call 2SMenu_Ch1.sub1
	sound_call 2SMenu_Ch1.sub2
	sound_jump .mainloop
