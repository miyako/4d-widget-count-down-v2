//%attributes = {"invisible":true,"shared":true}
C_TEXT:C284($1; $widgetName)
C_TIME:C306($2; $startTime)

$widgetName:=$1
$startTime:=$2

If (Length:C16($widgetName)#0)
	
	$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image"; $widgetName)
	
	ASSERT:C1129(Not:C34(Is nil pointer:C315($Image)))
	ASSERT:C1129(Type:C295($Image->)=Is picture:K8:10)
	
	If ($startTime>(?00:00:00?))
		
		If ($startTime>(?01:00:00?))
			$startTime:=?00:59:59?
		End if 
		
		EXECUTE METHOD IN SUBFORM:C1085($widgetName; "START"; *; $startTime)
		
	End if 
	
End if 