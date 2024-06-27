# ansible

## tl;dr

```bash
sudo dnf -y install python3.12 python3.12-pip
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 99
pip3 install ansible
ansible-galaxy role install PeterMosmans.customize-gnome
mkdir -p ~/dev/ && cd ~/dev/ && git clone https://github.com/lordtaytertot/ansible.git

# ~/.bashrc
alias update="cd ~/dev/ansible/ && ansible-playbook update.yaml -e 'clean=true' ; cd -"
alias updateasleep="cd ~/dev/ansible/ && ansible-playbook update.yaml -e 'clean=true' -e 'wife=sleeping' ; cd -"
alias site="cd ~/dev/ansible/ && ansible-playbook site.yaml ; cd -"
alias siteasleep="cd ~/dev/ansible/ && ansible-playbook site.yaml -e 'wife=sleeping' ; cd -"
alias rs="cd ~/dev/ansible/ && ansible-playbook wakeywakey.yaml ; sleep 10s ; ansible fedora_stationary -b -m reboot ; cd -"
alias rsasleep="cd ~/dev/ansible/ && ansible-playbook wakeywakey.yaml -e 'wife=sleeping' ; sleep 10s ; ansible fedora_stationary -b -m reboot ; cd -"
alias morework="cd ~/dev/ansible/ && ansible-playbook wakeywakey.yaml ; sleep 10s ; ansible-playbook morework.yaml ; cd -"
alias jobsdone="cd ~/dev/ansible/ && ansible-playbook wakeywakey.yaml ; sleep 10s ; ansible-playbook jobsdone.yaml ; cd -"
```
