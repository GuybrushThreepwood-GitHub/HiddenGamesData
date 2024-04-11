

function SetupEnemySentry( posX, posY )

	-- sentry
	
	local bodyDef = 
	{
		applyGravity = false;
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )

	CreateCircleShape( bodyPtr, sentry_mainBody )			

	SetMassFromShapes( bodyPtr )

	return bodyPtr
end
