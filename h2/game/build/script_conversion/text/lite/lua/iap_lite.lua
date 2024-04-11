
local purchase_ids =
{
-- offset ids because yellow/black cab are always unlocked
	{	4,									"uk.co.hiddengames.cabbylite.hotrod"				}
	
,	{	100,								"uk.co.hiddengames.cabbylite.extralevel1"			} -- ghost ship
,	{	101,								"uk.co.hiddengames.cabbylite.extralevel2"			} -- asteroids	
}

function RegisterIAPList()

	return purchase_ids;

end