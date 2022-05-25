MomPhoneGreetingText:
	text "?"

	para "Oh, hi, <PLAYER>!"
	line "Working hard?"
	done

MomPhoneLandmarkText:
	text "Oh, so you're in"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Isn't that where"
	line "@"
	text_ram wStringBuffer4
	text_start
	para "is? Did you go"
	line "take a look?"
	done

MomPhoneGenericAreaText:
	text "Really, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "I've never gone"
	line "there. That's kind"
	cont "of neat, <PLAYER>."
	done

MomPhoneNewBarkText:
	text "What? You're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Come see your MOM"
	line "sometime!"
	done

MomPhoneCherrygroveText:
	text "You're visiting"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "How about coming"
	line "home for a bit?"
	done

MomOtherAreaText:
	text "Wow, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Good luck on your"
	line "#MON quest!"
	done

MomDeterminedText:
	text "That sounds really"
	line "tough."

	para "But, <PLAYER>, I"
	line "know you're really"

	para "determined. You'll"
	line "be OK, right?"
	done

; leftover GSC exclusive feature where you hold money with Mom
; while it had benefits, Mom did spend a lot of money (¥45,190 to be exact)
; Ray bucks this feature simply by refusing to access it
MomCheckBalanceText:
	text "By the way, you've"
	line "saved up ¥@"
	text_ram wStringBuffer3
	text "."

	para "Do you want to"
	line "keep on saving?"
	done

MomImportantToSaveText:
	text "It's important to"
	line "save your money."
	done

MomYoureNotSavingText:
	text "Oh, <PLAYER>,"
	line "you're not saving"

	para "any money. Would"
	line "you like to save?"
	done

MomYouveSavedText:
	text "By the way, you've"
	line "saved up ¥@"
	text_ram wStringBuffer3
	text "."

	para "Want to start"
	line "saving again?"
	done

MomOKIllSaveText:
	text "OK. I'll put it in"
	line "the PC."
	done

MomPhoneStopSavingMoneyText:
	text "OK. I'll have to"
	line "toss it out then."
	done

MomPhoneHangUpText:
	text "<PLAYER>, keep it"
	line "up! I'm rooting"
	cont "for you, baby!"
	done

MomPhoneNoPokemonText:
	text "?"

	para "Oh, hi, <PLAYER>!"
	line "Wasn't PROF.ELM"
	cont "waiting for you?"
	done

MomPhoneNoPokedexText:
	text "?"

	para "Oh, hi, <PLAYER>!"
	line "You're on a big"

	para "mission for PROF."
	line "ELM? Be good!"
	done

MomPhoneNoGymQuestText:
	text "?"

	para "Hi, <PLAYER>! If"
	line "you're done with"

	para "your errand come"
	line "on home, dear."
	done

MomPhoneLectureText:
	text "<PLAYER>? Where are"
	line "you?"

	para "PROF LARCH told me"
	line "you want on a long"

	para "trip. You should've"
	line "told me about it."

	para "I bought a POTION"
	line "for your #MON."

	para "Should I store it"
	line "in your PC?"
	done
