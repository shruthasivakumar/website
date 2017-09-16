#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)

# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_04c508659a90_key -iv $encrypted_04c508659a90_iv -in travisci-key.enc -out travisci-key -d
rm travisci-key.enc # Don't need it anymore
chmod 600 travisci-key
mv travisci-key ~/.ssh/id_rsa

# Install zopfli
git clone https://github.com/google/zopfli.git
cd zopfli
make
chmod +x zopfli
cd ..
