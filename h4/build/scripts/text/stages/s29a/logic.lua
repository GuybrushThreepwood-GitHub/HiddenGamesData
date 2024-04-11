
local storedSpawn = -1
local healthUsed = false
local ammoUsed = false
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
	healthUsed = false
	ammoUsed = false
	waterUse = true
	waterCount = 0
	
	if ( storedSpawn == 1000 ) or ( storedSpawn == -1 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	if( HasItem(7008) == true ) then
		SetObjProp( ACTIVESTATE, 2011, false )
	end		
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
		-- 				 						current floor 	to s29a				to 29						to s29b			
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F2", "", 	true, "F1", "Goto_s29", 	true, "B1", "Goto_s29b" 	)	
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

function Goto_s29()
	ChangeToStage( "stage29", 36, 1001 )
end

function Goto_s29b()
	ChangeToStage( "stage29b", 43, 1000 )
end

-- ################################################################################# SMALL DOOR #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function Door3001_OnCreate()
end

-- ################################################################################# TOOLBOX #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()

	if( HasItem(6023) == true ) then
		Say( 203, 133, "" )
	else
		-- screwdriver
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.4, 0.4, 6023, 2005, 1037, 1038, "" )
	
		AddItem(6023) -- give player the screwdriver
	end
end

-- ################################################################################# COATS #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	Say( 1015, -1, "" )
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	if( HasItem(6017) == true ) then
		Say( 1015, -1, "" )
	else
		-- red locker key
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, -0.05, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.1, 0.4, 6017, 2005, 1039, -1, "" )
	
		AddItem(6017) -- give the red locker key
	end
end

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	Say( 1015, -1, "" )
end

-- ################################################################################# HEALTH / AMMO #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	if( ammoUsed == false ) then
		ammoUsed = true
		GivePlayerAmmo( 25, 25 )
		
		PlaySound( 42, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end

function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	if( healthUsed == false ) then
		healthUsed = true
		GivePlayerHealth( 25 )
		
		PlaySound( 43, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end

-- ################################################################################# WATER COOLER #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()

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
function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7008, 2005, 3041, -1, "" )
	
	AddItem(7008)
	
	SetObjProp( ACTIVESTATE, 2011, false )
end
