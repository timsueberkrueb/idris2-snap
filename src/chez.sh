#!/usr/bin/env bash

SNAP="${SNAP:-/snap/idris2/current}"

# Point bundled scheme to bundled *.boot files
$SNAP/usr/bin/scheme \
    -b $SNAP/usr/lib/csv*/ta6le/petite.boot \
    -b $SNAP/usr/lib/csv*/ta6le/scheme.boot $@
