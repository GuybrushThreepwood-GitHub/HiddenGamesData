
local stageSetup = 
{
	gameLayer = "stages/s23/level.hgm";
	physicsFileB2D = "stages/s23/level.b2d";
	typesFile = "stages/s23/level.dat";
	navMeshFile = "stages/s23/navmesh.hgm";
	
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
	fogNearClip = 20.0;
	fogFarClip = 25.0;
	fogDensity = 0.03;
	fogColourR = 0.0;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 25.0;
	
	-- max enemies
	minEnemies = 2;
	maxEnemies = 3;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 0;
	maxHangingSpiders = 0;

	minAntSpawn = 3;
	maxAntSpawn = 3;
	
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

function setup_stage23()
	LoadScript( "stages/s23/logic.lua" )

	SetActiveStage( stageSetup )
end