
-- DO NOT REMOVE
VERTICAL_THRUSTERS_WATER_EMITTER_ID = 3
HORIZONTAL_THRUSTERS_WATER_EMITTER_ID = 4

local emitter1 = 
{
	SpriteId = 26;
	
    CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 12;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_DST_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = -1.0;
	GravityZ = 0.0;
	
	EmitRateMin = 6.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec
	
	LifetimeMin = 0.05; -- in sec
	LifetimeMax = 0.1; -- in sec
	
	UseScaling = true;
    SizeMin = 0.5;
	SizeMax = 4.0;
	
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
	StartColour1R = 0.4;
	StartColour1G = 0.4;
	StartColour1B = 1.0;
	StartColour1A = 0.8;
	
	StartColour2R = 0.9;
	StartColour2G = 0.9;
	StartColour2B = 1.0;
	StartColour2A = 0.4;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
		
}

local emitter2 = 
{
	SpriteId = 26;
	
    CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 16;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_DST_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;
	
	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec
	
	LifetimeMin = 0.05; -- in sec
	LifetimeMax = 1.0; -- in sec
	
    UseScaling = true;
	SizeMin = 0.5;
	SizeMax = 4.0;
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;
	
	EmitRadiusX = 0.4;
	EmitRadiusY = 0.2;
	EmitRadiusZ = 1.0;
	
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
	EndColour1A = 0.2;
	
	EndColour2R = 0.8;
	EndColour2G = 0.8;
	EndColour2B = 0.8;
	EndColour2A = 0.0;		
}

function v_thrusters_water_Emitter()
	return emitter1
end

function h_thrusters_water_Emitter()
	return emitter2
end
