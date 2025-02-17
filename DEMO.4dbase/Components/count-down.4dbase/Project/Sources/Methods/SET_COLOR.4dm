//%attributes = {"invisible":true}
C_LONGINT:C283($1)

$htmlRgb:=COLOR_HEX_from_long($1)

If (Match regex:C1019("#([:ASCII_Hex_Digit:]{2})([:ASCII_Hex_Digit:]{2})([:ASCII_Hex_Digit:]{2})"; $htmlRgb))
	
	$Color:=OBJECT Get pointer:C1124(Object named:K67:5; "Color")
	$Color->:=$1
	
	$Image:=OBJECT Get pointer:C1124(Object named:K67:5; "Image")
	
	SVG SET ATTRIBUTE:C1055($Image->; "dot1"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "dot2"; "fill"; $htmlRgb)
	
	SVG SET ATTRIBUTE:C1055($Image->; "d11"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d12"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d13"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d14"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d15"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d16"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d17"; "fill"; $htmlRgb)
	
	SVG SET ATTRIBUTE:C1055($Image->; "d21"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d22"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d23"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d24"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d25"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d26"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d27"; "fill"; $htmlRgb)
	
	SVG SET ATTRIBUTE:C1055($Image->; "d31"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d32"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d33"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d34"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d35"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d36"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d37"; "fill"; $htmlRgb)
	
	SVG SET ATTRIBUTE:C1055($Image->; "d41"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d42"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d43"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d44"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d45"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d46"; "fill"; $htmlRgb)
	SVG SET ATTRIBUTE:C1055($Image->; "d47"; "fill"; $htmlRgb)
	
End if 