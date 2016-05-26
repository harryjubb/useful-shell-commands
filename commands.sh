# SSH

# Generate SSH authentication keys
# Can use defaults
# Enter a passphrase or leave blank

ssh-keygen -t rsa

# Add SSH authentication to a remote machine
# For passwordless SSH

# Make .ssh directory (may already exist)
ssh user@machine mkdir -p .ssh

# Copy your key to remote machine
cat .ssh/id_rsa.pub | ssh user@machine 'cat >> .ssh/authorized_keys'
