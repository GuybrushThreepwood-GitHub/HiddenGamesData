
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

		vehicleSetupFilename3 = "assets/models/vehicles/towtruck_vehicle.lua";
		vehicleSetupFunction3 = "towtruck_Definition";
		vehicleName3 = 102;
		liteVersionPurchase3 = false;
		vehiclePurchaseId3 = 2;

		vehicleSetupFilename4 = "assets/models/vehicles/deliveryvan_vehicle.lua";
		vehicleSetupFunction4 = "deliveryvan_Definition";
		vehicleName4 = 103;
		liteVersionPurchase4 = false;
		vehiclePurchaseId4 = 3;

		vehicleSetupFilename5 = "assets/models/vehicles/hotrod_vehicle.lua";
		vehicleSetupFunction5 = "hotrod_Definition";
		vehicleName5 = 104;
		liteVersionPurchase5 = false;
		vehiclePurchaseId5 = 4;
	},
	
	{
		packId = 2;
		packCount = 5;

		vehicleSetupFilename1 = "assets/models/vehicles/londbotus_vehicle.lua";
		vehicleSetupFunction1 = "bondlotus_Definition";
		vehicleName1 = 105;
		liteVersionPurchase1 = false;
		vehiclePurchaseId1 = 5;

		vehicleSetupFilename2 = "assets/models/vehicles/teamavan_vehicle.lua";
		vehicleSetupFunction2 = "ateamvan_Definition";
		vehicleName2 = 106;
		liteVersionPurchase2 = false;
		vehiclePurchaseId2 = 6;

		vehicleSetupFilename3 = "assets/models/vehicles/ghoulhunter_vehicle.lua";
		vehicleSetupFunction3 = "ghoulhunter_Definition";
		vehicleName3 = 107;
		liteVersionPurchase3 = false;
		vehiclePurchaseId3 = 7;

		vehicleSetupFilename4 = "assets/models/vehicles/spinner_vehicle.lua";
		vehicleSetupFunction4 = "spinner_Definition";
		vehicleName4 = 108;
		liteVersionPurchase4 = false;
		vehiclePurchaseId4 = 8;

		vehicleSetupFilename5 = "assets/models/vehicles/ledorean_vehicle.lua";
		vehicleSetupFunction5 = "delorean_Definition";
		vehicleName5 = 109;
		liteVersionPurchase5 = false;
		vehiclePurchaseId5 = 9;
	}
}

function CreateVehiclePacks()

	local i=0
	
	for i=1, #vehiclePack do
		AddVehiclePack( vehiclePack[i] )
	end
	
end