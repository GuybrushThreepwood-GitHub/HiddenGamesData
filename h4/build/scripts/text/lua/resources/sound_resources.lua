
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								sound filename	

    {	1,								"wav/world_windext.wav"					}
   ,{	2,								"wav/world_lightbuzz.wav"				}
   
   ,{	10,								"wav/door_opensmall.wav"				}
   ,{	11,								"wav/door_closesmall.wav"				}
   ,{	12,								"wav/door_openlarge.wav"				}
   ,{	13,								"wav/door_closelarge.wav"				}
   ,{	14,								"wav/door_openelevator.wav"				}
   ,{	15,								"wav/door_closeelevator.wav"			}
   ,{	16,								"wav/door_openlocker.wav"				}
   ,{	17,								"wav/door_squeakopen.wav"				}
   
   ,{	20,								"wav/world_voiceecho.wav"				}
   ,{	21,								"wav/world_machineloop.wav"				}
   ,{	22,								"wav/world_lightbuzz2.wav"				}
   ,{	23,								"wav/world_ventfan.wav"					}
   ,{	24,								"wav/world_windint.wav"					}
   ,{	25,								"wav/world_computerext.wav"				}
   ,{	26,								"wav/world_liftloop.wav"				}
  
   ,{	28,								"wav/world_metalstress.wav"				}
   ,{	29,								"wav/world_metalstress1.wav"			}
   ,{	30,								"wav/world_metalstress2.wav"			}
   ,{	31,								"wav/world_metalstress3.wav"			}
   ,{	32,								"wav/world_ambient.wav"					}
   ,{	33,								"wav/world_doorgeneric.wav"				}
   ,{	34,								"wav/world_waterdrips.wav"				}
   ,{	35,								"wav/world_ambient1.wav"				}
   ,{	36,								"wav/world_phonetone.wav"				}

   ,{	38,								"wav/world_spark.wav"					}
   ,{	39,								"wav/world_ambient2.wav"				}
   ,{	40,								"wav/world_ocean.wav"					}
   ,{	41,								"wav/world_forestloop.wav"				}
   ,{	42,								"wav/world_ammopickup.wav"				}
   ,{	43,								"wav/world_healthpickup.wav"			}
   ,{	44,								"wav/world_pickupdenied.wav"			}
   ,{	45,								"wav/world_cctvmove.wav"				}
   ,{	46,								"wav/world_ceilingfan.wav"				}
   ,{	47,								"wav/world_computeruse.wav"				}
   ,{	48,								"wav/world_snoring.wav"					}
   ,{	49,								"wav/world_brokendoor.wav"				}
   ,{	50,								"wav/world_keyboard.wav"				}
   ,{	51,								"wav/world_draweropenclose.wav"			}
   ,{	52,								"wav/world_filingcabinetopen.wav"		}

   ,{	60,								"wav/world_flies.wav"					}
   ,{	61,								"wav/world_watercooler.wav"				}
   ,{	62,								"wav/world_blooddrip.wav"				}
   ,{	63,								"wav/world_cryecho.wav"					}
   
   -- micro games
   ,{	100,							"wav/mg_keypad_button.wav"				}
   ,{	101,							"wav/mg_keypad_enter.wav"				}
   ,{	102,							"wav/mg_keypad_auto.wav"				}
   ,{	103,							"wav/mg_keypad_wrong.wav"				}
   
   ,{	110,							"wav/mg_cardswipe_unlock.wav"			} 
   ,{	111,							"wav/mg_cardswipe_error.wav"			} 
   
   ,{	120,							"wav/mg_sliderhold_tick.wav"			} 
  
   ,{	130,							"wav/mg_thumbscan_scanning.wav"			} 
   ,{	131,							"wav/mg_thumbscan_error.wav"			} 
   ,{	132,							"wav/mg_thumbscan_success.wav"			} 
	
	,{	140,							"wav/mg_keyunlock_keyclick.wav"			} 
	
	,{	150,							"wav/mg_watertightdoor_turn.wav"		} 
	
	,{	160,							"wav/mg_liftbuttons_pressactive.wav"	} 
	,{	161,							"wav/mg_liftbuttons_pressinactive.wav"	} 
	
	,{	170,							"wav/inv_pistol_equip.wav"				} 
	,{	171,							"wav/inv_shotgun_equip.wav"				} 
	,{	172,							"wav/inv_unequip.wav"					} 
	
	,{	180,							"wav/mg_wiring_success.wav"				}
	
	,{	190,							"wav/mg_docs_pageflip.wav"				}
	
   -- ui
    ,{	200,							"wav/ui_rank_breakdown.wav"				}
    ,{	201,							"wav/ui_intro_thunder.wav"				}
	
   -- enemies
   ,{	300,							"wav/enemy_zombiesight.wav"				}
   ,{	301,							"wav/enemy_zombieattackhit.wav"			}
   ,{	302,							"wav/enemy_zombieattackmiss.wav"		}
   ,{	303,							"wav/enemy_zombiedeathimpact.wav"		}
   
   ,{	310,							"wav/enemy_spiderdrop.wav"				}
   ,{	311,							"wav/enemy_spiderclimb.wav"				}
   ,{	312,							"wav/enemy_spiderdeath.wav"				}
   
   ,{	320,							"wav/enemy_antsattack.wav"				}

   ,{	330,							"wav/enemy_headscream.wav"				}
 
   -- player
   ,{	500,							"wav/player_pistolfire.wav"				}
   ,{	501,							"wav/player_shotgunfire.wav"			}
   ,{	502,							"wav/player_pistolreload.wav"			}
   ,{	503,							"wav/player_shotgunreload.wav"			}
   ,{	504,							"wav/player_pistolempty.wav"			}
   ,{	505,							"wav/player_shotgunempty.wav"			}
   ,{	506,							"wav/player_death.wav"					}
			
   ,{	520,							"wav/player_stepstone1.wav"				}
   ,{	521,							"wav/player_stepstone2.wav"				}
   ,{	522,							"wav/player_stepwet1.wav"				}
   ,{	523,							"wav/player_stepwet2.wav"				}    
   ,{	524,							"wav/player_stepgrate1.wav"				}
   ,{	525,							"wav/player_stepgrate2.wav"				} 
   ,{	526,							"wav/player_stepsnow1.wav"				}
   ,{	527,							"wav/player_stepsnow2.wav"				} 
   ,{	528,							"wav/player_stepgrass1.wav"				}
   ,{	529,							"wav/player_stepgrass2.wav"				} 
   ,{	530,							"wav/player_stepcarpet1.wav"			}
   ,{	531,							"wav/player_stepcarpet2.wav"			} 
   ,{	532,							"wav/player_stepflesh1.wav"				}
   ,{	533,							"wav/player_stepflesh2.wav"				}    
   ,{	534,							"wav/player_stepwaterwade1.wav"			}
   ,{	535,							"wav/player_stepwaterwade2.wav"			}   

-- achievement
   ,{	600,							"wav/achievement_popup.wav"				} 
 
}

function RegisterSoundResources()

	return resourceList;

end


