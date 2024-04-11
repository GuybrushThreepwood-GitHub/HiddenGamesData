
local stageSetup = 
{
	gameLayer = "stages/s24/level.hgm";
	physicsFileB2D = "stages/s24/level.b2d";
	typesFile = "stages/s24/level.dat";
	navMeshFile = "stages/s24/navmesh.hgm";
	
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
	minEnemies = 1;
	maxEnemies = 2;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 0;

	minHangingSpiders = 0;
	maxHangingSpiders = 1;

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

function setup_stage24()
	LoadScript( "stages/s24/logic.lua" )

	SetActiveStage( stageSetup )
end