
groundOffset = 900.0
groundPtr = nil

SHAPE_GENERIC	= 0
SHAPE_TRIANGLE 	= 1
SHAPE_SQUARE 	= 2
SHAPE_HEXAGON	= 3
SHAPE_OCTAGON	= 4
SHAPE_CIRCLE	= 5

-- global revolute joint
globalRevoluteJoint = 
{
	type = 8;
	localAnchor1X = 0.00;
	localAnchor1Y = groundOffset;
	localAnchor2X = 0.00;
	localAnchor2Y = 0.00;
	referenceAngle = 0.00;
	lowerAngle = 0.00;
	upperAngle = 0.00;
	maxMotorTorque = 10000.00;
	motorSpeed = 0.00;
	enableLimit = false;
	enableMotor= false;
}

local devSetup = 
{
	enablePhysicsDraw = false;
	enableDebugDraw = false;
	enableDebugUIDraw = false;

	isTablet = true;
	isRetina = false;
	isPCOnly = false;
	istvOS = true;
	
	frameLock30 = false;
	frameLock60 = false;
	
	-- tvOS selection bits
	selectionBoxThickness = 2.0;
	selectionBoxExpand = 4.0;
	selectionBoxR = 0;
	selectionBoxG = 166;
	selectionBoxB = 22;
	
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
	
	allowDebugCam = true;
	showEnemyLines = false;
    
    shieldSetup = "shield_triangle_3";
    --shieldSetup = "shield_triangle_6";
    
    --shieldSetup = "shield_square_2";
    --shieldSetup = "shield_square_4";
    --shieldSetup = "shield_square_8";
 
    --shieldSetup = "shield_hexagon_2";
    --shieldSetup = "shield_hexagon_3";
    --shieldSetup = "shield_hexagon_6";
    
    --shieldSetup = "shield_octagon_2";
    --shieldSetup = "shield_octagon_4";
    --shieldSetup = "shield_octagon_8";
    
    --shieldSetup = "shield_circle_2";
    --shieldSetup = "shield_circle_3";
    --shieldSetup = "shield_circle_4";
    --shieldSetup = "shield_circle_5";
    --shieldSetup = "shield_circle_6";
    --shieldSetup = "shield_circle_7";
    --shieldSetup = "shield_circle_8";
    
    --shieldSetup = "shield_star_2";
    --shieldSetup = "shield_star_4";
    --shieldSetup = "shield_star_6";
    --shieldSetup = "shield_star_12";
}

function BootInitialise()
	SetDevData( devSetup )
		
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
	
	LoadScript( "lua/iap.lua" )
	LoadScript( "lua/achievements.lua" )	
	
end

function LoadLanguageFile( language )
	LoadScript( "lua/resources/string_resources.lua" )
end

function H8Initialise()
	LoadScript( "lua/player.lua" )
	LoadScript( "lua/colours.lua" )
	LoadScript( "lua/enemy.lua" )
	
    --loop through all circle shields
    for i=2,8,1 do
        LoadScript( "assets/shields/shield_circle_" .. i .. ".lua" )
        LoadScript( "assets/shields/shield_circle_" .. i .. ".b2d" )
    end
    
    LoadScript( "assets/shields/shield_triangle_3.lua" )
	LoadScript( "assets/shields/shield_triangle_3.b2d" )
    LoadScript( "assets/shields/shield_triangle_6.lua" )
	LoadScript( "assets/shields/shield_triangle_6.b2d" )
    
    LoadScript( "assets/shields/shield_square_2.lua" )
	LoadScript( "assets/shields/shield_square_2.b2d" )
    LoadScript( "assets/shields/shield_square_4.lua" )
	LoadScript( "assets/shields/shield_square_4.b2d" )
    LoadScript( "assets/shields/shield_square_8.lua" )
	LoadScript( "assets/shields/shield_square_8.b2d" )
    
    LoadScript( "assets/shields/shield_hexagon_2.lua" )
	LoadScript( "assets/shields/shield_hexagon_2.b2d" )
    LoadScript( "assets/shields/shield_hexagon_3.lua" )
	LoadScript( "assets/shields/shield_hexagon_3.b2d" )
    LoadScript( "assets/shields/shield_hexagon_6.lua" )
	LoadScript( "assets/shields/shield_hexagon_6.b2d" )
    
    LoadScript( "assets/shields/shield_octagon_2.lua" )
	LoadScript( "assets/shields/shield_octagon_2.b2d" )
    LoadScript( "assets/shields/shield_octagon_4.lua" )
	LoadScript( "assets/shields/shield_octagon_4.b2d" )
    LoadScript( "assets/shields/shield_octagon_8.lua" )
	LoadScript( "assets/shields/shield_octagon_8.b2d" )
    
    --LoadScript( "assets/shields/shield_star_2.lua" )
	--LoadScript( "assets/shields/shield_star_2.b2d" )
    --LoadScript( "assets/shields/shield_star_4.lua" )
	--LoadScript( "assets/shields/shield_star_4.b2d" )
    --LoadScript( "assets/shields/shield_star_6.lua" )
	--LoadScript( "assets/shields/shield_star_6.b2d" )
    --LoadScript( "assets/shields/shield_star_12.lua" )
	--LoadScript( "assets/shields/shield_star_12.b2d" )
    
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

