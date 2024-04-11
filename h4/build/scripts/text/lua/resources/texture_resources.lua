
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

local resourceList = 
{  
	-- id								filename                                                        preload		magFilter			minFilter
{	-100,								"textures/fx",                  								true,		GL_LINEAR,			GL_LINEAR	}

-- player
,    {	0,								"hga-hi/textures/player-costume1",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	1,								"hga-hi/textures/player-costume1-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	2,								"hga-hi/textures/player-costume2",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	3,								"hga-hi/textures/player-costume2-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	4,								"hga-hi/textures/player-costume3",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	5,								"hga-hi/textures/player-costume3-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	6,								"hga-hi/textures/player-costume4",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	7,								"hga-hi/textures/player-costume4-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	8,								"hga-hi/textures/player-costume5",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	9,								"hga-hi/textures/player-costume5-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	10,								"hga-hi/textures/player-costume6",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	11,								"hga-hi/textures/player-costume6-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	12,								"hga-hi/textures/player-costume7",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	13,								"hga-hi/textures/player-costume7-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	14,								"hga-hi/textures/player-costume8",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	15,								"hga-hi/textures/player-costume8-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	16,								"hga-hi/textures/player-costume9",                  			false,		GL_LINEAR,			GL_LINEAR	}
,   {	17,								"hga-hi/textures/player-costume9-blood",                  		false,		GL_LINEAR,			GL_LINEAR	}
,   {	18,								"hga-hi/textures/weapons",                  					true,		GL_LINEAR,			GL_LINEAR	}

-- enemy skins
--,   {	100,							"hga-hi/textures/guard-african-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	101,							"hga-hi/textures/guard-african-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	100,							"hga-hi/textures/guard-african-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	101,							"hga-hi/textures/guard-african-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	104,							"hga-hi/textures/guard-african-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	105,							"hga-hi/textures/guard-african-grey-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	102,							"hga-hi/textures/guard-african-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	103,							"hga-hi/textures/guard-african-grey-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	108,							"hga-hi/textures/guard-asian-black-normal",						false,		GL_LINEAR,			GL_LINEAR	}
--,   {	109,							"hga-hi/textures/guard-asian-black-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	104,							"hga-hi/textures/guard-asian-black-zombie",						false,		GL_LINEAR,			GL_LINEAR	}
,   {	105,							"hga-hi/textures/guard-asian-black-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	112,							"hga-hi/textures/guard-asian-grey-normal",						false,		GL_LINEAR,			GL_LINEAR	}
--,   {	113,							"hga-hi/textures/guard-asian-grey-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	106,							"hga-hi/textures/guard-asian-grey-zombie",						false,		GL_LINEAR,			GL_LINEAR	}
,   {	107,							"hga-hi/textures/guard-asian-grey-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	116,							"hga-hi/textures/guard-caucasian-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	117,							"hga-hi/textures/guard-caucasian-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	108,							"hga-hi/textures/guard-caucasian-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	109,							"hga-hi/textures/guard-caucasian-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	120,							"hga-hi/textures/guard-caucasian-blonde-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	121,							"hga-hi/textures/guard-caucasian-blonde-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	122,							"hga-hi/textures/guard-caucasian-blonde-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	123,							"hga-hi/textures/guard-caucasian-blonde-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	124,							"hga-hi/textures/guard-caucasian-brown-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	125,							"hga-hi/textures/guard-caucasian-brown-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	126,							"hga-hi/textures/guard-caucasian-brown-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	127,							"hga-hi/textures/guard-caucasian-brown-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	128,							"hga-hi/textures/guard-caucasian-ginger-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	129,							"hga-hi/textures/guard-caucasian-ginger-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	130,							"hga-hi/textures/guard-caucasian-ginger-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	131,							"hga-hi/textures/guard-caucasian-ginger-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	132,							"hga-hi/textures/guard-caucasian-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	133,							"hga-hi/textures/guard-caucasian-grey-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	110,							"hga-hi/textures/guard-caucasian-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	111,							"hga-hi/textures/guard-caucasian-grey-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	136,							"hga-hi/textures/inmate-african-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	137,							"hga-hi/textures/inmate-african-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	112,							"hga-hi/textures/inmate-african-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	113,							"hga-hi/textures/inmate-african-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	140,							"hga-hi/textures/inmate-african-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	141,							"hga-hi/textures/inmate-african-grey-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	114,							"hga-hi/textures/inmate-african-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	115,							"hga-hi/textures/inmate-african-grey-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	144,							"hga-hi/textures/inmate-asian-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	145,							"hga-hi/textures/inmate-asian-black-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	116,							"hga-hi/textures/inmate-asian-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	117,							"hga-hi/textures/inmate-asian-black-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	148,							"hga-hi/textures/inmate-asian-grey-normal",						false,		GL_LINEAR,			GL_LINEAR	}
--,   {	149,							"hga-hi/textures/inmate-asian-grey-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	118,							"hga-hi/textures/inmate-asian-grey-zombie",						false,		GL_LINEAR,			GL_LINEAR	}
,   {	119,							"hga-hi/textures/inmate-asian-grey-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	152,							"hga-hi/textures/inmate-caucasian-black-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	153,							"hga-hi/textures/inmate-caucasian-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	120,							"hga-hi/textures/inmate-caucasian-black-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	121,							"hga-hi/textures/inmate-caucasian-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	156,							"hga-hi/textures/inmate-caucasian-blonde-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	157,							"hga-hi/textures/inmate-caucasian-blonde-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	158,							"hga-hi/textures/inmate-caucasian-blonde-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	159,							"hga-hi/textures/inmate-caucasian-blonde-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	160,							"hga-hi/textures/inmate-caucasian-brown-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	161,							"hga-hi/textures/inmate-caucasian-brown-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	162,							"hga-hi/textures/inmate-caucasian-brown-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	163,							"hga-hi/textures/inmate-caucasian-brown-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	164,							"hga-hi/textures/inmate-caucasian-ginger-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	165,							"hga-hi/textures/inmate-caucasian-ginger-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	166,							"hga-hi/textures/inmate-caucasian-ginger-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	167,							"hga-hi/textures/inmate-caucasian-ginger-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	168,							"hga-hi/textures/inmate-caucasian-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	169,							"hga-hi/textures/inmate-caucasian-grey-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	122,							"hga-hi/textures/inmate-caucasian-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	123,							"hga-hi/textures/inmate-caucasian-grey-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	172,							"hga-hi/textures/mworker-african-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	173,							"hga-hi/textures/mworker-african-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	124,							"hga-hi/textures/mworker-african-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	125,							"hga-hi/textures/mworker-african-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	176,							"hga-hi/textures/mworker-african-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	177,							"hga-hi/textures/mworker-african-grey-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	126,							"hga-hi/textures/mworker-african-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	127,							"hga-hi/textures/mworker-african-grey-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	180,							"hga-hi/textures/mworker-asian-black-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	181,							"hga-hi/textures/mworker-asian-black-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	128,							"hga-hi/textures/mworker-asian-black-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	129,							"hga-hi/textures/mworker-asian-black-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	184,							"hga-hi/textures/mworker-asian-grey-normal",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	185,							"hga-hi/textures/mworker-asian-grey-normal-bm",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	130,							"hga-hi/textures/mworker-asian-grey-zombie",					false,		GL_LINEAR,			GL_LINEAR	}
,   {	131,							"hga-hi/textures/mworker-asian-grey-zombie-bm",					false,		GL_LINEAR,			GL_LINEAR	}
--,   {	188,							"hga-hi/textures/mworker-caucasian-black-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	189,							"hga-hi/textures/mworker-caucasian-black-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
,   {	132,							"hga-hi/textures/mworker-caucasian-black-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	133,							"hga-hi/textures/mworker-caucasian-black-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	192,							"hga-hi/textures/mworker-caucasian-blonde-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	193,							"hga-hi/textures/mworker-caucasian-blonde-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	194,							"hga-hi/textures/mworker-caucasian-blonde-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	195,							"hga-hi/textures/mworker-caucasian-blonde-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	196,							"hga-hi/textures/mworker-caucasian-brown-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	197,							"hga-hi/textures/mworker-caucasian-brown-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	198,							"hga-hi/textures/mworker-caucasian-brown-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	199,							"hga-hi/textures/mworker-caucasian-brown-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	200,							"hga-hi/textures/mworker-caucasian-ginger-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	201,							"hga-hi/textures/mworker-caucasian-ginger-normal-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	202,							"hga-hi/textures/mworker-caucasian-ginger-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	203,							"hga-hi/textures/mworker-caucasian-ginger-zombie-bm",			false,		GL_LINEAR,			GL_LINEAR	}
--,   {	204,							"hga-hi/textures/mworker-caucasian-grey-normal",				false,		GL_LINEAR,			GL_LINEAR	}
--,   {	205,							"hga-hi/textures/mworker-caucasian-grey-normal-bm",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	134,							"hga-hi/textures/mworker-caucasian-grey-zombie",				false,		GL_LINEAR,			GL_LINEAR	}
,   {	135,							"hga-hi/textures/mworker-caucasian-grey-zombie-bm",				false,		GL_LINEAR,			GL_LINEAR	}

,   {	200,							"hgm-hi/items/textures/disembodied-head-african-black",			false,		GL_LINEAR,			GL_LINEAR	}
,   {	201,							"hgm-hi/items/textures/disembodied-head-african-black-zombie",	false,		GL_LINEAR,			GL_LINEAR	}
,   {	202,							"hgm-hi/items/textures/disembodied-head-african-grey",			false,		GL_LINEAR,			GL_LINEAR	}
,   {	203,							"hgm-hi/items/textures/disembodied-head-african-grey-zombie",	false,		GL_LINEAR,			GL_LINEAR	}
,   {	204,							"hgm-hi/items/textures/disembodied-head-asian-black",			false,		GL_LINEAR,			GL_LINEAR	}
,   {	205,							"hgm-hi/items/textures/disembodied-head-asian-black-zombie",	false,		GL_LINEAR,			GL_LINEAR	}
,   {	206,							"hgm-hi/items/textures/disembodied-head-asian-grey",			false,		GL_LINEAR,			GL_LINEAR	}
,   {	207,							"hgm-hi/items/textures/disembodied-head-asian-grey-zombie",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	208,							"hgm-hi/items/textures/disembodied-head-caucasian-black",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	209,							"hgm-hi/items/textures/disembodied-head-caucasian-black-zombie",false,		GL_LINEAR,			GL_LINEAR	}
,   {	210,							"hgm-hi/items/textures/disembodied-head-caucasian-blonde",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	211,							"hgm-hi/items/textures/disembodied-head-caucasian-blonde-zombie",false,		GL_LINEAR,			GL_LINEAR	}
,   {	212,							"hgm-hi/items/textures/disembodied-head-caucasian-brown",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	213,							"hgm-hi/items/textures/disembodied-head-caucasian-brown-zombie",false,		GL_LINEAR,			GL_LINEAR	}
,   {	214,							"hgm-hi/items/textures/disembodied-head-caucasian-ginger",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	215,							"hgm-hi/items/textures/disembodied-head-caucasian-ginger-zombie",false,		GL_LINEAR,			GL_LINEAR	}
,   {	215,							"hgm-hi/items/textures/disembodied-head-caucasian-grey",		false,		GL_LINEAR,			GL_LINEAR	}
,   {	216,							"hgm-hi/items/textures/disembodied-head-caucasian-grey-zombie",	false,		GL_LINEAR,			GL_LINEAR	}


,   {	300,							"hga-hi/textures/skeleton",										true,		GL_LINEAR,			GL_LINEAR	}
,   {	301,							"hga-hi/textures/shadow",										true,		GL_LINEAR,			GL_LINEAR	}

,   {	302,							"hga-hi/textures/rope-2",                  						true,		GL_LINEAR,			GL_LINEAR	}
}

function RegisterTextureResources()

	return resourceList;

end


