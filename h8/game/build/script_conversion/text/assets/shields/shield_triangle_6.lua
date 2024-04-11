

function shield_triangle_6( posX, posY )

	-- Basic setup
	
	local body2Def = 
	{
		type = b2_dynamicBody;
		positionX = posX;
		positionY = posY;
		gravityScale = 0.0;
		numeric1 = 306;			-- hgm lookup (see model_resources.lua)
		numeric2 = 6;			-- number of shield pieces
		numeric3 = 1;			-- rotation speed (increase until it feels right)
		numeric4 = SHAPE_TRIANGLE;-- shape id
		numeric5 = -9999;		
	}
	local body2Ptr = CreateBody( body2Def )
	
	CreatePolygonShape( body2Ptr, triangle6_tri_1 )
	CreatePolygonShape( body2Ptr, triangle6_tri_2 )
	CreatePolygonShape( body2Ptr, triangle6_tri_3 )
    CreatePolygonShape( body2Ptr, triangle6_tri_4 )
    CreatePolygonShape( body2Ptr, triangle6_tri_5 )
    CreatePolygonShape( body2Ptr, triangle6_tri_6 )
	
	SetMassFromShapes( body2Ptr )

	-- create joint
	center_x, center_y = GetBodyWorldCenter( body2Ptr )

	local jointPtr = CreateRevoluteJoint( groundPtr, body2Ptr, center_x, center_y, globalRevoluteJoint )

	return body2Ptr, jointPtr
end
