
local healthUsed = false
local ammoUsed = false

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
	healthUsed = false
	ammoUsed = false
	
	local tokenPickedUp = GetDataValue( "hidden_token_4" )
	if( tokenPickedUp == 1 ) then
		-- already picked up the hidden token
		SetObjProp( ACTIVESTATE, 2010, false )
		SetObjProp( EMITTER_STATE, 9110, false )	
	end	
end

-- ################################################################################# EXIT TO S26 #################################################################################
function UseArea2000_OnCreate()
	SetObjProp( ACTIVESTATE, 2000, true )
end

function UseArea2000_OnActivate()
end

function UseArea2000_OnUse()
	ChangeToStage( "stage26", 31, 1004 )
end

function UseArea2001_OnCreate()
	SetObjProp( ACTIVESTATE, 2001, true )
end

function UseArea2001_OnActivate()
end

function UseArea2001_OnUse()
	ChangeToStage( "stage26", 31, 1005 )
end

function UseArea2002_OnCreate()
	SetObjProp( ACTIVESTATE, 2002, true )
end

function UseArea2002_OnActivate()
end

function UseArea2002_OnUse()
	ChangeToStage( "stage26", 31, 1006 )
end

-- ################################################################################# SMALL DOOR #################################################################################
function UseArea2003_OnCreate()
	SetObjProp( ACTIVESTATE, 2003, true )
end

function UseArea2003_OnActivate()
end

function UseArea2003_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function UseArea2004_OnCreate()
	SetObjProp( ACTIVESTATE, 2004, true )
end

function UseArea2004_OnActivate()
end

function UseArea2004_OnUse()
	SetObjProp( DOORTOGGLE, 3002 )
end

function Door3002_OnCreate()
end

-- ################################################################################# LARGE DOOR 1 #################################################################################
function UseArea2005_OnCreate()
	SetObjProp( ACTIVESTATE, 2005, true )
end

function UseArea2005_OnActivate()
end

function UseArea2005_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function UseArea2006_OnCreate()
	SetObjProp( ACTIVESTATE, 2006, true )
end

function UseArea2006_OnActivate()
end

function UseArea2006_OnUse()
	SetObjProp( DOORTOGGLE, 3001 )
end

function Door3001_OnCreate()
end

-- ################################################################################# LARGE DOOR 2 #################################################################################

function UseArea2007_OnCreate()
	SetObjProp( ACTIVESTATE, 2007, true )
end

function UseArea2007_OnActivate()
end

function UseArea2007_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function UseArea2008_OnCreate()
	SetObjProp( ACTIVESTATE, 2008, true )
end

function UseArea2008_OnActivate()
end

function UseArea2008_OnUse()
	SetObjProp( DOORTOGGLE, 3000 )
end

function Door3000_OnCreate()
end

-- ################################################################################# LAUNCH MAP #################################################################################
function UseArea2009_OnCreate()
	SetObjProp( ACTIVESTATE, 2009, true )
end

function UseArea2009_OnActivate()
end

function UseArea2009_OnUse()
	-- params: MICROGAME_MAP, mapIndex(1-9), playerPosX, playerPosY, playerRot
	LaunchMicroGame( MICROGAME_MAP, 7, 265.0, 192.0, 90.0 )
end

-- ################################################################################# HIDDEN TOKEN 4 / 5 #################################################################################
function UseArea2010_OnCreate()
	SetObjProp( ACTIVESTATE, 2010, true )
end

function UseArea2010_OnActivate()
end

function UseArea2010_OnUse()
	LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 30.0, -0.4, 0.4, 6008, 2005, 1019, 1021, "" )
	
	-- set the data to 'true'
	SetDataValue( "hidden_token_4", 1 )
	
	SetObjProp( ACTIVESTATE, 2010, false )
	SetObjProp( EMITTER_STATE, 9110, false )	
end

-- ################################################################################# HELICOPTER PART #################################################################################
function UseArea2011_OnCreate()
	SetObjProp( ACTIVESTATE, 2011, true )
end

function UseArea2011_OnActivate()
end

