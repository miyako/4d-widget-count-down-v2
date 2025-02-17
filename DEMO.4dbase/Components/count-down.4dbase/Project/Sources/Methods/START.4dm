//%attributes = {"invisible":true}
C_TIME:C306($1)

CD_SET_VALUE($1)

$Start:=OBJECT Get pointer:C1124(Object named:K67:5; "StartTime")
$Start->:=$1

CD_SET_ACTIVE(True:C214)