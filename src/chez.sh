#!/usr/bin/env bash

# There are two ways in which this wrapper may be called.
# 1) It may be called from within the snap (i.e. via the exposed idris2 or idris2.chez commands).
# In this case, the $SNAP variable is set and can be used.
# 2) Before support for parallel installs was implemented, this snap generated chez scheme files
# with shebangs pointing to /snap/idris2/current/chez directly.
# Therefore this wrapper may also be called outside of the snap context by executable files
# generated by previous version of this snap. In this case we infer $SNAP by reflecting
# on the location of this wrapper. Note that we cannot simply assume the snap to be
# located at /snap/idris2/current since this may not be the case on all distros or with parallel installs.

# Get the directory containing this of this wrapper (typically /snap/idris2/current/bin)
DIR="$(dirname "${BASH_SOURCE[0]}")"
# Reconstruct the snap root path. We also ensure $SNAP points to the "current"
# symlink rather than to the current explicit version number such that the path
# does not change with each snap update.
SNAP_ROOT="$(realpath $DIR/../../current)"

SNAP="${SNAP:-$SNAP_ROOT}"

# Point bundled scheme to bundled *.boot files
$SNAP/usr/bin/chezscheme9.5 \
    -b $SNAP/usr/lib/csv*/ta6le/petite.boot \
    -b $SNAP/usr/lib/csv*/ta6le/scheme.boot $@
