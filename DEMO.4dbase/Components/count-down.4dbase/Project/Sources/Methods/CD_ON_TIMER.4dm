//%attributes = {"invisible":true}
$Start:=OBJECT Get pointer:C1124(Object named:K67:5; "Start")
$Elapsed:=OBJECT Get pointer:C1124(Object named:K67:5; "Elapsed")
$Elapsed->:=((Milliseconds:C459-$Start->)/1000)

$StartTime:=OBJECT Get pointer:C1124(Object named:K67:5; "StartTime")

CD_SET_VALUE(($StartTime->+0.4)-$Elapsed->)