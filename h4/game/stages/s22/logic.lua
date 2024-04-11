
local level3DoorsUnlocked = 0

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
	level3DoorsUnlocked = GetDataValue( "level3_doors_unlocked" )
	if( level3DoorsUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9201, false )
		SetObjProp( EMITTER_STATE, 9301, true )
		
		SetObjProp( EMITTER_STATE, 9202, false )
		SetObjProp( EMITTER_STATE, 9302, true )	
		
		SetObjProp( EMITTER_STATE, 9203, false )
		SetObjProp( EMITTER_STATE, 9303, true )	
	end	
end

-- ################################################################################# EXIT TO S24 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage24", 27, 1001 )
end

-- ################################################################################# EXIT TO S30a #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	if( level3DoorsUnlocked == 1 ) then
		ChangeToStage( "stage30a", 37, 1000 )
	else
		Say( 142, 102, "" )
	end
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	if( level3DoorsUnlocked == 1 ) then
		ChangeToStage( "stage30a", 37, 1001 )
	else
		Say( 142, 102, "" )
	end
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	if( level3DoorsUnlocked == 1 ) then
		ChangeToStage( "stage30a", 37, 1002 )
	else
		Say( 142, 102, "" )
	end
end

-- ################################################################################# EXAMINE DAMAGE ################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	Say( 110, 111, "continueExamine_Damage" )
	
end

function continueExamine_Damage()
	Say( 112, -1, "" )
end