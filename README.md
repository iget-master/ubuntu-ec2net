# ubuntu-ec2net

Do you like this? Pay me a coke: <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PG6CGJ9TQPSFL"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif"></a>

*Note: This repository is based on ademaria/ubuntu-ec2net, updated and adapted for our personal usage.*

Port of Amazon's ec2-net-utils scripts to Debian/Ubuntu for automatically
configuring additional AWS Elastic Network Interfaces.

The main change right now is that this tool now supports [Predictable Network Interface Names](https://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/).

# Features

The following features was implemented over ademaria's package:

- [ ] Add support to Predictable Network Interface Names
- [ ] IPv6 support
- [ ] Improve Logging
- [ ] ec2ifscan was ported
- [ ] Now it detects interfaces attached on stopped instance

# Installation

This repository isn't a ubuntu package yet. To install, you need to clone this repository and install.

    git clone https://github.com/iget-master/ubuntu-ec2net.git
    cd ubuntu-ec2net
    make install

# Todo:

- [ ] Create a minimum documentation
- [ ] Transform this repository in a package to ubuntu

# Enabling IPV6 on Primary Network Interface

This tools don't touch your primary network interface.
If you've enabled IP66 on this interface and want to have IPv6 assigned
to it by DHCP, you should configure manually your cloud-init by adding
this configuration lines:

    network:
      version: 2
      ethernets:
        # Use eth0 or ens3 depending on Predictable Network Interface Names
        ens3:
          dhcp4: true
          dhcp6: true
          
This configuration may be added either on your [instance user data](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html#user-data-cloud-init) or inside the `/etc/cloud/cloud.cfg.d/`. 
