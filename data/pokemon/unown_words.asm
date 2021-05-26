unownword: MACRO
x = 1
rept STRLEN(\1)
	db STRSUB(\1, x, 1) - "A" + FIRST_UNOWN_CHAR
x = x + 1
endr
	db -1
ENDM

UnownWords:
; entries correspond to UNOWN_* form constants
	dw UnownWordA
	dw UnownWordA
	dw UnownWordB
	dw UnownWordC
	dw UnownWordD
	dw UnownWordE
	dw UnownWordF
	dw UnownWordG
	dw UnownWordH
	dw UnownWordI
	dw UnownWordJ
	dw UnownWordK
	dw UnownWordL
	dw UnownWordM
	dw UnownWordN
	dw UnownWordO
	dw UnownWordP
	dw UnownWordQ
	dw UnownWordR
	dw UnownWordS
	dw UnownWordT
	dw UnownWordU
	dw UnownWordV
	dw UnownWordW
	dw UnownWordX
	dw UnownWordY
	dw UnownWordZ

UnownWordA: unownword "ATLAS"
UnownWordB: unownword "BUILD"
UnownWordC: unownword "COURSE"
UnownWordD: unownword "DIRECT"
UnownWordE: unownword "ERRAND"
UnownWordF: unownword "FLAG"
UnownWordG: unownword "GRANT"
UnownWordH: unownword "HELPFUL"
UnownWordI: unownword "INITIAL"
UnownWordJ: unownword "JINGLE"
UnownWordK: unownword "KEEP"
UnownWordL: unownword "LAUGH"
UnownWordM: unownword "MANAGE"
UnownWordN: unownword "NUZZLE"
UnownWordO: unownword "OBSERVE"
UnownWordP: unownword "PERFORM"
UnownWordQ: unownword "QUESTION"
UnownWordR: unownword "RELATE"
UnownWordS: unownword "SOURCE"
UnownWordT: unownword "TIMBRE"
UnownWordU: unownword "UTILITY"
UnownWordV: unownword "VARIFY"
UnownWordW: unownword "WHISPER"
UnownWordX: unownword "XENIAL"
UnownWordY: unownword "YIELD"
UnownWordZ: unownword "ZOOM"
