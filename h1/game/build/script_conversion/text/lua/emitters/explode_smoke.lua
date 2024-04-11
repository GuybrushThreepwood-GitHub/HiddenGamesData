
local emitter = 
{
	SpriteId = 4;
	
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
	
	EmitRateMin = 6.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec
	
	UseScaling = true;
	SizeMin = 10.1;
	SizeMax = 170.0;
	
	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 0.5; -- in sec
	
	SizeMin = 2.0;
	SizeMax = 8.0;
	
	SpawnDir1X = -50.0;
	SpawnDir1Y = -50.0;
	SpawnDir1Z = -50.0;

	SpawnDir2X = 50.0;
	SpawnDir2Y = 50.0;
	SpawnDir2Z = 50.0;
	
	EmitRadiusX = 2.0;
	EmitRadiusY = 1.0;
	EmitRadiusZ = 2.0;
	
	ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 1.0;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = 0.5;

	EndColour2R = 0.5;
	EndColour2G = 0.5;
	EndColour2B = 0.5;
	EndColour2A = 0.5;
}

function explodesmoke_Emitter()
	return emitter
end