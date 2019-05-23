traceroute  www.baidu.com

https://www.cnblogs.com/peida/archive/2013/03/07/2947326.html

出现*号原因
有些防止检测路由器的奇技淫巧比如禁用 ICMP.. 通常 TP-Link 最喜欢瞎搞了
应该是你这运营商劫持了 ICMP 协议，不想让你发现你的真实网络情况

有时我们traceroute 一台主机时，会看到有一些行是以星号表示的。出现这样的情况，可能是防火墙封掉了ICMP的返回信息，所以我们得不到什么相关的数据包返回数据。

