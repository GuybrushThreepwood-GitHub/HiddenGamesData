
-- ### RULES ###
-- only supply the filename, not the extension, this can be changed on the fly based on the device


-- ### MAG FILTERS ###
-- GL_NEAREST
-- GL_LINEAR

-- ### MIN FILTERS ###
-- GL_NEAREST (doesn't use mipmaps)
-- GL_LINEAR (doesn't use mipmaps)
-- GL_NEAREST_MIPMAP_NEAREST
-- GL_NEAREST_MIPMAP_LINEAR
-- GL_LINEAR_MIPMAP_NEAREST
-- GL_LINEAR_MIPMAP_LINEAR

local magFilter = GL_LINEAR
local minFilter = GL_LINEAR --_MIPMAP_LINEAR

local resourceList = 
{  
	-- id							filename                                                        preload		magFilter			minFilter
    {	-100,						"assets/textures/fx/fx",                  						true,		magFilter,			minFilter	}
,    {	-99,						"assets/textures/fx/water_01",                  				true,		magFilter,			minFilter	}

-- RESERVED	
--,  {	0,							"",                  											true,		magFilter,			minFilter	}
-- RESERVED	
	
	-- customer skins
,    {	1,							"assets/textures/customers/african_high",                  		true,		magFilter,			minFilter	}
,    {	2,							"assets/textures/customers/african_medium",                  	true,		magFilter,			minFilter	}
,    {	3,							"assets/textures/customers/african_low",                  		true,		magFilter,			minFilter	}
,    {	4,							"assets/textures/customers/caucasian_high",                  	true,		magFilter,			minFilter	}
,    {	5,							"assets/textures/customers/caucasian_medium",                  	true,		magFilter,			minFilter	}
,    {	6,							"assets/textures/customers/caucasian_low",                  	true,		magFilter,			minFilter	}
,    {	7,							"assets/textures/customers/parcel_1",                  			true,		magFilter,			minFilter	}
,    {	8,							"assets/textures/customers/parcel_2",                  			true,		magFilter,			minFilter	}
,    {	9,							"assets/textures/customers/parcel_3",                  			true,		magFilter,			minFilter	}
,    {	10,							"assets/textures/customers/parcel_4",                  			true,		magFilter,			minFilter	}

    --bg/skies
,    {	1000,						"assets/textures/bg/neutral_day_1",                             false,		magFilter,			minFilter	}
,    {	1001,						"assets/textures/bg/neutral_afternoon_1",                       false,		magFilter,			minFilter	}
,    {	1002,						"assets/textures/bg/neutral_night_1",                           false,		GL_NEAREST,			GL_NEAREST	}

,    {	1100,						"assets/textures/bg/warm_day_1",                                false,		magFilter,			minFilter	}
,    {	1101,						"assets/textures/bg/warm_afternoon_1",                          false,		magFilter,			minFilter	}
,    {	1102,						"assets/textures/bg/warm_night_1",                              false,		GL_NEAREST,			GL_NEAREST	}

,    {	1200,						"assets/textures/bg/cold_day_1",                                false,		magFilter,			minFilter	}
,    {	1201,						"assets/textures/bg/cold_afternoon_1",                          false,		magFilter,			minFilter	}
,    {	1202,						"assets/textures/bg/cold_night_1",                              false,		GL_NEAREST,			GL_NEAREST	}

,    {	1300,						"assets/textures/bg/space_1",                                   false,		GL_NEAREST,			GL_NEAREST	}

,    {	1400,						"assets/textures/bg/underwater_1",                              false,		magFilter,			minFilter	}

,    {	1500,						"assets/textures/bg/sunset_1",                                  false,		magFilter,			minFilter	}

    --detail maps
,    {	2000,						"assets/textures/detail/dm_generic_1",                          false,		GL_NEAREST,			GL_NEAREST	}
,    {	2001,						"assets/textures/detail/dm_cracked_1",                          false,		GL_NEAREST,			GL_NEAREST	}
,    {	2002,						"assets/textures/detail/dm_cracked_2",                          false,		GL_NEAREST,			GL_NEAREST	}

,    {	3000,						"assets/textures/tvos/appletv_title_1920x1080",                 false,		GL_LINEAR,			GL_LINEAR	}

    -- world edge frames
,    {	90001,                      "assets/textures/fx/anim/electricity_01",             			true,		magFilter,			minFilter	}
,    {	90002,                      "assets/textures/fx/anim/electricity_02",             			true,		magFilter,			minFilter	}
,    {	90003,                      "assets/textures/fx/anim/electricity_03",             			true,		magFilter,			minFilter	}
,    {	90004,                      "assets/textures/fx/anim/electricity_04",             			true,		magFilter,			minFilter	}
,    {	90005,                      "assets/textures/fx/anim/electricity_05",             			true,		magFilter,			minFilter	}
,    {	90006,                      "assets/textures/fx/anim/electricity_06",             			true,		magFilter,			minFilter	}
,    {	90007,                      "assets/textures/fx/anim/electricity_07",             			true,		magFilter,			minFilter	}
,    {	90008,                      "assets/textures/fx/anim/electricity_08",             			true,		magFilter,			minFilter	}
,    {	90009,                      "assets/textures/fx/anim/electricity_09",             			true,		magFilter,			minFilter	}
,    {	90010,                      "assets/textures/fx/anim/electricity_10",             			true,		magFilter,			minFilter	}

}

function RegisterTextureResources()

	return resourceList;

end


