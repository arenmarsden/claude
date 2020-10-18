#!/bin/bash

# Check for git
if ! command -v "git" &> /dev/null
then
  echo "Git is not installed on your system."
  exit
fi

# Check for python3
if ! command -v "python3" &> /dev/null
then
  echo "Python3 is not installed on your system."
  exit
fi

# No need to check for C on UNIX-Based systems, it's already installed for the Kernel.

# CD into the main directory
cd ../..

# Install all requirements
pip3 install -r requirements.txt

# Install everything to be precompiled via cython.
python3 claude_setup.py build_ext --inplace
