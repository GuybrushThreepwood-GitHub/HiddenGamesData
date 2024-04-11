
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 205; -- string res
	
	-- level models
	levelModel = 10005;
	-- background model
	levelBackground = 20005;
	-- foreground model
	levelForeground = 30005;
	-- physics data
	levelPhysicsComplex = "assets/levels/2_1_skycaperscraper/physics.b2d";
	-- data
	levelData = "assets/levels/2_1_skycaperscraper/leveldata.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 200.0;
	
	-- customer count
	levelCustomerTotal = 10;
	-- max spawnable customers
	levelCustomerMaxSpawn = 4;
	
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
	levelDayLight 			= "dayLevelSettings_Neutral";
	levelAfternoonLight 	= "afternoonLevelSettings_Neutral";
	levelNightLight 		= "nightLevelSettings_Neutral";	
	
	levelFogDay				= "defaultFogDaySettings_Neutral";
	levelFogAfternoon		= "defaultFogAfternoonSettings_Neutral";
	levelFogNight			= "defaultFogNightSettings_Neutral";
	
	-- bg
	levelBGPosX					= gameData.BG_POS_X_DEFAULT;
	levelBGPosY					= gameData.BG_POS_Y_DEFAULT;
	levelBGPosZ					= gameData.BG_POS_Z_DEFAULT;

	levelBGWidth				= gameData.BG_QUAD_WIDTH;
	levelBGHeight				= gameData.BG_QUAD_HEIGHT;

	levelBGDayUseFog			= false;
	levelBGDayTexture			= 1000;
	
	levelBGAfternoonUseFog		= false;
	levelBGAfternoonTexture		= 1001;
	
	levelBGNightUseFog			= false;
	levelBGNightTexture			= 1002;
	
	detailMap					= -1;
	detailMapScaleX				= 1.0;
	detailMapScaleY				= 1.0;
}

function Load_skyscrapercaper()
	SetLevelData( levelSetup )
end