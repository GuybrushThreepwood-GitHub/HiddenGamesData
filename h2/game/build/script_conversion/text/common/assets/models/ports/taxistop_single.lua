

function SetupTaxix1( posX, posY )

	-- create body
	local bodyDef = 
	{
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )
	
	CreateBoxShape( bodyPtr, TaxistopSingle_mainBody )	

	return bodyPtr
end
