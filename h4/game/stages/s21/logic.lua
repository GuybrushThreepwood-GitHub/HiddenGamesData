
local level2DoorsUnlocked = 0
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
	level2DoorsUnlocked = GetDataValue( "level2_doors_unlocked" )
	if( level2DoorsUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9200, false )
		SetObjProp( EMITTER_STATE, 9300, true )
	end
	
	level3DoorsUnlocked = GetDataValue( "level3_doors_unlocked" )
	if( level3DoorsUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9202, false )
		SetObjProp( EMITTER_STATE, 9302, true )
	end	
end

-- ################################################################################# EXIT TO S18 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	if( level2DoorsUnlocked == 1 ) then
		ChangeToStage( "stage18", 20, 1003 )
	else
		Say( 141, 102, "" )
	end
end

-- ################################################################################# EXIT TO S16 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage16", 18, 1002 )
end

-- ################################################################################# EXIT TO S31a ################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	if( level3DoorsUnlocked == 1 ) then
		ChangeToStage( "stage31a", 40, 1000 )
	else
		Say( 142, 102, "" )
	end
end