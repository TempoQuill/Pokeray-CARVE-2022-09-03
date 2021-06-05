MomPhoneCalleeScript:
	checkevent SCENE_ON_JOURNEY
	iftrue .script_10401f
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue MomPhoneLectureScript
	checkevent EVENT_GOT_OLD_AMBER
	iftrue MomPhoneNoGymQuestScript
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue MomPhoneNoPokedexScript
	sjump MomPhoneNoPokemonScript

.script_10401f
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPhoneHangUpScript
	writetext MomPhoneGreetingText
	promptbutton
	getcurlandmarkname STRING_BUFFER_3
	readvar VAR_ROOFPALETTE
	ifequal 1, MomPhonePalette1
	ifequal 2, MomPhonePalette2
	sjump MomPhoneOther

MomPhoneLandmark:
	writetext MomPhoneLandmarkText
	promptbutton
	sjump MomSavingMoney

MomPhonePalette1:
	writetext MomPhoneGenericAreaText
	promptbutton
	sjump MomSavingMoney

MomPhonePalette2:
	writetext MomOtherAreaText
	promptbutton
	sjump MomSavingMoney

MomPhoneOther:
	writetext MomDeterminedText
	promptbutton
	sjump MomSavingMoney

MomSavingMoney:
	sjump MomPhoneHangUpScript

MomPhoneHangUpScript:
	writetext MomPhoneHangUpText
	end

MomPhoneNoPokemonScript:
	writetext MomPhoneNoPokemonText
	end

MomPhoneNoPokedexScript:
	writetext MomPhoneNoPokedexText
	end

MomPhoneNoGymQuestScript:
	writetext MomPhoneNoGymQuestText
	end

MomPhoneLectureScript:
	setevent EVENT_MOM_KNOWS_ABOUT_JOURNEY
	specialemail SPECIALCALL_NONE
	writetext MomPhoneLectureText
	yesorno
	iftrue .potion
	writetext MomPhoneStopSavingMoneyText
.done
	waitbutton
	closetext
	end

.potion
	callasm ASM_PutPotionInPC
	writetext MomOKIllSaveText
	sjump .done

ASM_PutPotionInPC:
	ld hl, wPCItems
.loop
	ld a, [hli]
	cp -1
	inc hl
	jr nz, .loop
	ld [hld], a
	dec hl
	ld a, POTION
	ld [hli] a
	inc [hl]
	ret
