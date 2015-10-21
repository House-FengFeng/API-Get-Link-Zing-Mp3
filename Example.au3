#Include <API_Zing.au3>

$Api_Video 	= Get_API('ZW7I776I')		; Mã video trên Zing Mp3
$Api_Song   = Get_API('ZW7WAFUE')		; Mã bài hát trên Zing Mp3
$Video  = Get_Link_Video($Api_Video,360)
$Music	= Get_Link_Song($Api_Song,320)

Msgbox(0,"Jkey C Phong - Get Link Zing Mp3 thông qua API","Link video (360p): " & $Video & @CRLF & "Link bài hát (320kbps): " & ClipPut($Music))
;http://api.mp3.zing.vn/api/mobile/source/song/LGJGTLGNQAGAAEATVDGTDGLG
;http://api.mp3.zing.vn/api/mobile/download/song/LGJGTLGNQAGAAEATVDGTDGLG
