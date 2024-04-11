
-- airplane slice
local emitter1 = 
{
	SpriteId = 17;
	
    CameraAlign = false;
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
	GravityY = 0.1;
	GravityZ = 0.0;
	
	EmitRateMin = 4.0; -- in particles/sec
	EmitRateMax = 8.0; -- in particles/sec

    UseScaling = true;
	SizeMin = 0.19;
	SizeMax = 0.4;

	LifetimeMin = 0.50; -- in sec
	LifetimeMax = 1.00; -- in sec
	
	UseWidthHeightDepth = true;
	Width = 0.8;
	Height = 0.8;
	Depth = 25.0;
	
	SpawnDir1X = 0.0;
	SpawnDir1Y = 0.0;
	SpawnDir1Z = -15.0;

	SpawnDir2X = 0.0;
	SpawnDir2Y = 0.0;
	SpawnDir2Z = -15.0;
	
	EmitRadiusX = 0.0;
	EmitRadiusY = 0.0;
	EmitRadiusZ = 0.0;

    ColourRandom = false;
	StartColour1R = 0.81;
	StartColour1G = 0.90;
	StartColour1B = 0.96;
	StartColour1A = 0.025;
	
	StartColour2R = 0.81;
	StartColour2G = 0.90;
	StartColour2B = 0.96;
	StartColour2A = 0.05;
	
	EndColour1R = 0.81;
	EndColour1G = 0.90;
	EndColour1B = 0.96;
	EndColour1A = 0.0;
	
	EndColour2R = 0.81;
	EndColour2G = 0.90;
	EndColour2B = 0.96;
	EndColour2A = 0.0;
		
}

function loop_airslice1_Emitter()
	return emitter1
end
