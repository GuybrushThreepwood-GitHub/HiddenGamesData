
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

end

-- ################################################################################# EXIT TO S01 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage01", 1, 1001 )
end

-- ################################################################################# EXIT TO S03 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage03", 4, 1000 )
end

-- ################################################################################# TOOL BOX #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()

	-- does the player have the  fuse yet
	if (HasItem(6003) == true) then
		-- already has fuse/torch
		Say( 175, -1, "" )
	elseif (HasItem(6003) == false) then
		-- 
		Pickup_Fuse()
	end
	
end

function Pickup_Fuse()
	-- fuse pickup
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.2, 0.4, 6003, 2005, 1008, 1009, "" )	
	
	AddItem( 6003 ) -- give player the fuse
end

