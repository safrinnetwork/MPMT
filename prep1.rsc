# Membuat script dengan nama Pendapatan
/system script
add name=Pendapatan policy=read,write,policy,test,password,sniff,sensitive,romon,ftp,reboot dont-require-permissions=yes source="0"

# Membuat script dengan nama ResetPendapatan
add name=ResetPendapatan policy=read,write,policy,test,password,sniff,sensitive,romon,ftp,reboot dont-require-permissions=yes source="if ([/system clock get date]~\"/01/\") do={[/system script set source=\"0\" Pendapatan];[/system scheduler remove ResetPendapatan];} else={[/system scheduler remove ResetPendapatan];}"

# Membuat scheduler dengan nama ResetPendapatan
/system scheduler
add name=ResetPendapatan start-date=jan/01/1970 start-time=00:30:00 interval=1d on-event=ResetPendapatan policy=read,write,policy,test,password,sniff,sensitive,romon,ftp,reboot
