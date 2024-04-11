
local storedSpawn = -1
local waterUse = true
local waterCount = 0

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
	waterUse = true
	waterCount = 0
	
	if ( storedSpawn == 1001 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	if( HasItem(7005) == true ) then
		SetObjProp( ACTIVESTATE, 2014, false )
	end		
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
		-- Use elevator to access other floors
	-- 				 						current floor 		this floor			goto s26					inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F2", "",		true, "F1", "Goto_s26", 	false, "", ""	 )
end

function Goto_s26()
	ChangeToStage( "stage26", 31, 1000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# EXIT TO 25a #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage25a", 29, 1001 )
end

-- ################################################################################# EXIT TO 25b #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	ChangeToStage( "stage25b", 30, 1001 )
end

-- ################################################################################# TOILET ENTRANCE #################################################################################

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function Door3001_OnCreate()
end

-- ################################################################################# TOILET DOORS #################################################################################

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	SetObjProp( DOORTOGGLE, 3003 )
end

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	SetObjProp( DOORTOGGLE, 3003 )
end

function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function Door3002_OnCreate()
end
function Door3003_OnCreate()
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 6, 287.0, 148.0, 270.0 )
end


function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 6, 236.0, 148.0, 270.0 )
end

-- ################################################################################# MOBILE PHONE #################################################################################
function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	if( HasItem(6019) == true ) then
		Say( 100, -1, "" )
	else
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.6, 0.1, 6019, 2005, 1046, 1047, "" )
		
		AddItem(6019) -- give mobile phone
	end
end

-- ################################################################################# WATER COOLER #################################################################################
function UseArea2013_OnCreate()
	SetObjProp( ACTIVESTATE, 2013, true )
end

function UseArea2013_OnActivate()
end

function UseArea2013_OnUse()

	if( waterUse == true ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		PlaySound( 61, 0.0,0.0,0.0, 1.0, 1.0 )
		GivePlayerHealth( 1 )
		waterCount = waterCount + 1
	else
		Say( 197, -1, "" )
	end
	
	if( waterCount == 3 ) then
		waterUse = false
	end
	
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2014_OnCreate()
	SetObjProp( ACTIVESTATE, 2014, true )
end

function UseArea2014_OnActivate()
end

function UseArea2014_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7005, 2005, 3035, -1, "" )
	
	AddItem(7005)
	
	SetObjProp( ACTIVESTATE, 2014, false )
end
