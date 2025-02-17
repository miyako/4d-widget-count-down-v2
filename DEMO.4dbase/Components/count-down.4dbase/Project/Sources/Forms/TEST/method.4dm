$event:=Form event code:C388

Case of 
	: ($event=On Load:K2:1)
		
		OBJECT SET ENABLED:C1123(*; "Start"; True:C214)
		OBJECT SET ENABLED:C1123(*; "Resume"; False:C215)
		OBJECT SET ENABLED:C1123(*; "Pause"; False:C215)
		OBJECT SET ENABLED:C1123(*; "Stop"; False:C215)
		
End case 