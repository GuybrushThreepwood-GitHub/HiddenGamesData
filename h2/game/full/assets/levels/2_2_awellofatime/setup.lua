
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 206; -- string res
	
	-- level models
	levelModel = 10006;
	-- background model
	levelBackground = 20006;
	-- foreground model
	levelForeground = 30006;
	-- physics data
	levelPhysicsComplex = "assets/levels/2_2_awellofatime/physics.b2d";
	-- data
	levelData = "assets/levels/2_2_awellofatime/leveldata.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 160.0;
	
	-- customer count
	levelCustomerTotal = 6;
	-- max spawnable customers
	levelCustomerMaxSpawn = 3;
	
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
	levelCameraZ = 20.0;
	
	-- look at a point above the player so the player is near the bottom of the screen
	levelCamCenterY = 0.0;
	-- look off into the distance
	levelCamCenterZ = -500.0;

	-- how close to get when landed
	levelCloseZoom = 6.0;
	levelCloseZoomSpeed = 25.0;

	-- lights
	levelDayLight 			= "dayLevelSettings_Warm";
	levelAfternoonLight 	= "afternoonLevelSettings_Warm";
	levelNightLight 		= "nightLevelSettings_Warm";	
	
	levelFogDay				= "defaultFogDaySettings_Warm";
	levelFogAfternoon		= "defaultFogAfternoonSettings_Warm";
	levelFogNight			= "defaultFogNightSettings_Warm";

	-- bg
	levelBGPosX					= gameData.BG_POS_X_DEFAULT;
	levelBGPosY					= 100;--gameData.BG_POS_Y_DEFAULT;
	levelBGPosZ					= gameData.BG_POS_Z_DEFAULT;

	levelBGWidth				= 175;--gameData.BG_QUAD_WIDTH;
	levelBGHeight				= 175;--gameData.BG_QUAD_HEIGHT;

	levelBGDayUseFog			= false;
	levelBGDayTexture			= 1100;
	
	levelBGAfternoonUseFog		= false;
	levelBGAfternoonTexture		= 1101;
	
	levelBGNightUseFog			= false;
	levelBGNightTexture			= 1102;
	
	detailMap					= 2002;
	detailMapScaleX				= 5.0;
	detailMapScaleY				= 5.0;
}

function Load_wellofatime()
	SetLevelData( levelSetup )
end