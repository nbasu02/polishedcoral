map: MACRO
	; label, tileset, permission, location, music, phone service flag, time of day, fishing group
\1_MapHeader:
	db BANK(\1_SecondMapHeader), \2, \3
	dw \1_SecondMapHeader
	db \4, \5
	dn \6, \7
	db \8
ENDM


MapGroupPointers::
; pointers to the first map header of each map group
	dw MapGroup1
	dw MapGroup2
	dw MapGroup3
	dw MapGroup4
	dw MapGroup5
	dw MapGroup6
	dw MapGroup7
	dw MapGroup8
	dw MapGroup9
	dw MapGroup10
	dw MapGroup11
	dw MapGroup12
	dw MapGroup13

MapGroup1:
	map DaybreakGrotto1, TILESET_CAVE, CAVE, DAYBREAK_GROTTO, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_SHORE
	map DaybreakGrotto2, TILESET_CAVE, CAVE, DAYBREAK_GROTTO, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_SHORE
	map GlintGrove, TILESET_GROVE, ROUTE, GLINT_GROVE, MUSIC_GLINT_GROVE, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map GlintGroveDeep, TILESET_GROVE, ROUTE, GLINT_GROVE, MUSIC_GLINT_GROVE, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map StarglowCavern1F, TILESET_STARGLOW_CAVERN, CAVE, STARGLOW_CAVERN, MUSIC_DAYBREAK_GROTTO, 1, PALETTE_NITE, FISHGROUP_SHORE
	map StarglowCavern2F, TILESET_STARGLOW_CAVERN, CAVE, STARGLOW_CAVERN, MUSIC_DAYBREAK_GROTTO, 1, PALETTE_NITE, FISHGROUP_SHORE
	map MtOnwa1F, TILESET_CAVE, CAVE, MT_ONWA, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_NONE
	map MtOnwa2F, TILESET_CAVE, CAVE, MT_ONWA, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_NONE
	map MtOnwaB1F, TILESET_CAVE, CAVE, MT_ONWA, MUSIC_LAVA, 0, PALETTE_DARK, FISHGROUP_NONE
	map MtOnwaB2F, TILESET_CAVE, CAVE, MT_ONWA, MUSIC_LAVA, 0, PALETTE_DARK, FISHGROUP_NONE
	map MtOnwaB3F, TILESET_CAVE, CAVE, MT_ONWA, MUSIC_LAVA, 0, PALETTE_DARK, FISHGROUP_NONE
	map MtOnwaCliff, TILESET_MOUNTAIN, ROUTE, MT_ONWA, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map MtOnwaLowerCliff, TILESET_MOUNTAIN, ROUTE, MT_ONWA, MUSIC_ROUTE_2, 0, PALETTE_AUTO, FISHGROUP_NONE
	map FlickerPass1F, TILESET_CAVE, CAVE, FLICKER_PASS, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_SHORE
	map FlickerPass2F, TILESET_CAVE, CAVE, FLICKER_PASS, MUSIC_DAYBREAK_GROTTO, 0, PALETTE_NITE, FISHGROUP_SHORE
	map LusterSewersB1FFlooded, TILESET_SEWER, CAVE, LUSTER_SEWERS, MUSIC_LUSTER_SEWER, 0, PALETTE_NITE, FISHGROUP_SHORE
	map LusterSewersB1FEmpty, TILESET_SEWER, CAVE, LUSTER_SEWERS, MUSIC_LUSTER_SEWER, 0, PALETTE_NITE, FISHGROUP_SHORE
	map LusterSewersB2FFlooded, TILESET_SEWER, CAVE, LUSTER_SEWERS, MUSIC_LUSTER_SEWER, 0, PALETTE_NITE, FISHGROUP_SHORE
	map LusterSewersB2FEmpty, TILESET_SEWER, CAVE, LUSTER_SEWERS, MUSIC_LUSTER_SEWER, 0, PALETTE_NITE, FISHGROUP_SHORE
	map LusterSewersValveRoom, TILESET_SEWER, CAVE, LUSTER_SEWERS, MUSIC_LUSTER_SEWER, 0, PALETTE_NITE, FISHGROUP_SHORE

