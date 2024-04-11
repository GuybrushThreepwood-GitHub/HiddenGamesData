
local npc_model_index = 
{
	Stump_Neck = 0;
	Stump_Head = 1;
	Stump_Shoulder_L = 2;
	Stump_Arm_L = 3;
	Stump_Wrist_L = 4;
	Stump_Elbow_L = 5;
	Stump_Leg_L = 6;
	Stump_Hip_L = 7;
	Stump_Shin_L = 8;
	Stump_Knee_L = 9;
	Stump_Shoulder_R = 10;
	Stump_Arm_R = 11;
	Stump_Wrist_R = 12;
	Stump_Elbow_R = 13;
	Stump_Leg_R = 14;
	Stump_Hip_R = 15;
	Stump_Shin_R = 16;
	Stump_Knee_R = 17;

	Skeleton_Head = 18;
	Skeleton_Body = 19;
	Skeleton_Arm_R = 20;
	Skeleton_Wrist_R = 21;
	Skeleton_Arm_L = 22;
	Skeleton_Wrist_L = 23;
	Skeleton_Pelvis = 24;
	Skeleton_Hip_R = 25;
	Skeleton_Hip_L = 26;
	Skeleton_Shin_R = 27;
	Skeleton_Shin_L = 28;

	Normal_Head = 29;
	Normal_Body = 30;
	Normal_Arm_R = 31;
	Normal_Wrist_R = 32;
	Normal_Arm_L = 33;
	Normal_Wrist_L = 34;
	Normal_Hip_R = 35;
	Normal_Hip_L = 36;
	Normal_Shin_R = 37;
	Normal_Shin_L = 38;

	mShadow = 39;
}

local npc_model_index_hi = 
{
	mShadow = 0;
	Normal_Arm_L = 1;
	Normal_Wrist_L = 2;
	Normal_Hip_R = 3;
	Normal_Hip_L = 4;
	Normal_Shin_R = 5;
	Normal_Shin_L = 6;
	Stump_Shoulder_L = 7;
	Stump_Arm_L = 8;
	Stump_Wrist_L = 9;
	Stump_Elbow_L = 10;
	Stump_Leg_L = 11;
	Stump_Hip_L = 12;
	Stump_Shin_L = 13;
	Stump_Knee_L = 14;
	Stump_Shoulder_R = 15;
	Stump_Arm_R = 16;
	Stump_Wrist_R = 17;
	Stump_Elbow_R = 18;
	Stump_Leg_R = 19;
	Stump_Hip_R = 20;
	Stump_Shin_R = 21;
	Stump_Knee_R = 22;
	Normal_Wrist_R = 23;
	Normal_Arm_R = 24;
	Stump_Neck = 25;
	Stump_Head = 26;
	Normal_Head = 27;
	Skeleton_Head = 28;
	Skeleton_Body = 29;
	Skeleton_Arm_R = 30;
	Skeleton_Wrist_R = 31;
	Skeleton_Arm_L = 32;
	Skeleton_Wrist_L = 33;
	Skeleton_Pelvis = 34;
	Skeleton_Hip_R = 35;
	Skeleton_Hip_L = 36;
	Skeleton_Shin_R = 37;
	Skeleton_Shin_L = 38;
	Normal_Body = 39;
}

function GetNPCModelIndex()
	return npc_model_index
end

function GetNPCModelHiIndex()
	return npc_model_index_hi
end

SetNPCModelIndex( GetNPCModelIndex() )
SetNPCModelHiIndex( GetNPCModelHiIndex() )
