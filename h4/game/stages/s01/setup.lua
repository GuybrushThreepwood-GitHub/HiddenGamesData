
local stageSetup = 
{
	gameLayer = "stages/s01/level.hgm";
	physicsFileB2D = "stages/s01/level.b2d";
	typesFile = "stages/s01/level.dat";
	navMeshFile = "stages/s01/navmesh.hgm";
	
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
	fogNearClip = 15.0;
	fogFarClip = 20.0;
	fogDensity = 0.08;
	fogColourR = 0.2;
	fogColourG = 0.2;
	fogColourB = 0.2;
	fogSetClearToMatch = false;
	
	-- clip distances
	nearClip = 0.5;
	farClip = 20.0;

	-- max enemies
	minEnemies = 1;
	maxEnemies = 1;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 0;
	maxHangingSpiders = 0;

	minAntSpawn = 0;
	maxAntSpawn = 0;
	
	maxNewSpawnEnemies = 0;
	
	-- extra rules
	allowGibs = true;
	allowNoise = false;
	
}

function setup_stage01()
	LoadScript( "stages/s01/logic.lua" )
	SetActiveStage( stageSetup )
end