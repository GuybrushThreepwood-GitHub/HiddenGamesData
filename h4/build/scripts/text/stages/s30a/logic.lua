
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
end

-- ################################################################################# EXIT TO S22 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage22", 25, 1001 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage22", 25, 1002 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage22", 25, 1003 )
end

-- ################################################################################# SMALL DOOR #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	local keypadDone = GetDataValue( "s30a_keypad" )	

	if( keypadDone == 1 ) then
		Toggle_ReceptionDoor()
	else
		LaunchMicroGame( MICROGAME_KEYPAD, 42135, "Toggle_ReceptionDoor" )
	end
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	local keypadDone = GetDataValue( "s30a_keypad" )	

	if( keypadDone == 1 ) then
		Toggle_ReceptionDoor()
	else
		LaunchMicroGame( MICROGAME_KEYPAD, 42135, "Toggle_ReceptionDoor" )
	end
end

function Door3000_OnCreate()
end

function Toggle_ReceptionDoor()
	SetDataValue( "s30a_keypad", 1 )
	SetObjProp( DOORTOGGLE, 3000 )
end

-- ################################################################################# EXIT TO S30b #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	ChangeToStage( "stage30b", 38, 1000 )
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 8, 216.0, 164, 0.0 )
end

-- ################################################################################# s30b SURGERY UNLOCK C0MPUTER #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()

	local unlocked = GetDataValue( "s30b_surgery_unlocked" )
	
	if( unlocked == 1 ) then
		Say( 146, -1, "" )
	else
		Say( 159, -1, "Surgery_UnlockGame" )
	end
end

function Surgery_UnlockGame()
	LaunchMicroGame( MICROGAME_SLIDERHOLD, 7, 1, 3, "Surgery_Unlocked" )
end

function Surgery_Unlocked()
	-- play unlock sfx
	--PlaySound( 33, 0.0,0.0,0.0, 0.75, 0.5 )
	
	SetDataValue( "s30b_surgery_unlocked", 1 )
end

-- ################################################################################# SLIDER HOLD HINT #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	Say( 160, 161, "" )
end

-- ################################################################################# HEALTH / AMMO #################################################################################
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