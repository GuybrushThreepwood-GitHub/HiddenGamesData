
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
	local headHunterComplete = GetDataValue( "head_hunter_1" )
	if( headHunterComplete == 1 ) then
		-- already picked up the head
		SetObjProp( ACTIVESTATE, 2004, false )
		SetObjProp( EMITTER_STATE, 9104, false )
	end
end

-- ################################################################################# EXIT TO s04 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	-- exit back to s04
	ChangeToStage( "stage04", 6, 1001 )
end

-- ################################################################################# EXIT TO s06 #################################################################################

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	ChangeToStage( "stage06", 8, 1000 )
end

-- ################################################################################# EXIT TO s12 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()

	local keypadDone = GetDataValue( "s05_to_s12_keypad" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s12()
	else
		LaunchMicroGame( MICROGAME_KEYPAD, 99930, "Goto_s12" )
	end
end

function Goto_s12()
	SetDataValue( "s05_to_s12_keypad", 1 )	
	
	ChangeToStage( "stage12", 14, 1000 )
end

-- ################################################################################# EXIT TO s07 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()

end

function UseArea2003_OnUse()
	ChangeToStage( "stage07", 9, 1000 )
end

-- ################################################################################# HEAD HUNTER 1 / 5 #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()

end

function UseArea2004_OnUse()
	Say( 149, -1, "Pickup_Head1" )
end

function Pickup_Head1()

	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6025, 2005, 1022, 1023, "" )

	SetDataValue( "head_hunter_1", 1 )
	
	SetObjProp( ACTIVESTATE, 2004, false )
	SetObjProp( EMITTER_STATE, 9104, false )
end

-- ################################################################################# BLOCKED TOILET #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()

end

function UseArea2005_OnUse()
	Say( 198, 199, "" )
end