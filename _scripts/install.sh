#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)

# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_cdc79972ae8a_key -iv $encrypted_cdc79972ae8a_iv -in shrutha-key.enc -out shrutha-key -d
rm shrutha-key.enc # Don't need it anymore
chmod 600 shrutha-key
mv shrutha-key ~/.ssh/id_rsa

# Install zopfli
git clone https://github.com/google/zopfli.git
cd zopfli
make
chmod +x zopfli
cd ..
