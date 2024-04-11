local levelPack =
{
	{
		packId = 1;
		packCount = 5;

		levelSetupFilename1 = "assets/levels/1_1_easydoesit/setup.lua";
		levelSetupFunction1 = "Load_easydoesit";
		levelName1 = 200;
		liteVersionPurchase1 = false;
		liteVersionPurchaseId1 = -1;
		
		levelSetupFilename2 = "assets/levels/1_2_crossroadconfusion/setup.lua";
		levelSetupFunction2 = "Load_crossroadconfusion";
		levelName2 = 201;
		liteVersionPurchase2 = false;
		liteVersionPurchaseId2 = -1;
		
		levelSetupFilename3 = "assets/levels/1_3_shortcircuit/setup.lua";
		levelSetupFunction3 = "Load_shortcircuit";
		levelName3 = 202;
		liteVersionPurchase3 = false;
		liteVersionPurchaseId3 = -1;
		
		levelSetupFilename4 = "assets/levels/1_4_kamikaze/setup.lua";
		levelSetupFunction4 = "Load_kamikaze";
		levelName4 = 203;
		liteVersionPurchase4 = false;
		liteVersionPurchaseId4 = -1;
		
		levelSetupFilename5 = "assets/levels/1_5_asteroids/setup.lua";
		levelSetupFunction5 = "Load_asteroids";
		levelName5 = 204;
		liteVersionPurchase5 = false;
		liteVersionPurchaseId5 = -1;	
	},
	
	{
		packId = 2;
		packCount = 5;

		levelSetupFilename1 = "assets/levels/2_1_skycaperscraper/setup.lua";
		levelSetupFunction1 = "Load_skyscrapercaper";
		levelName1 = 205;
		liteVersionPurchase1 = false;
		liteVersionPurchaseId1 = -1;
		
		levelSetupFilename2 = "assets/levels/2_2_awellofatime/setup.lua";
		levelSetupFunction2 = "Load_wellofatime";
		levelName2 = 206;
		liteVersionPurchase2 = false;
		liteVersionPurchaseId2 = -1;
		
		levelSetupFilename3 = "assets/levels/2_3_spacecamp/setup.lua";
		levelSetupFunction3 = "Load_spacecamp";
		levelName3 = 207;
		liteVersionPurchase3 = false;
		liteVersionPurchaseId3 = -1;
		
		levelSetupFilename4 = "assets/levels/2_4_hiddencave/setup.lua";
		levelSetupFunction4 = "Load_hiddencave";
		levelName4 = 208;
		liteVersionPurchase4 = false;
		liteVersionPurchaseId4 = -1;
		
		levelSetupFilename5 = "assets/levels/2_5_breathin/setup.lua";
		levelSetupFunction5 = "Load_breathin";
		levelName5 = 209;
		liteVersionPurchase5 = false;
		liteVersionPurchaseId5 = -1;	
	},
	
	{
		packId = 3;
		packCount = 5;

		levelSetupFilename1 = "assets/levels/3_1_snaaaake/setup.lua";
		levelSetupFunction1 = "Load_snaaaake";
		levelName1 = 210;
		liteVersionPurchase1 = false;
		liteVersionPurchaseId1 = -1;
		
		levelSetupFilename2 = "assets/levels/3_2_ghostship/setup.lua";
		levelSetupFunction2 = "Load_ghostship";
		levelName2 = 211;
		liteVersionPurchase2 = false;
		liteVersionPurchaseId2 = -1;
		
		levelSetupFilename3 = "assets/levels/3_3_meteorshower/setup.lua";
		levelSetupFunction3 = "Load_meteorshower";
		levelName3 = 212;
		liteVersionPurchase3 = false;
		liteVersionPurchaseId3 = -1;
		
		levelSetupFilename4 = "assets/levels/3_4_elephantdip/setup.lua";
		levelSetupFunction4 = "Load_elephantdip";
		levelName4 = 213;
		liteVersionPurchase4 = false;
		liteVersionPurchaseId4 = -1;
		
		levelSetupFilename5 = "assets/levels/3_5_dangercove/setup.lua";
		levelSetupFunction5 = "Load_dangercove";
		levelName5 = 214;
		liteVersionPurchase5 = false;
		liteVersionPurchaseId5 = -1;		
	}
}

function CreateLevelPacks()
	local i=0
	
	for i=1, #levelPack do
		AddLevelPack( levelPack[i] )
	end
		
end