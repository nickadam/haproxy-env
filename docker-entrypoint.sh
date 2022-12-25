#!/bin/sh

fail(){
  echo $1
  exit 1
}

test ! -z "$HAPROXY_CONFIG" || fail "Missing config"

echo "$HAPROXY_CONFIG" > /haproxy.cfg

haproxy -f /haproxy.cfg
