
function ateamvan_PhysicsSetup()
	LoadScript( "assets/models/vehicles/teamavan_physdef.b2d" )
	
	-- create the main body
	local bodyDef = 
	{
		fixedRotation = false;
	}
	bodyPtr = CreateBody( bodyDef )
	
	-- create the extra shapes
	CreateBoxShape( bodyPtr, ateamvan_mainBody )
	CreateBoxShape( bodyPtr, ateamvan_upperBody )
	
	local massData = 
	{
		mass = 2.5;
		centerX = 0.0;
		centerY = 0.0;
		I = 1.0;
	}	
	SetBodyMass( bodyPtr, massData )
	--SetMassFromShapes( bodyPtr )
	
	-- return the main body pointer
	return bodyPtr
end
