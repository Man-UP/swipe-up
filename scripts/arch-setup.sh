#!/bin/bash
set -o errexit
set -o nounset

sudo pacman -Sy --noconfirm \
    libldap \
    libsasl \
    python-pybluez \
    python2-pyserial \
    tk

