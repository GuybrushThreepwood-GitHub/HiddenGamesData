
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
CCTV_PAN = 0

local bindResource = 
{
	-- 	filename										cull radius					magFilter					minFilter
	{	"hga/prop_cctv_bind.hga",						0.5,						GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_cctv_pan.hga",						CCTV_PAN,				true 							}
}

function prop_cctv()

	return animationList, bindResource;

end