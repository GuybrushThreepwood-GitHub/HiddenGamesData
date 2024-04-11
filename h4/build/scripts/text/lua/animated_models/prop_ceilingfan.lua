
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
CEILINGFAN_SPIN = 0

local bindResource = 
{
	-- 	filename										cull radius					magFilter					minFilter
	{	"hga/prop_ceilingfan_bind.hga",					2.0,						GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_ceilingfan_spin.hga",					CEILINGFAN_SPIN,			true 							}
}

function prop_ceilingfan()

	return animationList, bindResource;

end