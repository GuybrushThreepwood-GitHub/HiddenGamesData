
local emitter = 
{
	SpriteId = -1;
	
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
	GravityY = 0.0;
	GravityZ = 0.0;

	EmitRateMin = 50.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 0.2; -- in sec

	SizeMin = 0.03;
	SizeMax = 0.03;

	SpawnDir1X = -0.2;
	SpawnDir1Y = -0.2;
	SpawnDir1Z = -0.2;

	SpawnDir2X = 0.2;
	SpawnDir2Y = 0.2;
	SpawnDir2Z = 0.2;

	EmitRadiusX = 0.3;
	EmitRadiusY = 0.3;
	EmitRadiusZ = 0.3;

	StartColour1R = 0.0;
	StartColour1G = 0.0;
	StartColour1B = 0.0;
	StartColour1A = 0.5;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
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

function flysmall_Emitter()
	return emitter
end