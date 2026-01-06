#!/bin/bash

dnf -y remove \
    kernel \
    kernel-* &&
    rm -r -f /usr/lib/modules/*

dnf -y install --setopt=install_weak_deps=False \
    kernel-cachyos-lto


setsebool -P domain_kernel_load_modules on
