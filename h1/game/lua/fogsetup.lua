-- global fog settings

-- fog modes
-- GL_LINEAR uses fogNear/fogFar
-- GL_EXP uses fogDensity
-- GL_EXP2 uses fogDensity

-- a default fogfor all levels
defaultFogSettings = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = 0.0;
	fogFar = 10000.0;
	fogR = 255;
	fogG = 255;
	fogB = 255;
};

-- Neutral FOG Settings
Fog_Day_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0003;
	fogNear = 250.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 140;
	fogG = 170;
	fogB = 174;
};

Fog_Afternoon_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0003;
	fogNear = 50.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 102;
	fogG = 73;
	fogB = 65;
};

Fog_Night_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.001;
	fogNear = 1000.0;
	fogFar = 2000.0*gameData.FARCLIP_MODIFY;
	fogR = 5;
	fogG = 11;
	fogB = 28;
};

-- Cold FOG Settings
Fog_Day_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0004;
	fogNear = 50.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 140;
	fogG = 170;
	fogB = 174;
};

Fog_Afternoon_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0003;
	fogNear = 50.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 102;
	fogG = 73;
	fogB = 65;
};

Fog_Night_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.001;
	fogNear = 1000.0;
	fogFar = 2000.0*gameData.FARCLIP_MODIFY;
	fogR = 5;
	fogG = 11;
	fogB = 28;
};

-- Hot FOG Settings
Fog_Day_Hot = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0003;
	fogNear = 50.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 119;
	fogG = 128;
	fogB = 110;
};

Fog_Afternoon_Hot = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.0003;
	fogNear = 50.0;
	fogFar = 3000.0*gameData.FARCLIP_MODIFY;
	fogR = 102;
	fogG = 73;
	fogB = 65;
};

Fog_Night_Hot = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.001;
	fogNear = 1000.0;
	fogFar = 2000.0*gameData.FARCLIP_MODIFY;
	fogR = 5;
	fogG = 11;
	fogB = 28;
};