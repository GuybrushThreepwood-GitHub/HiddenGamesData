gridAnim = 
{
	subMeshIds = { 0,1,2,3,4 };
	animationFrames = 
	{
		{ 0.4, 3001 },
		{ 0.1, 3002 },
		{ 0.1, 3003 },
		{ 0.1, 3004 },
		{ 0.1, 3005 },
		{ 0.4, 3006 },
		{ 0.1, 3005 },
		{ 0.1, 3004 },
		{ 0.1, 3003 },
		{ 0.1, 3002 },
        
	};
}

function GetTextureAnimations()

	local animationList = 
	{
		{ "gridAnim" }
	}

	return animationList;
end