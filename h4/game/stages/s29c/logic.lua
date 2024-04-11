
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
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		PlaySound( 180, 0.0, 0.0, 0.0, 1.0, 0.5, true )
	end
end

-- ################################################################################# EXIT TO S29b #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	LaunchMicroGame( MICROGAME_WATERTIGHTDOOR, "Basement_Open" )
end

function Basement_Open()
	ChangeToStage( "stage29b", 43, 1001 )
end

-- ############################################################################## DUMMY PANELS ################################################################################

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		Say( 181, 143, "" )
	else
		Say ( 179, -1, "DummyScrewDriver1_Use")
	end
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		Say( 181, 143, "" )
	else
		Say ( 179, -1, "DummyScrewDriver2_Use")
	end
end

function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		Say( 181, 143, "" )
	else
		Say ( 179, -1, "DummyScrewDriver3_Use")
	end
end

function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		Say( 181, 143, "" )
	else
		Say ( 179, -1, "DummyScrewDriver4_Use")
	end
end


function DummyScrewDriver1_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 16, "DummyScrewDriver1_Correct", "" )
end

function DummyScrewDriver2_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 16, "DummyScrewDriver2_Correct", "" )
end

function DummyScrewDriver3_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 16, "DummyScrewDriver3_Correct", "" )
end

function DummyScrewDriver4_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 16, "DummyScrewDriver4_Correct", "" )
end

function DummyScrewDriver1_Correct()
	Say( 123, -1, "") -- threads worn
end

function DummyScrewDriver2_Correct()
	Say( 180, -1, "") -- nothing wrong
end

function DummyScrewDriver3_Correct()
	Say( 182, 183, "") -- needs flat-head
end

function DummyScrewDriver4_Correct()
	Say( 180, -1, "") -- nothing wrong
end

function DummyScrewDriver_GiveUp()
	if (HasItem(6023) == true) then
		Say( 121, -1, "" ) -- hint that you have the item
	else
		Say( 121, 122, "") -- don't have the item, must look for it
	end
end

-- ############################################################################## CORRECT PANEL ####################################################################################

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	local powerOn = GetDataValue( "helipad_power_on" )	
	if( powerOn == 1 ) then
		Say( 143, -1, "" )
	else
		Say ( 179, -1, "ScrewDriver_Use")
	end
end

function ScrewDriver_Use()
	LaunchMicroGame( MICROGAME_USEITEM, 16, "ScrewDriver_Correct", "" )
end

function ScrewDriver_Correct()
	LaunchMicroGame( MICROGAME_WIRING, 1, 3, "PowerOn" )
end

function ScrewDriver_GiveUp()
	if (HasItem(6023) == true) then
		Say( 121, -1, "" ) -- hint that you have the item
	else
		Say( 121, 122, "") -- don't have the item, must look for it
	end
end

function PowerOn()
	Say( 143, -1, "" )
	SetDataValue( "helipad_power_on", 1 )
	
	PlaySound( 180, 0.0, 0.0, 0.0, 1.0, 0.5, true )
end
