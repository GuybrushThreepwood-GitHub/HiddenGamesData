
local emitter = 
{
	SpriteId = 26;
			
	CameraAlign = true;
	UsePoints = false;
	SmoothPoints = false;
	UseHWPointSprites = false;
	
	MaxParticles = 20;
	
	EnableDepth = false;
	DepthFunc = GL_LESS;

	EnableBlending = true;
	BlendSrc = GL_SRC_ALPHA;
	BlendDest = GL_ONE_MINUS_SRC_ALPHA;

	EnableAlpha = true;
	AlphaCompare = GL_GREATER;
	AlphaClamp = 0.25;

	GravityX = 0.0;
	GravityY = -10.0;
	GravityZ = 0.0;
	
	EmitRateMin = 6.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec
	
	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 2.0; -- in sec
	
	SizeMin = 0.5;
	SizeMax = 2.5;
	
	SpawnDir1X = -50.0;
	SpawnDir1Y = -50.0;
	SpawnDir1Z = -50.0;

	SpawnDir2X = 50.0;
	SpawnDir2Y = 50.0;
	SpawnDir2Z = 50.0;
	
	EmitRadiusX = 3.0;
	EmitRadiusY = 3.0;
	EmitRadiusZ = 3.0;
	
	StartColour1R = 0.5;
	StartColour1G = 0.5;
	StartColour1B = 0.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
	StartColour2A = 0.5;
	
	EndColour1R = 0.4;
	EndColour1G = 0.4;
	EndColour1B = 0.4;
	EndColour1A = 0.2;
	
	EndColour2R = 0.4;
	EndColour2G = 0.4;
	EndColour2B = 0.4;
	EndColour2A = 0.0;
		
}

function mine_explode_Emitter()
	return emitter
end
