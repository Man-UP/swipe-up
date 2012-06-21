#!/bin/bash
set -o errexit
set -o nounset

LDAP_DIR='python-ldap/python-ldap'
LDAP_URL='http://python-ldap.cvs.sourceforge.net/viewvc/python-ldap/'
LDAP_URL="${LDAP_URL}?view=tar"

LIB_DIR="`readlink -f $(dirname "$0")`/../lib/ldap"

cd /tmp
wget -O - "${LDAP_URL}" | tar -xz
cd "${LDAP_DIR}"
python2.7 setup.py build

cd build/lib.*
if [[ ! -d "${LIB_DIR}" ]]
    then
        mkdir "${LIB_DIR}"
fi
mv * "${LIB_DIR}"

rm -fr "/tmp/${LDAP_DIR}"
