
local stageSetup = 
{
	gameLayer = "stages/s17a/level.hgm";
	physicsFileB2D = "stages/s17a/level.b2d";
	typesFile = "stages/s17a/level.dat";
	navMeshFile = "stages/s17a/navmesh.hgm";
	
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
	fogNearClip = -100.0;
	fogFarClip = 100.0;
	fogDensity = 0.005;
	fogColourR = 0.185;
	fogColourG = 0.242;
	fogColourB = 0.242;
	fogSetClearToMatch = true;
		
	-- clip distances
	nearClip = 0.5;
	farClip = 100.0;
	
	-- max enemies
	minEnemies = 0;
	maxEnemies = 2;
	maxNewSpawnEnemies = 0;
	
	
	-- extra rules
	allowGibs = true;
	allowNoise = false;	
}

function setup_stage17a()
	LoadScript( "stages/s17a/logic.lua" )

	SetActiveStage( stageSetup )
end