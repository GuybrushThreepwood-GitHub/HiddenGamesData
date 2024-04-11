
-- ### RULES ###


local resourceList = 
{
	-- id								string		
-- RESERVED
	{	-1,								""					}
-- RESERVED
	
-- game strings
,	{	0,								"0"					}
,	{	1,								"1"					}
,	{	2,								"2"					}
,	{	3,								"3"					}
,	{	4,								"4"					}
,	{	5,								"5"					}
,	{	6,								"6"					}
,	{	7,								"7"					}
,	{	8,								"8"					}
,	{	9,								"9"					}
,	{	10,								"10"				}	

,	{	50,								"Yes"				}	
,	{	51,								"No"				}	

,	{	60,								"Loading..."		}
,	{	61,								"Go!"				}

-- aircraft
,	{	100,							"1911 Cayley 30C \"Cloud Walker\""          }
,	{	101,							"1939 West Aviation WA-Mach 3 \"Sirocco\""  }
,	{	102,							"1913 Schneider 13L \"Sea Pig\""    		}

-- test levels
,	{	201,							"Windfall Reach"    }
,	{	202,							"Crescent Gorge"    }
,	{	203,							"Redrock Canyon"    }
,	{	204,							"Ingary Valley"		}
,	{	205,							"Sistrurus Desert"  }
,	{	206,							"Helada Plains"		}
,	{	207,							"Porta Fault"       }
,	{	208,							"Foso Mountain"     }


	-- ui title screen
,	{	1000,							"Tap to Start"		}
,	{	1001,							"© 2016 Hidden Games"	}

    -- ui credits
,	{	1011,							"Hidden Games are"                  }
,	{	1012,							"Gareth West & John Murray"         }
,	{	1013,							"Character Artwork by"              }
,	{	1014,							"Julian Green"                      }
,	{	1015,							"Find us at www.hiddengames.co.uk"  }
,	{	1016,							"Copyright © 2016 Hidden Games"     }

	-- ui frontend mainmenu
,	{	1040,							"Free Flight"					}
,	{	1041,							"Target Practice"   			}
,	{	1042,							"Time Attack"					}
,	{	1043,                           "More Games"                    }

	-- ui frontend aircraft select
,	{	1080,							"Aircraft"						}

	-- ui frontend level select
,	{	1100,							"Page"							}
,	{	1101,							"Layout"                        }
,	{	1102,							"Best"                        	}
,	{	1103,							"in"                        	}

	-- ui level_start
,	{	1120,							"Play"							}
,	{	1121,							"Choose a track/playlist"		}
,	{	1122,							"Keep Current"					}
,	{	1123,							"No Playlists"					}
,	{	1124,							"GET READY!"					}

	-- ui pause
,	{	1200,							"Paused"    			}
,	{	1201,							"Cadet Tokens Found"    }
,	{	1202,							"Total Flight Time"     }

	-- ui level_end
,	{	1220,							"SCORE"	}
,	{	1221,							"TIME"	}
,	{	1222,							"BEST SCORE"	}
,	{	1223,							"BEST TIME"		}

-- game
,	{	2000,							"Collected Taku Token"     			}
,	{	2001,							"Collected Mei Token"     			}
,	{	2002,							"Collected Earl Token"     			}
,	{	2003,							"Collected Fio Token"     			}
,	{	2004,							"Collected Mito Token"     			}
,	{	2005,							"Collected Uki Token"     			}

,	{	2010,							"Target Destroyed"     				}
,	{	2011,							"Object Destroyed"     				}

,	{	3000,							"Collected Star"     				}
,	{	3001,							"Collected \"Hidden\" Token"     	}

,	{	4900,							"Windfall Reach Industrial Zone"   		}
,	{	4901,							"Windfall Reach mountain"   			}
,	{	4902,							"Crescent Gorge airfield"   			}
,	{	4903,							"Redrock Canyon airstrip"   			}
,	{	4904,							"Ingary Valley wind farm"   			}
,	{	4905,							"Sistrurus Desert Industrial Zone"   	}
,	{	4906,							"Sistrurus Desert wind farm"   			}
,	{	4907,							"Helada Plains airport"   				}
,	{	4908,							"Discovered the Helada Plains lighthouse on the hill"  	}
,	{	4909,							"Flew under the RedGate bridge on Porta Fault"   		}
,	{	4910,							"Flew through a RedGate bridge support on Porta Fault"  }
,	{	4911,							"Porta Fault Airport"   							}
,	{	4912,							"Discovered the first city of Foso Mountain"   		}
,	{	4913,							"Discovered the second city of Foso Mountain"   	}
,	{	4914,							"Discovered the third city of Foso Mountain"   		}


,	{	5000,							"Found the Prisoner 84 helicopter"   	}
,	{	5001,							"Found the Cabby shipwreck"     		}
,	{	5002,							"Found the Cabby yellow cab"     		}
,	{	5003,							"Found the Cabby black cab"     		}
,	{	5004,							"Found the Demo UFO"     				}
,	{	5005,							"Found the Prisoner 84 figurine 1"   	}
,	{	5006,							"Found the Prisoner 84 figurine 2"   	}
,	{	5007,							"Found the Prisoner 84 figurine 3"   	}
,	{	5008,							"Found the Prisoner 84 spider's lair"   }

    -- ui glyphs
,	{	9000,							"A"              	} -- back/prev arrow
,	{	9001,							"B"              	} -- next arrow
,	{	9002,							"C"              	} -- up arrow
,	{	9003,							"D"              	} -- down arrow
,	{	9004,							"E"              	} -- close/exit
,	{	9005,							"F"              	} -- sound/speaker
,	{	9006,							"G"              	} -- music
,	{	9007,							"H"              	} -- info "i"
,	{	9008,							"I"              	} -- off symbol
,	{	9009,							"J"              	} -- trophy/achievement (CABBY)
,	{	9010,							"K"              	} -- purchases
,	{	9011,							"L"              	} -- rewind/prev
,	{	9012,							"M"              	} -- forward/next
,	{	9013,							"N"              	} -- repeat
,	{	9014,							"O"              	} -- first
,	{	9015,							"P"              	} -- pause
,	{	9016,							"Q"              	} -- play
,	{	9017,							"R"              	} -- last
,	{	9018,							"S"              	} -- shuffle
,	{	9019,							"T"              	} -- resume
,	{	9020,							"U"              	} -- left arrow (single)
,	{	9021,							"V"              	} -- right arrow (single)
,	{	9022,							"W"              	} -- star
,	{	9023,							"X"              	} -- plus (in circle)
,	{	9024,							"Y"              	} -- minus (in circle)
,	{	9025,							"Z"              	} -- resume (in circle)

,	{	9026,							"a"              	} -- back/prev arrow (in circle)
,	{	9027,							"b"              	} -- next arrow (in circle)
,	{	9028,							"c"              	} -- up arrow (in circle)
,	{	9029,							"d"              	} -- down arrow (in circle)
,	{	9030,							"e"              	} -- close/exit (in circle)
--,	{	9031,							"f"              	} -- 
--,	{	9032,							"g"              	} -- 
--,	{	9033,							"h"              	} -- 
--,	{	9034,							"i"              	} -- 
,	{	9035,							"j"              	} -- trophy/achievement (AIR CADETS)
,	{	9036,							"k"              	} -- rate button
--,	{	9037,							"l"              	} -- 
,	{	9038,							"m"              	} -- remove ads
,	{	9039,							"n"              	} -- repeat (in circle)
--,	{	9040,							"o"              	} -- 
--,	{	9041,							"p"              	} -- 
--,	{	9042,							"q"              	} -- 
--,	{	9043,							"r"              	} -- 
--,	{	9044,							"s"              	} -- 
--,	{	9045,							"t"              	} -- 
--,	{	9046,							"u"              	} -- 
--,	{	9047,							"v"              	} -- 
--,	{	9048,							"w"              	} -- 
--,	{	9049,							"x"              	} -- 
--,	{	9050,							"y"              	} -- 
--,	{	9051,							"z"              	} -- 

,	{	9052,							"0"              	} -- target/crosshair
,	{	9053,							"1"              	} -- hidden logo (full "Hidden Games")
,	{	9054,							"2"              	} -- hidden logo ("Hidden")
,	{	9055,							"3"              	} -- hidden logo (symbol only)
--,	{	9056,							"4"              	} -- 
--,	{	9057,							"5"              	} -- 
--,	{	9058,							"6"              	} -- 
--,	{	9059,							"7"              	} -- 
--,	{	9060,							"8"              	} -- 
--,	{	9061,							"9"              	} -- 

,	{	9100,							"-"              	} -- minus/less
,	{	9101,							"+"              	} -- plus/more

	-- web link
,	{	10000,							"http://www.hiddengames.co.uk/games" } -- more games
,	{	10001,							"http://www.hiddengames.co.uk/air-cadets" } -- home

}

function RegisterStringResources()

	return resourceList;

end
