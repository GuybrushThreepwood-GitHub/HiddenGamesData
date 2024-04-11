
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								sound filename	

-- misc
    {	100,							"assets/audio/misc/bomb_air.wav"					}
,   {	101,							"assets/audio/misc/complete.wav"					}
,	{	102,							"assets/audio/misc/extralife.wav"					}
,	{	103,							"assets/audio/misc/fail.wav"						}
,	{	104,							"assets/audio/misc/money.wav"						}
,	{	105,							"assets/audio/misc/money_big.wav"					}
,	{	106,							"assets/audio/misc/arcade_timer_tick.wav"			}
,	{	107,							"assets/audio/misc/arcade_timer_end.wav"			}

-- ui
--,	{	130,							"assets/audio/ui/flyby.wav"							}
,	{	131,							"assets/audio/ui/select.wav"						}
,	{	132,							"assets/audio/ui/achievement_popup.wav"				}

-- vehicle
,	{	150,							"assets/audio/vehicle/atmos_air2water.wav"			}
,	{	151,							"assets/audio/vehicle/atmos_water2air.wav"			}
,	{	152,							"assets/audio/vehicle/cab_destroyed.wav"			}
,	{	153,							"assets/audio/vehicle/collide_large.wav"			}
,	{	154,							"assets/audio/vehicle/collide_massive.wav"			}
,	{	155,							"assets/audio/vehicle/collide_small.wav"			}
,	{	156,							"assets/audio/vehicle/door_openclose.wav"			}
,	{	157,							"assets/audio/vehicle/fuel_fill.wav"				}
,	{	158,							"assets/audio/vehicle/fuellow.wav"					}
,	{	159,							"assets/audio/vehicle/land_ext.wav"					}
,	{	160,							"assets/audio/vehicle/propul_air.wav"				}
,	{	161,							"assets/audio/vehicle/propul_sub.wav"				}
,	{	162,							"assets/audio/vehicle/propul_vac.wav"				}
,	{	163,							"assets/audio/vehicle/fuel_refuse.wav"				}

-- female-american
,	{	200,							"assets/audio/voices/female-american/dest-1please.wav"			}
,	{	201,							"assets/audio/voices/female-american/dest-2please.wav"			}
,	{	202,							"assets/audio/voices/female-american/dest-3please.wav"			}
,	{	203,							"assets/audio/voices/female-american/dest-4please.wav"			}
,	{	204,							"assets/audio/voices/female-american/dest-5please.wav"			}
,	{	205,							"assets/audio/voices/female-american/dest-6please.wav"			}
,	{	206,							"assets/audio/voices/female-american/dest-7please.wav"			}
,	{	207,							"assets/audio/voices/female-american/dest-8please.wav"			}
,	{	208,							"assets/audio/voices/female-american/dest-9please.wav"			}
,	{	209,							"assets/audio/voices/female-american/dest-number1please.wav"	}
,	{	210,							"assets/audio/voices/female-american/dest-number2please.wav"	}
,	{	211,							"assets/audio/voices/female-american/dest-number3please.wav"	}
,	{	212,							"assets/audio/voices/female-american/dest-number4please.wav"	}
,	{	213,							"assets/audio/voices/female-american/dest-number5please.wav"	}
,	{	214,							"assets/audio/voices/female-american/dest-number6please.wav"	}
,	{	215,							"assets/audio/voices/female-american/dest-number7please.wav"	}
,	{	216,							"assets/audio/voices/female-american/dest-number8please.wav"	}
,	{	217,							"assets/audio/voices/female-american/dest-number9please.wav"	}
,	{	218,							"assets/audio/voices/female-american/end-thanks.wav"			}
,	{	219,							"assets/audio/voices/female-american/end-thankyou.wav"			}
,	{	220,							"assets/audio/voices/female-american/hail-hey.wav"				}
,	{	221,							"assets/audio/voices/female-american/hail-hey2.wav"				}
,	{	222,							"assets/audio/voices/female-american/hail-heytaxi.wav"			}
,	{	223,							"assets/audio/voices/female-american/hail-taxi.wav"				}
,	{	224,							"assets/audio/voices/female-american/hail-yo.wav"				}
,	{	225,							"assets/audio/voices/female-american/hail-yoohoo.wav"			}
,	{	226,							"assets/audio/voices/female-american/hail-yotaxi.wav"			}

