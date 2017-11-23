# ubuntu-ec2net

*Note: This repository is based on ademaria/ubuntu-ec2net, updated and adapted for our personal usage.*

Port of Amazon's ec2-net-utils scripts to Debian/Ubuntu for automatically
configuring additional AWS Elastic Network Interfaces.

The main change right now is that this tool now supports [Predictable Network Interface Names](https://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/).

# Todo:

- [ ] Add support to IPv6 (port current version of ec2net from Amazon Linux)
- [ ] Create a minimum documentation
- [ ] Transform this repository in a package to ubuntu