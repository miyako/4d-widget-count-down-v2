$event:=Form event code:C388

If ($event=On Losing Focus:K2:8)
	
	$focusObjectName:=OBJECT Get name:C1087(Object with focus:K67:3)
	
	If ($focusObjectName="Variable@")
		
		$TimeObjectName:=Replace string:C233($focusObjectName; "Variable"; "Time"; *)
		$Timer:=OBJECT Get pointer:C1124(Object named:K67:5; "Timer1")
		$time:=Substring:C12(Time string:C180($Timer->); 4)
		
		OBJECT SET TITLE:C194(*; $TimeObjectName; $time)
		
		$isFormReady:=True:C214
		
		For ($i; 1; 5)
			$p:=OBJECT Get pointer:C1124(Object named:K67:5; String:C10($i; "Variable#"))
			$isFormReady:=$isFormReady & (Length:C16(String:C10(($p->)))#0)
		End for 
		
		If ($isFormReady)
			OBJECT SET ENABLED:C1123(*; "OK"; $isFormReady)
		End if 
		
	End if 
	
End if 

If ($event=On Load:K2:1) | ($event=On Losing Focus:K2:8)
	
	$GREEN:=0xC23B
	
	CD_SET_COLOR("Timer1"; $GREEN)
	CD_START("Timer1"; ?00:00:15?)
	
	OBJECT SET ENABLED:C1123(*; "Start"; False:C215)
	OBJECT SET ENABLED:C1123(*; "Resume"; False:C215)
	OBJECT SET ENABLED:C1123(*; "Pause"; True:C214)
	OBJECT SET ENABLED:C1123(*; "Stop"; True:C214)
	
End if 

