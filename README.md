# os
Personal particleos configuration

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
- Log in and run the following command:

```bash
homectl update \
    --auto-resize-mode=off \
    --disk-size=max \
    --luks-discard=on"
```

- To update the system, run the following commands:

```bash
git clone https://github.com/lauritskarl/os
git clone https://github.com/systemd/particleos
cp os/mkosi.local.conf particleos/
cp mkosi.crt mkosi.key particleos/
mkosi -B -ff sysupdate -- update --reboot
```
