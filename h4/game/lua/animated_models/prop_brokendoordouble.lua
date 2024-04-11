
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
BROKENDOORDOUBLE_MOVE = 0

local bindResource = 
{
	-- 	filename										cull radius					magFilter					minFilter
	{	"hga/prop_brokendoordouble_bind.hga",			3.0,						GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_brokendoordouble_move.hga",			BROKENDOORDOUBLE_MOVE,		true 							}
}

function prop_brokendoordouble()

	return animationList, bindResource;

end