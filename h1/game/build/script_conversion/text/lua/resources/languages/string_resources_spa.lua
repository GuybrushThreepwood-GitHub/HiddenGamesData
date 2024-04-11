
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

,	{	50,								"Sí"				}	
,	{	51,								"No"				}	

,	{	60,								"Cargando..."		}
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
,	{	1000,							"Toca para empezar"		}
,	{	1001,							"© 2016 Hidden Games"	}

    -- ui credits
,	{	1011,							"Hidden Games son"                  }
,	{	1012,							"Gareth West & John Murray"         }
,	{	1013,							"Diseño de personajes por"          }
,	{	1014,							"Julian Green"                      }
,	{	1015,							"Encuentranos en www.hiddengames.co.uk"  }
,	{	1016,							"Copyright © 2016 Hidden Games"     }

	-- ui frontend mainmenu
,	{	1040,							"Vuelo Libre"					}
,	{	1041,							"Práctica de Tiro"   			}
,	{	1042,							"Circuito por Tiempo"			}
,	{	1043,                           "Más Juegos"                    }

	-- ui frontend aircraft select
,	{	1080,							"Avioneta"             			}

	-- ui frontend level select
,	{	1100,							"Página"						}
,	{	1101,							"Plano"                        	}
,	{	1102,							"Record"                        }
,	{	1103,							"en"                        	}

	-- ui level_start
,	{	1120,							"Jugar"								}
,	{	1121,							"Seleccionar una playlist"			}
,	{	1122,							"Dejar la actual"					}
,	{	1123,							"No Playlists"						}
,	{	1124,							"VAMOS!!!"							}

	-- ui pause
,	{	1200,							"Pausa"    							}
,	{	1201,							"Monedas Cadete Encontradas"    	}
,	{	1202,							"Tiempo Total de Vuelo"     		}

	-- ui level_end
,	{	1220,							"PUNTOS"			}
,	{	1221,							"TIEMPO"			}
,	{	1222,							"TU RECORD"			}
,	{	1223,							"MEJOR TIEMPO"		}

-- game
,	{	2000,							"Monedas Taku Conseguidas"     		}
,	{	2001,							"Monedas Mei Conseguidas"     		}
,	{	2002,							"Monedas Earl Conseguidas"     		}
,	{	2003,							"Monedas Fio Conseguidas"     		}
,	{	2004,							"Monedas Mito Conseguidas"     		}
,	{	2005,							"Monedas Uki Conseguidas"     		}

,	{	2010,							"Objetivo Destruido"     			}
,	{	2011,							"Objecto Destruido"     			}

,	{	3000,							"Estrellas Conseguidas"     			}
,	{	3001,							"Monedas \"Hidden\" Conseguidas"     	}

,	{	4900,							"Polígono Industrial Windfall Reach"   	}
,	{	4901,							"Montaña Windfall Reach"   				}
,	{	4902,							"Aeropuerto Crescent Gorge"   			}
,	{	4903,							"Aeropuerto Redrock Canyon"   			}
,	{	4904,							"Parque eólico Ingary Valley"   		}
,	{	4905,							"Polígono Industrial  Sistrurus Desert" }
,	{	4906,							"Parque eólico Sistrurus Desert"   		}
,	{	4907,							"Aeropuerto Helada Plains"   			}
,	{	4908,							"Faro de Helada Plains descubierto sobre la colina"  		}
,	{	4909,							"Has volado bajo el puente RedGate en Porta Fault"   		}
,	{	4910,							"Has volado entre los soportales del puente RedGate en Porta Fault"  }
,	{	4911,							"Aeropuerto de Porta Fault"   							}
,	{	4912,							"Primera cuidad de Foso Mountain descubierta"   		}
,	{	4913,							"Segunda cuidad de Foso Mountain descubierta"   		}
,	{	4914,							"Trecera cuidad de Foso Mountain descubierta"   		}

,	{	5000,							"Helicoptero de Prisoner 84 encontrado"   	}
,	{	5001,							"Barco de Cabby encontrado"     			}
,	{	5002,							"Taxi amarillo de Cabby encontrado"     	}
,	{	5003,							"Taxi negro de Cabby encontrado"     		}
,	{	5004,							"OVNI de Demo encontrado"     				}
,	{	5005,							"Figurita 1 de Prisoner 84 encontrada"   	}
,	{	5006,							"Figurita 2 de Prisoner 84 encontrada"   	}
,	{	5007,							"Figurita 3 de Prisoner 84 encontrada"   	}
,	{	5008,							"Nido de arañas de Prisoner 84 encontrado"  }

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
