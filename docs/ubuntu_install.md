# ubuntu install on raspberry pi

To install follow the instructions at

https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#4-boot-ubuntu-server


If using wifi you will need to make the following changes:

1) Open `/etc/cloud/cloud.cfg.d/99-disable-network-config.cfg`
2) add `network: {config: disabled}`
3) Open `/etc/netplan01-netcfg.yaml` and add an appropriate netplan configuration
4) *optional* run `netplan generate`
5) run `netplan apply`
6) reboot
