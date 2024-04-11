
local storedSpawn = -1

--[[

Areas
-----
2000 - Locker 1
2001 - Office Door (external)
2002 - Office Door (internal)
2003 - Door exit to s03
2004 - Locker 4
2005 - Elevator external
2006 - Elevator internal
2007 - Filing cabinet
2008 - Computer
2009 - Drawer
2010 - Phone
2011 - Locked Door corridor

Doors
-----
3000 - Exit to s03
3001 - Lift doors
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

	if ( storedSpawn == 1002 ) then
		SetObjProp( DOORTOGGLE, 3001 )
	end
	
	if ( storedSpawn == 1000 ) then
		PlaySound( 17, 0.0,0.0,0.0, 1.0, 1.0 )
	end
	
	local doorsLevel1Unlocked = GetDataValue( "level1_doors_unlocked" )
	if( doorsLevel1Unlocked == 1 ) then
		-- already unlocked level 1 doors
		SetObjProp( EMITTER_STATE, 9203, true )
		SetObjProp( EMITTER_STATE, 9303, false )
	end		
	
	local liftUnlocked = GetDataValue( "s01_lift_unlocked" )
	if( liftUnlocked == 1 ) then
		SetObjProp( ACTIVESTATE, 2005, true )
		SetObjProp( EMITTER_STATE, 9105, true )
	else
		SetObjProp( ACTIVESTATE, 2005, false )
		SetObjProp( EMITTER_STATE, 9105, false )
	end
end

-- ################################################################################# CORRIDOR LOCKED DOOR #################################################################################
function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()

end

function UseArea2011_OnUse()	
	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 33, 0.0,0.0,0.0, 1.0, 1.0 )
end

-- ################################################################################# LOCKER NUM 1 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()	
	-- does the player have the paper yet, locker is empty
	if (HasItem(6000) == true) then
		-- already has paper and gun
		Say( 100, -1, "" )
	elseif (HasItem(6000) == false) then
		-- first entry, inform locker is open and launch paper pickup
		Say( 107, -1, "Pickup_Locker1Paper" )
	end
	
end

function Pickup_Locker1Paper()

	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 16, 0.0,0.0,0.0, 1.0, 1.0 )
	
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.56, 0.2, 6000, 2005, 1000, 1001, "Pickup_Pistol" )
		
	AddItem( 6000 ) -- give player the paper
		
	-- enable office door panels
	SetObjProp( ACTIVESTATE, 2001, true )
	SetObjProp( ACTIVESTATE, 2002, true )

end

function Pickup_Pistol()
	-- show pistol
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.05, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.45, 0.2,  6001, 2005, 1002, 1003, "" )
	
	AddItem( 6001 ) -- give player the gun
end

-- ################################################################################# LOCKER NUM 4 #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	if (HasItem(6006) == true) then
		-- got the clipboard, it's empty
		Say( 100, -1, "" )
	else
		Say( 102, 103, "OpenLocker_Use" )
	end
end

function OpenLocker_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 6, "OpenLocker_Correct", "" )
end

function OpenLocker_Correct()
	-- got the (1=blue) locker key, launch the key unlock
	LaunchMicroGame( MICROGAME_KEYLOCK, 1, "Pickup_Clipboard" )
end

function OpenLocker_GiveUp()
	if (HasItem(6005) == true) then
		Say( 173, -1, "" ) -- hint that you have the item
	else
		Say( 172, -1, "" ) -- don't have the item, must look for it
	end
end


function Pickup_Clipboard()
	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 16, 0.0,0.0,0.0, 1.0, 1.0 )
	
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, -0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.66, 0.1,  6006, 2005, 1006, 1007, "" )
		
	AddItem( 6006 ) -- give player the clipboard
end

-- ################################################################################# OFFICE DOOR #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()

	local keypadDone = GetDataValue( "s01_keypad" )	

	-- player has paper
	if( keypadDone == 1 ) then
		Toggle_Office_Door()		
	elseif (HasItem(6000) == true) then
		-- Office Door Keypad (ext)
		LaunchMicroGame( MICROGAME_KEYPAD, 22522, "Toggle_Office_Door" )
	else
		Say( 101, -1, "" )
	end
	
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()

	local keypadDone = GetDataValue( "s01_keypad" )	

	if( keypadDone == 1 ) then
		Toggle_Office_Door()
	else
		-- Office Door Keypad (int)
		LaunchMicroGame( MICROGAME_KEYPAD, 22522, "Toggle_Office_Door" )
	end
end

function Door3000_OnCreate()
end

function Toggle_Office_Door()
	SetDataValue( "s01_keypad", 1 )	

	SetObjProp( DOORTOGGLE, 3000 )
end

-- ################################################################################# OFFICE COMPUTER #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()		

	local doorUnlocked = GetDataValue( "level1_doors_unlocked" )

	if( doorUnlocked == 1 ) then
		Say( 171, 168, "" )
	else
		Say( 105, -1, "CardSwipe_Use" )
	end
end

function CardSwipe_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 9, "CardSwipe_Correct", "" )
end

function CardSwipe_Correct()
	LaunchMicroGame( MICROGAME_CARDSWIPE, 1, "Open_s02_Door" )
end

function CardSwipe_GiveUp()
	if (HasItem(6010) == false) then
		Say( 106, -1, "" ) -- don't have the item, must look for it
	end
end

function Open_s02_Door()
	
	-- swap door light to enabled
	SetObjProp( EMITTER_STATE, 9203, true )
	SetObjProp( EMITTER_STATE, 9303, false )
	
	-- play unlock sfx
	--PlaySound( 33, 0.0,0.0,0.0, 1.0, 1.0 )
	
	SetDataValue( "level1_doors_unlocked", 1 )
end

-- ################################################################################# OFFICE DRAWER #################################################################################
function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()	
	if (HasItem(6010) == true) then
		Say( 100, -1, "" )
	else
		PlaySound( 51, 0.0,0.0,0.0, 1.0, 1.0 )
		-- show slide card
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.2, 0.4, 6010, 2005, 1004, 1005, "" )
		
		AddItem( 6010 ) -- give player the level 1 card
	end
end

-- ################################################################################# OFFICE FILING CABINET #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	PlaySound( 52, 0.0,0.0,0.0, 1.0, 1.0 )
	Say( 184, 185, "View_Documents")
end

function View_Documents()
	LaunchMicroGame( MICROGAME_CRIMINALDOCS, 1 )

	-- set the data to 'true'
	SetDataValue( "criminal_docs_1", 1 )
end

-- ################################################################################# OFFICE PHONE #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()

end

function UseArea2010_OnUse()	
	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 36, 0.0,0.0,0.0, 1.0, 1.0 )
end

-- ################################################################################# ELEVATOR #################################################################################
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
	-- 				 						current floor 		top	(1)					middle (2)						bottom (3)
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	1, 				true, "F1", "" ,		true, "B1", "Goto_s01a", 		false, "", ""	 )
end

function Door3001_OnCreate()
end

function Goto_s01a()
	ChangeToStage( "stage01a", 2, 1000 )
end

-- ################################################################################# EXIT TO s02 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()

	local doorUnlocked = GetDataValue( "level1_doors_unlocked" )

	if( doorUnlocked == 1 ) then
		-- Exit 
		ChangeToStage( "stage02", 3, 1000 )
	else
		Say( 167, 102, "" )
	end
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	Say( 186, -1, "View_Map" )
end

function View_Map()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 1, 296.0, 136.0, 0.0 )
end