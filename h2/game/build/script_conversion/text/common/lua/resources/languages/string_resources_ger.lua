
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
,	{	52,								"(Full version only)"}
,	{	53,								"(unlock now)"		}
,	{	54,								"Reveal"			}
,	{	55,								"Cabby App Store"	}

,	{	60,								"Loading..."		}
,	{	61,								"x"         		}
,	{	62,								"1 UP"         		}
,	{	63,								"bitte"         	}

	-- taxis
,	{	100,							"Yellow Cab"			}
,	{	101,							"Black Cab"				}
,	{	102,							"Tow Truck"				}
,	{	103,							"Delivery Van"			}
,	{	104,							"Hot Rod"				}
,	{	105,							"Lond Botus"			}
,	{	106,							"Team A Van"			}
,	{	107,							"Ghoul Hunter"			}
,	{	108,							"Spinner"				}
,	{	109,							"LeDorean"				}
,	{	110,							"Plonker Mobile"		}
,	{	111,							"Flying Beetle"			}
,	{	112,							"Whodunit Machine"		}
,	{	113,							"Police Box"			}
,	{	114,							"The Homie"				}

	-- levels
,	{	200,							"Easy Does It"			}
,	{	201,							"Crossroad Confusion"	}
,	{	202,							"Short Circuit"			}
,	{	203,							"Kamikaze"				}
,	{	204,							"Asteroids"				}
,	{	205,							"Skycaper Scraper"	    }
,	{	206,							"A Well of a Time"		}
,	{	207,							"Space Camp"			}
,	{	208,							"Hidden Cave"			}
,	{	209,							"Breath In"				}
,	{	210,							"Snaaaake!"				}
,	{	211,							"Ghost Ship"			}
,	{	212,							"Meteor Shower"			}
,	{	213,							"The Elephant Dip"		}
,	{	214,							"Danger Cove"			}
,	{	215,							"Dog's Eyes Chief"		}
,	{	216,							""						} -- special ending

	-- ui title screen
,	{	1000,							"Tap to Start"		}
,	{	1001,							"© 2016 Hidden Games"	}
,	{	1002,							"Lite"          	}

    -- ui credits
,	{	1010,							"Hidden Games are"              }
,	{	1011,							"Gareth West & John Murray"     }
,	{	1012,							"3"                             } -- hidden logo
,	{	1013,							"Credits"              			}

	-- ui frontend_fileselect
,	{	1020,							"Select a profile"	                                                }
,	{	1021,							"Reset"				                                                }
,	{	1022,							"Start"				                                                }
,	{	1023,							"Are you sure? This will clear the current profile."                }
,	{	1024,							"Warning: unlocked items will be lost"                              } -- red
,	{	1025,							"Are you sure? Any progress made in Career Mode will be lost."      }
,	{	1026,							"Note: unlocked items are not affected."            				} -- green

	-- ui frontend mainmenu
,	{	1040,							"Main Menu"			}	
,	{	1041,							"New Career"		}	
,	{	1042,							"Continue Career"	}	
,	{	1043,							"Arcade"			}	
,	{	1044,							"Career Stats"		}	
,	{	1045,							"In-App purchase"				}
,	{	1046,							"More Games"    				}

	-- ui frontend career stats
,	{	1060,							"Career Mode Statistics"		}
,	{	1061,							"Customers Transported"			}
,	{	1062,							"Parcels Delivered"				}
,	{	1063,							"Perfect Fares"					}
,	{	1064,							"Taxis Lost"					}
,	{	1065,							"Total Money Earned"			}

	-- ui frontend taxiselect
,	{	1080,							"Select a taxi"					}

	-- ui frontend level select
,	{	1100,							"Select a level"				}
,	{	1101,							"Page"							}

	-- ui level_start
,	{	1120,							"Play"							}
,	{	1121,							"Choose a track/playlist"		}
,	{	1122,							"Keep Current"					}
,	{	1123,							"No Playlists"					}
,	{	1124,							"Target"                        }
,	{	1125,							"GET READY!"         			}

	-- ui gameover_arcade
,	{	1140,							"Try Again"			}

	-- ui gameover_career
,	{	1160,							"You have run out of taxis but you don't"			}
,	{	1161,							"have enough left in the bank to purchase more!"	}
,	{	1162,							"Your days as a cabby are over!"					}

	-- ui gameover_career_continue
,	{	1180,							"You have run out of taxis, but don't worry!"		}
,	{	1181,							"You have enough in the bank to purchase more..."	}
,	{	1182,							"Bank"      										}
,	{	1183,							"Purchase & Continue"								}

	-- ui pause
