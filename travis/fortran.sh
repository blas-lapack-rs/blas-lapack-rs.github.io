#!/bin/bash

set -v

if [ "${TRAVIS_OS_NAME}" == 'osx' ]; then
  URL=http://prdownloads.sourceforge.net/hpc/gcc-6.2-bin.tar.gz
  brew uninstall gcc49
  while true; do
    curl -L "${URL}" -o gcc.tar.gz && break
  done
  mkdir root && tar -xzf gcc.tar.gz -C root && sudo cp -R root/* /
fi

gfortran --version
