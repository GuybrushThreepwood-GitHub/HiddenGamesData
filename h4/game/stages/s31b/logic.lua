
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
	if( HasItem(7004) == true ) then
		SetObjProp( ACTIVESTATE, 2003, false )
	end	
end

-- ################################################################################# EXIT TO S01 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage31a", 40, 1003 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage31a", 40, 1004 )
end

-- ################################################################################# SLEEPING MAN #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	Say( 191, -1, "SleepingMan_Examine" )
end

function SleepingMan_Examine()
	Say( 192, -1, "")
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7004, 2005, 3033, -1, "" )
	
	AddItem(7004)
	
	SetObjProp( ACTIVESTATE, 2003, false )
end