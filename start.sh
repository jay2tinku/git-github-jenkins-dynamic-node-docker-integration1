#!/bin/bash

__create_user() {
# Create a user to SSH into as.
useradd jenkins
SSH_USERPASS=jenkins
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin user)
echo ssh user password: $SSH_USERPASS
}

# Call all functions
__create_user
