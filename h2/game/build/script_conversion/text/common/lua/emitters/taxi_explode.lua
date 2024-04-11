
emitter1 = 
{
	SpriteId = 35;
	
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
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 0.2; -- in sec
	LifetimeMax = 0.5; -- in sec

	UseScaling = false;
	SizeMin = 5.0;
	SizeMax = 5.0;

	SpawnDir1X = -8.0;
	SpawnDir1Y = -8.0;
	SpawnDir1Z = -8.0;

	SpawnDir2X = 8.0;
	SpawnDir2Y = 8.0;
	SpawnDir2Z = 8.0;

	EmitRadiusX = 0.5;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.5;

	ColourRandom = true;
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 1.0;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.5;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.5;
		
}

emitter2 = 
{
	SpriteId = 12;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 16;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 3.0;
	GravityZ = 0.0;

	EmitRateMin = 0.5; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 1.5; -- in sec

    UseScaling = true;
	SizeMin = 1.0;
	SizeMax = 3.5;

	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 1.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.65;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.65;

	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 0.75;
	
	StartColour2R = 1.0;
	StartColour2G = 1.0;
	StartColour2B = 1.0;
	StartColour2A = 0.25;

	EndColour1R = 1.0;
	EndColour1G = 1.0;
	EndColour1B = 1.0;
	EndColour1A = 0.0;

	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
		
}

function taxi_explode_sparks_Emitter()
	return emitter1
end

function taxi_explode_smoke_Emitter()
	return emitter2
end
