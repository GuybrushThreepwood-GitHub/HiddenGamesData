
local emitter = 
{
	SpriteId = -1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 16;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 2.0;
	GravityZ = 0.0;
	
	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 2.0; -- in particles/sec
	
	UseScaling = false;
	SizeMin = 0.1;
	SizeMax = 0.4;
	
	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 1.0; -- in sec
	
	SpawnDir1X = -8.0;
	SpawnDir1Y = -8.0;
	SpawnDir1Z = -8.0;

	SpawnDir2X = 8.0;
	SpawnDir2Y = 8.0;
	SpawnDir2Z = 8.0;
	
	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;
	
	ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 1.0;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function pixels_explode2_Emitter()
	return emitter
end