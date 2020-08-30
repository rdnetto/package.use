#!/bin/bash
set -e

MASK_FILE="/etc/portage/package.mask/00-overlays.package.mask"

cat > $MASK_FILE <<EOF
# Generated by postsync.d/01-regen-overlay-masks.sh

# Mask all overlay ebuilds by default
# To unmask this package, add it to
#   /etc/portage/package.unmask/01-overlays.package.unmask
EOF

# Note: the lack of quotes around the xpath invocation here is deliberate
for OVERLAY in $(xpath -q -e '/repositories/repo/name/text()' /var/lib/layman/installed.xml | grep -v rdnetto) ; do
    echo "*/*::$OVERLAY" >> $MASK_FILE
done

