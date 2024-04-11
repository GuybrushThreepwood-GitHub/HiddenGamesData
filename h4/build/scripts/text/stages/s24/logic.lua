
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
	
	local tokenPickedUp = GetDataValue( "hidden_token_2" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the hidden token
		SetObjProp( ACTIVESTATE, 2003, false )
		SetObjProp( EMITTER_STATE, 9103, false )
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
	-- 				 						current floor 		this floor			to s23							inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F2", "",		true, "F1", "Goto_s23",		 	false, "", ""	 )
end

function Goto_s23()
	ChangeToStage( "stage23", 26, 1001 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# EXIT TO S22 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage22", 25, 1000 )
end

-- ################################################################################# HIDDEN TOKEN 2 / 5 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6008, 2005, 1017, 1021, "" )
	
	-- set the data to 'true'
	SetDataValue( "hidden_token_2", 1 )
	
	SetObjProp( ACTIVESTATE, 2003, false )
	SetObjProp( EMITTER_STATE, 9103, false )	
end

-- ################################################################################# COMPUTER / LVL3 SWIPE #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()

	local doorsLevel3Unlocked = GetDataValue( "level3_doors_unlocked" )

	if( doorsLevel3Unlocked == 1 ) then
		Say( 171, 170, "" )
	else
		Say( 134, -1, "CardSwipe_Use" )
	end
end

function CardSwipe_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 11, "CardSwipe_Correct", "" )
end

function CardSwipe_Correct()
	LaunchMicroGame( MICROGAME_CARDSWIPE, 3, "Open_Level3Doors" )
end

function CardSwipe_GiveUp()
	if (HasItem(6012) == false) then
		Say( 106, -1, "" ) -- don't have the item, must look for it
	end
end

function Open_Level3Doors()	
	SetDataValue( "level3_doors_unlocked", 1 )
end

-- ################################################################################# CRIMINAL DOCS 3 / 5 #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	LaunchMicroGame( MICROGAME_CRIMINALDOCS, 3 )
	
	-- set the data to 'true'
	SetDataValue( "criminal_docs_3", 1 )
end

-- ################################################################################# BLUE SCREEN COMPUTER #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	Say( 189, -1, "")
end