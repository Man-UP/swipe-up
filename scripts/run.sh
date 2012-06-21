#!/bin/bash

set -o errexit
set -o nounset

ROOT_DIR="`readlink -f $(dirname "$0")`/.."
SCRIPTS_DIR="${ROOT_DIR}"/scripts

"${SCRIPTS_DIR}"/ssh-tunnels.sh "${@}"

PYTHONPATH=src/:lib/msr605:lib/ldap python2 src/swipeup -g -l localhost -L 8000

