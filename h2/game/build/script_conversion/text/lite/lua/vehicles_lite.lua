
local vehiclePack =
{
	{
		packId = 1;
		packCount = 5;

		vehicleSetupFilename1 = "assets/models/vehicles/yellowcab_vehicle.lua";
		vehicleSetupFunction1 = "yellowcab_Definition";
		vehicleName1 = 100;
		liteVersionPurchase1 = false;
		vehiclePurchaseId1 = -1;

		vehicleSetupFilename2 = "assets/models/vehicles/blackcab_vehicle.lua";
		vehicleSetupFunction2 = "blackcab_Definition";
		vehicleName2 = 101;
		liteVersionPurchase2 = false;
		vehiclePurchaseId2 = -1;

		vehicleSetupFilename3 = "";
		vehicleSetupFunction3 = "";
		vehicleName3 = -1;
		liteVersionPurchase3 = false;
		vehiclePurchaseId3 = -1;
		
		vehicleSetupFilename4 = "";
		vehicleSetupFunction4 = "";
		vehicleName4 = -1;
		liteVersionPurchase4 = false;
		vehiclePurchaseId4 = -1;

		vehicleSetupFilename5 = "assets/models/vehicles/hotrod_vehicle.lua";
		vehicleSetupFunction5 = "hotrod_Definition";
		vehicleName5 = 104;
		liteVersionPurchase5 = true;
		vehiclePurchaseId5 = 4;
	}	
}

function CreateVehiclePacks()

	local i=0
	
	for i=1, #vehiclePack do
		AddVehiclePack( vehiclePack[i] )
	end
	
end