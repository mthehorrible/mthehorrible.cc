---
title: "Distrobox"
date: 2022-05-18
categories:
- containers
tags:
- podman
- docker
- distrobox
---

<https://github.com/89luca89/distrobox>

**Needs Podman or Docker installed**

## Commands
* `distrobox-create` - creates the container
* `distrobox-enter` - to enter the container
* `distrobox-list` - to list containers created with distrobox
* `distrobox-rm` - to delete a container created with distrobox
* `distrobox-stop` - to stop a running container created with distrobox
* `distrobox-init` - the entrypoint of the container (not meant to be used manually)
* `distrobox-export` - it is meant to be used inside the container, useful to export apps and services from the container to the host
* `podman system df -v` - check space used by containers

## Create Distrobox container
* `distrobox-create --name <NAME> --image <DISTRO>:<TAG>`
	* ex. `distrobox-create --name ubuntu-22 --image ubuntu:22.04`
	* ex. `distrobox-create --name fedora-35 --image fedora:35`
	* ex. `distrobox-create --name arch-toolbox --image archlinux`

---

## Export Distrobox container
```bash
podman container commit -p distrobox_name image_name_you_choose
podman save image_name_you_choose:latest | gzip > image_name_you_choose.tar.gz

# Example
# podman container commit -p arch-toolbox arch-toolbox-2022-05-03
# podman save arch-toolbox-2022-05-03:latest | gzip > arch-toolbox-2022-05-03.tar.gz
```

---

## Import Distrobox container
```bash
podman load < image_name_you_choose.tar.gz
distrobox create --image image_name_you_choose:latest --name distrobox_name
distrobox enter --name distrobox_name

# Example
# podman load < arch-toolbox-2022-05-03.tar.gz
# distrobox create --image arch-toolbox-2022-05-03:latest --name arch-toolbox
# distrobox enter --name arch-toolbox
```

---

## Arch Linux GUI fix
* Install xhost: `pacman -S xorg-xhost`
* Allow access: `xhost +si:localuser:$USER`
