
-- ### RULES ###


local resourceList = 
{
	-- id								string						
	{	0,								"The quick brown fox jumps over the lazy dog"					}
	
	-- stage names
   ,{	1,								"Solitary Confinement"											} -- s01
   ,{	2,								"Below Solitary Confinement"									} -- s01a
   ,{	3,								"Strut A to Solitary Confinement Connecting Bridge"				} -- s02
   ,{	4,								"Strut A F3, Roof"												} -- s03
   ,{	5,								"Strut A F3, Storage Room"										} -- s03a
   ,{	6,								"Strut A F1, Elevator Room"										} -- s04
   ,{	7,								"Strut A F1, Prison Block"										} -- s05
   ,{	8,								"Strut A F1, West Exit"											} -- s06
   ,{	9,								"Strut A F1, East Exit"											} -- s07
   ,{	10,								"Strut A F2, Elevator Room"										} -- s08
   ,{	11,								"Strut A F2, Prison Block"										} -- s09
   ,{	12,								"Strut A to B Connecting Bridge"								} -- s10
   ,{	13,								"Strut A to C Connecting Bridge"								} -- s11
   ,{	14,								"Recreational Yard (aka The Bridge)"							} -- s12
   ,{	15,								"Strut B F1, East Exit"											} -- s13
   ,{	16,								"Strut B F1, Prison Block"										} -- s14
   ,{	17,								"Strut C F1, West Exit"											} -- s15
   ,{	18,								"Strut C F1, Prison Block"										} -- s16
   ,{	19,								"Building 1 F1, West Entrance"									} -- s17
   ,{	20,								"Building 1 F1, Mess Hall"										} -- s18
   ,{	21,								"Building 1 B1, Maintenance"									} -- s19
   ,{	22,								"Building 1 B1, Maintenance Worker's Office"					} -- s19a
   ,{	23,								"West Connecting Bridge"										} -- s20
   ,{	24,								"East Connecting Bridge"										} -- s21
   ,{	25,								"Main Access Bridge"											} -- s22
   ,{	26,								"Building 2 F1, Rec Room"										} -- s23
   ,{	27,								"Building 2 F2, Library"										} -- s24
   ,{	28,								"Building 5 F2, Admin"											} -- s25
   ,{	29,								"Building 5 F2, North Bridge Room"								} -- s25a
   ,{	30,								"Building 5 F2, West Bridge Room"								} -- s25b
   ,{	31,								"Warehouse F1, Main Corridor"									} -- s26
   ,{	32,								"Warehouse F1, Storage Rooms"									} -- s26a
   ,{	33,								"Warehouse F2, Roof"											} -- s26b
   ,{	34,								"Warehouse F1, Main Hall"										} -- s27
   ,{	35,								"Warehouse to Comm Tower Connecting Bridge"						} -- s28
   ,{	36,								"Comm Tower F1, Entrance"										} -- s29
   ,{	37,								"Building 3 F2, Reception"										} -- s30a
   ,{	38,								"Building 3 F2, Surgical Wards"									} -- s30b
   ,{	39,								"Building 3 F2, Private Rooms"									} -- s30c
   ,{	40,								"Building 3 F1, Hospital Wards"									} -- s31a
   ,{	41,								"Building 3 F1, Main Ward"										} -- s31b
   ,{	42,								"Comm Tower F2"													} -- s29a
   ,{	43,								"Comm Tower B1, Elevator Room"									} -- s29b
   ,{	44,								"Comm Tower B1, Storage"										} -- s29c
   ,{	45,								"Helipad Bridge"												} -- s32
   ,{	46,								"Helipad"														} -- s33
   ,{	47,								"Helipad"														} -- s34
   ,{	48,								"Building 1 F1, Kitchen"										} -- s17a
   
   ,{	100,							"It's empty."													}
   ,{	101,							"I don't know the code."										}
   ,{	102,							"It's locked."													}
   ,{	103,							"There's a \"Cabby\" sticker stuck to the door."				}
   ,{	104,							"It's a three code security system."							}
   ,{	105,							"Looks like the security terminal for the main door."			}
   ,{	106,							"I don't have the clearance card."								}
   ,{	107,							"Some idiot's forgotten to lock it!"							}
   ,{	108,							"Looks like a remotely controlled sealed door."					}
   ,{	109,							"I can't open it from here."									}
   ,{	110,							"I overheard some guards saying there was some"					}
   ,{	111,							"storm damage on the main access bridge."						}
   ,{	112,							"This must be what they were talking about."					}
   ,{	113,							"Huh, I didn't realise Tony Wilson was a prisoner here!?"		}
   ,{	114,							"99930. I'd better make a note of that."						}
   ,{	115,							"Another number written in blood."								}
   ,{	116,							"42135. It must be important."									}
   ,{	117,							"I've already got the helicopter part."							}
   ,{	118,							"The door is rusted shut!"										}
   ,{	119,							"I'm going to need something to loosen it."						}
   ,{	120,							"This DW80 should do the trick."								}
   ,{	121,							"It's screwed shut."											}
   ,{	122,							"I'll need something to open the panel."						}
   ,{	123,							"The thread's gone on this one."								}
   ,{	124,							"Looks like there's no power to this door."						}
   ,{	125,							"There must be a way to turn it on."							}
   ,{	126,							"I think I've found my way outta here."							}
   ,{	127,							"An HGA attack helicopter!"										}
   ,{	128,							"I flew one of those bad boys in the army."						}
   ,{	129,							"Looks like it's in working order."								}
   ,{	130,							"Son of a bitch.  There's a part missing"						}
   ,{	131,							"from the main instruments panel."								}
   ,{	132,							"I'm fucking out of here."										}
   ,{	133,							"Nothing useful."												}
   ,{	134,							"It's another swipe card system."								}
   ,{	135,							"I don't have the Level 2 clearance card."						}
   ,{	136,							"I don't have the Level 3 clearance card."						}
   ,{	137,							"Nothing happens when I push the button."						}
   ,{	138,							"I think the lift has power now."								}
   ,{	139,							"The main fuse has blown."										}
   ,{	140,							"I'll have to find a replacement."								}
   ,{	141,							"It's a Level 2 door."											}
   ,{	142,							"It's a Level 3 door."											}
   ,{	143,							"I think the power is on."										}
   ,{	144,							"Looks like a thumb print scanner to unlock the office."		}
   ,{	145,							"There's no way my thumb print will work."						}
   ,{	146,							"The surgery should be unlocked now."							}
   ,{	147,							"I can use this severed hand."									}
   ,{	148,							"It says \"See reception for access\"."							}
   ,{	149,							"There's something here."										}
   ,{	150,							"The panel is broken."											}
   ,{	151,							"I'll just use one fuse."										}
   ,{	152,							"There's a box here."											}
   ,{	153,							"The label says \"To: Detective David Mills\""					}
   ,{	154,							"Locked...but I'm hungry damn it!"								}
   ,{	155,							"I bet he had the special."										}
   ,{	156,							"Man, they really went to town on"								}
   ,{	157,							"this unlucky son of a bitch!"									}
   ,{	158,							"It says \"Follow the Key Master\"."							}
   ,{	159,							"This is the access computer to the surgery."					}
   ,{	160,							"There's a clipboard here."										}
   ,{	161,							"I think these are numbers, but I can't work them out."			}
   ,{	162,							"Must be a different clearance level."							}
   ,{	163,							"The thumb print on this severed hand"							}
   ,{	164,							"doesn't seem to work here."									}
   ,{	165,							"I've pressed the unlock button."								}
   ,{	166,							"Nothing seems to have happened."								}
   ,{	167,							"It's a Level 1 door."											}
   ,{	168,							"All Level 1 doors should be unlocked."							}
   ,{	169,							"All Level 2 doors should be unlocked."							}
   ,{	170,							"All Level 3 doors should be unlocked."							}
   ,{	171,							"I've already used this card swipe."							}
   ,{	172,							"There must be some keys around here somewhere."				}
   ,{	173,							"I could swear I picked up some locker keys."					}
   ,{	174,							"I think it's broken."											}
   ,{	175,							"There's nothing else of any interest."							}
   ,{	176,							"The log book mentioned the part that is missing."				}
   ,{	177,							"I need to find the replacement in the Warehouse."				}
   ,{	178,							"This is my ticket out of here!"								}
   ,{	179,							"I'd better unscrew the panel first."							}
   ,{	180,							"Everything looks in order.  I'd better try another one."		}
   ,{	181,							"There's no need."												}
   ,{	182,							"This fuse box won't open without a flat-head screwdriver."		}
   ,{	183,							"It must be a different model than all the others."				}
   ,{	184,							"Wait a minute, these look like my medical notes!"				}
   ,{	185,							"Doctor-patient confidentiality my arse!"						}
   ,{	186,							"Sweet, I should be able to plan my escape with these!"			}
   ,{	187,							"The door should be unlocked."									}
   ,{	188,							"Looks like a thumb print scanner to the Medical Lab."			}
   ,{	189,							"Huh, not an uncommon sight!"									}
   ,{	190,							"Where's the maintenance guy when you need him?"				}
   ,{	191,							"Lucky bastard..."												}
   ,{	192,							"Some people can sleep through anything!"						}
   ,{	193,							"The door should be open now."									}
   ,{	194,							"I need to find out what's missing."							}
   ,{	195,							"Then find a replacement."										}
   ,{	196,							"I'm sure I have the part for this."							}
   ,{	197,							"I'm not thirsty."												}
   ,{	198,							"There's one hell of a floater stuck in there, and no"			}
   ,{	199,							"I'm not going to try and pick it up."							}
   ,{	210,							"That's a drastic way to cure constipation."					}
   
	-- random lines in warehouse
	,{	200,							"Don't they ever throw stuff away!"								}
	,{	201,							"It all just looks like junk to me."							}
	,{	202,							"Not sure what all this stuff is."								}
	,{	203,							"Bits and bobs."												}
	,{	204,							"Nothing useful that I can see."								}
	,{	205,							"\"Rubber chickens with a pulley in the middle\""				}
 
    -- use items wrong choices
   ,{	300,							"Er...no."											}
   ,{	301,							"That doesn't work."								}
   ,{	302,							"I can't use this with that."						}
   ,{	303,							"Nothing happened."									}
   ,{	304,							"This is of no use here."							}
   ,{	305,							"Er, that's not going to work."						}
   
   -- cutscene intro
   ,{	400,							"You may proceed."												}
   ,{	401,							""																}
   
   ,{	402,							"It's time to wake up now...number 84."							}
   ,{	403,							""																}
   
   -- cutscene outro
   ,{	500,							"This is most unexpected, and beyond anything any"				}
   ,{	501,							"of our other test subjects have achieved."						}

   ,{	502,							"Yes I understand your concerns, but I have no"					}
   ,{	503,							"reason to believe that he suspects a thing."					}

   ,{	504,							"Yes, I have informed our friends and they are excited by"		}
   ,{	505,							"the possibilities.  The sacrifices have been worth it."		}

   ,{	506,							"No, leave him for now.  I would like to see"					}
   ,{	507,							"what happens if he reaches the mainland."						}
   
   ,{	508,							"Oh don't worry about that, I will take full responsibility"	}
   ,{	509,							"and personally oversee the next phase.  Trust me, Doctor."		}
   
   -- item pickups
   
   -- Locker 1 paper
	,{	1000,							"It's a piece of paper."										}
	,{	1001,							"There are some numbers scribbled on it."						}
   -- Handgun
   ,{	1002,							"You've found a HG4 automatic pistol."							}
   ,{	1003,							"You can equip this at any time in the inventory."				}
   -- Level 1 clearance card
   ,{	1004,							"It's a security swipe card."									}
   ,{	1005,							"It's got \"LVL1\" written on it."								}
   -- Locker 4 Clipboard
   ,{	1006,							"It's a clipboard with some numbers written on it."				}
   ,{	1007,							"1, 5 and 1.  I wonder what they're for?"						}
   
   -- Fuse
   ,{	1008,							"It looks like a packet of electrical fuses."					}
   ,{	1009,							"I'd better hang on to these just in case."						}
   
    -- Locker 4 (blue) key
   ,{	1010,							"Keys to a locker, I'd better take these."						}
   ,{	1011,							"It's got a handsome \"Cabby\" key ring!"						}
   
    -- Shotgun
   ,{	1012,							"You've found a G-W357 shotgun."								}
   ,{	1013,							"I can really do some damage with this!"						}
   
   -- Level 3 clearance
   ,{	1014,							"Looks like it's for level 3 clearance."						}
   ,{	1015,							"The pockets are empty."										}
   
   -- hidden tokens
   ,{	1016,							"Hidden Token #1"												}
   ,{	1017,							"Hidden Token #2"												}
   ,{	1018,							"Hidden Token #3"												}
   ,{	1019,							"Hidden Token #4"												}
   ,{	1020,							"Hidden Token #5"												}
   
   ,{	1021,							"Those guys should be in here with me."							}

	-- head hunter 1   
   ,{	1022,							"Prisoner 36, Fernandes."										}
   ,{	1023,							"Head Hunter #1."												}
   -- head hunter 2 
   ,{	1024,							"Officer Gibson"												}
   ,{	1025,							"Head Hunter #2."												}
	-- head hunter 3 
   ,{	1026,							"Prisoner 165, Ibanez"											}
   ,{	1027,							"Head Hunter #3."												}
	-- head hunter 4 
   ,{	1028,							"Prisoner 26, Ramirez"											}
   ,{	1029,							"Head Hunter #4."												}
	-- head hunter 5 
   ,{	1030,							"Warden Gunton"													}
   ,{	1031,							"He's never looked better."										}
   
   -- pilots log book
   ,{	1032,							"It's a grey clipboard with a pilot's flight log attached"		}
   ,{	1033,							"to it.  It says the Illudium Q-36 needs replacing."			}
   
   -- severed hand
   ,{	1034,							"It's an officer's hand."										}
   
   -- power relay 
   ,{	1035,							"Ok, this is the part mentioned in the pilot's"					}
   ,{	1036,							"flight log.  I'd better take it with me."						}
   
   -- screwdriver
   ,{	1037,							"A cross-head screwdriver."										}
   ,{	1038,							"This is going to be useful."									}
   
   -- red locker key
   ,{	1039,							"It's a red locker key."										}
   
	-- level 2 keycard
   ,{	1042,							"It must be my lucky day!"										}
   ,{	1043,							"He's got a level 2 key-card on him!"							}
   
   -- safe code paper
   ,{	1044,							"There's a scrap of paper in here.  A memo?"					}
   ,{	1045,							"It mentions a safe combination, \"25-50-75\"."					}

   -- mobile phone
   ,{	1046,							"It's a mobile phone.  The last text message says..."			}
   ,{	1047,							"\"nu warehouse storage r%m code iz 75717\""					}

   -- flashlight
   ,{	1048,							"There's also a flashlight in here."							}
   
   -- dw80
   ,{	1049,							"I've found some DW80."											}
   ,{	1050,							"This place is rusty, so I'll take it with me."					}
   
   -- rope
   ,{	1051,							"I'd say it's about 30 feet of rope.  This is an"				}
   ,{	1052,							"adventure game so I bet this will be really useful!"			}
   
   ,{	1054,							"It's disgusting, but it might just be useful."					}
   
   
   -- inventory descriptions (order matters)
   ,{	2000,							"A flashlight"												}
   ,{	2001,							""															}
   
   ,{	2002,							"A packet of electrical fuses"								}
   ,{	2003,							""															}

   ,{	2004,							"A red clipboard with a handwritten memo attached to it."	}
   ,{	2005,							"It says \"...the new code will be 1,5,1\""					}
   
   ,{	2006,							"A piece of paper with the"									}
   ,{	2007,							"numbers \"22522\" scribbled on it"							}
   
   ,{	2008,							"A mobile phone.  The last text message says..."			}
   ,{	2009,							"\"nu warehouse storage r%m code iz 75717\""				}

   ,{	2010,							"A can of DW80"												}
   ,{	2011,							"Still some left"											}
   
   ,{	2012,							"A blue locker key with #4 written on it."					}
   ,{	2013,							"There's also a \"Cabby\" key ring attached."				}
   
   ,{	2014,							"A green locker key"										}
   ,{	2015,							""															}

   ,{	2016,							"A red locker key"											}
   ,{	2017,							""															}
   
   ,{	2018,							"Level 1 Security Swipe Card"								}
   ,{	2019,							""															}
   
   ,{	2020,							"Level 2 Security Swipe Card"								}
   ,{	2021,							""															}

   ,{	2022,							"Level 3 Security Swipe Card"								}
   ,{	2023,							""															}

   ,{	2024,							"An electrical power relay unit.  This one's"				}
   ,{	2025,							"for a helicopter's instruments panel."						}

   ,{	2026,							"A grey clipboard with a pilot's flight log attached to it."}
   ,{	2027,							"The part is to be delivered to the Warehouse Storage Rooms."}
   
   ,{	2028,							"An officer's severed hand.  I bet I can use his"			}
   ,{	2029,							"thumb print on one of those security thumb scanners!"		}

   ,{	2030,							"A memo from the Warden.  It says the combination on"		}
   ,{	2031,							"the gun safe in the Mess Hall is now \"25-50-75\"."		}

   ,{	2032,							"A cross-head screwdriver."									}
   ,{	2033,							""															}
   
   ,{	2034,							"30 feet of rope."											}
   ,{	2035,							""															}
   
   -- collectables
   ,{	3000,							"HG4 Automatic Pistol"								}
   ,{	3001,							""													}

   ,{	3002,							"G-W357 shotgun"									}
   ,{	3003,							""													}
   
   ,{	3004,							"Prisoner 84 Psychological Profile"					}
   ,{	3005,							""													}
   
   ,{	3006,							"Hidden Token"										}
   ,{	3007,							""													}

   ,{	3008,							"Prisoner 36, Fernandes"							}
   ,{	3009,							"Head Hunter #1 (of 5)"								}
   
   ,{	3010,							"Officer Gibson"									}
   ,{	3011,							"Head Hunter #2 (of 5)"								}
   
   ,{	3012,							"Prisoner 165, Ibanez"								}
   ,{	3013,							"Head Hunter #3 (of 5)"								}

   ,{	3014,							"Prisoner 26, Ramirez"								}
   ,{	3015,							"Head Hunter #4 (of 5)"								}

   ,{	3016,							"Warden Gunton"										}
   ,{	3017,							"Head Hunter #5 (of 5)"								}
   
   ,{	3018,							"None found"										}
   ,{	3019,							"1 of 5 found"										}
   ,{	3020,							"2 of 5 found"										}
   ,{	3021,							"3 of 5 found"										}
   ,{	3022,							"4 of 5 found"										}
   ,{	3023,							"5 of 5 found"										}
   
   -- costumes (collectables)
   ,{	3024,							"Costume #1 (of 5)"									}
   ,{	3025,							"Inmate Clothes"									}
   
   ,{	3026,							"Costume #2 (of 5)"									}
   ,{	3027,							"Maintenance Worker's Uniform"						}
   
   ,{	3028,							"Costume #3 (of 5)"									}
   ,{	3029,							"Birthday Suit"										}
   
   ,{	3030,							"Costume #4 (of 5)"									}
   ,{	3031,							"\"Dave Angel\" Leather Biker Jacket"				}
   
   ,{	3032,							"Costume #5 (of 5)"									}
   ,{	3033,							"Hidden Tattoo!"									}
   
   ,{	3034,							"Costume #6 (of 5)"									}
   ,{	3035,							"Assassin's Suit"									}
   
   ,{	3036,							"Costume #7 (of 5)"									}
   ,{	3037,							"Classic Prison Stripes"							}
   
   ,{	3038,							"Costume #8 (of 5)"									}
   ,{	3039,							"Rainbow Shirt"										}
   
   ,{	3040,							"Costume #9 (of 5)"									}
   ,{	3041,							"Stealth Suit"										}
   
   -- hidden docs (titles)
   ,{	4000,							"DOCUMENT #1: \"SOLITARY TRANSFER\""				}
   ,{	4001,							"DOCUMENT #2: \"PRISONER TRANSFER\""				}
   ,{	4002,							"DOCUMENT #3: \"A WORRYING DEVELOPMENT\""			}
   ,{	4003,							"DOCUMENT #4: \"TREATMENT BEGINS\""					}
   ,{	4004,							"DOCUMENT #5: \"MEDICAL HISTORY\""					}   
   ,{	4005,							"NEXT"												} 
   ,{	4006,							"PREVIOUS"											} 
   
  -- front end ui
   ,{	5000,							"PRISONER 84"										}
   ,{	5001,							"Start"												}
   ,{	5002,							"About"												}   
   ,{	5003,							"Options"											}    
   ,{	5004,							"Continue"											}  
   ,{	5005,							"New Game"											}   
   ,{	5006,							"Past Ranking"										}     
   ,{	5007,							"Yes"												}   
   ,{	5008,							"No"												}      
   ,{	5009,							"Are you sure?"										}     
   ,{	5010,							"BACK"												}    
   ,{	5011,							"CREDITS"											}    
   ,{	5012,							"OPTIONS MENU"										}    
   ,{	5013,							"Hidden Games are"									}    
   ,{	5014,							"Gareth West & John Murray"							}    
   ,{	5015,							"Title Music by"									}   
   ,{	5016,							"Ian Tomlinson & Michael Lehane"					}    
   ,{	5017,							"© Hidden Games"									}
   ,{	5018,							"EXIT"												}
   ,{	5019,							"DRAG ITEM TO ROTATE / PINCH TO ZOOM"   			}


-- front end options
   ,{	5020,							"Control Style:"									} 
   ,{	5021,							"LEFT HANDED"										} 
   ,{	5022,							"RIGHT HANDED"										} 
   ,{	5023,							"Controls Layout:"									}
  ,{	5024,							"More Games"                                        }

   
-- game over ui
   ,{	5040,							"CONGRATULATIONS!!"									}
   ,{	5041,							"Total Time:"										}
   ,{	5042,							"Bodycount:"										}
   ,{	5043,							"Rank"												}  
   
-- loading
   ,{	5060,							"LOADING"											}
   
-- game options
   ,{	5080,							"QUIT GAME"											}
   ,{	5081,							"RESUME GAME"                                       }
   ,{	5082,							"PAUSE MENU"										}  
   ,{	5083,							"Smooth Camera:"									}
   ,{	5084,							"Noise Filter:"										}
   ,{	5085,							"Experimental FPS Mode:"							}
   ,{	5086,							"OFF"												}
   ,{	5087,							"ON"												}  
   
-- inventory   
   ,{	6000,							"INVENTORY"											} 
   ,{	6001,							"WEAPONS/COLLECTABLES"								}   

-- hidden docs 
	-- intro
   ,{	6020,							"So, here I am again, stuck in solitary confinement on-board Tryton - an"		}  
  ,{	6021,							"offshore prison for the criminally insane. Am I insane, who knows?"			}
  ,{	6022,							"All I know is if I don't get out of this cell soon I might just go crazy! And"	}  
  ,{	6023,							"this storm is my chance, once the power goes out I can make my move!"			}

	-- doc 1 page 1
  ,{	6040,							"Prisoner 84 continues to show signs of deep spiralling depression, together "		}
  ,{	6041,							"with paranoid delusions and a general loss of touch with reality. His"				}
  ,{	6042,							"violence towards other inmates most notably prisoners 26 (Ramirez) and"			}
  ,{	6043,							"36 (Fernandes) and the guards, is worsening; I can only guess that this is"		}
  ,{	6044,							"due to his prolonged incarceration at Tryton Prison."								}

  ,{	6045,							"A more recent incident which has been brought to my attention saw"					}
  ,{	6046,							"prisoner 84 attack prisoner 165 (Ibanez) in the Mess Hall, after a row"			}
  ,{	6047,							"where 84 was convinced that the Mess Hall was infested with spiders."				}
  ,{	6048,							"Another sign of 84's paranoid hallucinations perhaps?"								}

	-- doc 1 page 2
  ,{	6049,							"My recommendation is that prisoner 84 be put into Solitary Confinement"			}
  ,{	6050,							"until we can re-establish communication with the mainland in order to get"			}
  ,{	6051,							"his full medical history. Only then will I be able to ascertain the best"			}
  ,{	6052,							"course of treatment to, in the very least, curb his violent outbursts."			}

  ,{	6053,							"Dr. N. C. Jimenez, 13/09/2020"														}

	-- doc 2 page 1
  ,{	6060,							"Prisoner 84 has been moved to Prison Block A due to the damage he"						}
  ,{	6061,							"caused in his cell in Block B. The prisoner had been cutting himself and"				}
  ,{	6062,							"leaving bloodied messages all over the walls."											}

  ,{	6063,							"Just recently he lost so much blood that he had to be taken to the Medical"			}
  ,{	6064,							"Lab for an emergency transfusion. During this time some of my colleagues"				}
  ,{	6065,							"claimed that he had an episode where he was convinced that all of the"					}
  ,{	6066,							"doctors treating him were \"undead\", and that he could \"see them decaying"			}
  ,{	6067,							"in front of him\"."																	}

	-- doc 2 page 2
  ,{	6068,							"My colleagues weren't sure if this episode was brought on by the blood loss, "			}
  ,{	6069,							"or whether it was something else entirely. Either way, another incident like"			}
  ,{	6070,							"this and prisoner 84 will most definitely be transferred to Solitary."					}

  ,{	6071,							"Dr. N. C. Jimenez, 27/03/2020"															}

	-- doc 3 page 1
  ,{	6080,							"Having tried the usual methods of medication and regular courses of"					} 
  ,{	6081,							"therapy without any real success during our most recent session I"						}
  ,{	6082,							"decided to try hypnosis on prisoner 84 to see if we might shed some light"				}
  ,{	6083,							"on some his recent behaviour. For the most part he remained"							}
  ,{	6084,							"unresponsive, but towards the end he began muttering the following to"					}
  ,{	6085,							"himself over and over again..."														}

  ,{	6086,							"\"The book of the dead. It has the answers. If you read it in time, before"			}
  ,{	6087,							"they get to you, there may still be a chance..."										}

	-- doc 3 page 2
  ,{	6088,							"\"...I wish I had realised sooner what was going on. All those years they had"			}
  ,{	6089,							"me, I should have known something wasn't right."										}

  ,{	6090,							"Try to remember!\""																		}

	-- doc 3 page 3
  ,{	6091,							"It's hard to say if this was genuine or merely an act to undermine my"					}
  ,{	6092,							"attempts to help him. In any case, I request that the guards keep a close"				}	
  ,{	6093,							"eye on prisoner 84 and to keep me informed of any unusual behaviour. If it"			}
  ,{	6094,							"was indeed genuine then I would have to say that it is a particularly"					}
  ,{	6095,							"worrying development."																	}

  ,{	6096,							"Dr. N. C. Jimenez, 03/11/2019"															}
	
	-- doc 4 page 1
  ,{	6100,							"Following our unsuccessful attempts to contact the mainland in order to"				}
  ,{	6101,							"gain access to his full medical history, today I decided to proceed"					}
  ,{	6102,							"cautiously with prisoner 84's treatment until communications can be"					}
  ,{	6103,							"re-established. However, without a proper history I have to say my hands"				}
  ,{	6104,							"are tied somewhat."																	}

  ,{	6105,							"My first impression of 84 is that he appears to be showing early signs of"				}
  ,{	6106,							"PTSD, but then this is to be expected and indeed is not uncommon"						}
  ,{	6107,							"among military veterans."																}

	-- doc 4 page 2
  ,{	6108,							"Now the quarantine phase of all new inmates has ended, I see no reason"				}
  ,{	6109,							"why prisoner 84 can't be introduced into general population along with the"			}
  ,{	6110,							"others. I see nothing to suggest that he will be a danger to himself, the"				}
  ,{	6111,							"guards or any of the other inmates, providing he is placed on our usual "				}
  ,{	6112,							"course of medication for PTSD."														}

  ,{	6113,							"Dr. N. C. Jimenez, 18/10/2019"															}

	-- doc 5 page 1
  ,{	6120,							"It has come my attention that prisoner 84's records are either incomplete or"			}
  ,{	6121,							"missing. So far all we know is that he was a highly decorated solider during"			}
  ,{	6122,							"the war, and that he was part of a highly classified military project known"			}
  ,{	6123,							"only as \"Project 7\"."																}

  ,{	6124,							"Considering that his incarceration was at the request of the military, I was"			}
  ,{	6125,							"wondering if it would be beneficial for us to contact whoever it was who"				}
  ,{	6126,							"sent 84 here in order to request that his full medical history be sent to us"			}
  ,{	6127,							"as soon as possible?"																	}

	-- doc 5 page 2
  ,{	6128,							"I just thought I'd let you know, as you can imagine I am hesitant to"					}
  ,{	6129,							"commence treatment without a thorough history."										}

  ,{	6130,							"Dr. N. C. Jimenez, 22/09/2019"															}
  
  -- ending 2
  ,{	6160,							"A soldier does not fear death. On the battlefield a soldier is surrounded by"			}  
  ,{	6161,							"death, it's simply a part of what they do, an occupational hazard."					} 

  -- ending 3
  ,{	6162,							"There are early indications in some of our test subjects that if you can get a"		}
  ,{	6163,							"soldier to truly fear death, this altered mental state can be manipulated to"			}
  ,{	6164,							"create the perfect killing machine. So the question is: how do you make a"				} 
  ,{	6165,							"soldier truly fear death?"																}

  -- ending 4
  ,{	6166,							"The answer lies in our creation of the \"undead\". If you can make a soldier"			}
  ,{	6167,							"believe that the enemy they are fighting is \"undead\" then they leave reality"		}
  ,{	6168,							"and react with their primal instincts."												}

  -- ending 5
  ,{	6169,							"To test this theory funding for \"Project 7\" has been given the go ahead."			}  
  ,{	6170,							"However, we still need an adequate environment to realistically test this"				}  
  ,{	6171,							"theory without risking the safety of the public."										}

  -- ending 6
  ,{	6172,							"It is with this in mind that I will recommend to our advisers that subject 84"			}
  ,{	6173,							"be handed over into the care of Dr. Jimenez at Tryton Prison, but under no"			}
  ,{	6174,							"circumstances is the doctor, or indeed his staff, to be informed of our little"		}
  ,{	6175,							"experiment."																			}

  ,{	6176,							"Colonel Larson"																		}
  
  
  -- ending 2 corrupt
  ,{	7160,							"A soldier does not fear death. On the £££££££££££££££ is ££££££ by"	    		    }  
  ,{	7161,							"£££££, it's simply a part of what they do, an ££££££££££££££££ ."					    } 

  -- ending 3 corrupt
  ,{	7162,							"There are early indications in some of our £££££££££££££ if you can get a"             }
  ,{	7163,							"soldier to ££££££££££££ , this £££££££££££££ can be £££££££££ to"	    		        }
  ,{	7164,							"create £££££££££££££££££££ . So the question is: how do you make a"                    } 
  ,{	7165,							"£££££££££££££££££ ?"																    }

  -- ending 4 corrupt
  ,{	7166,							"The answer lies in our creation of £££££££££. If you can make a soldier"		    	}
  ,{	7167,							"believe ££££££££££££££££££££ is ££££££ then they £££££££££££"		                    }
  ,{	7168,							"and ££££££££££££££££££££ ."												            }

  -- ending 5 corrupt
  ,{	7169,							"To test this theory funding for \"Project 7\" has been given the go ahead."			}  
  ,{	7170,							"However, we £££££££££ an ££££££££££££££ to realistically test this"				    }  
  ,{	7171,							"theory without £££££££££££££££££££££ ."										        }

  -- ending 6 corrupt
  ,{	7172,							"It is with this in mind that I will ££££££££££££££££ that £££££££"			            }
  ,{	7173,							"be £££££££££ into £££££££££££££££ at Tryton Prison, but ££££££"			            }
  ,{	7174,							"££££££££££££££££££ , or ££££££££££££££££££££££££££"					                }
  ,{	7175,							"££££££££££ ."																			}

  ,{	7176,							"Colonel Larson"																		} 

  -- testers
  ,{	8000,							"Special Thanks"																		} 	
  
  ,{	8001,							"Nate Goodwin"																			}   
  ,{	8002,							"Exact-Psience"																			} 
  ,{	8003,							""																						} 
  ,{	8004,							""																						} 
  ,{	8005,							""																						} 
  ,{	8006,							"Terry Stone"																			} 
  ,{	8007,							"Somerandomdude"																		} 
  ,{	8008,							""																						} 
  ,{	8009,							""																						} 
  ,{	8010,							""																						}   
  
  -- glyphs
  ,{	9000,							"3"																						} -- Hidden Logo
  ,{	9001,							"i"																						} -- Achievement Glyph
  ,{	9002,							"k"																						} -- Rate
  ,{	9003,							"l"																						} -- Options
  ,{	9004,							"H"																						} -- About
 
	-- web link
,	{	10000,							"http://www.hiddengames.co.uk/games" } -- more games
,	{	10001,							"http://www.hiddengames.co.uk/prisoner84" } -- home
 
}

function RegisterStringResources()

	return resourceList;

end
