
local emitter = 
{
	SpriteId = 1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 8;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;
	
	EmitRateMin = 0.1; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec
	
	UseScaling = true;
	SizeMin = 1.0;
	SizeMax = 3.0;
	
	LifetimeMin = 0.2; -- in sec
	LifetimeMax = 2.0; -- in sec
	
	SpawnDir1X = -3.0;
	SpawnDir1Y = -3.0;
	SpawnDir1Z = -3.0;

	SpawnDir2X = 3.0;
	SpawnDir2Y = 3.0;
	SpawnDir2Z = 3.0;
	
	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;
	
	ColourRandom = false;
	StartColour1R = 0.0;
	StartColour1G = 0.67;
	StartColour1B = 0.93;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.67;
	StartColour2B = 0.93;
	StartColour2A = 1.0;

	EndColour1R = 0.0;
	EndColour1G = 0.67;
	EndColour1B = 0.93;
	EndColour1A = 0.0;

	EndColour2R = 0.0;
	EndColour2G = 0.67;
	EndColour2B = 0.93;
	EndColour2A = 0.0;
}

function pixels_hearts1_Emitter()
	return emitter
end