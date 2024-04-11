
local emitter = 
{
	SpriteId = -1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 80;

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
	EmitRateMax = 20.0; -- in particles/sec

	LifetimeMin = 0.75; -- in sec
	LifetimeMax = 1.25; -- in sec

	UseScaling = false;
	SizeMin = 0.07;
	SizeMax = 0.07;
	
	UseWidthHeightDepth = true;
	Width = 0.3;
	Height = 5.0;
	Depth = 0.3;	

	SpawnDir1X = 0.0;
	SpawnDir1Y = -250.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = -250.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 100.0;
	EmitRadiusY = 10.0;
	EmitRadiusZ = 100.0;

	ColourRandom = false;
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

function weather_rain1_Emitter()
	return emitter
end