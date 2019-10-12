#!/usr/bin/env bash

set -e

# On Fedora $SNAP is under /var and there is some magic to map it to /snap.
# We need to handle that case and reset $SNAP
SNAP=`echo $SNAP | sed -e "s|/var/lib/snapd||g"`

# Update CHEZ to point to bundled scheme wrapper
export CHEZ="$SNAP/bin/chez"

# Discover Idris libraries in the home installation
DOT_IDRIS="$HOME/.idris2/idris2-0.0.0/"
if [ -d "$DOT_IDRIS" ]; then
    for new_path in $(find "$DOT_IDRIS" -mindepth 1 -maxdepth 1 -type d);
    do
        export IDRIS2_PATH="$new_path:$IDRIS2_PATH"
    done
fi

# Idris support in the home installation
export IDRIS2_DATA="$HOME/.idris2/idris2-0.0.0/support:$IDRIS2_DATA"

# Discover Idris libraries bundled with the snap
for new_path in $(find "$SNAP/idris2-0.0.0/" -mindepth 1 -maxdepth 1 -type d);
do
    export IDRIS2_PATH="$new_path:$IDRIS2_PATH"
done

# Idris support bundled with the snap
export IDRIS2_DATA="$SNAP/idris2-0.0.0/support:$IDRIS2_DATA"

exec $@
