# Ansible Role: Atom

[![Build Status](https://travis-ci.org/TonyApuzzo/ansible-role-atom.svg?branch=master)](https://travis-ci.org/TonyApuzzo/ansible-role-atom)

An Ansible Role to install the [Atom](https://www.atom.io) editor on Linux for Debian/Ubuntu or Red Hat/CentOS distributions.

There are ~18 (Crazy!) repositories with this name in GitHub already, but none of them I could find use package repositories so that Atom is easy to upgrade. With this role you can do updates with `apt ugrade` or `yum update`.  I created this role for use in a development VM that might last several months or more.

Adhering to the Unix philosophy of doing one thing well and not re-inventing the wheel, this role doesn't manage Atom packages.  See [jgkim/ansible-role-atom](https://github.com/jgkim/ansible-role-atom) for a role that installs packages.

## Requirements

- ansible >= 2.0

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    atom_package: atom
    atom_package_state: present

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: TonyApuzzo.ansible-role-atom
      become: yes
```

## TODO

* Investigate a better way to install packages in case it is trivial to do it from ansible:command or similar
* Add support for SUSE, Fedora, and Arch if/when people ask for it.


## License

MIT / BSD

## Author Information

This role was created in 2018 by Tony Apuzzo as a derivative of [ansible-role-docker](https://github.com/geerlingguy/ansible-role-docker) by [Jeff Geerling](https://www.jeffgeerling.com/).
