
local stageSetup = 
{
	gameLayer = "stages/s22/level.hgm";
	physicsFileB2D = "stages/s22/level.b2d";
	typesFile = "stages/s22/level.dat";
	navMeshFile = "stages/s22/navmesh.hgm";
	
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
	minEnemies = 2;
	maxEnemies = 3;
	
	minFloatingHeads = 2;
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

function setup_stage22()
	LoadScript( "stages/s22/logic.lua" )

	SetActiveStage( stageSetup )
end