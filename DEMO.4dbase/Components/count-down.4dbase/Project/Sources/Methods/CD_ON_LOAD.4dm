//%attributes = {"invisible":true}
If (WIDGET_Asserted(Is time:K8:8))
	
	C_LONGINT:C283($width; $height)
	OBJECT GET SUBFORM CONTAINER SIZE:C1148($width; $height)
	
	OBJECT MOVE:C664(*; "Image"; 0; 0; $width; $height; *)
	OBJECT MOVE:C664(*; "Frame"; 0; 0; $width; $height; *)
	OBJECT MOVE:C664(*; "Filter"; 0; 0; $width; $height; *)
	
	$Container:=OBJECT Get pointer:C1124(Object subform container:K67:4)
	$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image")
	
	If (Picture size:C356($Image->)=0)
		
		$path:=Get 4D folder:C485(Current resources folder:K5:16)+"images"+Folder separator:K24:12+"digital-clock.svg"
		$dom:=DOM Parse XML source:C719($path)
		SVG EXPORT TO PICTURE:C1017($dom; $Image->; Own XML data source:K45:18)
		
		$path:=Get 4D folder:C485(Current resources folder:K5:16)+"images"+Folder separator:K24:12+"digital-clock-frame.svg"
		$Frame:=OBJECT Get pointer:C1124(Object named:K67:5; "Frame")
		READ PICTURE FILE:C678($path; $Frame->)
		
		$path:=Get 4D folder:C485(Current resources folder:K5:16)+"images"+Folder separator:K24:12+"digital-clock-reflection.svg"
		$Filter:=OBJECT Get pointer:C1124(Object named:K67:5; "Filter")
		READ PICTURE FILE:C678($path; $Filter->)
		
		CALL SUBFORM CONTAINER:C1086(-On Load:K2:1)
		
	Else 
		
		CALL SUBFORM CONTAINER:C1086(-On Page Change:K2:54)
		
	End if 
	
	OBJECT SET VISIBLE:C603(*; "@"; True:C214)
	
End if 