-- female-cockney
,	{	250,							"assets/audio/voices/female-cockney/dest-1please.wav"			}
,	{	251,							"assets/audio/voices/female-cockney/dest-2please.wav"			}
,	{	252,							"assets/audio/voices/female-cockney/dest-3please.wav"			}
,	{	253,							"assets/audio/voices/female-cockney/dest-4please.wav"			}
,	{	254,							"assets/audio/voices/female-cockney/dest-5please.wav"			}
,	{	255,							"assets/audio/voices/female-cockney/dest-6please.wav"			}
,	{	256,							"assets/audio/voices/female-cockney/dest-7please.wav"			}
,	{	257,							"assets/audio/voices/female-cockney/dest-8please.wav"			}
,	{	258,							"assets/audio/voices/female-cockney/dest-9please.wav"			}
,	{	259,							"assets/audio/voices/female-cockney/dest-number1please.wav"		}
,	{	260,							"assets/audio/voices/female-cockney/dest-number2please.wav"		}
,	{	261,							"assets/audio/voices/female-cockney/dest-number3please.wav"		}
,	{	262,							"assets/audio/voices/female-cockney/dest-number4please.wav"		}
,	{	263,							"assets/audio/voices/female-cockney/dest-number5please.wav"		}
,	{	264,							"assets/audio/voices/female-cockney/dest-number6please.wav"		}
,	{	265,							"assets/audio/voices/female-cockney/dest-number7please.wav"		}
,	{	266,							"assets/audio/voices/female-cockney/dest-number8please.wav"		}
,	{	267,							"assets/audio/voices/female-cockney/dest-number9please.wav"		}
,	{	268,							"assets/audio/voices/female-cockney/end-thanks.wav"				}
,	{	269,							"assets/audio/voices/female-cockney/end-thankyou.wav"			}
,	{	270,							"assets/audio/voices/female-cockney/hail-hey.wav"				}
,	{	271,							"assets/audio/voices/female-cockney/hail-hey2.wav"				}
,	{	272,							"assets/audio/voices/female-cockney/hail-heytaxi.wav"			}
,	{	273,							"assets/audio/voices/female-cockney/hail-taxi.wav"				}
,	{	274,							"assets/audio/voices/female-cockney/hail-yo.wav"				}
,	{	275,							"assets/audio/voices/female-cockney/hail-yoohoo.wav"			}
,	{	276,							"assets/audio/voices/female-cockney/hail-yotaxi.wav"			}

-- male-american
,	{	300,							"assets/audio/voices/male-american/dest-1please.wav"			}
,	{	301,							"assets/audio/voices/male-american/dest-2please.wav"			}
,	{	302,							"assets/audio/voices/male-american/dest-3please.wav"			}
,	{	303,							"assets/audio/voices/male-american/dest-4please.wav"			}
,	{	304,							"assets/audio/voices/male-american/dest-5please.wav"			}
,	{	305,							"assets/audio/voices/male-american/dest-6please.wav"			}
,	{	306,							"assets/audio/voices/male-american/dest-7please.wav"			}
,	{	307,							"assets/audio/voices/male-american/dest-8please.wav"			}
,	{	308,							"assets/audio/voices/male-american/dest-9please.wav"			}
,	{	309,							"assets/audio/voices/male-american/dest-number1please.wav"		}
,	{	310,							"assets/audio/voices/male-american/dest-number2please.wav"		}
,	{	311,							"assets/audio/voices/male-american/dest-number3please.wav"		}
,	{	312,							"assets/audio/voices/male-american/dest-number4please.wav"		}
,	{	313,							"assets/audio/voices/male-american/dest-number5please.wav"		}
,	{	314,							"assets/audio/voices/male-american/dest-number6please.wav"		}
,	{	315,							"assets/audio/voices/male-american/dest-number7please.wav"		}
,	{	316,							"assets/audio/voices/male-american/dest-number8please.wav"		}
,	{	317,							"assets/audio/voices/male-american/dest-number9please.wav"		}
,	{	318,							"assets/audio/voices/male-american/end-thanks.wav"				}
,	{	319,							"assets/audio/voices/male-american/end-thankyou.wav"			}
,	{	320,							"assets/audio/voices/male-american/hail-hey.wav"				}
,	{	321,							"assets/audio/voices/male-american/hail-hey2.wav"				}
,	{	322,							"assets/audio/voices/male-american/hail-heytaxi.wav"			}
,	{	323,							"assets/audio/voices/male-american/hail-taxi.wav"				}
,	{	324,							"assets/audio/voices/male-american/hail-yo.wav"					}
,	{	325,							"assets/audio/voices/male-american/hail-yoohoo.wav"				}
,	{	326,							"assets/audio/voices/male-american/hail-yotaxi.wav"				}

