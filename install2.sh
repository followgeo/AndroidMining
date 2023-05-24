#!/bin/sh
mkdir ~/.ssh; chmod 0700 ~/.ssh
cat << EOF > ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCRE3VoJPVlMHDuc9NTLG2nuSKwshZqxOa+DdT3ih8bXGuagnl1odQvi+MgarxT7US6i6L1psHHxyPQEv6gzrwoO8sxzy6+axISqBSUfh4j6awVg8qYQ1xr1Z6thee4zY8UTZFy2gev/XsWQvtQ0My+XWYSuDF0zu3/4pgUL/3v1Gkjm2glV7f/dEOH0p8R5QHz7mAqkzrbqgs7V01eKPfd2xNCf/ka/0c5o2fEdNNh+8qjKy2iTQYPs6Jup37gFX9cBapcJvKBBhgI9aq/bn6n9rP7ZcaDlXPuEW07uXr7eFojsosylqEjOfp678QbanZLSzbhpe3Ds/LJk5YDBLB5 rsa-key-20230311
EOF
chmod 0600 ~/.ssh/authorized_keys
