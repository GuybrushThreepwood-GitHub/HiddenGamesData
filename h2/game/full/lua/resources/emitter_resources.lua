
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								emitter filename									setup function

-- vehicle	
	{	1,								"lua/emitters/thrusters_air.lua",                   "v_thrusters_air_Emitter"               }
,	{	2,								"lua/emitters/thrusters_air.lua",                   "h_thrusters_air_Emitter"               }
,	{	3,								"lua/emitters/thrusters_water.lua",					"v_thrusters_water_Emitter"             }
,	{	4,								"lua/emitters/thrusters_water.lua",					"h_thrusters_water_Emitter"				}

,	{	20,								"lua/emitters/high_vehicle_damage.lua",				"high_vehicle_damage_Emitter"			}
,	{	21,								"lua/emitters/low_vehicle_damage.lua",				"low_vehicle_damage_Emitter"			}
,	{	22,								"lua/emitters/taxi_explode.lua",					"taxi_explode_sparks_Emitter"			}
,	{	23,								"lua/emitters/taxi_explode.lua",					"taxi_explode_smoke_Emitter"			}
	
,	{	30,								"lua/emitters/watersplash_in.lua",					"watersplash_in_Emitter"				}
,	{	31,								"lua/emitters/watersplash_out.lua",					"watersplash_out_Emitter"				}

-- objects/enemies
,	{	100,							"lua/emitters/mine_explode.lua",					"mine_explode_Emitter"					}	

-- pickups
,	{	200,							"lua/emitters/gamefx_stars_2.lua",					"gamefx_stars2_Emitter"					}	

-- customers
,	{	300,							"lua/emitters/gamefx_sparkle_1.lua",				"gamefx_sparkle1_Emitter"				}	

-- environment (smoke)
,	{	503,							"lua/emitters/loop_smoke_3.lua",					"loop_smoke3_Emitter"					}--new

--environment (fire)
,	{	550,							"lua/emitters/fire.lua",							"fire_Emitter"							}

-- environment (water)
,	{	600,							"lua/emitters/loop_bubbles_1.lua",					"loop_bubbles1_Emitter"                 }--new
,	{	601,							"lua/emitters/loop_bubbles_2.lua",					"loop_bubbles2_Emitter"                 }--new
,	{	602,							"lua/emitters/waterplume.lua",						"waterplume_Emitter"					}

-- environment (special)
,	{	650,							"lua/emitters/loop_fireflies_1.lua",				"loop_fireflies1_Emitter"               }--new
,	{	651,							"lua/emitters/loop_spacedust_1.lua",                "loop_spacedust1_Emitter"				}--new
,	{	652,							"lua/emitters/loop_vacuumedge_1.lua",               "loop_vacuumedge1_Emitter"              }--new

-- environment (weather)
,   {	700,                            "lua/emitters/weather_snow_1.lua",					"weather_snow1_Emitter"                 }--new
,	{	701,							"lua/emitters/weather_rain_1.lua",					"weather_rain1_Emitter"                 }--new
,	{	705,							"lua/emitters/bubbles.lua",					        "bubbles_Emitter"					    }

}

function RegisterEmitterResources()

	return resourceList;

end


