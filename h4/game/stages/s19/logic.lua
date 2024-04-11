
local storedSpawn = -1

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
	if ( storedSpawn == 1000 ) or (storedSpawn == -1) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	local headHunterComplete = GetDataValue( "head_hunter_4" )
	if( headHunterComplete == 1 ) then
		-- already picked up the head
		SetObjProp( ACTIVESTATE, 2005, false )
		SetObjProp( EMITTER_STATE, 9105, false )
	end	
	
	if( HasItem(7001) == true ) then
		SetObjProp( ACTIVESTATE, 2007, false )
	end	
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	-- 				 						current floor 		button 1 to s17				this floor				inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F1", "Goto_s17",		true, "B1", "", 		false, "", ""	 )
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

function Goto_s17()
	ChangeToStage( "stage17", 19, 1001 )
end

-- ################################################################################# EXIT TO S19a #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	--ChangeToStage( "stage19a", 22, 1000 )
	Say( 150, -1, "" )
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	ChangeToStage( "stage19a", 22, 1001 )
end

-- ################################################################################# DW80 #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	-- does the player have dw80
	if (HasItem(6009) == true) then
		-- already has dw80
		Say( 100, -1, "" )
	else 
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.56, 0.4, 6009, 2005, 1049, 1050, "" )	
		
		AddItem(6009) -- give player the dw80
	end
end

-- ################################################################################# HEAD HUNTER 4 / 5 #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	Say( 152, 153, "Pickup_Head4" )
end

function Pickup_Head4()

	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6028, 2005, 1028, 1029, "" )

	SetDataValue( "head_hunter_4", 1 )
	
	SetObjProp( ACTIVESTATE, 2005, false )
	SetObjProp( EMITTER_STATE, 9105, false )
end


-- ################################################################################# ROPE #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	-- does the player have the rope
	if (HasItem(6031) == true) then
		-- already has rope
		Say( 175, -1, "" )
	else 
		-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
		LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.2, 1.0, 6031, 2005, 1051, 1052, "" )
		
		AddItem(6031) -- give player the rope
	end
end

-- ################################################################################# COSTUME #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.4, 1.0, 0.0, -0.4, -1.0, 180.0, 0.0, -0.4, 0.4, 7001, 2005, 3027, -1, "" )
	
	AddItem(7001)
	
	SetObjProp( ACTIVESTATE, 2007, false )
end
