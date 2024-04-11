
local emitter = 
{
	SpriteId = 57;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 40;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = -2.0;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 20.0; -- in particles/sec

	UseScaling = false;
	SizeMin = 0.0;
	SizeMax = 1.0;

	LifetimeMin = 2.0; -- in sec
	LifetimeMax = 10.0; -- in sec

	SizeMin = 0.1;
	SizeMax = 0.3;

	SpawnDir1X = -0.75;
	SpawnDir1Y = -0.1;
	SpawnDir1Z = -0.75;

	SpawnDir2X = 0.75;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.75;

	EmitRadiusX = 15.0;
	EmitRadiusY = 1.0;
	EmitRadiusZ = 15.0;

    ColourRandom = false;
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
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function weather_snow1_Emitter()
	return emitter
end