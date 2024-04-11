
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

local resourceList = 
{
	-- id								filename										magFilter					minFilter
	
	{	0,								"hgm/gib_small.hgm",							GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
   ,{	1,								"hgm/gib_large.hgm",							GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}	
   ,{	2,								"hgm/doors/smalldoor-1.hgm",					GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
   ,{	3,								"hgm/doors/largedoor-1.hgm",					GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
   ,{	4,								"hgm/doors/elevatordoors-1.hgm",				GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}   
   
   -- game/options UI 
   ,{	1002,							"hgm/ui/frontend.hgm",							GL_NEAREST,					GL_NEAREST 						}  
   ,{	1003,							"hgm/ui/optionsfront.hgm",						GL_NEAREST,					GL_NEAREST						}
   ,{	1004,							"hgm/ui/optionsgame.hgm",						GL_NEAREST,					GL_NEAREST						}
   ,{	1005,							"hgm/ui/hud_l.hgm",								GL_NEAREST,					GL_NEAREST						}
   ,{	1006,							"hgm/ui/hud_r.hgm",								GL_NEAREST,					GL_NEAREST						}
   ,{	1007,							"hgm/ui/loading.hgm",							GL_NEAREST,					GL_NEAREST						}
   ,{	1008,							"hgm/ui/gameover.hgm",							GL_NEAREST,					GL_NEAREST						}
   ,{	1009,							"hgm/ui/ending.hgm",							GL_NEAREST,					GL_NEAREST						}
   ,{	1010,							"hgm/ui/hud_l_tablet.hgm",						GL_NEAREST,					GL_NEAREST						}
   ,{	1011,							"hgm/ui/hud_r_tablet.hgm",						GL_NEAREST,					GL_NEAREST						}
   ,{	1012,							"hgm/ui/hud_l_retina.hgm",						GL_NEAREST,					GL_NEAREST						}
   ,{	1013,							"hgm/ui/hud_r_retina.hgm",						GL_NEAREST,					GL_NEAREST						}

   
   -- micro games UI
   ,{	2000,							"hgm/microgame/microgame_keypad.hgm",			GL_NEAREST,					GL_NEAREST 						}  
   ,{	2001,							"hgm/microgame/microgame_sliderhold.hgm",		GL_NEAREST,					GL_NEAREST 						}  
   ,{	2002,							"hgm/microgame/microgame_liftbuttons.hgm",		GL_NEAREST,					GL_NEAREST 						}  
   ,{	2003,							"hgm/microgame/microgame_wiring.hgm",			GL_NEAREST,					GL_NEAREST 						}  
   ,{	2004,							"hgm/microgame/microgame_dials.hgm",			GL_NEAREST,					GL_NEAREST 						}   
   ,{	2005,							"hgm/microgame/microgame_pickupitem.hgm",		GL_NEAREST,					GL_NEAREST 						}  
   ,{	2006,							"hgm/microgame/microgame_cardswipe.hgm",		GL_NEAREST,					GL_NEAREST 						}  
   ,{	2007,							"hgm/microgame/microgame_thumbscan.hgm",		GL_NEAREST,					GL_NEAREST 						} 
   ,{	2008,							"hgm/microgame/microgame_keylock.hgm",			GL_NEAREST,					GL_NEAREST 						}   
   ,{	2009,							"hgm/microgame/hiddendocs.hgm",					GL_NEAREST,					GL_NEAREST 						}   
   ,{	2010,							"hgm/microgame/microgame_watertightdoor.hgm",	GL_NEAREST,					GL_NEAREST 						}   
   ,{	2011,							"hgm/microgame/map.hgm",						GL_NEAREST,					GL_NEAREST 						}   
   ,{	2012,							"hgm/microgame/inventory.hgm",					GL_NEAREST,					GL_NEAREST 						}   
 
   -- extra
   ,{	5000,							"hgm/skybox/skybox-1.hgm",						GL_LINEAR,					GL_LINEAR 						}
   ,{	5001,							"hgm/skybox/skybox-2.hgm",						GL_LINEAR,					GL_LINEAR 						}
   ,{	5002,							"hgm/skybox/skybox-3.hgm",						GL_LINEAR,					GL_LINEAR 						}
   
    -- items
   ,{	6000,							"hgm/items/paper.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   ,{	6001,							"hgm/items/pistol.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   ,{	6002,							"hgm/items/severedhand.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6003,							"hgm/items/fusepacket.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6004,							"hgm/items/shotgun.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6005,							"hgm/items/lockerkey4.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6006,							"hgm/items/clipboard.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6007,							"hgm/items/criminaldocs.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6008,							"hgm/items/hiddentoken.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6009,							"hgm/items/dw80.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	6010,							"hgm/items/securitycard1.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6011,							"hgm/items/securitycard2.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6012,							"hgm/items/securitycard3.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6013,							"hgm/items/securitycard4.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6014,							"hgm/items/securitycard5.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	6015,							"hgm/items/key_blue.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6016,							"hgm/items/key_green.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6017,							"hgm/items/key_red.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6018,							"hgm/items/key_yellow.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	6019,							"hgm/items/mobilephone.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6020,							"hgm/items/flashlight.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	6021,							"hgm/items/clipboard-pilotslog.hgm",			GL_NEAREST,					GL_NEAREST				 		}
   ,{	6022,							"hgm/items/power-relay-unit.hgm",				GL_NEAREST,					GL_NEAREST				 		}
   ,{	6023,							"hgm/items/screwdriver.hgm",					GL_NEAREST,					GL_NEAREST				 		}
   ,{	6024,							"hgm/items/paper2.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	6025,							"hgm/items/disembodiedhead1.hgm",				GL_LINEAR,					GL_LINEAR				 		}
   ,{	6026,							"hgm/items/disembodiedhead2.hgm",				GL_LINEAR,					GL_LINEAR				 		}
   ,{	6027,							"hgm/items/disembodiedhead3.hgm",				GL_LINEAR,					GL_LINEAR				 		}
   ,{	6028,							"hgm/items/disembodiedhead4.hgm",				GL_LINEAR,					GL_LINEAR				 		}
   ,{	6029,							"hgm/items/disembodiedhead5.hgm",				GL_LINEAR,					GL_LINEAR				 		}
   
   ,{	6030,							"hgm/items/fuse.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   ,{	6031,							"hgm/items/rope.hgm",							GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	7000,							"hgm/items/costume1.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7001,							"hgm/items/costume2.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7002,							"hgm/items/costume3.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7003,							"hgm/items/costume4.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7004,							"hgm/items/costume5.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7005,							"hgm/items/costume6.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7006,							"hgm/items/costume7.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7007,							"hgm/items/costume8.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   ,{	7008,							"hgm/items/costume9.hgm",						GL_NEAREST,					GL_NEAREST				 		}
   
   ,{	9001,							"hgm-hi/items/pistol.hgm",						GL_LINEAR,					GL_LINEAR				 		} 
   ,{	9004,							"hgm-hi/items/shotgun.hgm",						GL_LINEAR,					GL_LINEAR				 		}
   
   ,{	9025,							"hgm-hi/items/disembodiedhead1.hgm",						GL_LINEAR,					GL_LINEAR			} 
   ,{	9026,							"hgm-hi/items/disembodiedhead2.hgm",						GL_LINEAR,					GL_LINEAR			}   
   ,{	9027,							"hgm-hi/items/disembodiedhead3.hgm",						GL_LINEAR,					GL_LINEAR			}   
   ,{	9028,							"hgm-hi/items/disembodiedhead4.hgm",						GL_LINEAR,					GL_LINEAR			}   
   ,{	9029,							"hgm-hi/items/disembodiedhead5.hgm",						GL_LINEAR,					GL_LINEAR			}      
}

function RegisterModelResources()

	return resourceList;

end


