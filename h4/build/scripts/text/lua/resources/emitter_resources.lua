
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								emitter filename									setup function
	{	0,								"lua/emitters/snowstorm.lua",						"snowstorm_Emitter"							}
   ,{	1,								"lua/emitters/smoke.lua",							"smoke_Emitter"								}
   ,{	2,								"lua/emitters/redpulse.lua",						"redpulse_Emitter"							}
   ,{	3,								"lua/emitters/wind.lua",							"wind_Emitter"								}
   ,{	4,								"lua/emitters/flysmall.lua",						"flysmall_Emitter"							}
   ,{	5,								"lua/emitters/keypadpulse_enabled.lua",				"keypadpulseenabled_Emitter"				}
   ,{	6,								"lua/emitters/singledrip.lua",						"singledrip_Emitter"						}
   ,{	7,								"lua/emitters/multidrip.lua",						"multidrip_Emitter"							}
   ,{	8,								"lua/emitters/sparksdown.lua",						"sparksdown_Emitter"						}
   ,{	9,								"lua/emitters/keypadpulse_disabled.lua",			"keypadpulsedisabled_Emitter"				}
   ,{	10,								"lua/emitters/sparksalldirections.lua",				"sparksalldirections_Emitter"				}
   ,{	11,								"lua/emitters/snow.lua",							"snow_Emitter"								}
   ,{	12,								"lua/emitters/vapour.lua",							"vapour_Emitter"							}
   ,{	13,								"lua/emitters/aircraftwarninglight_redpulse.lua",	"aircraftwarninglightredpulse_Emitter"		}
   ,{	14,								"lua/emitters/aircraftwarninglight_whitepulse.lua",	"aircraftwarninglightwhitepulse_Emitter"	}
   ,{	15,								"lua/emitters/fire.lua",							"fire_Emitter"								}
   ,{	16,								"lua/emitters/fire_smoke.lua",						"firesmoke_Emitter"							}
   ,{	17,								"lua/emitters/white_smoke.lua",						"whitesmokex_Emitter"						}
   ,{	18,								"lua/emitters/white_smoke.lua",						"whitesmokez_Emitter"						}
   ,{	19,								"lua/emitters/rain.lua",							"rain_Emitter"								}
   ,{	20,								"lua/emitters/helipad_orangepulse.lua",				"helipadorangepulse_Emitter"				}
   ,{	21,								"lua/emitters/wind.lua",							"windZaxis_Emitter"							}
   ,{	22,								"lua/emitters/extspotlight.lua",					"extspotlight_Emitter"						}
   ,{	23,								"lua/emitters/flyingants.lua",						"flyingants_Emitter"						}
   ,{	24,								"lua/emitters/intflickerlight.lua",					"intflickerlight_Emitter"					}
   ,{	25,								"lua/emitters/catchingsomezees.lua",				"catchingsomezees_Emitter"					}
   ,{	26,								"lua/emitters/tvstatic1.lua",						"tvstatic1_Emitter"							}
   ,{	27,								"lua/emitters/tvstatic2.lua",						"tvstatic2_Emitter"							}
   ,{	28,								"lua/emitters/tvstatic3.lua",						"tvstatic3_Emitter"							}
   ,{	29,								"lua/emitters/cupsteam.lua",						"cupsteam_Emitter"							}
   ,{	30,								"lua/emitters/phantoms.lua",						"phantoms_Emitter"							}
   ,{	31,								"lua/emitters/horizsmoke.lua",						"horizsmokeZaxis_Emitter"					}
   ,{	32,								"lua/emitters/phantomlarge.lua",					"phantomlarge_Emitter"						}
   ,{	33,								"lua/emitters/multiblooddrip.lua",					"multiblooddrip_Emitter"					}
   ,{	34,								"lua/emitters/cigarettesmoke.lua",					"cigarettesmoke_Emitter"					}
   ,{	35,								"lua/emitters/cigaretteburn.lua",					"cigaretteburn_Emitter"					}
 
   -- unique
   ,{	1000,							"lua/emitters/puzzlehint.lua",						"puzzlehint_Emitter"						}
   
   ,{	2000,							"lua/emitters/blood1.lua",							"blood1_Emitter"							}
   ,{	2001,							"lua/emitters/blood2.lua",							"blood2_Emitter"							}
   ,{	2002,							"lua/emitters/blood3.lua",							"blood3_Emitter"							}
   ,{	2003,							"lua/emitters/blood4.lua",							"blood4_Emitter"							}
   ,{	2004,							"lua/emitters/blood5.lua",							"blood5_Emitter"							}
   ,{	2005,							"lua/emitters/floatingheaddrip.lua",				"floatingheaddrip_Emitter"					}
}

function RegisterEmitterResources()

	return resourceList;

end


