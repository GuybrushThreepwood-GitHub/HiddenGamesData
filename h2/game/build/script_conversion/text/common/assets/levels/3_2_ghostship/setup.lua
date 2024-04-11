
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 211; -- string res
	
	-- level models
	levelModel = 10011;
	-- background model
	levelBackground = 20011;
	-- foreground model
	levelForeground = 30011;
	-- physics data
	levelPhysicsComplex = "assets/levels/3_2_ghostship/physics.b2d";
	-- data
	levelData = "assets/levels/3_2_ghostship/leveldata.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 200.0;
	
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

	levelBGWidth				= gameData.BG_QUAD_WIDTH;
	levelBGHeight				= gameData.BG_QUAD_HEIGHT;

	levelBGDayUseFog			= false;
	levelBGDayTexture			= 1200;
	
	levelBGAfternoonUseFog		= false;
	levelBGAfternoonTexture		= 1201;
	
	levelBGNightUseFog			= false;
	levelBGNightTexture			= 1202;
	
	detailMap					= 2000;
	detailMapScaleX				= 12.0;
	detailMapScaleY				= 12.0;
}

function Load_ghostship()
	SetLevelData( levelSetup )
end