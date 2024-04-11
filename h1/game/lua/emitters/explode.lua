
local emitter = 
{
	SpriteId = 35;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;

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

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 0.2; -- in sec
	LifetimeMax = 0.5; -- in sec

	UseScaling = false;
	SizeMin = 50.0;
	SizeMax = 50.0;

	SpawnDir1X = -80.0;
	SpawnDir1Y = -80.0;
	SpawnDir1Z = -80.0;

	SpawnDir2X = 8.0;
	SpawnDir2Y = 8.0;
	SpawnDir2Z = 8.0;

	EmitRadiusX = 0.5;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.5;

	ColourRandom = true;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 1.0;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.5;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.5;
		
}

function explode_Emitter()
	return emitter
end