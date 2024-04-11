
-- DO NOT REMOVE
VERTICAL_THRUSTERS_EMITTER_ID = 1
HORIZONTAL_THRUSTERS_EMITTER_ID = 2

-- vertical thrust
local emitter1 = 
{
	SpriteId = 12;
	
    CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 12;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 2.0;
	GravityZ = 0.0;
	
	EmitRateMin = 6.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 0.2;
	SizeMax = 2.0;

	LifetimeMin = 0.05; -- in sec
	LifetimeMax = 0.15; -- in sec
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 10.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 10.0;
	SpawnDir2Z = 0.0;
	
	EmitRadiusX = 0.3;
	EmitRadiusY = 0.2;
	EmitRadiusZ = 1.0;

    ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 0.71;
	StartColour1B = 0.29;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 0.8;
	StartColour2B = 0.29;
	StartColour2A = 0.5;
	
	EndColour1R = 0.2;
	EndColour1G = 0.2;
	EndColour1B = 0.2;
	EndColour1A = 0.0;
	
	EndColour2R = 0.2;
	EndColour2G = 0.2;
	EndColour2B = 0.2;
	EndColour2A = 0.0;
		
}

local emitter2 = 
{
	SpriteId = 1;

    CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 10;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.5;
	GravityZ = 0.0;
	
	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 20.0; -- in particles/sec

    LifetimeMin = 0.1; -- in sec
	LifetimeMax = 1.0; -- in sec
	
	UseScaling = true;
	SizeMin = 0.8;
	SizeMax = 5.0;
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;
	
	EmitRadiusX = 0.4;
	EmitRadiusY = 0.2;
	EmitRadiusZ = 1.0;

    ColourRandom = false;
	StartColour1R = 0.64;
	StartColour1G = 0.81;
	StartColour1B = 1.0;
	StartColour1A = 0.5;
	
	StartColour2R = 0.64;
	StartColour2G = 0.81;
	StartColour2B = 1.0;
	StartColour2A = 1.0;
	
	EndColour1R = 0.8;
	EndColour1G = 0.8;
	EndColour1B = 0.8;
	EndColour1A = 0.0;
	
	EndColour2R = 0.8;
	EndColour2G = 0.8;
	EndColour2B = 0.8;
	EndColour2A = 0.0;		
}

function v_thrusters_air_Emitter()
	return emitter1
end

function h_thrusters_air_Emitter()
	return emitter2
end
