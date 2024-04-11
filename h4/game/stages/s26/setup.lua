
local stageSetup = 
{
	gameLayer = "stages/s26/level.hgm";
	physicsFileB2D = "stages/s26/level.b2d";
	typesFile = "stages/s26/level.dat";
	navMeshFile = "stages/s26/navmesh.hgm";
	
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
	fogNearClip = 40.0;
	fogFarClip = 50.0;
	fogDensity = 0.005;
	fogColourR = 0.0;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;
	
	-- max enemies
	minEnemies = 1;
	maxEnemies = 1;
	
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
	allowNoise = false;	
}

function setup_stage26()
	LoadScript( "stages/s26/logic.lua" )

	SetActiveStage( stageSetup )
end