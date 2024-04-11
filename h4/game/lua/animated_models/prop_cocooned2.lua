
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
COCOONED2_BREATH = 0
COCOONED2_WRIGGLE = 1

local bindResource = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga/prop_cocooned2_bind.hga",	2.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_cocooned2_breath.hga",				COCOONED2_BREATH,			true 							},
	{	"hga/prop_cocooned2_wriggle.hga",				COCOONED2_WRIGGLE,			false 							}
}

function prop_cocooned2()

	return animationList, bindResource;

end
