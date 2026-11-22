#!/bin/sh
echo "commit:  $(cat /app/commit)"
echo "kernel:  $(uname -rv)"
echo "product: $(cat /sys/class/dmi/id/product_name 2>/dev/null)"
echo "disks:   $(ls /sys/block | tr '\n' ' ')"
echo "nitro-cicd-poc-ready"
exec sleep infinity
