
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 216; -- string res
	
	-- level models
	levelModel = 10016;
	-- background model
	levelBackground = 20016;
	-- foreground model
	levelForeground = -1;
	-- physics data
	levelPhysicsComplex = "";--"assets/levels/special_ending/physics.b2d";
	-- data
	levelData = "assets/levels/special_ending/leveldata.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 1000.0;
	
	-- customer count
	levelCustomerTotal = 3;
	-- max spawnable customers
	levelCustomerMaxSpawn = 2;
	
	-- arcade stars
	levelArcadeTime = gameData.ARCADE_TIME;
	levelArcadeCustomers = gameData.ARCADE_CUSTOMERS; -- >= star
	levelArcadeFuel = gameData.ARCADE_FUEL; -- <= star
	levelArcadeMoney = gameData.ARCADE_MONEY; -- >= star
	-- level complete = star
	-- lives lost < 0 = star
	-- star in level
	
	-- Camera always looks at the player, these positions are offsets from the players world position
	levelCameraOffsetX = 0.0;
	levelCameraOffsetY = 0.5;
	
	-- this is how far/close to the player
	levelCameraZ = 18.0;
	
	-- look at a point above the player so the player is near the bottom of the screen
	levelCamCenterY = 0.0;
	-- look off into the distance
	levelCamCenterZ = -500.0;

	-- how close to get when landed
	levelCloseZoom = 6.0;
	levelCloseZoomSpeed = 25.0;

	-- lights
	levelDayLight 			= "afternoonLevelSettings_Warm";
	levelAfternoonLight 	= "afternoonLevelSettings_Warm";
	levelNightLight 		= "afternoonLevelSettings_Warm";	
	
	levelFogDay				= "sunset_FogSettings";
	levelFogAfternoon		= "sunset_FogSettings";
	levelFogNight			= "sunset_FogSettings";

	-- bg
	levelBGPosX					= gameData.BG_POS_X_DEFAULT;
	levelBGPosY					= 75;--gameData.BG_POS_Y_DEFAULT;
	levelBGPosZ					= -150;--gameData.BG_POS_Z_DEFAULT;

	levelBGWidth				= 200;--gameData.BG_QUAD_WIDTH;
	levelBGHeight				= 200;--gameData.BG_QUAD_HEIGHT;

	levelBGDayUseFog			= false;
	levelBGDayTexture			= 1500;
	
	levelBGAfternoonUseFog		= false;
	levelBGAfternoonTexture		= 1500;
	
	levelBGNightUseFog			= false;
	levelBGNightTexture			= 1500;
	
	detailMap					= -1;
	detailMapScaleX				= 1.0;
	detailMapScaleY				= 1.0;
}

function Load_ending()
	SetLevelData( levelSetup )
end