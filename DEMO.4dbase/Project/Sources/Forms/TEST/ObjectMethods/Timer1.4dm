$thisWidget:=OBJECT Get name:C1087(Object current:K67:2)

$event:=Form event code:C388

$RED:=0x00FF0000
$YELLOW:=0x00FFD400
$GREEN:=0xC23B

Case of 
	: ($event=On Data Change:K2:15)
		
		Case of 
			: (Self:C308->=?00:00:00?)
				
				CANCEL:C270
				
			: ((Self:C308->)<?00:00:10?)
				
				If ($RED#CD_Get_color($thisWidget))
					CD_SET_COLOR($thisWidget; $RED)
				End if 
				
		End case 
		
End case 