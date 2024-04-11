
-- vehicle setup

local VehicleDefinition = 
{
	aircraftName = 102;

	physicsData = "assets/models/aircraft/seaplane_seapig.ode";

	modelFile = 40;
	modelFileUI = 47;
	modelFileShadow = 46;
	
	minSpeed = 90.0;
	maxSpeed = 300.0;
	accelerate = 30.0;
	decelerate = 40.0;
	
	rotSpeedX = 50.0;
	rotSpeedY = 40.0;
	rotSpeedZ = 60.0;	
	
	maxRotXAngle = 45.0;
	maxRotZAngle = 25.0;

	bulletSpeed = 850.0;
	maxBulletDistance = 2000.0;
	bulletRate = 0.15;
	bulletLife = 2.0;
	
	rudder = 
	{
		modelFile = 41;
		posX = 0.0;
		posY = -0.368;
		posZ = -4.352;
		maxRotY = 30.0;		
		rotSpeedY = 50.0;
	};
	
	tail_left_flap = 
	{
		modelFile = 42;
		posX = 0.904;
		posY = -0.713;
		posZ = -4.056;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	tail_right_flap = 
	{
		modelFile = 43;
		posX = -0.904;
		posY = -0.713;
		posZ = -4.056;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_left_flap = 
	{
		modelFile = 44;
		posX = 2.435;
		posY = -0.225;
		posZ = 0.898;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_right_flap = 
	{
		modelFile = 45;
		posX = -2.435;
		posY = -0.225;
		posZ = 0.898;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};
    
    -- generic parts
    prop_model = 
	{
		modelFile = 90;
		posX = 0.0;
		posY = 0.649;
		posZ = 2.523;
	};
    
    muzzleflash_model = 
	{
		modelFile = 91;
		posX = 0.0;
		posY = -0.597;
		posZ = 4.591;
	};
	
	exhaust1 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = 0.525;
		posY = 0.788;
		posZ = 1.614;		
	};	
	
	exhaust2 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = -0.525;
		posY = 0.788;
		posZ = 1.614;	
	};	
	
	wing_air_slice1 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = 4.997;
		posY = -0.143;
		posZ = 0.775;		
	};
	
	wing_air_slice2 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = -4.997;
		posY = -0.143;
		posZ = 0.775;	
	};	
}

function seaplane_seapig_Definition( vehicleDataPointer )

	SetupVehicle( vehicleDataPointer, VehicleDefinition )
	
end
