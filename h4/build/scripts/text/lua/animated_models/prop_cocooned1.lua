
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
COCOONED1_BREATH = 0
COCOONED1_WRIGGLE = 1

local bindResource = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga/prop_cocooned1_bind.hga",	2.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_cocooned1_breath.hga",				COCOONED1_BREATH,			true 							},
	{	"hga/prop_cocooned1_wriggle.hga",				COCOONED1_WRIGGLE,			false 							}
}

function prop_cocooned1()

	return animationList, bindResource;

end
