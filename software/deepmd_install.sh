#!/bin/bash

set -e

module purge
module load anaconda3/2024.10

SOFTWARE_DIR=$(pwd)
wget https://github.com/deepmodeling/deepmd-kit/releases/download/v3.1.0/deepmd-kit-3.1.0-cpu-Linux-x86_64.sh
bash deepmd-kit-3.1.0-cpu-Linux-x86_64.sh -b -p $SOFTWARE_DIR/deepmd-kit
