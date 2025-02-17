$event:=Form event code:C388

Case of 
	: ($event=-On Load:K2:1)
		
	: ($event=On Data Change:K2:15)
		
		$RED:=0x00FF0000
		$YELLOW:=0x00FFD400
		
		Case of 
			: (Self:C308->=?00:00:00?)
				
				OBJECT SET ENABLED:C1123(*; "Start"; True:C214)
				OBJECT SET ENABLED:C1123(*; "Resume"; False:C215)
				OBJECT SET ENABLED:C1123(*; "Pause"; False:C215)
				OBJECT SET ENABLED:C1123(*; "Stop"; False:C215)
				
				ALERT:C41("Time Up!!!")
				
			: ((Self:C308->)<?00:00:10?)
				
				If ($RED#CD_Get_color("Timer1"))
					CD_SET_COLOR("Timer1"; $RED)
				End if 
				
				//: ((Self->)<?00:00:20?)
				//
				//If ($YELLOW#CD_Get_color ("Timer1"))
				//CD_SET_COLOR ("Timer1";$YELLOW)
				//End if 
				
		End case 
		
End case 