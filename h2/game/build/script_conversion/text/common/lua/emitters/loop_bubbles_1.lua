
local emitter = 
{
	SpriteId = 26;
	
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

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = 2.0;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 0.25;
	SizeMax = 3.0;
    
	LifetimeMin = 0.25; -- in sec
	LifetimeMax = 4.0; -- in sec

	SpawnDir1X = 0.25;
	SpawnDir1Y = 0.5;
	SpawnDir1Z = 0.25;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.75;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 6.0;
	EmitRadiusY = 6.0;
	EmitRadiusZ = 0.0;

    ColourRandom = false;
	StartColour1R = 0.4;
	StartColour1G = 0.4;
	StartColour1B = 1.0;
	StartColour1A = 0.8;
	
	StartColour2R = 0.9;
	StartColour2G = 0.9;
	StartColour2B = 1.0;
	StartColour2A = 0.4;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function loop_bubbles1_Emitter()
	return emitter
end


