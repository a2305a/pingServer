# pingServer
ping and log respone time

1.crontab add below
30 7 * * * /root/src/pingServer/ping_sbb02.sh
30 7 * * * /root/src/pingServer/ping_sbb03.sh
30 8 * * * /root/src/pingServer/ping_sbf01.sh
30 8 * * * /root/src/pingServer/ping_sbf02.sh
30 8 * * * /root/src/pingServer/ping_sbf03.sh
30 8 * * * /root/src/pingServer/ping_ap.sh
30 8 * * * /root/src/pingServer/ping_etrade.sh

2.mkdir pingServer/log store log file
