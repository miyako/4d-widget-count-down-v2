//%attributes = {"invisible":true,"shared":true}
C_TEXT:C284($1; $widgetName)
C_LONGINT:C283($0)

$widgetName:=$1

If (Length:C16($widgetName)#0)
	
	$Color:=OBJECT Get pointer:C1124(Object named:K67:5; "Color"; $widgetName)
	
	ASSERT:C1129(Not:C34(Is nil pointer:C315($Color)))
	ASSERT:C1129((Type:C295($Color->)=Is longint:K8:6) | (Type:C295($Color->)=Is real:K8:4))
	
	$0:=$Color->
	
End if 