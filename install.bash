#!/bin/bash
set -o errexit -o nounset -o pipefail


chmod 644 53-ec2-network-interfaces.rules
chmod 644 75-persistent-net-generator.rules
chmod 644 ec2dhcp
chmod 644 ec2net-functions
chmod 755 ec2net.hotplug

chown root:root 53-ec2-network-interfaces.rules
chown root:root 75-persistent-net-generator.rules
chown root:root ec2dhcp
chown root:root ec2net-functions
chown root:root ec2net.hotplug

mv 53-ec2-network-interfaces.rules /etc/udev/rules.d
mv 75-persistent-net-generator.rules /etc/udev/rules.d
mv ec2dhcp /etc/dhcp/dhclient-exit-hooks.d/
mv ec2net-functions /etc/network
mv ec2net.hotplug /etc/network
