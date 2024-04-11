
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
	local level2DoorsUnlocked = GetDataValue( "level2_doors_unlocked" )
	
	if( level2DoorsUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9201, false )
		SetObjProp( EMITTER_STATE, 9301, true )
	end
end

-- ################################################################################# EXIT to s17 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage17", 19, 1000 )
end

-- ################################################################################# EXIT TO s18 #################################################################################

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	local level2DoorsUnlocked = GetDataValue( "level2_doors_unlocked" )
	
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage18", 20, 1004 )
	else
		Say( 141, 102, "" )
	end
	
end

-- ################################################################################# USE SEALED DOOR #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	Say( 154, -1, "" )
end


-- ################################################################################# CORPSE #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	Say( 155, -1, "" )
end