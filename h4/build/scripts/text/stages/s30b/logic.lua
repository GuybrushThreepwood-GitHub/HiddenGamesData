
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
	if ( storedSpawn == 1003 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	if ( storedSpawn == 1004 ) then
		SetObjProp( DOORTOGGLE, 3001 )
	end
	
	local surgeryUnlocked = GetDataValue( "s30b_surgery_unlocked" )	
	if( surgeryUnlocked == 1 ) then
		SetObjProp( EMITTER_STATE, 9213, false )
		SetObjProp( EMITTER_STATE, 9313, true )

		SetObjProp( EMITTER_STATE, 9218, false )
		SetObjProp( EMITTER_STATE, 9318, true )		
	end
	
	local tokenPickedUp = GetDataValue( "head_hunter_5" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the head
		SetObjProp( ACTIVESTATE, 2020, false )
		SetObjProp( EMITTER_STATE, 9120, false )
	end	
end

-- ################################################################################# EXIT TO S30a #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage30a", 37, 1003 )
end

-- ################################################################################# EXIT TO S30c #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage30c", 39, 1000 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage30c", 39, 1001 )
end

-- ################################################################################# LIFT 1 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
			-- Use elevator to access other floors
	-- 				 						current floor 		this floor			goto s31a							inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true,"F2","",		true, "F1","Goto_s31a_1001", 		false, "",""			 )
end

function Goto_s31a_1001()
	ChangeToStage( "stage31a", 40, 1001 )
end

function Door3000_OnCreate()
end

-- ################################################################################# LIFT 2 #################################################################################

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	-- Use elevator to access other floors
	-- 				 						current floor 		this floor			goto s31a						inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F2","",		true, "F1", "Goto_s31a_1002", 	false, "", ""	 )
end

function Goto_s31a_1002()
	ChangeToStage( "stage31a", 40, 1002 )
end

function Door3001_OnCreate()
end

-- ################################################################################# TOILET ENTRANCE #################################################################################

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function Door3002_OnCreate()
end

-- ################################################################################# TOILETS #################################################################################

function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	SetObjProp( DOORTOGGLE, 3003 )
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
	SetObjProp( DOORTOGGLE, 3004 )
end

function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	SetObjProp( DOORTOGGLE, 3004 )
end

function Door3003_OnCreate()
end

function Door3004_OnCreate()
end

-- ################################################################################# SMALL DOORS #################################################################################

function UseArea2015_OnCreate()
	SetObjProp( ACTIVESTATE, 2015, true )
end

function UseArea2015_OnActivate()
end

function UseArea2015_OnUse()
	SetObjProp( DOORTOGGLE, 3006 )
end

function UseArea2016_OnCreate()
	SetObjProp( ACTIVESTATE, 2016, true )
end

function UseArea2016_OnActivate()
end

function UseArea2016_OnUse()
	SetObjProp( DOORTOGGLE, 3006 )
end

function UseArea2017_OnCreate()
	SetObjProp( ACTIVESTATE, 2017, true )
end

function UseArea2017_OnActivate()
end

function UseArea2017_OnUse()
	local unlocked = GetDataValue( "s30b_surgery_unlocked" )
	
	if( unlocked == 1 ) then
		SetObjProp( DOORTOGGLE, 3005 )
	else
		Say( 102, -1, "" )
	end
end

function UseArea2018_OnCreate()
	SetObjProp( ACTIVESTATE, 2018, true )
end

function UseArea2018_OnActivate()
end

function UseArea2018_OnUse()
	local unlocked = GetDataValue( "s30b_surgery_unlocked" )
	
	if( unlocked == 1 ) then
		SetObjProp( DOORTOGGLE, 3005 )
	else
		Say( 102, -1, "" )
	end
end

function Door3005_OnCreate()
end

function Door3006_OnCreate()
end

-- ################################################################################# LARGE DOOR #################################################################################
function UseArea2013_OnCreate()
	SetObjProp( ACTIVESTATE, 2013, true )
end

function UseArea2013_OnActivate()
end

function UseArea2013_OnUse()
	local unlocked = GetDataValue( "s30b_surgery_unlocked" )
	
	if( unlocked == 1 ) then
		SetObjProp( DOORTOGGLE, 3007 )
	else
		Say( 102, -1, "" )
	end
end

function UseArea2014_OnCreate()
	SetObjProp( ACTIVESTATE, 2014, true )
end

function UseArea2014_OnActivate()
end

function UseArea2014_OnUse()
	local unlocked = GetDataValue( "s30b_surgery_unlocked" )
	
	if( unlocked == 1 ) then
		SetObjProp( DOORTOGGLE, 3007 )
	else
		Say( 102, -1, "" )
	end
end

function Door3007_OnCreate()
end

-- ################################################################################# SEVERED HAND #################################################################################
function UseArea2019_OnCreate()
	SetObjProp( ACTIVESTATE, 2019, true )
end

function UseArea2019_OnActivate()
end

function UseArea2019_OnUse()
	if( HasItem(6002) == true ) then
		Say( 204, -1, "" )
	else
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.4, 0.4, 6002, 2005, 1034, 1054, "" )
		
		AddItem( 6002 ) -- give player the severed hand
	end
end

-- ################################################################################# HEAD HUNTER 5 / 5 #################################################################################
function UseArea2020_OnCreate()
	SetObjProp( ACTIVESTATE, 2020, true )
end

function UseArea2020_OnActivate()
end

function UseArea2020_OnUse()
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6029, 2005, 1030, 1031, "" )
		
	-- set the data to 'true'
	SetDataValue( "head_hunter_5", 1 )
	
	SetObjProp( ACTIVESTATE, 2020, false )
	SetObjProp( EMITTER_STATE, 9120, false )
end

-- ################################################################################# BLOOD ON WALL #################################################################################
function UseArea2021_OnCreate()
	SetObjProp( ACTIVESTATE, 2021, true )
end

function UseArea2021_OnActivate()
end

function UseArea2021_OnUse()
	Say( 115, 116, "" )
end