
local emitter = 
{
	SpriteId = 24;
	
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

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.6;
	GravityY = -8.0;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 3.0; -- in sec

	SizeMin = 0.5;
	SizeMax = 1.5;

	SpawnDir1X = 1.0;
	SpawnDir1Y = -10.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 2.0;
	SpawnDir2Y = -4.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 1.0;
	EmitRadiusY = 1.0;
	EmitRadiusZ = 1.0;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
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

function snowstorm_Emitter()
	return emitter
end