MapGroup2:
	map SunsetBay, TILESET_GLINT, TOWN, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_AUTO, FISHGROUP_OCEAN
	map SunsetCape, TILESET_GLINT, TOWN, SUNSET_CAPE, MUSIC_SUNSET_BAY, 0, PALETTE_AUTO, FISHGROUP_OCEAN
	map SunsetPokeCenter, TILESET_POKECENTER, INDOOR, SUNSET_BAY, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetLighthouse, TILESET_LIGHTHOUSE, INDOOR, SUNSET_CAPE, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map PlayerHouse1F, TILESET_PLAYER_HOUSE, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map PlayerHouse2F, TILESET_PLAYER_ROOM, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetWaterGrassHouse, TILESET_HOUSE_1, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetGengarHouse, TILESET_HOUSE_1, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetLegendsHouse, TILESET_HOUSE_1, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetCaptainsHouse, TILESET_HOUSE_2, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunsetCafe, TILESET_CAFE, INDOOR, SUNSET_BAY, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map Route1Gate, TILESET_GATE, GATE, GATE_LANDMARK, MUSIC_ROUTE_1, 0, PALETTE_DAY, FISHGROUP_SHORE

MapGroup3:
	map Route1, TILESET_GLINT, ROUTE, ROUTE_1, MUSIC_ROUTE_1, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map Route2, TILESET_GLINT, ROUTE, ROUTE_2, MUSIC_ROUTE_2, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map DaybreakVillage, TILESET_GLINT, TOWN, DAYBREAK_VILLAGE, MUSIC_DAYBREAK_VILLAGE, 0, PALETTE_AUTO, FISHGROUP_POND
	map DaybreakPokemonTrainerSchool, TILESET_LAB, INDOOR, DAYBREAK_VILLAGE, MUSIC_DAYBREAK_VILLAGE, 0, PALETTE_DAY, FISHGROUP_SHORE
	map DaybreakMarcusHouse, TILESET_HOUSE_2, INDOOR, DAYBREAK_VILLAGE, MUSIC_EVOLUTION, 0, PALETTE_DAY, FISHGROUP_SHORE
	map DaybreakPokeCenter, TILESET_POKECENTER, INDOOR, DAYBREAK_VILLAGE, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map DaybreakAlexHouse, TILESET_HOUSE_2, INDOOR, DAYBREAK_VILLAGE, MUSIC_EVOLUTION, 0, PALETTE_DAY, FISHGROUP_SHORE	

MapGroup4:
	map GlintPokeCenter, TILESET_POKECENTER, INDOOR, GLINT_CITY, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintApartmentLeft1F, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintApartmentLeft2F, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintApartmentRight1F, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintApartmentRight2F, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintMart, TILESET_MART, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map GlintGym, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GYM, 1, PALETTE_DAY, FISHGROUP_SHORE
	map GlintGroveEntrance, TILESET_GLINT, ROUTE, GLINT_CITY, MUSIC_GLINT_GROVE, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map GlintCity, TILESET_GLINT, TOWN, GLINT_CITY, MUSIC_GLINT_CITY, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map GlintRivalHouse, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 1, PALETTE_DAY, FISHGROUP_SHORE
	map GlintEvoHouse, TILESET_HOUSE_1, INDOOR, GLINT_CITY, MUSIC_GLINT_CITY, 1, PALETTE_DAY, FISHGROUP_SHORE
	map Route3, TILESET_GLINT, ROUTE, ROUTE_3, MUSIC_ROUTE_2, 0, PALETTE_AUTO, FISHGROUP_SHORE

MapGroup5:
	map Route3Starglow, TILESET_GLINT, ROUTE, ROUTE_3, MUSIC_ROUTE_2, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map StarglowValley, TILESET_GLINT, TOWN, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map StarglowTogepiHouse, TILESET_HOUSE_1, INDOOR, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowNoPokemonHouse, TILESET_HOUSE_1, INDOOR, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowGrandpaHouse, TILESET_HOUSE_1, INDOOR, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowFishingGuruHouse, TILESET_HOUSE_1, INDOOR, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowPokeCenter, TILESET_POKECENTER, INDOOR, STARGLOW_VALLEY, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowMart, TILESET_MART, INDOOR, STARGLOW_VALLEY, MUSIC_STARGLOW, 0, PALETTE_DAY, FISHGROUP_SHORE
	map StarglowGym, TILESET_HOUSE_2, INDOOR, STARGLOW_VALLEY, MUSIC_GYM, 1, PALETTE_DAY, FISHGROUP_SHORE
	map Route4, TILESET_GLINT, ROUTE, ROUTE_4, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map HuntersThicket, TILESET_GLINT, ROUTE, HUNTERS_THICKET, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_SHORE
	map Route5, TILESET_GLINT, ROUTE, ROUTE_5, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map Route5Deep, TILESET_GLINT, ROUTE, ROUTE_5, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map Route5Gate, TILESET_GATE, GATE, GATE_LANDMARK, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_SHORE

