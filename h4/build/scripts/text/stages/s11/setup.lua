
local stageSetup = 
{
	gameLayer = "stages/s11/level.hgm";
	physicsFileB2D = "stages/s11/level.b2d";
	typesFile = "stages/s11/level.dat";
	navMeshFile = "stages/s11/navmesh.hgm";
	
	--roomSetupFunc = 0;
	
	-- optional skybox index
	skyboxIndex = 5001;
	
	-- mipmap and filtering
	magFilter = GL_NEAREST;
	minFilter = GL_NEAREST_MIPMAP_NEAREST;
	
	-- clear colour
	clearColourR = 0.098;
	clearColourG = 0.098;
	clearColourB = 0.098;
	
	-- fog setup
	fogState = false;
	fogMode = GL_LINEAR;
	fogNearClip = 40.0;
	fogFarClip = 50.0;
	fogDensity = 0.005;
	fogColourR = 0.098;
	fogColourG = 0.098;
	fogColourB = 0.098;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 60.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 0;
	
	minFloatingHeads = 0;
	maxFloatingHeads = 2;

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
	allowGibs = false;
	allowNoise = false;	
}

function setup_stage11()
	LoadScript( "stages/s11/logic.lua" )

	SetActiveStage( stageSetup )
end