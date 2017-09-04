#!/bin/env sh

consul-template \
  -consul-addr $CONSUL_SERVICE \
  -exec-kill-timeout 60s \
  -template "/etc/nsupdate/nsupdate.ctmpl:/etc/nsupdate/nsupdate.batch:/nsupdate.sh"
