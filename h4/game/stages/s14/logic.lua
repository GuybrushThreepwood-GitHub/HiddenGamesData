
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
	local headHunterComplete = GetDataValue( "head_hunter_2" )
	if( headHunterComplete == 1 ) then
		-- already picked up the head
		SetObjProp( ACTIVESTATE, 2004, false )
		SetObjProp( EMITTER_STATE, 9104, false )
	end
end

-- ################################################################################# EXIT TO S12 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	local keypadDone = GetDataValue( "s14_to_s12_keypad" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s12()
	else	
		LaunchMicroGame( MICROGAME_KEYPAD, 99930, "Goto_s12" )
	end
end

function Goto_s12()
	SetDataValue( "s14_to_s12_keypad", 1 )
	
	ChangeToStage( "stage12", 14, 1001 )
end

-- ################################################################################# EXIT TO S13 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	ChangeToStage( "stage13", 15, 1000 )
end

-- ################################################################################# EXIT TO S20 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()
	ChangeToStage( "stage20", 23, 1001 )
end

-- ################################################################################# PICKUP KEYCARD #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()

end

function UseArea2003_OnUse()
	if( HasItem(6011) == true ) then
		Say( 1015, -1, "")
	else
		Say( 156, 157, "Pickup_KeyCard2" )
	end
end

function Pickup_KeyCard2()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 180.0, 30.0, -0.2, 0.4, 6011, 2005, 1042, 1043, "" )		
	AddItem( 6011 ) -- give player the level 2 card
end

-- ################################################################################# HEAD HUNTER 2 / 5 #################################################################################
function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()

end

function UseArea2004_OnUse()
	Say( 149, -1, "Pickup_Head2" )
end

function Pickup_Head2()
	-- params: MICROGAME_PICKUPITEM, camX, camY, camZ, lookatX, lookatY, lookatZ, maxYrot, maxXrot, minZoom, maxZoom, itemResourceId, uiModelId, description1index, description2index, successFunction
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6026, 2005, 1024, 1025, "" )

	SetDataValue( "head_hunter_2", 1 )
	
	SetObjProp( ACTIVESTATE, 2004, false )
	SetObjProp( EMITTER_STATE, 9104, false )
end

