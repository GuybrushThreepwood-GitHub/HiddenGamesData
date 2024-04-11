

function SetupHShape( posX, posY, motorSpeed )

	-- H Shape
	
	local body2Def = 
	{
		positionX = posX;
		positionY = posY;
	}
	local body2Ptr = CreateBody( body2Def )

	CreateBoxShape( body2Ptr, H_Shape_LeftVertical )		
	CreateBoxShape( body2Ptr, H_Shape_Horizontal )	
	CreateBoxShape( body2Ptr, H_Shape_RightVertical )	

	SetMassFromShapes( body2Ptr )

	-- create joint
	center_x, center_y = GetBodyWorldCenter( body2Ptr )
	center_x = center_x + 0.0
	center_y = center_y + 0.0

	H_Shape_RevoluteJoint.localAnchor1X = body2Def.positionX
	H_Shape_RevoluteJoint.localAnchor1Y = groundOffset + body2Def.positionY
	H_Shape_RevoluteJoint.motorSpeed = motorSpeed
	
	local jointPtr = CreateRevoluteJoint( groundPtr, body2Ptr, center_x, center_y, H_Shape_RevoluteJoint )

	return body2Ptr, jointPtr
end
