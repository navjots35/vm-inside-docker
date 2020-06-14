#!/bin/bash

set -eou pipefail

chown root:kvm /dev/kvm
service libvirtd start
service virtlogd start

exec "$@"
