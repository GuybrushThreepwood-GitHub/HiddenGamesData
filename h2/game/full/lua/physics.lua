
groundOffset = 900.0
groundPtr = nil

function PreLoadPhysicsObjects()
	
	-- ports
	LoadScript( "assets/models/ports/fuel_single.lua" )
	LoadScript( "assets/models/ports/fuel_single.b2d" )
	
	LoadScript( "assets/models/ports/fuel_double.lua" )
	LoadScript( "assets/models/ports/fuel_double.b2d" )
	
	LoadScript( "assets/models/ports/fuel_triple.lua" )
	LoadScript( "assets/models/ports/fuel_triple.b2d" )
	
	LoadScript( "assets/models/ports/home_double.lua" )
	LoadScript( "assets/models/ports/home_double.b2d" )
	
	LoadScript( "assets/models/ports/taxistop_single.lua" )
	LoadScript( "assets/models/ports/taxistop_single.b2d" )	
	
	LoadScript( "assets/models/ports/taxistop_double.lua" )
	LoadScript( "assets/models/ports/taxistop_double.b2d" )	
	
	LoadScript( "assets/models/ports/taxistop_triple.lua" )
	LoadScript( "assets/models/ports/taxistop_triple.b2d" )	
	
	-- shapes
	LoadScript( "assets/models/obstacles/shape_h.lua" )
	LoadScript( "assets/models/obstacles/shape_h.b2d" )
	
	LoadScript( "assets/models/obstacles/shape_y.lua" )
	LoadScript( "assets/models/obstacles/shape_y.b2d" )
	
    -- doors
	LoadScript( "assets/models/obstacles/door_slideright.lua" )
	LoadScript( "assets/models/obstacles/door_slideright.b2d" )
	
    LoadScript( "assets/models/obstacles/door_slideleft.lua" )
	LoadScript( "assets/models/obstacles/door_slideleft.b2d" )

    LoadScript( "assets/models/obstacles/door_slidedown.lua" )
	LoadScript( "assets/models/obstacles/door_slidedown.b2d" )	
    
   	LoadScript( "assets/models/obstacles/door_slideup.lua" )
	LoadScript( "assets/models/obstacles/door_slideup.b2d" )
	
	-- enemies	
	LoadScript( "assets/models/enemies/fish.lua" )
	LoadScript( "assets/models/enemies/fish.b2d" )	
	
	LoadScript( "assets/models/enemies/mine.lua" )
	LoadScript( "assets/models/enemies/mine.b2d" )	

	LoadScript( "assets/models/enemies/sentry.lua" )
	LoadScript( "assets/models/enemies/sentry.b2d" )	
end
	