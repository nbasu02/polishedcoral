SunbeamReserve_MapScriptHeader:
	db 2 ; scene scripts
	scene_script SunbeamReserveTrigger0
	scene_script SunbeamReserveTrigger1

	db 0 ; callbacks

	db 2 ; warp events
	warp_def 11, 16, 3, SPRUCES_LAB
	warp_def 11, 17, 3, SPRUCES_LAB

	db 0 ; coord events

	db 1 ; bg events
	signpost 15,  6, SIGNPOST_READ, SunbeamSlowpokeGirlSign

	db 11 ; object events
	person_event SPRITE_SPRUCE, 48,  7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ISLAND_STRAND
	person_event SPRITE_DONPHAN,  6, 19, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamReserveDonphan, -1
	person_event SPRITE_SLOWPOKETAIL, 14,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamReserveSlowpoke, -1
	person_event SPRITE_CUTE_GIRL, 16,  6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, SunbeamIslandNPC3, -1
	person_event SPRITE_NIDOQUEEN,  6, 13, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamReserveNidoqueen, -1
	person_event SPRITE_NIDORANM,  7, 15, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamReserveNidoranM, -1
	person_event SPRITE_NIDORANF,  5, 14, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamReserveNidoranF, -1
	person_event SPRITE_LOPUNNY, 12,  8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamReserveLopunny, -1
	person_event SPRITE_ALTARIA, 10, 12, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_TEAL, PERSONTYPE_SCRIPT, 0, SunbeamReserveAltaria, -1
	person_event SPRITE_MAGMAR, 13, 13, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamReserveMagmar, -1
	person_event SPRITE_ELECTABUZZ, 11, 20, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SunbeamReserveElectabuzz, -1

	
	const_def 1 ; object constants
	const SUNBEAM_SPRUCE
	
SunbeamReserveTrigger0:
	playsound SFX_EXIT_BUILDING
	moveperson SUNBEAM_SPRUCE, $11, $b
	appear SUNBEAM_SPRUCE
	domaptrigger SPRUCES_LAB, $2
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce1
	spriteface SUNBEAM_SPRUCE, DOWN
	opentext
	writetext SunbeamReserveSpruceText1
	waitbutton
	closetext
	follow SUNBEAM_SPRUCE, PLAYER
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce2
	stopfollow
	spriteface SUNBEAM_SPRUCE, RIGHT
	spriteface PLAYER, RIGHT
	opentext
	writetext SunbeamReserveSpruceText2
	waitbutton
	closetext
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce3
	spriteface SUNBEAM_SPRUCE, DOWN
	opentext
	writetext SunbeamReserveSpruceText3
	waitbutton
	writetext SunbeamReserveDonphanText
	cry DONPHAN
	waitbutton
	closetext
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce4
	follow SUNBEAM_SPRUCE, PLAYER
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce5
	stopfollow
	spriteface SUNBEAM_SPRUCE, UP
	spriteface PLAYER, UP
	opentext
	writetext SunbeamReserveSpruceText4
	waitbutton
	closetext
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce6
	opentext
	writetext SunbeamReserveSpruceText5
	waitbutton
	writetext SunbeamReserveNidoqueenText
	cry NIDOQUEEN
	waitbutton
	closetext
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce7
	follow SUNBEAM_SPRUCE, PLAYER
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce8
	stopfollow
	spriteface SUNBEAM_SPRUCE, LEFT
	opentext
	writetext SunbeamReserveSpruceText6
	waitbutton
	closetext
	follow SUNBEAM_SPRUCE, PLAYER
	applymovement SUNBEAM_SPRUCE, Movement_SunbeamSpruce9
	stopfollow
	spriteface SUNBEAM_SPRUCE, LEFT
	opentext
	writetext SunbeamReserveSpruceText7
	waitbutton
	closetext
	spriteface PLAYER, DOWN
	special FadeOutPalettes
	changeblock $10, $a, $df
	warpcheck
	end

SunbeamReserveTrigger1:
	end
	
SunbeamReserveNidoqueen:
	opentext
	writetext SunbeamReserveNidoqueenText
	cry NIDOQUEEN
	waitbutton
	closetext
	end
	
SunbeamReserveNidoranM:
	opentext
	writetext SunbeamReserveNidoranMText
	cry NIDORAN_M
	waitbutton
	closetext
	end
	
