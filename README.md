# ansible-openssh

[OpenSSH](https://wikipedia.org/wiki/OpenSSH) - the OpenBSD Secure Shell

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

Description
-----------
OpenSSH is a suite of security-related network-level utilities based on the SSH protocol, which help to secure network communications via the encryption of network traffic over multiple authentication methods and by providing secure tunneling capabilities.

This playbook incorporates the [High Performance Networking](https://www.psc.edu/index.php/hpn-ssh) patch set, including:

* Dynamic Window
* None Switch
* Multithreaded AES-CTR Cipher
* Peak Throughput Display for SCP Transfers
* Enhanced Logging

> "_The HPN packages add a number of useful performance features without compromising security, providing for upto 20x faster data transfer over SSH. The addition of the multi-threaded AES cipher also helps eliminate CPU bottlenecks by taking advantage of multi-core machines._
>
> _Additionally, the "none" cipher provides a means by which secure authentication and login can be accomplished for large unencrypted data transfers (console sessions are not allowed with the none cipher) over secure networks (i.e. a trusted VPN, another SSH tunnel or a home LAN) or for transferring non-sensitive data while eliminating the trouble and insecurity of FTP (no port ranges need be defined for SFTP/SCP)._"
> -- As described on [Will Rousnel's Launchpad Page](https://launchpad.net/~w-rouesnel/+archive/ubuntu/openssh-hpn)

Tunables
--------
* ```openssh_client``` (boolean) - Install as client?
* ```openssh_server``` (boolean) - Install as server?
* ```openssh_ports``` (list) - Ports to listen on
* ```openssh_runtime_root``` (string) - Path for runtime files?

* ```openssh_should_degrade_security_to_accomodate_outdated_clients``` (boolean) - Degrade Cipher and MAC selection to accomodate archaic SSH versions (prior to 6.1)
* ```openssh_append_ciphers``` - (list) ciphers to append to openssh_default_ciphers
* ```openssh_append_key_exchange_algorithms``` - (list) key exchanges to append to openssh_default_key_exchange_algorithms
* ```openssh_append_mac_algorithms``` - (list) message integrety checking to append to openssh_default_mac_algorithms
* ```openssh_default_ciphers``` (list) - Ciphers to allow (prefer openssh_append_key_exchange_algorithms when possible)
* ```openssh_default_key_exchange_algorithms``` (list) - Key Exchange Algorithms to allow (prefer openssh_append_ciphers when possible)
* ```openssh_default_mac_algorithms``` (list) - MAC Algorithms to allow (prefer openssh_append_mac_algorithms when possible)

Dependencies
------------
* [telusdigital.apt-repository](https://github.com/telusdigital/ansible-apt-repository/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.openssh
           openssh_server: yes
           openssh_client: yes


Static Host Key
----------------
           openssh_ssh_host:
             rsa:
               application:
                 development:
                   public: |
                     REDACT
                   private: |
                     REDACT

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Aaron Pederson
