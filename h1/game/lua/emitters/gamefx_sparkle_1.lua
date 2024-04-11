
local emitter = 
{
	SpriteId = 30;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;
	
	EmitRateMin = 0.0; -- in particles/sec
	EmitRateMax = 2.25; -- in particles/sec
	
	UseScaling = false;
	SizeMin = 3.0;
	SizeMax = 6.0;
	
	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 2.0; -- in sec
	
	UseWidthHeightDepth = false;
	Width = 1.0;
	Height = 0.0;
	Depth = 1.0;
	
	SpawnDir1X = -1.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = -1.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 1.0;
	SpawnDir2Z = 1.0;
	
	EmitRadiusX = 0.1;
	EmitRadiusY = 0.1;
	EmitRadiusZ = 0.1;
	
	ColourRandom = true;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
	StartColour2A = 1.0;

	EndColour1R = 0.0;
	EndColour1G = 0.0;
	EndColour1B = 0.0;
	EndColour1A = 0.5;

	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.5;
}

function gamefx_sparkle1_Emitter()
	return emitter
end