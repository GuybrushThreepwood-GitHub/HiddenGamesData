
local emitter = 
{
	SpriteId = 28;
	
	CameraAlign = false;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 10;

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

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 10.0; -- in particles/sec

	LifetimeMin = 2.0; -- in sec
	LifetimeMax = 5.0; -- in sec

	SizeMin = 1.0;
	SizeMax = 1.0;

	UseWidthHeightDepth = true;
	Width = 15.0;
	Height = 0.0;
	Depth = 15.0;	
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 5.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 10.0;

	EmitRadiusX = 10.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 5.0;

	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.3;
	
	StartColour2R = 0.5;
	StartColour2G = 0.5;
	StartColour2B = 0.5;
	StartColour2A = 0.3;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = 0.0;

	EndColour2R = 0.5;
	EndColour2G = 0.5;
	EndColour2B = 0.5;
	EndColour2A = 0.0;
}

function horizsmokeZaxis_Emitter()
	return emitter
end