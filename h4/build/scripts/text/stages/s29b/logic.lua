
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
	if ( storedSpawn == 1000 ) or ( storedSpawn == -1 ) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
	
	if ( storedSpawn == 1001 ) then
		local scareVal = GetDataValue( "s29b_scare" )
		
		if( scareVal == 0 ) then
			SetObjProp( EMITTER_STATE, 9500, true )
			SetDataValue( "s29b_scare", 1 )
		end
	end
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	-- 				 						current floor 		to s29a						to s29						this floor		
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	3, 				true, "F2", "Goto_s29a", 	true, "F1", "Goto_s29", 	true, "B1", "" 	)	
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

function Goto_s29a()
	ChangeToStage( "stage29a", 42, 1000 )
end

function Goto_s29()
	ChangeToStage( "stage29", 36, 1001 )
end

-- ################################################################################# WATER TIGHT DOOR #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	local doorLoosened = GetDataValue( "used_dw80_in_s29b" )

	if( doorLoosened == 1 ) then
		WaterDoor_Correct()
	else
		Say( 118, -1, "WaterDoor_Use" )
	end
end

function WaterDoor_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 5, "WaterDoor_Correct", "" )
end

function WaterDoor_Correct()
	LaunchMicroGame( MICROGAME_WATERTIGHTDOOR, "Basement_Open" )	
end

function WaterDoor_GiveUp()
	Say( 118, 119, "" )
end

function Basement_Open()
	SetDataValue( "used_dw80_in_s29b", 1 )
	ChangeToStage( "stage29c", 44, 1000 )
end
