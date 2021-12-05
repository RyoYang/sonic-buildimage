#!/usr/bin/env bash

rm -f /var/run/rsyslogd.pid

. /opt/bfn/install/bin/dma_setup.sh

supervisorctl start rsyslogd

supervisorctl start saiserver

