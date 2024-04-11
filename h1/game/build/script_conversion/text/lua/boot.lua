
local devSetup = 
{
	enablePhysicsDraw = false;
	enableDebugDraw = false;
	enableDebugUIDraw = false;

	isTablet = true;
	isRetina = false;
	isPCOnly = false;
	istvOS = false;
	
	frameLock30 = false;
	frameLock60 = false;
	
		-- tvOS selection bits
	selectionBoxThickness = 3.0;
	selectionBoxExpand = 6.0;
	selectionBoxR = 255;
	selectionBoxG = 255;
	selectionBoxB = 255;
	
	-- asset base size
	assetBaseWidth = 768;
	assetBaseHeight = 1024;
	
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
	useAABBCull = false;
	alphaBlendBatchSprites = true;
	alphaBlendValue = 0.5;
	batchSpriteDrawMode = 0; -- 0 = full rotate, 1 = y rotate only
	developerSaveFileRoot = "devSave";
	userSaveFileRoot = "userSave";
	
	allowAdvertBarScaling = false;
	appAdFilterId = "HG001";
	localAdvertXML = "assets/adverts/ads_local.xml";
	externalAdvertXML = "http://hiddengames.co.uk/ads/ads_remote.xml";
	
	allowDebugCam = true;
	levelTest = false;
	levelTestMode = GAMEMODE_RINGRUN;
	--levelTestMode = GAMEMODE_TARGET;
	--levelTestMode = GAMEMODE_FREEFLIGHT;
	levelTestId = 0;
	levelTestVehicle = 1;
	levelTestName = "Windfall Reach";--1
	--levelTestName = "Crescent Gorge";--2
	--levelTestName = "Redrock Canyon";--3
	--levelTestName = "Ingary Valley";--4
	--levelTestName = "Sistrurus Desert";--5
	--levelTestName = "Helada Plains";--6
    --levelTestName = "Porta Fault";--7
    --levelTestName = "Foso Mountain";--8
}

local physicsSetup = 
{
	gravityX = 0.0;
	gravityY = -5.0;
	gravityZ = 0.0;

	autoDisableLinearThreshold = 0.1;
	autoDisableAngularThreshold = 0.1;
	autoDisableSteps = 4;
	autoDisableTime = 0.25;
	
	CFM = 0.001;
	linearDamping = 0.0001;
	angularDamping = 0.0001;
	
	contactMaxCorrectingVel = 0.85;
	contactSurfaceLayer = 0.01;
}

function BootInitialise()
	SetDevData( devSetup )
	
	SetPhysicsData( physicsSetup )
	
	LoadScript( "lua/gamedata.lua" )
			
	SetGameData( gameData )
	
	-- resource file lists
	LoadScript( "lua/resources/model_resources.lua" )
	LoadScript( "lua/resources/animated_resources.lua" )
	LoadScript( "lua/resources/sprite_resources.lua" )
	LoadScript( "lua/resources/emitter_resources.lua" )
	LoadScript( "lua/resources/sound_resources.lua" )
	LoadScript( "lua/resources/font_resources.lua" )
	LoadScript( "lua/resources/texture_resources.lua" )
	LoadScript( "lua/resources/object_resources.lua" )
	
	LoadScript( "lua/iap.lua" )
	LoadScript( "lua/achievements.lua" )	
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

function AirCadetsInitialise()
	LoadScript( "lua/lightsetup.lua" )
	LoadScript( "lua/fogsetup.lua" )

	LoadScript( "lua/level.lua" )
	LoadScript( "lua/aircraft.lua" )
	
	LoadScript( "lua/player.lua" )
	LoadScript( "lua/physics.lua" )
	
	CreateLevelPacks()
	
	CreateVehiclePacks()
	
	SetPlayerData( playerData )
end

