
-- ###
--[[
DEVELOPMENT ONLY: This allows setting up the save file directly
--]]
-- ###
function DeveloperSave()

--[[	SetDataValue( "level1_doors_unlocked", 	1 )
	SetDataValue( "level2_doors_unlocked", 	1 )
	SetDataValue( "level3_doors_unlocked", 	1 )
	
	SetDataValue( "s01_lift_unlocked", 		1 )
	SetDataValue( "s03_door_unlocked", 		1 )
	SetDataValue( "used_fuse_in_s17", 		1 )
	SetDataValue( "s30b_surgery_unlocked", 	1 )
	SetDataValue( "used_dw80_in_s29b", 		1 )
	SetDataValue( "helipad_power_on", 		1 )
	
	SetDataValue( "s01_keypad", 			1 )	
	SetDataValue( "s05_to_s12_keypad", 		1 )
	SetDataValue( "s14_to_s12_keypad", 		1 )	
	SetDataValue( "s16_to_s12_keypad", 		1 )	
	SetDataValue( "s26_to_s26a_keypads", 	1 )	
	SetDataValue( "s30a_keypad", 			1 )	
	
	SetDataValue( "s29b_scare", 			1 )	
	SetDataValue( "s33_scare", 				1 )	
	
	SetDataValue( "hidden_token_1", 		1 )
	SetDataValue( "hidden_token_2", 		1 )
	SetDataValue( "hidden_token_3", 		1 )
	SetDataValue( "hidden_token_4", 		1 )
	SetDataValue( "hidden_token_5", 		1 )
	
	SetDataValue( "head_hunter_1", 			1 )
	SetDataValue( "head_hunter_2", 			1 )
	SetDataValue( "head_hunter_3", 			1 )
	SetDataValue( "head_hunter_4", 			1 )
	SetDataValue( "head_hunter_5", 			1 )
	
	SetDataValue( "criminal_docs_1", 		1 )
	SetDataValue( "criminal_docs_2", 		1 )
	SetDataValue( "criminal_docs_3", 		1 )
	SetDataValue( "criminal_docs_4", 		1 )
	SetDataValue( "criminal_docs_5", 		1 )
 
	
	SetPlayerHealth( 100 )
	-- pistol mag, total, shotgun mag, total
	SetPlayerAmmo( 6, 71, 3, 72 )
 
	-- not counted as inventory, but ids used for the player
	AddItem(6001) -- pistol
	AddItem(6004) -- shotgun

	-- clothing
	AddItem(7001) -- Maintenance 
	AddItem(7002) -- Birthday 
	AddItem(7003) -- Leather Biker 
	AddItem(7004) -- Hidden Tattoo 
	AddItem(7005) -- Assassin's Suit 
	AddItem(7006) -- Classic Prison Stripes 
	AddItem(7007) -- Rainbow T-Shirt 
	AddItem(7008) -- Stealth Suit 
	
	-- inventory set up
	AddItem(6000) -- paper (s01 room)
	AddItem(6002) -- severed hand
	AddItem(6003) -- fuse
	AddItem(6005) -- lockerkey4
	AddItem(6006) -- clipboard for slider hold
	AddItem(6009) -- dw80
	
	AddItem(6010) -- security card level 1
	AddItem(6011) -- security card level 2
	AddItem(6012) -- security card level 3

	AddItem(6016) -- key green
	AddItem(6017) -- key red

	AddItem(6019) -- mobile phone
	AddItem(6020) -- torch
	AddItem(6021) -- pilots log
	AddItem(6022) -- power relay
	AddItem(6023) -- screwdriver
	AddItem(6024) -- paper 2 (safe code)
	AddItem(6031) -- paper 2 (safe code)

--]]

end

-- ###
--[[
This is where special variables can be added to the save file. You can add a variable that is used in a logic request in a script to enable/disable
parts of the level the player may have already done. When you add a value it will change the size of the save game data so will invalidate any save you may
have so be aware when adding.
--]]
-- ###
local variableList = 
{
	-- 		variable name						variable default value
	
	-- card door unlocks
		{	"level1_doors_unlocked",			0					}
	,	{	"level2_doors_unlocked",			0					}
	,	{	"level3_doors_unlocked",			0					}
	
	-- game related
	,	{	"s01_lift_unlocked",				0					}	
	,	{	"s03_door_unlocked",				0					}
	,	{	"used_fuse_in_s17",					0					}
	,	{	"s30b_surgery_unlocked",			0					}	
	,	{	"used_dw80_in_s29b",				0					}
	,	{	"helipad_power_on",					0					}
	
	-- numeric keypad entry
	,	{	"s01_keypad",						0					}	
	,	{	"s05_to_s12_keypad",				0					}	
	,	{	"s14_to_s12_keypad",				0					}	
	,	{	"s16_to_s12_keypad",				0					}	
	,	{	"s26_to_s26a_keypads",				0					}	
	,	{	"s30a_keypad",						0					}	

	-- one off scares
	,	{	"s29b_scare",						0					}	
	,	{	"s33_scare",						0					}	
	
	-- collectables
	,	{	"hidden_token_1",					0					} -- s03a
	,	{	"hidden_token_2",					0					} -- s24
	,	{	"hidden_token_3",					0					} -- s25b
	,	{	"hidden_token_4",					0					} -- s26a
	,	{	"hidden_token_5",					0					} -- s01a
	
	,	{	"head_hunter_1",					0					} -- s05
	,	{	"head_hunter_2",					0					} -- s14
	,	{	"head_hunter_3",					0					} -- s16
	,	{	"head_hunter_4",					0					} -- s19
	,	{	"head_hunter_5",					0					} -- s30b
	
	,	{	"criminal_docs_1",					0					} -- s01
	,	{	"criminal_docs_2",					0					} -- s04
	,	{	"criminal_docs_3",					0					} -- s24
	,	{	"criminal_docs_4",					0					} -- s26b
	,	{	"criminal_docs_5",					0					} --
	
}

function RegisterSaveData()

	return variableList;

end


