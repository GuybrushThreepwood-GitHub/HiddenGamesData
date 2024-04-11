
-- vehicle setup

local VehicleDefinition = 
{
	customerCalls = 1;
	bodyPtr = 0;
	landingGearShapeTable = "bondlotus_landingGearBody";
	
	modelFile = 6;
	
	audioFileVac = 162;
	audioFileAir = 160;
	audioFileSub = 161;

	audioFileVacBrake = 162;
	audioFileAirBrake = 160;
	audioFileSubBrake = 161;
	
			
	-- speed in environments
	-- max air velocity data
	maxXVelAir = 12.0;
	maxYVelAir = 8.0;
	-- max air fall velocity
	maxFallVelAir = -10.0;

	-- max vac velocity data
	maxXVelVac = 12.0;
	maxYVelVac = 12.0;
	-- max vac fall velocity
	maxFallVelVac = -15.0;
	
	-- max water velocity data
	maxXVelWater = 10.0;
	maxYVelWater = 10.0;
	-- max water fall velocity
	maxFallVelWater = -15.0;
	
	upwardsForceAir = 50.0; -- up force
	movementForceAir = 20.0; -- left/right force	
	
	upwardsForceVac = 50.0; -- up force
	movementForceVac = 30.0; -- left/right force
	
	upwardsForceWater = 80.0; -- up force
	movementForceWater = 60.0; -- left/right force
	
	-- damage
	smallDamage = 5.0;
	largeDamage = 10.0;
	
	-- these are required meshes
	
	mainBodyMesh = 0;

	landingGearMeshUp = -1;
	landingGearMeshDown = 1;
	
	airBrakeMesh = 3;
	
	burnersVerticalMesh = -1;
	burnersVerticalEmitterId = VERTICAL_THRUSTERS_EMITTER_ID;
	burnersVerticalFrontOffsetX = -1.359;
	burnersVerticalFrontOffsetY = -0.653;
	burnersVerticalBackOffsetX = 0.973;
	burnersVerticalBackOffsetY = -0.653;
	
	burnersHorizontalMesh = -1;
	burnersHorizontalEmitterId = HORIZONTAL_THRUSTERS_EMITTER_ID;
	brunersHorizontalOffsetX = 2.425;
	brunersHorizontalOffsetY = -0.228;
	
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

function bondlotus_Definition()

	LoadScript( "assets/models/vehicles/londbotus_physsetup.lua" )
	VehicleDefinition.bodyPtr = bondlotus_PhysicsSetup()
	
	AddVehicle( VehicleDefinition )
	
end
