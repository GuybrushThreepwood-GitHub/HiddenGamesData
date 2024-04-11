
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- filenames and filters can be changed to anything at anytime

-- ### MAG FILTERS ###
-- GL_NEAREST
-- GL_LINEAR

-- ### MIN FILTERS ###
-- GL_NEAREST (doesn't use mipmaps)
-- GL_LINEAR (doesn't use mipmaps)
-- GL_NEAREST_MIPMAP_NEAREST
-- GL_NEAREST_MIPMAP_LINEAR
-- GL_LINEAR_MIPMAP_NEAREST
-- GL_LINEAR_MIPMAP_LINEAR

magFilterNormal = GL_LINEAR
minFilterNormal = GL_LINEAR

magFilterTerrain = GL_LINEAR
minFilterTerrain = GL_LINEAR

magFilterUI = GL_NEAREST
minFilterUI = GL_NEAREST

local resourceList = 
{
	-- id					filename											definition file				magFilter					minFilter
	
	-- RESERVED
--	{	-1,					"",													"",							magFilterNormal,			minFilterNormal 		} 
	-- RESERVED

-- Plane (Cloudwalker)
	{	0,					"assets/models/aircraft/biplane_cloudwalker.hgm",	"",							magFilterNormal,			minFilterNormal 		}
,	{	1,					"assets/models/aircraft/biplane_cloudwalker_rudder.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	2,					"assets/models/aircraft/biplane_cloudwalker_tail_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	3,					"assets/models/aircraft/biplane_cloudwalker_tail_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	4,					"assets/models/aircraft/biplane_cloudwalker_wing_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	5,					"assets/models/aircraft/biplane_cloudwalker_wing_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	6,					"assets/models/aircraft/biplane_cloudwalker_shadow.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	7,					"assets/models/aircraft/biplane_cloudwalker_ui.hgm",	"",						magFilterNormal,			minFilterNormal 		}

-- Plane (Sirocco)
,	{	20,					"assets/models/aircraft/monoplane_sirocco.hgm",	"",							magFilterNormal,			minFilterNormal 		}
,	{	21,					"assets/models/aircraft/monoplane_sirocco_rudder.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	22,					"assets/models/aircraft/monoplane_sirocco_tail_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	23,					"assets/models/aircraft/monoplane_sirocco_tail_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	24,					"assets/models/aircraft/monoplane_sirocco_wing_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	25,					"assets/models/aircraft/monoplane_sirocco_wing_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	26,					"assets/models/aircraft/monoplane_sirocco_shadow.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	27,					"assets/models/aircraft/monoplane_sirocco_ui.hgm",	"",						magFilterNormal,			minFilterNormal 		}

-- Plane (Seapig)
,	{	40,					"assets/models/aircraft/seaplane_seapig.hgm",	"",							magFilterNormal,			minFilterNormal 		}
,	{	41,					"assets/models/aircraft/seaplane_seapig_rudder.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	42,					"assets/models/aircraft/seaplane_seapig_tail_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	43,					"assets/models/aircraft/seaplane_seapig_tail_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	44,					"assets/models/aircraft/seaplane_seapig_wing_left_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	45,					"assets/models/aircraft/seaplane_seapig_wing_right_flap.hgm",	"",			magFilterNormal,			minFilterNormal 		}
,	{	46,					"assets/models/aircraft/seaplane_seapig_shadow.hgm",	"",					magFilterNormal,			minFilterNormal 		}
,	{	47,					"assets/models/aircraft/seaplane_seapig_ui.hgm",	"",						magFilterNormal,			minFilterNormal 		}

-- Plane (generic parts)
,	{	90,					"assets/models/aircraft/propeller.hgm",	"",                                 magFilterNormal,			minFilterNormal 		}
,	{	91,					"assets/models/aircraft/muzzleflash.hgm",	"",                             magFilterNormal,			minFilterNormal 		}

 -- skybox
,	{	100,				"assets/models/skies/skyglobe.hgm",                	"",							magFilterNormal,			minFilterNormal 		} 
  
-- fx
,	{	140,				"assets/models/fx/tracerbullet.hgm",                "",						magFilterNormal,			minFilterNormal 		}
,	{	141,				"assets/models/fx/worldedge.hgm",                "assets/models/fx/worldedge_anims.lua",						magFilterUI,                minFilterUI 		}

-- objects (gates)
,	{	200,				"assets/models/gates/gate_timeattack_normal_hi.hgm", "assets/models/gates/gate_timeattack_normal_anims.lua",		magFilterNormal,			minFilterNormal 		}
,	{	201,				"assets/models/gates/gate_timeattack_startfinish_hi.hgm", "assets/models/gates/gate_timeattack_startfinish_anims.lua",		magFilterNormal,			minFilterNormal 		}
-- objects (targets)
,	{	300,				"assets/models/targets/target_balloon_hi.hgm",    "",							magFilterNormal,			minFilterNormal 		}
,	{	302,				"assets/models/targets/target_circle_hi.hgm",    "",							magFilterNormal,			minFilterNormal 		}
,	{	304,				"assets/models/targets/target_crate_hi.hgm",    "",							magFilterNormal,			minFilterNormal 		}
-- objects (collectables)
,	{	400,				"assets/models/collectables/collectable_star.hgm",           "",         magFilterNormal,			minFilterNormal 		}
,	{	401,				"assets/models/collectables/collectable_hiddentoken.hgm",    "",         magFilterNormal,			minFilterNormal 		}
,	{	410,				"assets/models/collectables/collectable_cc_taku_hi.hgm",        "",         magFilterNormal,			minFilterNormal 		}
,	{	411,				"assets/models/collectables/collectable_cc_mei_hi.hgm",			"",         magFilterNormal,			minFilterNormal 		}
,	{	412,				"assets/models/collectables/collectable_cc_earl_hi.hgm",        "",         magFilterNormal,			minFilterNormal 		}
,	{	413,				"assets/models/collectables/collectable_cc_fio_hi.hgm",			"",         magFilterNormal,			minFilterNormal 		}
,	{	414,				"assets/models/collectables/collectable_cc_mito_hi.hgm",        "",         magFilterNormal,			minFilterNormal 		}
,	{	415,				"assets/models/collectables/collectable_cc_uki_hi.hgm",			"",         magFilterNormal,			minFilterNormal 		}

-- buildings
,	{	500,				"assets/models/buildings/building_test_1.hgm",	"",		magFilterNormal,			minFilterNormal 		}
,	{	501,				"assets/models/buildings/barn_1_lo.hgm",        "",		magFilterNormal,			minFilterNormal 		}
,	{	502,				"assets/models/buildings/barn_1_hi.hgm",        "",		magFilterNormal,			minFilterNormal 		}
,	{	503,				"assets/models/buildings/church_1_lo.hgm",      "",		magFilterNormal,			minFilterNormal 		}
,	{	504,				"assets/models/buildings/church_1_hi.hgm",      "",		magFilterNormal,			minFilterNormal 		}
,	{	505,				"assets/models/buildings/house_1_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	506,				"assets/models/buildings/house_1_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	507,				"assets/models/buildings/house_2_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	508,				"assets/models/buildings/house_2_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	509,				"assets/models/buildings/house_3_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	510,				"assets/models/buildings/house_3_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	511,				"assets/models/buildings/house_4_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	512,				"assets/models/buildings/house_4_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	513,				"assets/models/buildings/house_5_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	514,				"assets/models/buildings/house_5_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	515,				"assets/models/buildings/house_6_lo.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	516,				"assets/models/buildings/house_6_hi.hgm",       "",		magFilterNormal,			minFilterNormal 		}
,	{	517,				"assets/models/buildings/lighthouse_1_lo.hgm",  "",		magFilterNormal,			minFilterNormal 		}
,	{	518,				"assets/models/buildings/lighthouse_1_hi.hgm",  "",		magFilterNormal,			minFilterNormal 		}
,	{	519,				"assets/models/buildings/lighthouse_2_lo.hgm",  "",		magFilterNormal,			minFilterNormal 		}
,	{	520,				"assets/models/buildings/lighthouse_2_hi.hgm",  "",		magFilterNormal,			minFilterNormal 		}
,	{	521,				"assets/models/buildings/windmill_1_lo.hgm",    "",		magFilterNormal,			minFilterNormal 		}
,	{	522,				"assets/models/buildings/windmill_1_hi.hgm",    "",		magFilterNormal,			minFilterNormal 		}
,	{	523,				"assets/models/buildings/windmill_2_lo.hgm",    "",		magFilterNormal,			minFilterNormal 		}
,	{	524,				"assets/models/buildings/windmill_2_hi.hgm",    "",		magFilterNormal,			minFilterNormal 		}
,	{	525,				"assets/models/buildings/hiddentower_1_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	526,				"assets/models/buildings/hiddentower_1_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	527,				"assets/models/buildings/towerblock_1_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	528,				"assets/models/buildings/towerblock_1_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	529,				"assets/models/buildings/towerblock_2_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	530,				"assets/models/buildings/towerblock_2_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	531,				"assets/models/buildings/towerblock_3_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	532,				"assets/models/buildings/towerblock_3_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	533,				"assets/models/buildings/towerblock_4_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	534,				"assets/models/buildings/towerblock_4_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	535,				"assets/models/buildings/towerblock_5_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	536,				"assets/models/buildings/towerblock_5_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	537,				"assets/models/buildings/towerblock_6_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	538,				"assets/models/buildings/towerblock_6_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	539,				"assets/models/buildings/towerblock_7_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	540,				"assets/models/buildings/towerblock_7_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	541,				"assets/models/buildings/towerblock_8_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	542,				"assets/models/buildings/towerblock_8_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	543,				"assets/models/buildings/towerblock_9_lo.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	544,				"assets/models/buildings/towerblock_9_hi.hgm", "",		magFilterNormal,			minFilterNormal 		}
,	{	545,				"assets/models/buildings/aircrafthangar_1_lo.hgm", "",  magFilterNormal,			minFilterNormal 		}
,	{	546,				"assets/models/buildings/aircrafthangar_1_hi.hgm", "",  magFilterNormal,			minFilterNormal 		}
,	{	547,				"assets/models/buildings/aircrafthangar_2_lo.hgm", "",  magFilterNormal,			minFilterNormal 		}
,	{	548,				"assets/models/buildings/aircrafthangar_2_hi.hgm", "",  magFilterNormal,			minFilterNormal 		}
,	{	549,				"assets/models/buildings/bridge_1_lo.hgm", "",          magFilterNormal,			minFilterNormal 		}
,	{	550,				"assets/models/buildings/bridge_1_hi.hgm", "",          magFilterNormal,			minFilterNormal 		}
,	{	551,				"assets/models/buildings/controltower_1_lo.hgm", "",    magFilterNormal,			minFilterNormal 		}
,	{	552,				"assets/models/buildings/controltower_1_hi.hgm", "",    magFilterNormal,			minFilterNormal 		}
,	{	553,				"assets/models/buildings/factory_1_lo.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	554,				"assets/models/buildings/factory_1_hi.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	555,				"assets/models/buildings/factory_2_lo.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	556,				"assets/models/buildings/factory_2_hi.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	557,				"assets/models/buildings/chimneystack_1_lo.hgm", "",    magFilterNormal,			minFilterNormal 		}
,	{	558,				"assets/models/buildings/chimneystack_1_hi.hgm", "",    magFilterNormal,			minFilterNormal 		}
,	{	559,				"assets/models/buildings/chimneystack_2_lo.hgm", "",    magFilterNormal,			minFilterNormal 		}
,	{	560,				"assets/models/buildings/chimneystack_2_hi.hgm", "",    magFilterNormal,			minFilterNormal 		}

-- props
,	{	900,				"assets/models/props/jumbojet_1_lo.hgm", "",            magFilterNormal,			minFilterNormal 		}
,	{	901,				"assets/models/props/jumbojet_1_hi.hgm", "",            magFilterNormal,			minFilterNormal 		}
,	{	902,				"assets/models/props/turbine_1_lo.hgm", "",             magFilterNormal,			minFilterNormal 		}
,	{	903,				"assets/models/props/turbine_1_hi.hgm", "",             magFilterNormal,			minFilterNormal 		}
,	{	904,				"assets/models/props/haybale_1_lo.hgm", "",             magFilterNormal,			minFilterNormal 		}
,	{	905,				"assets/models/props/haybale_1_hi.hgm", "",             magFilterNormal,			minFilterNormal 		}
,	{	906,				"assets/models/props/hotairballoon_1_lo.hgm", "",       magFilterNormal,			minFilterNormal 		}
,	{	907,				"assets/models/props/hotairballoon_1_hi.hgm", "",       magFilterNormal,			minFilterNormal 		}

-- special props
,	{	9900,				"assets/models/props_special/p84_helicopter_1_lo.hgm", "",          magFilterNormal,			minFilterNormal 		}
,	{	9901,				"assets/models/props_special/p84_helicopter_1_hi.hgm", "",          magFilterNormal,			minFilterNormal 		}
,	{	9902,				"assets/models/props_special/cabby_boatwreck_1_lo.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	9903,				"assets/models/props_special/cabby_boatwreck_1_hi.hgm", "",         magFilterNormal,			minFilterNormal 		}
--,	{	9904,				"assets/models/props_special/cabby_blackcab_1_lo.hgm", "",          magFilterNormal,			minFilterNormal 		}
,	{	9905,				"assets/models/props_special/cabby_blackcab_1_hi.hgm", "",          magFilterNormal,			minFilterNormal 		}
--,	{	9906,				"assets/models/props_special/cabby_yellowcab_1_lo.hgm", "",         magFilterNormal,			minFilterNormal 		}
,	{	9907,				"assets/models/props_special/cabby_yellowcab_1_hi.hgm", "",         magFilterNormal,			minFilterNormal 		}
--,	{	9908,				"assets/models/props_special/demo_ufo_1_lo.hgm", "",                magFilterNormal,			minFilterNormal 		}
,	{	9909,				"assets/models/props_special/demo_ufo_1_hi.hgm", "",                magFilterNormal,			minFilterNormal 		}
--,	{	9910,				"assets/models/props_special/p84_spider_1_lo.hgm", "",              magFilterNormal,			minFilterNormal 		}
,	{	9911,				"assets/models/props_special/p84_spider_1_hi.hgm", "",              magFilterNormal,			minFilterNormal 		}
--,	{	9912,				"assets/models/props_special/p84_figurine_1_lo.hgm", "",              magFilterNormal,			minFilterNormal 		}
,	{	9913,				"assets/models/props_special/p84_figurine_1_hi.hgm", "",              magFilterNormal,			minFilterNormal 		}
--,	{	9914,				"assets/models/props_special/p84_figurine_2_lo.hgm", "",              magFilterNormal,			minFilterNormal 		}
,	{	9915,				"assets/models/props_special/p84_figurine_2_hi.hgm", "",              magFilterNormal,			minFilterNormal 		}
--,	{	9916,				"assets/models/props_special/p84_figurine_3_lo.hgm", "",              magFilterNormal,			minFilterNormal 		}
,	{	9917,				"assets/models/props_special/p84_figurine_3_hi.hgm", "",              magFilterNormal,			minFilterNormal 		}

-- UI 
,	{	1000,				"assets/models/ui/frontend_aircraftselect.hgm",		"",							magFilterUI,				minFilterUI 		}   
,	{	1001,				"assets/models/ui/frontend_levelselect.hgm",		"",							magFilterUI,				minFilterUI 		}    	
,	{	1002,				"assets/models/ui/frontend_mainmenu.hgm",			"",							magFilterUI,				minFilterUI 		}
,	{	1003,				"assets/models/ui/frontend_titlescreen.hgm",		"",							magFilterUI,				minFilterUI 		}  
,	{	1005,				"assets/models/ui/ingame_levelcomplete.hgm",		"",							magFilterUI,				minFilterUI 		}  
,	{	1006,				"assets/models/ui/ingame_levelstart.hgm",			"",							magFilterUI,				minFilterUI 		} 
,	{	1007,				"assets/models/ui/ingame_paused.hgm",				"",							magFilterUI,				minFilterUI 		} 
,	{	1008,				"assets/models/ui/achievement_popup.hgm",			"",							magFilterUI,				minFilterUI 		} 

,	{	2001,				"assets/models/ui/controls_tablet_sd.hgm",			"",							magFilterUI,				minFilterUI 		} 

,	{	2003,				"assets/models/ui/icons_tablet_sd.hgm",				"",							magFilterUI,				minFilterUI 		} 

,	{	2006,				"assets/models/ui/controls_tablet_retina.hgm",		"",							magFilterUI,				minFilterUI 		} 

-- map models (final)
,	{	20001,				"assets/levels/1/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20002,				"assets/levels/2/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20003,				"assets/levels/3/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20004,				"assets/levels/4/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20005,				"assets/levels/5/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain	}
,	{	20006,				"assets/levels/6/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20007,				"assets/levels/7/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}
,	{	20008,				"assets/levels/8/tmesh.hgm",                        "",							magFilterTerrain,			minFilterTerrain 	}

}

function RegisterModelResources()

	return resourceList;

end


