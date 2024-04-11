
local healthUsed = false
local ammoUsed = false

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
	healthUsed = false
	ammoUsed = false
	
	if( HasItem(7003) == true ) then
		SetObjProp( ACTIVESTATE, 2010, false )
	end		
end

-- ################################################################################# EXIT TO S12 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage12", 14, 1003 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage12", 14, 1004 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage12", 14, 1005 )
end

-- ################################################################################# EXIT TO S21 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	ChangeToStage( "stage21", 24, 1000 )
end

-- ################################################################################# SMALL DOOR #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# EXIT TO S17a #################################################################################

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	ChangeToStage( "stage17a", 48, 1001 )
end

-- ################################################################################# GUN SAFE #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	-- does player have the shotgun
	if (HasItem(6004) == false) then
		-- params: MICROGAME_DIALS, dial1, dial2, dial3, successFunc
		LaunchMicroGame( MICROGAME_DIALS, 25, 50, 75, "Safe_Opened" )	
	else
		-- empty
		Say( 100, -1, "" )
	end
end

function Safe_Opened()
	-- receive shotgun
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.05, 1.2, 0.0, 0.0, -1.0, 180.0, 30.0, -0.1, 0.4, 6004, 2005, 1012, 1013, "" )	
	
	AddItem( 6004 ) -- give player the shotgun
end

-- ################################################################################# HEALTH / AMMO #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	if( healthUsed == false ) then
		healthUsed = true
		GivePlayerHealth( 25 )
		
		PlaySound( 43, 0.0, 0.0, 0.0, 1.0, 1.0 )
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
	if( ammoUsed == false ) then
		ammoUsed = true
		GivePlayerAmmo( 25, 25 )
		
		PlaySound( 42, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7003, 2005, 3031, -1, "" )
	
	AddItem(7003)
	
	SetObjProp( ACTIVESTATE, 2010, false )
end