function UseArea2011_OnUse()
	
	-- already picked up the part
	if( HasItem(6022) == true ) then
		Say( 117, -1, "" )
	else
		-- got the log book, but not the part, so pick it up
		if( HasItem(6021) == true ) and ( HasItem(6022) == false ) then
			LaunchMicroGame( MICROGAME_PICKUPITEM, 0.0, 0.01, 1.0, 0.0, 0.0, -1.0, 180.0, 180.0, -0.4, 0.4, 6022, 2005, 1035, 1036, "" )

			AddItem(6022) -- give player the helicopter part
		else
			-- no log book
			SayRandomLine()
		end
	end
end

-- ################################################################################# POINTLESS PARTS #################################################################################
function UseArea2012_OnCreate()
	SetObjProp( ACTIVESTATE, 2012, true )
end

function UseArea2012_OnActivate()
end

function UseArea2012_OnUse()
	SayRandomLine()
end

function UseArea2013_OnCreate()
	SetObjProp( ACTIVESTATE, 2013, true )
end

function UseArea2013_OnActivate()
end

function UseArea2013_OnUse()
	SayRandomLine()
end

function UseArea2014_OnCreate()
	SetObjProp( ACTIVESTATE, 2014, true )
end

function UseArea2014_OnActivate()
end

function UseArea2014_OnUse()
	SayRandomLine()
end

function UseArea2015_OnCreate()
	SetObjProp( ACTIVESTATE, 2015, true )
end

function UseArea2015_OnActivate()
end

function UseArea2015_OnUse()
	SayRandomLine()
end

function UseArea2016_OnCreate()
	SetObjProp( ACTIVESTATE, 2016, true )
end

function UseArea2016_OnActivate()
end

function UseArea2016_OnUse()
	SayRandomLine()
end

function UseArea2017_OnCreate()
	SetObjProp( ACTIVESTATE, 2017, true )
end

function UseArea2017_OnActivate()
end

function UseArea2017_OnUse()
	SayRandomLine()
end

function UseArea2018_OnCreate()
	SetObjProp( ACTIVESTATE, 2018, true )
end

function UseArea2018_OnActivate()
end

function UseArea2018_OnUse()
	SayRandomLine()
end

function UseArea2019_OnCreate()
	SetObjProp( ACTIVESTATE, 2019, true )
end

function UseArea2019_OnActivate()
end

function UseArea2019_OnUse()
	SayRandomLine()
end

function UseArea2020_OnCreate()
	SetObjProp( ACTIVESTATE, 2020, true )
end

function UseArea2020_OnActivate()
end

function UseArea2020_OnUse()
	SayRandomLine()
end

function UseArea2021_OnCreate()
	SetObjProp( ACTIVESTATE, 2021, true )
end

function UseArea2021_OnActivate()
end

function UseArea2021_OnUse()
	SayRandomLine()
end

function UseArea2022_OnCreate()
	SetObjProp( ACTIVESTATE, 2022, true )
end

function UseArea2022_OnActivate()
end

function UseArea2022_OnUse()
	SayRandomLine()
end

function UseArea2023_OnCreate()
	SetObjProp( ACTIVESTATE, 2023, true )
end

function UseArea2023_OnActivate()
end

function UseArea2023_OnUse()
	SayRandomLine()
end

function SayRandomLine()
	local randomLine = RandomNumber( 200, 205 )
	Say( randomLine, -1, "" )
end

-- ################################################################################# HEALTH / AMMO #################################################################################
function UseArea2024_OnCreate()
	SetObjProp( ACTIVESTATE, 2024, true )
end

function UseArea2024_OnActivate()
end

function UseArea2024_OnUse()
	if( ammoUsed == false ) then
		ammoUsed = true
		GivePlayerAmmo( 25, 25 )
		
		PlaySound( 42, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end

function UseArea2025_OnCreate()
	SetObjProp( ACTIVESTATE, 2025, true )
end

function UseArea2025_OnActivate()
end

function UseArea2025_OnUse()
	if( healthUsed == false ) then
		healthUsed = true
		GivePlayerHealth( 25 )
		
		PlaySound( 43, 0.0, 0.0, 0.0, 1.0, 1.0 )
	else
		PlaySound( 44, 0.0, 0.0, 0.0, 1.0, 1.0 )
	end
end

