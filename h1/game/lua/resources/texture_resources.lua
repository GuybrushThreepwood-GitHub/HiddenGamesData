
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
    
    --sprites
    {	-100,						"assets/sprites/fx",                                            true,		magFilter,			minFilter	}
,    {	-90,						"assets/sprites/green",                                         false,		magFilter,			minFilter	}
,    {	-91,						"assets/sprites/arctic",                                        false,		magFilter,			minFilter	}
,    {	-92,						"assets/sprites/desert",                                        false,		magFilter,			minFilter	}

-- RESERVED	
--,  {	0,							"",                  											true,		magFilter,			minFilter	}
-- RESERVED	

    --gates
,    {	50,							"assets/models/gates/textures/gates_timeattack_normal_1",              false,		magFilter,			minFilter	}
,    {	51,							"assets/models/gates/textures/gates_timeattack_normal_2",              false,		magFilter,			minFilter	}
,    {	52,							"assets/models/gates/textures/gates_timeattack_normal_3",              false,		magFilter,			minFilter	}
,    {	53,							"assets/models/gates/textures/gates_timeattack_normal_4",              false,		magFilter,			minFilter	}

,    {	54,							"assets/models/gates/textures/gates_timeattack_startfinish_1",         false,		magFilter,			minFilter	}
,    {	55,							"assets/models/gates/textures/gates_timeattack_startfinish_2",         false,		magFilter,			minFilter	}
,    {	56,							"assets/models/gates/textures/gates_timeattack_startfinish_3",         false,		magFilter,			minFilter	}
,    {	57,							"assets/models/gates/textures/gates_timeattack_startfinish_4",         false,		magFilter,			minFilter	}
	
    --bg/skies
,    {	1001,						"assets/textures/skies/sky1",                                   false,		magFilter,			minFilter	}
,    {	1002,						"assets/textures/skies/sky2",                                   false,		magFilter,			minFilter	}
,    {	1003,						"assets/textures/skies/sky3",                                   false,		magFilter,			minFilter	}
,    {	1004,						"assets/textures/skies/sky4",                                   false,		magFilter,			minFilter	}
,    {	1005,						"assets/textures/skies/sky5",                                   false,		magFilter,			minFilter	}

    --detail maps
,    {	2000,						"assets/textures/detail/dm_generic_1",                          false,		magFilter,			minFilter	}
,    {	2001,						"assets/textures/detail/dm_cracked_1",                          false,		magFilter,			minFilter	}
,    {	2002,						"assets/textures/detail/dm_cracked_2",                          false,		magFilter,			minFilter	}

    --worldedge grid
,    {	3001,						"assets/models/fx/textures/worldedge_grid_01",                  false,		GL_NEAREST,			GL_NEAREST	}
,    {	3002,						"assets/models/fx/textures/worldedge_grid_02",                  false,		GL_NEAREST,			GL_NEAREST	}
,    {	3003,						"assets/models/fx/textures/worldedge_grid_03",                  false,		GL_NEAREST,			GL_NEAREST	}
,    {	3004,						"assets/models/fx/textures/worldedge_grid_04",                  false,		GL_NEAREST,			GL_NEAREST	}
,    {	3005,						"assets/models/fx/textures/worldedge_grid_05",                  false,		GL_NEAREST,			GL_NEAREST	}
,    {	3006,						"assets/models/fx/textures/worldedge_grid_06",                  false,		GL_NEAREST,			GL_NEAREST	}
}

function RegisterTextureResources()

	return resourceList;

end


