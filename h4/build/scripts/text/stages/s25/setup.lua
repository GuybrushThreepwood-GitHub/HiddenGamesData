
local stageSetup = 
{
	gameLayer = "stages/s25/level.hgm";
	physicsFileB2D = "stages/s25/level.b2d";
	typesFile = "stages/s25/level.dat";
	navMeshFile = "stages/s25/navmesh.hgm";
	
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
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 3;
	maxHangingSpiders = 5;

	minAntSpawn = 2;
	maxAntSpawn = 2;
	
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

function setup_stage25()
	LoadScript( "stages/s25/logic.lua" )

	SetActiveStage( stageSetup )
end