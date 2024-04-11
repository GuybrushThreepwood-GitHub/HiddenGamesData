
-- ### RULES ###
-- only change ids that are used in maya, the rest are setup by code
-- rest can be changed to anything at anytime

local resourceList = 
{
	-- id								sound filename	

-- enemy explosions
	{	30,								"assets/audio/impact_2_1.wav"					}
,	{	31,								"assets/audio/impact_2_2.wav"					}
,	{	32,								"assets/audio/impact_2_3.wav"					}
,	{	33,								"assets/audio/impact_2_4.wav"					}

,	{	49,								"assets/audio/blink_1.wav"						}
,	{	50,								"assets/audio/alert_1.wav"						} -- trojan appears
,	{	51,								"assets/audio/alert_2.wav"						} -- virus appears
,	{	60,								"assets/audio/alert_3.wav"						} -- level up

-- shield in/out
,	{	70,								"assets/audio/shield_1.wav"						}
,	{	71,								"assets/audio/shield_2.wav"						}
,	{	72,								"assets/audio/shield_3.wav"						}
,	{	73,								"assets/audio/shield_4.wav"						}
,	{	74,								"assets/audio/shield_5.wav"						}
,	{	75,								"assets/audio/shield_6.wav"						}
,	{	76,								"assets/audio/shield_7.wav"						}
,	{	77,								"assets/audio/shield_8.wav"						}

-- random
,	{	80,								"assets/audio/random_5.wav"						}
,	{	81,								"assets/audio/random_2.wav"						}
,	{	82,								"assets/audio/random_3.wav"						}
,	{	83,								"assets/audio/random_4.wav"						}
,	{	84,								"assets/audio/random_1.wav"						}
,	{	85,								"assets/audio/random_6.wav"						}

,	{	101,							"assets/audio/tapbeep.wav"						}

-- player/shield successful rebound
,	{	201,							"assets/audio/chime_1.wav"						}
,	{	202,							"assets/audio/chime_2.wav"						}
,	{	203,							"assets/audio/chime_3.wav"						}
,	{	204,							"assets/audio/chime_4.wav"						}
,	{	205,							"assets/audio/chime_5.wav"						}

}

function RegisterSoundResources()

	return resourceList;

end


