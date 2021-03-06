//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project method : SETTINGS_DRAW_CROSS_REPORT
// Database: 4D Report
// ID[CFB7B48D2C6C4897B242EF057096F343]
// Created #29-6-2016 by Vincent de Lachaux
// ----------------------------------------------------
// Description:
//
// ----------------------------------------------------
// Declarations
C_LONGINT:C283($Lon_bottom; $Lon_height; $Lon_left; $Lon_parameters; $Lon_right; $Lon_targetHeight)
C_LONGINT:C283($Lon_targetWidth; $Lon_top; $Lon_width)
C_TEXT:C284($kTxt_fontFamily; $kTxt_highlightColor; $kTxt_rectBackColor; $kTxt_rectStrokeColor; $Svg_root; $Txt_cell)
C_TEXT:C284($Txt_colum; $Txt_formula_1; $Txt_formula_2; $Txt_formula_3; $Txt_row; $Txt_SVG)

// ----------------------------------------------------
// Initialisations
$Lon_parameters:=Count parameters:C259

If (Asserted:C1132($Lon_parameters>=0; "Missing parameter"))
	
	//NO PARAMETERS REQUIRED
	
	//Optional parameters
	If ($Lon_parameters>=1)
		
		// <NONE>
		
	End if 
	
	$kTxt_fontFamily:="'Lucida Grande','Segoe UI',san-serif"
	$kTxt_highlightColor:="cyan"
	$kTxt_rectBackColor:="ghostwhite"
	$kTxt_rectStrokeColor:="gray"
	
Else 
	
	ABORT:C156
	
End if 

// ----------------------------------------------------
ARRAY OBJECT:C1221($tObj_columns; 0x0000)
OB GET ARRAY:C1229((OBJECT Get pointer:C1124(Object subform container:K67:4))->; "columns"; $tObj_columns)

If (Size of array:C274($tObj_columns)>0)
	
	$Txt_formula_1:=Parse formula:C1576(OB Get:C1224($tObj_columns{1}; "formula"; Is text:K8:3); Formula out with virtual structure:K88:2)
	
	If (Size of array:C274($tObj_columns)>1)
		
		$Txt_formula_2:=Parse formula:C1576((OB Get:C1224($tObj_columns{2}; "formula"; Is text:K8:3)); Formula out with virtual structure:K88:2)
		
		If (Size of array:C274($tObj_columns)>2)
			
			$Txt_formula_3:=Parse formula:C1576((OB Get:C1224($tObj_columns{3}; "formula"; Is text:K8:3)); Formula out with virtual structure:K88:2)
			
		End if 
	End if 
End if 

OBJECT GET COORDINATES:C663(*; "report.cross.picture"; $Lon_left; $Lon_top; $Lon_right; $Lon_bottom)
$Lon_width:=$Lon_right-$Lon_left
$Lon_height:=$Lon_bottom-$Lon_top

