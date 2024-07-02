#!/bin/bash

yum update -y
yum -y install curl --allowerasing

echo -e "
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