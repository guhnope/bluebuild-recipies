#!/bin/bash

dnf -y remove \
    kernel kernel-core \
    kernel-modules kernel-modules-core \
    kernel-modules-extra kernel-tools-libs \
    kernel-headers kernel-tools \
    #kernel-* &&

    #rm -r -f /usr/lib/modules/*

dnf -y install --setopt=install_weak_deps=False \
    kernel-cachyos-lto


setsebool -P domain_kernel_load_modules on
