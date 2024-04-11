
local stageSetup = 
{
	gameLayer = "stages/s04/level.hgm";
	physicsFileB2D = "stages/s04/level.b2d";
	typesFile = "stages/s04/level.dat";
	navMeshFile = "stages/s04/navmesh.hgm";
	
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
	fogDensity = 0.04;
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

function setup_stage04()
	LoadScript( "stages/s04/logic.lua" )
	SetActiveStage( stageSetup )
end