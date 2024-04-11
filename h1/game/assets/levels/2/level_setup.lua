
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 202; -- string res
	
	-- level models
	levelModel = 20002;
	-- physics data
	levelPhysicsComplex = "assets/levels/2/collision.ode";
	-- data
	levelData = "assets/levels/2/level_data.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 3000.0*gameData.FARCLIP_MODIFY;

	-- lights
	levelDayLight 			= "Light_Day_Cold";
	levelAfternoonLight 	= "Light_Afternoon_Cold";
	levelNightLight 		= "Light_Night_Cold";	
	
    -- fog
	levelFogDay				= "Fog_Day_Cold";
	levelFogAfternoon		= "Fog_Afternoon_Cold";
	levelFogNight			= "Fog_Night_Cold";

	detailMap					= 2000;
	detailMapScaleX				= 32.0*gameData.DETAIL_SCALE_X_MODIFY;
	detailMapScaleY				= 32.0*gameData.DETAIL_SCALE_Y_MODIFY;
	
	-- weather
	allowSnow 					= true;
	snowProbability				= 6; -- 0 (low) 10 (high)

	allowRain 					= false;
	rainProbability				= 0; -- 0 (low) 10 (high)
	
	-- bg
	levelSkyboxOffsetX			= 0.0;
	levelSkyboxOffsetY			= -0.5;
	levelSkyboxOffsetZ			= 0.0;

	levelBGDayUseFog			= true;
	levelBGDayTexture			= 1001;
	
	levelBGAfternoonUseFog		= true;
	levelBGAfternoonTexture		= 1002;
	
	levelBGNightUseFog			= true;
	levelBGNightTexture			= 1003;
	
	objectTargetId1				= 300;--balloons (easy)
    objectTargetId2				= 302;--crates (medium)
	objectTargetId3				= 301;--circles (hard)
	
	coverage 					= "assets/levels/2/spritemap.png";
	
	-- sprites
	spriteList = {
		-- sprite id, 		w, 		h, 		d		w-range		h-range		d-range
		 { 120,             16.0,	16.0,	8.0,	10.0,		20.0,		2.0			}
		,{ 121, 			16.0,	16.0,	8.0,	5.0,		10.0,		2.0			}
		,{ 122, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 123, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 124, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		,{ 125, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		--,{ 126, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 127, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 128, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 129, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}	
	};	
}

function Load_2()
	SetLevelData( levelSetup )
end