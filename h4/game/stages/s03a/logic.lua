
local storedSpawn = -1

function LevelSetup( playerSpawnId )

	storedSpawn = playerSpawnId

	if( playerSpawnId == -1 ) then
		SetPlayerProp( PLAYERPOS, 1000 )
		SetPlayerProp( PLAYERROT, 1000 )
	else
		SetPlayerProp( PLAYERPOS, playerSpawnId )
		SetPlayerProp( PLAYERROT, playerSpawnId )
	end
end

function LogicSetup( )

	local tokenPickedUp = GetDataValue( "hidden_token_1" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the hidden token
		SetObjProp( ACTIVESTATE, 2001, false )
		SetObjProp( EMITTER_STATE, 9101, false )
	end
	
	if( HasItem(7007) == true ) then
		SetObjProp( ACTIVESTATE, 2002, false )
	end
end

-- ################################################################################# EXIT TO s03 #################################################################################
-- s03 entrance area
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	ChangeToStage( "stage03", 4, 1002 )
end


-- ################################################################################# HIDDEN TOKEN 1 / 5 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6008, 2005, 1016, 1021, "" )
	
	-- set the data to 'true'
	SetDataValue( "hidden_token_1", 1 )
	
	SetObjProp( ACTIVESTATE, 2001, false )
	SetObjProp( EMITTER_STATE, 9101, false )	
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7007, 2005, 3039, -1, "" )
	
	AddItem(7007)
	
	SetObjProp( ACTIVESTATE, 2002, false )
end
