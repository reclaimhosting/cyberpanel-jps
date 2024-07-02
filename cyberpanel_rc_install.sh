#!/bin/bash

yum update -y
yum -y install curl --allowerasing
sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh) << EOF
1
1
N
<ENTER>
n
n
y
y
EOF