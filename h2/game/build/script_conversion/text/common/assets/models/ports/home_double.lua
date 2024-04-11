

function SetupHomex3( posX, posY )

	-- create body
	local bodyDef = 
	{
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )
	
	CreateBoxShape( bodyPtr, HomeDouble_mainBody )	

	return bodyPtr
end
