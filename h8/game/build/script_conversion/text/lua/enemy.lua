
local ENEMYTYPE_BITS_GENERIC 	= 0
local ENEMYTYPE_BITS_TRIANGLE 	= 1
local ENEMYTYPE_BITS_SQUARE 	= 2
local ENEMYTYPE_BITS_HEXAGON 	= 3
local ENEMYTYPE_BITS_OCTAGON 	= 4
local ENEMYTYPE_BITS_CIRCLE 	= 5

local ENEMYTYPE_TROJAN 			= 6
local ENEMYTYPE_VIRUS 			= 7
local ENEMYTYPE_BULLET 			= 8
	
local DEFAULT_BIT_FORCE			= 0.45;

local enemy_data =
{
-- ENEMYTYPE_BITS_GENERIC
	{
		type = ENEMYTYPE_BITS_GENERIC;
		hgmModelIndex = 100;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_VALID;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_VALID;
		force = DEFAULT_BIT_FORCE;
	},
-- ENEMYTYPE_BITS_TRIANGLE
	{	
		type = ENEMYTYPE_BITS_TRIANGLE;
		hgmModelIndex = 101;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_CORRUPT;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_CORRUPT;
		force = DEFAULT_BIT_FORCE;			
	},
-- ENEMYTYPE_BITS_SQUARE
	{
		type = ENEMYTYPE_BITS_SQUARE;
		hgmModelIndex = 102;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_VALID;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_VALID;
		force = DEFAULT_BIT_FORCE;
	},
-- ENEMYTYPE_BITS_HEXAGON
	{	
		type = ENEMYTYPE_BITS_HEXAGON;
		hgmModelIndex = 103;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_CORRUPT;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_CORRUPT;
		force = DEFAULT_BIT_FORCE;			
	},
-- ENEMYTYPE_BITS_OCTAGON
	{	
		type = ENEMYTYPE_BITS_OCTAGON;
		hgmModelIndex = 104;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_CORRUPT;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_CORRUPT;
		force = DEFAULT_BIT_FORCE;			
	},	
-- ENEMYTYPE_BITS_CIRCLE
	{	
		type = ENEMYTYPE_BITS_CIRCLE;
		hgmModelIndex = 105;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_CORRUPT;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_CORRUPT;
		force = DEFAULT_BIT_FORCE;			
	},	
-- ENEMYTYPE_TROJAN
	{	
		type = ENEMYTYPE_TROJAN;
		hgmModelIndex = 120;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_TROJAN;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_TROJAN;
		force = 0.3;				
	},
-- ENEMYTYPE_VIRUS
	{	
		type = ENEMYTYPE_VIRUS;
		hgmModelIndex = 121;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_VIRUS;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_VIRUS;
		force = 0.3;				
	},
-- ENEMYTYPE_BULLET
	{	
		type = ENEMYTYPE_BULLET;
		hgmModelIndex = 122;								
		radius = 0.5;
		coreDamage = 1;
		matchPoints = gameData.POINTS_ENEMY_MATCH_BULLET;
		shieldDamage = gameData.ENEMY_MISMATCH_SHIELD_BULLET;
		force = 0.3;			
	}
}

function LoadEnemySetups()

	return enemy_data;

end