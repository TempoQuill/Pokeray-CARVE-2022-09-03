
; unused text regarding the University TM
StartedUniversityTMText:
	text "<PLAYER> started up"
	line "the UNIVERSITY TM!"

	para "Teach a move to a"
	line "#MON?"
	done

UniversityTMMoveUsedText:
	text "<PLAYER> taught"
	line "@"
	text_ram wStringBuffer2
	text " using"
	cont "the UNIVERSITY TM!"

	para "This #MON will"
	line "now get time and a"

	para "half the EXP. it"
	line "did before!"
	sound_item
	done

UniversityTMDragonRageText:
	text "<PLAYER> taught"
	line "@"
	text_ram wStringBuffer2
	text " with"
	cont "the UNIVERSITY TM!"

	para "This #MON will"
	line "now recieve double"

	para "the EXPERIENCE it"
	line "did before!"
	sound_item
	done
