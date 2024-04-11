
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
	-- 				 						current floor 		to s03							to s08						this floor					
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	3, 				true, "F3", "Goto_s03", 		true, "F2", "Goto_s08", 	true, "F1", "" )
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

function Goto_s08()
	ChangeToStage( "stage08", 10, 1000 )
end

-- ################################################################################# EXIT TO s05 #################################################################################
function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	-- Use Keypad	
	ChangeToStage( "stage05", 7, 1000 )
end

-- ################################################################################# FILE ROOM DOOR #################################################################################
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

function Door3000_OnCreate()
end
function Door3001_OnCreate()
end

-- ################################################################################# FILING CABINET #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()

end

function UseArea2005_OnUse()
	PlaySound( 52, 0.0,0.0,0.0, 1.0, 1.0 )
	LaunchMicroGame( MICROGAME_CRIMINALDOCS, 2 )
	
	-- set the data to 'true'
	SetDataValue( "criminal_docs_2", 1 )
end

-- ################################################################################# COMPUTER USE #################################################################################
function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()

end

function UseArea2006_OnUse()
	local liftUnlocked = GetDataValue( "s01_lift_unlocked" )
	if( liftUnlocked == 1 ) then
		Say( 165, 166, "")
	else
		PlaySound( 50, 0.0,0.0,0.0, 1.0, 1.0 )
		Say( 166, -1, "" );
		SetDataValue( "s01_lift_unlocked", 1 )
	end
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 3, 199.0, 226.0, 0.0 )
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
