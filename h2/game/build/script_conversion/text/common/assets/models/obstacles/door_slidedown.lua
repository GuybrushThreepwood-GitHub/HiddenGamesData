

function SetupDoorSlideDown( posX, posY, motorSpeed )

	-- Down Slide Door
	
	local body2Def = 
	{
		positionX = posX;
		positionY = posY;
	}
	local body2Ptr = CreateBody( body2Def )

	CreateBoxShape( body2Ptr, doorSlide_DownBody )			

	SetMassFromShapes( body2Ptr )

	-- create joint
	center_x, center_y = GetBodyWorldCenter( body2Ptr )
	center_x = center_x + 0.0
	center_y = center_y + 0.0

	doorSlide_DownPrismaticJoint.localAnchor1X = body2Def.positionX
	doorSlide_DownPrismaticJoint.localAnchor1Y = groundOffset + body2Def.positionY
	doorSlide_DownPrismaticJoint.motorSpeed = motorSpeed
	
	local jointPtr = CreatePrismaticJoint( groundPtr, body2Ptr, center_x, center_y, 1.0, 0.0, doorSlide_DownPrismaticJoint )

	return body2Ptr, jointPtr
end
