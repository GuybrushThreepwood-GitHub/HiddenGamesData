
local emitter = 
{
	SpriteId = 2;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 16;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = -0.8;
	GravityY = 0.5;
	GravityZ = 0.0;
	
	EmitRateMin = 0.1; -- in particles/sec
	EmitRateMax = 0.5; -- in particles/sec
	
	UseScaling = true;
	SizeMin = 2.25;
	SizeMax = 20.0;
	
	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 16.5; -- in sec
	
	SizeMin = 2.25;
	SizeMax = 20.0;
	
	SpawnDir1X = -0.25;
	SpawnDir1Y = 1.0;
	SpawnDir1Z = -0.25;

	SpawnDir2X = 0.25;
	SpawnDir2Y = 2.5;
	SpawnDir2Z = 0.25;
	
	EmitRadiusX = 0.25;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.25;
	
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

function loop_smoke3_Emitter()
	return emitter
end