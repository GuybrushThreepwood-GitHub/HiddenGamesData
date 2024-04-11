
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- filenames and func calls can be changed anytime

local resourceList = 
{
	-- id				filename									funcCall
	
	{	0,				"lua/animated_models/prop_turbine.lua",			"prop_turbine" 			}	-- TURBINE
   ,{	1,				"lua/animated_models/spider.lua",				"prop_spider" 			}	-- SPIDER
   ,{	2,				"lua/animated_models/prop_hanged.lua",			"prop_hanged" 			}	-- HANGED VICTIM
   ,{	3,				"lua/animated_models/prop_drowned1.lua",		"prop_drowned1" 		}	-- DROWNED 1
   ,{	4,				"lua/animated_models/prop_drowned2.lua",		"prop_drowned2" 		}	-- DROWNED 2
   ,{	5,				"lua/animated_models/prop_cocooned1.lua",		"prop_cocooned1" 		}	-- COCOONED 1
   ,{	6,				"lua/animated_models/prop_cocooned2.lua",		"prop_cocooned2" 		}	-- COCOONED 2
   ,{	7,				"lua/animated_models/prop_cctv.lua",			"prop_cctv" 			}	-- CCTV
   ,{	8,				"lua/animated_models/prop_ceilingfan.lua",		"prop_ceilingfan"		}	-- FAN
   ,{	9,				"lua/animated_models/prop_brokendoordouble.lua","prop_brokendoordouble"	}	-- BROKEN DOOR (DOUBLE)
}

function RegisterAnimatedResources()

	return resourceList;

end


