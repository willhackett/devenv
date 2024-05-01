#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &>/dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

if ! command -v nvm &>/dev/null
then
    echo "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
else
    echo "NVM is already installed."
fi

# Install applications using Homebrew
echo "Installing applications..."
brew bundle --file=Brewfile

# Configure Git
cp gitconfig.template "${HOME}/.gitconfig"

echo "Setup complete!"