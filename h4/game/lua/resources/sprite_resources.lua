
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

-- sprites should be in an atlas of some sort
-- possibly per area if they cannot all go into one small-ish file

local resourceList = 
{
	-- id								texture res id						u Offset		v Offset		width		height			magFilter			minFilter
   {	1,								-100,								0.5,			0.250, 			0.25,		0.25,			GL_LINEAR,			GL_LINEAR	}
 
   -- blood (decals)
   ,{	3,								-100,								0.0,			0.875, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	4,								-100,								0.125,			0.875, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	5,								-100,								0.250,			0.875, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	6,								-100,								0.375,			0.875, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	7,								-100,								0.0,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	8,								-100,								0.125,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	9,								-100,								0.250,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	10,								-100,								0.375,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	11,								-100,								0.0,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	12,								-100,								0.125,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}   
   -- bullet holes (decals)
   ,{	13,								-100,								0.375,			0.5625, 		0.0625,		0.0625,			GL_LINEAR,			GL_LINEAR	}
   ,{	14,								-100,								0.4375,			0.5625, 		0.0625,		0.0625,			GL_LINEAR,			GL_LINEAR	}
   -- hint icon (decals)
   ,{	15,								-100,								0.4380,			0.5, 			0.0625,		0.0625,			GL_LINEAR,			GL_LINEAR	}
   -- sleeping z
   ,{	16,								-100,								0.250,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   -- reserved
   ,{	17,								-100,								0.375,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	18,								-100,								0.0,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	19,								-100,								0.125,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	20,								-100,								0.250,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}   
   -- light shine (particles)
   ,{	21,								-100,								0.5,			0.875, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	22,								-100,								0.625,			0.875, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	23,								-100,								0.750,			0.875, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	24,								-100,								0.875,			0.875, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	25,								-100,								0.5,			0.750, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	26,								-100,								0.625,			0.750, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   -- smoke/steam (particles)
   ,{	27,								-100,								0.750,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	28,								-100,								0.875,			0.750, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	29,								-100,								0.5,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	30,								-100,								0.625,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}   
   ,{	31,								-100,								0.750,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	32,								-100,								0.875,			0.625, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   -- fire (particles)
   ,{	33,								-100,								0.5,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	34,								-100,								0.625,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	35,								-100,								0.750,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	36,								-100,								0.875,			0.5, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   -- plants
   ,{	37,								-100,								0.001,			0.375, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	38,								-100,								0.125,			0.375, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	39,								-100,								0.250,			0.375, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	40,								-100,								0.374,			0.375, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   ,{	41,								-100,								0.001,			0.250, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   
   -- alt lights
   ,{	42,								-100,								0.250,			0.625, 			0.125,		0.124,			GL_LINEAR,			GL_LINEAR	}
   
   -- ant hill
   ,{	43,								-100,								0.125,			0.250, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	44,								-100,								0.251,			0.251, 			0.121,		0.121,			GL_LINEAR,			GL_LINEAR	}
   
   -- tv static
   ,{	45,								-100,								0.003,			0.185, 			0.095,		0.060,			GL_LINEAR,			GL_LINEAR	}
   ,{	46,								-100,								0.003,			0.119, 			0.095,		0.060,			GL_LINEAR,			GL_LINEAR	}
   ,{	47,								-100,								0.003,			0.052, 			0.095,		0.060,			GL_LINEAR,			GL_LINEAR	}
   
   -- phantoms
   ,{	48,								-100,								0.257,			0.007, 			0.234,		0.234,			GL_LINEAR,			GL_LINEAR	}
   
   -- free
   ,{	49,								-100,								0.375,			0.125, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	50,								-100,								0.0,			0.0, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	51,								-100,								0.125,			0.0, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	52,								-100,								0.250,			0.0, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
   ,{	53,								-100,								0.375,			0.0, 			0.125,		0.125,			GL_LINEAR,			GL_LINEAR	}
}
function RegisterSpriteResources()

	return resourceList;

end


