#!/usr/bin/env bash
# make sure command is : source deepgcn_env_install.sh

# install anaconda3.
# cd ~/
# wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
# bash Anaconda3-2019.07-Linux-x86_64.sh


source ~/.bashrc

# make sure system cuda version is the same with pytorch cuda
# follow the instruction of Pyotrch Geometric: https://pytorch-geometric.readthedocs.io/en/latest/notes/installation.html
export PATH=/usr/local/cuda-10.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH

conda create -n deepgcn
conda activate deepgcn
# make sure pytorch version >=1.2.0
conda install -y pytorch=1.2.0 torchvision cudatoolkit=10.0 tensorflow python=3.7 -c pytorch

# command to install pytorch geometric
pip install --verbose --no-cache-dir torch-scatter
pip install --verbose --no-cache-dir torch-sparse
pip install --verbose --no-cache-dir torch-cluster
pip install --verbose --no-cache-dir torch-spline-conv
pip install torch-geometric
pip install --upgrade tensorflow-graphics
# install useful modules
pip install requests # sometimes pytorch geometric forget to install it, but it is in need
pip install tqdm
