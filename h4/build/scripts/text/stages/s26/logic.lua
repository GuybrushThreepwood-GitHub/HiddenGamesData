
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
		SetObjProp( DOORTOGGLE, 3001 )
	end	
end

-- ################################################################################# LIFT TO S25 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	-- 				 						current floor 		button 1 to s25				this floor			inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F2", "Goto_s25",		true, "F1", "",		 false, "", ""	 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Goto_s25()
	ChangeToStage( "stage25", 28, 1001 )
end

function Door3000_OnCreate()
end

-- ################################################################################# LIFT TO S26b #################################################################################

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	-- 				 						current floor 		to s26b							this floor					inactive
	LaunchMicroGame( MICROGAME_LIFTBUTTONS, 	2, 				true, "F2", "Goto_s26b",		true, "F1","",		 		false, "",""		 )
end

function Goto_s26b()
	ChangeToStage( "stage26b", 33, 1000 )
end

function Door3001_OnCreate()
end

-- ################################################################################# DOORS TO S27 #################################################################################

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	ChangeToStage( "stage27", 34, 1000 )
end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	ChangeToStage( "stage27", 34, 1001 )
end

-- ################################################################################# DOORS TO S26a #################################################################################

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	local keypadDone = GetDataValue( "s26_to_s26a_keypads" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s26a_1000()
	else	
		LaunchMicroGame( MICROGAME_KEYPAD, 75717, "Goto_s26a_1000" )
	end
end

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	local keypadDone = GetDataValue( "s26_to_s26a_keypads" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s26a_1001()
	else
		LaunchMicroGame( MICROGAME_KEYPAD, 75717, "Goto_s26a_1001" )
	end
end

function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	local keypadDone = GetDataValue( "s26_to_s26a_keypads" )	

	if( keypadDone == 1 ) then
		-- params: soundId, posX, posY, posZ, pitch, gain
		--PlaySound( 102, 0.0,0.0,0.0, 1.0, 1.0 )
		Goto_s26a_1002()
	else
		LaunchMicroGame( MICROGAME_KEYPAD, 75717, "Goto_s26a_1002" )
	end
end

function Goto_s26a_1000()
	SetDataValue( "s26_to_s26a_keypads", 1 )
	ChangeToStage( "stage26a", 32, 1000 )
end

function Goto_s26a_1001()
	SetDataValue( "s26_to_s26a_keypads", 1 )
	ChangeToStage( "stage26a", 32, 1001 )
end

function Goto_s26a_1002()
	SetDataValue( "s26_to_s26a_keypads", 1 )
	ChangeToStage( "stage26a", 32, 1002 )
end


