
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								sound filename	

-- player
	{	1,								"assets/audio/vehicle/engine.wav"					}	
,	{	2,								"assets/audio/vehicle/gun.wav"						}		
,	{	3,								"assets/audio/vehicle/shot_hit.wav"					}	
,	{	4,								"assets/audio/vehicle/shot_bounce.wav"				}	
,	{	5,								"assets/audio/vehicle/crash.wav"					}
	
-- misc
,	{	106,							"assets/audio/misc/timer_tick.wav"			}
,	{	107,							"assets/audio/misc/timer_end.wav"			}
,	{	108,							"assets/audio/misc/level_complete.wav"		}

-- ui
,	{	131,							"assets/audio/ui/select.wav"						}
,	{	132,							"assets/audio/ui/achievement_popup.wav"				}


-- world
,	{	500,							"assets/audio/world/cadet_pickup.wav"							}
,	{	501,							"assets/audio/world/star_pickup.wav"							}
,	{	502,							"assets/audio/world/hiddenicon_pickup.wav"						}
,	{	503,							"assets/audio/world/object_destroy.wav"							}
,	{	504,							"assets/audio/world/target_destroy.wav"							}
,	{	505,							"assets/audio/world/ring_pass.wav"								}

-- ambient
,	{	1002,							"assets/audio/ambient/city_buzz.wav"                            }
,	{	1003,							"assets/audio/ambient/light_rain.wav"                           }
,	{	1004,							"assets/audio/ambient/polar_wind_calm.wav"                      }
,	{	1005,							"assets/audio/ambient/polar_wind_strong.wav"                    }
}

function RegisterSoundResources()

	return resourceList;

end


