BillPhoneMornGreetingText:
	text "Good morning!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneDayGreetingText:
	text "Good afternoon!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneNiteGreetingText:
	text "Good evening!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneGenericText:
	text "Who's calling?"

	para "<PLAYER>, is it?"
	line "Hang on a sec…"

	para "<……>"
	line "<……>"
	done

BillPhoneNotFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your BOX"
	line "has room for @"
	text_ram wStringBuffer3
	text_start
	cont "more #MON."

	para "Get out there and"
	line "fill it up!"
	done

BillPhoneNearlyFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your BOX"
	line "has room for only"
	cont "@"
	text_ram wStringBuffer3
	text " more #MON."

	para "Maybe you should"
	line "switch your BOX."
	done

BillPhoneFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAYER>, your BOX"
	line "is full!"

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."
	done

BillPhoneNewlyFullText:
	text "Hi, <PLAYER>?"
	line "It's me, BILL!"

	para "Thanks for using"
	line "my STORAGE SYSTEM."

	para "That last #MON"
	line "you sent filled"
	cont "your BOX up."

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."

	para "Bye now!"
	done

; new BILL call text
BillPhoneTimeCapsuleText:
	text "Hi, <PLAYER>! It's"
	line "me, BILL!"

	para "Have you heard of"
	line "the TIME CAPSULE?"

	para "There's a new ver-"
	line "sion I'm making."

	para "It's really rough"
	line "knowing how many"
	cont "#MON there are."

	para "I had to toss the"
	line "old one out 'cause"
	cont "it was really old."

	para "With the new one,"
	line "You can trade with"
	cont "players in JOHTO!"

	para "Possibly in KANTO"
	line "too… I'll have to"
	cont "look into that."

	para "Can you try it out"
	line "for me? That'd be a"
	cont "REALLY big help!"

	para "Let me know when"
	line "you do! Buh-bye!"
	done

BillPhoneAssemblyText:
	text "Hi, <PLAYER>! It's"
	line "me, BILL!"

	para "Have you seen any"
	line "toolboxes lying"
	cont "'round?"

	para "I visited EQUINTO"
	line "a year ago to do"
	cont "some research,"

	para "and I noticed a"
	line "few of the new"

	para "#MON seemed to"
	line "be structurally"
	cont "different."

	para "Found a few items"
	line "around me, put 'em"
	cont "togther, and…"

	para "I literally made a"
	line "new friend."

	para "I put those tool-"
	line "boxes there to"

	para "help you do the"
	line "same. Let me know"
	cont "what you think!"

	para "Buh-bye now!"
	done
