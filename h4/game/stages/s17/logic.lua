
local storedSpawn = -1
local usedFuse = 0

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
	if ( storedSpawn == 1001 ) then
		SetObjProp( DOORTOGGLE, 3002 )
	end
	
	usedFuse = GetDataValue( "used_fuse_in_s17" )
	if( usedFuse == 1 ) then
		-- disable fuse box
		SetObjProp( ACTIVESTATE, 2009, false )
		SetObjProp( EMITTER_STATE, 9109, false )
		
		-- turn off sparks
		SetObjProp( EMITTER_STATE, 9000, false )	
	end
end

-- ################################################################################# EXIT TO S17a #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage17a", 48, 1000 )
end

-- ################################################################################# LARGE DOOR 1 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# LARGE DOOR 2 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function Door3001_OnCreate()
end

-- ################################################################################# LIFT #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	-- check fuse usage
	if( usedFuse == 1 ) then
		SetObjProp( DOORTOGGLE, 3002 )
	else
		Say( 137, -1, "" )
	end
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	-- 				 						current floor 		this floor			button 1 to s19					inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F1", "",		true, "B1", "Goto_s19", 		false, "", ""	)
end

function Goto_s19()
	ChangeToStage( "stage19", 21, 1000 )
end

function Door3002_OnCreate()
end

-- ################################################################################# EXIT TO S20 #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	ChangeToStage( "stage20", 23, 1000 )
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 4, 172.0, 124.0, 0.0 )
end

-- ################################################################################# FUSE BOX #################################################################################
function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	Say(174, -1, "FuseBox_Use")
end

function FuseBox_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 1, "FuseBox_Correct", "" )
end

function FuseBox_Correct()
	SetDataValue( "used_fuse_in_s17", 1 )
	usedFuse = 1
	Say( 151, -1, "FuseBox_Enable" )
end

function FuseBox_Enable()
	-- play enable life sfx
	PlaySound( 33, 0.0,0.0,0.0, 1.0, 1.0 )
	
	-- turn off fusebox
	SetObjProp( ACTIVESTATE, 2009, false )
	SetObjProp( EMITTER_STATE, 9109, false )

	-- turn off sparks
	SetObjProp( EMITTER_STATE, 9000, false )

	-- turn on lift
	SetObjProp( ACTIVESTATE, 2005, true )
	
	Say( 138, -1, "" )
end

function FuseBox_GiveUp()
	Say( 139, 140, "" )
end