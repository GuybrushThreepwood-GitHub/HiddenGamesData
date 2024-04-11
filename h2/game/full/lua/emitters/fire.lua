
FIRE_EMITTER_ID = 1000

emitter = 
{
	--Id = FIRE_EMITTER_ID;
	--TextureFile = EMITTER_TEXTURES .. "small-risingsmoke.png";
	SpriteId = 9;
	
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
	GravityY = -1.0;
	GravityZ = 0.0;
	
	EmitRateMin = 1.0; -- in particles/sec
	EmitRateMax = 1.0; -- in particles/sec
	
	LifetimeMin = 1.0; -- in sec
	LifetimeMax = 1.0; -- in sec
	
	SizeMin = 1.0;
	SizeMax = 1.0;
	
	SpawnDir1X = -1.0;
	SpawnDir1Y = -1.0;
	SpawnDir1Z = -1.0;

	SpawnDir2X = 1.0;
	SpawnDir2Y = 1.0;
	SpawnDir2Z = 1.0;
	
	EmitRadiusX = 1.0;
	EmitRadiusY = 1.0;
	EmitRadiusZ = 1.0;
	
	StartColour1R = 1.0;
	StartColour1G = 1.0;
	StartColour1B = 1.0;
	StartColour1A = 1.0;
	
	StartColour2R = 0.0;
	StartColour2G = 0.0;
	StartColour2B = 0.0;
	StartColour2A = 1.0;
	
	EndColour1R = 0.0;
	EndColour1G = 0.0;
	EndColour1B = 0.0;
	EndColour1A = 0.0;
	
	EndColour2R = 1.0;
	EndColour2G = 1.0;
	EndColour2B = 1.0;
	EndColour2A = 0.0;
}

function fire_Emitter()
	return emitter
end
