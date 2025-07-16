#!/bin/bash

# Get the Python 3 executable path
PYTHON_EXEC="$(which python3)"
if [ -z "$PYTHON_EXEC" ]; then
    echo "Error: python3 not found in PATH." >&2
    exit 1
fi

# Dynamically determine the user site-packages path
PYTHON_VERSION_INFO="$("$PYTHON_EXEC" -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")"
USER_SITE_PACKAGES="$HOME/.local/lib/python${PYTHON_VERSION_INFO}/site-packages"

# Extract arguments passed from Sioyek
SIOYEK_PATH="$1"
FILE_PATH="$2"
COMMAND_TEXT="$3"

# Execute the Python script
"$PYTHON_EXEC" -S -c "import sys; sys.path.insert(0, '$USER_SITE_PACKAGES'); from sioyek import dual_panelify; dual_panelify.run_dual_panelify('$SIOYEK_PATH', '$FILE_PATH', '$COMMAND_TEXT')"
