
local stageList =
{	
	-- STAGE 01 : Solitary Confinment
	{
		stage_name = "stage01";
		stage_file = "stages/s01/setup.lua";
		stage_setup_func = "setup_stage01";
	},
	-- STAGE 01a : Below Solitary Confinement
	{
		stage_name = "stage01a";
		stage_file = "stages/s01a/setup.lua";
		stage_setup_func = "setup_stage01a";
	},
	-- STAGE 02 : Strut A to Solitary Confinement Connecting Bridge
	{
		stage_name = "stage02";
		stage_file = "stages/s02/setup.lua";
		stage_setup_func = "setup_stage02";
	},
	-- STAGE 03 : Strut A F3, Roof
	{
		stage_name = "stage03";
		stage_file = "stages/s03/setup.lua";
		stage_setup_func = "setup_stage03";
	},
	-- STAGE 03a : Strut A F3, Storage Room
	{
		stage_name = "stage03a";
		stage_file = "stages/s03a/setup.lua";
		stage_setup_func = "setup_stage03a";
	},
	-- STAGE 04 : Strut A F1, Elevator Room
	{
		stage_name = "stage04";
		stage_file = "stages/s04/setup.lua";
		stage_setup_func = "setup_stage04";
	},
	-- STAGE 05 : Strut A F1, Prison Block
	{
		stage_name = "stage05";
		stage_file = "stages/s05/setup.lua";
		stage_setup_func = "setup_stage05";
	},
	-- STAGE 06 : Strut A F1, West Exit
	{
		stage_name = "stage06";
		stage_file = "stages/s06/setup.lua";
		stage_setup_func = "setup_stage06";
	},
	-- STAGE 07 : Strut A F1, East Exit
	{
		stage_name = "stage07";
		stage_file = "stages/s07/setup.lua";
		stage_setup_func = "setup_stage07";
	},
	-- STAGE 08 : Strut A F2, Elevator Room
	{
		stage_name = "stage08";
		stage_file = "stages/s08/setup.lua";
		stage_setup_func = "setup_stage08";
	},
	-- STAGE 09 : Strut A F2, Prison Block
	{
		stage_name = "stage09";
		stage_file = "stages/s09/setup.lua";
		stage_setup_func = "setup_stage09";
	},
	-- STAGE 10 : Strut A to B Connecting Bridge
	{
		stage_name = "stage10";
		stage_file = "stages/s10/setup.lua";
		stage_setup_func = "setup_stage10";
	},
	-- STAGE 11 : Strut A to C Connecting Bridge
	{
		stage_name = "stage11";
		stage_file = "stages/s11/setup.lua";
		stage_setup_func = "setup_stage11";
	},
	-- STAGE 12 : Recreational Yard (aka The Bridge)
	{
		stage_name = "stage12";
		stage_file = "stages/s12/setup.lua";
		stage_setup_func = "setup_stage12";
	},
	-- STAGE 13 : Strut B F1, East Exit
	{
		stage_name = "stage13";
		stage_file = "stages/s13/setup.lua";
		stage_setup_func = "setup_stage13";
	},
	-- STAGE 14 : Strut B F1, Prison Block
	{
		stage_name = "stage14";
		stage_file = "stages/s14/setup.lua";
		stage_setup_func = "setup_stage14";
	},
	-- STAGE 15 : Strut C F1, West Exit
	{
		stage_name = "stage15";
		stage_file = "stages/s15/setup.lua";
		stage_setup_func = "setup_stage15";
	},
	-- STAGE 16 : Strut C F1, Prison Block
	{
		stage_name = "stage16";
		stage_file = "stages/s16/setup.lua";
		stage_setup_func = "setup_stage16";
	},
	-- STAGE 17 : Building 1 F1, West Entrance
	{
		stage_name = "stage17";
		stage_file = "stages/s17/setup.lua";
		stage_setup_func = "setup_stage17";
	},
	-- STAGE 17a : Building 1 F1, Kitchen
	{
		stage_name = "stage17a";
		stage_file = "stages/s17a/setup.lua";
		stage_setup_func = "setup_stage17a";
	},
	-- STAGE 18 : Building 1 F1, Mess Hall
	{
		stage_name = "stage18";
		stage_file = "stages/s18/setup.lua";
		stage_setup_func = "setup_stage18";
	},
	-- STAGE 19 : Building 1 B1, Maintenance
	{
		stage_name = "stage19";
		stage_file = "stages/s19/setup.lua";
		stage_setup_func = "setup_stage19";
	},
	-- STAGE 19a : Building 1 B1, Maintenance Worker's Office
	{
		stage_name = "stage19a";
		stage_file = "stages/s19a/setup.lua";
		stage_setup_func = "setup_stage19a";
	},
	-- STAGE 20 : West Connecting Bridge
	{
		stage_name = "stage20";
		stage_file = "stages/s20/setup.lua";
		stage_setup_func = "setup_stage20";
	},
	-- STAGE 21 : East Connecting Bridge
	{
		stage_name = "stage21";
		stage_file = "stages/s21/setup.lua";
		stage_setup_func = "setup_stage21";
	},
	-- STAGE 22 : Main Access Bridge
	{
		stage_name = "stage22";
		stage_file = "stages/s22/setup.lua";
		stage_setup_func = "setup_stage22";
	},
	-- STAGE 23 : Building 2 F1, Rec Room
	{
		stage_name = "stage23";
		stage_file = "stages/s23/setup.lua";
		stage_setup_func = "setup_stage23";
	},
	-- STAGE 24 : Building 2 F2, Library
	{
		stage_name = "stage24";
		stage_file = "stages/s24/setup.lua";
		stage_setup_func = "setup_stage24";
	},
	-- STAGE 25 : Building 5 F2, Admin
	{
		stage_name = "stage25";
		stage_file = "stages/s25/setup.lua";
		stage_setup_func = "setup_stage25";
	},
	-- STAGE 25a : Building 5 F2, North Bridge Room
	{
		stage_name = "stage25a";
		stage_file = "stages/s25a/setup.lua";
		stage_setup_func = "setup_stage25a";
	},
	-- STAGE 25b : Building 5 F2, West Bridge Room
	{
		stage_name = "stage25b";
		stage_file = "stages/s25b/setup.lua";
		stage_setup_func = "setup_stage25b";
	},
	-- STAGE 26 : Warehouse F1, Main Corridor
	{
		stage_name = "stage26";
		stage_file = "stages/s26/setup.lua";
		stage_setup_func = "setup_stage26";
	},
	-- STAGE 26a : Warehouse F2, Roof
	{
		stage_name = "stage26a";
		stage_file = "stages/s26a/setup.lua";
		stage_setup_func = "setup_stage26a";
	},
	-- STAGE 26b : Warehouse F2, Roof
	{
		stage_name = "stage26b";
		stage_file = "stages/s26b/setup.lua";
		stage_setup_func = "setup_stage26b";
	},
	-- STAGE 27 : Warehouse F1, Main Hall
	{
		stage_name = "stage27";
		stage_file = "stages/s27/setup.lua";
		stage_setup_func = "setup_stage27";
	},
	-- STAGE 28 : Warehouse to Comm Tower Connecting Bridge
	{
		stage_name = "stage28";
		stage_file = "stages/s28/setup.lua";
		stage_setup_func = "setup_stage28";
	},
	-- STAGE 29 : Comm Tower F1, Entrance
	{
		stage_name = "stage29";
		stage_file = "stages/s29/setup.lua";
		stage_setup_func = "setup_stage29";
	},
	-- STAGE 29a : Comm Tower F2
	{
		stage_name = "stage29a";
		stage_file = "stages/s29a/setup.lua";
		stage_setup_func = "setup_stage29a";
	},
	-- STAGE 29b : Comm Tower B1, Elevator Room
	{
		stage_name = "stage29b";
		stage_file = "stages/s29b/setup.lua";
		stage_setup_func = "setup_stage29b";
	},
	-- STAGE 29c : Comm Tower B1, Storage
	{
		stage_name = "stage29c";
		stage_file = "stages/s29c/setup.lua";
		stage_setup_func = "setup_stage29c";
	},
	-- STAGE 30a : Building 3 F2, Reception
	{
		stage_name = "stage30a";
		stage_file = "stages/s30a/setup.lua";
		stage_setup_func = "setup_stage30a";
	},
	-- STAGE 30b : Building 3 F2, Surgical Wards
	{
		stage_name = "stage30b";
		stage_file = "stages/s30b/setup.lua";
		stage_setup_func = "setup_stage30b";
	},
	-- STAGE 30c : Building 3 F2, Private Rooms
	{
		stage_name = "stage30c";
		stage_file = "stages/s30c/setup.lua";
		stage_setup_func = "setup_stage30c";
	},
	-- STAGE 31a : Building 3 F1, Hospital Wards
	{
		stage_name = "stage31a";
		stage_file = "stages/s31a/setup.lua";
		stage_setup_func = "setup_stage31a";
	},
	-- STAGE 31b : Building 3 F1, Main Ward
	{
		stage_name = "stage31b";
		stage_file = "stages/s31b/setup.lua";
		stage_setup_func = "setup_stage31b";
	},
	-- STAGE 32 : Helipad Bridge
	{
		stage_name = "stage32";
		stage_file = "stages/s32/setup.lua";
		stage_setup_func = "setup_stage32";
	},
	-- STAGE 33 : Helipad (power off)
	{
		stage_name = "stage33";
		stage_file = "stages/s33/setup.lua";
		stage_setup_func = "setup_stage33";
	},
	-- STAGE 34 : Helipad (power on)
	{
		stage_name = "stage34";
		stage_file = "stages/s34/setup.lua";
		stage_setup_func = "setup_stage34";
	}
}

function CreateStages()
	local i=0
	
	for i=1, #stageList do
		AddToStages( stageList[i] )
	end
		
end