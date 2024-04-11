
local emitter = 
{
	SpriteId = 21;
	
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
	AlphaClamp = 0.1;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 1.0; -- in sec

	SizeMin = 0.3;
	SizeMax = 0.5;

	SpawnDir1X = -2.0;
	SpawnDir1Y = -2.0;
	SpawnDir1Z = -2.0;

	SpawnDir2X = 2.0;
	SpawnDir2Y = 2.0;
	SpawnDir2Z = 2.0;

	EmitRadiusX = 0.1;
	EmitRadiusY = 0.1;
	EmitRadiusZ = 0.1;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 0.0;
	StartColour1A = 0.2;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 0.0;
	StartColour2A = 0.2;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 0.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 0.0;
	EndColour2A = 0.0;
}

function sparksalldirections_Emitter()
	return emitter
end