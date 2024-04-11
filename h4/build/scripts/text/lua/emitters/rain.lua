
local emitter = 
{
	SpriteId = -1;
	
	CameraAlign = false;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 20;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = -150.0;
	GravityZ = 0.0;

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 1.5; -- in sec

	SizeMin = 0.05;
	SizeMax = 0.05;
	
	UseWidthHeightDepth = true;
	Width = 0.01;
	Height = 5.0;
	Depth = 0.0;	

	SpawnDir1X = 0.0;
	SpawnDir1Y = -0.5;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = -0.5;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 10.0;
	EmitRadiusY = 2.0;
	EmitRadiusZ = 10.0;

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

function rain_Emitter()
	return emitter
end