,	{	1200,							"Paused"			}	
,	{ 	1201,							"Control Type: Buttons"	}
,	{	1202,							"Control Type: Tilt"		}
,	{	1203,							"Control Type: Controller"		}

	-- ui level_end
,	{	1220,							"Level Complete"	}
,	{	1221,							"Customers Transported"	}
,	{	1222,							"Parcels Delivered"	}
,	{	1223,							"Perfect Fares"		}
,	{	1224,							"Level Earnings"	}
,	{	1225,							"Total Career Earnings"	}
,	{	1226,							""	}
,	{	1227,							"Career Complete"	}
,	{	1228,							"Play Again"		}
,	{	1229,							"Next Level"		}
,	{	1230,							"Finish"			}

    -- ui level_end (arcade specific)
,	{	1250,							"Level Completed"			}
,	{	1251,							"Customers Transported > "	}
,	{	1252,							"Earn > "        			}
,	{	1253,							"No Lives Lost"    			}
,	{	1254,							"Hidden Star Found"			}
,	{	1255,							"Total Stars"   			}

    -- ui vehicle unlocks
,	{	1300,							"Career Complete."    						}
,	{	1301,							"You have unlocked the "    				} -- must have a space on the end
,	{	1302,							"CONGRATULATIONS"    						}

	-- ui frontend taxiselect (in app purchase)

,	{	1320,							"You can unlock this taxi now by purchasing it, or you" }
,	{	1321,							"can earn this taxi by playing through the game."    		}
,	{	1322,							""    										}
,	{	1323,							"Do you wish to purchase this taxi now?"    	} -- red text

,	{	1324,							"Contacting the Store" 	}
,	{	1325,							"Please Wait" 			}

,	{	1326,							"Purchase Successful" 		}
,	{	1327,							"Purchase Failed" 			}
,	{	1328,							"Tap to continue" 			}
,	{	1329,							"Error Code: " 				} -- red text

,	{	1330,							"Here you can restore all previous in-app purchases made."      }
,	{	1331,							"Do you wish to restore your purchases now?"        } -- red text

,	{	1332,							"All Purchases Restored"        }
,	{	1333,							"Purchases Were Not Restored"       }

,	{	1334,							"To use this item in the lite version, you must purchase it."       }
,	{	1335,							"This item is available for free in the full game."     }
,	{	1336,							""      }
,	{	1337,							"Do you wish to purchase this item now?"        } -- red text

,	{	1338,							"Click the button to reveal this item."     }
,	{	1339,							"In the next screen you will have the option to unlock it."     }
,	{	1340,							""      }
,	{	1341,							"Warning: may contain spoilers!"        } -- red text

,	{	1342,							"You can unlock this taxi now by purchasing it." 	}
,	{	1343,							""    												}
,	{	1344,							""    												}
,	{	1345,							"Do you wish to purchase this taxi now?"    		} -- red text

    -- in-game swear bubbles
,	{	8000,							"*?#@!!"              	}

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
,	{	9009,							"J"              	} -- trophy
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
--,	{	9022,							"W"              	} -- 
--,	{	9023,							"X"              	} -- 
--,	{	9024,							"Y"              	} -- 
--,	{	9025,							"Z"              	} -- 

--,	{	9026,							"a"              	} -- 
--,	{	9027,							"b"              	} -- 
--,	{	9028,							"c"              	} -- 
--,	{	9029,							"d"              	} -- 
--,	{	9030,							"e"              	} -- 
--,	{	9031,							"f"              	} -- 
--,	{	9032,							"g"              	} -- 
--,	{	9033,							"h"              	} -- 
--,	{	9034,							"i"              	} -- 
--,	{	9035,							"j"              	} -- 
,	{	9036,							"k"              	} -- rate
--,	{	9037,							"l"              	} -- 
--,	{	9038,							"m"              	} -- 
--,	{	9039,							"n"              	} -- 
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

,	{	9100,							"-"              	} -- minus/less
,	{	9101,							"+"              	} -- plus/more

	-- web link
,	{	10000,							"http://itunes.apple.com/us/app/cabby/id339383913?mt=8" } -- full version
,	{	10001,							"http://www.hiddengames.co.uk/cabby" 					} -- home
,	{	10002,							"http://www.hiddengames.co.uk/cabby-lite" }
,	{	10003,							"http://www.hiddengames.co.uk/games" } -- main game site

}

function RegisterStringResources()

	return resourceList;

end
