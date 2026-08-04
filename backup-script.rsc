# aug/04/2026 17:20:07 by RouterOS 6.49.16
# software id = 
#
#
#
/system script
add dont-require-permissions=no name=show-active-users owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=":\
    foreach i in=[/ip dhcp-server lease find status=bound] do={ :put [/ip dhcp\
    -server lease get \$i address] . \" - \" . [/ip dhcp-server lease get \$i \
    host-name] }"
