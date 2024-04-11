
local stageSetup = 
{
	gameLayer = "stages/s02/level.hgm";
	physicsFileB2D = "stages/s02/level.b2d";
	typesFile = "stages/s02/level.dat";
	navMeshFile = "stages/s02/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5001;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.0;
	clearColourG = 0.0;
	clearColourB = 0.0;
	
	-- fog setup
	fogState = false;
	fogMode = GL_LINEAR;
	fogNearClip = 35.0;
	fogFarClip = 40.0;
	fogDensity = 0.005;
	fogColourR = 0.15;
	fogColourG = 0.15;
	fogColourB = 0.15;
	fogSetClearToMatch = false;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 60.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 0;
	maxHangingSpiders = 0;

	minAntSpawn = 0;
	maxAntSpawn = 0;
	
	maxNewSpawnEnemies = 0;
	
	-- room setups
	roomMaxEmpty = 0;
	roomMaxAmmo = 0;
	roomMaxHealth = 0;
	roomMaxZombie = 0;		
	
	-- extra rules
	allowGibs = false;
	allowNoise = false;	
}

function setup_stage02()
	LoadScript( "stages/s02/logic.lua" )

	SetActiveStage( stageSetup )
end