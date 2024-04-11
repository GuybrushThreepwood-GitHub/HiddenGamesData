
function delorean_PhysicsSetup()
	LoadScript( "assets/models/vehicles/ledorean_physdef.b2d" )
	
	-- create the main body
	local bodyDef = 
	{
		fixedRotation = false;
	}
	bodyPtr = CreateBody( bodyDef )
	
	-- create the extra shapes
	CreateBoxShape( bodyPtr, delorean_mainBody )
	CreateBoxShape( bodyPtr, delorean_upperBody )
	
	local massData = 
	{
		mass = 2.0;
		centerX = 0.0;
		centerY = 0.0;
		I = 1.0;
	}	
	SetBodyMass( bodyPtr, massData )
	--SetMassFromShapes( bodyPtr )
	
	-- return the main body pointer
	return bodyPtr
end
