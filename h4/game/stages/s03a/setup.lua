
local stageSetup = 
{
	gameLayer = "stages/s03a/level.hgm";
	physicsFileB2D = "stages/s03a/level.b2d";
	typesFile = "stages/s03a/level.dat";
	navMeshFile = "stages/s03a/navmesh.hgm";

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
	fogMode = GL_EXP2;
	fogNearClip = -20.0;
	fogFarClip = 20.0;
	fogDensity = 0.1;
	fogColourR = 0.25;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = false;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;

	-- max enemies
	minEnemies = 0;
	maxEnemies = 1;
	
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

function setup_stage03a()
	LoadScript( "stages/s03a/logic.lua" )

	SetActiveStage( stageSetup )
end