
local stageSetup = 
{
	gameLayer = "stages/s25b/level.hgm";
	physicsFileB2D = "stages/s25b/level.b2d";
	typesFile = "stages/s25b/level.dat";
	navMeshFile = "stages/s25b/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5000;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 1.0;
	clearColourG = 1.0;
	clearColourB = 1.0;
	
	-- fog setup
	fogState = true;
	fogMode = GL_LINEAR;
	fogNearClip = 20.0;
	fogFarClip = 30.0;
	fogDensity = 0.004;
	fogColourR = 0.7;
	fogColourG = 0.7;
	fogColourB = 0.7;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 70.0;
	
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

function setup_stage25b()
	LoadScript( "stages/s25b/logic.lua" )

	SetActiveStage( stageSetup )
end