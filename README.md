### uDHCPD

Currently works using udhcpd but I think we should switch to dnsmasq as:
- It also had a DNS server that can resolve hostnames
- Its systemd interface report when its enabled correctly

As with all modules:

- `sudo bash install.sh` to install
- `sudo systemctl enable udhcpd` to start on boot
- `sudo systemctl disable udhcpd` to not start on boot
