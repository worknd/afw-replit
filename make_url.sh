#!/bin/bash

set -euo pipefail

IFS= read -r password < passwd.txt

domain="${REPL_SLUG}.${REPL_OWNER}.repl.co"
ss="ss://$(echo -n chacha20-ietf-poly1305:${password} | base64 -w 0)@${domain}:8488"

echo "$ss" > url.txt
