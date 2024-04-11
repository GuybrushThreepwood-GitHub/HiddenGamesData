
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

-- Filter can be ONLY 
-- GL_NEAREST
-- GL_LINEAR

local resourceList = 
{
	-- id				font filename	
    {	1,				"assets/fonts/OldSansBlack.ttf"			}
,   {	200,            "assets/fonts/HiddenGlyphs-Regular.ttf"	}
}

function RegisterFontResources()

	return resourceList;

end


