
local emitter = 
{
	SpriteId = 23;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 1;

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

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec

	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 1.0; -- in sec

	SizeMin = 0.50;
	SizeMax = 0.50;

	UseWidthHeightDepth = false;
	Width = 1.0;
	Height = 1.0;
	Depth = 0.0;
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

	StartColour1R = 0.75;
	StartColour1G = 0.54;
	StartColour1B = 0.35;
	StartColour1A = 1.0;
	
	StartColour2R = 0.75;
	StartColour2G = 0.54;
	StartColour2B = 0.35;
	StartColour2A = 1.0;

	EndColour1R = 0.75;
	EndColour1G = 0.54;
	EndColour1B = 0.35;
	EndColour1A = 0.5;

	EndColour2R = 0.75;
	EndColour2G = 0.54;
	EndColour2B = 0.35;
	EndColour2A = 0.5;
}

function keypadpulsedisabled_Emitter()
	return emitter
end