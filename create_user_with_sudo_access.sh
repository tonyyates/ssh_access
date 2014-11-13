#!/usr/bin/env bash

MY_SHELL=$( which bash )
new_user=tony

/usr/sbin/useradd -c 'Tony Yates <tonyyates@gmail.com>' -s ${MY_SHELL} -m ${new_user}
cat >/etc/sudoers.d/${new_user}-ALL <<EOF
${new_user}     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/${new_user}-ALL
mkdir /home/${new_user}/.ssh
chmod 700 /home/${new_user}/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuZ7Dw54cLxLH2tvZLqKfCmZfzgkK5RgR/AZkNNEiyBsY27GpR1DWLbG+RfZfFMR2nEd1qRc3REQgPHK4PSJazx34md+lXOXK/NKkc2jmr0c6nhFAdjzKZXlEjk3nFmHtnkbfmrvSXVEUkvfHpYr/Pka0qCXUCNmR8qCc9UiMcEph6LLvvXc6/zohchLCjpz0gDTyS7/VWKcipBOdTTSddenHP6cWoCBtPWhu2u0+4M6myk0CZaH/fZ4nIxKLFY9P7EHLXFcO1QMH5owLFaoxrvNBonR7lV1zIsZAfZ7D26hFyUFNb8VjwCPIH2tEEijtEwx2ljx/dTkeK90EG+/2V tony@Tonys-15-MacBook-Pro.local" >/home/${new_user}/.ssh/authorized_keys
chmod 400 /home/${new_user}/.ssh/authorized_keys
chown -R ${new_user} /home/${new_user}/.ssh