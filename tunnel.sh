#!/bin/sh

socat TCP4-listen:${LPORT},fork,reuseaddr TCP4:${ADDRESS}:${RPORT}

