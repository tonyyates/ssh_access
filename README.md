SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_peter_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/pgwilliams/ssh_access.git && cd ssh_access && ./create_peter_user_with_sudo_access.sh && echo 'Peter has access' && cd .. && rm -r ssh_access
```
