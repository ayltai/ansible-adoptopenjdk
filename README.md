# AdoptOpenJDK role for Ansible

[![GitHub workflow status](https://img.shields.io/github/workflow/status/ayltai/ansible-adoptopenjdk/CI?style=flat)](https://github.com/ayltai/ansible-adoptopenjdk/actions)
[![Ansible quality score](https://img.shields.io/badge/quality-5-success)](https://galaxy.ansible.com/ayltai/fail2ban)
[![Ansible role](https://img.shields.io/badge/role-ayltai.fail2ban-blue)](https://galaxy.ansible.com/ayltai/fail2ban)
![Maintenance](https://img.shields.io/maintenance/yes/2020?style=flat)
[![Release](https://img.shields.io/github/release/ayltai/ansible-adoptopenjdk.svg?style=flat)](https://github.com/ayltai/ansible-adoptopenjdk/releases)
[![License](https://img.shields.io/github/license/ayltai/ansible-adoptopenjdk.svg?style=flat)](https://github.com/ayltai/ansible-adoptopenjdk/blob/master/LICENSE)

Install and configure [AdoptOpenJDK](https://adoptopenjdk.net/) on RHEL/CentOS- and Debian-based systems.

[![Buy me a coffee](https://img.shields.io/static/v1?label=Buy%20me%20a&message=coffee&color=important&style=flat&logo=buy-me-a-coffee&logoColor=white)](https://buymeacoff.ee/ayltai)

## Quick start

### Installation
```sh
ansible-galaxy install ayltai.adoptopenjdk
```

### Usage
```yaml
---
- hosts: all
  roles:
    - ayltai.adoptopenjdk
  vars:
    adoptopenjdk_package: adoptopenjdk-11-openj9
```

## Variables

| Name                   | Default                  | Description                                    |
|------------------------|--------------------------|------------------------------------------------|
| `adoptopenjdk_package` | `adoptopenjdk-11-openj9` | The name of AdoptOpenJDK installation package. |

## Development
This project uses [Docker](https://www.docker.com) to create an unified environment for development.

### Install Docker
Download and install Docker from [here](https://docs.docker.com/get-docker).

### Build Docker image
```sh
docker build --tag adoptopenjdk:latest .
```

### Run Docker container
```sh
docker run \
--privileged \
-v $(pwd):/ansible-adoptopenjdk \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-it --rm \
adoptopenjdk:latest
```

Now you have a shell running on a system with all the necessary tools installed.

### Install dependencies
In the Docker container, run:
```sh
pip3 install -r requirements.txt
```

### Unit testing
In the Docker container, run:
```sh
molecule test
```

## License
[MIT](https://github.com/ayltai/ansible-adoptopenjdk/blob/master/LICENSE)

## References
* [AdoptOpenJDK](https://adoptopenjdk.net/)
* [Ansible](https://www.ansible.com)
* [Ansible Galaxy](https://galaxy.ansible.com)
