
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 203; -- string res
	
	-- level models
	levelModel = 10003;
	-- background model
	levelBackground = 20003;
	-- foreground model
	levelForeground = 30003;
	-- physics data
	levelPhysicsComplex = "assets/levels/1_4_kamikaze/physics.b2d";
	-- data
	levelData = "assets/levels/1_4_kamikaze/leveldata.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 160.0;
	
	-- customer count
	levelCustomerTotal = 7;
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
	levelDayLight 			= "dayLevelSettings_Cold";
	levelAfternoonLight 	= "dayLevelSettings_Cold";
	levelNightLight 		= "nightLevelSettings_Cold";	
	
	levelFogDay				= "defaultFogDaySettings_Cold";
	levelFogAfternoon		= "defaultFogAfternoonSettings_Cold";
	levelFogNight			= "defaultFogNightSettings_Cold";

	-- bg
	levelBGPosX					= gameData.BG_POS_X_DEFAULT;
	levelBGPosY					= 100;--gameData.BG_POS_Y_DEFAULT;
	levelBGPosZ					= gameData.BG_POS_Z_DEFAULT;

	levelBGWidth				= 250;--gameData.BG_QUAD_WIDTH;
	levelBGHeight				= 250;--gameData.BG_QUAD_HEIGHT;

	levelBGDayUseFog			= false;
	levelBGDayTexture			= 1200;
	
	levelBGAfternoonUseFog		= false;
	levelBGAfternoonTexture		= 1201;
	
	levelBGNightUseFog			= false;
	levelBGNightTexture			= 1202;
	
	detailMap					= 2002;
	detailMapScaleX				= 5.0;
	detailMapScaleY				= 5.0;
}

function Load_kamikaze()
	SetLevelData( levelSetup )
end