//$Svg_root:=SVG_New ($Lon_width;$Lon_height;"preview";"";True)
//$Lon_width:=Round(($Lon_width-10)/2;0)
//$Lon_height:=Round(($Lon_height-10)/2;0)
//SVG_Define_style ($Svg_root;".title{font-family:"+$kTxt_fontFamily+";font-size:10px;text-align:center;font-weight:bold;text-align:center}")
//SVG_Define_style ($Svg_root;".tip{font-family:'Lucida Grande',san-serif;font-size:10px;fill:gray;text-align:end}")
//SVG_Define_style ($Svg_root;"rect{fill:ghostwhite;fill-opacity:0.5;stroke:gray;stroke-width:1}")
//SVG_Define_style ($Svg_root;".selRect{fill:"+$kTxt_highlightColor+" !important;stroke:none !important;stroke-width:0 !important}")
//$Dom_main:=SVG_New_group ($Svg_root;"main")
//SVG_SET_TRANSFORM_TRANSLATE ($Dom_main;0.5;0.5)
//$Dom_group:=SVG_New_group ($Dom_main;"col_1")
//SVG_SET_TRANSFORM_TRANSLATE ($Dom_group;$Lon_width+5;5)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//SVG_SET_CLASS ($Dom_rect;"selRect")
//SVG_SET_ID ($Dom_rect;"sel_1")
//SVG_SET_VISIBILITY ($Dom_rect;False)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//$Dom_text:=SVG_New_textArea ($Dom_group;db_virtualFieldName (OB Get($tObj_columns{1};"formula";Is text));0;$Lon_height\4;$Lon_width;-1;"";-1;-1;-1)
//SVG_SET_CLASS ($Dom_text;"title")
//SVG_SET_ID ($Dom_text;"txt_1")
//SVG_SET_CLASS (SVG_New_textArea ($Dom_group;".Columns";5;$Lon_height-20;$Lon_width-10;-1;"";-1;-1;-1);"tip")
//$Dom_group:=SVG_New_group ($Dom_main;"col_2")
//SVG_SET_TRANSFORM_TRANSLATE ($Dom_group;5;$Lon_height+5)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//SVG_SET_CLASS ($Dom_rect;"selRect")
//SVG_SET_ID ($Dom_rect;"sel_2")
//SVG_SET_VISIBILITY ($Dom_rect;False)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//$Dom_text:=SVG_New_textArea ($Dom_group;db_virtualFieldName (OB Get($tObj_columns{2};"formula";Is text));0;$Lon_height\4;$Lon_width;-1;"";-1;-1;-1)
//SVG_SET_CLASS ($Dom_text;"title")
//SVG_SET_ID ($Dom_text;"txt_2")
//SVG_SET_CLASS (SVG_New_textArea ($Dom_group;".Rows";5;$Lon_height-20;$Lon_width-10;-1;"";-1;-1;-1);"tip")
//$Dom_group:=SVG_New_group ($Dom_main;"col_3")
//SVG_SET_TRANSFORM_TRANSLATE ($Dom_group;$Lon_width+5;$Lon_height+5)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//SVG_SET_CLASS ($Dom_rect;"selRect")
//SVG_SET_ID ($Dom_rect;"sel_3")
//SVG_SET_VISIBILITY ($Dom_rect;False)
//$Dom_rect:=SVG_New_rect ($Dom_group;0;0;$Lon_width;$Lon_height;0;0;"";"";-1)
//$Dom_text:=SVG_New_textArea ($Dom_group;db_virtualFieldName (OB Get($tObj_columns{3};"formula";Is text));0;$Lon_height\4;$Lon_width;-1;"";-1;-1;-1)
//SVG_SET_CLASS ($Dom_text;"title")
//SVG_SET_ID ($Dom_text;"txt_3")
//SVG_SET_CLASS (SVG_New_textArea ($Dom_group;".Cells";5;$Lon_height-20;$Lon_width-10;-1;"";-1;-1;-1);"tip")
//(OBJECT Get pointer(Object named;"report.cross.picture"))->:=SVG_Export_to_picture ($Svg_root)
//SVG_SAVE_AS_TEXT ($Svg_root;System folder(Desktop)+"DEV"+Folder separator+"cross.svg")
//SVG_CLEAR ($Svg_root)

$Txt_colum:=Replace string:C233(Replace string:C233(Get localized string:C991("columns"); "<"; "&lt;"); ">"; "&gt;")
$Txt_row:=Replace string:C233(Replace string:C233(Get localized string:C991("rows"); "<"; "&lt;"); ">"; "&gt;")
$Txt_cell:=Replace string:C233(Replace string:C233(Get localized string:C991("cells"); "<"; "&lt;"); ">"; "&gt;")

$Lon_targetWidth:=Round:C94(($Lon_width-10)/2; 0)
$Lon_targetHeight:=Round:C94(($Lon_height-10)/2; 0)

