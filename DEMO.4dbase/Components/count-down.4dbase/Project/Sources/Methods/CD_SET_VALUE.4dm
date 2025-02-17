//%attributes = {"invisible":true}
$ValueTime:=OBJECT Get pointer:C1124(Object named:K67:5; "ValueTime")

C_TIME:C306($1)

$value:=$1

If ($value<(?00:00:00?))
	$value:=?00:00:00?
End if 

$StartTime:=OBJECT Get pointer:C1124(Object named:K67:5; "StartTime")
If ($value>$StartTime->)
	$value:=$StartTime->
End if 

$timeString:=Time string:C180($value)

$minutes:=Num:C11(Substring:C12($timeString; 4; 2))
$seconds:=Num:C11(Substring:C12($timeString; 7; 2))

If (Time string:C180($ValueTime->)#($timeString))
	
	$ValueTime->:=Time:C179($timeString)
	
	If ($minutes<10)
		CD_SET_DIGIT(""; 1)
		CD_SET_DIGIT(Substring:C12(String:C10($minutes); 1; 1); 2)
	Else 
		CD_SET_DIGIT(Substring:C12(String:C10($minutes); 1; 1); 1)
		CD_SET_DIGIT(Substring:C12(String:C10($minutes); 2; 1); 2)
	End if 
	
	If ($seconds<10)
		CD_SET_DIGIT("0"; 3)
		CD_SET_DIGIT(Substring:C12(String:C10($seconds); 1; 1); 4)
	Else 
		CD_SET_DIGIT(Substring:C12(String:C10($seconds); 1; 1); 3)
		CD_SET_DIGIT(Substring:C12(String:C10($seconds); 2; 1); 4)
	End if 
	
	If ($value=(?00:00:00?))
		CD_SWITCH_OFF
		CD_SET_ACTIVE(False:C215)
	End if 
	
	$Container:=OBJECT Get pointer:C1124(Object subform container:K67:4)
	$Container->:=$value
	
End if 