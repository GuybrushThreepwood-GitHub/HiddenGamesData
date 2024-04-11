
-- vehicle setup

local VehicleDefinition = 
{
	bodyPtr = 0;
	landingGearShapeTable = "hotrod_landingGearBody";
	
	modelFile = 5;
	
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
	maxFallVelAir = -8.0;

	-- max vac velocity data
	maxXVelVac = 10.0;
	maxYVelVac = 10.0;
	-- max vac fall velocity
	maxFallVelVac = -15.0;
	
	-- max water velocity data
	maxXVelWater = 5.0;
	maxYVelWater = 5.0;
	-- max water fall velocity
	maxFallVelWater = -15.0;
	
	upwardsForceAir = 50.0; -- up force
	movementForceAir = 80.0; -- left/right force	
	
	upwardsForceVac = 50.0; -- up force
	movementForceVac = 30.0; -- left/right force
	
	upwardsForceWater = 70.0; -- up force
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
	burnersVerticalFrontOffsetX = -1.125;
	burnersVerticalFrontOffsetY = -0.750;
	burnersVerticalBackOffsetX = 1.225;
	burnersVerticalBackOffsetY = -0.750;
	
	burnersHorizontalMesh = -1;
	burnersHorizontalEmitterId = HORIZONTAL_THRUSTERS_EMITTER_ID;
	brunersHorizontalOffsetX = 1.825;
	brunersHorizontalOffsetY = -0.225;
	
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

function hotrod_Definition()

	LoadScript( "assets/models/vehicles/hotrod_physsetup.lua" )
	VehicleDefinition.bodyPtr = hotrod_PhysicsSetup()
	
	AddVehicle( VehicleDefinition )
	
end
