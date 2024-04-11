
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
	if ( storedSpawn == 1001 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	if ( storedSpawn == 1002 ) then
		SetObjProp( DOORTOGGLE, 3001 )
	end	
end

-- ################################################################################# LIFT 1 TO S30b #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
			-- Use elevator to access other floors
	-- 				 						current floor 		goto s30b							this floor			inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F2", "Goto_s30b_1003",		true,"F1","",			false, "", ""	 )
end

function Goto_s30b_1003()
	ChangeToStage( "stage30b", 38, 1003 )
end

function Door3000_OnCreate()
end

-- ################################################################################# LIFT 2 TO S30b #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
			-- Use elevator to access other floors
	-- 				 						current floor 		goto s30b						this floor				inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F2", "Goto_s30b_1004",	true,"F1","",			false, "",""	 )
end

function Goto_s30b_1004()
	ChangeToStage( "stage30b", 38, 1004 )
end

function Door3001_OnCreate()
end

-- ################################################################################# TOILET ENTRANCE #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function Door3002_OnCreate()
end

-- ################################################################################# TOILETS #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	SetObjProp( DOORTOGGLE, 3004 )
end

function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	SetObjProp( DOORTOGGLE, 3004 )
end

function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	SetObjProp( DOORTOGGLE, 3003 )
end

function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	SetObjProp( DOORTOGGLE, 3003 )
end

-- ################################################################################# EXIT TO s25a #################################################################################

function UseArea2013_OnCreate()
	SetObjProp( ACTIVESTATE, 2013, true )
end

function UseArea2013_OnActivate()
end

function UseArea2013_OnUse()
	LaunchMicroGame( MICROGAME_USEITEM, 14, "ThumbScan_Correct", "" )
end

function ThumbScan_Correct()
	LaunchMicroGame( MICROGAME_THUMBSCAN, "Goto_s25a" )
end

function ThumbScan_GiveUp()
	if (HasItem(6002) == false) then
		Say( 144, 145, "" ) -- don't have the item, must look for it
	end
end

function Door3003_OnCreate()
end
function Door3004_OnCreate()
end

function Thumbscan_Game()
	LaunchMicroGame( MICROGAME_THUMBSCAN, "Goto_s25a" )
end

function Goto_s25a()
	ChangeToStage( "stage25a", 29, 1000 )
end

-- ################################################################################# EXIT TO s21 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage21", 24, 1002 )
end

-- ################################################################################# EXIT TO s31b #################################################################################

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	ChangeToStage( "stage31b", 41, 1000 )
end

function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	ChangeToStage( "stage31b", 41, 1001 )
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2014_OnCreate()
	SetObjProp( ACTIVESTATE, 2014, true )
end

function UseArea2014_OnActivate()
end

function UseArea2014_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 9, 182.0, 172.0, 180.0 )
end