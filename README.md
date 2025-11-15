# MPMT
Monitoring pendapatan mikhmon lewat telegram

# Usage
```
/tool fetch url=https://github.com/safrinnetwork/MPMT/blob/main/prep1.rsc
```

```
/import file-name=prep1.rsc
```

```
;[:local getPendapatan [:put ([/system script get [find name=Pendapatan] source] + HargaVoucher)]];[/system script set source="$getPendapatan" Pendapatan ];[:local Pendapatan [:put [/system script get [find name=Pendapatan] source]]] ;[:local mac $"mac-address";:local useraktif [/ip hotspot active print count-only]];[/tool fetch url="https://api.telegram.org/botToken/sendmessage?chat_id=Chat_ID&text============================%0A%10%10%10%10%10%10%10Monitor%10Voucher%10Hotspot%0A===========================%0AKode Voucher : $user%0AMAC-Address  : $mac%0A===========================%0ADetail-Aktivasi:%0ATanggal : $date%0APukul : $time%0A===========================%0APendapatan : Rp. $Pendapatan%0A===========================%0AUser Aktif : $useraktif" keep-result=no]
```
# Full Tutorial
https://youtu.be/rgJw1pRAgjA
