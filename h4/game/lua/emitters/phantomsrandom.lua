
local emitter = 
{
	SpriteId = 27;
	
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
	GravityY = 3.0;
	GravityZ = 0.0;

	EmitRateMin = 0.25; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 0.2; -- in sec
	LifetimeMax = 2.5; -- in sec

	SizeMin = 0.1;
	SizeMax = 2.0;

	SpawnDir1X = -0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 1.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 1.0;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.25;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.25;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function phantomsrandom_Emitter()
	return emitter
end