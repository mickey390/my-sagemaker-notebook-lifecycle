#!/bin/bash
DEFAULT_USER="ec2-user"

sudo -u ${DEFAULT_USER} sh <<-EOS
pip install --upgrade 
/home/ec2-user/anaconda3/envs/JupyterSystemEnv/bin/pip install jupyter_contrib_nbextensions
/home/ec2-user/anaconda3/envs/JupyterSystemEnv/bin/jupyter contrib nbextension install --user
/home/ec2-user/anaconda3/envs/JupyterSystemEnv/bin/jupyter nbextension enable toc2/main
sudo yum install -y ipa-gothic-fonts ipa-mincho-fonts
EOS