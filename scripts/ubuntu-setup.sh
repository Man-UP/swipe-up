#!/bin/bash
set -o errexit
set -o nounset

sudo apt-get --assume-yes install \
    libldap-dev \
    libsasl2-dev \
    python-bluez \
    python-dev \
    python-tk

