
local waterUse = true
local waterCount = 0

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
	waterUse = true
	waterCount = 0
end

-- ################################################################################# EXIT TO S19 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	--ChangeToStage( "stage19", 21, 1001 )
	Say( 150, -1, "" )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage19", 21, 1002 )
end

-- ################################################################################# TOILET DOOR #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# SWIPE CARD #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()

	local doorsLevel2Unlocked = GetDataValue( "level2_doors_unlocked" )

	if( doorsLevel2Unlocked == 1 ) then
		Say( 171, 169, "" )
	else
		Say( 134, -1, "CardSwipe_Use" )
	end
end

function CardSwipe_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 10, "CardSwipe_Correct", "" )
end

function CardSwipe_Correct()
	LaunchMicroGame( MICROGAME_CARDSWIPE, 2, "Open_Level2Doors" )
end

function CardSwipe_GiveUp()
	if (HasItem(6011) == false) then
		Say( 106, -1, "" ) -- don't have the item, must look for it
	end
end

function Open_Level2Doors()	
	SetDataValue( "level2_doors_unlocked", 1 )
end

-- ################################################################################# COAT POCKET #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()

	if( HasItem(6012) == true ) then
		Say( 1015, -1, "" )
	else
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.2, 0.4, 6012, 2005, 1004, 1014, "" )
	
		AddItem( 6012 ) -- give player the level 3 card
	end
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	Say( 1015, -1, "" )
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 5, 180.0, 180.0, 90.0 )
end

-- ################################################################################# WATER COOLER #################################################################################
function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()

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

-- ################################################################################# HANGING BODY #################################################################################
function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	Say( 210, -1, "" )
end
