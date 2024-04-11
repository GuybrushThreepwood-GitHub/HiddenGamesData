
-- vehicle setup

local VehicleDefinition = 
{
	aircraftName = 101;
	
	physicsData = "assets/models/aircraft/monoplane_sirocco.ode";

	modelFile = 20;
	modelFileUI = 27;
	modelFileShadow = 26;
	
	minSpeed = 100.0;
	maxSpeed = 350.0;
	accelerate = 60.0;
	decelerate = 70.0;
	
	rotSpeedX = 60.0;
	rotSpeedY = 60.0;
	rotSpeedZ = 100.0;	
	
	maxRotXAngle = 45.0;
	maxRotZAngle = 25.0;

	bulletSpeed = 950.0;
	maxBulletDistance = 2000.0;
	bulletRate = 0.15;
	bulletLife = 2.0;
	
	rudder = 
	{
		modelFile = 21;
		posX = 0.0;
		posY = 0.771;
		posZ = -4.171;
		maxRotY = 30.0;		
		rotSpeedY = 50.0;
	};
	
	tail_left_flap = 
	{
		modelFile = 22;
		posX = 0.904;
		posY = 0.426;
		posZ = -3.875;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	tail_right_flap = 
	{
		modelFile = 23;
		posX = -0.904;
		posY = 0.426;
		posZ = -3.875;
		maxRotX = 40.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_left_flap = 
	{
		modelFile = 24;
		posX = 2.435;
		posY = -0.333;
		posZ = 1.079;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};	
	
	wing_right_flap = 
	{
		modelFile = 25;
		posX = -2.435;
		posY = -0.333;
		posZ = 1.079;
		maxRotX = 30.0;		
		rotSpeedX = 80.0;
	};
    
    -- generic parts
    prop_model = 
	{
		modelFile = 90;
		posX = 0.0;
		posY = -0.187;
		posZ = 2.704;
	};
    
    muzzleflash_model = 
	{
		modelFile = 91;
		posX = 0.0;
		posY = 0.542;
		posZ = 4.671;
	};
	
	exhaust1 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = 0.726;
		posY = 0.051;
		posZ = 1.734;		
	};
	
	exhaust2 = 
	{
		useEffect = true;
		effectResId = 0;
		posX = -0.726;
		posY = 0.051;
		posZ = 1.734;		
	};	
	
	wing_air_slice1 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = 5.07;
		posY = -0.33;
		posZ = 0.77;		
	};
	
	wing_air_slice2 = 
	{
		useEffect = true;
		effectResId = 1;
		posX = -5.07;
		posY = -0.33;
		posZ = 0.77;	
	};		
}

function monoplane_sirocco_Definition( vehicleDataPointer )

	SetupVehicle( vehicleDataPointer, VehicleDefinition )
	
end
