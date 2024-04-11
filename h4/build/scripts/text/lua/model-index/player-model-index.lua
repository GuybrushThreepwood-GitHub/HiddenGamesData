local player_model_index = 
{
	mMuzzleFlash_Shotgun = 0;
	mMuzzleFlash_Pistol = 1;
	mHand_Shotgun = 2;
	mHand_Pistol = 3;		
	mHand_Empty = 4;		
	mBody = 5;
}

local player_model_index_hi = 
{
	mMuzzleFlash_Shotgun = 5;
	mMuzzleFlash_Pistol = 4;
	mHand_Shotgun = 3;
	mHand_Pistol = 2;		
	mHand_Empty = 1;		
	mBody = 0;
}


function GetPlayerModelIndex( )
	return player_model_index
end

function GetPlayerModelHiIndex( )
	return player_model_index_hi
end

SetPlayerModelIndex( GetPlayerModelIndex() )
SetPlayerModelHiIndex( GetPlayerModelHiIndex() )
