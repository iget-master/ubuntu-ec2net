ubuntu-ec2net
=============

Port of Amazon's ec2-net-utils scripts to Debian/Ubuntu for automatically
configuring additional AWS Elastic Network Interfaces.

Launchpad Bug:

https://bugs.launchpad.net/cloud-init/+bug/1153626/

Amazon's description of these tools:

http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#ec2-net-utils

Use the Makefile to install the files.


Add an interface by hand
========================

To configure `eth1`, for example:

    env INTERFACE=eth1 ACTION=add /etc/network/ec2net.hotplug add
