

function SetupEnemyFish( posX, posY )

	-- fish
	
	local bodyDef = 
	{
		fixedRotation = true;
		applyGravity = false;
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )

	CreateCircleShape( bodyPtr, fish_mainBody )			

	SetMassFromShapes( bodyPtr )

	return bodyPtr
end
