
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

-- sprites should be in an atlas of some sort
-- possibly per area if they cannot all go into one small-ish file

local resourceList = 
{
	-- id								texture id			pixel X			pixel Y			width	height		texWidth    texHeight
   -- smoke (1-8)
    {	1,								-100,				0,  			448, 			64,		64,			512,        512	}
   ,{	2,								-100,				64,				448, 			64,		64,			512,        512	}
   ,{	3,								-100,				128,			448, 			64,		64,			512,        512	}
   ,{	4,								-100,				192,			448, 			64,		64,			512,        512	}
   ,{	5,								-100,				256,			384, 			128,	128,		512,        512	} -- plume
--   ,{	6,								-100,				320,			448, 			64,		64,			512,        512	}
--   ,{	7,								-100,				384,			448, 			64,		64,			512,        512	}
--   ,{	8,								-100,				448,			448, 			64,		64,			512,        512	}

   -- fire (9-16)
   ,{	9,								-100,				0,		   		384, 			64,		64,			512,        512	}
   ,{	10,								-100,				64,				384, 			64,		64,			512,        512	}
   ,{	11,								-100,				128,			384, 			64,		64,			512,        512	}
   ,{	12,								-100,				192,			384, 			64,		64,			512,        512	}
--   ,{	13,								-100,				256,			384, 			64,		64,			512,        512	}
--   ,{	14,								-100,				320,			384, 			64,		64,			512,        512	}
--   ,{	15,								-100,				384,			384, 			64,		64,			512,        512	}
--   ,{	16,								-100,				448,			384, 			64,		64,			512,        512	}

    -- water (17-24)
   ,{	17,								-100,				0,		   		320, 			64,		64,			512,        512	}
   ,{	18,								-100,				64,				320, 			64,		64,			512,        512	}
   ,{	19,								-100,				384,			384, 			128,	128,		512,        512	} -- plume
   ,{	20,								-100,               0,			    256, 			128,	64,			512,        512	} -- vapour (rectangle)
--   ,{	21,								-100,				256,			320, 			64,		64,			512,        512	}
--   ,{	22,								-100,				320,			320, 			64,		64,			512,        512	}
--   ,{	23,								-100,				384,			320, 			64,		64,			512,        512	}
--   ,{	24,								-100,				448,			320, 			64,		64,			512,        512	}

   -- lights (25-32)
   ,{	25,								-100,				0,		    	192, 			64,		64,			512,        512	}
   ,{	26,								-100,				64,				192, 			64,		64,			512,        512	}
   ,{	27,								-100,				128,			192, 			64,		64,			512,        512	}
   ,{	28,								-100,				192,			192, 			64,		64,			512,        512	}
   ,{	29,								-100,				256,			192, 			64,		64,			512,        512	}
   ,{	30,								-100,				320,			192, 			64,		64,			512,        512	}
   ,{	31,								-100,				384,			192, 			64,		64,			512,        512	}
--   ,{	32,								-100,				448,			192, 			64,		64,			512,        512	}

   -- glass shards/debris (33-40)
   ,{	33,								-100,				0,		    	128, 			64,		64,			512,        	}
   ,{	34,								-100,				64,				128, 			64,		64,			512,        512	}
   ,{	35,								-100,				128,			128, 			64,		64,			512,        512	}
   ,{	36,								-100,				192,			128, 			64,		64,			512,        512	}
   ,{	37,								-100,				256,			128, 			64,		64,			512,        512	}
   ,{	38,								-100,				320,			128, 			64,		64,			512,        512	}
--   ,{	39,								-100,				384,			128, 			64,		64,			512,        512	}
--   ,{	40,								-100,				448,			128, 			64,		64,			512,        512	}

    -- misc large (41-48)
   ,{	41,								-100,				0,			    64, 			64,		64,			512,        512	} -- crosshair (target)
--   ,{	42,								-100,				64,			    64, 			64,		64,			512,        512	}
--   ,{	43,								-100,				128,            64, 			64,		64,			512,        512	}
--   ,{	44,								-100,				192,            64, 			64,		64,			512,        512	}
--   ,{	45,								-100,				256,            64, 			64,		64,			512,        512	}
--   ,{	46,								-100,				320,            64, 			64,		64,			512,        512	}
--   ,{	47,								-100,				384,            64, 			64,		64,			512,        512	}
--   ,{	48,								-100,				448,            64, 			64,		64,			512,        512	}
    
    -- misc small sprites (57 - 88)
   ,{	57,								-100,				0,				32, 			32,		32,			512,        512	} -- snowflake
   ,{	58,								-100,				32,				32, 			32,		32,			512,        512	} -- star
--   ,{	59,								-100,				64,				32, 			32,		32,			512,        512	}
--   ,{	60,								-100,				96,				32, 			32,		32,			512,        512	}
--   ,{	61,								-100,				128,			32, 			32,		32,			512,        512	}
--   ,{	62,								-100,				160,			32, 			32,		32,			512,        512	}
--   ,{	63,								-100,				192,			32, 			32,		32,			512,        512	}
--   ,{	64,								-100,				224,			32, 			32,		32,			512,        512	}
--   ,{	65,								-100,				256,			32, 			32,		32,			512,        512	}
--   ,{	66,								-100,				288,			32, 			32,		32,			512,        512	}
--   ,{	67,								-100,				320,			32, 			32,		32,			512,        512	}
--   ,{	68,								-100,				352,			32, 			32,		32,			512,        512	}
--   ,{	69,								-100,				384,			32, 			32,		32,			512,        512	}
--   ,{	70,								-100,				416,			32, 			32,		32,			512,        512	}
--   ,{	71,								-100,				448,			32, 			32,		32,			512,        512	}
--   ,{	72,								-100,				480,			32, 			32,		32,			512,        512	}

--   ,{	73,								-100,				0,				0, 	    		32,		32,			512,        512	}
--   ,{	74,								-100,				32,				0, 	    		32,		32,			512,        512	}
--   ,{	75,								-100,				64,				0, 	    		32,		32,			512,        512	}
--   ,{	76,								-100,				96,				0, 	    		32,		32,			512,        512	}
--   ,{	77,								-100,				128,			0, 	    		32,		32,			512,        512	}
--   ,{	78,								-100,				160,			0, 	    		32,		32,			512,        512	}
--   ,{	79,								-100,				192,			0, 	    		32,		32,			512,        512	}
--   ,{	80,								-100,				224,			0, 	       		32,		32,			512,        512	}
--   ,{	81,								-100,				256,			0, 	    		32,		32,			512,        512	}
--   ,{	82,								-100,				288,			0, 	    		32,		32,			512,        512	}
--   ,{	83,								-100,				320,			0, 	    		32,		32,			512,        512	}
--   ,{	84,								-100,				352,			0, 	    		32,		32,			512,        512	}
--   ,{	85,								-100,				384,			0, 	    		32,		32,			512,        512	}
--   ,{	86,								-100,				416,			0, 	    		32,		32,			512,        512	}
--   ,{	87,								-100,				448,			0, 	    		32,		32,			512,        512	}
--   ,{	88,								-100,				480,			0, 	    		32,		32,			512,        512	}

   -- green trees, etc.
   ,{	100,							-90,				0,				256, 	    	256,	256,		512,        512	}
   ,{	101,							-90,				0,			    0,              256,	256,		512,        512	}
   ,{	102,							-90,				256,            384,            128,    128,		512,        512	}
   ,{	103,							-90,				384,			384, 	    	128,	128,		512,        512	}
   ,{	104,							-90,				256,		    256,            128,	128,		512,        512	}
   ,{	105,							-90,				384,			256,            128,    128,		512,        512	}
   ,{	106,							-90,				256,			128,            128,    128,		512,        512	}
   ,{	107,							-90,				384,		    128, 	    	128,	128,		512,        512	}
   ,{	108,							-90,				256,			  0,            128,	128,		512,        512	}
   ,{	109,							-90,				384,              0,            128,    128,		512,        512	}
   
   -- arctic trees, etc.
   ,{	120,							-91,				0,				256, 	    	256,	256,		512,        512	}
   ,{	121,							-91,				0,			    0,              256,	256,		512,        512	}
   ,{	122,							-91,				256,            384,            128,    128,		512,        512	}
   ,{	123,							-91,				384,			384, 	    	128,	128,		512,        512	}
   ,{	124,							-91,				256,		    256,            128,	128,		512,        512	}
   ,{	125,							-91,				384,			256,            128,    128,		512,        512	}
   ,{	126,							-91,				256,			128,            128,    128,		512,        512	}
   ,{	127,							-91,				384,		    128, 	    	128,	128,		512,        512	}
   ,{	128,							-91,				256,			  0,            128,	128,		512,        512	}
   ,{	129,							-91,				384,              0,            128,    128,		512,        512	}

   -- desert trees, etc.
   ,{	130,							-92,				0,				256, 	    	256,	256,		512,        512	}
   ,{	131,							-92,				0,			    0,              256,	256,		512,        512	}
   ,{	132,							-92,				256,            384,            128,    128,		512,        512	}
   ,{	133,							-92,				384,			384, 	    	128,	128,		512,        512	}
   ,{	134,							-92,				256,		    256,            128,	128,		512,        512	}
   ,{	135,							-92,				384,			256,            128,    128,		512,        512	}
   ,{	136,							-92,				256,			128,            128,    128,		512,        512	}
   ,{	137,							-92,				384,		    128, 	    	128,	128,		512,        512	}
   ,{	138,							-92,				256,			  0,            128,	128,		512,        512	}
   ,{	139,							-92,				384,              0,            128,    128,		512,        512	}

}
function RegisterSpriteResources()

	return resourceList;

end


