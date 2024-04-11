
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
	-- open lift doors
	SetObjProp( DOORTOGGLE, 3000 )
	
	local tokenPickedUp = GetDataValue( "hidden_token_5" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the hidden token
		SetObjProp( ACTIVESTATE, 2002, false )
		SetObjProp( EMITTER_STATE, 9102, false )
	end	
end

-- ################################################################################# EXIT TO S01 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	-- Use elevator to access other floors
	-- 				 						current floor 		button 1 to s01					this floor				inactive		
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F1", "Goto_s01", 		true, "B1", "", 		false, "",	"" )	
end

function Goto_s01()
	ChangeToStage( "stage01", 1, 1002 )
end

-- ################################################################################# LIFT DOORS #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	-- Call elevator
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# HIDDEN TOKEN 5 / 5 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()

	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6008, 2005, 1020, 1021, "" )

	SetDataValue( "hidden_token_5", 1 )
		
	SetObjProp( ACTIVESTATE, 2002, false )
	SetObjProp( EMITTER_STATE, 9102, false )
end