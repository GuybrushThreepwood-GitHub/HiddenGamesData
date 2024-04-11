
local stageSetup = 
{
	gameLayer = "stages/s08/level.hgm";
	physicsFileB2D = "stages/s08/level.b2d";
	typesFile = "stages/s08/level.dat";
	navMeshFile = "stages/s08/navmesh.hgm";
	
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
	fogMode = GL_EXP2;
	fogNearClip = -20.0;
	fogFarClip = 20.0;
	fogDensity = 0.08;
	fogColourR = 0.25;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = false;
		
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

function setup_stage08()
	LoadScript( "stages/s08/logic.lua" )
	SetActiveStage( stageSetup )
end