
emitter = 
{
	SpriteId = 17;

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
	GravityY = -5.0;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 2; -- in sec

	UseScaling = true;
	SizeMin = 5.0;
	SizeMax = 6.0;

	SpawnDir1X = -1.0;
	SpawnDir1Y = 3.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 8.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 2.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

	ColourRandom = false;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
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

function watersplash_out_Emitter()
	return emitter
end

