//%attributes = {"invisible":true}
C_TEXT:C284($1; $number)  //value
C_LONGINT:C283($2; $digit)  //position

$number:=$1
$digit:=$2

If ($digit>0) & ($digit<5)
	
	$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image")
	
	$baseId:="d"+String:C10($digit)
	
	$bright:=1
	$dark:=0.2
	
	//changing class with SVG SET ATTRIBUTE is not supported
	
	Case of 
		: ($number="0")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="1")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="2")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $dark)
			
		: ($number="3")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="4")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="5")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="6")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="7")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="8")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		: ($number="9")
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $bright)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $bright)
			
		Else 
			
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"1"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"2"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"3"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"4"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"5"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"6"; "fill-opacity"; $dark)
			SVG SET ATTRIBUTE:C1055($Image->; $baseId+"7"; "fill-opacity"; $dark)
			
	End case 
	
End if 