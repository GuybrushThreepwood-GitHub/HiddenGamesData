local levelPack =
{
	{
		packId = 1;
		packCount = 5;

		levelSetupFilename1 = "assets/levels/2_1_skycaperscraper/setup.lua";
		levelSetupFunction1 = "Load_skyscrapercaper";
		levelName1 = 205;
		liteVersionPurchase1 = false;
		liteVersionPurchaseId1 = -1;
		
		levelSetupFilename2 = "assets/levels/2_4_hiddencave/setup.lua";
		levelSetupFunction2 = "Load_hiddencave";
		levelName2 = 208;
		liteVersionPurchase2 = false;
		liteVersionPurchaseId2 = -1;
		
		levelSetupFilename3 = "assets/levels/1_3_shortcircuit/setup.lua";
		levelSetupFunction3 = "Load_shortcircuit";
		levelName3 = 202;
		liteVersionPurchase3 = false;
		liteVersionPurchaseId3 = -1;

		levelSetupFilename4 = "assets/levels/3_2_ghostship/setup.lua";
		levelSetupFunction4 = "Load_ghostship";
		levelName4 = 211;
		liteVersionPurchase4 = true;
		liteVersionPurchaseId4 = 100;

		levelSetupFilename5 = "assets/levels/1_5_asteroids/setup.lua";
		levelSetupFunction5 = "Load_asteroids";
		levelName5 = 204;
		liteVersionPurchase5 = true;	
		liteVersionPurchaseId5 = 101;
	}
}

function CreateLevelPacks()
	local i=0
	
	for i=1, #levelPack do
		AddLevelPack( levelPack[i] )
	end
		
end