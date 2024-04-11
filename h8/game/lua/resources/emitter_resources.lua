
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								emitter filename									setup function
	-- explosions
	{	0,								"lua/emitters/pixels_explode_1.lua",				"pixels_explode1_Emitter"						}
,	{	1,								"lua/emitters/pixels_explode_2.lua",				"pixels_explode2_Emitter"						}
	
	-- special
,	{	200,							"lua/emitters/pixels_hearts_1.lua",					"pixels_hearts1_Emitter"						}

}

function RegisterEmitterResources()

	return resourceList;

end


