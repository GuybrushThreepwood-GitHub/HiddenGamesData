
local emitter = 
{
	SpriteId = 1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 2;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 30.5;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 2.5; -- in sec

	UseScaling = true;
	SizeMin = 10.1;
	SizeMax = 170.0;

	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 15.5;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 15.5;

	ColourRandom = false;
	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.5;
	
	StartColour2R = 0.1;
	StartColour2G = 0.1;
	StartColour2B = 0.1;
	StartColour2A = 0.5;

	EndColour1R = 0.1;
	EndColour1G = 0.1;
	EndColour1B = 0.1;
	EndColour1A = 0.0;

	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.0;
}

function firesmoke_Emitter()
	return emitter
end