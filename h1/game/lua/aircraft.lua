
local vehiclePack =
{
	{
		packId = 1;
		packCount = 3;
		
		vehicleSetupFilename1 = "assets/models/aircraft/biplane_cloudwalker.lua";
		vehicleSetupFunction1 = "biplane_cloudwalker_Definition";
		vehicleName1 = 100;
		liteVersionPurchase1 = false;
		vehiclePurchaseId1 = -1;

		vehicleSetupFilename2 = "assets/models/aircraft/monoplane_sirocco.lua";
		vehicleSetupFunction2 = "monoplane_sirocco_Definition";
		vehicleName2 = 101;
		liteVersionPurchase2 = false;
		vehiclePurchaseId2 = -1;

		vehicleSetupFilename3 = "assets/models/aircraft/seaplane_seapig.lua";
		vehicleSetupFunction3 = "seaplane_seapig_Definition";
		vehicleName3 = 102;
		liteVersionPurchase3 = false;
		vehiclePurchaseId3 = -1;

		vehicleSetupFilename4 = "";
		vehicleSetupFunction4 = "";
		vehicleName4 = -1;
		liteVersionPurchase4 = false;
		vehiclePurchaseId4 = -1;
	},
}

function CreateVehiclePacks()

	local i=0
	
	for i=1, #vehiclePack do
		AddVehiclePack( vehiclePack[i] )
	end
	
end