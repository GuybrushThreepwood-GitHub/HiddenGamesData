
local purchase_ids =
{
-- offset ids because yellow/black cab are always unlocked
	{	2,								"uk.co.hiddengames.cabbyfree.towtruck"				}
,	{	3,								"uk.co.hiddengames.cabbyfree.deliveryvan"			}
,	{	4,								"uk.co.hiddengames.cabbyfree.hotrod"				}
,	{	5,								"uk.co.hiddengames.cabbyfree.londbotus"				}
,	{	6,								"uk.co.hiddengames.cabbyfree.teamavan"				}
,	{	7,								"uk.co.hiddengames.cabbyfree.ghoulhunter"			}		
,	{	8,								"uk.co.hiddengames.cabbyfree.spinner"				}
,	{	9,								"uk.co.hiddengames.cabbyfree.ledorean"				}	
			
}

function RegisterIAPList()

	return purchase_ids;

end