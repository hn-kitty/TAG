cd /root

curl https://m.dytt8.net/index2.htm |iconv -t utf-8 -f gb2312 -c|grep -E "href.*最新电影下载"|sed "s/.*html'>//g"|sed "s/<\/a><br\/>//g" > dytt8.txt

v_dy=`cat /root/dytt8.txt`

curl --data-urlencode chat_id="-547277653&" --data-urlencode text="${v_dy}" "https://api.telegram.org/bot5027946609:AAFNehdVqdb7zcUrEUvTdmoBC1FMLGPyLmo/sendMessage"

rm dytt8.txt
