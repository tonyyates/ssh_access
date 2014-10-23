#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Peter G. Williams <tonyyates@gmail.com>' -s ${MY_SHELL} -m tony
cat >/etc/sudoers.d/tony-ALL <<EOF
tony     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/tony-ALL
mkdir ~tony/.ssh
chmod 700 tonypeter/.ssh
curl https://raw.githubusercontent.com/tonyyates/ssh_access/master/tonyyates.pub >~tony/.ssh/authorized_keys
chmod 400 ~tony/.ssh/authorized_keys
chown -R tony ~tony/.ssh
