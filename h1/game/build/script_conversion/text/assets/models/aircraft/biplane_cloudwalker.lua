
-- vehicle setup

local VehicleDefinition = 
{
	aircraftName = 100;
	
	physicsData = "assets/models/aircraft/biplane_cloudwalker.ode";
	
	modelFile = 0;
	modelFileUI = 7;
	modelFileShadow = 6;
	
	minSpeed = 60.0;
	maxSpeed = 200.0;
	accelerate = 40.0;
	decelerate = 50.0;
	
	rotSpeedX = 50.0;
	rotSpeedY = 30.0;
	rotSpeedZ = 60.0;	
	
	maxRotXAngle = 45.0;
	maxRotZAngle = 25.0;
	
	bulletSpeed = 750.0;
	maxBulletDistance = 2000.0;
	bulletRate = 0.15;
	bulletLife = 2.0;
				
	rudder = 
	{
		modelFile = 1;
		posX = 0.0;
		posY = 0.8339;
		posZ = -5.2272;
		maxRotY = 30.0;		
		rotSpeedY = 50.0;
	};
	
	tail_left_flap = 
	{
		modelFile = 2;
		posX = 0.9038;
		posY = 0.4560;
		posZ = -4.9319;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	tail_right_flap = 
	{
		modelFile = 3;
		posX = -0.9038;
		posY = 0.4560;
		posZ = -4.9319;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_left_flap = 
	{
		modelFile = 4;
		posX = 2.3750;
		posY = -0.6256;
		posZ = 0.0228;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_right_flap = 
	{
		modelFile = 5;
		posX = -2.3750;
		posY = -0.6256;
		posZ = 0.0228;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};
    
    -- generic parts
    prop_model = 
	{
		modelFile = 90;
		posX = 0.0;
		posY = -0.1661;
		posZ = 1.6478;
	};
    
    muzzleflash_model = 
	{
		modelFile = 91;
		posX = 0.0;
		posY = 0.542;
		posZ = 3.614;
	};
	
	exhaust1 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = 0.723;
		posY = 0.051;
		posZ = 0.678;		
	};
	
	exhaust2 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = -0.723;
		posY = 0.051;
		posZ = 0.678;		
	};	
	
	wing_air_slice1 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = 5.054;
		posY = 1.089;
		posZ = -0.188;		
	};
	
	wing_air_slice2 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = -5.054;
		posY = 1.089;
		posZ = -0.188;	
	};	
}

function biplane_cloudwalker_Definition( vehicleDataPointer )

	SetupVehicle( vehicleDataPointer, VehicleDefinition )
	
end
