# pingServer
ping and log respone time
ping_sbb02.sh 大州傳精誠證券委成回報主機也是大州後台作業主機
ping_sbb03.sh 大州傳精誠期貨委成回報主機也是大州後台作業主機

控管及部署方式：
1.修改程式碼後上傳至https://github.com/a2305a/pingServer，或是直接在GitHub網頁上修改程式碼
2.修改後要部署到主機上
cd /root/src
先將原本pingServer目錄改成pingServer.yyyymmdd
git clone https://github.com/a2305a/pingServer.git  



3.crontab add below
30 7 * * * /root/src/pingServer/ping_sbb02.sh
30 7 * * * /root/src/pingServer/ping_sbb03.sh
30 8 * * * /root/src/pingServer/ping_sbf01.sh
30 8 * * * /root/src/pingServer/ping_sbf02.sh
30 8 * * * /root/src/pingServer/ping_sbf03.sh
30 8 * * * /root/src/pingServer/ping_ap.sh
30 8 * * * /root/src/pingServer/ping_etrade.sh

2.mkdir pingServer/log store log file
