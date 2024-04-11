
-- ### FILE TYPES ###
-- 0 = bind
-- 1 = animation

-- animation ids (must be unique)
SPIDER_IDLE = 0

local bindResource = 
{
	-- 	filename										cull radius					magFilter					minFilter
	{	"hga/enemy_spider_crawling_bind.hga",			5.0,						GL_NEAREST,					GL_NEAREST_MIPMAP_NEAREST 		}
}

local animationList = 
{
	-- 	animation filename								animation id				loop
	{	"hga/enemy_spider_crawling_idle.hga",			SPIDER_IDLE,				true 							}
}

function prop_spider()

	return animationList, bindResource;

end