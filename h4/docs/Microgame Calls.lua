
	-- params: MICROGAME_KEYPAD, accessNum, successFunc
	--LaunchMicroGame( MICROGAME_KEYPAD, 123, "" )

	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	--LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.4, 0.4, 6000, 2005, 1000, 1001, "" )

	-- params: MICROGAME_CARDSWIPE, whichCard, successFunction
	--LaunchMicroGame( MICROGAME_CARDSWIPE, 1, "" )
	
	-- params: MICROGAME_CARDSWIPE, whichKey, successFunction
	--LaunchMicroGame( MICROGAME_KEYLOCK, 1, "" )
	
	-- params: MICROGAME_SLIDERHOLD, firstNum, secondNum, thirdNum, successFunc
	--LaunchMicroGame( MICROGAME_SLIDERHOLD, 1, 5, 1, "" )	
	
	-- params: MICROGAME_DIALS, dial1, dial2, dial3, successFunc
	--LaunchMicroGame( MICROGAME_DIALS, 25, 50, 75, "" )	
	
	-- params: MICROGAME_LIFTBUTTONS			current floor 		this floor		button 2 to s04			button 3 to s08			inactive		inactive
	--LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 					true,"",		true, "", 				true, "",				false,"",		false,""	 )	
	
	-- params: MICROGAME_THUMBSCAN, successFunc
	--LaunchMicroGame( MICROGAME_THUMBSCAN, "" )
	
	-- params: MICROGAME_WIRING, wire1, wire2, successFunc
	--LaunchMicroGame( MICROGAME_WIRING, 0, 5, "" )	
	
	-- params: MICROGAME_WATERTIGHTDOOR,  successFunc
	--LaunchMicroGame( MICROGAME_WATERTIGHTDOOR, "" )	
	
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	--LaunchMicroGame( MICROGAME_MAP, 1, 240.0, 160.0, 90.0 )
	
	-- Testing only
	--LaunchMicroGame( MICROGAME_INVENTORY )
	
	-- params: MICROGAME_USEITEM, correctSlot, successFunc, giveUpBackFunc
	--LaunchMicroGame( MICROGAME_USEITEM, 1, "Correct", "GiveUp" )	