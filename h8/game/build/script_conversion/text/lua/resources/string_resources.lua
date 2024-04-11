
-- ### RULES ###


local resourceList = 
{
	-- id								string		
-- RESERVED
	{	-1,								""					}
-- RESERVED
	
-- game strings
,	{	0,              "0"					}
,	{	1,              "1"					}
,	{	2,              "2"					}
,	{	3,              "3"					}
,	{	4,              "4"					}
,	{	5,              "5"					}
,	{	6,              "6"					}
,	{	7,              "7"					}
,	{	8,              "8"					}
,	{	9,              "9"					}
,	{	10,             "10"				}	

,	{	50,             "Yes"				}	
,	{	51,             "No"				}	

,	{	60,             "Loading..."		}
,	{	61,             "Go!"				}

-- manu menu
,	{	100,            "TAP TO PLAY"       }
,	{	101,            "PLAY"       		}

,	{	110,            "MORE GAMES"        }
,	{	111,            "© HIDDEN 2016"     }

-- hud
,	{	200,            "MENU"              }
,	{	201,            "SCORE"             }
,	{	202,            "PB"                }
,	{	203,            "LEVEL"             }
,	{	204,            "TIME"              }
,	{	205,            "GAME OVER"         }
,	{	206,            "Level: "			}
,	{	207,            "Time: "			}
,	{	208,            "Downloading..."	}
,	{	209,			"> CLICK HERE TO SUBMIT YOUR NEW PB!"	}
,	{	210,            "PAUSED"            }

-- random console prints
,	{	1000,            "Packet collision, force resend"  		}
,	{	1001,            "0xAE54566FD pointer out of bounds"    }
,	{	1002,            "Format begin"         				}
,	{	1003,            "Carrier lost"              			}
,	{	1004,            "signal error..."              		}
,	{	1005,            "Out of order exchange....redail"    	}
,	{	1006,            "Format error.........."              	}
,	{	1007,            "Access denied, root login required"   }
,	{	1008,            "Kernel panic, check host"             }
,	{	1009,            "...sector lost.........."             }
,	{	1010,            "Buffer cleared, flood fill started"       }
,	{	1011,            "Backup error"              				}
,	{	1012,            "Disk read error check drive" 		        }
,	{	1013,            "GURU MEDITATION: #345345345.435f34534" 	}
,	{	1014,            "Drive not found, please mount"            }
,	{	1015,            ".............."              			}
,	{	1016,            ".........."              				}
,	{	1017,            "+~W@$%:Tg+++++"              			}
,	{	1018,            "==SERG$£TM$£MW£EA====="               }
,	{	1019,            "The program '[5104] h8.exe: Native' has exited with code 0 (0x0)."              }
,	{	1020,            "---driver reset....unknown reason..."              			}
,	{	1021,            "Pool exhausted, reboot required......"		}
,	{	1022,            "login unsuccessful....."              }
,	{	1023,            "daemon server located, opening new socket" 	}
,	{	1024,            "Connection failed"              		}
,	{	1025,            "..................."              	}
,	{	1026,            "<>^Y%>&^%$>&<%$^>&<%$>^"              }
,	{	1027,            "*** stop: 0x000000a5 (0x0001000b,0x50434146,0xffd01aco,0x00000000)"              }
,	{	1028,            " 400 Bad request"              		}
,	{	1029,            "503 Service Unavailable"              }
,	{	1030,            "EOL"              					}

-- ui glyphs
--,	{	9000,           "A"              	} -- back/prev arrow
--,	{	9001,           "B"              	} -- next arrow
--,	{	9002,           "C"              	} -- up arrow
--,	{	9003,           "D"              	} -- down arrow
,	{	9004,           "E"              	} -- close/exit
--,	{	9005,           "F"              	} -- sound/speaker
--,	{	9006,           "G"              	} -- music
,	{	9007,           "H"              	} -- info "i"
--,	{	9008,           "I"              	} -- off symbol
--,	{	9009,           "J"              	} -- trophy/achievement (CABBY)
--,	{	9010,           "K"              	} -- purchases
--,	{	9011,           "L"              	} -- rewind/prev
--,	{	9012,           "M"              	} -- forward/next
,	{	9013,           "N"              	} -- repeat
--,	{	9014,           "O"              	} -- first
--,	{	9015,           "P"              	} -- pause
--,	{	9016,           "Q"              	} -- play
--,	{	9017,           "R"              	} -- last
--,	{	9018,           "S"              	} -- shuffle
,	{	9019,           "T"              	} -- resume
--,	{	9020,           "U"              	} -- left arrow (single)
--,	{	9021,           "V"              	} -- right arrow (single)
--,	{	9022,           "W"              	} -- star
--,	{	9023,           "X"              	} -- plus (in circle)
--,	{	9024,           "Y"              	} -- minus (in circle)
--,	{	9025,           "Z"              	} -- resume (in circle)

--,	{	9026,           "a"              	} -- back/prev arrow (in circle)
--,	{	9027,           "b"              	} -- next arrow (in circle)
--,	{	9028,           "c"              	} -- up arrow (in circle)
--,	{	9029,           "d"              	} -- down arrow (in circle)
--,	{	9030,           "e"              	} -- close/exit (in circle)
--,	{	9031,           "f"              	} -- 
--,	{	9032,           "g"              	} -- 
--,	{	9033,           "h"              	} -- 
--,	{	9034,           "i"              	} -- 
--,	{	9035,           "j"              	} -- trophy/achievement (AIR CADETS)
,	{	9036,           "k"              	} -- rate button
--,	{	9037,           "l"              	} -- 
--,	{	9038,           "m"              	} -- 
--,	{	9039,           "n"              	} -- repeat (in circle)
--,	{	9040,           "o"              	} -- 
--,	{	9041,           "p"              	} -- 
--,	{	9042,           "q"              	} -- 
--,	{	9043,           "r"              	} -- 
--,	{	9044,           "s"              	} -- 
--,	{	9045,           "t"              	} -- 
--,	{	9046,           "u"              	} -- 
--,	{	9047,           "v"              	} -- 
--,	{	9048,           "w"              	} -- 
--,	{	9049,           "x"              	} -- 
--,	{	9050,           "y"              	} -- 
--,	{	9051,           "z"              	} -- 

--,	{	9052,           "0"              	} -- target/crosshair
--,	{	9053,           "1"              	} -- hidden logo (full "Hidden Games")
--,	{	9054,           "2"              	} -- hidden logo ("Hidden")
,	{	9055,           "3"              	} -- hidden logo (symbol only)
--,	{	9056,           "4"              	} -- 
--,	{	9057,           "5"              	} -- 
--,	{	9058,           "6"              	} -- 
,	{	9059,           "7"              	} -- Leaderboard
--,	{	9060,           "8"              	} -- 
,	{	9061,           "9"              	} -- Twitter

,	{	9100,           "@"              	} -- < Rotate Shield >
--,	{	9101,           ""              	} -- 

-- web link
,	{	10000,          "http://www.hiddengames.co.uk/games" } -- more games
,	{	10001,          "http://www.hiddengames.co.uk/firewall" } -- microsite

}

function RegisterStringResources()

	return resourceList;

end
