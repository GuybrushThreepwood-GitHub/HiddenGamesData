
local emitter = 
{
	SpriteId = 26;
    
    CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = true;
	
	MaxParticles = 1000;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 5.0;
	GravityY = -10.0;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 2.0; -- in particles/sec

    UseScaling = false;
	SizeMin = 0.5;
	SizeMax = 0.75;
    
	LifetimeMin = 2.0; -- in sec
	LifetimeMax = 4.0; -- in sec

	SpawnDir1X = -1.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 1.0;
	SpawnDir2Z = 1.0;

	EmitRadiusX = 130.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 1.0;

    ColourRandom = false;
	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 1.0;

	StartColour2R = 0.8;
	StartColour2G = 0.8;
	StartColour2B = 0.8;
	StartColour2A = 1.0;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = .5;

	EndColour2R = 0.8;
	EndColour2G = 0.8;
	EndColour2B = 0.8;
	EndColour2A = 1.0;
}

function weather_rain1_Emitter()
	return emitter
end
