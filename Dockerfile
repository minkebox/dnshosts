FROM alpine:latest

RUN apk --no-cache add dnsmasq ;\
    rm -f /etc/dnsmasq.conf; mkdir -p /etc/dnshosts.d

COPY root/ /

EXPOSE 53/tcp 53/udp

ENTRYPOINT ["/startup.sh"]
