TwinkleTown_MapScriptHeader:
	db 2 ; scene scripts
	scene_script TwinkleTownTrigger0
	scene_script TwinkleTownTrigger1

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, TwinkleTownStopSnowstorm

	db 1 ; warp events
	warp_def 47, 11, 1, PLAYER_HOUSE_2F

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

TwinkleTownStopSnowstorm:
	checkevent EVENT_SNOWSTORM_HAPPENING
	iffalse .endcallback
	dotrigger $1
.endcallback
	return
	
TwinkleTownTrigger0:
	end

TwinkleTownTrigger1:
	clearevent EVENT_SNOWSTORM_HAPPENING
	loadvar wTimeOfDayPalFlags, $40 | 0
	domaptrigger ROUTE_10, $0
	dotrigger $0
	end