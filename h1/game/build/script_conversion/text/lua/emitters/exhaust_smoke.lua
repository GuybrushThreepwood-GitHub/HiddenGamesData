
-- airplane exhaust
local emitter1 = 
{
	SpriteId = 17;
	
    CameraAlign = true;
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
	GravityZ = -2.0;
	
	EmitRateMin = 6.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 0.1;
	SizeMax = 1.5;

	LifetimeMin = 0.1; -- in sec
	LifetimeMax = 0.2; -- in sec
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -10.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = -10.0;
	
	EmitRadiusX = 0.0;
	EmitRadiusY = 0.05;
	EmitRadiusZ = 0.0;

    ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.5;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.05;
	
	EndColour1R = 0.2;
	EndColour1G = 0.2;
	EndColour1B = 0.2;
	EndColour1A = 0.0;
	
	EndColour2R = 0.2;
	EndColour2G = 0.2;
	EndColour2B = 0.2;
	EndColour2A = 0.0;
		
}

function exhaustsmoke_Emitter()
	return emitter1
end
