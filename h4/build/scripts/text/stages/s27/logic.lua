
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

-- ################################################################################# EXIT TO S26 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage26", 31, 1002 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage26", 31, 1003 )
end

-- ################################################################################# DOORS ??? #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, false )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()

end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, false )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()

end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, false )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()

end