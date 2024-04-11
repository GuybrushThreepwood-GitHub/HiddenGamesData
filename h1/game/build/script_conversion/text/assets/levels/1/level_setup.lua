
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 201; -- string res
	
	-- level models
	levelModel = 20001;
	-- physics data
	levelPhysicsComplex = "assets/levels/1/collision.ode";
	-- data
	levelData = "assets/levels/1/level_data.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 3000.0*gameData.FARCLIP_MODIFY;

	-- lights
	levelDayLight 			= "Light_Day_Neutral";
	levelAfternoonLight 	= "Light_Afternoon_Neutral";
	levelNightLight 		= "Light_Night_Neutral";	
	
    -- fog
	levelFogDay				= "Fog_Day_Neutral";
	levelFogAfternoon		= "Fog_Afternoon_Neutral";
	levelFogNight			= "Fog_Night_Neutral";

	detailMap					= 2000;
	detailMapScaleX				= 32.0*gameData.DETAIL_SCALE_X_MODIFY;
	detailMapScaleY				= 32.0*gameData.DETAIL_SCALE_Y_MODIFY;
	
	-- weather
	allowSnow 					= false;
	snowProbability				= 0; -- 0 (low) 10 (high)
	
	allowRain 					= true;
	rainProbability				= 3; -- 0 (low) 10 (high)
	
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
	
	coverage 					= "assets/levels/1/spritemap.png";
	
	-- sprites
	spriteList = {
		-- sprite id, 		w, 		h, 		d		w-range		h-range		d-range
		 { 100,             16.0,	16.0,	8.0,	10.0,		20.0,		2.0			}
		,{ 101, 			16.0,	16.0,	8.0,	5.0,		10.0,		2.0			}
		,{ 102, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 103, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 104, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		,{ 105, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		--,{ 106, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 107, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 108, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		--,{ 109, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}			
	};
}

function Load_1()
	SetLevelData( levelSetup )
end