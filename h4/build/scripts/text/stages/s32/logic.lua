
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

-- ################################################################################# EXIT TO s29 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage29", 36, 1002 )
end

-- ################################################################################# EXIT TO s33 / s34 #################################################################################

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()

	local powerOn = GetDataValue( "helipad_power_on" )
	
	if( powerOn == 1 ) then
		ChangeToStage( "stage34", 46, 1000 )
	else
		ChangeToStage( "stage33", 46, 1000 )
	end
	
end