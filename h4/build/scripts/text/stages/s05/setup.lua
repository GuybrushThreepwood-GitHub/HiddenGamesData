
local stageSetup = 
{
	gameLayer = "stages/s05/level.hgm";
	physicsFileB2D = "stages/s05/level.b2d";
	typesFile = "stages/s05/level.dat";
	navMeshFile = "stages/s05/navmesh.hgm";
	
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
	fogNearClip = 20.0;
	fogFarClip = 25.0;
	fogDensity = 0.03;
	fogColourR = 0.02;
	fogColourG = 0.02;
	fogColourB = 0.02;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 25.0;

	-- max enemies
	minEnemies = 5;
	maxEnemies = 5;
	
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

function setup_stage05()
	LoadScript( "stages/s05/logic.lua" )
	SetActiveStage( stageSetup )
end