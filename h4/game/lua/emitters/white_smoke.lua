
local emitterx = 
{
	SpriteId = 28;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 10;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.1;
	GravityZ = 0.0;

	EmitRateMin = 0.5; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 2.0; -- in sec

	SizeMin = 0.5;
	SizeMax = 0.8;

	SpawnDir1X = -1.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.1;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.5;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.75;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

local emitterz = 
{
	SpriteId = 28;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 10;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.1;
	GravityZ = 0.0;

	EmitRateMin = 0.5; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 2.0; -- in sec

	SizeMin = 0.5;
	SizeMax = 0.8;

	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -1.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 1.0;

	EmitRadiusX = 0.1;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.5;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.75;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function whitesmokex_Emitter()
	return emitterx
end

function whitesmokez_Emitter()
	return emitterz
end