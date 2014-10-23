SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_tony_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/tonyyates/ssh_access.git && cd ssh_access && ./create_tony_user_with_sudo_access.sh && echo 'Tony has access' && cd .. && rm -r ssh_access
```
