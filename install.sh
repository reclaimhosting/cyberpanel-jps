#!/bin/bash

touch /var/lib/dnf/rpmdb_lock.pid
yum update -y
yum -y install curl --allowerasing

sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh) << EOF
1
1
Y
N
<ENTER>
n
n
y
n
EOF
