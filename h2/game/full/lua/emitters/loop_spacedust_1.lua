
local emitter = 
{
	SpriteId = 26;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 30;
    
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = -25.0;
	GravityY = 0.0;
	GravityZ = 0.0;

	EmitRateMin = 5.0; -- in particles/sec
	EmitRateMax = 16.0; -- in particles/sec

    UseScaling = false;
	SizeMin = 0.5;
	SizeMax = 2.0;

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 6.0; -- in sec

	SpawnDir1X = -12.0;
	SpawnDir1Y = 2.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = -26.0;
	SpawnDir2Y = -2.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 5.0;
	EmitRadiusY = 10.0;
	EmitRadiusZ = 0.0;

    ColourRandom = false;        
	StartColour1R = 0.91;
	StartColour1G = 0.66;
	StartColour1B = 0.64;
	StartColour1A = 1.0;
	
	StartColour2R = 0.38;
	StartColour2G = 0.33;
	StartColour2B = 0.96;
	StartColour2A = 0.2;

	EndColour1R = 0.91;
	EndColour1G = 0.66;
	EndColour1B = 0.64;
	EndColour1A = 1.0;

	EndColour2R = 0.38;
	EndColour2G = 0.33;
	EndColour2B = 0.96;
	EndColour2A = 0.2;
}

function loop_spacedust1_Emitter()
	return emitter
end
