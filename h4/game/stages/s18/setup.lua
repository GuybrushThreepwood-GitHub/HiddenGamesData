
local stageSetup = 
{
	gameLayer = "stages/s18/level.hgm";
	physicsFileB2D = "stages/s18/level.b2d";
	typesFile = "stages/s18/level.dat";
	navMeshFile = "stages/s18/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = -1;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.0;
	clearColourG = 0.0;
	clearColourB = 0.0;
	
	-- fog setup
	fogState = true;
	fogMode = GL_LINEAR;
	fogNearClip = 25.0;
	fogFarClip = 30.0;
	fogDensity = 0.03;
	fogColourR = 0.02;
	fogColourG = 0.02;
	fogColourB = 0.02;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 30.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 3;
	maxHangingSpiders = 3;

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
	allowNoise = false;	
}

function setup_stage18()
	LoadScript( "stages/s18/logic.lua" )

	SetActiveStage( stageSetup )
end