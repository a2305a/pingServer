# pingServer
ping and log respone time
ping_sbb02.sh 大州傳精誠證券委成回報主機也是大州後台作業主機
ping_sbb03.sh 大州傳精誠期貨委成回報主機也是大州後台作業主機

1.crontab add below
30 7 * * * /root/src/pingServer/ping_sbb02.sh
30 7 * * * /root/src/pingServer/ping_sbb03.sh
30 8 * * * /root/src/pingServer/ping_sbf01.sh
30 8 * * * /root/src/pingServer/ping_sbf02.sh
30 8 * * * /root/src/pingServer/ping_sbf03.sh
30 8 * * * /root/src/pingServer/ping_ap.sh
30 8 * * * /root/src/pingServer/ping_etrade.sh

2.mkdir pingServer/log store log file
