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
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.000001;
};

-- Neutral LIGHT Settings
Light_Day_Neutral = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 175;
	lightDiffColourG = 175;
	lightDiffColourB = 255;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 175;
	lightSpecColourG = 175;
	lightSpecColourB = 255;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};
Light_Afternoon_Neutral = 
{	
--[[	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 255;
	lightDiffColourG = 106;
	lightDiffColourB = 0;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 106;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.000001;--]]
	
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 255;
	lightDiffColourG = 106;
	lightDiffColourB = 0;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 106;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;	
};
Light_Night_Neutral = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = -16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 25;
	lightDiffColourG = 128;
	lightDiffColourB = 255;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 118;
	lightSpecColourG = 128;
	lightSpecColourB = 215;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};

-- Cold LIGHT Settings
Light_Day_Cold = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 105;
	lightDiffColourG = 106;
	lightDiffColourB = 189;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 105;
	lightSpecColourG = 106;
	lightSpecColourB = 189;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};
Light_Afternoon_Cold = 
{	
--[[	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 0.0;
	lightZ = 1.0;
	lightW = 0.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 255;
	lightDiffColourG = 106;
	lightDiffColourB = 0;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 106;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.0;
	lightQuadraticAttenuation = 0.000001;--]]
	
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 155;
	lightDiffColourG = 106;
	lightDiffColourB = 189;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 155;
	lightSpecColourG = 106;
	lightSpecColourB = 189;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;	
};
Light_Night_Cold = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 55;
	lightDiffColourG = 102;
	lightDiffColourB = 211;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 55;
	lightSpecColourG = 102;
	lightSpecColourB = 211;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};

-- Hot LIGHT Settings
Light_Day_Hot = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 194;
	lightDiffColourG = 93;
	lightDiffColourB = 173;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 194;
	lightSpecColourG = 93;
	lightSpecColourB = 173;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};
Light_Afternoon_Hot = 
{	
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = 16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 255;
	lightDiffColourG = 116;
	lightDiffColourB = 0;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 255;
	lightSpecColourG = 116;
	lightSpecColourB = 0;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;	
};
Light_Night_Hot = 
{
	levelLightUpdate = false;
	showVehicleLight = false;
	lightX = 0.0;
	lightY = 10000.0;
	lightZ = -16000.0;
	lightW = 1.0; -- 0.0 for direction, 1.0 for positional
	lightDiffColourR = 116;
	lightDiffColourG = 128;
	lightDiffColourB = 175;
	lightAmbColourR = 0;
	lightAmbColourG = 0;
	lightAmbColourB = 0;
	lightSpecColourR = 116;
	lightSpecColourG = 128;
	lightSpecColourB = 185;
	lightConstantAttenuation = 0.0;
	lightLinearAttenuation = 0.00004;
	lightQuadraticAttenuation = 0.0;
};