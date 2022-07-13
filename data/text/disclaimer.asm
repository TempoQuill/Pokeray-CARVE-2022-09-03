UnusedMetadataCorruptionText1:
IF DEF (_RAY)
	db   "    #MON RAY"
ENDC
IF DEF (_SHADE)
	db   "   #MON SHADE"
ENDC
	next "  We're sorry, but"
	next " this cart has been"
	next "copied in a way that"
	next " has corrupted the"
	next " header data neces-"
	next "sary for this game"
	next "  to run properly.@"

IF DEF (_RAY)
	db 0
ENDC

UnusedMetadataCorruptionText2:
IF DEF (_RAY)
	db   "    #MON RAY"
ENDC
IF DEF (_SHADE)
	db   "   #MON SHADE"
ENDC
	next "Obtain a fresh copy"
	next "wherever available."
	next "But please make sure"
	next "to support the staff"
	next "at Game Freak before"
	next "     doing so.@"

IF DEF (_RAY)
	db 0
ENDC

DisclaimerText:
	db   "      WARNING:"
	next " The following is a"
	next "passion project, and"
	next "can't be sold. Doing"
	next "so voids all rulings"
	next " of Fair Use within"
	next " Japan and the USA."
	next " Please support the"
	next " official staff at"
	next "    Game Freak.@"
