
-- This file will manage our level loading stuff, for the moment it'll just force a single level to load
local levelSetup = 
{
	levelName = 208; -- string res
	
	-- level models
	levelModel = 20008;
	-- physics data
	levelPhysicsComplex = "assets/levels/8/collision.ode";
	-- data
	levelData = "assets/levels/8/level_data.dat";
	
	-- clip distances
	levelNearClip = 1.0;
	levelFarClip = 3000.0*gameData.FARCLIP_MODIFY;

	-- lights
	levelDayLight 			= "Light_Day_Hot";
	levelAfternoonLight 	= "Light_Afternoon_Hot";
	levelNightLight 		= "Light_Night_Hot";	
	
    -- fog
	levelFogDay				= "Fog_Day_Hot";
	levelFogAfternoon		= "Fog_Afternoon_Hot";
	levelFogNight			= "Fog_Night_Hot";

	detailMap					= 2002;
	detailMapScaleX				= 64.0*gameData.DETAIL_SCALE_X_MODIFY;
	detailMapScaleY				= 64.0*gameData.DETAIL_SCALE_Y_MODIFY;
	
	allowSnow 					= false;
	snowProbability				= 0; -- 0 (low) 10 (high)
	
	allowRain 					= false;
	rainProbability				= 0; -- 0 (low) 10 (high)
	
	-- bg
	levelSkyboxOffsetX			= 0.0;
	levelSkyboxOffsetY			= -0.5;
	levelSkyboxOffsetZ			= 0.0;

	levelBGDayUseFog			= true;
	levelBGDayTexture			= 1004;
	
	levelBGAfternoonUseFog		= true;
	levelBGAfternoonTexture		= 1002;
	
	levelBGNightUseFog			= true;
	levelBGNightTexture			= 1005;
	
	objectTargetId1				= 300;--balloons (easy)
    objectTargetId2				= 302;--crates (medium)
	objectTargetId3				= 301;--circles (hard)
	
	coverage 					= "assets/levels/8/spritemap.png";

	-- sprites
	spriteList = {
		-- sprite id, 		w, 		h, 		d		w-range		h-range		d-range
		 { 130,             16.0,	16.0,	8.0,	10.0,		10.0,		2.0			}
		,{ 131, 			16.0,	16.0,	8.0,	10.0,		10.0,		2.0			}
		,{ 132, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 133, 			8.0,	8.0,	4.0,	5.0,		10.0,		2.0			}
		,{ 134, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		,{ 135, 			8.0,	8.0,	4.0,	2.5,		2.5,		2.0			}
		,{ 136, 		    8.0,	8.0,	4.0,	5.0,		5.0,		2.0			}
		,{ 137, 			8.0,	8.0,	4.0,	5.0,		5.0,		2.0			}
		--,{ 138, 			8.0,	8.0,	4.0,	5.0,		5.0,		2.0			}
		--,{ 139, 			8.0,	8.0,	4.0,	5.0,		5.0,		2.0			}
	};	
}

function Load_8()
	SetLevelData( levelSetup )
end