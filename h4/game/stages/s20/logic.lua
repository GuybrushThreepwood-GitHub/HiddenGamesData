
local level2DoorsUnlocked = 0

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
	level2DoorsUnlocked = GetDataValue( "level2_doors_unlocked" )
	if( level2DoorsUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9202, false )
		SetObjProp( EMITTER_STATE, 9302, true )
	end
end

-- ################################################################################# EXIT TO S17 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage17", 19, 1003 )
end

-- ################################################################################# EXIT TO S14 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage14", 16, 1002 )
end

-- ################################################################################# EXIT TO S23 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage23", 26, 1000 )
	else
		Say( 141, 102, "" )
	end
end