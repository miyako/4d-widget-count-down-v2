$event:=Form event code:C388

Case of 
	: ($event=On Load:K2:1)
		
		If (Folder separator:K24:12=":")
			
			C_TEXT:C284($in; $out; $err)
			LAUNCH EXTERNAL PROCESS:C811("sw_vers -productVersion"; $in; $out; $err)
			
			Case of 
				: ($out="10.10.@")
					OBJECT SET RGB COLORS:C628(*; OBJECT Get name:C1087(Object current:K67:2); 0x00FFFFFF; Background color:K23:2)
			End case 
			
		End if 
		
		OBJECT SET ENABLED:C1123(*; OBJECT Get name:C1087(Object current:K67:2); False:C215)
		
	: ($event=On Clicked:K2:4)
		
		$isFormReady:=True:C214
		
		For ($i; 1; 5)
			$p:=OBJECT Get pointer:C1124(Object named:K67:5; String:C10($i; "Variable#"))
			$isFormReady:=$isFormReady & (Length:C16(String:C10(($p->)))#0)
		End for 
		
		If ($isFormReady)
			ACCEPT:C269
		End if 
		
End case 