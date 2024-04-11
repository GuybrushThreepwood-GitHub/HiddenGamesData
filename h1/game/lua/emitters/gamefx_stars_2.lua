
local emitter = 
{
	SpriteId = 58;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 20;
	
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
	
	UseScaling = true;
	SizeMin = 40.8;
	SizeMax = 60.0;
	
	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 2.5; -- in sec
	
	UseWidthHeightDepth = false;
	Width = 1.0;
	Height = 0.0;
	Depth = 1.0;
	
	SpawnDir1X = -100.5;
	SpawnDir1Y = -100.5;
	SpawnDir1Z = -100.5;

	SpawnDir2X = 100.5;
	SpawnDir2Y = 100.5;
	SpawnDir2Z = 100.5;
	
	EmitRadiusX = 10.1;
	EmitRadiusY = 10.1;
	EmitRadiusZ = 10.1;
	
	ColourRandom = true;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 0.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
	StartColour2A = 1.0;

	EndColour1R = 0.0;
	EndColour1G = 0.0;
	EndColour1B = 0.0;
	EndColour1A = 0.25;

	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.25;
}

function gamefx_stars2_Emitter()
	return emitter
end