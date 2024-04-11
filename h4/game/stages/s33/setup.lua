
local stageSetup = 
{
	gameLayer = "stages/s33/level.hgm";
	physicsFileB2D = "stages/s33/level.b2d";
	typesFile = "stages/s33/level.dat";
	navMeshFile = "stages/s33/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5001;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.098;
	clearColourG = 0.098;
	clearColourB = 0.098;
	
	-- fog setup
	fogState = true;
	fogMode = GL_LINEAR;
	fogNearClip = 90.0;
	fogFarClip = 100.0;
	fogDensity = 0.005;
	fogColourR = 0.098;
	fogColourG = 0.098;
	fogColourB = 0.098;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 1;
	maxHangingSpiders = 2;

	minAntSpawn = 0;
	maxAntSpawn = 0;
	
	maxNewSpawnEnemies = 0;
	
	-- room setups
	roomMaxEmpty = 0;
	roomMaxAmmo = 0;
	roomMaxHealth = 0;
	roomMaxZombie = 0;		
	
	-- extra rules
	allowGibs = true;
	allowNoise = true;
	enableFlashlight = true;
}

function setup_stage33()
	LoadScript( "stages/s33/logic.lua" )

	SetActiveStage( stageSetup )
end