
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
	SetObjProp( EMITTER_STATE, 9100, true )
	
	local tokenPickedUp = GetDataValue( "hidden_token_3" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the hidden token
		SetObjProp( ACTIVESTATE, 2002, false )
		SetObjProp( EMITTER_STATE, 9102, false )	
	end		
end

-- ################################################################################# DEAD END #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	Say( 163, 164, "continueExamine_Thumbscanner" )
end

function continueExamine_Thumbscanner()
	Say( 162, -1, "" )
end

-- ################################################################################# EXIT TO S25 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage25", 28, 1002 )
end

-- ################################################################################# HIDDEN TOKEN 3 / 5 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6008, 2005, 1018, 1021, "Show_Scare" )
	
	-- set the data to 'true'
	SetDataValue( "hidden_token_3", 1 )
	
	SetObjProp( ACTIVESTATE, 2002, false )
	SetObjProp( EMITTER_STATE, 9102, false )		
	
	SetObjProp( EMITTER_STATE, 9501, true )	
	SetObjProp( EMITTER_STATE, 9502, true )	
	SetObjProp( EMITTER_STATE, 9503, true )	
	SetObjProp( EMITTER_STATE, 9504, true )	
end

function Show_Scare()
	SetObjProp( EMITTER_STATE, 9500, true )
end