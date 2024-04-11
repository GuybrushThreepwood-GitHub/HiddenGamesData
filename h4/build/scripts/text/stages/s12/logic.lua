
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
		-- make green lights on door flash
		SetObjProp( EMITTER_STATE, 9203, false )
		SetObjProp( EMITTER_STATE, 9204, false )
		SetObjProp( EMITTER_STATE, 9205, false )

		SetObjProp( EMITTER_STATE, 9303, true )
		SetObjProp( EMITTER_STATE, 9304, true )
		SetObjProp( EMITTER_STATE, 9305, true )
		
	end
end

-- ################################################################################# EXIT TO S05 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage05", 7, 1003 )
end

-- ################################################################################# EXIT TO S14 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage14", 16, 1000 )
end

-- ################################################################################# EXIT TO S16 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage16", 18, 1000 )
end

-- ################################################################################# EXIT TO S18 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage18", 20, 1000 )
	else
		Say( 141, 102, "" )
	end
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage18", 20, 1001 )
	else
		Say( 141, 102, "" )
	end
end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage18", 20, 1002 )
	else
		Say( 141, 102, "" )
	end
end
