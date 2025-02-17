//%attributes = {"invisible":true}
C_BOOLEAN:C305($1)

$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image")

$bright:=1
$dark:=0.2

If ($1)
	
	SVG SET ATTRIBUTE:C1055($Image->; "dot1"; "fill-opacity"; $bright)
	SVG SET ATTRIBUTE:C1055($Image->; "dot2"; "fill-opacity"; $bright)
	
	$Start:=OBJECT Get pointer:C1124(Object named:K67:5; "Start")
	$Start->:=Milliseconds:C459
	
	SET TIMER:C645(1)
	
Else 
	
	SET TIMER:C645(0)
	
End if 