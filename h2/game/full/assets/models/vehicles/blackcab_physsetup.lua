
function blackcab_PhysicsSetup()
	LoadScript( "assets/models/vehicles/blackcab_physdef.b2d" )
	
	-- create the main body
	local bodyDef = 
	{
		fixedRotation = false;
	}
	bodyPtr = CreateBody( bodyDef )
	
	-- create the extra shapes
	CreateBoxShape( bodyPtr, blackcab_upperBody )
	CreateBoxShape( bodyPtr, blackcab_mainBody )
	
	local massData = 
	{
		mass = 1.5;
		centerX = 0.0;
		centerY = 0.0;
		I = 1.0;
	}	
	SetBodyMass( bodyPtr, massData )
	
	-- return the main body pointer
	return bodyPtr
end
