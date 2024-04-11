
local emitter = 
{
	SpriteId = 21;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 1;

	EnableDepth = true;
	DepthFunc = GL_ALWAYS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;

	EmitRateMin = 0.25; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 0.02; -- in sec
	LifetimeMax = 0.02; -- in sec

	SizeMin = 0.01;
	SizeMax = 0.01;

	SpawnDir1X = -0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

	StartColour1R = 1.0;
	StartColour1G = 0.25;
	StartColour1B = 0.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 0.25;
	StartColour2B = 0.0;
	StartColour2A = 1.0;

	EndColour1R = 1.0;
	EndColour1G = 0.25;
	EndColour1B = 0.0;
	EndColour1A = 0.99;

	EndColour2R = 1.0;
	EndColour2G = 0.25;
	EndColour2B = 0.0;
	EndColour2A = 0.99;
}

function cigaretteburn_Emitter()
	return emitter
end