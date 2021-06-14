email: MACRO
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to EMAIL_* constants
rept TOTAL_CONTACTS
	email TRAINER_NONE, EMAIL_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
endr