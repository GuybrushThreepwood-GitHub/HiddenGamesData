
local stageSetup = 
{
	gameLayer = "stages/s25a/level.hgm";
	physicsFileB2D = "stages/s25a/level.b2d";
	typesFile = "stages/s25a/level.dat";
	navMeshFile = "stages/s25a/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5001;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.0;
	clearColourG = 0.0;
	clearColourB = 0.0;
	
	-- fog setup
	fogState = false;
	fogMode = GL_LINEAR;
	fogNearClip = 35.0;
	fogFarClip = 40.0;
	fogDensity = 0.005;
	fogColourR = 0.15;
	fogColourG = 0.15;
	fogColourB = 0.15;
	fogSetClearToMatch = false;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 1;
	maxHangingSpiders = 1;

	minAntSpawn = 4;
	maxAntSpawn = 4;
	
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

function setup_stage25a()
	LoadScript( "stages/s25a/logic.lua" )

	SetActiveStage( stageSetup )
end