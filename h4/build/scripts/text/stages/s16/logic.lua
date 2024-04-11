
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
	local headHunterComplete = GetDataValue( "head_hunter_3" )
	if( headHunterComplete == 1 ) then
		-- already picked up the head
		SetObjProp( ACTIVESTATE, 2003, false )
		SetObjProp( EMITTER_STATE, 9103, false )
	end
end

-- ################################################################################# EXIT TO S12 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()

	local keypadDone = GetDataValue( "s16_to_s12_keypad" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s12()
	else	
		LaunchMicroGame( MICROGAME_KEYPAD, 99930, "Goto_s12" )
	end
end

function Goto_s12()
	SetDataValue( "s16_to_s12_keypad", 1 )
	
	ChangeToStage( "stage12", 14, 1002 )
end

-- ################################################################################# EXIT TO S15 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	ChangeToStage( "stage15", 17, 1000 )
end

-- ################################################################################# EXIT TO S21 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()
	ChangeToStage( "stage21", 24, 1001 )
end

-- ################################################################################# HEAD HUNTER 3 / 5 #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()

end

function UseArea2003_OnUse()
	Say( 149, -1, "Pickup_Head3" )
end

function Pickup_Head3()
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6027, 2005, 1026, 1027, "" )

	SetDataValue( "head_hunter_3", 1 )
	
	SetObjProp( ACTIVESTATE, 2003, false )
	SetObjProp( EMITTER_STATE, 9103, false )
end

