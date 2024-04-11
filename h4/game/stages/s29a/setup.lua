
local stageSetup = 
{
	gameLayer = "stages/s29a/level.hgm";
	physicsFileB2D = "stages/s29a/level.b2d";
	typesFile = "stages/s29a/level.dat";
	navMeshFile = "stages/s29a/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5001;
	
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
	fogFarClip = 120.0;
	fogDensity = 0.005;
	fogColourR = 0.0;
	fogColourG = 0.0;
	fogColourB = 0.0;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 120.0;
	
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

function setup_stage29a()
	LoadScript( "stages/s29a/logic.lua" )

	SetActiveStage( stageSetup )
end