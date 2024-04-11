
local stageSetup = 
{
	gameLayer = "stages/s31a/level.hgm";
	physicsFileB2D = "stages/s31a/level.b2d";
	typesFile = "stages/s31a/level.dat";
	navMeshFile = "stages/s31a/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = -1;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.098;
	clearColourG = 0.109;
	clearColourB = 0.109;
	
	-- fog setup
	fogState = false;
	fogMode = GL_LINEAR;
	fogNearClip = 0.0;
	fogFarClip = 50.0;
	fogDensity = 0.005;
	fogColourR = 0.185;
	fogColourG = 0.242;
	fogColourB = 0.242;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 50.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 4;
	maxHangingSpiders = 5;

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

function setup_stage31a()
	LoadScript( "stages/s31a/logic.lua" )

	SetActiveStage( stageSetup )
end