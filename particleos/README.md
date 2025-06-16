# os
Personal particleos configuration

## todo

- [ ] Add essential packages not managed by mise

## setup

- Use these commands to set up the usb installer

```bash
git clone https://github.com/lauritskarl/os
git clone https://github.com/systemd/particleos
git clone https://github.com/systemd/mkosi
mkdir -p ~/.local/bin
ln -s $PWD/mkosi/bin/mkosi ~/.local/bin
mkosi --version # must be >= 26.0
cp os/mkosi.local.conf particleos/
cd particleos
mkosi genkey
mkosi -B -f
mkosi burn /dev/sdX
systemctl reboot --firmware-setup
```

- Set secure boot to setup mode and boot into the usb drive
- Select the enroll secure boot keys profile
- Boot into the usb drive again and select the installer profile
- Run the following command:

```bash
systemd-repart --dry-run=no --empty=force --defer-partitions=swap,root,home /dev/<drive>
```

- Reboot into the system drive and select the regular profile
- Run through the first-boot setup
- Log in and run the following commands:

```bash
hostnamectl set-hostname karls-laptop
hostnamectl set-hostname --pretty "Karl's Laptop"
chezmoi init --apply --force lauritskarl
homectl update \
    --auto-resize-mode=off \
    --disk-size=max \
    --luks-discard=on \
    --real-name "Karl Hans Laurits" \
    --email-address "karl@laurits.dev" \
    --language "en_US.UTF-8" \
    --location "Estonia" \
    --timezone "Europe/Tallinn" \
    --ssh-authorized-keys @~/.ssh/authorized_keys \
    --fido2-device auto
systemctl set-default graphical.target
systemctl enable --now gdm.service
bash ~/.setup.sh
```

- To update the system, run the following commands:

```bash
git clone https://github.com/lauritskarl/os
git clone https://github.com/systemd/particleos
cp os/mkosi.local.conf particleos/
cp mkosi.crt mkosi.key particleos/
mkosi -B -ff sysupdate -- update --reboot
```