SunbeamReserveNidoranF
	opentext
	writetext SunbeamReserveNidoranFText
	cry NIDORAN_F
	waitbutton
	closetext
	end
	
SunbeamReserveSlowpoke:
	opentext
	writetext SunbeamReserveSlowpokeText
	cry SLOWPOKE
	waitbutton
	closetext
	end
	
SunbeamReserveLopunny:
	opentext
	writetext SunbeamReserveLopunnyText
	cry BULBASAUR ;LOPUNNY
	waitbutton
	closetext
	end
	
SunbeamReserveAltaria:
	opentext
	writetext SunbeamReserveAltariaText
	cry BULBASAUR ;ALTARIA
	waitbutton
	closetext
	end
	
SunbeamReserveDonphan:
	opentext
	writetext SunbeamReserveDonphanText
	cry DONPHAN
	waitbutton
	closetext
	end
	
SunbeamReserveMagmar:
	opentext
	writetext SunbeamReserveMagmarText
	cry MAGMAR
	waitbutton
	closetext
	end
	
SunbeamReserveElectabuzz:
	opentext
	writetext SunbeamReserveElectabuzzText
	cry ELECTABUZZ
	waitbutton
	closetext
	end
	
SunbeamReserveNidoqueenText:
	text "NIDOQUEEN: Nido!"
	done
	
SunbeamReserveNidoranMText:
	text "NIDORAN♂: Ran!"
	done
	
SunbeamReserveNidoranFText:
	text "NIDORAN♀: Ran…"
	line "Ran…"
	done
	
SunbeamReserveSlowpokeText:
	text "SLOWPOKE: Sloooow…"
	
	para "…"
	
	para "…"
	
	para "…"
	
	para "…poke?"
	done
	
SunbeamReserveLopunnyText:
	text "LOPUNNY: Lop! Lop!"
	done
	
SunbeamReserveAltariaText:
	text "ALTARIA: …Taria?"
	done
	
SunbeamReserveDonphanText:
	text "DONPHAN: Phan…"
	done
	
SunbeamReserveMagmarText:
	text "MAGMAR: MAG!"
	line "MAR!"
	done
	
SunbeamReserveElectabuzzText:
	text "ELECTABUZZ: BUZZ!"
	line "LECTA!"
	done
	
SunbeamReserveSpruceText1:
	text "My research"
	line "involves #MON"
	cont "conservation."
	
	para "As such, I run a"
	line "#MON reserve."
	done
	
SunbeamReserveSpruceText2:
	text "The #MON here"
	line "are all very"
	cont "docile."
	done
	
SunbeamReserveSpruceText3:
	text "Isn't that right,"
	line "DONPHAN?"
	done
	
SunbeamReserveSpruceText4:
	text "I let the #MON"
	line "live their lives"
	cont "as they would in"
	cont "the wild and"
	cont "study their behav-"
	cont "iors."
	done
	
SunbeamReserveSpruceText5:
	text "How are the young"
	line "ones, NIDOQUEEN?"
	done
	
SunbeamReserveSpruceText6:
	text "Recently, I've"
	line "been letting"
	cont "TRAINERS catch"
	cont "POKEMON here."
	
	para "It lets me see how"
	line "they react to"
	cont "being trained."
	
	para "Feel free to catch"
	line "a few yourself."
	done
	
SunbeamReserveSpruceText7:
	text "Let's head back"
	line "inside."
	done
	
Movement_SunbeamSpruce1:
	step_sleep 20
	step_up
	step_left
	step_end
	
Movement_SunbeamSpruce2:
	step_right
	step_right
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
Movement_SunbeamSpruce3:
	step_right
	step_end
	
Movement_SunbeamSpruce4:
	step_left
	step_end
	
Movement_SunbeamSpruce5:
	step_left
	step_left
	step_left
	step_down
	step_left
	step_down
	step_down
	step_left
	step_end
	
Movement_SunbeamSpruce6:
	step_up
	step_end
	
Movement_SunbeamSpruce7:
	step_down
	step_end
	
Movement_SunbeamSpruce8:
	step_down
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_down
	step_end
	
Movement_SunbeamSpruce9:
	step_right
	step_right
	step_up
	step_right
	step_up
	step_right
	step_right
	step_right
	step_right
	step_end