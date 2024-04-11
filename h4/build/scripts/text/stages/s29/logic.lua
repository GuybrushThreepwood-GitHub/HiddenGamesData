
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
	
	if ( storedSpawn == 1001 )  then
		SetObjProp( DOORTOGGLE, 3003 )
	end
end

-- ################################################################################# EXIT TO S28 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage28", 35, 1001 )
end

-- ################################################################################# LARGE DOOR #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	Say( 190, -1, "")
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	Say( 305, -1, "")
end

-- ################################################################################# TOILET DOOR #################################################################################

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function Door3001_OnCreate()
end

-- ################################################################################# ROOM DOOR #################################################################################

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function Door3002_OnCreate()
end

-- ################################################################################# LIFT DOOR #################################################################################

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
	-- 				 						current floor 		to s29a						this floor				to s29b			
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F2", "Goto_s29a", 	true, "F1", "", 		true, "B1", "Goto_s29b" 	)	
end

function Door3003_OnCreate()

end

function Goto_s29a()
	ChangeToStage( "stage29a", 42, 1000 )
end

function Goto_s29b()
	ChangeToStage( "stage29b", 43, 1000 )
end

-- ################################################################################# EXIT TO s32 #################################################################################
function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	ChangeToStage( "stage32", 45, 1000 )
end

-- ################################################################################# LOCKER #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	-- does the player have the pilot's log yet, locker is empty
	if (HasItem(6021) == true) then
		-- already has pilot's log
		Say( 175, -1, "" )
	elseif (HasItem(6021) == false) then
		-- first entry, inform locker is locked and launch use
		Say( 102, -1, "Locker_Use" )
	end
end

function Locker_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 8, "Locker_Correct", "" )
end

function Locker_Correct()
	-- got the (3=red) locker key, launch the key unlock
	LaunchMicroGame( MICROGAME_KEYLOCK, 3, "Pickup_LogBook" )
end

function Locker_GiveUp()
	Say( 172, -1, "" )
end

function Pickup_LogBook()
	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 16, 0.0,0.0,0.0, 1.0, 1.0 )
	
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.02, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.55, 0.2,  6021, 2005, 1032, 1033, "" )
	
	AddItem( 6021 ) -- give player the logbook
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 10, 128.0, 98.0, 0.0 )
end

-- ################################################################################# CRIMINAL DOC 5 / 5 #################################################################################
function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	LaunchMicroGame( MICROGAME_CRIMINALDOCS, 5 )
	
	-- set the data to 'true'
	SetDataValue( "criminal_docs_5", 1 )
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
