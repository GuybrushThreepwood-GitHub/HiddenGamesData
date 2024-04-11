
local stageSetup = 
{
	gameLayer = "stages/s28/level.hgm";
	physicsFileB2D = "stages/s28/level.b2d";
	typesFile = "stages/s28/level.dat";
	navMeshFile = "stages/s28/navmesh.hgm";
	
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
	fogState = true;
	fogMode = GL_LINEAR;
	fogNearClip = 30.0;
	fogFarClip = 40.0;
	fogDensity = 0.005;
	fogColourR = 0.098;
	fogColourG = 0.098;
	fogColourB = 0.098;
	fogSetClearToMatch = false;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 40.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 2;
	maxFloatingHeads = 2;

	minHangingSpiders = 0;
	maxHangingSpiders = 0;

	minAntSpawn = 5;
	maxAntSpawn = 5;
	
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

function setup_stage28()
	LoadScript( "stages/s28/logic.lua" )

	SetActiveStage( stageSetup )
end