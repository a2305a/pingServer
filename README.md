# pingServer
ping and log respone time

1.crontab add below
30 8 * * * /root/src/ping_sbf01.sh
30 8 * * * /root/src/ping_sbf02.sh
30 8 * * * /root/src/ping_sbf03.sh
30 8 * * * /root/src/ping_ap.sh
30 8 * * * /root/src/ping_etrade.sh

2.mkdir pingServer/log store log file
