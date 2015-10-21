#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Jkey C Phong ( Zhu Jin Feng )

#ce ----------------------------------------------------------------------------

#include <JSON.au3>

Global Const $API_Zing_Mp3 = 'fafd463e2131914934b73310aa34a23f'

Func GetSource($Link)
	$XML = ObjCreate("Microsoft.XMLHTTP")
	$XML.Open("GET", $Link, 0)
	$XML.Send()
	Return $XML.Responsetext()
EndFunc

Func Get_API($ID)
	$Source = GetSource('http://api.mp3.zing.vn/api/mobile/song/getsonginfo?keycode=' & $API_Zing_Mp3 & '&requestdata={"id":"' & $ID & '"}')
	$Decode = Json_Decode($Source)
	$Json_G = Json_Get($Decode,'["song_id"]')
	Return $Json_G
EndFunc

Func Get_Link_Song($ID,$Kbps = 128)
	$Source = GetSource('http://api.mp3.zing.vn/api/mobile/song/getsonginfo?keycode=' & $API_Zing_Mp3 & '&requestdata={"id":"' & $ID & '"}')
	$Decode = Json_Decode($Source)
	$Json_G = Json_Get($Decode,'["source"]' & '["' & $Kbps & '"]')
	Return $Json_G
EndFunc

Func Get_Link_Video($ID,$Kbps)
	$Source = GetSource('http://api.mp3.zing.vn/api/mobile/video/getvideoinfo?keycode=' & $API_Zing_Mp3 & '&requestdata={"id":' & $ID & '}')
	$Decode = Json_Decode($Source)
	$Json_G = Json_Get($Decode,'["source"]' & '["' & $Kbps & '"]')
	Return $Json_G
EndFunc
