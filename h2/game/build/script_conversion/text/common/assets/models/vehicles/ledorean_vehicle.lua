
-- vehicle setup

local VehicleDefinition = 
{
	bodyPtr = 0;
	landingGearShapeTable = "delorean_landingGearBody";
	
	modelFile = 10;
	
	audioFileVac = 162;
	audioFileAir = 160;
	audioFileSub = 161;

	audioFileVacBrake = 162;
	audioFileAirBrake = 160;
	audioFileSubBrake = 161;
			
	-- speed in environments
	-- max air velocity data
	maxXVelAir = 12.0;
	maxYVelAir = 12.0;
	-- max air fall velocity
	maxFallVelAir = -8.0;

	-- max vac velocity data
	maxXVelVac = 12.0;
	maxYVelVac = 12.0;
	-- max vac fall velocity
	maxFallVelVac = -8.0;
	
	-- max water velocity data
	maxXVelWater = 10.0;
	maxYVelWater = 10.0;
	-- max water fall velocity
	maxFallVelWater = -8.0;
	
	upwardsForceAir = 60.0; -- up force
	movementForceAir = 50.0; -- left/right force	

	upwardsForceVac = 50.0; -- up force
	movementForceVac = 30.0; -- left/right force
	
	upwardsForceWater = 60.0; -- up force
	movementForceWater = 40.0; -- left/right force
	
	-- damage
	smallDamage = 10.0;
	largeDamage = 20.0;
	
	-- these are required meshes
	
	mainBodyMesh = 0;

	landingGearMeshUp = -1;
	landingGearMeshDown = 1;
	
	airBrakeMesh = 3;
	
	burnersVerticalMesh = -1;
	burnersVerticalEmitterId = VERTICAL_THRUSTERS_EMITTER_ID;
	burnersVerticalFrontOffsetX = -1.031;
	burnersVerticalFrontOffsetY = -0.695;
	burnersVerticalBackOffsetX = 0.913;
	burnersVerticalBackOffsetY = -0.695;
	
	burnersHorizontalMesh = -1;
	burnersHorizontalEmitterId = HORIZONTAL_THRUSTERS_EMITTER_ID;
	brunersHorizontalOffsetX = 1.909;
	brunersHorizontalOffsetY = 0.424;
	
	parcelMesh = -1;
	bombMesh = 4;
	keyMesh = -1;
	
	-- always draw these
	hasPermanentMeshes = false;	
	
	-- night mesh list
	hasNightChanges = true;
	nightSubMeshList = 
	{
		2,
	};
	
	-- use submeshes to swap in astro/aero/aqua zones
	hasSubMeshChanges = false;	
}

function delorean_Definition()

	LoadScript( "assets/models/vehicles/ledorean_physsetup.lua" )
	VehicleDefinition.bodyPtr = delorean_PhysicsSetup()
	
	AddVehicle( VehicleDefinition )
	
end
