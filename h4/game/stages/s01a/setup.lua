
local stageSetup = 
{
	gameLayer = "stages/s01a/level.hgm";
	physicsFileB2D = "stages/s01a/level.b2d";
	typesFile = "stages/s01a/level.dat";
	navMeshFile = "stages/s01a/navmesh.hgm";
	
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
	fogState = false;
	fogMode = GL_EXP2;
	fogNearClip = 15.0;
	fogFarClip = 20.0;
	fogDensity = 0.08;
	fogColourR = 0.2;
	fogColourG = 0.2;
	fogColourB = 0.2;
	fogSetClearToMatch = true;
	
	-- clip distances
	nearClip = 0.5;
	farClip = 100.0;

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
	allowNoise = true;
	enableFlashlight = true;
	
}

function setup_stage01a()
	LoadScript( "stages/s01a/logic.lua" )
	SetActiveStage( stageSetup )
end