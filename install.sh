#!/bin/bash

# Check and set OPS_REPO and OPS_BRANCH
OPS_REPO_EXPECTED="http://github.com/nuvolaris/bestia"
OPS_BRANCH_EXPECTED="bestia"

NEED_UPDATE=false

if [ "$OPS_REPO" != "$OPS_REPO_EXPECTED" ] || [ "$OPS_BRANCH" != "$OPS_BRANCH_EXPECTED" ]; then
    NEED_UPDATE=true
fi

if [ "$NEED_UPDATE" = true ]; then
    echo "Setting OPS_REPO and OPS_BRANCH..."
    export OPS_REPO="$OPS_REPO_EXPECTED"
    export OPS_BRANCH="$OPS_BRANCH_EXPECTED"

    # Add to .bashrc
    if ! grep -q "OPS_REPO=" ~/.bashrc 2>/dev/null; then
        echo "export OPS_REPO=\"$OPS_REPO_EXPECTED\"" >> ~/.bashrc
        echo "export OPS_BRANCH=\"$OPS_BRANCH_EXPECTED\"" >> ~/.bashrc
    fi

    # Add to .zshrc on Mac
    if [ "$(uname)" = "Darwin" ]; then
        if ! grep -q "OPS_REPO=" ~/.zshrc 2>/dev/null; then
            echo "export OPS_REPO=\"$OPS_REPO_EXPECTED\"" >> ~/.zshrc
            echo "export OPS_BRANCH=\"$OPS_BRANCH_EXPECTED\"" >> ~/.zshrc
        fi
    fi
fi

# Install ops
echo "Installing ops..."
curl -fsSL n7s.co/get-ops | bash
 
# Source the appropriate rc file
if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
fi

# Load dependencies
echo "Loading dependencies..."
ops -t

# Install the plugin
echo "Installing olaris-aid plugin..."
ops -plugin https://github.com/trustable-ai/olaris-aid

echo "Installation complete."