$Txt_SVG:="<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?>\r"\
+"<svg xmlns=\"http://www.w3.org/2000/svg\" height=\""+String:C10($Lon_height)+"\" viewBox=\"0 0 "+String:C10($Lon_width)+" "+String:C10($Lon_height)+"\" width=\""+String:C10($Lon_width)+"\">\r"\
+"  <defs id=\"4D\">\r"\
+"    <style type=\"text/css\">.title{font-family:"+$kTxt_fontFamily+";font-size:10px;text-align:center;font-weight:bold;text-align:center}</style>\r"\
+"    <style type=\"text/css\">.tip{font-family:"+$kTxt_fontFamily+";font-size:10px;fill:gray;text-align:end}</style>\r"\
+"    <style type=\"text/css\">rect{fill:"+$kTxt_rectBackColor+";fill-opacity:0.5;stroke:"+$kTxt_rectStrokeColor+";stroke-width:1}</style>\r"\
+"    <style type=\"text/css\">.selRect{fill:"+$kTxt_highlightColor+" !important;stroke:none !important;stroke-width:0 !important}</style>\r"\
+"  </defs>\r"\
+"  <g id=\"main\" transform=\"translate(0.5,0.5)\">\r"\
+"    <g id=\"col_1\" transform=\"translate("+String:C10($Lon_targetWidth+5)+",5)\">\r"\
+"      <rect class=\"selRect\" height=\""+String:C10($Lon_targetHeight)+"\" id=\"sel_1\" visibility=\"hidden\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <rect height=\""+String:C10($Lon_targetHeight)+"\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <textArea class=\"title\" height=\"auto\" id=\"txt_1\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\""+String:C10($Lon_targetHeight\4)+"\">"+$Txt_formula_1+"</textArea>\r"\
+"      <textArea class=\"tip\" height=\"auto\" width=\""+String:C10($Lon_targetWidth-10)+"\" x=\"5\" y=\""+String:C10($Lon_targetHeight-20)+"\">"+$Txt_colum+"</textArea>\r"\
+"    </g>\r"\
+"    <g id=\"col_2\" transform=\"translate(5,"+String:C10($Lon_targetHeight+5)+")\">\r"\
+"      <rect class=\"selRect\" height=\""+String:C10($Lon_targetHeight)+"\" id=\"sel_2\" visibility=\"hidden\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <rect height=\""+String:C10($Lon_targetHeight)+"\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <textArea class=\"title\" height=\"auto\" id=\"txt_2\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\""+String:C10($Lon_targetHeight\4)+"\">"+$Txt_formula_2+"</textArea>\r"\
+"      <textArea class=\"tip\" height=\"auto\" width=\""+String:C10($Lon_targetWidth-10)+"\" x=\"5\" y=\""+String:C10($Lon_targetHeight-20)+"\">"+$Txt_row+"</textArea>\r"\
+"    </g>\r"\
+"    <g id=\"col_3\" transform=\"translate("+String:C10($Lon_targetWidth+5)+","+String:C10($Lon_targetHeight+5)+")\">\r"\
+"      <rect class=\"selRect\" height=\""+String:C10($Lon_targetHeight)+"\" id=\"sel_3\" visibility=\"hidden\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <rect height=\""+String:C10($Lon_targetHeight)+"\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\"0\"/>\r"\
+"      <textArea class=\"title\" height=\"auto\" id=\"txt_3\" width=\""+String:C10($Lon_targetWidth)+"\" x=\"0\" y=\""+String:C10($Lon_targetHeight\4)+"\">"+$Txt_formula_3+"</textArea>\r"\
+"      <textArea class=\"tip\" height=\"auto\" width=\""+String:C10($Lon_targetWidth-10)+"\" x=\"5\" y=\""+String:C10($Lon_targetHeight-20)+"\">"+$Txt_cell+"</textArea>\r"\
+"    </g>\r"\
+"  </g>\r"\
+"</svg>"

$Svg_root:=DOM Parse XML variable:C720($Txt_SVG)

If (OK=1)
	
	SVG EXPORT TO PICTURE:C1017($Svg_root; (OBJECT Get pointer:C1124(Object named:K67:5; "report.cross.picture"))->)
	
	DOM CLOSE XML:C722($Svg_root)
	
End if 

// ----------------------------------------------------
// Return
// <NONE>
// ----------------------------------------------------
// End