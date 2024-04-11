
function LevelSetup( playerSpawnId )
	if( playerSpawnId == -1 ) then
		SetPlayerProp( PLAYERPOS, 1000 )
		SetPlayerProp( PLAYERROT, 1000 )
	else
		SetPlayerProp( PLAYERPOS, playerSpawnId )
		SetPlayerProp( PLAYERROT, playerSpawnId )
	end
end

function LogicSetup( )

end

-- ############################################

function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	ChangeToStage( "stage08", 10, 1001 )
end

-- ################################################################################# GREEN LOCKER KEY #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()

	if( HasItem(6016) == true ) then
		-- already got key
		Say( 133, -1, "" )
	else
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, -0.05, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.1, 0.4, 6016, 2005, 1010, -1, "" )	
		
		AddItem( 6016 ) -- give player the green locker key
	end
end