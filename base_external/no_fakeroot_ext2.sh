#!/bin/bash

# Regenerate ext2 without fakeroot
GENEXT2FS="$1/../../host/bin/genext2fs"
OUTPUT_IMG="$1/../../images/rootfs.ext2"
ROOTFS_DIR="$1"

# Optional: clean up the existing image
rm -f "$OUTPUT_IMG"

# Create new ext2 image without fakeroot
"$GENEXT2FS" -d "$ROOTFS_DIR" -r 1 -N 0 -m 5 -L "rootfs" -b 61440 "$OUTPUT_IMG"