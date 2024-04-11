
local emitter = 
{
	SpriteId = 21;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 6;

	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.05;

	GravityX = 0.0;
	GravityY = 0.0;
	GravityZ = 0.0;

	EmitRateMin = 0.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 2.0; -- in sec

	SizeMin = 0.1;
	SizeMax = 0.2;

	SpawnDir1X = -1.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = -1.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 1.0;
	SpawnDir2Z = 1.0;
	
	EmitRadiusX = 0.25;
	EmitRadiusY = 0.25;
	EmitRadiusZ = 0.25;
	
	StartColour1R = 0.0;
	StartColour1G = 0.0;
	StartColour1B = 0.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
	StartColour2A = 0.8;
	
	EndColour1R = 0.0;
	EndColour1G = 0.0;
	EndColour1B = 0.0;
	EndColour1A = 0.0;
	
	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.0;
}

function flyingants_Emitter()
	return emitter
end