
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- filenames and filters can be changed to anything at anytime

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

magFilterNormal = GL_NEAREST
minFilterNormal = GL_NEAREST

magFilterTerrain = GL_LINEAR
minFilterTerrain = GL_LINEAR

magFilterUI = GL_NEAREST
minFilterUI = GL_NEAREST

local resourceList = 
{
	-- id					filename											definition file				magFilter					minFilter
	
	-- RESERVED
--	{	-1,					"",													"",							magFilterNormal,			minFilterNormal 		} 
	-- RESERVED

    -- bg (animated)
    {	0,					"assets/bg/overlay.hgm",                            "",							magFilterTerrain,			minFilterTerrain 		}
,   {	1,					"assets/bg/vertical_layer1.hgm",                    "",							magFilterTerrain,			minFilterTerrain 		}
,   {	2,					"assets/bg/vertical_layer2.hgm",                    "",							magFilterTerrain,			minFilterTerrain 		}
,   {	3,					"assets/bg/vertical_layer3.hgm",                    "",							magFilterTerrain,			minFilterTerrain 		}
,   {	4,					"assets/bg/horizontal_layer1.hgm",                  "",							magFilterTerrain,			minFilterTerrain 		}
,   {	5,					"assets/bg/horizontal_layer2.hgm",                  "",							magFilterTerrain,			minFilterTerrain 		}
,   {	6,					"assets/bg/horizontal_layer3.hgm",                  "",							magFilterTerrain,			minFilterTerrain 		}
    
    -- core
,	{	10,					"assets/core/base.hgm",                             "",							magFilterNormal,			minFilterNormal 		}
,	{	11,					"assets/core/petals.hgm",                           "",							magFilterNormal,			minFilterNormal 		}
,	{	12,					"assets/core/pupils.hgm",                           "",							magFilterNormal,			minFilterNormal 		}
,	{	13,					"assets/core/shield.hgm",                           "",							magFilterNormal,			minFilterNormal 		}
,	{	14,					"assets/core/veins.hgm",							"assets/core/veins.lua",	magFilterNormal,			minFilterNormal 		}

    -- data (bits/enemies/bullets)
,	{	100,				"assets/data/bits_generic.hgm",                     "",							magFilterNormal,			minFilterNormal 		}
,	{	101,				"assets/data/bits_triangles.hgm",                   "",							magFilterNormal,			minFilterNormal 		}
,	{	102,				"assets/data/bits_squares.hgm",                     "",							magFilterNormal,			minFilterNormal 		}
,	{	103,				"assets/data/bits_hexagons.hgm",                    "",							magFilterNormal,			minFilterNormal 		}
,	{	104,				"assets/data/bits_octagons.hgm",                    "",							magFilterNormal,			minFilterNormal 		}
,	{	105,				"assets/data/bits_circles.hgm",                     "",							magFilterNormal,			minFilterNormal 		}

,	{	120,				"assets/data/enemies_trojans.hgm",                  "",							magFilterNormal,			minFilterNormal 		}
,	{	121,				"assets/data/enemies_viruses.hgm",                  "",							magFilterNormal,			minFilterNormal 		}
,	{	122,				"assets/data/enemies_bullets.hgm",                  "",							magFilterNormal,			minFilterNormal 		}

    -- circular shields (200)
,	{	202,				"assets/shields/shield_circle_2.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	203,				"assets/shields/shield_circle_3.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	204,				"assets/shields/shield_circle_4.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	205,				"assets/shields/shield_circle_5.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	206,				"assets/shields/shield_circle_6.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	207,				"assets/shields/shield_circle_7.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	208,				"assets/shields/shield_circle_8.hgm",				"",							magFilterNormal,			minFilterNormal 		}

    -- triangular shields (300)
,	{	303,				"assets/shields/shield_triangle_3.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	306,				"assets/shields/shield_triangle_6.hgm",				"",							magFilterNormal,			minFilterNormal 		}
    
    -- square shields (400)
,	{	402,				"assets/shields/shield_square_2.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	404,				"assets/shields/shield_square_4.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	408,				"assets/shields/shield_square_8.hgm",				"",							magFilterNormal,			minFilterNormal 		}

    -- hexagonal shields (500)
,	{	502,				"assets/shields/shield_hexagon_2.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	503,				"assets/shields/shield_hexagon_3.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	506,				"assets/shields/shield_hexagon_6.hgm",				"",							magFilterNormal,			minFilterNormal 		}

    -- octagonal shields (600)    
,	{	602,				"assets/shields/shield_octagon_2.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	604,				"assets/shields/shield_octagon_4.hgm",				"",							magFilterNormal,			minFilterNormal 		}
,	{	608,				"assets/shields/shield_octagon_8.hgm",				"",							magFilterNormal,			minFilterNormal 		}

    -- star (700)
--,	{	702,				"assets/shields/shield_star_2.hgm",                 "",							magFilterNormal,			minFilterNormal 		}
--,	{	704,				"assets/shields/shield_star_4.hgm",                 "",							magFilterNormal,			minFilterNormal 		}
--,	{	706,				"assets/shields/shield_star_6.hgm",                 "",							magFilterNormal,			minFilterNormal 		}
--,	{	712,				"assets/shields/shield_star_12.hgm",                "",							magFilterNormal,			minFilterNormal 		}

    -- ui
,	{	10001,				"assets/ui/mainmenu.hgm",                           "",							magFilterNormal,			minFilterNormal 		}
,	{	10002,				"assets/ui/pausemenu.hgm",                          "",							magFilterNormal,			minFilterNormal 		}
,	{	10003,				"assets/ui/gameover.hgm",                           "",							magFilterNormal,			minFilterNormal 		}
,	{	10004,				"assets/ui/hud.hgm",								"",							magFilterNormal,			minFilterNormal 		}

}

function RegisterModelResources()

	return resourceList;

end


