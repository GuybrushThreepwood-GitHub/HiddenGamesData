
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

magFilterUI = GL_NEAREST
minFilterUI = GL_NEAREST

local resourceList = 
{
	-- id					filename											definition file				magFilter					minFilter
	
	-- RESERVED
--	{	-1,					"",													"",							magFilterNormal,			minFilterNormal 		} 
	-- RESERVED

-- Taxis
	{	1,					"assets/models/vehicles/yellowcab.hgm",				"",							magFilterNormal,			minFilterNormal 		} 
,	{	2,					"assets/models/vehicles/blackcab.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	3,					"assets/models/vehicles/towtruck.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	4,					"assets/models/vehicles/deliveryvan.hgm",			"",							magFilterNormal,			minFilterNormal 		}   
,	{	5,					"assets/models/vehicles/hotrod.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	6,					"assets/models/vehicles/londbotus.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	7,					"assets/models/vehicles/teamavan.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	8,					"assets/models/vehicles/ghoulhunter.hgm",			"",							magFilterNormal,			minFilterNormal 		}   
,	{	9,					"assets/models/vehicles/spinner.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	10,					"assets/models/vehicles/ledorean.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	11,					"assets/models/vehicles/plonkermobile.hgm",			"",							magFilterNormal,			minFilterNormal 		}   
,	{	12,					"assets/models/vehicles/flyingbeetle.hgm",			"",							magFilterNormal,			minFilterNormal 		}   
,	{	13,					"assets/models/vehicles/whodunitmachine.hgm",		"",							magFilterNormal,			minFilterNormal 		}   
,	{	14,					"assets/models/vehicles/policebox.hgm",				"",							magFilterNormal,			minFilterNormal 		}   
,	{	15,					"assets/models/vehicles/thehomie.hgm",				"",							magFilterNormal,			minFilterNormal 		}   

-- Doors
,	{	100,				"assets/models/obstacles/door_slidedown.hgm",       "",							GL_NEAREST,			GL_NEAREST 		} 
,	{	101,				"assets/models/obstacles/door_slideleft.hgm",       "",							GL_NEAREST,			GL_NEAREST 		} 
,	{	102,				"assets/models/obstacles/door_slideright.hgm",		"",							GL_NEAREST,			GL_NEAREST 		} 
,	{	103,				"assets/models/obstacles/door_slideup.hgm",			"",							GL_NEAREST,			GL_NEAREST 		} 

-- Enemies
,	{	104,				"assets/models/enemies/fish.hgm",                   "",							magFilterNormal,			minFilterNormal 		} 
,	{	105,				"assets/models/enemies/mine.hgm",                   "",							magFilterNormal,			minFilterNormal 		} 
,	{	106,				"assets/models/enemies/sentry.hgm",			        "",							magFilterNormal,			minFilterNormal 		} 

-- Fuel Ports
,	{	107,				"assets/models/ports/fuel_single.hgm",				"",							GL_NEAREST,			GL_NEAREST 		}
,	{	108,				"assets/models/ports/fuel_double.hgm",				"",							GL_NEAREST,			GL_NEAREST 		}
,	{	109,				"assets/models/ports/fuel_triple.hgm",				"",							GL_NEAREST,			GL_NEAREST 		}

-- Home Ports (temporary)
,	{	112,				"assets/models/ports/home_double.hgm",          	"",							GL_NEAREST,					GL_NEAREST 		} 
--,	{	110,				"assets/models/ports/home_x1.hgm",					"",							magFilterNormal,			minFilterNormal 		} 
--,	{	111,				"assets/models/ports/home_x2.hgm",					"",							magFilterNormal,			minFilterNormal 		} 
--,	{	112,				"assets/models/ports/home_x3.hgm",					"",							magFilterNormal,			minFilterNormal 		} 

-- Taxistop Ports
,	{	113,				"assets/models/ports/taxistop_single.hgm",          "",							GL_NEAREST,			GL_NEAREST 		}
,	{	114,				"assets/models/ports/taxistop_double.hgm",          "",							GL_NEAREST,			GL_NEAREST 		}
,	{	115,				"assets/models/ports/taxistop_triple.hgm",          "",							GL_NEAREST,			GL_NEAREST 		}

-- Obstacles
,	{	116,				"assets/models/obstacles/shape_h.hgm",				"",							GL_NEAREST,			GL_NEAREST 		} 
--,	{	117,				"assets/models/obstacles/shape_i.hgm",				"",							magFilterNormal,			minFilterNormal 		} 
--,	{	118,				"assets/models/obstacles/shape_u.hgm",				"",							magFilterNormal,			minFilterNormal 		} 
--,	{	119,				"assets/models/obstacles/shape_x.hgm",				"",							magFilterNormal,			minFilterNormal 		} 
,	{	120,				"assets/models/obstacles/shape_y.hgm",				"",							GL_NEAREST,			GL_NEAREST 		} 

-- pickups
,	{	140,				"assets/models/pickups/star.hgm",					"",							magFilterNormal,			minFilterNormal 		} 

-- objects
,	{	150,				"assets/models/objects/qmark.hgm",					"",							magFilterNormal,			minFilterNormal 		} 
,	{	151,				"assets/models/objects/restorepurchases.hgm",		"",							magFilterNormal,			minFilterNormal 		} 
,	{	152,				"assets/models/objects/levelpack.hgm",				"",							magFilterNormal,			minFilterNormal 		} 

-- UI
,	{	1000,				"assets/models/ui/titlescreen.hgm",					"",							magFilterUI,				minFilterUI 		}   
,	{	1001,				"assets/models/ui/frontend_itemselect.hgm",			"",							magFilterUI,				minFilterUI 		}   
,	{	1002,				"assets/models/ui/frontend_prompts.hgm",			"",							magFilterUI,				minFilterUI 		}  	
,	{	1003,				"assets/models/ui/frontend.hgm",					"",							magFilterUI,				minFilterUI 		}  
,	{	1004,				"assets/models/ui/level_start.hgm",					"",							magFilterUI,				minFilterUI 		}  
,	{	1005,				"assets/models/ui/gameover_arcade.hgm",				"",							magFilterUI,				minFilterUI 		}  
,	{	1006,				"assets/models/ui/gameover_career.hgm",				"",							magFilterUI,				minFilterUI 		}  
,	{	1007,				"assets/models/ui/gameover_career_continue.hgm",	"",							magFilterUI,				minFilterUI 		}  
,	{	1008,				"assets/models/ui/pause.hgm",						"",							magFilterUI,				minFilterUI 		} 
,	{	1009,				"assets/models/ui/timeup.hgm",						"",							magFilterUI,				minFilterUI 		} 
,	{	1010,				"assets/models/ui/hud.hgm",							"",							magFilterUI,				minFilterUI 		} 
,	{	1011,				"assets/models/ui/level_complete_career.hgm",		"",							magFilterUI,				minFilterUI 		} 
,	{	1012,				"assets/models/ui/level_complete_arcade.hgm",		"",							magFilterUI,				minFilterUI 		} 
,	{	1013,				"assets/models/ui/game_complete.hgm",				"",							magFilterUI,				minFilterUI 		} 
,	{	1014,				"assets/models/ui/achievement_popup.hgm",			"",							magFilterUI,				minFilterUI 		} 
,	{	1015,				"assets/models/ui/frontend_inapppurchase.hgm",		"",							magFilterUI,				minFilterUI 		} 

,	{	2000,				"assets/models/ui/controls_phone_sd.hgm",			"",							magFilterUI,				minFilterUI 		} 
,	{	2001,				"assets/models/ui/controls_tablet_sd.hgm",			"",							magFilterUI,				minFilterUI 		} 

,	{	2002,				"assets/models/ui/icons_phone_sd.hgm",				"",							magFilterUI,				minFilterUI 		} 
,	{	2003,				"assets/models/ui/icons_tablet_sd.hgm",				"",							magFilterUI,				minFilterUI 		} 

,	{	2004,				"assets/models/ui/controls_phone_retina.hgm",		"",							magFilterUI,				minFilterUI 		} 
,	{	2005,				"assets/models/ui/icons_phone_retina.hgm",			"",							magFilterUI,				minFilterUI 		} 

,	{	2006,				"assets/models/ui/controls_tablet_retina.hgm",		"",							magFilterUI,				minFilterUI 		} 

-- levels models
,	{	10000,				"assets/levels/1_1_easydoesit/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10001,				"assets/levels/1_2_crossroadconfusion/level.hgm",	"",							magFilterNormal,			minFilterNormal 	} 
,	{	10002,				"assets/levels/1_3_shortcircuit/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10003,				"assets/levels/1_4_kamikaze/level.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	10004,				"assets/levels/1_5_asteroids/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10005,				"assets/levels/2_1_skycaperscraper/level.hgm",		"",							GL_NEAREST,					GL_NEAREST 	} 
,	{	10006,				"assets/levels/2_2_awellofatime/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10007,				"assets/levels/2_3_spacecamp/level.hgm",			"",							GL_NEAREST,					GL_NEAREST 	} 
,	{	10008,				"assets/levels/2_4_hiddencave/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10009,				"assets/levels/2_5_breathin/level.hgm",				"",							GL_NEAREST,					GL_NEAREST 	} 
,	{	10010,				"assets/levels/3_1_snaaaake/level.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	10011,				"assets/levels/3_2_ghostship/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10012,				"assets/levels/3_3_meteorshower/level.hgm",			"",							GL_NEAREST,					GL_NEAREST 	} 
,	{	10013,				"assets/levels/3_4_elephantdip/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10014,				"assets/levels/3_5_dangercove/level.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	10015,				"assets/levels/4_1_dogseyeschief/level.hgm",		"",							magFilterNormal,			minFilterNormal 	} 
,	{	10016,				"assets/levels/special_ending/level.hgm",           "",							magFilterNormal,			minFilterNormal 	} 

-- levels bg
,	{	20000,				"assets/levels/1_1_easydoesit/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20001,				"assets/levels/1_2_crossroadconfusion/bg.hgm",		"",							magFilterNormal,			minFilterNormal 	} 
,	{	20002,				"assets/levels/1_3_shortcircuit/bg.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	20003,				"assets/levels/1_4_kamikaze/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20004,				"assets/levels/1_5_asteroids/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20005,				"assets/levels/2_1_skycaperscraper/bg.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	20006,				"assets/levels/2_2_awellofatime/bg.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
--,	{	20007,				"assets/levels/2_3_spacecamp/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20008,				"assets/levels/2_4_hiddencave/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20009,				"assets/levels/2_5_breathin/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20010,				"assets/levels/3_1_snaaaake/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20011,				"assets/levels/3_2_ghostship/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20012,				"assets/levels/3_3_meteorshower/bg.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	20013,				"assets/levels/3_4_elephantdip/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	} 
,	{	20014,				"assets/levels/3_5_dangercove/bg.hgm",				"",							magFilterNormal,			minFilterNormal 	}
,	{	20015,				"assets/levels/4_1_dogseyeschief/bg.hgm",			"",							magFilterNormal,			minFilterNormal 	} 
,	{	20016,				"assets/levels/special_ending/bg.hgm",              "",							magFilterNormal,			minFilterNormal 	} 

-- levels fg (world edge)
,	{	30000,				"assets/levels/1_1_easydoesit/fg.hgm",				"assets/levels/1_1_easydoesit/tanims.lua",							magFilterNormal,			minFilterNormal 	} 
,	{	30001,				"assets/levels/1_2_crossroadconfusion/fg.hgm",		"assets/levels/1_2_crossroadconfusion/tanims.lua",					magFilterNormal,			minFilterNormal 	} 
--,	{	30002,				"assets/levels/1_3_shortcircuit/fg.hgm",			"",																	magFilterNormal,			minFilterNormal 	} 
,	{	30003,				"assets/levels/1_4_kamikaze/fg.hgm",				"assets/levels/1_4_kamikaze/tanims.lua",							magFilterNormal,			minFilterNormal 	} 
,	{	30004,				"assets/levels/1_5_asteroids/fg.hgm",				"assets/levels/1_5_asteroids/tanims.lua",							magFilterNormal,			minFilterNormal 	} 
,	{	30005,				"assets/levels/2_1_skycaperscraper/fg.hgm",			"assets/levels/2_1_skycaperscraper/tanims.lua",						magFilterNormal,			minFilterNormal 	} 
,	{	30006,				"assets/levels/2_2_awellofatime/fg.hgm",			"assets/levels/2_2_awellofatime/tanims.lua",						magFilterNormal,			minFilterNormal 	} 
--,	{	30007,				"assets/levels/2_3_spacecamp/fg.hgm",				"",																	magFilterNormal,			minFilterNormal 	} 
--,	{	30008,				"assets/levels/2_4_hiddencave/fg.hgm",				"",																	magFilterNormal,			minFilterNormal 	} 
--,	{	30009,				"assets/levels/2_5_breathin/fg.hgm",				"",																	magFilterNormal,			minFilterNormal 	} 
--,	{	30010,				"assets/levels/3_1_snaaaake/fg.hgm",				"",																	magFilterNormal,			minFilterNormal 	} 
,	{	30011,				"assets/levels/3_2_ghostship/fg.hgm",				"assets/levels/3_2_ghostship/tanims.lua",							magFilterNormal,			minFilterNormal 	} 
,	{	30012,				"assets/levels/3_3_meteorshower/fg.hgm",			"assets/levels/3_3_meteorshower/tanims.lua",						magFilterNormal,			minFilterNormal 	} 
,	{	30013,				"assets/levels/3_4_elephantdip/fg.hgm",				"assets/levels/3_4_elephantdip/tanims.lua",							magFilterNormal,			minFilterNormal 	} 
,	{	30014,				"assets/levels/3_5_dangercove/fg.hgm",				"assets/levels/3_5_dangercove/tanims.lua",							magFilterNormal,			minFilterNormal 	}
,	{	30015,				"assets/levels/4_1_dogseyeschief/fg.hgm",			"assets/levels/4_1_dogseyeschief/tanims.lua",						magFilterNormal,			minFilterNormal 	}
--,	{	30016,				"assets/levels/special_ending/fg.hgm",              "",                                                                 magFilterNormal,			minFilterNormal 	}

}

function RegisterModelResources()

	return resourceList;

end


