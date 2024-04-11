

function SetupTaxix2( posX, posY )

	-- create body
	local bodyDef = 
	{
		positionX = posX;
		positionY = posY;
	}
	local bodyPtr = CreateBody( bodyDef )
	
	CreateBoxShape( bodyPtr, TaxistopDouble_mainBody )	

	return bodyPtr
end
