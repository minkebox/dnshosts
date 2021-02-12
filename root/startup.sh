#! /bin/sh

trap "killall sleep dnsmasq; exit" TERM INT

cat > /etc/dnsmasq.conf <<__EOF__
user=root
no-resolv
domain=${__DOMAINNAME}
expand-hosts
hostsdir=/etc/dnshosts.d
__EOF__

dnsmasq

sleep 2147483647d &
wait "$!"
