
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

local magFilter = GL_NEAREST
local minFilter = GL_NEAREST --_MIPMAP_LINEAR

local resourceList = 
{  
	-- id							filename                                                        preload		magFilter			minFilter
    
    --sprites
	{	-100,						"assets/sprites/fx",                                            true,		magFilter,			minFilter	}

	--blank frames
,	{	-1,							"assets/textures/blank",										true,		magFilter,			minFilter	}
	
	--core frames
,	{	0,							"assets/core/textures/petal_veins_0",							true,		magFilter,			minFilter	}
,	{	1,							"assets/core/textures/petal_veins_1",							true,		magFilter,			minFilter	}
,	{	2,							"assets/core/textures/petal_veins_2",							true,		magFilter,			minFilter	}
,	{	3,							"assets/core/textures/petal_veins_3",							true,		magFilter,			minFilter	}
,	{	4,							"assets/core/textures/petal_veins_4",							true,		magFilter,			minFilter	}
,	{	5,							"assets/core/textures/petal_veins_5",							true,		magFilter,			minFilter	}
,	{	6,							"assets/core/textures/petal_veins_6",							true,		magFilter,			minFilter	}
,	{	7,							"assets/core/textures/petal_veins_7",							true,		magFilter,			minFilter	}
,	{	8,							"assets/core/textures/petal_veins_8",							true,		magFilter,			minFilter	}
,	{	9,							"assets/core/textures/petal_veins_9",							true,		magFilter,			minFilter	}
,	{	10,							"assets/core/textures/petal_veins_10",							true,		magFilter,			minFilter	}
,	{	11,							"assets/core/textures/petal_veins_11",							true,		magFilter,			minFilter	}
,	{	12,							"assets/core/textures/petal_veins_12",							true,		magFilter,			minFilter	}
,	{	13,							"assets/core/textures/petal_veins_13",							true,		magFilter,			minFilter	}
,	{	14,							"assets/core/textures/petal_veins_14",							true,		magFilter,			minFilter	}
,	{	15,							"assets/core/textures/petal_veins_15",							true,		magFilter,			minFilter	}
,	{	16,							"assets/core/textures/petal_veins_16",							true,		magFilter,			minFilter	}
,	{	17,							"assets/core/textures/petal_veins_17",							true,		magFilter,			minFilter	}
,	{	18,							"assets/core/textures/petal_veins_18",							true,		magFilter,			minFilter	}
 
}

function RegisterTextureResources()

	return resourceList;

end


