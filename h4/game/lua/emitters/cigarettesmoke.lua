
local emitter = 
{
	SpriteId = 28;
	
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
	GravityY = 0.03;
	GravityZ = 0.0;

	EmitRateMin = 0.25; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 1.2; -- in sec
	LifetimeMax = 3.5; -- in sec

	SizeMin = 0.01;
	SizeMax = 0.03;

	SpawnDir1X = -0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

	StartColour1R = 0.8;
	StartColour1G = 0.8;
	StartColour1B = 0.8;
	StartColour1A = 0.5;
	
	StartColour2R = 0.8;
	StartColour2G = 0.8;
	StartColour2B = 0.8;
	StartColour2A = 0.5;

	EndColour1R = 0.8;
	EndColour1G = 0.8;
	EndColour1B = 0.8;
	EndColour1A = 0.0;

	EndColour2R = 0.8;
	EndColour2G = 0.8;
	EndColour2B = 0.8;
	EndColour2A = 0.0;
}

function cigarettesmoke_Emitter()
	return emitter
end