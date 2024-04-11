
local devSetup = 
{
	enableDeveloperMenu = false;
	
	enablePhysicsDraw = false;
	enableDebugDraw = false;
	enableDebugUIDraw = false;
	enableSave = false;

	isTablet = true;
	isRetina = false;
	isPCOnly = false;
	istvOS = false;
	
	frameLock30 = false;
	frameLock60 = true;
	
	-- tvOS selection bits
	selectionBoxThickness = 3.0;
	selectionBoxExpand = 6.0;
	selectionBoxR = 255;
	selectionBoxG = 255;
	selectionBoxB = 255;
	
	levelMipmap = true;
	smoothFiltering = false;
	
	-- asset base size
	assetBaseWidth = 320;
	assetBaseHeight = 480;
	
	-- define the portrait size
	screenWidth = 768;
	screenHeight = 1024;
	
	bootState = 0;
	language = LANGUAGE_ENGLISH;
    --language = LANGUAGE_FRENCH;
    --language = LANGUAGE_GERMAN;
    --language = LANGUAGE_ITALIAN;
    --language = LANGUAGE_SPANISH;
	showPCAdBar = true;
	useVertexArrays = false;
	developerSaveFileRoot = "devSave";
	userSaveFileRoot = "userSave";
	
	allowAdvertBarScaling = false;
	appAdFilterId = "HG002";
	localAdvertXML = "assets/adverts/ads_local.xml";
	externalAdvertXML = "http://hiddengames.co.uk/ads/ads_remote.xml";
	
	disableMeshDraw = false;
	allowDebugCam = true;
	singleHitKill = false;
	levelTest = false;
	levelTestVehicle = 0;
    levelTestName = "Easy Does It";
    --levelTestName = "Crossroad Confusion";
    --levelTestName = "Short Circuit";
    --levelTestName = "Kamikaze";
    --levelTestName = "Asteroids";
    --levelTestName = "Skycaper Scraper";
    --levelTestName = "A Well of a Time";
    --levelTestName = "Space Camp";
    --levelTestName = "Hidden Cave";
    --levelTestName = "Breath In";
    --levelTestName = "Snaaaake!";
    --levelTestName = "Ghost Ship";
    --levelTestName = "Meteor Shower";
    --levelTestName = "The Elephant Dip";
    --levelTestName = "Danger Cove";
    --levelTestName = "Dog's Eyes Chief";
    --levelTestName = "Ending";
	hiresCustomers = false;
}

function BootInitialise()

	if( CABBY_LITE ) then	
		devSetup.appAdFilterId = "HG002D";
	elseif( CABBY_FREE ) then
		devSetup.appAdFilterId = "HG002F";
	else
		devSetup.appAdFilterId = "HG002";
	end
	
	SetDevData( devSetup )
	
	if( CABBY_LITE ) then	
		LoadScript( "lua/gamedata_lite.lua" )
	elseif( CABBY_FREE ) then
		LoadScript( "lua/gamedata_free.lua" )
	else
		LoadScript( "lua/gamedata.lua" )
	end
	
	SetGameData( gameData )
	
	-- resource file lists
	LoadScript( "lua/resources/model_resources.lua" )
	LoadScript( "lua/resources/animated_resources.lua" )
	LoadScript( "lua/resources/sprite_resources.lua" )
	LoadScript( "lua/resources/emitter_resources.lua" )
	LoadScript( "lua/resources/sound_resources.lua" )
	LoadScript( "lua/resources/font_resources.lua" )
	LoadScript( "lua/resources/texture_resources.lua" )
	
	if( CABBY_LITE ) then
		LoadScript( "lua/iap_lite.lua" )
		LoadScript( "lua/achievements_lite.lua" )
	elseif( CABBY_FREE ) then
		LoadScript( "lua/iap_free.lua" )
		LoadScript( "lua/achievements_free.lua" )
	else	
		LoadScript( "lua/iap.lua" )
		LoadScript( "lua/achievements.lua" )	
	end

end

function LoadLanguageFile( language )
	if( language == LANGUAGE_FRENCH ) then
		LoadScript( "lua/resources/languages/string_resources_fre.lua" )
	elseif( language == LANGUAGE_GERMAN ) then
		LoadScript( "lua/resources/languages/string_resources_ger.lua" )
	elseif( language == LANGUAGE_ITALIAN ) then
		LoadScript( "lua/resources/languages/string_resources_ita.lua" )
	elseif( language == LANGUAGE_SPANISH ) then
		LoadScript( "lua/resources/languages/string_resources_spa.lua" )
	else
		LoadScript( "lua/resources/string_resources.lua" )
	end
end

function CabbyInitialise()
	LoadScript( "lua/lightsetup.lua" )
	LoadScript( "lua/fogsetup.lua" )

	if( CABBY_LITE ) then
		LoadScript( "lua/level_lite.lua" )
		LoadScript( "lua/vehicles_lite.lua" )	
	elseif( CABBY_FREE ) then
		LoadScript( "lua/level_free.lua" )
		LoadScript( "lua/vehicles_free.lua" )	
	else
	
		LoadScript( "lua/level.lua" )
		LoadScript( "lua/vehicles.lua" )
	end
	
	LoadScript( "lua/player.lua" )
	LoadScript( "lua/physics.lua" )
	
	-- only for development
	--LoadScript( "lua/profile.lua" )
	--SetProfileState( profileSetup )

	-- inform system of all physics objects
	PreLoadPhysicsObjects()
	
	CreateLevelPacks()
	
	CreateVehiclePacks()
	
	SetPlayerData( playerData )
	
	-- load taxi changes per atmosphere
	SetSettingsData( 0, airSettings )
	SetSettingsData( 1, vacSettings )
	SetSettingsData( 2, waterSettings )
end

function PostPhysicsSetup()
	-- create connecting body for all joints
	local groundDef = 
	{
		positionX = 0.0;
		positionY = -groundOffset;
	}
	groundPtr = CreateBody( groundDef )
	
	local boxShape = 
	{
		hy = 0.1;
		hy = 0.1;
		friction = 0.05;
		restitution = 0.01;
	}
	local shape1Ptr = CreateBoxShape( groundPtr, boxShape )	
end

-- luac
function SaveToBinary( inputFile, outputFile )

	local chunk = assert(loadfile(inputFile))

	local f=assert(io.open(outputFile,"wb"))
	assert(f:write(string.dump(chunk)))
	assert(f:close())
end

