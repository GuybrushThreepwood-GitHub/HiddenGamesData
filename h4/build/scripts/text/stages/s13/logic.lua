
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
	if( HasItem(7002) == true ) then
		SetObjProp( ACTIVESTATE, 2005, false )
	end	
end

-- ############################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	ChangeToStage( "stage14", 16, 1001 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	ChangeToStage( "stage10", 12, 1003 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()
	ChangeToStage( "stage10", 12, 1002 )
end

-- ############################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, false )
end

function UseArea2003_OnActivate()

end

function UseArea2003_OnUse()

end

-- ################################################################################# LOCKER #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()

end

function UseArea2004_OnUse()
	-- does the player have the memo, locker is empty
	if (HasItem(6024) == true) then
		-- already has memo
		Say( 100, -1, "" )
	elseif (HasItem(6024) == false) then
		-- first entry, inform locker is locked and launch use
		Say( 102, -1, "Locker_Use" )
	end
end

function Locker_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 7, "Locker_Correct", "" )
end

function Locker_Correct()
	-- got the (3=red) locker key, launch the key unlock
	LaunchMicroGame( MICROGAME_KEYLOCK, 2, "Pickup_SafeCode" )
end

function Locker_GiveUp()
	Say( 172, -1, "" )
end

function Pickup_SafeCode()
	-- params: soundId, posX, posY, posZ, pitch, gain
	PlaySound( 16, 0.0,0.0,0.0, 1.0, 1.0 )
	
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, -0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.56, 0.2,  6024, 2005, 1044, 1045, "" )
		
	AddItem( 6024 ) -- give player the safe code
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7002, 2005, 3029, -1, "" )
	
	AddItem(7002)
	
	SetObjProp( ACTIVESTATE, 2005, false )
end

