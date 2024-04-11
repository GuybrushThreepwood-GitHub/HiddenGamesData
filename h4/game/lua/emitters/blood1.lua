
local emitter = 
{
	SpriteId = 8;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 3;

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

	EmitRateMin = 50.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 2.0; -- in sec

	SizeMin = 0.1;
	SizeMax = 1.0;

	SpawnDir1X = -0.2;
	SpawnDir1Y = -0.2;
	SpawnDir1Z = -0.2;

	SpawnDir2X = 0.2;
	SpawnDir2Y = 0.2;
	SpawnDir2Z = 0.2;

	EmitRadiusX = 0.5;
	EmitRadiusY = 0.5;
	EmitRadiusZ = 0.5;

	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.5;
	
	StartColour2R = 0.5;
	StartColour2G = 0.5;
	StartColour2B = 0.5;
	StartColour2A = 0.5;

	EndColour1R = 0.0;
	EndColour1G = 0.0;
	EndColour1B = 0.0;
	EndColour1A = 0.0;

	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.0;
}

function blood1_Emitter()
	return emitter
end