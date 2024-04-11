
local emitter = 
{
	SpriteId = 21;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 20;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.15;

	GravityX = 0.0;
	GravityY = -8.0;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 2.0; -- in sec

	SizeMin = 0.1;
	SizeMax = 0.5;

	SpawnDir1X = 0.0;
	SpawnDir1Y = -0.1;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = -0.1;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.5;
	EmitRadiusY = 0.5;
	EmitRadiusZ = 0.5;

	StartColour1R = 0.8;
	StartColour1G = 0.1;
	StartColour1B = 0.1;
	StartColour1A = 0.5;
	
	StartColour2R = 0.8;
	StartColour2G = 0.1;
	StartColour2B = 0.1;
	StartColour2A = 0.5;

	EndColour1R = 0.8;
	EndColour1G = 0.1;
	EndColour1B = 0.1;
	EndColour1A = 0.0;

	EndColour2R = 0.8;
	EndColour2G = 0.1;
	EndColour2B = 0.1;
	EndColour2A = 0.0;
}

function multiblooddrip_Emitter()
	return emitter
end