
function plonkermobile_PhysicsSetup()
	LoadScript( "assets/models/vehicles/plonkermobile_physdef.b2d" )
	
	-- create the main body
	local bodyDef = 
	{
		fixedRotation = false;
	}
	bodyPtr = CreateBody( bodyDef )
	
	-- create the extra shapes
	CreateBoxShape( bodyPtr, plonkermobile_mainBody )
	CreateBoxShape( bodyPtr, plonkermobile_upperBody )
	
	local massData = 
	{
		mass = 1.5;
		centerX = 0.0;
		centerY = 0.0;
		I = 1.0;
	}	
	SetBodyMass( bodyPtr, massData )
	--SetMassFromShapes( bodyPtr )
	
	-- return the main body pointer
	return bodyPtr
end
