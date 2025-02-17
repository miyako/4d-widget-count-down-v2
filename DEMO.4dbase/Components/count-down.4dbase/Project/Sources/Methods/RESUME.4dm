//%attributes = {"invisible":true}
$ValueTime:=OBJECT Get pointer:C1124(Object named:K67:5; "ValueTime")
$Start:=OBJECT Get pointer:C1124(Object named:K67:5; "StartTime")
$Start->:=$ValueTime->

$Start:=OBJECT Get pointer:C1124(Object named:K67:5; "Start")
$Start->:=Milliseconds:C459

SET TIMER:C645(1)