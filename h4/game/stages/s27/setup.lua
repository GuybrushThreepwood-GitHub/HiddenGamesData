
local stageSetup = 
{
	gameLayer = "stages/s27/level.hgm";
	physicsFileB2D = "stages/s27/level.b2d";
	typesFile = "stages/s27/level.dat";
	navMeshFile = "stages/s27/navmesh.hgm";
	
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
	fogState = false;
	fogMode = GL_EXP2;
	fogNearClip = 0.0;
	fogFarClip = 100.0;
	fogDensity = 0.05;
	fogColourR = 0.098;
	fogColourG = 0.098;
	fogColourB = 0.098;
	fogSetClearToMatch = false;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 100.0;
	
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

function setup_stage27()
	LoadScript( "stages/s27/logic.lua" )

	SetActiveStage( stageSetup )
end