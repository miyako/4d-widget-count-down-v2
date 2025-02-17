//%attributes = {"invisible":true}
C_LONGINT:C283($1)
C_TEXT:C284($0)

If (Count parameters:C259#0)
	
	$long:=$1
	
	$r:=(($long >> 16) & 0x00FF)
	$g:=(($long >> 8) & 0x00FF)
	$b:=($long & 0x00FF)
	
	$rh:=Substring:C12(String:C10($r; "&x"); 5)
	$gh:=Substring:C12(String:C10($g; "&x"); 5)
	$bh:=Substring:C12(String:C10($b; "&x"); 5)
	
	$0:="#"+$rh+$gh+$bh
	
End if 