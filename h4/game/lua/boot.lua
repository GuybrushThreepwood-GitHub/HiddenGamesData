
local devSetup = 
{
	enablePhysicsDraw = false;
	enableDebugDraw = false;
	enableDebugUIDraw = false;
	enableSave = true;

	isTablet = false;
	isRetina = false;
	
	frameLock30 = false;
	frameLock60 = true;

	disableMusic = false;

	enableFPSMode = false;	
	enableNoise = true;
	
	levelMipmap = true;
	smoothFiltering = true;
	
	-- asset base size
	assetBaseWidth = 320;
	assetBaseHeight = 480;
	
	-- define the portrait size
	screenWidth = 768;
	screenHeight = 1024;
	
	-- 0 normal
	-- 1 main game
	-- 2 intro
	-- 3 outro
	bootState = 0;
	
	hiResMode = true;
	useVertexArrays = false;
}

local cameraSetup = 
{
	cam_posx_offset = -0.2;
	cam_posy_offset = 1.80;
	cam_posz_offset = -1.1;

	cam_targetx_offset = 0.0;
	cam_targety_offset = 1.40;
	cam_targetz_offset = 6.0;
}

function BootInitialise()
	
	SetDevData( devSetup )
	
	LoadScript( "lua/gamedata.lua" )
	
	SetGameData( gameData )
	
	SetCameraData( cameraSetup )
	
	-- save data flags
	LoadScript( "lua/save_data.lua" )
	
	-- resource file lists
	LoadScript( "lua/resources/model_resources.lua" )
	LoadScript( "lua/resources/animated_resources.lua" )
	LoadScript( "lua/resources/sprite_resources.lua" )
	LoadScript( "lua/resources/emitter_resources.lua" )
	LoadScript( "lua/resources/sound_resources.lua" )
	LoadScript( "lua/resources/font_resources.lua" )
	LoadScript( "lua/resources/string_resources.lua" )
	LoadScript( "lua/resources/texture_resources.lua" )
	LoadScript( "lua/achievements.lua" )
	LoadScript( "lua/iap.lua" )
	
	-- stage setup
	LoadScript( "lua/stage.lua" )
	CreateStages()

	-- load physics data
	LoadScript( "lua/b2d_loader.lua" )
	LoadB2DFiles()
	
	-- door physics functions
	LoadScript( "lua/door_setup.lua" )
end

function PostInitialise()
	SetStartStage( "stage01" )
end