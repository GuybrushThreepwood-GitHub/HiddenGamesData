
-- ###
gameData = 
{
-- level and vehicle data
	MAX_ITEMS_PER_PACK 		= 4;
	
	TOTAL_LEVELS 			= 8;
	TOTAL_VEHICLES 			= 2;
	TOTAL_LEVEL_PACKS 		= 2;
	TOTAL_VEHICLE_PACKS 	= 1;
	
	RING_MODE_LAPS			= 1;
	
	TOTAL_LAYOUTS			= 3;
	
-- ui
	ACHIEVEMENT_ICON_MAXX		= 52.0;
	ACHIEVEMENT_ICON_SPEED		= 100.0;
	ACHIEVEMENT_ICON_SHOWTIME	= 3.0;

	ADBAR_PHONE_POSX			= 512.0;
	ADBAR_PHONE_POSY			= 700.0;	
	ADBAR_TABLET_POSX			= 512.0;
	ADBAR_TABLET_POSY			= 710.0;

-- ui in-game
	MAX_PLAYLISTNAME_CHARACTERS		= 20;
	MAX_SONGNAME_CHARACTERS 		= 32;
	ANALOGUE_DEAD_ZONE				= 20;

-- camera
	CAMERA_X_OFFSET					= 0.0;
	CAMERA_Y_OFFSET					= 6.5;
	CAMERA_Z_OFFSET					= 25.0;
	
	CAMERA_TARGET_MULTIPLY			= 100.0;
	
-- scene
	FARCLIP_MODIFY						= 1.0; -- multiply far clip distance by this
	LOD_SCALER							= 1.0;	-- used to tweak the LOD by device in the boot
	SKYBOX_Y_OFFSET_DEFAULT 			= 20.0;
	
	MAX_SPRITES_PER_BATCH				= 300;	-- how many sprites in each draw batch (MAX: 300)
	MAX_SPRITE_DRAW_DISTANCE 			= 3000.0; -- if sprite batch is in view, what is the max distance it can draw
	SPHERE_DRAW_DISTANCE_ON_PLANE		= 2000.0; -- sphere around plane that determines if a terrain piece should activate its various objects/sprites
	
	ALLOW_DETAIL_MAP					= true; -- whether detail mapping should be applied
	DETAIL_SCALE_X_MODIFY				= 1.0;
	DETAIL_SCALE_Y_MODIFY				= 1.0;
	
	WALL_FADE_START_DISTANCE			= 500.0;
	WALL_FADE_IN_INC					= 1;
	WALL_FADE_OUT_DEC					= 5;
	
-- object
	DEFAULT_RING_COLLISION_RADIUS		= 100.0; -- gate collision
	DEFAULT_TOKEN_COLLISION_RADIUS		= 15.0; -- radius around tokens (best quite large because plane sphere is smallish)
	RING_PITCH_INC						= 0.05; -- value to add to the audio pitch when flying through each ring
	
-- plane
	FLAP_RESET_AUTO_SNAP				= 4.0;	-- when flaps are resetting their pos, when should the just snap to the initial pos
	BULLET_SIZE							= 1.5;	-- how big is the bullet as an ode sphere
	
	SHADOW_OFFSET						= 0.04; -- how far to move along normal
	
-- game
	TOKEN_COLLECT_TIME					= 1800.0; -- time for token collect achievement (30 mins)
	TOKEN_DRAW_DISTANCE					= 2000.0; -- what distance to start drawing the token
	
	MIN_BOUNDING_X						= -8000.0;
	MIN_BOUNDING_Z						= -8000.0;
	
	MAX_BOUNDING_X						= 8000.0;
	MAX_BOUNDING_Y						= 8000.0;
	MAX_BOUNDING_Z						= 8000.0;
	
	-- so achievements don't fire all at the same time for things like played a level for the first time
	-- or played a game mode, let's use some timers to only check after so many seconds if you should be awarded them
	ACH_PLANE_USED_TIMER				= 10.0;	 -- one of the planes was used for the first time
	ACH_LEVEL_PLAYED_TIMER				= 20.0;	 -- level was played for the first time
	ACH_WEATHER_RAINSNOW_TIMER			= 30.0;	 -- played in rain or snow
	ACH_TIMEOFDAY_TIMER					= 40.0;	 -- played in day/afternoon/night
	ACH_FREEFLIGHT_MODE_TIMER			= 60.0;	 -- player flew in free flight mode
	
	ACH_FLYING_LOW_TIME					= 30.0;  -- how long must the player fly low
	ACH_FLYING_LOW_HEIGHT				= 10.0;  -- how low must the player fly
	
	ACH_STUDENT_PILOT					= 18000.0; -- seconds of flight time (5hrs)
	ACH_SPORT_PILOT						= 72000.0; -- seconds of flight time (20hrs)
	ACH_RECREATIONAL_PILOT				= 108000.0; -- seconds of flight time (30hrs)
	ACH_PRIVATE_PILOT					= 144000.0; -- seconds of flight time (40hrs)
	ACH_COMMERCIAL_PILOT				= 900000.0; -- seconds of flight time (250hrs)
	ACH_AIRLINE_TRANSPORT_PILOT			= 5400000.0; -- seconds of flight time (1500hrs)
	
-- effects
	ALLOW_WIND_EFFECT					= true;
	FLYING_WIND_ENABLE_HEIGHT			= 300.0;	
	FLYING_WIND_DISTANCE_IN_FRONT		= 200.0;

	ALLOW_SNOW_EFFECT					= true;
	SNOW_HEIGHT_ABOVE_PLAYER			= 50.0;		
	SNOW_DISTANCE_IN_FRONT				= 200.0;	
	
	ALLOW_RAIN_EFFECT					= true;
	RAIN_HEIGHT_ABOVE_PLAYER			= 50.0;		
	RAIN_DISTANCE_IN_FRONT				= 200.0;	
	
	BOUNDING_EFFECT_DISTANCE_IN_FRONT	= 10.0;
}
