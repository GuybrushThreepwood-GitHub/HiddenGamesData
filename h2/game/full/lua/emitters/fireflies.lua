
local emitter = 
{
	SpriteId = 26;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 4;
	
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
	
	EmitRateMin = 0.0; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec
	
	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 2.0; -- in sec
	
	SizeMin = 0.5;
	SizeMax = 2.0;
	
	SpawnDir1X = -5.0;
	SpawnDir1Y = -5.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 5.0;
	SpawnDir2Y = 5.0;
	SpawnDir2Z = 0.0;
	
	EmitRadiusX = 5.0;
	EmitRadiusY = 5.0;
	EmitRadiusZ = 1.0;
	
	StartColour1R = 0.8;
	StartColour1G = 0.8;
	StartColour1B = 0.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.8;
	
	EndColour1R = 0.8;
	EndColour1G = 0.8;
	EndColour1B = 0.0;
	EndColour1A = 0.0;
	
	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
		
}

function fireflies_Emitter()
	return emitter
end