-- male-cockney
,	{	350,							"assets/audio/voices/male-cockney/dest-1please.wav"				}
,	{	351,							"assets/audio/voices/male-cockney/dest-2please.wav"				}
,	{	352,							"assets/audio/voices/male-cockney/dest-3please.wav"				}
,	{	353,							"assets/audio/voices/male-cockney/dest-4please.wav"				}
,	{	354,							"assets/audio/voices/male-cockney/dest-5please.wav"				}
,	{	355,							"assets/audio/voices/male-cockney/dest-6please.wav"				}
,	{	356,							"assets/audio/voices/male-cockney/dest-7please.wav"				}
,	{	357,							"assets/audio/voices/male-cockney/dest-8please.wav"				}
,	{	358,							"assets/audio/voices/male-cockney/dest-9please.wav"				}
,	{	359,							"assets/audio/voices/male-cockney/dest-number1please.wav"		}
,	{	360,							"assets/audio/voices/male-cockney/dest-number2please.wav"		}
,	{	361,							"assets/audio/voices/male-cockney/dest-number3please.wav"		}
,	{	362,							"assets/audio/voices/male-cockney/dest-number4please.wav"		}
,	{	363,							"assets/audio/voices/male-cockney/dest-number5please.wav"		}
,	{	364,							"assets/audio/voices/male-cockney/dest-number6please.wav"		}
,	{	365,							"assets/audio/voices/male-cockney/dest-number7please.wav"		}
,	{	366,							"assets/audio/voices/male-cockney/dest-number8please.wav"		}
,	{	367,							"assets/audio/voices/male-cockney/dest-number9please.wav"		}
,	{	368,							"assets/audio/voices/male-cockney/end-thanks.wav"				}
,	{	369,							"assets/audio/voices/male-cockney/end-thankyou.wav"				}
,	{	370,							"assets/audio/voices/male-cockney/hail-hey.wav"					}
,	{	371,							"assets/audio/voices/male-cockney/hail-hey2.wav"				}
,	{	372,							"assets/audio/voices/male-cockney/hail-heytaxi.wav"				}
,	{	373,							"assets/audio/voices/male-cockney/hail-taxi.wav"				}
,	{	374,							"assets/audio/voices/male-cockney/hail-yo.wav"					}
,	{	375,							"assets/audio/voices/male-cockney/hail-yoohoo.wav"				}
,	{	376,							"assets/audio/voices/male-cockney/hail-yotaxi.wav"				}

-- misc
,	{	400,							"assets/audio/voices/misc/female-ouch.wav"						}
,	{	401,							"assets/audio/voices/misc/female-scream.wav"					}
,	{	402,							"assets/audio/voices/misc/female-scream_alt.wav"				}
,	{	403,							"assets/audio/voices/misc/male-ouch.wav"						}
,	{	404,							"assets/audio/voices/misc/male-ouch_alt.wav"					}
,	{	405,							"assets/audio/voices/misc/male-scream.wav"						}
,	{	406,							"assets/audio/voices/misc/male-scream_alt.wav"					}
,	{	407,							"assets/audio/misc/ocean_waves.wav" 							}

-- world
,	{	500,							"assets/audio/world/slide_door.wav"								}
,	{	501,							"assets/audio/world/star_pickup.wav"							}

-- ambient
,	{	1000,							"assets/audio/ambient/bird_chatter.wav"                         }
,	{	1001,							"assets/audio/ambient/blizzard.wav"                             }
,	{	1002,							"assets/audio/ambient/city_buzz.wav"                            }
,	{	1003,							"assets/audio/ambient/insects_buzz.wav"                         }
,	{	1004,							"assets/audio/ambient/polar_wind_calm.wav"                      }
,	{	1005,							"assets/audio/ambient/polar_wind_strong.wav"                    }
,	{	1006,							"assets/audio/ambient/seaside_calm.wav"                         }
,	{	1007,							"assets/audio/ambient/underwater.wav"                           }

}

function RegisterSoundResources()

	return resourceList;

end


