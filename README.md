# ansible

## tl;dr

```bash
sudo dnf -y install python3.12 python3.12-pip
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 99
pip3 install ansible
ansible-galaxy role install PeterMosmans.customize-gnome
mkdir -p ~/dev/ && cd ~/dev/ && git clone https://github.com/lordtaytertot/ansible.git

# ~/.bashrc
alias update='cd /mnt/raid/dev/ansible/ ; ansible-playbook update.yaml ; cd -'
alias updateasleep='cd /mnt/raid/dev/ansible/ ; ansible-playbook update.yaml -e "wife=sleeping" ; cd -'
alias updateclean='cd /mnt/raid/dev/ansible/ ; ansible-playbook update.yaml -e "clean=true" ; cd -'
alias updatecleanasleep='cd /mnt/raid/dev/ansible/ ; ansible-playbook update.yaml -e "clean=true" -e "wife=sleeping" ; cd -'
alias site='cd /mnt/raid/dev/ansible/ ; ansible-playbook site.yaml ; cd -'
alias siteasleep='cd /mnt/raid/dev/ansible/ ; ansible-playbook site.yaml -e "wife=sleeping" ; cd -'
alias wakeywakey='cd /mnt/raid/dev/ansible/ ; ansible-playbook wakeywakey.yaml ; cd -'
alias wakeywakeyasleep='cd /mnt/raid/dev/ansible/ ; ansible-playbook wakeywakey.yaml -e "wife=sleeping" ; cd -'
alias rs='cd /mnt/raid/dev/ansible/ ; ansible fedora_stationary -b -m reboot ; cd -'
```

## Windows Resources
* https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#windows-ssh-setup
* https://stackoverflow.com/questions/16212816/setting-up-openssh-for-windows-using-public-key-authentication
** Specifically, "If your Windows build is 1809 or later, it is required to comment out the following lines in C:\ProgramData\ssh\sshd_config file. Then restart the sshd service.
```
# Match Group administrators
#       AuthorizedKeysFile __PROGRAMDATA__/ssh/administrators_authorized_keys
```
