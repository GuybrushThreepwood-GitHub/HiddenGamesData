
local stageSetup = 
{
	gameLayer = "stages/s20/level.hgm";
	physicsFileB2D = "stages/s20/level.b2d";
	typesFile = "stages/s20/level.dat";
	navMeshFile = "stages/s20/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = -1;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.098;
	clearColourG = 0.098;
	clearColourB = 0.098;
	
	-- fog setup
	fogState = true;
	fogMode = GL_LINEAR;
	fogNearClip = 50.0;
	fogFarClip = 60.0;
	fogDensity = 0.005;
	fogColourR = 0.15;
	fogColourG = 0.15;
	fogColourB = 0.15;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 60.0;
	
	-- max enemies
	minEnemies = 1;
	maxEnemies = 1;
	
	minFloatingHeads = 1;
	maxFloatingHeads = 3;

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

function setup_stage20()
	LoadScript( "stages/s20/logic.lua" )

	SetActiveStage( stageSetup )
end