MapGroup6:
	map Route6, TILESET_GLINT, ROUTE, ROUTE_6, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map Route7, TILESET_GLINT, ROUTE, ROUTE_7, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map LakeOnwa, TILESET_GLINT, TOWN, LAKE_ONWA, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_LAKE
	map LakeOnwaBoatHouseRight, TILESET_LAB, INDOOR, LAKE_ONWA, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map LakeOnwaBoatHouseLeft, TILESET_LAB, INDOOR, LAKE_ONWA, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map LakeOnwaNameRaterHouse, TILESET_PLAYER_HOUSE, INDOOR, LAKE_ONWA, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map LakeOnwaItemHouse, TILESET_PLAYER_HOUSE, INDOOR, LAKE_ONWA, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map LakeOnwaPokeCenter, TILESET_POKECENTER, INDOOR, LAKE_ONWA, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup7:
	map SunbeamIsland, TILESET_GLINT, TOWN, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_AUTO, FISHGROUP_NONE
	map SunbeamBeach, TILESET_GLINT, TOWN, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_AUTO, FISHGROUP_NONE
	map SunbeamPokeCenter, TILESET_POKECENTER, INDOOR, SUNBEAM_ISLAND, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunbeamMart, TILESET_MART, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunbeamBoatHouse, TILESET_LAB, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_NONE
	map SunbeamSurfShop, TILESET_PLAYER_HOUSE, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_NONE
	map SunbeamBikiniContest, TILESET_GLINT, TOWN, SUNBEAM_ISLAND, MUSIC_NONE, 0, PALETTE_AUTO, FISHGROUP_NONE
	map SunbeamDodrioHouse, TILESET_HOUSE_1, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunbeamOldCouplesHouse, TILESET_HOUSE_1, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunbeamBlueWaterHouse, TILESET_HOUSE_1, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SunbeamTradeHouse, TILESET_HOUSE_1, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM_ISLAND, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SprucesLab, TILESET_LAB, INDOOR, SUNBEAM_ISLAND, MUSIC_SPRUCE, 0, PALETTE_DAY, FISHGROUP_NONE
	map SunbeamReserve, TILESET_GLINT, TOWN, SUNBEAM_ISLAND, MUSIC_SPRUCE, 0, PALETTE_AUTO, FISHGROUP_NONE
	map SunbeamJungle, TILESET_JUNGLE, INDOOR, SUNBEAM_ISLAND, MUSIC_SUNBEAM, 0, PALETTE_AUTO, FISHGROUP_NONE
	map SunbeamJungleCave, TILESET_CAVE, CAVE, SUNBEAM_ISLAND, MUSIC_SUNBEAM, 0, PALETTE_NITE, FISHGROUP_NONE

MapGroup8:
	map Route4EventideGate, TILESET_GATE, GATE, GATE_LANDMARK, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventideForest, TILESET_SPOOKY, ROUTE, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map EventideVillageGate, TILESET_GATE, GATE, GATE_LANDMARK, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_SHORE
	map SpookyForest1, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest2, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest3, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest4, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest5, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest6, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest7, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest8, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookyForest9, TILESET_SPOOKY, DUNGEON, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map OldManorExterior, TILESET_SPOOKY, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseLivingRoom, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseDiningRoom, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseBedroom, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseHallway1, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseHallway2, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseHallway3, TILESET_HAUNTED, INDOOR, EVENTIDE_FOREST, MUSIC_EVENTIDE, 0, PALETTE_NITE, FISHGROUP_NONE
	map SpookhouseTVRoom, TILESET_HAUNTED_TV, INDOOR, EVENTIDE_FOREST, MUSIC_NONE, 0, PALETTE_NITE, FISHGROUP_NONE
	
MapGroup9:
	map EventideVillage, TILESET_RANCH, TOWN, EVENTIDE_VILLAGE, MUSIC_SUNSET_BAY, 0, PALETTE_AUTO, FISHGROUP_NONE
	map EventideHouse1, TILESET_HOUSE_2, INDOOR, EVENTIDE_VILLAGE, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventideHouse2, TILESET_HOUSE_2, INDOOR, EVENTIDE_VILLAGE, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventideBikeShop, TILESET_HOUSE_2, INDOOR, EVENTIDE_VILLAGE, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventidePokeCenter, TILESET_POKECENTER, INDOOR, EVENTIDE_VILLAGE, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventideMart, TILESET_MART, INDOOR, EVENTIDE_VILLAGE, MUSIC_SUNSET_BAY, 0, PALETTE_DAY, FISHGROUP_SHORE
	map EventideGym, TILESET_HOUSE_2, CAVE, EVENTIDE_VILLAGE, MUSIC_GYM, 0, PALETTE_DAY, FISHGROUP_SHORE
	map Route9, TILESET_RANCH, ROUTE, ROUTE_9, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map DodrioRanchHouse, TILESET_PLAYER_HOUSE, INDOOR, DODRIO_RANCH, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map DodrioRanchBarn, TILESET_HOUSE_2, INDOOR, DODRIO_RANCH, MUSIC_ROUTE_4, 0, PALETTE_DAY, FISHGROUP_NONE
	map DodrioRanchRaceTrack, TILESET_RANCH, ROUTE, DODRIO_RANCH, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE

