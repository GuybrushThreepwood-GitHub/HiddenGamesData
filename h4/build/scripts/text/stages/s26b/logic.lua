
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
	if ( storedSpawn == 1000 ) or ( storedSpawn == -1 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
		-- Use elevator to access other floors
	-- 				 						current floor 	this floor			to s26								inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 			true, "F2", "",		true, "F1", "Goto_s26",			false, "", "" )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Goto_s26()
	ChangeToStage( "stage26", 31, 1001 )
end

function Door3000_OnCreate()
end

-- ################################################################################# EXIT TO S28 #################################################################################

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage28", 35, 1000 )
end

-- ################################################################################# CRIMINAL DOC 4 / 5 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	LaunchMicroGame( MICROGAME_CRIMINALDOCS, 4 )
	
	-- set the data to 'true'
	SetDataValue( "criminal_docs_4", 1 )
end