function iOSInit( deviceId, hardwareMajor, hardwareMin )
	-- can tweak game data based on the hardware here
	-- device id
	-- -1 = simulator or unknown
	-- 0 = ipod
	-- 1 = iphone
	-- 2 = ipad
	-- 3 = apple tv
	
		--"iPhone1,1"				iPhone 1G
		--"iPhone1,2"				iPhone 3G (China, no WiFi possibly)
		--"iPhone2,1"				iPhone 3GS
		--"iPhone3,1"				iPhone 4 
		--"iPhone3,2"				iPhone 4 (CDMA/Verizon)
		--"iPhone3,3" 				iPhone 4/Verizon, TBD
		--"iPhone4,1"				iPhone 4S (GSM), TBD
		--"iPhone4,2" 				iPhone 4S (CDMA), TBD
		--"iPhone4,3" 				iPhone 4S (???)		
		--"iPhone5,1"   			iPhone 5
		--"iPod1,1"					iPod Touch 1G
		--"iPod2,1"					iPod Touch 2G
		--"iPod2,2"					iPod Touch 2.5G
		--"iPod3,1"					iPod Touch 3G
		--"iPod4,1"					iPod Touch 4G
		--"iPad1,1"					iPad 1G (wifi)
		--"iPad1,2"					iPad 1G (3G/GSM)
		--"iPad2,1"					iPad 2G (wifi)
		--"iPad2,2" 				iPad 2G (GSM)
		--"iPad2,3"     			iPad 2G (CDMA)
		--"iPad3,1"     			iPad 3/ New iPad (WiFi)
		--"iPad3,2" 				iPad 3G (GSM)
		--"iPad3,3" 				iPad 3G (CDMA)	
		--"iPad4,1" 				iPad 4G (WiFi)
		--"iPad4,2" 				iPad 4G (GSM)
		--"iPad4,3" 				iPad 4G (CDMA)		
		--"AppleTV2,1"  			Apple TV 2G
	if( deviceId == -1 ) then
			gameData.MAX_SPRITES_PER_BATCH = 3000
			gameData.MAX_SPRITE_DRAW_DISTANCE = 5000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 4000.0
	elseif( deviceId == 0 ) then -- ipod
		if( hardwareMajor <= 3 ) then
			gameData.MAX_SPRITES_PER_BATCH = 300
			gameData.LOD_SCALER = 0.7
			gameData.MAX_SPRITE_DRAW_DISTANCE = 1550.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 1050.0
			gameData.ALLOW_DETAIL_MAP = false
			gameData.ALLOW_WIND_EFFECT = true 
			devSetup.alphaBlendBatchSprites = false
			devSetup.useAABBCull = true
			SetDevData( devSetup )			
		elseif ( hardwareMajor == 4 ) then -- ipod4
			gameData.MAX_SPRITES_PER_BATCH = 500
			gameData.LOD_SCALER = 0.7
			gameData.MAX_SPRITE_DRAW_DISTANCE = 2250.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 1500.0
			gameData.ALLOW_DETAIL_MAP = false	
			gameData.ALLOW_WIND_EFFECT = false 
			devSetup.alphaBlendBatchSprites = false
			SetDevData( devSetup )
		else
			gameData.MAX_SPRITES_PER_BATCH = 800
			gameData.MAX_SPRITE_DRAW_DISTANCE = 3000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 2000.0				
		end
	elseif ( deviceId == 1 ) then -- iphone
		if( hardwareMajor <= 1 ) then
			gameData.MAX_SPRITES_PER_BATCH = 300
			gameData.LOD_SCALER = 0.7
			gameData.MAX_SPRITE_DRAW_DISTANCE = 1550.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 1050.0
			gameData.ALLOW_DETAIL_MAP = false
			gameData.ALLOW_WIND_EFFECT = false 
			devSetup.alphaBlendBatchSprites = false
			devSetup.useAABBCull = true
			SetDevData( devSetup )	
		elseif ( hardwareMajor <= 4 ) then -- iphone 4
			gameData.MAX_SPRITES_PER_BATCH = 500
			gameData.LOD_SCALER = 0.7
			gameData.MAX_SPRITE_DRAW_DISTANCE = 2250.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 1500.0
			gameData.ALLOW_DETAIL_MAP = false	
			gameData.ALLOW_WIND_EFFECT = false 
			devSetup.alphaBlendBatchSprites = false
			SetDevData( devSetup )
		elseif ( hardwareMajor >= 5 ) then -- iphone 5+
			gameData.MAX_SPRITES_PER_BATCH = 1000
			gameData.MAX_SPRITE_DRAW_DISTANCE = 3000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 2000.0				
		end	
	elseif ( deviceId == 2 ) then -- ipad
		if( hardwareMajor < 2 ) then
			gameData.MAX_SPRITES_PER_BATCH = 500
			gameData.LOD_SCALER = 0.7
			gameData.MAX_SPRITE_DRAW_DISTANCE = 1650.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 1250.0
			gameData.ALLOW_DETAIL_MAP = false
			gameData.ALLOW_WIND_EFFECT = false 
			gameData.FARCLIP_MODIFY = 0.9
			devSetup.alphaBlendBatchSprites = false
			SetDevData( devSetup )
		elseif ( hardwareMajor >= 3 ) then -- ipad 3
			gameData.MAX_SPRITES_PER_BATCH = 1000
			gameData.MAX_SPRITE_DRAW_DISTANCE = 3000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 2000.0			
		else -- ipad 2
			gameData.MAX_SPRITES_PER_BATCH = 900
			gameData.MAX_SPRITE_DRAW_DISTANCE = 3000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 2000.0
		end	
	elseif ( deviceId == 3 ) then -- apple tv
		if( hardwareMajor < 5 ) then
			gameData.MAX_SPRITES_PER_BATCH = 800
			gameData.MAX_SPRITE_DRAW_DISTANCE = 3000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 2000.0
		elseif ( hardwareMajor >= 5 ) then -- 4th gen
			gameData.MAX_SPRITES_PER_BATCH = 3000
			gameData.MAX_SPRITE_DRAW_DISTANCE = 5000.0
			gameData.SPHERE_DRAW_DISTANCE_ON_PLANE = 4000.0
		end
	end

	SetGameData( gameData )
end

function PostPhysicsSetup()

end

-- luac
function SaveToBinary( inputFile, outputFile )

	local chunk = assert(loadfile(inputFile))

	local f=assert(io.open(outputFile,"wb"))
	assert(f:write(string.dump(chunk)))
	assert(f:close())
end

