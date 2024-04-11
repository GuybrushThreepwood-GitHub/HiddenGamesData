
local emitter = 
{
	SpriteId = 24;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 50;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = -0.5;
	GravityZ = 0.0;

	EmitRateMin = 5.0; -- in particles/sec
	EmitRateMax = 40.0; -- in particles/sec

	LifetimeMin = 5; -- in sec
	LifetimeMax = 10; -- in sec

	SizeMin = 0.5;
	SizeMax = 2.0;

	SpawnDir1X = -2.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -2.0;

	SpawnDir2X = 2.0;
	SpawnDir2Y = -0.75;
	SpawnDir2Z = 2.0;

	EmitRadiusX = 30;
	EmitRadiusY = 5;
	EmitRadiusZ = 30;

	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.9;
	
	StartColour2R = 0.5;
	StartColour2G = 0.5;
	StartColour2B = 0.5;
	StartColour2A = 0.9;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = 0.9;

	EndColour2R = 0.5;
	EndColour2G = 0.5;
	EndColour2B = 0.5;
	EndColour2A = 0.9;
}

function snow_Emitter()
	return emitter
end