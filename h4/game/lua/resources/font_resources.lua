
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

-- Filter can be ONLY 
-- GL_NEAREST
-- GL_LINEAR

local resourceList = 
{
	-- id				font filename	
     {	1,				"ttf/acknowtt.ttf"			}
    ,{	2,				"ttf/oldsanssecret.ttf"     }
    ,{	3,				"ttf/abstract.ttf"			}
    ,{	4,				"ttf/04b08.ttf"				}
    ,{	5,				"ttf/base.ttf"				}
    ,{	6,				"ttf/HiddenGlyphs-Regular.ttf"}
    ,{	7,				"ttf/minecraftia.ttf"		}
	
--[[	
   {	1,				"ttf/acknowtt.ttf",		false,			13,	 			GL_NEAREST,		230,		233,		228		}
   ,{	2,				"ttf/oldsansblack.ttf",	true,			16,	 			GL_NEAREST,		230,		233,		228		}
   ,{	3,				"ttf/oldsansblack.ttf",	false,			18,	 			GL_NEAREST,		0,			0,			0		}
   ,{	4,				"ttf/abstract.ttf",		false,			6,	 			GL_LINEAR,		255,		255,		255		}
   ,{	5,				"ttf/abstract.ttf",		false,			6,	 			GL_LINEAR,		252,		140,		0		}  
   ,{	6,				"ttf/acknowtt.ttf",		false,			18,	 			GL_NEAREST,		255,		0,			0		}
   ,{	7,				"ttf/oldsansblack.ttf",	false,			24,	 			GL_NEAREST,		255,		255,		255		}
   ,{	8,				"ttf/04b08.ttf",		false,			8,	 			GL_NEAREST,		255,		255,		255		}
   ,{	9,				"ttf/oldsansblack.ttf",	false,			13,	 			GL_NEAREST,		35,			36,			35		}
   ,{	10,				"ttf/oldsansblack.ttf",	false,			13,	 			GL_NEAREST,		230,		233,		228		}--]]
}

function RegisterFontResources()

	return resourceList;

end


