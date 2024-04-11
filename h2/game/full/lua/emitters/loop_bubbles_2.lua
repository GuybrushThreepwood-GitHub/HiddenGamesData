
local emitter = 
{
	SpriteId = 26;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 12;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_DST_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = 2.0;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 6.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 2.0;
	SizeMax = 5.0;
    
	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 2.0; -- in sec

	SpawnDir1X = -2.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = -2.0;

	SpawnDir2X = 2.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 2.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

    ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.5;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function loop_bubbles2_Emitter()
	return emitter
end
