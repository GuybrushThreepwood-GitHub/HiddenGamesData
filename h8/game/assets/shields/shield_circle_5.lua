

function shield_circle_5( posX, posY )

	-- Basic setup
	
	local body2Def = 
	{
		type = b2_dynamicBody;
		positionX = posX;
		positionY = posY;
		gravityScale = 0.0;
		numeric1 = 205;			-- hgm lookup (see model_resources.lua)
		numeric2 = 5;			-- number of shield pieces
		numeric3 = 1;			-- rotation speed (increase until it feels right)
		numeric4 = SHAPE_CIRCLE;-- shape id
		numeric5 = -9999;		
	}
	local body2Ptr = CreateBody( body2Def )
	
	CreatePolygonShape( body2Ptr, circle5_tri_1 )
	CreatePolygonShape( body2Ptr, circle5_tri_2 )
	CreatePolygonShape( body2Ptr, circle5_tri_3 )
    CreatePolygonShape( body2Ptr, circle5_tri_4 )
    CreatePolygonShape( body2Ptr, circle5_tri_5 )
	
	SetMassFromShapes( body2Ptr )

	-- create joint
	center_x, center_y = GetBodyWorldCenter( body2Ptr )

	local jointPtr = CreateRevoluteJoint( groundPtr, body2Ptr, center_x, center_y, globalRevoluteJoint )

	return body2Ptr, jointPtr
end
