
local stageSetup = 
{
	gameLayer = "stages/s19/level.hgm";
	physicsFileB2D = "stages/s19/level.b2d";
	typesFile = "stages/s19/level.dat";
	navMeshFile = "stages/s19/navmesh.hgm";
	
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
	fogNearClip = 15.0;
	fogFarClip = 25.0;
	fogDensity = 0.005;
	fogColourR = 0.0;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 25.0;
	
	-- max enemies
	minEnemies = 1;
	maxEnemies = 2;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 1;
	maxHangingSpiders = 1;

	minAntSpawn = 0;
	maxAntSpawn = 0;
	
	maxNewSpawnEnemies = 0;
	
	-- extra rules
	allowGibs = true;
	allowNoise = false;	
}

function setup_stage19()
	LoadScript( "stages/s19/logic.lua" )
	SetActiveStage( stageSetup )
end
