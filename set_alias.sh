#!/bin/bash

cat >> ~/.bashrc << 'EOF'
alias sq="squeue -u your_netid --format='%.18i %.9P %.14j %.2t %.10M %.6D %.4C %R'"
alias sqd="squeue -u your_netid --format='%.18i %.9P %.8j %.2t %.10M %.6D %Z'"
EOF
