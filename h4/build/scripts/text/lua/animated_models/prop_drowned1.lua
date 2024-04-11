
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
DROWNED1_FLOAT = 0

local bindResource = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga/prop_drowned1_bind.hga",		1.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}

local bindResourceHi = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga-hi/prop_drowned1_bind.hga",		1.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_drowned1_float.hga",						DROWNED1_FLOAT,				true 							}
}

function prop_drowned1()

	local list = nil
	local res = nil
	
	if( GetHiResMode() == 1 ) then
		list = animationList
		res = bindResourceHi
	else
		list = animationList
		res = bindResource		
	end
	
	return list, res;
	
end
