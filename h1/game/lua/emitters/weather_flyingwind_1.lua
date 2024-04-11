
local emitter = 
{
	SpriteId = 20;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 1.5;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 10.0; -- in particles/sec

	UseScaling = false;
	SizeMin = 100.0;
	SizeMax = 100.0;
	
	LifetimeMin = 2.0; -- in sec
	LifetimeMax = 4.0; -- in sec

	UseWidthHeightDepth = true;
	Width = 300.0;
	Height = 100.0;
	Depth = 300.0;

	SpawnDir1X = 0.0;
	SpawnDir1Y = -0.1;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 120.0;
	EmitRadiusY = 150.0;
	EmitRadiusZ = 120.0;

    ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.05;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.05;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.2;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.2;
}

function weather_flyingwind1_Emitter()
	return emitter
end