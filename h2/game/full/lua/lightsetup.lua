-- global light settings for each atmosphere

-- a default for all levels
defaultLightSettings = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 255;
	lightDiffColourG = 255;
	lightDiffColourB = 255;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 1.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.0;
};

-- NEUTRAL Level Light Settings
dayLevelSettings_Neutral = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 120.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 131;
	lightDiffColourG = 222;
	lightDiffColourB = 127;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 0;
	lightSpecColourG = 0;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
afternoonLevelSettings_Neutral = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 100.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 178;
	lightDiffColourG = 128;
	lightDiffColourB = 25;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 0;
	lightSpecColourG = 0;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
nightLevelSettings_Neutral = 
{
	levelLightUpdate = false;
	showVehicleLight = true;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 20;
	lightDiffColourG = 20;
	lightDiffColourB = 50;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 0;
	lightSpecColourG = 0;
	lightSpecColourB = 0;
	lightConstantAttenuation = 1.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.0;
};

-- WARM Level Light Settings
dayLevelSettings_Warm = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 120.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 231;
	lightDiffColourG = 222;
	lightDiffColourB = 127;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 0;
	lightSpecColourG = 0;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
afternoonLevelSettings_Warm = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 100.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 178;
	lightDiffColourG = 128;
	lightDiffColourB = 25;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 0;
	lightSpecColourG = 0;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
nightLevelSettings_Warm = 
{
	levelLightUpdate = false;
	showVehicleLight = true;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 30;
	lightDiffColourG = 30;
	lightDiffColourB = 80;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 1.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.0;
};

-- COLD Level Light Settings
dayLevelSettings_Cold = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 120.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 118;
	lightDiffColourG = 189;
	lightDiffColourB = 239;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
afternoonLevelSettings_Cold = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 100.0;
	lightZ = 10.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 131;
	lightDiffColourG = 170;
	lightDiffColourB = 200;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.00001;
};
nightLevelSettings_Cold = 
{
	levelLightUpdate = false;
	showVehicleLight = true;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 20;
	lightDiffColourG = 20;
	lightDiffColourB = 50;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 1.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.0;
};

-- this is the light that follows the player at night
nightPlayerLightSettings = 
{
	lightX = 0.0; -- posX = playerPosX + lightX
	lightY = 2.0; -- posY = playerPosY + lightY
	lightZ = 1.0; -- posZ = playerPosZ + lightZ
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional	
	lightDiffColourR = 205;
	lightDiffColourG = 205;
	lightDiffColourB = 255;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 255;
	lightSpecColourB = 255;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.1;
	lightQuadraticAttenuation = 0.0;
};