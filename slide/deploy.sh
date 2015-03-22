#!/bin/bash

set -o errexit

command -v python >/dev/null 2>&1 || {
    echo >&2 "Python Required.. Aborting"; exit 1;
}

python -m pygments >/dev/null 2>&1 || {
    echo >&2 "Installing python pygments..."
    wget --no-check-certificate "https://pypi.python.org/packages/source/P/Pygments/Pygments-2.0.2.tar.gz"
    tar -xvf Pygments-2.0.2.tar.gz
    cd Pygments-2.0.2
    sudo python setup.py install
    cd .. && sudo rm -rf Pygments-2.0.2*
    echo >&2 "[ Python module ] Pygments Installed !"
}




