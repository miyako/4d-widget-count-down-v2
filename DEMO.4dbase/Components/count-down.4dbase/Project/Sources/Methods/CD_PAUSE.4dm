//%attributes = {"invisible":true,"shared":true}
C_TEXT:C284($1; $widgetName)

$widgetName:=$1

If (Length:C16($widgetName)#0)
	
	$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image"; $widgetName)
	
	ASSERT:C1129(Not:C34(Is nil pointer:C315($Image)))
	ASSERT:C1129(Type:C295($Image->)=Is picture:K8:10)
	
	EXECUTE METHOD IN SUBFORM:C1085($widgetName; "PAUSE")
	
End if 

