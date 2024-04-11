
-- ### RULES ###
-- only supply the filename, not the extension, this can be changed on the fly based on the device

local DEFAULT_DISABLE_DISTANCE = 2300.0

local resourceList = 
{  
	-- id					physics data											destroy 	low lod     medium		high			disable distance						low distance	medium distance		high distance
-- RESERVED	
--,  {	-1,	       																																																	}
-- RESERVED	

    -- objects
    {	0,					"",														false,		500,		500,		500,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
    
    -- buildings/structures
,   {	1,					"assets/models/buildings/barn_1.ode",					true,		501,		501,		502,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	2,					"assets/models/buildings/church_1.ode",					true,		503,		503,		504,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	3,					"assets/models/buildings/house_1.ode",					true,		505,		505,		506,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	4,					"assets/models/buildings/house_2.ode",					true,		507,		507,		508,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	5,					"assets/models/buildings/house_3.ode",					true,		509,		509,		510,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	6,					"assets/models/buildings/house_4.ode",					true,		511,		511,		512,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	7,					"assets/models/buildings/house_5.ode",					true,		513,		513,		514,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	8,					"assets/models/buildings/house_6.ode",					true,		515,		515,		516,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	9,					"assets/models/buildings/lighthouse_1.ode",				true,		517,		517,		518,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	10,					"assets/models/buildings/lighthouse_2.ode",				true,		519,		519,		520,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	11,					"assets/models/buildings/windmill_1.ode",				true,		521,		521,		522,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	12,					"assets/models/buildings/windmill_2.ode",				true,		523,		523,		524,			DEFAULT_DISABLE_DISTANCE,				1000.0,			500.0,				350.0		}
,   {	13,					"assets/models/buildings/hiddentower_1.ode",			false,		525,		525,		526,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	14,					"assets/models/buildings/towerblock_1.ode",				false,		527,		527,		528,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	15,					"assets/models/buildings/towerblock_2.ode",				false,		529,		529,		530,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	16,					"assets/models/buildings/towerblock_3.ode",				false,		531,		531,		532,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	17,					"assets/models/buildings/towerblock_4.ode",				false,		533,		533,		534,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	18,					"assets/models/buildings/towerblock_5.ode",				false,		535,		535,		536,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	19,					"assets/models/buildings/towerblock_6.ode",				false,		537,		537,		538,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	20,					"assets/models/buildings/towerblock_7.ode",				false,		539,		539,		540,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	21,					"assets/models/buildings/towerblock_8.ode",				false,		541,		541,		542,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	22,					"assets/models/buildings/towerblock_9.ode",				false,		543,		543,		544,			DEFAULT_DISABLE_DISTANCE,				1500.0,			1400.0,				1300.0		}
,   {	23,					"assets/models/buildings/aircrafthangar_1.ode",			true,		545,		545,		546,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}
,   {	24,					"assets/models/buildings/aircrafthangar_2.ode",			true,		547,		547,		548,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}
,   {	25,					"assets/models/buildings/bridge_1.ode",					false,		549,		549,		550,			DEFAULT_DISABLE_DISTANCE,				2000.0,			1900.0,				1800.0		}
,   {	26,					"assets/models/buildings/controltower_1.ode",			true,		551,		551,		552,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				600.0		}
,   {	27,					"assets/models/buildings/factory_1.ode",				true,		553,		553,		554,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}
,   {	28,					"assets/models/buildings/factory_2.ode",				true,		555,		555,		556,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}
,   {	29,					"assets/models/buildings/chimneystack_1.ode",			true,		557,		557,		558,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}
,   {	30,					"assets/models/buildings/chimneystack_2.ode",			true,		559,		559,		560,			DEFAULT_DISABLE_DISTANCE,				1000.0,			1000.0,				800.0		}

    -- props
,   {	200,                "assets/models/props/jumbojet_1.ode",					true,		900,		900,		901,			DEFAULT_DISABLE_DISTANCE,				1000.0,			800.0,				500.0		}
,   {	201,                "assets/models/props/turbine_1.ode",					true,		902,		902,		903,			DEFAULT_DISABLE_DISTANCE,				1000.0,			800.0,				500.0		}
,   {	202,                "assets/models/props/haybale_1.ode",                    false,		904,		904,		905,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	203,                "assets/models/props/hotairballoon_1.ode",              false,		906,		907,		907,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}

    -- special props
,   {	9200,                "assets/models/props_special/p84_helicopter_1.ode",            false,		9900,		9900,		9901,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9201,                "assets/models/props_special/cabby_boatwreck_1.ode",           false,		9902,		9902,		9903,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9202,                "assets/models/props_special/cabby_blackcab_1.ode",            false,		9905,		9905,		9905,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9203,                "assets/models/props_special/cabby_yellowcab_1.ode",           false,		9907,		9907,		9907,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9204,                "assets/models/props_special/demo_ufo_1.ode",                  false,		9909,		9909,		9909,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9205,                "assets/models/props_special/p84_spider_1.ode",                false,		9911,		9911,		9911,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9206,                "assets/models/props_special/p84_figurine_1.ode",              false,		9913,		9913,		9913,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9207,                "assets/models/props_special/p84_figurine_2.ode",              false,		9915,		9915,		9915,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}
,   {	9208,                "assets/models/props_special/p84_figurine_3.ode",              false,		9917,		9917,		9917,			DEFAULT_DISABLE_DISTANCE,				1000.0,			600.0,				500.0		}

    -- targets
,   {	300,                "assets/models/targets/target_balloon.ode",             true,		300,		300,		300,			DEFAULT_DISABLE_DISTANCE,				2000.0,			1500.0,				1000.0		}
,   {	301,                "assets/models/targets/target_circle.ode",              true,		302,		302,		302,			DEFAULT_DISABLE_DISTANCE,				2000.0,			1500.0,				1000.0		}
,   {	302,                "assets/models/targets/target_crate.ode",               true,		304,		304,		304,			DEFAULT_DISABLE_DISTANCE,				2000.0,			1500.0,				1000.0		}

}

function RegisterObjectResources()

	return resourceList;

end


