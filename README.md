# ansible-openssh

[OpenSSH](https://wikipedia.org/wiki/OpenSSH) - the OpenBSD Secure Shell

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

## Description

OpenSSH is a suite of security-related network-level utilities based on the SSH protocol, which help to secure network communications via the encryption of network traffic over multiple authentication methods and by providing secure tunneling capabilities.

## Tunables

* ```openssh_client``` (boolean) - Install as client?
* ```openssh_server``` (boolean) - Install as server?
* ```openssh_ports``` (list) - Ports to listen on
* ```openssh_append_ciphers``` - (list) ciphers to append to openssh_default_ciphers
* ```openssh_append_key_exchange_algorithms``` - (list) key exchanges to append to openssh_default_key_exchange_algorithms
* ```openssh_append_mac_algorithms``` - (list) message integrety checking to append to openssh_default_mac_algorithms
* ```openssh_default_ciphers``` (list) - Ciphers to allow (prefer openssh_append_key_exchange_algorithms when possible)
* ```openssh_default_key_exchange_algorithms``` (list) - Key Exchange Algorithms to allow (prefer openssh_append_ciphers when possible)
* ```openssh_default_mac_algorithms``` (list) - MAC Algorithms to allow (prefer openssh_append_mac_algorithms when possible)

## Dependencies

* None

## Example Playbook
    - hosts: servers
      roles:
         - role: shsu.openssh
           openssh_server: yes
           openssh_client: yes

## Static Host Key
           openssh_ssh_host:
             rsa:
               application:
                 development:
                   public: |
                     REDACT
                   private: |
                     REDACT

## License

[MIT](https://tldrlegal.com/license/mit-license)

## Contributors

* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Aaron Pederson
* [Steven Hsu](https://www.stevenhsu.ca)
