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
	fogFar = 100.0;
	fogR = 255;
	fogG = 255;
	fogB = 255;
};

-- NEUTRAL Fog Settings
defaultFogDaySettings_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.025;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 166;
	fogG = 205;
	fogB = 228;
};

defaultFogAfternoonSettings_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 143;
	fogG = 152;
	fogB = 141;
};

defaultFogNightSettings_Neutral = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 0;
	fogG = 20;
	fogB = 50;
};

-- WARM Fog Settings
-- NEUTRAL Fog Settings
defaultFogDaySettings_Warm = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.025;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 228;
	fogG = 205;
	fogB = 166;
};

defaultFogAfternoonSettings_Warm = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 143;
	fogG = 122;
	fogB = 101;
};

defaultFogNightSettings_Warm = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 20;
	fogG = 20;
	fogB = 5;
};

-- COLD Fog Settings
defaultFogDaySettings_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.025;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 166;
	fogG = 205;
	fogB = 248;
};

defaultFogAfternoonSettings_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -10.0;
	fogFar = 100.0;
	fogR = 103;
	fogG = 102;
	fogB = 190;
};

defaultFogNightSettings_Cold = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.05;
	fogNear = -5.0;
	fogFar = 100.0;
	fogR = 10;
	fogG = 30;
	fogB = 60;
};

-- SUNSET Fog Settings
sunset_FogSettings = 
{
	fogMode = GL_LINEAR;
	fogDensity = 0.5;
	fogNear = 10.0;
	fogFar = 100.0;
	fogR = 232;
	fogG = 105;
	fogB = 4;
};