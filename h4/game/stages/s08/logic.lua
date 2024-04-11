
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
	-- open doors when in the elevator spawn
	if( storedSpawn == 1000 or storedSpawn == -1) then
		SetObjProp( DOORTOGGLE, 3000 )
	end
end

-- ################################################################################# LIFT #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()

end

function UseArea2000_OnUse()
	-- 				 						current floor 		to s03						this floor				to s04			
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F3", "Goto_s03", 	true, "F2", "", 		true, "F1", "Goto_s04" 	)	
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()

end

function UseArea2001_OnUse()
	-- Call elevator
	SetObjProp( DOORTOGGLE, 3000 )
end

function Goto_s03()
	ChangeToStage( "stage03", 4, 1001 )
end

function Goto_s04()
	ChangeToStage( "stage04", 6, 1000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# EXIT TO s09 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()

end

function UseArea2002_OnUse()
	-- Use Keypad
	ChangeToStage( "stage09", 11, 1000 )
end

-- ################################################################################# BLOOD MESSAGE #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()

end

function UseArea2003_OnUse()
	Say( 158, -1, "" )
end

