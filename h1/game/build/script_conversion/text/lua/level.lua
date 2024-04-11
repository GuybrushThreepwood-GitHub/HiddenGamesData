local levelPack =
{
	{
		packId = 1;
		packCount = 4;

		levelSetupFilename1 = "assets/levels/1/level_setup.lua";
		levelSetupFunction1 = "Load_1";
		levelName1 = 201;

		levelSetupFilename2 = "assets/levels/2/level_setup.lua";
		levelSetupFunction2 = "Load_2";
		levelName2 = 202;

		levelSetupFilename3 = "assets/levels/3/level_setup.lua";
		levelSetupFunction3 = "Load_3";
		levelName3 = 203;

		levelSetupFilename4 = "assets/levels/4/level_setup.lua";
		levelSetupFunction4 = "Load_4";
		levelName4 = 204;
	}
	,
	{
		packId = 2;
		packCount = 4;

		levelSetupFilename1 = "assets/levels/5/level_setup.lua";
		levelSetupFunction1 = "Load_5";
		levelName1 = 205;

		levelSetupFilename2 = "assets/levels/6/level_setup.lua";
		levelSetupFunction2 = "Load_6";
		levelName2 = 206;

		levelSetupFilename3 = "assets/levels/7/level_setup.lua";
		levelSetupFunction3 = "Load_7";
		levelName3 = 207;

		levelSetupFilename4 = "assets/levels/8/level_setup.lua";
		levelSetupFunction4 = "Load_8";
		levelName4 = 208;
	}	
}

function CreateLevelPacks()
	local i=0
	
	for i=1, #levelPack do
		AddLevelPack( levelPack[i] )
	end
		
end