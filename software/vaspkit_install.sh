#!/bin/bash

set -e

SOFTWARE_DIR=$(pwd)

tar -zxvf vaspkit.1.3.5.linux.x64.tar.gz

cp vaspkit.1.3.5/how_to_set_environment_variables ~/.vaspkit
sed -i 's|~/POTCAR/LDA|/path/to/your/POTCAR/LDA|g' ~/.vaspkit
sed -i 's|~/POTCAR/PBE|/path/to/your/POTCAR/PBE|g' ~/.vaspkit

echo "export PATH=$SOFTWARE_DIR/vaspkit.1.3.5/bin/:\$PATH" >> ~/.bashrc
