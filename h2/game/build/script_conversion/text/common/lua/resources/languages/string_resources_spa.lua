
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
,	{	52,								"(Full Version)"	}
,	{	53,								"(desbloquear ahora)"}
,	{	54,								"Revelar"			}
,	{	55,								"Cabby App Store"	}

,	{	60,								"Cargando..."		}
,	{	61,								"x"         		}
,	{	62,								"1 UP"         		}
,	{	63,								"por favor"         }

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
,	{	1000,							"Toca para empezar"		}
,	{	1001,							"© 2016 Hidden Games"	}
,	{	1002,							"Lite"          		}

    -- ui credits
,	{	1010,							"Hidden Games son"            	}
,	{	1011,							"Gareth West & John Murray"     }
,	{	1012,							"3"                             } -- hidden logo
,	{	1013,							"Créditos"              		}

	-- ui frontend_fileselect
,	{	1020,							"Elige un perfil"	                                            	}
,	{	1021,							"Resetear"				                                        	}
,	{	1022,							"Comenzar"				                                            }
,	{	1023,							"¿Estás seguro? Esto borrará el perfil actual."               		}
,	{	1024,							"Aviso: los artículos desbloqueados se perderán"                    } -- red
,	{	1025,							"¿Estás seguro? Todos los progresos conseguidos en la carrera se perderán."     }
,	{	1026,							"Nota: los artículos desbloqueados no se verán afectados."            	} -- green

	-- ui frontend mainmenu
,	{	1040,							"Menu Principal"					}	
,	{	1041,							"Nueva Carrera"						}	
,	{	1042,							"Continuar Carrera"					}	
,	{	1043,							"Partida Rápida"					}	
,	{	1044,							"Estadísticas de la Carrera"		}	
,	{	1045,							"Comprar In-App"					}
,	{	1046,							"Más Juegos"    				    }

	-- ui frontend career stats
,	{	1060,							"Estadísticas de la Carrera"	}
,	{	1061,							"Pasajeros Transportados"		}
,	{	1062,							"Paquetes Entregados"			}
,	{	1063,							"Clientes Satisfechos"			}
,	{	1064,							"Taxis Perdidos"				}
,	{	1065,							"Dinero Total Ganado"			}

	-- ui frontend taxiselect
,	{	1080,							"Elige un taxi"					}

	-- ui frontend level select
,	{	1100,							"Elige un nivel"				}
,	{	1101,							"Página"						}

	-- ui level_start
,	{	1120,							"Jugar"								}
,	{	1121,							"Seleccionar una playlist"			}
,	{	1122,							"Dejar la actual"					}
,	{	1123,							"No Playlists"						}
,	{	1124,							"Objetivo"                        	}
,	{	1125,							"VAMOS!!!"         					}

	-- ui gameover_arcade
,	{	1140,							"Inténtalo otra vez"				}

	-- ui gameover_career
,	{	1160,							"¡No te quedan más taxis y no tienes suficiente dinero"	}
,	{	1161,							"en el banco para comprar más!"						}
,	{	1162,							"¡Se acabaron tus días como taxista!"				}

	-- ui gameover_career_continue
,	{	1180,							"¡No te quedan más taxis, pero no te preocupes!"		}
,	{	1181,							"Tienes suficiente dinero en el banco para comprar más..."	}
,	{	1182,							"Banco"      										}
,	{	1183,							"Comprar & Continuar"								}

	-- ui pause
,	{	1200,							"Pausa"							}	
,	{ 	1201,							"Controles: Botones"			}
,	{	1202,							"Controles: Acelerómetro"			}
,	{	1203,							"Controles: Mando"		}

	-- ui level_end
,	{	1220,							"Nivel Completado"				}
,	{	1221,							"Pasajeros Transportados"		}
,	{	1222,							"Paquetes Entregados"			}
,	{	1223,							"Clientes Satisfechos"			}
,	{	1224,							"Ganancias en Nivel"			}
,	{	1225,							"Ganancias Totales en Carrera"	}
,	{	1226,							""								}
,	{	1227,							"Carrera Completada"			}
,	{	1228,							"Jugar otra vez"				}
,	{	1229,							"Nivel Siguente"				}
,	{	1230,							"Terminar"						}

    -- ui level_end (arcade specific)
,	{	1250,							"Nivel Completado"				}
,	{	1251,							"Pasajeros Transportados > "	}
,	{	1252,							"Dinero Ganado > "        		}
,	{	1253,							"Ninguna vida perdida "    		}
,	{	1254,							"Estrella Oculta Encontrada"	}
,	{	1255,							"Estrellas Totales"   			}

    -- ui vehicle unlocks
,	{	1300,							"Carrera Completado"    					}
,	{	1301,							"Has desbloqueado el "    					} -- must have a space on the end
,	{	1302,							"ENHORABUENA"    							}

	-- ui frontend taxiselect (in app purchase)

,	{	1320,							"Puedes desbloquear este taxi comprándolo ahora o puedes" 	}
,	{	1321,							"conseguirlo superando el juego."    		}
,	{	1322,							""    														}
,	{	1323,							"¿Quieres comprar el taxi ahora?"    				} -- red text

,	{	1324,							"Conectando con AppStore" 		}
,	{	1325,							"Espere, por favor" 			}

,	{	1326,							"Compra Realizada" 			}
,	{	1327,							"Error en la compra" 		}
,	{	1328,							"Toca para continuar" 		}
,	{	1329,							"Código del Error: " 		} -- red text

,	{	1330,							"Aqui puedes restaurar todas tus compras anteriores."      	}
,	{	1331,							"¿Quieres restaurar tus compras ahora?"        				} -- red text

,	{	1332,							"Todas las compras han sido restauradas" 			}
,	{	1333,							"Las compras no han sido restauradas" 				}

,	{	1334,							"Para usar este artículo en la versión lite, tienes que comprarlo."   }
,	{	1335,							"Este artículo está disponible gratis en la full version."    }
,	{	1336,							""      																}
,	{	1337,							"¿Quieres comprar este artículo ahora?"        							} -- red text

,	{	1338,							"Pulsa el boton para revelar este artículo."     					}
,	{	1339,							"En la siguente pantalla tendrás la opción de desbloquearlo."     	}
,	{	1340,							""      														}
,	{	1341,							"¡Aviso: puede contener spoilers!"        						} -- red text

,	{	1342,							"Puedes desbloquear este taxi comprándolo ahora." 	}
,	{	1343,							""    												}
,	{	1344,							""    												}
,	{	1345,							"¿Quieres comprar el taxi ahora?"    				} -- red text

    -- in-game swear bubbles
,	{	8000,							"*?#@!!"            }

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
