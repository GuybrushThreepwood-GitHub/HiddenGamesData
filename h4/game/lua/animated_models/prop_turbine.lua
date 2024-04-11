
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
TURBINE_SPIN = 0
TURBINE_SPIN2 = 1
TURBINE_SPIN3 = 2

local bindResource = 
{
	-- 	filename										cull radius					magFilter					minFilter
	{	"hga/prop_turbine_bind.hga",					15.0,						GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/prop_turbine_spin.hga",					TURBINE_SPIN,				true 							}
	,{	"hga/prop_turbine_spin2.hga",					TURBINE_SPIN2,				true 							}
	,{	"hga/prop_turbine_spin3.hga",					TURBINE_SPIN3,				true 							}
}

function prop_turbine()

	return animationList, bindResource;

end