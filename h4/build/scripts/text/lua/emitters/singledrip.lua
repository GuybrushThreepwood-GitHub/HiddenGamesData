
local emitter = 
{
	SpriteId = -1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 1;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = -8.0;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 1.0; -- in sec

	SizeMin = 0.1;
	SizeMax = 0.1;

	SpawnDir1X = 0.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = -1.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.1;
	EmitRadiusY = 0.1;
	EmitRadiusZ = 0.1;

	StartColour1R = 0.4;
	StartColour1G = 0.4;
	StartColour1B = 0.5;
	StartColour1A = 0.5;
	
	StartColour2R = 0.4;
	StartColour2G = 0.4;
	StartColour2B = 0.5;
	StartColour2A = 0.5;

	EndColour1R = 0.4;
	EndColour1G = 0.4;
	EndColour1B = 0.5;
	EndColour1A = 0.0;

	EndColour2R = 0.4;
	EndColour2G = 0.4;
	EndColour2B = 0.5;
	EndColour2A = 0.0;
}

function singledrip_Emitter()
	return emitter
end