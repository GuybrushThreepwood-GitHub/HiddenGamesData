
emitter = 
{
	SpriteId = 1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;

	EnableDepth = false;
	DepthFunc = GL_LEQUAL;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = false;
	AlphaCompare = GL_ALWAYS;
	AlphaClamp = 0.0;

	GravityX = 0.0;
	GravityY = 3.5;
	GravityZ = 0.0;

	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 3.0; -- in particles/sec

	LifetimeMin = 0.5; -- in sec
	LifetimeMax = 1.5; -- in sec

	UseScaling = true;
	SizeMin = 0.5;
	SizeMax = 1.0;

	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 0.5;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.5;

	ColourRandom = false;
	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 1.0;
	
	StartColour2R = 0.1;
	StartColour2G = 0.1;
	StartColour2B = 0.1;
	StartColour2A = 1.0;

	EndColour1R = 0.1;
	EndColour1G = 0.1;
	EndColour1B = 0.1;
	EndColour1A = 0.2;

	EndColour2R = 0.0;
	EndColour2G = 0.0;
	EndColour2B = 0.0;
	EndColour2A = 0.2;
}

function low_vehicle_damage_Emitter()
	return emitter
end
