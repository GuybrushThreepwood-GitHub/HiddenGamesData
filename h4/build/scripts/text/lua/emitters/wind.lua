
local emitter = 
{
	SpriteId = 1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;

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

	EmitRateMin = 50.0; -- in particles/sec
	EmitRateMax = 10.0; -- in particles/sec

	LifetimeMin = 3.0; -- in sec
	LifetimeMax = 4.0; -- in sec

	SizeMin = 500.0;
	SizeMax = 500.0;

	SpawnDir1X = -50.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = 0.0;

	SpawnDir2X = -50.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = 0.0;

	EmitRadiusX = 5.0;
	EmitRadiusY = 5.0;
	EmitRadiusZ = 30.0;

	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.05;
	
	StartColour2R = 0.5;
	StartColour2G = 0.5;
	StartColour2B = 0.5;
	StartColour2A = 0.05;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = 0.0;

	EndColour2R = 0.5;
	EndColour2G = 0.5;
	EndColour2B = 0.5;
	EndColour2A = 0.0;
}

local z_axis_emitter = 
{
	SpriteId = 1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;

	MaxParticles = 5;

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

	EmitRateMin = 10.0; -- in particles/sec
	EmitRateMax = 50.0; -- in particles/sec

	LifetimeMin = 3.0; -- in sec
	LifetimeMax = 4.0; -- in sec

	SizeMin = 100.0;
	SizeMax = 100.0;

	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -50.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = -50.0;

	EmitRadiusX = 0.0;
	EmitRadiusY = 5.0;
	EmitRadiusZ = 0.0;

	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.5;
	StartColour1A = 0.02;
	
	StartColour2R = 0.5;
	StartColour2G = 0.5;
	StartColour2B = 0.5;
	StartColour2A = 0.02;

	EndColour1R = 0.5;
	EndColour1G = 0.5;
	EndColour1B = 0.5;
	EndColour1A = 0.0;

	EndColour2R = 0.5;
	EndColour2G = 0.5;
	EndColour2B = 0.5;
	EndColour2A = 0.0;
}

function wind_Emitter()
	return emitter
end

function windZaxis_Emitter()
	return z_axis_emitter
end