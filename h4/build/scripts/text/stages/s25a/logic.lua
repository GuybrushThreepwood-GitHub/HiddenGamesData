
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

-- ################################################################################# EXIT TO S31a #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	LaunchMicroGame( MICROGAME_USEITEM, 14, "ThumbScan_Correct", "" )
end

function ThumbScan_Correct()
	LaunchMicroGame( MICROGAME_THUMBSCAN, "Goto_31a" )
end

function ThumbScan_GiveUp()
	if (HasItem(6002) == false) then
		Say( 188, -1, "" ) -- don't have the item, must look for it
	end
end

function Goto_31a()
	ChangeToStage( "stage31a", 40, 1005 )
end

-- ################################################################################# EXIT TO S25 #################################################################################
function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage25", 28, 1000 )
end