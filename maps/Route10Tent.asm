Route10Tent_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  5, ROUTE_10_EAST, 1
	warp_event  1,  5, ROUTE_10_EAST, 1
	

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events