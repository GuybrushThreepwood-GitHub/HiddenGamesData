

function SetupEnemyMine( posX, posY )

	-- mine
	
	local bodyDef = 
	{
		fixedRotation = true;
		applyGravity = false;
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )

	CreateCircleShape( bodyPtr, mine_mainBody )			

	SetMassFromShapes( bodyPtr )

	return bodyPtr
end
