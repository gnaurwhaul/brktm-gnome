#!/usr/bin/env bash

set -euo pipefail

if [ -f /usr/bin/dumpcap ]; then
	chgrp wireshark /usr/bin/dumpcap
	chmod 750 /usr/bin/dumpcap
	setcap cap_net_admin,cap_net_raw=ep /usr/bin/dumpcap
fi
