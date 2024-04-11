
function whodunitmachine_PhysicsSetup()
	LoadScript( "assets/models/vehicles/whodunitmachine_physdef.b2d" )
	
	-- create the main body
	local bodyDef = 
	{
		fixedRotation = false;
	}
	bodyPtr = CreateBody( bodyDef )
	
	-- create the extra shapes
	CreateBoxShape( bodyPtr, whodunitmachine_mainBody )
	CreateBoxShape( bodyPtr, whodunitmachine_upperBody )
	
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
