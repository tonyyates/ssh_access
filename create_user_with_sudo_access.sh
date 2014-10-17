#!/usr/bin/env bash

MY_SHELL=$( which bash )
new_user=jayk

/usr/sbin/useradd -c 'Jay Kola <jay at noesisinformatica.com>' -s ${MY_SHELL} -m ${new_user}
cat >/etc/sudoers.d/${new_user}-ALL <<EOF
${new_user}     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/${new_user}-ALL
mkdir /home/${new_user}/.ssh
chmod 700 ~${new_user}/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDjb0RsR8ZtABGIRC/uzjZZClq2drvH58SiLgDQhU02+U3V1AKTAIk/SorCCYBgsFdypjhOoOODH8fzkCURzUqJIYwNEmGd9agQcT4IWiHux5voJxLH9lUstK4ZFZgglkwK0/40lUxq7jxJLcw+m1eMxfnp7mGel5eR5qi7lHY6DBIi2MkLPO3j5EgwCA6YI7xuMgYBqhOgigzZ0Yg89l9Pf6VwV+BAnUXM7Po9AKXe82k4y2faLHoBDfA8OUdqoZYiPgEE8diFt/fRc+7ZPFK9PrHX9pxTnrCW9XM0/cKG4ZM9ONvYKtoE/dL4mQEkVNNVd6K4Igo9ee6dGSW0yalixvlyn7nvp3e77x1Dkr1oXTIzASxEfJ4QUj8sUdv/aaE5q/h1rK+lih6FpkHNpFd9nVaV+byWiBPT9pEey0ukGc0hj7ET9BnZSAexIMXBI4eU+RsMwl+E8ls/xqdwIikhSNQeohSX2pNjnrxBFG9xxp9Ykh4KC2I1nJWDUZyj8Y0OvP7A63QL7hdKqlhdXsGvaDqJKiSaOJm5uNB5zDm3KYgslCuHiKoP1lJJ33xgWxAMSqIF4oLMX5vlB0l7JcYWmvr1idj9cfOh1C9P9rrtjsifr+3nhT03gtqi/zD2oR3wdn1LJOi/o5pc9KeKXEdgu3sQAii58SP3/NwMLsC4CQ== jay@Cerberus" >~${new_user}/.ssh/authorized_keys
chmod 400 ~${new_user}/.ssh/authorized_keys
chown -R ${new_user} ~${new_user}/.ssh