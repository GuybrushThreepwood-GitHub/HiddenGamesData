
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

-- ################################################################################# EXIT TO S32 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage32", 45, 1001 )
end

-- ################################################################################# HELICOPTER DOORS #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	Say( 178, -1, "Heli_Extra" )
end

function Heli_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 12, "Heli_Correct", "" )
end

function Heli_Extra()
	Say( 130, 131, "Heli_Use" )
end

function Heli_Correct()
	Say( 132, -1, "EndGame" )
	-- The End
end

function Heli_GiveUp()
	if (HasItem(6022) == false) then
		Say( 194, 195, "" ) -- don't have item
	elseif (HasItem(6022) == true) then
		Say( 196, -1, "" ) -- have the item
	end
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	Say( 178, -1, "Heli_Extra" )
end

function EndGame()
	EndTheGame()
end

-- ################################################################################# LARGE DOOR #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end