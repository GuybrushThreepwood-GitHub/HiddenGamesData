
-- ###
gameData = 
{
-- level and vehicle data
	MAX_ITEMS_PER_PACK 		= 5;
	
	TOTAL_LEVELS 			= 15;
	TOTAL_VEHICLES 			= 10;
	TOTAL_LEVEL_PACKS 		= 3;
	TOTAL_VEHICLE_PACKS 	= 2;
	
-- ui
	ACHIEVEMENT_ICON_MAXX		= 22.0;
	ACHIEVEMENT_ICON_SPEED		= 100.0;
	ACHIEVEMENT_ICON_SHOWTIME	= 3.0;

	ADBAR_PHONE_POSX			= 240.0;
	ADBAR_PHONE_POSY			= 293.0;	
	ADBAR_TABLET_POSX			= 240.0;
	ADBAR_TABLET_POSY			= 298.0;
	
-- ui in-game
	SPEECHBUBBLE_XOFFSET_PHONE_SD 	= 20.0;
	SPEECHBUBBLE_YOFFSET_PHONE_SD 	= 56.0;
	SPEECHBUBBLE_XOFFSET_PHONE_RETINA 	= 10.0;
	SPEECHBUBBLE_YOFFSET_PHONE_RETINA 	= 32.0;	
	SPEECHBUBBLE_XOFFSET_TABLET_SD 	= 10.0;
	SPEECHBUBBLE_YOFFSET_TABLET_SD 	= 28.0;
	
	ICON_LOWEST_POS 	= 32.0;
	ICON_HIGHEST_POS 	= 32.0;
	ICON_EDGE_CLOSEST 	= 24.0;
	
	FUEL_BAR_WIDTH		= 100.0;
	FUEL_BAR_HEIGHT		= 6.0;	
	
	TOWTRUCK_FLYBY_SPEED	= 100.0;
	
	MAX_PLAYLISTNAME_CHARACTERS		= 20;
	MAX_SONGNAME_CHARACTERS 		= 32;
	
-- sprites
	NIGHT_SPRITES_START				= 10000;
	
-- game
	ARCADE_TIME						= 120.0; -- seconds
	ARCADE_CUSTOMERS				= 3;
	ARCADE_FUEL						= 10;
	ARCADE_MONEY					= 2000;
	ARCADE_STAR_ROTATION			= 180.0;
	ARCADE_STAR_COLLISION_RADIUS 	= 1.2;
	
	FARE_LOW 			= 200;
	FARE_MEDIUM 		= 300;
	FARE_HIGH			= 500;
	FARE_COURIER 		= 1000;
	FARE_PERFECT 		= 100;
	FARE_MINIMUM 		= 50;
	
	WAIT_DECREASE_SECS 	= 8;
	WAIT_FARE_LOSS 		= 10;
	
	TRAVEL_DECREASE_SECS 	= 6;
	TRAVEL_FARE_LOSS 		= 1;
	
	ROUGHLANDING_FARE_LOSS 	= 50;
	
	PASSENGER_LOSS 		= -200;
	PARCEL_LOSS 		= -500;
	
	FUEL_CHARGE 		= -3;
	
	TOW_TRUCK_CHARGE 	= 500;
	
	NEW_LIFE_AWARD 		= 3000;
	CONTINUE_COST 		= 1000;
	
	DELIVERY_VAN_UNLOCK_TOTALPARCELS 	= 30;
	HOTROD_UNLOCK_TOTALFUEL 			= 10000;
	
	EXTRALIFE_REWARD 		= 3000;
	CUSTOMER_SPAWN_TIME 	= 12.5;
	
	WORLD_DAMAGE_SPEED_MASSIVE 	= 250.0;
	WORLD_DAMAGE_SPEED_LARGE 	= 50.0;
	
	PORT_DAMAGE_SPEED_MASSIVE 	= 180.0;
	PORT_DAMAGE_SPEED_LARGE 	= 50.0;		
	
-- player
	DEFAULT_LIVES_COUNT 	= 3;
	VERTICAL_THRUSTERS 		= 2;

	ROTATION_INCREMENT 		= 360.0;
	ROTATION_INCREMENT_CONFORM = 0.1;
	ROTATION_TOLERANCE 		= 10.0;

	MAX_TILT_ANGLE 			= 10.0;
	MAX_TILT_LAND_ANGLE 	= 15.0;
	TILT_INCREMENT 			= 20.0;
	TILT_INCREMENT_CONFORM 	= 0.1;
	TILT_TOLERANCE 			= 2.0;

	TILT_PUSH_FORCE 	= 5.0;

	MIN_VEL 	= 0.1;
	SLOW_DOWN 	= 0.97;

	MAX_FUEL 			= 100;
	FUEL_LOSS_TIME 		= 0.8;
	FUEL_INCREASE_TIME 	= 0.1;
	
	LOW_FUEL 		= 20;
	MEDIUM_FUEL 	= 60;
	NEAR_LOW_FUEL 	= 35;

	SPLASH_TIMER 		= 0.5;
	PORT_NUMBER_TIMER 	= 1.5;

	CRASH_ROTATION = 360.0;
	
-- customers	
	CUSTOMER_MALE_MESH_HI 	= 0;
	CUSTOMER_FEMALE_MESH_HI = 1;
	CUSTOMER_PARCEL_MESH_HI = 2;

	CUSTOMER_MALE_MESH_LOW 	= 1;
	CUSTOMER_FEMALE_MESH_LOW = 2;
	CUSTOMER_PARCEL_MESH_LOW = 0;

	CUSTOMER_MODEL_TEXTURE_START 	= 1;
	CUSTOMER_MODEL_TEXTURE_END 		= 6;

	CUSTOMER_PARCEL_TEXTURE_START 	= 7;
	CUSTOMER_PARCEL_TEXTURE_END 	= 10;
	
	CUSTOMER_DEPTH 			= -0.75;
	CUSTOMER_DROPOFF_DEPTH 	= -1.5;

	CUSTOMER_WALK_SPEED 	= 1.25;
	CUSTOMER_CLOSE_TO_TAXI 	= 0.5;

	LAND_TIME_ANGRY = 1.0;
	ANGRY_TIME		= 1.0;
	
	CUSTOMER_SWEAR_BUBBLE_OFFSETX_PHONE_SD		= 20.0;
	CUSTOMER_SWEAR_BUBBLE_OFFSETY_PHONE_SD		= 76.0;
	CUSTOMER_SWEAR_BUBBLE_OFFSETX_PHONE_RETINA	= 10.0;
	CUSTOMER_SWEAR_BUBBLE_OFFSETY_PHONE_RETINA	= 56.0;	
	CUSTOMER_SWEAR_BUBBLE_OFFSETX_TABLET_SD		= 10.0;
	CUSTOMER_SWEAR_BUBBLE_OFFSETY_TABLET_SD		= 56.0;
	
-- scene
	BG_QUAD_WIDTH	= 200.0;
	BG_QUAD_HEIGHT	= 200.0;
	
	BG_POS_X_DEFAULT = 0.0;
	BG_POS_Y_DEFAULT = 0.0;
	BG_POS_Z_DEFAULT = -100.0;	
	
	ALLOW_DETAIL_MAPPING = true;
	
}
