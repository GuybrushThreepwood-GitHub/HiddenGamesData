
local emitter = 
{
	SpriteId = -1;
	
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = true;
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
	
	EmitRateMin = 4.0; -- in particles/sec
	EmitRateMax = 6.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 0.5;
	SizeMax = 4.0;
    
	LifetimeMin = 0.2; -- in sec
	LifetimeMax = 1.0; -- in sec
	
	SizeMin = 0.5;
	SizeMax = 4.0;
	
	SpawnDir1X = 0.2;
	SpawnDir1Y = 0.1;
	SpawnDir1Z = 0.1;

	SpawnDir2X = 0.4;
	SpawnDir2Y = 0.3;
	SpawnDir2Z = 0.2;
	
	EmitRadiusX = 4.0;
	EmitRadiusY = 2.0;
	EmitRadiusZ = 2.0;

    ColourRandom = true;
	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.6;
	StartColour1A = 0.2;
	
	StartColour2R = 0.2;
	StartColour2G = 1.0;
	StartColour2B = 0.0;
	StartColour2A = 0.2;
	
	EndColour1R = 0.4;
	EndColour1G = 0.5;
	EndColour1B = 0.8;
	EndColour1A = 0.0;
	
	EndColour2R = 0.4;
	EndColour2G = 0.9;
	EndColour2B = 0.6;
	EndColour2A = 0.0;
		
}

function loop_vacuumedge1_Emitter()
	return emitter
end
