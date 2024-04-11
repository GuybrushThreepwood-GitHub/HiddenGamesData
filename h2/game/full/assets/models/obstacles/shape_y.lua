

function SetupYShape( posX, posY, motorSpeed )

	-- X Shape
	
	local body2Def = 
	{
		positionX = posX;
		positionY = posY;
	}
	local body2Ptr = CreateBody( body2Def )

	CreateBoxShape( body2Ptr, Y_Shape_Vertical )		
	CreateBoxShape( body2Ptr, Y_Shape_LeftAngled )		
	CreateBoxShape( body2Ptr, Y_Shape_RightAngled )	

	SetMassFromShapes( body2Ptr )

	-- create joint
	center_x, center_y = GetBodyWorldCenter( body2Ptr )
	center_x = center_x + 0.0
	center_y = center_y + 0.0

	Y_Shape_RevoluteJoint.localAnchor1X = body2Def.positionX
	Y_Shape_RevoluteJoint.localAnchor1Y = groundOffset + body2Def.positionY
	Y_Shape_RevoluteJoint.motorSpeed = motorSpeed
	
	local jointPtr = CreateRevoluteJoint( groundPtr, body2Ptr, center_x, center_y, Y_Shape_RevoluteJoint )

	return body2Ptr, jointPtr
end
