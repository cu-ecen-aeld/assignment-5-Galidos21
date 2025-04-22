#!/bin/bash

# Go into the buildroot directory and run make distclean
cd buildroot || {
  echo "Buildroot directory not found!"
  exit 1
}

make distclean
