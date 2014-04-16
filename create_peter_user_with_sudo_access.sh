#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Peter G. Williams <petergwilliams at hotmail.com>' -s ${MY_SHELL} -m peter
cat >/etc/sudoers.d/peter-ALL <<EOF
peter     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/peter-ALL
mkdir ~peter/.ssh
chmod 700 ~peter/.ssh
curl https://raw.githubusercontent.com/pgwilliams/ssh_access/master/petergwilliams_rsa.pub >~peter/.ssh/authorized_keys
chmod 400 ~peter/.ssh/authorized_keys
chown -R peter ~peter/.ssh