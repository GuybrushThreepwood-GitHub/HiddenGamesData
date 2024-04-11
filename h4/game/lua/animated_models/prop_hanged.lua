
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
HANGED_SWAY = 0

local bindResource = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga/prop_hanged_bind.hga",		1.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}

local bindResourceHi = 
{
	-- 	filename						cull radius			magFilter			minFilter							
	{	"hga-hi/prop_hanged_bind.hga",		1.0,				GL_NEAREST,			GL_NEAREST_MIPMAP_NEAREST			}
}


local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_hanged_sway.hga",						HANGED_SWAY,				true 							}
}

function prop_hanged()

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
