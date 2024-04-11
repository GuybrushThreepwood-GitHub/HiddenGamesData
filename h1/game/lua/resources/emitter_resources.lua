
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								emitter filename									setup function

-- vehicle	
	{	0,								"lua/emitters/exhaust_smoke.lua",					"exhaustsmoke_Emitter"						}
,	{	1,								"lua/emitters/loop_airslice_1.lua",                 "loop_airslice1_Emitter"                    }
,	{	2,								"lua/emitters/plume_dust_1.lua",					"plume_dust1_Emitter"						}

-- general
,	{	20,								"lua/emitters/gamefx_stars_2.lua",					"gamefx_stars2_Emitter"						}	


,	{	50,								"lua/emitters/explode.lua",							"explode_Emitter"							}	
,	{	51,								"lua/emitters/explode_smoke.lua",					"explodesmoke_Emitter"						}

,	{	52,								"lua/emitters/fire.lua",							"fire_Emitter"								}	
,	{	53,								"lua/emitters/fire_smoke.lua",						"firesmoke_Emitter"							}
,	{	54,								"lua/emitters/fire_smoke2.lua",						"firesmoke2_Emitter"						}	

--weather
,	{	100,							"lua/emitters/weather_flyingwind_1.lua",			"weather_flyingwind1_Emitter"				}
,	{	101,							"lua/emitters/weather_snow_1.lua",					"weather_snow1_Emitter"						}
,	{	102,							"lua/emitters/weather_rain_1.lua",					"weather_rain1_Emitter"						}
}

function RegisterEmitterResources()

	return resourceList;

end


