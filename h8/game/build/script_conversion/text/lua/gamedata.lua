
-- ###
gameData = 
{
-- ui
	ACHIEVEMENT_ICON_MAXX		= 52.0;
	ACHIEVEMENT_ICON_SPEED		= 100.0;
	ACHIEVEMENT_ICON_SHOWTIME	= 3.0;

	ADBAR_PHONE_POSX			= 240.0;
	ADBAR_PHONE_POSY			= 292.0;	
	ADBAR_PHONEHD_POSX			= 240.0;
	ADBAR_PHONEHD_POSY			= 292.0;
	ADBAR_TABLET_POSX			= 512.0;
	ADBAR_TABLET_POSY			= 710.0;
	ADBAR_TABLETHD_POSX			= 512.0;
	ADBAR_TABLETHD_POSY			= 710.0;

-- ui in-game
	MAX_PLAYLISTNAME_CHARACTERS		= 20;
	MAX_SONGNAME_CHARACTERS 		= 32;
	ANALOGUE_DEAD_ZONE				= 20;

-- BlendingFactorSrc
--GL_ZERO 
--GL_ONE 
--GL_DST_COLOR                      
--GL_ONE_MINUS_DST_COLOR            
--GL_SRC_ALPHA_SATURATE             
--GL_SRC_ALPHA 
--GL_ONE_MINUS_SRC_ALPHA 
--GL_DST_ALPHA
--GL_ONE_MINUS_DST_ALPHA

--BlendingFactorDest
--GL_ZERO                           
--GL_ONE                            
--GL_SRC_COLOR                      
--GL_ONE_MINUS_SRC_COLOR            
--GL_SRC_ALPHA                      
--GL_ONE_MINUS_SRC_ALPHA            
--GL_DST_ALPHA                      
--GL_ONE_MINUS_DST_ALPHA           
	
	BG_HLAYER1_SPEED				= 0.02;
	BG_HLAYER1_MAX_SPEED			= 0.1;
	BG_HLAYER1_SPEED_INC_PER_LEVEL	= 0.01;
	BG_HLAYER1_BLEND_SRC			= GL_SRC_ALPHA;
	BG_HLAYER1_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;
	
	BG_HLAYER2_SPEED				= -0.03;
	BG_HLAYER2_MAX_SPEED			= -0.2;	
	BG_HLAYER2_SPEED_INC_PER_LEVEL	= -0.01;
	BG_HLAYER2_BLEND_SRC			= GL_SRC_ALPHA;
	BG_HLAYER2_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;

	BG_HLAYER3_SPEED				= 0.05;
	BG_HLAYER3_MAX_SPEED			= 0.4;
	BG_HLAYER3_SPEED_INC_PER_LEVEL	= 0.01;
	BG_HLAYER3_BLEND_SRC			= GL_SRC_ALPHA;
	BG_HLAYER3_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;	
	
	BG_VLAYER1_SPEED				= 0.02;
	BG_VLAYER1_MAX_SPEED			= 0.1;
	BG_VLAYER1_SPEED_INC_PER_LEVEL	= 0.01;
	BG_VLAYER1_BLEND_SRC			= GL_SRC_ALPHA;
	BG_VLAYER1_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;
	
	BG_VLAYER2_SPEED				= -0.03;
	BG_VLAYER2_MAX_SPEED			= -0.2;
	BG_VLAYER2_SPEED_INC_PER_LEVEL	= -0.01;
	BG_VLAYER2_BLEND_SRC			= GL_SRC_ALPHA;
	BG_VLAYER2_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;

	BG_VLAYER3_SPEED				= 0.04;
	BG_VLAYER3_MAX_SPEED			= 0.4;
	BG_VLAYER3_SPEED_INC_PER_LEVEL	= -0.01;
	BG_VLAYER3_BLEND_SRC			= GL_SRC_ALPHA;
	BG_VLAYER3_BLEND_DEST			= GL_ONE_MINUS_SRC_ALPHA;	
	
-- game
	CAMERA_POS_TITLE_Z					= 10.0;
	CAMERA_POS_GAME_Z					= 33.5;
	
	INSTRUCTIONS_FADE_TIME				= 10.0;
	
	LEVELUP_COUNT						= 10; -- number of absorptions before shield upgrade
	
	LEVEL_SPEED_UP_START				= 15; -- level when bits start incrementing their speed
	
	TROJAN_MIN_APPEAR_LEVEL				= 11; -- after what level can the trojans appear
	VIRUS_MIN_APPEAR_LEVEL				= 23; -- after what level can the virus appear
	
	TROJAN_APPEAR_PROBABILITY			= 1; -- 1-10 lowest-highest
	VIRUS_APPEAR_PROBABILITY			= 1; -- 1-10 lowest-highest
	
	DOWNLOADBAR_TIME					= 300.0; -- in secs (5 minutes)
	DOWNLOADBAR_MAX_WIDTH				= 152.0;
	DOWNLOADBAR_MAX_HEIGHT				= 12.0;
	DOWNLOADBAR_POINT_BONUS				= 100000; -- bonus points for lasting so long
	
	CONSECUTIVE_BONUS					= 10000; -- 10 in a row bonus
	COMPLETE_ROUTINE					= 1000000; -- completed complete selection of shields
	
	-- core
	CORE_RADIUS						= 1.250;
	CORE_START_HEALTH				= 6;	-- should match the piece count
	CORE_CHANGE_TIME_MIN 			= 10.0;
	CORE_CHANGE_TIME_MAX 			= 20.0;
	CORE_PETAL_COUNT				= 6;
	
	-- shield
	SHIELD_MASS						=	1.0; -- don't tweak this, tweak the interia below
	SHIELD_MASS_INERTIA				=	4.0; -- lower makes it spin faster, higher slower 
	SHIELD_ANGULAR_DAMPING			=	4.0; -- adds this force per frame to slow it down

	SHIELD_ROTATIONAL_FORCE			= 	0.3; -- box2d angular force applied on movement
	SHIELD_MINIMAL_PIXEL_MOVEMENT	= 	3.0; -- minimal pixels to move upon the initial touch
	
	SHIELD_DISABLE_TIME 			= 5.0;
	SHIELD_PIECE_ANIM_TIME			= 0.15;
	
	-- data/enemy
	ENEMY_RESET_BOUND_X				= 100.0;
	ENEMY_RESET_BOUND_Y				= 100.0;	
	
	ENEMY_ATTACK_TIME_MIN			= 2.5;
	ENEMY_ATTACK_TIME_MAX			= 3.5;	
	
	ENEMY_MASS						= 0.07;
	ENEMY_INERTIA					= 0.0098;
	ENEMY_ATTACK_FORCE 				= 0.45;
	
	ENEMY_ATTACK_INC 				= 0.001;
	ENEMY_ATTACK_MAX_FORCE			= 0.8;
	ENEMY_RANDOM_ANGULAR_MIN		= -0.03;
	ENEMY_RANDOM_ANGULAR_MAX		= 0.03;
	
	ENEMY_RADIUS_VALID				= 0.5;
	ENEMY_RADIUS_CORRUPT			= 0.5;
	ENEMY_RADIUS_TROJAN				= 0.5;
	ENEMY_RADIUS_VIRUS				= 0.5;
	ENEMY_RADIUS_BULLET				= 0.5;
	ENEMY_RADIUS_HACK				= 0.5;
	
	ENEMY_TROJAN_COLOUR_SWAP_TIME			= 0.25;	-- how long to wait before colour swap
	ENEMY_TROJAN_COLOUR_SWAP_STOP_RADIUS	= 11.5; -- when to auto stop the colour swap
	
	ENEMY_VIRUS_CIRCLE_DISTANCE_MIN			= 12.0;
	ENEMY_VIRUS_CIRCLE_DISTANCE_MAX			= 18.0;
	ENEMY_VIRUS_CIRCLE_SPEED				= 60.0;
	ENEMY_VIRUS_BULLETS						= 3;
	
	ENEMY_VIRUS_BULLET_FIRE_TIME			= 1.0;
	
	ENEMY_DAMAGE_CORE_VALID			= 1;
	ENEMY_DAMAGE_CORE_CORRUPT		= 3;
	ENEMY_DAMAGE_CORE_TROJAN		= 6;
	ENEMY_DAMAGE_CORE_VIRUS			= 10;
	ENEMY_DAMAGE_CORE_BULLET		= 4;
	ENEMY_DAMAGE_CORE_HACK			= 10;
	
	POINTS_ENEMY_MATCH_VALID		= 100;
	POINTS_ENEMY_MATCH_CORRUPT		= 200;
	POINTS_ENEMY_MATCH_TROJAN		= 300;
	POINTS_ENEMY_MATCH_VIRUS		= 400;
	POINTS_ENEMY_MATCH_BULLET		= 10;
	POINTS_ENEMY_MATCH_HACK			= 1000;
	
	ENEMY_MISMATCH_SHIELD_VALID		= 2;
	ENEMY_MISMATCH_SHIELD_CORRUPT	= 3;
	ENEMY_MISMATCH_SHIELD_TROJAN	= 6;
	ENEMY_MISMATCH_SHIELD_VIRUS		= 10;
	ENEMY_MISMATCH_SHIELD_BULLET	= 4;
	ENEMY_MISMATCH_SHIELD_HACK		= 10;
}