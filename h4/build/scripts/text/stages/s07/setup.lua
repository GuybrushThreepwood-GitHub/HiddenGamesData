
local stageSetup = 
{
	gameLayer = "stages/s07/level.hgm";
	physicsFileB2D = "stages/s07/level.b2d";
	typesFile = "stages/s07/level.dat";
	navMeshFile = "stages/s07/navmesh.hgm";
	
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
	fogState = false;
	fogMode = GL_EXP2;
	fogNearClip = 0.5;
	fogFarClip = 50.0;
	fogDensity = 0.03;
	fogColourR = 0.2;
	fogColourG = 0.2;
	fogColourB = 0.2;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;

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
	allowGibs = true;
	allowNoise = false;	
}

function setup_stage07()
	LoadScript( "stages/s07/logic.lua" )
	SetActiveStage( stageSetup )
end