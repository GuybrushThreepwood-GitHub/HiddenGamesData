
local storedSpawn = -1
local healthUsed = false

--[[

Areas
-----
2000 - Exit to s02
2001 - Small Door (external)
2002 - Small Door (internal)
2003 - Drawer in room
2004 - Computer
2005 - Safe
2006 - Exit to s03a
2007 - Lift ext
2008 - Lift interior
2009 - Remote Door

Doors
-----
3000 - Room door
3001 - Large door to lift
3002 - Lift doors

Emitters
--------
9000 - Exit to s02 enabled
9001 - Small office door ext enabled
9002 - Small office door int enabled
9003 - Large door disabled
9004 - Large door enabled
9005 - Small door to s03a enabled
--]]

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
	-- reset health
	healthUsed = false

	-- large door should be open
	local doorUnlocked = GetDataValue( "s03_door_unlocked" )
	
	if( doorUnlocked == 1 ) then
		Open_Large_Door()	
	end
	
	-- open doors when in the elevator spawn
	if( storedSpawn == 1001 ) then
		SetObjProp( DOORTOGGLE, 3002 )
	end	
end

-- ############################################

-- ################################################################################# EXTRANCE FROM S02 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	ChangeToStage( "stage02", 3, 1001 )
end

-- ################################################################################# COMPUTER ROOM DOOR #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

-- ################################################################################# DRAWER #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()

	if (HasItem(6005) == true) then
		-- already got key
		Say( 100, -1, "" )
	else
		PlaySound( 51, 0.0,0.0,0.0, 1.0, 1.0 )
			-- Locker key (s01 Locker 4)
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, -0.05, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.1, 0.4, 6005, 2005, 1010, 1011, "Pickup_Torch" )	
		
		AddItem( 6005 ) -- give player the locker 4 key
	end
end

function Pickup_Torch()
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.0, 0.4, 6020, 2005, 1048, -1, "" )	

	AddItem( 6020 ) -- give player the torch
end

-- ################################################################################# COMPUTER USE #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()

	local doorUnlocked = GetDataValue( "s03_door_unlocked" )
	if( doorUnlocked == 1 ) then
		Say( 193, -1, "" )
	else
		if (HasItem(6006) == true) then
			-- params: MICROGAME_SLIDERHOLD, firstNum, secondNum, thirdNum, successFunc
			LaunchMicroGame( MICROGAME_SLIDERHOLD, 1, 5, 1, "Open_Large_Door" )
		else
			-- no clipboard yet
			Say( 104, 101, "" )
		end
	end
end

-- successful large door
function Open_Large_Door()

	SetDataValue( "s03_door_unlocked", 1 )

	-- disable remote door use
	SetObjProp( ACTIVESTATE, 2009, false )
	-- open large doors
	SetObjProp( DOORTOGGLE, 3001 )

	-- change emitter states
	SetObjProp( EMITTER_STATE, 9209, false )
	SetObjProp( EMITTER_STATE, 9309, true )
	
	-- play unlock sfx
	--PlaySound( 33, 0.0,0.0,0.0, 1.0, 1.0 )
end

-- ################################################################################# SAFE #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
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
	
	SetObjProp( ACTIVESTATE, 2005, false )
end

-- ################################################################################# EXIT TO S03a #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	ChangeToStage( "stage03a", 5, 1000 )
end

-- ################################################################################# LIFT DOORS #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

-- lift exit to s04
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	-- 				 						current floor 		this floor			button 2 to s08				button 3 to s04	
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true,"F3", "",		true, "F2", "Goto_s08", 	true, "F1", "Goto_s04"	 )
end

function Goto_s04()
	ChangeToStage( "stage04", 6, 1000 )
end

function Goto_s08()
	ChangeToStage( "stage08", 10, 1000 )
end

-- ################################################################################# REMOTE DOORS #################################################################################

function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()

end

function UseArea2009_OnUse()
	Say( 108, 109, "" )
end

-- ############################################

function Door3000_OnCreate()
end

function Door3001_OnCreate()
end

function Door3002_OnCreate()
end

-- ############################################

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 2, 266.0, 202.0, 270.0 )
end

-- ################################################################################# HEALTH / AMMO #################################################################################
function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	if( healthUsed == false ) then
		healthUsed = true
		GivePlayerHealth( 25 )
		
		PlaySound( 43, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end