MapGroup10:
	map FlickerStation, TILESET_RANCH, TOWN, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_AUTO, FISHGROUP_NONE
	map FlickerSoundSpeechHouse, TILESET_HOUSE_1, INDOOR, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_DAY, FISHGROUP_SHORE
	map FlickerNameSpeechHouse, TILESET_HOUSE_1, INDOOR, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_DAY, FISHGROUP_SHORE
	map FlickerPokeCenter, TILESET_POKECENTER, INDOOR, FLICKER_STATION, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map FlickerMart, TILESET_MART, INDOOR, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_DAY, FISHGROUP_SHORE
	map FlickerTrainStation, TILESET_LAB, INDOOR, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_DAY, FISHGROUP_NONE
	map FlickerPassOutside, TILESET_RANCH, ROUTE, FLICKER_PASS, MUSIC_ROUTE_4, 0, PALETTE_AUTO, FISHGROUP_NONE
	map FlickerTrainCutscene, TILESET_RANCH, TOWN, FLICKER_STATION, MUSIC_GLINT_GROVE, 0, PALETTE_AUTO, FISHGROUP_NONE
	map LusterCityBusiness, TILESET_LUSTER, TOWN, LUSTER_CITY, MUSIC_LUSTER_CITY, 0, PALETTE_AUTO, FISHGROUP_NONE
	
MapGroup11:
	map Route10, TILESET_SNOW, ROUTE, ROUTE_10, MUSIC_ROUTE_10, 0, PALETTE_AUTO, FISHGROUP_NONE
	map Route10East, TILESET_SNOW, ROUTE, ROUTE_10, MUSIC_ROUTE_10, 0, PALETTE_AUTO, FISHGROUP_NONE
	map Route10Tent, TILESET_HOUSE_1, INDOOR, ROUTE_10, MUSIC_ROUTE_10, 0, PALETTE_DAY, FISHGROUP_NONE
	map TwinkleTown, TILESET_SNOW, TOWN, TWINKLE_TOWN, MUSIC_TWINKLE_TOWN, 0, PALETTE_AUTO, FISHGROUP_NONE
	map TwinkleHouse1, TILESET_PLAYER_HOUSE, INDOOR, TWINKLE_TOWN, MUSIC_TWINKLE_TOWN, 0, PALETTE_DAY, FISHGROUP_NONE
	map TwinkleHouse2, TILESET_PLAYER_HOUSE, INDOOR, TWINKLE_TOWN, MUSIC_TWINKLE_TOWN, 0, PALETTE_DAY, FISHGROUP_NONE
	map TwinkleHouse3, TILESET_PLAYER_HOUSE, INDOOR, TWINKLE_TOWN, MUSIC_TWINKLE_TOWN, 0, PALETTE_DAY, FISHGROUP_NONE
	map TwinklePokeCenter, TILESET_POKECENTER, INDOOR, TWINKLE_TOWN, MUSIC_POKEMON_CENTER, 0, PALETTE_DAY, FISHGROUP_SHORE
	map TwinkleMart, TILESET_MART, INDOOR, TWINKLE_TOWN, MUSIC_TWINKLE_TOWN, 0, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup12:
	map EastTrainCabin1, TILESET_TRAIN, INDOOR, FLICKER_STATION, MUSIC_TRAIN_RIDE, 0, PALETTE_DAY, FISHGROUP_NONE
	map EastTrainCabin2, TILESET_TRAIN, INDOOR, FLICKER_STATION, MUSIC_TRAIN_RIDE, 0, PALETTE_DAY, FISHGROUP_NONE
	map EastTrainCabin3, TILESET_TRAIN, INDOOR, FLICKER_STATION, MUSIC_TRAIN_RIDE, 0, PALETTE_DAY, FISHGROUP_NONE
	map EastTrainCaboose, TILESET_TRAIN, INDOOR, FLICKER_STATION, MUSIC_TRAIN_RIDE, 0, PALETTE_DAY, FISHGROUP_NONE
	
MapGroup13:
	map LusterCityResidential, TILESET_LUSTER, TOWN, LUSTER_CITY, MUSIC_LUSTER_CITY, 0, PALETTE_AUTO, FISHGROUP_NONE
	map LusterCityShopping, TILESET_LUSTER, TOWN, LUSTER_CITY, MUSIC_LUSTER_CITY, 0, PALETTE_AUTO, FISHGROUP_NONE
