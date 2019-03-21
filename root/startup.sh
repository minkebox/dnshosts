#! /bin/sh

trap "killall sleep dnsmasq; exit" TERM INT

dnsmasq

sleep 2147483647d &
wait "$!"
